#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include "csapp.h"
#include "util.h"
#include "bytes.h"
#include "cache.h"

#define DEBUG

/* Recommended max cache and object sizes */
#define MAX_CACHE_SIZE 1049000
#define MAX_OBJECT_SIZE 102400

lru_cache_t lru_cache;
sem_t mutex;


/* You won't lose style points for including these long lines in your code */
static const char *user_agent_hdr = "User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:10.0.3) Gecko/20120305 Firefox/10.0.3\r\n";
static const char *accept_hdr = "Accept: text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8\r\n";
static const char *accept_encoding_hdr = "Accept-Encoding: gzip, deflate\r\n";


void usage()
{
    // TODO
    exit(-1);
}



void forward_response(const char *key, int infd, int outfd)
{
    rio_t rio;
    rio_readinitb(&rio, infd);

    char buf[MAXLINE];
    struct Bytes response;
    bytes_malloc(&response);

    int num_bytes;
    while ((num_bytes=rio_readnb_ww(&rio, buf, MAXLINE)) > 0) {
        bytes_appendn(&response, buf, num_bytes);
    }
    if (num_bytes < 0) {
        return ;
    }

#ifdef DEBUG
    fprintf(stderr, "response length: %zu\n", bytes_length(response));
#endif
    
    if (!rio_writen_ww(outfd,
                bytes_buf(response),
                bytes_length(response))) {
        goto FORWARD_RESPONSE_RETURN;
    }

    if (bytes_length(response) < MAX_OBJECT_SIZE) {
        sem_wait(&mutex);
        lru_cache_insert(&lru_cache, key, bytes_buf(response),
                bytes_length(response));
        sem_post(&mutex);
    }
FORWARD_RESPONSE_RETURN:
    bytes_free(&response);
}

void forward(int fromfd)
{
    rio_t rio;
    rio_readinitb(&rio, fromfd);
    char linebuf[MAXLINE], method[MAXLINE], uri[MAXLINE],
         version[MAXLINE], host[MAXLINE],
         port[MAXLINE], dir[MAXLINE],
         request_buf[MAXBUF],
         header_name[MAXLINE],
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
    // sprintf(request_buf, "%s %s %s\r\n", method, dir, version);
    
    int has_host = 0;
    // request headers
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
            // ignore
        } else {
            sprintf(request_buf, "%s%s", request_buf, linebuf);
        }
        if (rio_readlineb_ww(&rio, linebuf, MAXLINE) < 0) {
            return;
        }
    }
    if (!has_host) {
        sprintf(request_buf, "%s%s: %s:%s\r\n", request_buf, "Host",
                host, port);
    }
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
    
    // receive data
    // read_response(clientfd);
    
    forward_response(formated_uri, clientfd, fromfd);
    close_ww(clientfd);
}

void *thread(void *vargp)
{
    int connfd = *((int*)vargp);
    pthread_detach(pthread_self());
    free(vargp);
    forward(connfd);
    close(connfd);
    return NULL;
}


void sigpipe_handler(int sig)
{
    fprintf(stderr, "[WARNING] Catch a sigpipe signal\n");
}


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
