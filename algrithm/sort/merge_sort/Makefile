.PHONY:clean all
CC=gcc
#CFLAGS=-Wall -save-temps -O1
CFLAGS=-Wall -g -save-temps -std=c11
BIN= mergesort  mergesort1 mergesort2
all:$(BIN)
%:%.c 
	$(CC) $(CFLAGS)   $< -o $@
	
clean:
	rm -f *.o $(BIN) *.s *.i
