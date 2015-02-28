#include <stdint.h>
#include <getopt.h>
#include <stdlib.h>
#include <unistd.h>
#include <stdio.h>
#include <string.h>
#include <inttypes.h>
#include "cachelab.h"

static int verbose = 0;

typedef unsigned char Byte;

// LRU linked list
typedef struct CacheLine {
  uint64_t tag;
  Byte valid;
  struct CacheLine *next;
  struct CacheLine *prev;
} CacheLine;

typedef struct CacheSet {
  CacheLine *head;
  CacheLine *tail;
} CacheSet;

typedef struct Operation {
  char op;
  uint64_t addr;
  int num_bytes;
} Operation;

typedef struct AddressCoeff {
  int tag_len, s, E, b;
  uint64_t set_mask, tag_mask;
} AddressCoeff;

typedef struct Cache {
  CacheSet *cache_sets;
  AddressCoeff coeff;
  uint32_t miss_num;
  uint32_t hit_num;
  uint32_t eviction_num;
} Cache;


void skipChar(char *line, int len, char c, int *cur) {
  while (*cur < len && line[*cur] == c) {
    *cur += 1;
  }
}

#define isDigit(c) ((c) <= '9' && (c) >= '0')

void skipNotDigit(char *line, int len, int *cur) {
  while (*cur < len && !isDigit(line[*cur])) {
    *cur += 1;
  }
}
Operation parseOp(char *line) {
  Operation op;
  sscanf(line, "%*[^LSM]%c%" SCNx64 "%*[^1-9]%d",
      &op.op, &op.addr, &op.num_bytes);
  return op;
}

void printOp(Operation op) {
  // PRIu64 PRId64
  //printf("%c %" PRIu64 " %d", op.op, op.addr, op.num_bytes);
  printf("%c %llx,%d", op.op, (unsigned long long)op.addr, op.num_bytes);
}


uint64_t getCacheSetIdx(AddressCoeff coeff, uint64_t addr) {
  return (coeff.set_mask & addr) >> coeff.b;
}

CacheSet* getCacheSet(Cache *cache, uint64_t addr) {
  uint64_t cache_set_idx = getCacheSetIdx(cache->coeff, addr);
  //printf(" cache set idx %llu\n", (long long unsigned)cache_set_idx);
  return &(cache->cache_sets[cache_set_idx]);
}

uint64_t getAddrTag(AddressCoeff coeff, uint64_t addr) {
  return (coeff.tag_mask & addr) >> (coeff.s + coeff.b);
}


// find the cache line
CacheLine* cacheLineFindByTagAndValid(CacheLine *cache_line, uint64_t tag, Byte valid) {
  while (cache_line != NULL) {
    if (cache_line->valid == valid && cache_line->tag == tag) {
      return cache_line;
    }
    cache_line = cache_line->next;
  }
  return NULL;
}

void initCacheLine(CacheLine *cache_line, CacheLine *next, CacheLine *prev) {
  cache_line->next = next;
  cache_line->prev = prev;
  cache_line->tag = 0;
  cache_line->valid = 0;
}

CacheLine *cacheLineFindFirstNonValid(CacheLine *cache_line) {
  while (cache_line != NULL) {
    if (!cache_line->valid) {
      return cache_line;
    }
    cache_line = cache_line->next;
  }
  return NULL;
}


// promote cache_line to the head
void lru_promote(CacheSet *cache_set, CacheLine *cache_line) {
  if (cache_set->head != cache_set->tail && cache_line != cache_set->head) {
    // promote only when we have more than one element and cache_line is
    // currently not the frontest element
    
    // first remove the element
    cache_line->prev->next = cache_line->next;
    if (cache_line->next != NULL) cache_line->next->prev = cache_line->prev;

    // then insert it in the front
    cache_set->head->prev = cache_line;
    cache_line->next = cache_set->head;
    cache_line->prev = NULL;
    cache_set->head = cache_line;
  }
}

void cacheLoad(Cache *cache, Operation op) {
  CacheSet *cache_set = getCacheSet(cache, op.addr);
  uint64_t addr_tag = getAddrTag(cache->coeff, op.addr);
  // find valid cache line with matched tag
  CacheLine *cache_line = cacheLineFindByTagAndValid(cache_set->head,
      addr_tag, 1);
  if (cache_line) {
    cache->hit_num += 1;
    if (verbose) {
      printf(" hit");
    }
  } else {
    if (verbose) printf(" miss");
    cache->miss_num += 1;
    cache_line = cacheLineFindFirstNonValid(cache_set->head);
    if (!cache_line) {
      cache_line = cache_set->tail;
      cache->eviction_num += 1; // evict a cache
      if (verbose) printf(" eviction");
    }
    cache_line->valid = 1;
    cache_line->tag = addr_tag;
  }
  // promote the cache_line to the front of lru
  lru_promote(cache_set, cache_line);
}

void cacheStore(Cache *cache, Operation op) {
  uint64_t addr_tag = getAddrTag(cache->coeff, op.addr);
  CacheSet *cache_set = getCacheSet(cache, op.addr);
  CacheLine *cache_line = cacheLineFindByTagAndValid(
      cache_set->head, addr_tag, 1);
  if (cache_line) {
    cache->hit_num += 1;
    if (verbose) printf(" hit");
  } else {
    cache->miss_num += 1;
    if (verbose) printf(" miss");
    cache_line = cacheLineFindFirstNonValid(cache_set->head);
    if (!cache_line) {
      cache_line = cache_set->tail; // remove the least recent used cache
      cache->eviction_num += 1;
      if (verbose) printf(" eviction");
    }
    cache_line->tag = addr_tag;
  }
  lru_promote(cache_set, cache_line);
}

void cacheModify(Cache *cache, Operation op) {
  cacheLoad(cache, op);
  cacheStore(cache, op);
}

void printHelp() {
  printf("help!");
}
int main(int argc, char **argv) {
  int s, E, b;
  char trace_fname[256];
  int c;
  while ((c = getopt(argc,argv, "hvs:E:b:t:")) != -1) {
    switch (c) {
      case 'h':
        printHelp();
        break;
      case 'v':
        verbose = 1;
        break;
      case 's':
        s = atoi(optarg);
        break;
      case 'E':
        E = atoi(optarg);
        break;
      case 'b':
        b = atoi(optarg);
        break;
      case 't':
        strcpy(trace_fname, optarg);
        break;
      case '?':
        fprintf(stderr, "Unknown option `-%c`.\n", optopt);
        return 1;
      default:
        return 1;
    }
  }
  size_t cache_set_num = (1<<s);
  size_t cache_line_num = cache_set_num * E;
  // all cache lines
  CacheLine *cache_lines = (CacheLine*)malloc(cache_line_num * sizeof(CacheLine));
  CacheSet *cache_sets = (CacheSet *)malloc(cache_set_num * sizeof(CacheSet));

  // initialize cache lines.
  for (int cache_set_idx = 0; cache_set_idx < cache_set_num; cache_set_idx+=1) {
    int cache_line_idx = cache_set_idx * E;
    if (E == 1) {
      cache_sets[cache_set_idx].head = cache_sets[cache_set_idx].tail =
        &cache_lines[cache_line_idx];
      initCacheLine(&cache_lines[cache_line_idx], NULL, NULL);
    } else {
      // head
      cache_sets[cache_set_idx].head = &cache_lines[cache_line_idx];

      // initialize head
      initCacheLine(&cache_lines[cache_line_idx], &cache_lines[cache_line_idx+1], NULL);
      cache_line_idx += 1;
      while (cache_line_idx < cache_set_idx*E+E-1) {
      initCacheLine(
          &cache_lines[cache_line_idx],
          &cache_lines[cache_line_idx+1],
          &cache_lines[cache_line_idx-1]
          );
        cache_line_idx += 1;
      }

      // initialize tail
      initCacheLine(
          &cache_lines[cache_line_idx],
          NULL,
          &cache_lines[cache_line_idx-1]
          );
      // tail
      cache_sets[cache_set_idx].tail = &cache_lines[cache_line_idx];
    }
  }

  Cache cache;
  cache.cache_sets = cache_sets;
  cache.miss_num = 0;
  cache.hit_num = 0;
  cache.eviction_num = 0;
  uint64_t zero = 0;
  cache.coeff.tag_len = 64-s-b;
  cache.coeff.s = s;
  cache.coeff.b = b;
  cache.coeff.set_mask = (((~zero) >> b) << (64-s)) >> (64-s-b);
  cache.coeff.tag_mask = ((~zero) >> (s+b)) << (s+b);
  // printf("%llX %llX\n", (long long unsigned)cache.coeff.set_mask, (long long unsigned)cache.coeff.tag_mask);

  FILE *trace_file = fopen(trace_fname, "r");
  char line[32];
  while (fgets(line, 32, trace_file)) {
    Operation op = parseOp(line);
    switch (op.op) {
      case 'L':
        if (verbose) printOp(op);
        cacheLoad(&cache, op);
        if (verbose) printf("\n");
        break;
      case 'S':
        if (verbose) printOp(op);
        cacheStore(&cache, op);
        if (verbose) printf("\n");
        break;
      case 'M':
        if (verbose) printOp(op);
        cacheModify(&cache, op);
        if (verbose) printf("\n");
        break;
      default:
        break;
    }
  }
  printSummary(cache.hit_num, cache.miss_num, cache.eviction_num);
  fclose(trace_file);
  free(cache_sets);
  free(cache_lines);
  return 0;
}
