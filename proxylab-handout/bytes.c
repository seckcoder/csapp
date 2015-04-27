#include "bytes.h"
#include <string.h>

#define DEFAULT_LENGTH 1024

void bytes_malloc(Bytes *pstr)
{
    pstr->size = DEFAULT_LENGTH;
    pstr->buf = (char *)malloc(pstr->size * sizeof(char));
    pstr->len = 0;
}

void bytes_free(Bytes *pstr)
{
    pstr->len = 0;
    pstr->size = 0;
    free(pstr->buf);
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

/* bytes_append : append cstr to the end of pstr.
 * Assert cstr and pstr is not overlapped.
 *
 * TODO: support overlapping
 */
void bytes_append(Bytes *pstr, const char *cstr)
{
    size_t cstr_len = strlen(cstr);
    bytes_appendn(pstr, cstr, cstr_len);
}

void bytes_appendn(Bytes *pstr, const char *buf, size_t buf_len)
{
    if (pstr->len + buf_len + 1 <= pstr->size) {
        int i;
        for (i = 0; i < buf_len; i++) {
            pstr->buf[pstr->len+i] = buf[i];
        }
        pstr->len += buf_len;
    } else {
        size_t multipler = ceil_divide((buf_len + pstr->len + 1),
                pstr->size);
        size_t new_size = multipler * pstr->size;
        char *new_buf = (char *)malloc(new_size*sizeof(char));
        int i;
        for (i = 0; i < pstr->len; i++) {
            new_buf[i] = pstr->buf[i];
        }
        for (i = 0; i < buf_len; i++) {
            new_buf[pstr->len+i] = buf[i];
        }
        pstr->len += buf_len;
        pstr->size = new_size;
        pstr->buf = new_buf;
    }
}

/* return bytes as a cstr */
void bytes_cstr(Bytes str, char *cstr)
{
    for (int i = 0; i < str.len; i++) {
        cstr[i] = str.buf[i];
    }
    cstr[str.len] = '\0';
}
