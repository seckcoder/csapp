#ifndef __UTIL_H__
#define __UTIL_H__

#include <stdlib.h>

/* parse utilities */

size_t match(const char *uri,
        size_t cur,
        const char *pattern);

int contain(const char *chars, char c);

size_t copy_until(const char *src, size_t cur, const char *terminators,
        char *dest);

void parse_uri(const char *uri, char *host, char *port, char *dir);

void parse_header(const char *line, char *name, char *value);


#endif
