/*
 * proxy.c  -- a simple http proxy supporting GET operation
 */

#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include "csapp.h"
#include "util.h"
#include "bytes.h"
#include "cache.h"

// #define DEBUG
#undef DEBUG

/* Recommended max cache and object sizes */
#define MAX_CACHE_SIZE 1049000
#define MAX_OBJECT_SIZE 102400

/* global lru cache */
lru_cache_t lru_cache;

/* mutex to protect the lru cache update operations */
sem_t mutex;


/* You won't lose style points for including these long lines in your code */
static const char *user_agent_hdr = "User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:10.0.3) Gecko/20120305 Firefox/10.0.3\r\n";
static const char *accept_hdr = "Accept: text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8\r\n";
static const char *accept_encoding_hdr = "Accept-Encoding: gzip, deflate\r\n";


/* usage */
void usage()
{
    printf("Usage: proxy [port]\n");
    exit(-1);
}



/* forward_response  -- forward the response back to the client
 * key: the formatted url of the content. Used for lru_cache
 * infd: the file descriptor of remote server. We read response from infd
 * outfd: the client file descriptor. We write response back to outfd
 */
void forward_response(const char *key, int infd, int outfd)
{
    rio_t rio;
    rio_readinitb(&rio, infd);

    /* Since we don't know the length of the response, we extend
     * the response buffer dynamically.
     * First, we read MAXLINE number of bytes into the buffer.
     * Then we append the buffer to the response buffer.
     */

    /* temporary buffer */
    char buf[MAXLINE];

    /* response buffer */
    struct Bytes response;

    /* allocate and initialize the response buffer */
    bytes_malloc(&response);

    /* num_bytes is the number of bytes read for each rio_readnb operation */
    int num_bytes;
    while ((num_bytes=rio_readnb_ww(&rio, buf, MAXLINE)) > 0) {
        bytes_appendn(&response, buf, num_bytes);
    }

    /* The remote connection may be closed during the read operation.
     * The return value is < 0.
     */
    if (num_bytes < 0) {
        /* goto is used here to make sure that response is freed
         */
        goto FORWARD_RESPONSE_RETURN;
    }

#ifdef DEBUG
    fprintf(stderr, "response length: %zu\n", bytes_length(response));
#endif
    
    /* the client may have closed the connection */
    if (!rio_writen_ww(outfd,
                bytes_buf(response),
                bytes_length(response))) {
        goto FORWARD_RESPONSE_RETURN;
    }

    /* cache the response if necessary */
    if (bytes_length(response) < MAX_OBJECT_SIZE) {
        sem_wait(&mutex);
        lru_cache_insert(&lru_cache, key, bytes_buf(response),
                bytes_length(response));
        sem_post(&mutex);
    }
FORWARD_RESPONSE_RETURN:
    /* free the response */
    bytes_free(&response);
}

/* forward  -- forward the request to remote server and the response from
 * remote server
 */
void forward(int fromfd)
{
    rio_t rio;
    rio_readinitb(&rio, fromfd);
    char linebuf[MAXLINE],  // temporary buffer for each line we read
         method[MAXLINE],  // http method
         uri[MAXLINE],  // uri
         version[MAXLINE],  // http version.
         host[MAXLINE],
         port[MAXLINE],
         dir[MAXLINE],  // the director after the host in the uri
         /* TODO: is it necessary to use a dynamic buffer to store
          * the request?
          * For all the cases tested now, seems it's not necessary
          */
         request_buf[MAXBUF],  // The request is stored in the buffer
         header_name[MAXLINE], // used for parsing the header
         header_value[MAXLINE];

    if (!rio_readlineb_ww(&rio, linebuf, MAXLINE)) {
        return;
    }
    sscanf(linebuf, "%s %s %s", method, uri, version);
    if (strcasecmp(method, "GET") != 0) {
        // TODO
        fprintf(stderr, "[ERROR] method is not GET\n");
        return;
    }
    parse_uri(uri, host, port, dir);
#ifdef DEBUG
    fprintf(stderr, "uri: %s\n", uri);
    fprintf(stderr, "host: %s port: %s dir: %s\n", host, port, dir);
#endif

    char formated_uri[MAXLINE];
    sprintf(formated_uri, "%s:%s%s", host, port, dir);

    /*
     * if we find the content in the cache, we return it directly.
     * TODO: What if the content has been modifed?
     */
    sem_wait(&mutex);

    lru_cache_node_t *pnode = lru_cache_find(&lru_cache, formated_uri);

    if (pnode) {
        rio_writen_ww(fromfd, pnode->value, pnode->value_len);
        sem_post(&mutex);
        return;
    }
    sem_post(&mutex);
    
    /* According to the requirement, all requests are
     * forwarded as HTTP/1.0
     */
    sprintf(request_buf, "%s %s %s\r\n", method, dir, "HTTP/1.0");
    
    /* if the header contains host, we forward it directly.
     * Otherwise we fill the host according to the uri
     */
    int has_host = 0;
    if (rio_readlineb_ww(&rio, linebuf, MAXLINE) < 0) {
        return;
    }
    while (strcmp(linebuf, "\r\n") != 0) {
        parse_header(linebuf, header_name, header_value);
        if (strcasecmp(header_name, "Host") == 0) {
            has_host = 1;
            sprintf(request_buf, "%s%s", request_buf, linebuf);
        } else if (strcasecmp(header_name, "User-Agent") == 0 ||
                strcasecmp(header_name, "Accept") == 0 ||
                strcasecmp(header_name, "Accept-Encoding") == 0 ||
                strcasecmp(header_name, "Connection") == 0 ||
                strcasecmp(header_name, "Proxy-Connection") == 0) {
            // we have default values for these headers
        } else {
            // for other headers, we forward it directly
            sprintf(request_buf, "%s%s", request_buf, linebuf);
        }
        if (rio_readlineb_ww(&rio, linebuf, MAXLINE) < 0) {
            return;
        }
    }
    if (!has_host) {
        /* add host according to uri parsing result */
        sprintf(request_buf, "%s%s: %s:%s\r\n", request_buf, "Host",
                host, port);
    }

    /* add default value for these headers */
    sprintf(request_buf, "%s%s", request_buf,
            user_agent_hdr);
    sprintf(request_buf, "%s%s", request_buf,
            accept_hdr);
    sprintf(request_buf, "%s%s", request_buf,
            accept_encoding_hdr);
    sprintf(request_buf, "%s%s:close\r\n", request_buf,
            "Connection");
    sprintf(request_buf, "%s%s:close\r\n", request_buf,
            "Proxy-Connection");
    sprintf(request_buf, "%s\r\n", request_buf);
#ifdef DEBUG
    fprintf(stderr, "request buf:\n%s\n", request_buf);
#endif
    int clientfd = open_clientfd_ww(host, port);
    if (clientfd < 0) {
        return ;
    }
    if (rio_writen_ww(clientfd, request_buf, strlen(request_buf)) < 0) {
        close_ww(clientfd);
        return;
    }
    
    /* forward the response of the server to the client */
    forward_response(formated_uri, clientfd, fromfd);
    close_ww(clientfd);
}

/* thread  -- the things to do for each thread */
void *thread(void *vargp)
{
    int connfd = *((int*)vargp);
    pthread_detach(pthread_self());
    free(vargp);
    forward(connfd);
    close(connfd);
    return NULL;
}


/* sigpipe_handler  -- handle sig pipe
 * SIGPIPE is generated when the connection is closed by another end early.
 * */
void sigpipe_handler(int sig)
{
    fprintf(stderr, "[WARNING] Catch a sigpipe signal\n");
}


/* main */
int main(int argc, char **argv)
{
    if (argc != 2) {
        usage();
    }
    Signal(SIGPIPE, sigpipe_handler);
    int listenfd = Open_listenfd(argv[1]);
    struct sockaddr_storage clientaddr;
    socklen_t clientlen = sizeof(clientaddr);
    int *connfdp;
    lru_cache_init(&lru_cache, MAX_CACHE_SIZE);
    sem_init(&mutex, 0, 1);
    while (1) {
        connfdp = malloc(sizeof(int));
        if (connfdp == NULL) {
            fprintf(stderr, "malloc failed\n");
            continue;
        }
#ifdef DEBUG
        fprintf(stderr, "accepting...\n");
#endif
        *connfdp = accept(listenfd,
                (SA *)&clientaddr,
                &clientlen);
        if (*connfdp == -1) {
            fprintf(stderr, "Accept failed: %d\n", listenfd);
            free(connfdp);
        } else {
            // TODO: use thread pool
            pthread_t tid;
            pthread_create(&tid, NULL, thread, connfdp);
        }
    }
    lru_cache_free(&lru_cache);
    return 0;
}
