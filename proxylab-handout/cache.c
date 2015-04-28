/*
 * cache.c - lru cache
 */

#include "cache.h"

/* return the cache size of the node */
#define node_cache_size(pnode) (((pnode)->value_len)*sizeof(char))

/* create_empty_node */
static lru_cache_node_t *create_empty_node()
{
    lru_cache_node_t *pnode = (lru_cache_node_t*)malloc(
        sizeof(lru_cache_node_t));
    if (pnode == NULL) return NULL;
    pnode->value_len = 0;
    pnode->key[0] = '\0';
    pnode->value = NULL;
    pnode->next = NULL;
    pnode->prev = NULL;
    return pnode;
}

/* free_node */
static void free_node(lru_cache_node_t *pnode)
{
    free(pnode->value);
    free(pnode);
}

/* create_node_from  -- create a node from (key, value) pair */
static lru_cache_node_t *create_node_from(
        const char *key,
        const char *value,
        size_t value_len)
{
    lru_cache_node_t *pnode = create_empty_node();
    pnode->value = (char *)malloc(value_len*sizeof(char));
    pnode->value_len = value_len;
    strcpy(pnode->key, key);
    int i;
    for (i = 0; i < value_len; i++) {
        pnode->value[i] = value[i];
    }
    return pnode;
}

/* lru_cache_init  -- init lru cache */
void lru_cache_init(lru_cache_t *pcache, size_t max_cache_size)
{
    pcache->max_cache_size = max_cache_size;
    pcache->sentinel = create_empty_node();
    pcache->sentinel->next = pcache->sentinel;
    pcache->sentinel->prev = pcache->sentinel;
}

/* lru_cache_free  -- free the lru cache */
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


/* lru_cache_insert_next  -- insert a node to the list */
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

/* lru_cache_remove  -- remove the node from the list */
static inline void lru_cache_remove(lru_cache_t *pcache,
        lru_cache_node_t *cur)
{
    cur->prev->next = cur->next;
    cur->next->prev = cur->prev;
    pcache->cache_size -= node_cache_size(cur);
}

/*
 * lru_cache_raise  -- raise the position of the node as the most
 * recently visited node
 * assert prev->next != NULL
 */
static void lru_cache_raise(lru_cache_t *pcache, lru_cache_node_t *cur)
{
    // remove the node
    lru_cache_remove(pcache, cur);
    lru_cache_insert_next(pcache, pcache->sentinel, cur);
}

/* lru_cache_find  -- find a node according to the key */
lru_cache_node_t *lru_cache_find(lru_cache_t *pcache, const char *key)
{
    lru_cache_node_t *cur;
    for (cur = pcache->sentinel->next;
            cur != pcache->sentinel; cur = cur->next) {
        if (strcasecmp(cur->key, key) == 0) {
            /* If a node is found, it's visited once */
            lru_cache_raise(pcache, cur);
            return cur;
        }
    }
    return NULL;
}

/* lru_cache_insert  -- insert a new node to the lru cache */
void lru_cache_insert(lru_cache_t *pcache,
        const char *key,
        const char *value,
        size_t value_len)
{
    lru_cache_node_t *pnode = create_node_from(key, value, value_len);
    lru_cache_insert_next(pcache, pcache->sentinel, pnode);
    while (pcache->cache_size > pcache->max_cache_size) {
        /* remove the least recently used node */
        lru_cache_node_t *node_to_remove = lru_cache_tail(pcache);
        lru_cache_remove(pcache, node_to_remove);
        /* free the removed node */
        free_node(node_to_remove);
    }
}
