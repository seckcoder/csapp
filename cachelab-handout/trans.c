/* 
 * trans.c - Matrix transpose B = A^T
 *
 * Each transpose function must have a prototype of the form:
 * void trans(int M, int N, int A[N][M], int B[M][N]);
 *
 * A transpose function is evaluated by counting the number of misses
 * on a 1KB direct mapped cache with a block size of 32 bytes.
 */ 
#include <stdio.h>
#include "cachelab.h"
#include "contracts.h"

int is_transpose(int M, int N, int A[N][M], int B[M][N]);

/* 
 * transpose_submit - This is the solution transpose function that you
 *     will be graded on for Part B of the assignment. Do not change
 *     the description string "Transpose submission", as the driver
 *     searches for that string to identify the transpose function to
 *     be graded. The REQUIRES and ENSURES from 15-122 are included
 *     for your convenience. They can be removed if you like.
 */
char transpose_submit_desc[] = "Transpose submission";
void transpose_submit(int M, int N, int A[N][M], int B[M][N])
{

    int i,j,ii,jj;
    int reg0,reg1,reg2,reg3,reg4,reg5,reg6,reg7;
    REQUIRES(M > 0);
    REQUIRES(N > 0);

    if (M == 32 && N == 32) {
        for (jj = 0; jj < M; jj+=8) {
            for (i = 0; i < N; i+=1) {
                for (j = jj; j < jj+8; j+=1) {
                    if (i != j) B[j][i] = A[i][j];
                    else {
                        reg0 = 1; // diagonal value causes conflict
                        reg1 = A[i][j];
                    }
                }
                if (reg0) {
                    reg0 = 0;
                    B[i][i] = reg1;
                }
            }
        }
    } else if (M == 64 && N == 64) {
        // This can't get full score. No idea how to make it...
        for (jj = 0; jj < M; jj += 8) {
            for (ii = 0; ii < N; ii += 8) {
                for (j = jj; j < jj+8; j += 4) {
                    // transpose two rows and four columns
                    for (i = ii; i < ii + 8; i += 2) {
                        // trans two rows at once
                        //
                        // row 1
                        reg0 = A[i][j];
                        reg1 = A[i][j+1];
                        reg2 = A[i][j+2];
                        reg3 = A[i][j+3];

                        // row 2
                        reg4 = A[i+1][j];
                        reg5 = A[i+1][j+1];
                        reg6 = A[i+1][j+2];
                        reg7 = A[i+1][j+3];


                        // col 1 
                        B[j][i] = reg0;
                        B[j+1][i] = reg1;
                        B[j+2][i] = reg2;
                        B[j+3][i] = reg3;
                        // col 2
                        B[j][i+1] = reg4;
                        B[j+1][i+1] = reg5;
                        B[j+2][i+1] = reg6;
                        B[j+3][i+1] = reg7;
                    }
                }
            }
        }
    } else {
        // block size 32
        for (jj = 0; jj < M; jj+=21) {
            for (i = 0; i < N; i++) {
                for (j = jj; j < jj+21 && j < M; j+=1) {
                    B[j][i] = A[i][j];
                }
            }
        }
    }

    ENSURES(is_transpose(M, N, A, B));
}

/* 
 * You can define additional transpose functions below. We've defined
 * a simple one below to help you get started. 
 */ 

/* 
 * trans - A simple baseline transpose function, not optimized for the cache.
 */
char trans_desc[] = "Simple row-wise scan transpose";
void trans(int M, int N, int A[N][M], int B[M][N])
{
    int i, j, tmp;

    REQUIRES(M > 0);
    REQUIRES(N > 0);

    for (i = 0; i < N; i++) {
        for (j = 0; j < M; j++) {
            tmp = A[i][j];
            B[j][i] = tmp;
        }
    }    

    ENSURES(is_transpose(M, N, A, B));
}


/*
 * registerFunctions - This function registers your transpose
 *     functions with the driver.  At runtime, the driver will
 *     evaluate each of the registered functions and summarize their
 *     performance. This is a handy way to experiment with different
 *     transpose strategies.
 */
void registerFunctions()
{
    /* Register your solution function */
    registerTransFunction(transpose_submit, transpose_submit_desc); 

    /* Register any additional transpose functions */
    registerTransFunction(trans, trans_desc); 

    //registerTransFunction(trans_64_64, trans_desc_64_64); 
    //registerTransFunction(trans_61_67, trans_desc_61_67); 
}

/* 
 * is_transpose - This helper function checks if B is the transpose of
 *     A. You can check the correctness of your transpose by calling
 *     it before returning from the transpose function.
 */
int is_transpose(int M, int N, int A[N][M], int B[M][N])
{
    int i, j;

    for (i = 0; i < N; i++) {
        for (j = 0; j < M; ++j) {
            if (A[i][j] != B[j][i]) {
                return 0;
            }
        }
    }
    return 1;
}

