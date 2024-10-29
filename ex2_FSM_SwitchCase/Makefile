CC = gcc
CFLAGS = -I include -I src -Wall -Wextra -std=c99

SRC_DIR = src
TEST_DIR = tests
INCLUDE_DIR = include

SRC_FILES = $(SRC_DIR)/fsm.c
TEST_FILES = $(TEST_DIR)/test_fsm.c
MINUNIT = $(SRC_DIR)/minunit.h
BUFFER_HEADER = $(INCLUDE_DIR)/fsm.h

TEST_EXEC = $(TEST_DIR)/test_fsm

all: $(TEST_EXEC)

$(TEST_EXEC): $(SRC_FILES) $(TEST_FILES) $(MINUNIT) $(BUFFER_HEADER)
	$(CC) $(CFLAGS) -o $@ $(SRC_FILES) $(TEST_FILES)

test: $(TEST_EXEC)
	./$(TEST_EXEC)

clean:
	rm -f $(TEST_EXEC)
