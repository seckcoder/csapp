#include "util.h"
#include "dstring.h"
#include "csapp.h"

#include <stdio.h>
#include <string.h>

#define CHECK_STREQUAL(s1, s2) if (strcmp((s1), (s2))) { \
    fprintf(stderr, "[CHECK_STREQUAL] %s != %s\n", s1, s2); \
}

#define CHECK_EQUAL(a, b) if ((a) == (b)) {\
    fprintf(stderr, "[CHECK_EQUAL] failed"); \
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
    for (int i = 0; i < 1024; i++) {
        string_append(&str, "a");
    }
    string_append(&str, "b");
    CHECK_EQUAL(string_length(str), 1025);
    CHECK_EQUAL(string_size(str), 2048);
    CHECK_EQUAL(string_ref(str, string_length(str)),
            '\0');
    for (int i = 0; i < 1024; i++) {
        CHECK_EQUAL(string_ref(str, i), 'a');
    }
    CHECK_EQUAL(string_ref(str, string_length(str)-1), 'b');
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
