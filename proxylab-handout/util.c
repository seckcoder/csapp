#include "util.h"
#include <string.h>
#include <ctype.h>


/* match  -- match the string with the pattern. The match
 * is started from `cur`. If we can't find the pattern
 * in the string, we simply ignore the pattern.
 *
 * Return: the index of the next character in string that's not
 * a part of the pattern
 */
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
        // the string matches the pattern.
        return cur;
    } else {
        // string doesn't match the pattern. return old `cur`
        return tmp_cur;
    }
}


/* contain  -- whether c is in the chars */
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

/* copy_until  -- copy src(starting from `cur`) to the dest until
 * one of chars in `terminators` or '\0' is encountered
 * */
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

/* tolowercstr  -- convert the string to lower case cstr */
static void tolowercstr(char *cstr)
{
    int i;
    for (i = 0; cstr[i] != '\0'; i+=1) {
        cstr[i] = tolower(cstr[i]);
    }
}

/* parse_uri  -- parse the uri into host:port/dir */
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

/* parse_header  -- parse the header into (name,value) pair */
void parse_header(const char *line, char *name, char *value)
{
    size_t cur = 0;
    cur = copy_until(line, cur, ":", name);
    copy_until(line, cur+1, "\r\n", value);
}
