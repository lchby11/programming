.PHONY:clean all
CC=gcc
CFLAGS=-Wall -g
BIN=01alarm 02reentrant
all:$(BIN)
%.o:%.c
	$(CC) $(CFLAGS) -c $< -o $@
clean:
	rm -f *.o $(BIN)

