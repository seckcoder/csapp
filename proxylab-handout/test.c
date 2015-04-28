/*
 * test.c  -- simple test
 */
#include "util.h"
#include "bytes.h"
#include "csapp.h"
#include "cache.h"

#include <stdio.h>
#include <string.h>

/* simple check */

/* check whether two strings are equal */
#define CHECK_STREQUAL(s1, s2) if (strcmp((s1), (s2))) { \
    fprintf(stderr, "%d [CHECK_STREQUAL] %s != %s\n", __LINE__, s1, s2); \
    exit(-1);\
}


/* check whether two scalar values(int,char,float,...) are equal */
#define CHECK_EQUAL(a, b) if (!((a) == (b))) {\
    fprintf(stderr, "%d [CHECK_EQUAL] failed", __LINE__); \
    fflush(stderr);\
    exit(-1);\
}

/* test_bytes_append  -- test append a cstr to the bytes */
void test_bytes_append()
{
    Bytes str;
    bytes_malloc(&str);
    bytes_append(&str, "abc");
    CHECK_EQUAL(bytes_length(str), 3);
    char cstr[4];
    bytes_cstr(str, cstr);
    CHECK_STREQUAL(cstr, "abc");
    bytes_free(&str);
}

/* test_bytes_resizing  -- when the size of the bytes content exceeds
 * the allocated memory, we dynamically reallocate a block of memory
 * to fit the bytes
 */
void test_bytes_resizing()
{
    Bytes str;
    bytes_malloc(&str);
    char fake[2];
    char c;
    int i;
    fake[1] = '\0';
    for (c = 'a'; c <= 'z'; c+=1) {
        for (i = 0; i < 1024; i++) {
            fake[0] = c;
            bytes_append(&str, fake);
        }
    }
    CHECK_EQUAL(bytes_length(str), 26*1024);
    CHECK_EQUAL(bytes_size(str), 32*1024);
    CHECK_EQUAL(bytes_ref(str, bytes_length(str)),
            '\0');
    for (c = 'a'; c <= 'z'; c+=1) {
        for (i = 0; i < 1024; i++) {
            int idx = (c-'a');
            idx *= 1024;
            idx += i;
            CHECK_EQUAL(bytes_ref(str, idx), c);
        }
    }
    bytes_free(&str);
}

/* test_parse_uri  -- test parse_uri basic functionality */
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

/* print_cache  -- print the content of the cache */
void print_cache(lru_cache_t *pcache)
{
    lru_cache_node_t *p;
    for (p = pcache->sentinel->next;
            p != pcache->sentinel; p=p->next) {
        printf("%c ", p->value[0]);
    }
    printf("\n");
    fflush(stdin);
}

/* test_cache  -- test basic lru_cache functionality */
void test_cache()
{
    lru_cache_t cache;
    lru_cache_init(&cache, 16);
    
    char str[2];
    char c;
    for (c = 'a'; c < 'a'+16; c += 1) {
        str[0] = c;
        str[1] = '\0';
        lru_cache_insert(&cache, str, str, 1);
        CHECK_EQUAL(cache.cache_size, c-'a'+1);
        CHECK_EQUAL(cache.sentinel->next->value[0],
            str[0]);
    }
    print_cache(&cache);
    // printf("%zu\n", cache.cache_size);
    CHECK_EQUAL(cache.cache_size, 16);
    for (c = 'a'+16; c < 'a'+26; c+=1) {
      str[0] = c;
      lru_cache_insert(&cache, str, str, 1);
      CHECK_EQUAL(cache.cache_size, 16);
      CHECK_EQUAL(cache.sentinel->next->value[0],
          str[0]);
    }
    print_cache(&cache);
    lru_cache_free(&cache);
}

int main()
{
    test_parse_uri();
    test_bytes_append();
    test_bytes_resizing();
    test_cache();
    return 0;
}
