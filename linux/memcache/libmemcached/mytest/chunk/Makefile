
.PHONY:clean all
CC=gcc
CFLAGS=-Wall -g
VPATH=../../
INCLUDE = -I../..

#./libmemcached/.libs/libmemcached.so
LIB = -L../../libmemcached/.libs -lmemcached


BIN=fill_chunk
all:$(BIN)
%:%.c
	$(CC) $(CFLAGS)  $< $(LIB) $(INCLUDE) -o $@
clean:
	rm -f *.o $(BIN)


