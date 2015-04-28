/*
 * cache.h - lru cache
 */

#ifndef __CACHE_H__
#define __CACHE_H__

#include "csapp.h"

typedef struct lru_cache_node_t {
    char *value;   /* cache content. This is not a null terminated string */
    size_t value_len;  /* size of the cache */
    // for simplicity, assume key is a null terminated string
    char key[MAXLINE];  /* key - value */
    struct lru_cache_node_t *next; /* next node */
    struct lru_cache_node_t *prev; /* prev node */
} lru_cache_node_t;

/* lru cache is implemented as a bidirectional list */
typedef struct lru_cache_t {
    size_t max_cache_size; /* maximum size allowed for the cache.
                              If this is exceeded,
                              we simply evict the least recently used block */
    lru_cache_node_t *sentinel;  /* sentinel node is a fake node */
    lru_cache_node_t *front; /* front points to most recently used */
    // lru_cache_node_t *tail;  /* tail points to least recently used */
    size_t cache_size;  /* the size of the cache */
} lru_cache_t;

/* lru cache operations */
void lru_cache_init(lru_cache_t *pcache, size_t max_cache_size);
void lru_cache_free(lru_cache_t *pcache);

lru_cache_node_t *lru_cache_find(lru_cache_t *pcache, const char *key);

void lru_cache_insert(lru_cache_t *pcache,
        const char *key, const char *value, size_t value_len);

#define lru_cache_tail(pcache) ((pcache)->sentinel->prev)

#endif
