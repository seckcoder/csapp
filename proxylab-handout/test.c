#include "util.h"
#include "bytes.h"
#include "csapp.h"
#include "cache.h"

#include <stdio.h>
#include <string.h>

#define CHECK_STREQUAL(s1, s2) if (strcmp((s1), (s2))) { \
    fprintf(stderr, "%d [CHECK_STREQUAL] %s != %s\n", __LINE__, s1, s2); \
    exit(-1);\
}

#define CHECK_EQUAL(a, b) if (!((a) == (b))) {\
    fprintf(stderr, "%d [CHECK_EQUAL] failed", __LINE__); \
    fflush(stderr);\
    exit(-1);\
}

void test_dstring1()
{
    Bytes str;
    bytes_malloc(&str);
    bytes_append(&str, "abc");
    CHECK_EQUAL(bytes_length(str), 3);
    bytes_free(&str);
}

void test_dstring2()
{
    Bytes str;
    bytes_malloc(&str);
    char fake[2];
    fake[1] = '\0';
    for (char c = 'a'; c <= 'z'; c+=1) {
        for (int i = 0; i < 1024; i++) {
            fake[0] = c;
            bytes_append(&str, fake);
        }
    }
    CHECK_EQUAL(bytes_length(str), 26*1024);
    CHECK_EQUAL(bytes_size(str), 32*1024);
    CHECK_EQUAL(bytes_ref(str, bytes_length(str)),
            '\0');
    for (char c = 'a'; c <= 'z'; c+=1) {
        for (int i = 0; i < 1024; i++) {
            int idx = (c-'a');
            idx *= 1024;
            idx += i;
            CHECK_EQUAL(bytes_ref(str, idx), c);
        }
    }
    bytes_free(&str);
}

void test_parse_uri()
{
    char host[MAXLINE];
    char port[MAXLINE];
    char dir[MAXLINE];
    parse_uri("http://www.cmu.edu/hub/index.html",
            host,
            port,
            dir
            );
    CHECK_STREQUAL(host, "www.cmu.edu");
    CHECK_STREQUAL(port, "80");
    CHECK_STREQUAL(dir, "/hub/index.html");
    parse_uri("www.cmu.edu:8000/hub/index.html", host, port, dir);
    CHECK_STREQUAL(host, "www.cmu.edu");
    CHECK_STREQUAL(port, "8000");
    CHECK_STREQUAL(dir, "/hub/index.html");
}

void print_cache(lru_cache_t *pcache)
{
    for (lru_cache_node_t *p = pcache->sentinel->next;
            p != pcache->sentinel; p=p->next) {
        printf("%c ", p->value[0]);
    }
    printf("\n");
    fflush(stdin);
}

void test_cache()
{
    lru_cache_t cache;
    lru_cache_init(&cache, 16);
    
    char str[2];
    for (char c = 'a'; c < 'a'+16; c += 1) {
        str[0] = c;
        str[1] = '\0';
        lru_cache_insert(&cache, str, str, 1);
    }
    print_cache(&cache);
    // printf("%zu\n", cache.cache_size);
    CHECK_EQUAL(cache.cache_size, 16);
    str[0] = 'a' + 16;
    lru_cache_insert(&cache, str, str, 1);
    CHECK_EQUAL(cache.cache_size, 16);
    CHECK_EQUAL(cache.sentinel->next->value[0],
            'a'+16);
    print_cache(&cache);
    lru_cache_free(&cache);
}

int main()
{
    test_parse_uri();
    test_dstring1();
    test_dstring2();
    test_cache();
    return 0;
}
