#
# Makefile for Proxy Lab 
#
# You may modify is file any way you like (except for the handin
# rule). Autolab will execute the command "make" on your specific 
# Makefile to build your proxy from sources.
#
CC = gcc
CFLAGS = -g -Wall
LDFLAGS = -lpthread

all: proxy


%.o: %.c
	$(CC) $(CFLAGS) -c $<

H_FILES = util.h dstring.h csapp.h

OBJ_SRC = csapp.c dstring.c util.c

PROXY_SRC = $(OBJ_SRC) proxy.c

PROXY_OBJ = $(PROXY_SRC:%c=%o)


proxy: $(PROXY_OBJ) $(H_FILES)
	$(CC) $(LDFLAGS) $(PROXY_OBJ) -o $@

TEST_SRC = $(OBJ_SRC) test.c

TEST_OBJ = $(TEST_SRC:%c=%o)

test: $(TEST_OBJ) $(H_FILES)
	$(CC) $(LDFLAGS) $(TEST_OBJ) -o $@

# Creates a tarball in ../proxylab-handin.tar that you should then
# hand in to Autolab. DO NOT MODIFY THIS!
handin:
	(make clean; cd ..; tar cvf proxylab-handin.tar proxylab-handout --exclude tiny --exclude nop-server.py --exclude proxy --exclude driver.sh --exclude port-for-user.pl --exclude free-port.sh --exclude ".*")

clean:
	rm -f *~ *.o proxy core *.tar *.zip *.gzip *.bzip *.gz
