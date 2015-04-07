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
#include <limits.h>

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


#define ADDRESS_ORDER
#ifdef LIFO
  #define insert_free_block insert_free_block_lifo
#elif defined(FIFO)
  #define insert_free_block insert_free_block_fifo
#elif defined(ADDRESS_ORDER)
  #define insert_free_block insert_free_block_address_order
#else
  #define insert_free_block insert_free_block_lifo
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
#define CHUNKSIZE (1<<9)
#define MIN_FREE_BLOCK_SIZE (2*DSIZE)
#define MIN_BLOCK_SIZE (2*DSIZE)
#define MAX_BLOCK_SIZE INT_MAX /* TODO: better definition? */

/* rounds up to the nearest multiple of ALIGNMENT */
#define ALIGN(p) (((size_t)(p) + (ALIGNMENT-1)) & ~0x7)

#define PACK(size, alloc) ((size) | (alloc))

#define GET(p)  (*(unsigned int*)(p))
#define PUT(p, val) (*(unsigned int *)(p) = (val))

/* GET_SIZE return the whole size(including header/footer) of the block */
#define GET_SIZE(p) (GET(p) & ~0x7)
/* GET_USABLE_SIZE return the real size to store content(excluding header/footer)
 * */
// #define GET_USABLE_SIZE(p) (GET_SIZE(p)-DSIZE)
#define GET_ALLOC(p) (GET(p) & 0x1)
/* get offset of this ptr */
#define GET_OFFSET(p) ((char *)(p) - free_listp)

#define HDRP(bp) ((char *)(bp) - WSIZE)
#define FTRP(bp) ((char *)(bp) + GET_SIZE(HDRP(bp)) - DSIZE)
#define PRED(bp) (bp)
#define SUCC(bp) ((char *)(bp) + WSIZE)

#define NEXT_BLKP(bp) ((char *)(bp) + GET_SIZE(((char *)(bp) - WSIZE)))
#define PREV_BLKP(bp) ((char *)(bp) - GET_SIZE(((char *)(bp) - DSIZE)))
/*
 * Note PRED_BLKP/SUCC_BLKP may return the free list ptr.
 */
#define PRED_BLKP(bp) (free_listp + GET(PRED(bp)))
#define SUCC_BLKP(bp) (free_listp + GET(SUCC(bp)))

#define BEGIN_BLOCK NEXT_BLKP(heap_listp)
#define END_CLASS_PTR (free_listp + FREE_LIST_LEN * FREE_LIST_SENTINEL_SIZE)

/* bp points to epilogue block */
#define IS_EPILOGUE(bp) (GET(HDRP(bp)) == 1)
#define IS_FREE(bp) (GET_ALLOC(HDRP(bp)) == 0)

/*
 * for loops
 */

/* iterate through every block between epilogue and prologue block */
#define for_each_block(ptr) \
    for ((ptr) = BEGIN_BLOCK; !IS_EPILOGUE(ptr); (ptr)=NEXT_BLKP(ptr))
#define for_each_free_block(class_ptr, ptr) \
    for ((ptr) = SUCC_BLKP(class_ptr); (ptr) != (class_ptr); (ptr) = SUCC_BLKP(ptr))
/* enumerate free list in range */
#define for_range_free_list(begin_ptr, end_ptr, ptr) \
    for ((ptr) = (begin_ptr); (ptr) != (end_ptr);\
            (ptr) = (char*)(ptr) + FREE_LIST_SENTINEL_SIZE)
/* enumerate all free lists */
#define for_each_free_list(ptr) \
    for_range_free_list(free_listp, END_CLASS_PTR, (ptr))

static char *heap_listp;  // point to the first block
static char *free_listp;  // pointer to free list
static void *extend_heap(size_t words);
static void *coalesce(void *bp);
static void place(void *bp, size_t size);
static void *find_fit(size_t size);
static void *split_block(void *bp, size_t pack_v1, size_t pack_v2);


/* segregated free list */
#define FREE_LIST_LEN 10
/* sentinel size(PREV | SUCC) */
#define FREE_LIST_SENTINEL_SIZE DSIZE
// get the ith free list
#define FREE_LIST_REF(k) (free_listp + (k) * FREE_LIST_SENTINEL_SIZE)
#define FREE_LIST_IDX(p) (((char*)p - free_listp) / FREE_LIST_SENTINEL_SIZE)
/* get free list class ptr
 * size: size of the free block.
 * assert (size >= MIN_BLOCK_SIZE)
 * */
inline static void *get_class_ptr(size_t size)
{
    /*
     * size is a multiple of 8. size = k * 8. 
     * We have k >= 2.
     * {2}, {3-4}, ..., {257, 512}, {513, +inf}
     * 2^1, 2^2, 2^3, ...., 2^9, ...
     */

    int offset;
    // TODO: remove this assert
    // assert(size % 8 == 0);
    // assert(size/8 >= 2);
    if (size > 4096) {
        offset = FREE_LIST_LEN - 1;
    } else {
        // k >= 2
        size_t k = size >> 3;
        offset = 31 - __builtin_clz(k-1);
    }
    return FREE_LIST_REF(offset);
}


/*
 * insert free block bp after prev_bp
 */
inline static void insert_free_block_after(void *prev_bp, void *bp)
{
    void *succ_bp = SUCC_BLKP(prev_bp);
    PUT(SUCC(bp), GET(SUCC(prev_bp)));
    PUT(PRED(bp), GET_OFFSET(prev_bp));
    PUT(SUCC(prev_bp), GET_OFFSET(bp));
    PUT(PRED(succ_bp), GET_OFFSET(bp));
}

/*
 * first in first out
 */
inline static void insert_free_block_fifo(void *bp)
{
    // usable block size should exlude the header/footer size
    size_t size = GET_SIZE(HDRP(bp));
    void *class_ptr = get_class_ptr(size);
    void *tail_bp = PRED_BLKP(class_ptr);

    insert_free_block_after(tail_bp, bp);
    /*
    PUT(SUCC(bp), GET(SUCC(tail_bp)));
    PUT(PRED(bp), GET_OFFSET(tail_bp));
    PUT(SUCC(tail_bp), GET_OFFSET(bp));
    PUT(PRED(class_ptr), GET_OFFSET(bp));
    */
}




/*
 * insert free block in address order
 */
inline static void insert_free_block_address_order(void *bp)
{
    size_t size = GET_SIZE(HDRP(bp));
    void *class_ptr = get_class_ptr(size);
    void *cur_bp;
    for_each_free_block(class_ptr, cur_bp) {
        if (cur_bp > bp) {
            break;
        }
    }
    insert_free_block_after(PRED_BLKP(cur_bp), bp);
}

/*
 * last in first out
 */
inline static void insert_free_block_lifo(void *bp)
{
  size_t size = GET_SIZE(HDRP(bp));
  void *class_ptr = get_class_ptr(size);
  insert_free_block_after(class_ptr, bp);
}

/*
 * remove free block from free list
 * assert bp is not a class_ptr
 */
inline static void remove_free_block(void *bp)
{
    void *pred_bp = PRED_BLKP(bp),
         *succ_bp = SUCC_BLKP(bp);
    PUT(SUCC(pred_bp), GET_OFFSET(succ_bp));
    PUT(PRED(succ_bp), GET_OFFSET(pred_bp));
}



/*
 * Initialize: return -1 on error, 0 on success.
 */
int mm_init(void) {
    int i;
    /* This part is tricky.
     * FREE_LIST_LEN is odd number.
     */
    if ((free_listp = mem_sbrk(FREE_LIST_LEN*FREE_LIST_SENTINEL_SIZE)) == (void*)-1) {
        return -1;
    }

    /*
     * odd + 3 is even
     */
    if ((heap_listp = mem_sbrk(4*WSIZE)) == (void*) - 1) {
        return -1;
    }

    // initialize free list
    for (i = 0; i < FREE_LIST_LEN; i++) {
        PUT(PRED(FREE_LIST_REF(i)), i * FREE_LIST_SENTINEL_SIZE);
        PUT(SUCC(FREE_LIST_REF(i)), i * FREE_LIST_SENTINEL_SIZE);
    }


    // initialize prologue
    PUT(heap_listp, 0);
    PUT(heap_listp + (1*WSIZE), PACK(DSIZE, 1));
    PUT(heap_listp + (2*WSIZE), PACK(DSIZE, 1));
    PUT(heap_listp + (3*WSIZE), PACK(0, 1));
    heap_listp += (2*WSIZE);

    if (extend_heap(CHUNKSIZE/WSIZE) == NULL) {
        return -1;
    }
    mm_checkheap(__LINE__);
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

    bp = coalesce(bp);
    // printf("extend heap, %u\n", GET_SIZE(HDRP(bp)));
    return bp;
}


/*
 * after coalesce, we append the new free block
 */
static void *coalesce(void *bp)
{
    void *prev_bp = PREV_BLKP(bp);
    size_t prev_alloc = GET_ALLOC(FTRP(prev_bp));
    void *next_bp = NEXT_BLKP(bp);
    size_t next_alloc = GET_ALLOC(HDRP(next_bp));
    size_t size = GET_SIZE(HDRP(bp));

    if (prev_alloc && next_alloc) {
        // pass
    } else if (prev_alloc && !next_alloc) {
        size += GET_SIZE(HDRP(NEXT_BLKP(bp)));
        remove_free_block(next_bp);
        PUT(HDRP(bp), PACK(size, 0));
        PUT(FTRP(bp), PACK(size, 0));
    } else if (!prev_alloc && next_alloc) {
        size += GET_SIZE(HDRP(PREV_BLKP(bp)));
        remove_free_block(prev_bp);
        PUT(FTRP(bp), PACK(size, 0));
        PUT(HDRP(PREV_BLKP(bp)), PACK(size, 0));
        bp = PREV_BLKP(bp);
    } else {
        size += GET_SIZE(HDRP(PREV_BLKP(bp))) +
            GET_SIZE(FTRP(NEXT_BLKP(bp)));
        remove_free_block(prev_bp);
        remove_free_block(next_bp);
        PUT(HDRP(PREV_BLKP(bp)), PACK(size, 0));
        PUT(FTRP(NEXT_BLKP(bp)), PACK(size, 0));
        bp = PREV_BLKP(bp);
    }
    insert_free_block(bp);
    return bp;
}

/*
 * malloc
 */
void *malloc (size_t size)
{
    // printf("malloc: %zu\n",size);
    size_t asize;
    char *bp;
    size_t extendsize;
    if (size <= 0) return NULL;
    if (size <= DSIZE) {
        asize = MIN_BLOCK_SIZE;
    } else {
        asize = DSIZE * ((size + DSIZE + DSIZE - 1) / DSIZE);
    }

    if ((bp = find_fit(asize)) != NULL) {
        place(bp, asize);
        return bp;
    }

    // printf("can't find fit\n");

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
    size_t total_size = GET_SIZE(HDRP(bp));
    remove_free_block(bp);
    if (total_size >= size + MIN_FREE_BLOCK_SIZE) {
        /*
         * split the blocks into an allocated block
         * and a free block
         */
        void *free_bp = split_block(
                bp,
                PACK(size, 1), // allocated block
                PACK(total_size - size, 0) // free block
                );
        insert_free_block(free_bp);
    } else {
        PUT(HDRP(bp), PACK(total_size, 1));
        PUT(FTRP(bp), PACK(total_size, 1));
    }
}

/* split the block into two blocks
 * assert the two blocks are not both free.
 * assert GET_SIZE(pack_v1) + GET_SIZE(pack_v2) = GET_SIZE(bp)
 * return the ptr of newly created block
 */
static void *split_block(
        void *bp,
        size_t pack_v1,
        size_t pack_v2) {
    // TODO: check pack_v1 and pack_v2
    void *next_bp;
    PUT(HDRP(bp), pack_v1);
    PUT(FTRP(bp), pack_v1);
    next_bp = NEXT_BLKP(bp);
    PUT(HDRP(next_bp), pack_v2);
    PUT(FTRP(next_bp), pack_v2);
    return next_bp;
}

/*
 * find a block of memory with size >= "size"
 */
static void *find_fit(size_t size)
{
    // first fit
    void *begin_class_ptr = get_class_ptr(size);
    void *class_ptr;
    void *bp;
    for_range_free_list(begin_class_ptr, END_CLASS_PTR, class_ptr) {
        for_each_free_block(class_ptr, bp) {
            size_t alloc = GET_ALLOC(HDRP(bp));
            size_t size_of_bp = GET_SIZE(HDRP(bp));
            if (!alloc && size_of_bp >= size) return bp;
        }
    }
    return NULL;
}

/*
 * free
 */
void free (void *ptr)
{
    if(!ptr) return;
    size_t size = GET_SIZE(HDRP(ptr));
    PUT(HDRP(ptr), PACK(size, 0));
    PUT(FTRP(ptr), PACK(size, 0));
    coalesce(ptr);
}

/*
 * realloc - you may want to look at mm-naive.c
 * highly optimized version of realloc. may contain bugs.
 */
void *realloc1(void *oldptr, size_t size)
{
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

    oldsize = GET_SIZE(HDRP(oldptr));

    /*
     * Basic idea:
     * 1. if the size we want is smaller, then we don't need reallocate.
     *    But we need to split the old block if necessary
     * 2. check whether there is a free block next to the old block.
     *    If the free block is large enough, we directly use it. Split
     *    the free block if necessary.
     * 3. Otherwise, we allocate a new block
     */

    if (size <= oldsize) {
        if (size + MIN_FREE_BLOCK_SIZE <= oldsize) {
            // split block
            void *free_block =
                split_block(oldptr,
                        PACK(size, 1),
                        PACK(oldsize-size, 0));
            free_block = coalesce(free_block);
        } else {
            return oldptr;
        }
    } else {
        // check whether the block next to current block is free and the size
        // is large enough
        void *next_block = NEXT_BLKP(oldptr);
        size_t next_block_size = GET_SIZE(HDRP(next_block));
        if (IS_FREE(next_block) && next_block_size + oldsize >= size) {
            remove_free_block(next_block);
            if (next_block_size + oldsize >= size + MIN_FREE_BLOCK_SIZE) {
                // split the next block
                size_t second_block_size = next_block_size + oldsize - size;
                size_t first_block_size = next_block_size - second_block_size;
                void *free_block =
                    split_block(next_block,
                            PACK(first_block_size, 1),
                            PACK(second_block_size, 0));
                insert_free_block(free_block);
                // change the size of the new block
                PUT(HDRP(oldptr), PACK(size, 1));
                PUT(FTRP(oldptr), PACK(size, 1));
            } else {
                size = oldsize + next_block_size;
                // directly use the next free block
                PUT(HDRP(oldptr), PACK(size, 1));
                PUT(FTRP(oldptr), PACK(size, 1));
            }
            return oldptr;
        } else {
            // allocate a new block
            newptr = malloc(size);
            /* If realloc() fails the original block is left untouched  */
            if (!newptr) {
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
    }
    return NULL; // make compiler happy
}

/*
 * realloc - Change the size of the block by mallocing a new block,
 *      copying its data, and freeing the old block.  I'm too lazy
 *      to do better.
 */
void *realloc(void *oldptr, size_t size)
{
  size_t oldsize;
  void *newptr;

  /* If size == 0 then this is just free, and we return NULL. */
  if(size == 0) {
    free(oldptr);
    return 0;
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
void *calloc (size_t nmemb, size_t size)
{
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

#define CHECK_LESS_EQUAL(v, cmp_v, lineno, msg) if (!((v) <= (cmp_v))) {\
    err_report(lineno, msg); \
}

#define CHECK_LESS(v, cmp_v, lineno, msg) if (!((v) < cmp_v)) {\
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
    if (IS_FREE(bp)) {
        CHECK_GREATER_EQUAL(GET_SIZE(header), MIN_FREE_BLOCK_SIZE, lineno,
                "check minimum free block size");
    }
}

static void check_coalescing(const char *bp, int lineno)
{
    if (IS_FREE(bp)) {
        CHECK_EQUAL(GET_ALLOC(HDRP(NEXT_BLKP(bp))), 1, lineno, "next block is free");
        CHECK_EQUAL(GET_ALLOC(HDRP(PREV_BLKP(bp))), 1, lineno, "prev block is free");
    }
}


/*
 * return the size for this class
 * This function is for debugging usage.
 */
static void get_class_size_range(void *class_ptr, size_t *pmin_size, size_t *pmax_size)
{
    size_t ref_offset = ((char *)class_ptr - (char *)free_listp) / FREE_LIST_SENTINEL_SIZE;
    if (ref_offset == FREE_LIST_LEN - 1) {
        *pmin_size = 4097;
        *pmax_size = MAX_BLOCK_SIZE;
    } else if (ref_offset == 0) {
        *pmin_size = *pmax_size = MIN_BLOCK_SIZE;
    } else {
        *pmin_size = ((1<<ref_offset)+1) * DSIZE;
        *pmax_size = (1<<(1+ref_offset)) * DSIZE;
    }
}

/* test code */
#if 0
static void test_class_ptr()
{
    for (int i = 0; i < FREE_LIST_LEN; i++) {
        void *class_ptr = FREE_LIST_REF(i);
        size_t min_size, max_size;
        get_class_size_range(class_ptr, &min_size, &max_size);
        printf("%zu %zu\n", min_size, max_size);
    }

    for (size_t i = MIN_BLOCK_SIZE; i <= 4096 + DSIZE; i+=DSIZE) {
        void *class_ptr = get_class_ptr(i);
        int offset = ((char *)class_ptr - free_listp) / FREE_LIST_SENTINEL_SIZE;
        size_t min_size, max_size;
        get_class_size_range(FREE_LIST_REF(offset), &min_size, &max_size);
        CHECK_LESS_EQUAL(i, max_size, __LINE__, "max size");
        CHECK_GREATER_EQUAL(i, min_size, __LINE__, "min_size");
    }
}
#endif

/*
 * mm_checkheap
 */
void mm_checkheap(int lineno)
{
    char *bp, *class_ptr;
    size_t free_block_count_in_free_list;
    size_t free_block_count;
    /* free list block size range for each class*/
    size_t min_class_size;
    size_t max_class_size;
    /* check prologue content */

    CHECK_EQUAL(GET(HDRP(heap_listp)), PACK(8,1), lineno, "check prologue header content");
    CHECK_EQUAL(GET(FTRP(heap_listp)), PACK(8,1), lineno, "check prologue footer content");


    /* check block consistency */

    CHECK_TRUE(aligned(heap_listp), lineno, "check prologue aligned");
    CHECK_TRUE(in_heap(heap_listp), lineno, "check prologue in heap");

    free_block_count = 0;
    for_each_block(bp) {
        CHECK_TRUE(aligned(bp), lineno, "check block aligned");
        CHECK_TRUE(in_heap(bp), lineno, "check block in heap");
        check_block_consistency(bp, lineno);
        check_coalescing(bp, lineno);
        if (IS_FREE(bp)) free_block_count += 1;
    }

    /* after forEach Iteration, bp points to epilogue block */
    CHECK_TRUE(aligned(bp), lineno, "check epilogue aligned");
    CHECK_FALSE(in_heap(bp), lineno, "check epilogue in heap");
    CHECK_EQUAL(GET(HDRP(bp)), 1, lineno, "check epilogue header");


    /* check free list */
    
    free_block_count_in_free_list = 0;
    for_each_free_list(class_ptr) {
        get_class_size_range(class_ptr, &min_class_size, &max_class_size);
        for_each_free_block(class_ptr, bp) {
            free_block_count_in_free_list += 1;
            CHECK_EQUAL(SUCC_BLKP(PRED_BLKP(bp)),
                    bp,
                    lineno,
                    "A's previous's next points to A");
            CHECK_EQUAL(PRED_BLKP(SUCC_BLKP(bp)),
                    bp,
                    lineno,
                    "A's next's previous points back to A");
            CHECK_TRUE(IS_FREE(bp), lineno, "free blocks should contain\
                    only free pointers");
            CHECK_TRUE(in_heap(bp), lineno, "free blocks in heap");
            // printf("%d %zu %zu %zu\n", (int)FREE_LIST_IDX(class_ptr), (size_t)GET_SIZE(HDRP(bp)), min_class_size, max_class_size);
            CHECK_LESS_EQUAL(GET_SIZE(HDRP(bp)), max_class_size, lineno,
                    "free block size in class range(max size)");
            CHECK_GREATER_EQUAL(GET_SIZE(HDRP(bp)), min_class_size, lineno,
                    "free block size in class range(min size)");

            // if blocks are inserted in address order, check address order
            CHECK_LESS(PRED_BLKP(bp), bp, lineno,
                    "address order for each free list");
        }
    }

    CHECK_EQUAL(free_block_count, free_block_count_in_free_list, lineno, "free block count consistency");
}
