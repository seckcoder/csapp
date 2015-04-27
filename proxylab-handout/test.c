#include "util.h"
#include "dstring.h"
#include "csapp.h"

#include <stdio.h>
#include <string.h>

#define CHECK_STREQUAL(s1, s2) if (strcmp((s1), (s2))) { \
    fprintf(stderr, "%d [CHECK_STREQUAL] %s != %s\n", __LINE__, s1, s2); \
    exit(-1);\
}

#define CHECK_EQUAL(a, b) if (!((a) == (b))) {\
    fprintf(stderr, "%d [CHECK_EQUAL] failed", __LINE__); \
    fflush(stderr);\
    exit(-1);\
}

void test_dstring1()
{
    string str;
    string_malloc(&str);
    string_append(&str, "abc");
    CHECK_EQUAL(string_length(str), 3);
    string_free(&str);
}

void test_dstring2()
{
    string str;
    string_malloc(&str);
    char fake[2];
    fake[1] = '\0';
    for (char c = 'a'; c <= 'z'; c+=1) {
        for (int i = 0; i < 1024; i++) {
            fake[0] = c;
            string_append(&str, fake);
        }
    }
    CHECK_EQUAL(string_length(str), 26*1024);
    CHECK_EQUAL(string_size(str), 32*1024);
    CHECK_EQUAL(string_ref(str, string_length(str)),
            '\0');
    for (char c = 'a'; c <= 'z'; c+=1) {
        for (int i = 0; i < 1024; i++) {
            int idx = (c-'a');
            idx *= 1024;
            idx += i;
            CHECK_EQUAL(string_ref(str, idx), c);
        }
    }
    string_free(&str);
}

void test_parse_uri()
{
    char host[MAXLINE];
    char port[MAXLINE];
    char dir[MAXLINE];
    parse_uri("http://www.cmu.edu/hub/index.html",
            host,
            port,
            dir
            );
    CHECK_STREQUAL(host, "www.cmu.edu");
    CHECK_STREQUAL(port, "80");
    CHECK_STREQUAL(dir, "/hub/index.html");
    parse_uri("www.cmu.edu:8000/hub/index.html", host, port, dir);
    CHECK_STREQUAL(host, "www.cmu.edu");
    CHECK_STREQUAL(port, "8000");
    CHECK_STREQUAL(dir, "/hub/index.html");
}

int main()
{
    test_parse_uri();
    test_dstring1();
    test_dstring2();
    return 0;
}
