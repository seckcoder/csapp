#ifndef __DSTRING_H__
#define __DSTRING_H__

#include <stdlib.h>

typedef struct string {
    char *cstr;
    size_t size; /* content size */
    size_t len; /* string length */
} string;

#define string_length(str) ((str).len)
#define string_cstr(str) ((str).cstr)
#define string_size(str) ((str).size)
#define string_ref(str, i) (string_cstr(str)[(i)])

void string_malloc(string *pstr);

void string_free(string *pstr);

void string_append(string *pstr, const char *cstr);
void string_appendn(string *pstr, const char *cstr, size_t cstr_len);

#endif
