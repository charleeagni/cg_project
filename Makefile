CC = gcc

main: main.o utilities.o scene2.o
	$(CC) -o output main.o utilities.o scene2.o -lGL -lGLU -lglut -lm


utilities.o: utilities.c utilities.h
	$(CC) -c utilities.c

main.o: main.c utilities.h scenes.h
	$(CC) -c main.c 

scene2.o: scene2.c utilities.h scenes.h
	$(CC) -c scene2.c
