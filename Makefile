CC = g++

main: main.o utilities.o scene2.o scene4.o scene8.o
	$(CC) -o output main.o utilities.o \
             scene2.o scene4.o scene8.o \
             -lGL -lGLU -lglut -lm


utilities.o: utilities.cpp utilities.h
	$(CC) -c utilities.cpp

main.o: main.cpp utilities.h scenes.h
	$(CC) -c main.cpp 

scene2.o: scene2.cpp utilities.h scenes.h
	$(CC) -c scene2.cpp

scene4.o: scene4.cpp utilities.h scenes.h
	$(CC) -c scene4.cpp
	
scene8.o: scene8.cpp utilities.h scenes.h
	$(CC) -c scene8.cpp
