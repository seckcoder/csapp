#include "util.h"
#include <string.h>
#include <ctype.h>

size_t match(const char *uri,
        size_t cur,
        const char *pattern)
{
    size_t tmp_cur = cur;
    int pattern_cur = 0;
    while (uri[cur] != '\0' && pattern[pattern_cur] != '\0' &&
            tolower(uri[cur]) == pattern[pattern_cur]) {
        cur += 1;
        pattern_cur += 1;
    }
    if (pattern[pattern_cur] == '\0') {
        // match
        return cur;
    } else {
        return tmp_cur;
    }
}


int contain(const char *chars, char c)
{
    size_t cur = 0;
    while (chars[cur] != '\0') {
        if (chars[cur] == c) {
            return 1;
        }
        cur += 1;
    }
    return 0;
}

size_t copy_until(const char *src, size_t cur, const char *terminators,
        char *dest)
{
    size_t dest_cur = 0;
    while(src[cur] != '\0' && !contain(terminators, src[cur])) {
        dest[dest_cur] = src[cur];
        cur += 1;
        dest_cur += 1;
    }
    dest[dest_cur] = '\0';
    return cur;
}

void tolowercstr(char *cstr)
{
    int i;
    for (i = 0; cstr[i] != '\0'; i+=1) {
        cstr[i] = tolower(cstr[i]);
    }
}

void parse_uri(const char *uri, char *host, char *port, char *dir)
{
    size_t cur = 0;
    cur = match(uri, cur, "http://");
    cur = match(uri, cur, "https://");
    cur = copy_until(uri, cur, "/:", host);

    if (uri[cur] == ':') {
        cur = copy_until(uri, cur+1, "/:", port);
    } else {
        strcpy(port, "80");
    }
    
    copy_until(uri, cur, "", dir);
    tolowercstr(host);
}
void parse_header(const char *line, char *name, char *value)
{
    size_t cur = 0;
    cur = copy_until(line, cur, ":", name);
    copy_until(line, cur+1, "\r\n", value);
}
