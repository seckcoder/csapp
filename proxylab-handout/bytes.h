#ifndef __DBYTES_H__
#define __DBYTES_H__

#include <stdlib.h>

typedef struct Bytes {
    char *buf;
    size_t size; /* content size */
    size_t len; /* bytes length */
} Bytes;

#define bytes_length(str) ((str).len)
#define bytes_buf(str) ((str).buf)
#define bytes_size(str) ((str).size)
#define bytes_ref(str, i) (bytes_buf(str)[(i)])

void bytes_malloc(Bytes *pstr);

void bytes_free(Bytes *pstr);

void bytes_append(Bytes *pstr, const char *cstr);
void bytes_appendn(Bytes *pstr, const char *buf, size_t buf_len);

void bytes_cstr(Bytes str, char *cstr);

#endif
