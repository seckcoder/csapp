#include <stdint.h>
#include <getopt.h>
#include <stdlib.h>
#include <unistd.h>
#include <stdio.h>
#include <string.h>
#include "cachelab.h"

typedef unsigned char Byte;

// LRU linked list
typedef struct CacheLine {
  Byte *mem;
  struct CacheLine *next;
} CacheLine;

typedef struct Operation {
  char op;
  uint64_t addr;
  int num_bytes;
} Operation;

typedef struct Cache {
  CacheLine **cache_sets;
  uint32_t miss_num;
  uint32_t hit_num;
  uint32_t eviction_num;
} Cache;

Operation parseOp(char *line) {
  Operation op;
  return op;
}

void cacheLoad(Cache *cache, Operation op) {
}

void cacheStore(Cache *cache, Operation op) {
}
void cacheModify(Cache *cache, Operation op) {
}

void printHelp() {
  printf("help!");
}
int main(int argc, char **argv) {
  int verbose = 0;
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
  size_t cache_line_size = 9; // 8 byte + 1 valid bit. allocate 9 bytes
  size_t cache_size = cache_set_num * E * cache_line_size; // number of bytes
  Byte *cache_mem = (Byte*)malloc(cache_size * sizeof(Byte));
  memset(cache_mem, 0, cache_size*sizeof(Byte));
  // all cache lines
  CacheLine *cache_lines = (CacheLine*)malloc((cache_set_num+E) * sizeof(CacheLine));
  CacheLine **cache_sets = (CacheLine**)malloc(cache_set_num * sizeof(CacheLine*));

  // initialize cache lines.
  for (int cache_set_idx = 0; cache_set_idx < cache_set_num; cache_set_idx+=1) {
    int cache_line_idx = cache_set_idx * E;
    cache_sets[cache_set_idx] = &cache_lines[cache_line_idx];
    while (cache_line_idx < cache_set_idx*E+E-1) {
      cache_lines[cache_line_idx].mem = &cache_mem[cache_line_idx*cache_line_size];
      cache_lines[cache_line_idx].next = &cache_lines[cache_line_idx+1]; // set next
      cache_line_idx += 1;
    }
    cache_lines[cache_line_idx].mem = &cache_mem[cache_line_idx*cache_line_size];
    cache_lines[cache_line_idx].next = NULL; // end of current cache set
  }

  Cache cache;
  cache.cache_sets = cache_sets;
  cache.miss_num = 0;
  cache.hit_num = 0;
  cache.eviction_num = 0;

  FILE *trace_file = fopen(trace_fname, "r");
  char line[32];
  while (fgets(line, 32, trace_file)) {
    Operation op = parseOp(line);
    switch (op.op) {
      case 'L':
        cacheLoad(&cache, op);
        break;
      case 'S':
        cacheStore(&cache, op);
        break;
      case 'M':
        cacheModify(&cache, op);
      default:
        break;
    }
  }
  printSummary(cache.hit_num, cache.miss_num, cache.eviction_num);
  fclose(trace_file);
  free(cache_sets);
  free(cache_lines);
  free(cache_mem);
  return 0;
}
