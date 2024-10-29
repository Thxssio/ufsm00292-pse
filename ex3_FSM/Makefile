CC = gcc
CFLAGS = -I include -Wall -Wextra -std=c99
SRC = src/fsm.c
TEST = tests/test_fsm.c
OBJ = $(SRC:.c=.o) $(TEST:.c=.o)

all: test

test: $(OBJ)
	$(CC) $(CFLAGS) -o test_fsm $(OBJ)
	./test_fsm

clean:
	rm -f src/*.o tests/*.o test_fsm
