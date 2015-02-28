#include <stdio.h>


void Gets(char *s) {
}

int getbuf() {
  char buf[32];
  Gets(buf);
  return 1;
}

int main() {
  getbuf();
  return 0;
}
