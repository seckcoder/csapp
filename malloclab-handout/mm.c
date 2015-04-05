/*
 * mm.c
 *
 * NOTE TO STUDENTS: Replace this header comment with your own header
 * comment that gives a high level description of your solution.
 */
#include <assert.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

#include "mm.h"
#include "memlib.h"

/* If you want debugging output, use the following macro.  When you hand
 * in, remove the #define DEBUG line. */
#define DEBUG
#ifdef DEBUG
# define dbg_printf(...) printf(__VA_ARGS__)
#else
# define dbg_printf(...)
#endif


/* do not change the following! */
#ifdef DRIVER
/* create aliases for driver tests */
#define malloc mm_malloc
#define free mm_free
#define realloc mm_realloc
#define calloc mm_calloc
#endif /* def DRIVER */


#define MAX(x,y) ((x) > (y)?(x):(y))

/* single word (4) or double word (8) alignment */
#define WSIZE 4
#define DSIZE 8
#define ALIGNMENT 8
#define CHUNKSIZE (1<<12)
#define MIN_BLOCK_SIZE DSIZE

/* rounds up to the nearest multiple of ALIGNMENT */
#define ALIGN(p) (((size_t)(p) + (ALIGNMENT-1)) & ~0x7)

#define PACK(size, alloc) ((size) | (alloc))

#define GET(p)  (*(unsigned int*)(p))
#define PUT(p, val) (*(unsigned int *)(p) = (val))

#define GET_SIZE(p) (GET(p) & ~0x7)
#define GET_ALLOC(p) (GET(p) & 0x1)

#define HDRP(bp) ((char *)(bp) - WSIZE)
#define FTRP(bp) ((char *)(bp) + GET_SIZE(HDRP(bp)) - DSIZE)

#define NEXT_BLKP(bp) ((char *)(bp) + GET_SIZE(((char *)(bp) - WSIZE)))
#define PREV_BLKP(bp) ((char *)(bp) - GET_SIZE(((char *)(bp) - DSIZE)))

#define BEGIN_BLOCK NEXT_BLKP(heap_listp)

/* bp points to epilogue block */
#define IS_EPILOGUE(bp) (GET(HDRP(bp)) == 1)
#define IS_FREE(bp) (GET_ALLOC(HDRP(bp)) == 0)

/* iterate through every block between epilogue and prologue block */
#define for_each_block(ptr) \
    for ((ptr) = BEGIN_BLOCK; !IS_EPILOGUE(ptr); (ptr)=NEXT_BLKP(ptr))

static char *heap_listp;
static void *extend_heap(size_t words);
static void *coalesce(void *bp);
static void place(void *bp, size_t size);
static void *find_fit(size_t size);
static int aligned(const void *p);

/*
 * Initialize: return -1 on error, 0 on success.
 */
int mm_init(void) {
    // initial empty heap
    if ((heap_listp = mem_sbrk(4*WSIZE)) == (void*) - 1) {
        return -1;
    }
    PUT(heap_listp, 0);
    PUT(heap_listp + (1*WSIZE), PACK(DSIZE, 1));
    PUT(heap_listp + (2*WSIZE), PACK(DSIZE, 1));
    PUT(heap_listp + (3*WSIZE), PACK(0, 1));
    heap_listp += (2*WSIZE);

    if (extend_heap(CHUNKSIZE/WSIZE) == NULL) {
        return -1;
    }
    return 0;
}

static void *extend_heap(size_t words)
{
    char *bp;
    size_t size;

    size = (words % 2) ? (words+1) * WSIZE : words * WSIZE;

    if ((long)(bp = mem_sbrk(size)) == -1)
        return NULL;

    PUT(HDRP(bp), PACK(size, 0));
    PUT(FTRP(bp), PACK(size, 0));

    // HDRP(NEXT_BLKP(bp)) points to the new epilogue header
    PUT(HDRP(NEXT_BLKP(bp)), PACK(0, 1));

    return coalesce(bp);
}


static void *coalesce(void *bp)
{
    size_t prev_alloc = GET_ALLOC(FTRP(PREV_BLKP(bp)));
    size_t next_alloc = GET_ALLOC(HDRP(NEXT_BLKP(bp)));
    size_t size = GET_SIZE(HDRP(bp));

    if (prev_alloc && next_alloc) {
        return bp;
    } else if (prev_alloc && !next_alloc) {
        size += GET_SIZE(HDRP(NEXT_BLKP(bp)));
        PUT(HDRP(bp), PACK(size, 0));
        PUT(FTRP(bp), PACK(size, 0));
    } else if (!prev_alloc && next_alloc) {
        size += GET_SIZE(HDRP(PREV_BLKP(bp)));
        PUT(FTRP(bp), PACK(size, 0));
        PUT(HDRP(PREV_BLKP(bp)), PACK(size, 0));
        bp = PREV_BLKP(bp);
    } else {
        size += GET_SIZE(HDRP(PREV_BLKP(bp))) +
            GET_SIZE(FTRP(NEXT_BLKP(bp)));
        PUT(HDRP(PREV_BLKP(bp)), PACK(size, 0));
        PUT(FTRP(NEXT_BLKP(bp)), PACK(size, 0));
        bp = PREV_BLKP(bp);
    }
    return bp;
}

/*
 * malloc
 */
void *malloc (size_t size) {
    size_t asize;
    char *bp;
    size_t extendsize;
    if (size <= 0) return NULL;
    if (size <= DSIZE) {
        asize = 2*DSIZE;
    } else {
        asize = DSIZE * ((size + DSIZE + DSIZE - 1) / DSIZE);
    }

    if ((bp = find_fit(asize)) != NULL) {
        place(bp, asize);
        return bp;
    }

    extendsize = MAX(asize, CHUNKSIZE);

    if ((bp = extend_heap(extendsize / WSIZE)) == NULL) {
        return NULL;
    }
    place(bp, asize);
    return bp;
}

/*
 * allocate memory on the free block
 */
static void place(void *bp, size_t size)
{
    size_t total_block_size = GET_SIZE(HDRP(bp));
    PUT(HDRP(bp), PACK(size, 1));
    PUT(FTRP(bp), PACK(size, 1));
    // TODO: possible to create empty free blocks, which is useless
    if (total_block_size > size) {
        size_t rest_block_size = total_block_size - size;
        void *next_bp = NEXT_BLKP(bp);
        PUT(HDRP(next_bp), PACK(rest_block_size, 0));
        PUT(FTRP(next_bp), PACK(rest_block_size, 0));
    }
}

/*
 * find a block of memory with size >= "size"
 */
static void *find_fit(size_t size)
{
    char *bp;
    for_each_block(bp) {
        size_t alloc = GET_ALLOC(HDRP(bp));
        size_t size_of_bp = GET_SIZE(HDRP(bp));
        if (!alloc && size_of_bp >= size) return bp;
    }
    return NULL;
}

/*
 * free
 */
void free (void *ptr) {
    if(!ptr) return;
    size_t size = GET_SIZE(HDRP(ptr));
    PUT(HDRP(ptr), PACK(size, 0));
    PUT(FTRP(ptr), PACK(size, 0));
    coalesce(ptr);
}

/*
 * realloc - you may want to look at mm-naive.c
 */
void *realloc(void *oldptr, size_t size) {
    size_t oldsize;
    void *newptr;

    /* If size == 0 then this is just free, and we return NULL. */
    if(size == 0) {
        free(oldptr);
        return NULL;
    }

    /* If oldptr is NULL, then this is just malloc. */
    if(oldptr == NULL) {
        return malloc(size);
    }

    newptr = malloc(size);

    /* If realloc() fails the original block is left untouched  */
    if(!newptr) {
        return 0;
    }

    /* Copy the old data. */
    oldsize = GET_SIZE(HDRP(oldptr));
    if(size < oldsize) oldsize = size;
    memcpy(newptr, oldptr, oldsize);

    /* Free the old block. */
    free(oldptr);

    return newptr;
}

/*
 * calloc - you may want to look at mm-naive.c
 * This function is not tested by mdriver, but it is
 * needed to run the traces.
 */
void *calloc (size_t nmemb, size_t size) {
    size_t bytes = nmemb * size;
    void *newptr;

    newptr = malloc(bytes);
    memset(newptr, 0, bytes);
    return newptr;
}


/*
 * Return whether the pointer is in the heap.
 * May be useful for debugging.
 */
static int in_heap(const void *p) {
    return p <= mem_heap_hi() && p >= mem_heap_lo();
}

/*
 * Return whether the pointer is aligned.
 * May be useful for debugging.
 */
static int aligned(const void *p) {
    return (size_t)ALIGN(p) == (size_t)p;
}


/* Simple check */

#define err_report(lineno, msg)  \
    fprintf(stderr, "[CHECK FAIL] LINE: %d ; %s \n", (lineno), (msg)); \
    exit(-1);
    

#define CHECK_EQUAL(v1, v2, lineno, msg) if ((v1) != (v2)) {\
    err_report(lineno, msg); \
}

#define CHECK_TRUE(v, lineno, msg) if (!(v)) {\
    err_report(lineno, msg); \
}

#define CHECK_FALSE(v, lineno, msg) if (v) {\
    err_report(lineno, msg); \
}

#define CHECK_GREATER_EQUAL(v, cmp_v, lineno, msg) if (!((v) >= (cmp_v))) {\
  err_report(lineno, msg); \
}



static void check_block_consistency(const char *bp, int lineno)
{
    const char *header, *footer;
    header = HDRP(bp);
    footer = FTRP(bp);
    CHECK_EQUAL(GET_SIZE(header), GET_SIZE(footer), lineno, "check header/footer size");
    CHECK_EQUAL(GET_ALLOC(header), GET_ALLOC(footer), lineno, "check header/footer alloc");
    CHECK_GREATER_EQUAL(GET_SIZE(header), MIN_BLOCK_SIZE, lineno, "check minimum block size");
}

static void check_coalescing(const char *bp, int lineno)
{
    if (IS_FREE(bp)) {
        CHECK_EQUAL(GET_ALLOC(HDRP(NEXT_BLKP(bp))), 1, lineno, "next block is free");
        CHECK_EQUAL(GET_ALLOC(HDRP(PREV_BLKP(bp))), 1, lineno, "prev block is free");
    }
}

/*
 * mm_checkheap
 */
void mm_checkheap(int lineno) {
    char *bp;
    /* check prologue content */

    CHECK_EQUAL(GET(HDRP(heap_listp)), PACK(8,1), lineno, "check prologue header content");
    CHECK_EQUAL(GET(FTRP(heap_listp)), PACK(8,1), lineno, "check prologue footer content");


    /* check block consistency */

    CHECK_TRUE(aligned(heap_listp), lineno, "check prologue aligned");
    CHECK_TRUE(in_heap(heap_listp), lineno, "check prologue in heap");

    for_each_block(bp) {
        CHECK_TRUE(aligned(bp), lineno, "check block aligned");
        CHECK_TRUE(in_heap(bp), lineno, "check block in heap");
        check_block_consistency(bp, lineno);
        check_coalescing(bp, lineno);
    }

    /* after forEach Iteration, bp points to epilogue block */
    CHECK_TRUE(aligned(bp), lineno, "check epilogue aligned");
    CHECK_FALSE(in_heap(bp), lineno, "check epilogue in heap");
    CHECK_EQUAL(GET(HDRP(bp)), 1, lineno, "check epilogue header");
}
