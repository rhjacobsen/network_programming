#
# Makefile
#
CC=gcc
CFLAGS=-I.

all: src/tcp_server.c src/tcp_client.c
	$(CC) -o build/server src/tcp_server.c $(CFLAGS)
	$(CC) -o build/client src/tcp_client.c $(CFLAGS)
