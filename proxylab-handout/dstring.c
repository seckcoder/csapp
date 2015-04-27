#include "dstring.h"
#include <string.h>

#define DEFAULT_LENGTH 1024

void string_malloc(string *pstr)
{
    pstr->size = DEFAULT_LENGTH;
    pstr->cstr = (char *)malloc(pstr->size * sizeof(char));
    pstr->len = 0;
    pstr->cstr[0] = '\0';
}

void string_free(string *pstr)
{
    pstr->len = 0;
    pstr->size = 0;
    free(pstr->cstr);
}

/* ceil_divide: a divide by b, return ceil value
 * Assert a > b.
 */
inline static size_t ceil_divide(size_t a, size_t b)
{
    size_t m = 2;
    for (m = 2; m * b < a; m+=1) {}
    return m;
}

/* string_append : append cstr to the end of pstr.
 * Assert cstr and pstr is not overlapped.
 *
 * TODO: support overlapping
 */
void string_append(string *pstr, const char *cstr)
{
    size_t cstr_len = strlen(cstr);
    string_appendn(pstr, cstr, cstr_len);
}

void string_appendn(string *pstr, const char *cstr, size_t cstr_len)
{
    if (pstr->len + cstr_len + 1 <= pstr->size) {
        for (int i = 0; i < cstr_len; i++) {
            pstr->cstr[pstr->len+i] = cstr[i];
        }
        pstr->len += cstr_len;
    } else {
        size_t multipler = ceil_divide((cstr_len + pstr->len + 1),
                pstr->size);
        size_t new_size = multipler * pstr->size;
        char *new_str = (char *)malloc(new_size*sizeof(char));
        for (int i = 0; i < pstr->len; i++) {
            new_str[i] = pstr->cstr[i];
        }
        for (int i = 0; i < cstr_len; i++) {
            new_str[pstr->len+i] = cstr[i];
        }
        pstr->len += cstr_len;
        pstr->size = new_size;
        pstr->cstr = new_str;
    }
    pstr->cstr[pstr->len] ='\0';
}
