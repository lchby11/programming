.PHONY:clean all
CC=gcc
CFLAGS=-Wall -g
BIN= client_main server_main 
all:$(BIN)
%.o:%.c
	$(CC) $(CFLAGS) -c $< -o $@
clean:
	rm -f *.o $(BIN)

