CC      = g++
FLAGS   = -g

all: exe

exe: funcs.o
	$(CC) $(FLAGS) funcs.o -o exe

funcs.o: funcs.cpp funcs.h
	$(CC) $(FLAGS) -c funcs.cpp -o funcs.o

clean:
	rm -f *.o exe

