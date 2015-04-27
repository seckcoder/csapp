#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include "csapp.h"
#include "dstring.h"
#include "util.h"

// #define DEBUG
#undef DEBUG

/* Recommended max cache and object sizes */
#define MAX_CACHE_SIZE 1049000
#define MAX_OBJECT_SIZE 102400


/* You won't lose style points for including these long lines in your code */
static const char *user_agent_hdr = "User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:10.0.3) Gecko/20120305 Firefox/10.0.3\r\n";
static const char *accept_hdr = "Accept: text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8\r\n";
static const char *accept_encoding_hdr = "Accept-Encoding: gzip, deflate\r\n";


void usage()
{
    // TODO
    exit(-1);
}


void read_response(int infd)
{
    rio_t rio;
    Rio_readinitb(&rio, infd);

    char buf[MAXLINE];

    while (Rio_readlineb(&rio, buf, MAXLINE)) {
        // TODO: empty return

        printf("%s", buf);
    }
}

void forward_response(int infd, int outfd)
{
    rio_t rio;
    Rio_readinitb(&rio, infd);

    char buf[MAXLINE];
    struct string response;
    string_malloc(&response);

    if (!Rio_readlineb(&rio, buf, MAXLINE)) {
        //TODO: error report
        return;
    }

    string_append(&response, buf);

    Rio_readlineb(&rio, buf, MAXLINE);
    char header_name[MAXLINE], header_value[MAXLINE];
    int content_length = 0;
    while (strcmp(buf, "\r\n")) {
        parse_header(buf, header_name, header_value);
        if (strcasecmp(header_name, "Content-length") == 0) {
            content_length = atoi(header_value);
        }
        string_append(&response, buf);
        Rio_readlineb(&rio, buf, MAXLINE);
    }
    string_append(&response, buf);

    if (content_length == 0) {
        // TODO: error handling
        return;
    } else {
#ifdef DEBUG
        fprintf(stderr, "Content-length: %d\n", content_length);
#endif
        // read content
        char *content_buf = (char *)malloc((content_length+1)*sizeof(char));
        Rio_readnb(&rio, content_buf, content_length);
        string_appendn(&response, content_buf, (size_t)content_length);
        free(content_buf);
    }
    if (Rio_readlineb(&rio, buf, MAXLINE) != 0) {
        // TODO: error handling
        return;
    }
    

#ifdef DEBUG
    fprintf(stderr, "response length: %zu\n", string_length(response));
    // fprintf(stderr, "response:\n%s", string_cstr(response));
#endif
    
    Rio_writen(outfd,
            string_cstr(response),
            string_length(response));

    string_free(&response);
}

void forward(int fromfd)
{
    rio_t rio;
    Rio_readinitb(&rio, fromfd);
    char linebuf[MAXLINE], method[MAXLINE], uri[MAXLINE],
         version[MAXLINE], host[MAXLINE],
         port[MAXLINE], dir[MAXLINE],
         request_buf[MAXBUF],
         header_name[MAXLINE],
         header_value[MAXLINE];

    if (!Rio_readlineb(&rio, linebuf, MAXLINE)) {
        return;
    }
    sscanf(linebuf, "%s %s %s", method, uri, version);
    if (strcasecmp(method, "GET")) {
        // TODO
        return;
    }
    parse_uri(uri, host, port, dir);
#ifdef DEBUG
    fprintf(stderr, "host: %s port: %s dir: %s\n", host, port, dir);
#endif
    
    sprintf(request_buf, "%s %s %s\r\n", method, dir, version);
    int clientfd = Open_clientfd(
            host, port);
    
    int has_host = 0;
    // request headers
    Rio_readlineb(&rio, linebuf, MAXLINE);
    while (strcmp(linebuf, "\r\n")) {
        parse_header(linebuf, header_name, header_value);
        // printf("header %s : %s\n", header_name, header_value);
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
        Rio_readlineb(&rio, linebuf, MAXLINE);
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
    Rio_writen(clientfd, request_buf, strlen(request_buf));
    
    // receive data
    // read_response(clientfd);
    
    forward_response(clientfd, fromfd);
}



int main(int argc, char **argv)
{
    // printf("%s%s%s", user_agent_hdr, accept_hdr, accept_encoding_hdr);

    if (argc != 2) {
        usage();
    }
    int listenfd = Open_listenfd(argv[1]);
    struct sockaddr_storage clientaddr;
    socklen_t clientlen = sizeof(clientaddr);
    while (1) {
        int connfd = Accept(listenfd,
                (SA *)&clientaddr,
                &clientlen);
        if (connfd == -1) {
            // TODO: error report
        }
        forward(connfd);
    }
    return 0;
}
