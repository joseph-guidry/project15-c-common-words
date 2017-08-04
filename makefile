#
#
# 
CC = gcc
CFLAGS = -Wall

all: intersect

intersect: intersect.c avlIntersect.o
	$(CC) $(CFLAGS) -o intersect intersect.c avlIntersect.o

avlIntersect.o: avlIntersect.c avlIntersect.h
	$(CC) -c -o avlIntersect.o avlIntersect.c

debug: intersect.c avl.o
	$(CC) $(CFLAGS) -g -o intersect intersect.c avlIntersect.o
clean:
	rm -f *.o intersect


