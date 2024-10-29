CC = gcc
CFLAGS = -I include/pt-1.4 -I src -Wall -Wextra -std=c99

SRC = src/protocol.c
TEST = test/test_protocol.c

OBJ = $(SRC:.c=.o) $(TEST:.c=.o)

all: test

test: $(OBJ)
	$(CC) $(CFLAGS) -o test_protocol $(OBJ)
	./test_protocol

clean:
	rm -f src/*.o test/*.o test_protocol
