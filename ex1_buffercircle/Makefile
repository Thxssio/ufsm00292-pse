# Definição do compilador e flags de compilação
CC = gcc
CFLAGS = -I include -I src -Wall -Wextra -std=c99

# Diretórios
SRC_DIR = src
TEST_DIR = tests
INCLUDE_DIR = include

SRC_FILES = $(SRC_DIR)/bufferCircle.c
TEST_FILES = $(TEST_DIR)/test_bufferCircle.c
MINUNIT = $(SRC_DIR)/minunit.h
BUFFER_HEADER = $(INCLUDE_DIR)/bufferCircle.h

TEST_EXEC = $(TEST_DIR)/test_buffercircle

all: $(TEST_EXEC)

$(TEST_EXEC): $(SRC_FILES) $(TEST_FILES) $(MINUNIT) $(BUFFER_HEADER)
	$(CC) $(CFLAGS) -o $@ $(SRC_FILES) $(TEST_FILES)

test: $(TEST_EXEC)
	./$(TEST_EXEC)

clean:
	rm -f $(TEST_EXEC)
