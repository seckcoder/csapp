#include "cache.h"

#define node_cache_size(pnode) (((pnode)->value_len)*sizeof(char))

static lru_cache_node_t *create_empty_node()
{
    lru_cache_node_t *pnode = (lru_cache_node_t*)Malloc(sizeof(lru_cache_node_t));
    pnode->value_len = 0;
    pnode->key[0] = '\0';
    pnode->value = NULL;
    pnode->next = NULL;
    pnode->prev = NULL;
    return pnode;
}

static void free_node(lru_cache_node_t *pnode)
{
    free(pnode->value);
    free(pnode);
}
static lru_cache_node_t *create_node_from(
        const char *key,
        const char *value,
        size_t value_len)
{
    lru_cache_node_t *pnode = create_empty_node();
    pnode->value = (char *)malloc(value_len*sizeof(char));
    pnode->value_len = value_len;
    strcpy(pnode->key, key);
    for (int i = 0; i < value_len; i++) {
        pnode->value[i] = value[i];
    }
    return pnode;
}

void lru_cache_init(lru_cache_t *pcache, size_t max_cache_size)
{
    pcache->max_cache_size = max_cache_size;
    pcache->sentinel = create_empty_node();
    pcache->sentinel->next = pcache->sentinel;
    pcache->sentinel->prev = pcache->sentinel;
}

void lru_cache_free(lru_cache_t *pcache)
{
    lru_cache_node_t *cur, *next = NULL;
    cur = pcache->sentinel->next;
    while (cur != pcache->sentinel) {
        next = cur->next;
        free_node(cur);
        cur = next;
    }
    free_node(pcache->sentinel);
}


static inline void lru_cache_insert_next(lru_cache_t *pcache,
        lru_cache_node_t *prev,
        lru_cache_node_t *pnode)
{

    pnode->next = prev->next;
    pnode->prev = prev;
    prev->next->prev = pnode;
    prev->next = pnode;
    pcache->cache_size += node_cache_size(pnode);
}

static inline void lru_cache_remove(lru_cache_t *pcache,
        lru_cache_node_t *cur)
{
    cur->prev->next = cur->next;
    cur->next->prev = cur->prev;
    pcache->cache_size -= node_cache_size(cur);
}

/*
 * assert prev->next != NULL
 */
static void lru_cache_raise(lru_cache_t *pcache, lru_cache_node_t *cur)
{
    // remove the node
    lru_cache_remove(pcache, cur);
    lru_cache_insert_next(pcache, pcache->sentinel, cur);
}

lru_cache_node_t *lru_cache_find(lru_cache_t *pcache, const char *key)
{
    for (lru_cache_node_t *cur = pcache->sentinel->next;
            cur != pcache->sentinel; cur = cur->next) {
        if (strcasecmp(cur->key, key) == 0) {
            lru_cache_raise(pcache, cur);
            return cur;
        }
    }
    return NULL;
}

void lru_cache_insert(lru_cache_t *pcache,
        const char *key,
        const char *value,
        size_t value_len)
{
    lru_cache_node_t *pnode = create_node_from(key, value, value_len);
    lru_cache_insert_next(pcache, pcache->sentinel, pnode);
    while (pcache->cache_size > pcache->max_cache_size) {
        lru_cache_remove(pcache, lru_cache_tail(pcache));
    }
}
