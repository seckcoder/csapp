#ifndef __CACHE_H__
#define __CACHE_H__

#include "csapp.h"

typedef struct lru_cache_node_t {
    char *value;
    size_t value_len;
    // for simplicity, assume key is a null terminated string
    char key[MAXLINE];
    struct lru_cache_node_t *next;
    struct lru_cache_node_t *prev;
} lru_cache_node_t;

typedef struct lru_cache_t {
    size_t max_cache_size;
    lru_cache_node_t *sentinel;
    lru_cache_node_t *front; /* front points to most recently used */
    // lru_cache_node_t *tail;  /* tail points to least recently used */
    size_t cache_size;
} lru_cache_t;

void lru_cache_init(lru_cache_t *pcache, size_t max_cache_size);
void lru_cache_free(lru_cache_t *pcache);

lru_cache_node_t *lru_cache_find(lru_cache_t *pcache, const char *key);

void lru_cache_insert(lru_cache_t *pcache, const char *key, const char *value, size_t value_len);

#define lru_cache_tail(pcache) ((pcache)->sentinel->prev)

#endif
