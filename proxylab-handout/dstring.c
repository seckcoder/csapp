#include "dstring.h"
#include <math.h>
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
    return (size_t)(ceil((float)a / (float) b));
}

/* string_append : append cstr to the end of pstr.
 * Assert cstr and pstr is not overlapped.
 *
 * TODO: support overlapping
 */
void string_append(string *pstr, const char *cstr)
{
    size_t cstr_len = strlen(cstr);
    if (pstr->len + cstr_len + 1 <= pstr->size) {
        strcpy(&pstr->cstr[pstr->len], cstr);
        pstr->len += cstr_len;
    } else {
        size_t multiplier = ceil_divide((cstr_len + pstr->len + 1) , pstr->size);
        size_t new_size = multiplier * pstr->size;
        char *new_str = (char *)malloc(new_size*sizeof(char));
        strcpy(new_str, pstr->cstr);
        strcpy(&new_str[pstr->len], cstr);
        pstr->cstr = new_str;
        pstr->len += cstr_len;
        pstr->size = new_size;
    }
}
