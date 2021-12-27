CC=gcc --std=c99 -g

all: test_queue

test_queue: test_queue.c queue.o dynarray.o
	$(CC) test_queue.c queue.o dynarray.o -o test_queue

dynarray.o: dynarray.c dynarray.h
	$(CC) -c dynarray.c

queue.o: queue.c queue.h
	$(CC) -c queue.c

clean:
	rm -f *.o test_stack test_queue test_queue_from_stacks palindrome
