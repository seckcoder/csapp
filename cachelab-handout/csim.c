#include <stdint.h>
#include <getopt.h>
#include <stdlib.h>
#include <unistd.h>
#include <stdio.h>
#include <string.h>
#include <inttypes.h>
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
  op.op = line[1];
  int len = strlen(line);
  int cur = 2;
  skipChar(line, len, ' ', &cur);
  char addr_str[9];
  strncpy(addr_str, &line[cur], 8);
  addr_str[8] = '\0';
  sscanf(addr_str, "%" SCNx64, &op.addr);
  cur += 8;
  skipNotDigit(line, len, &cur);
  op.num_bytes = atoi(&line[cur]);
  return op;
}

void printOp(Operation op) {
  // PRIu64 PRId64
  printf("%c %" PRIu64 " %d\n", op.op, op.addr, op.num_bytes);
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
    printOp(op);
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
