CC      = g++
FLAGS   = -g -std=c++11 '~/../../usr/local/bin/fltk-config --cxxflags --useimages'
CXXFLAGS += -I/usr/local/include
LDFLAGS += -L/usr/local/lib
LIBS = '~/../../usr/local/bin/fltk-config --ldflags' -lfltk -lftlk_images -ljpeg -llstdc++ -lXfixes -lXext -lpthread -ldl -lm -lX11

all: exe

exe: funcs.o
	$(CC) $(FLAGS) $(CXXFLAGS) $(LDFLAGS) funcs.o main.cpp -o exe $(LIBS)

funcs.o: funcs.cpp funcs.h
	$(CC) $(FLAGS) -c funcs.cpp -o funcs.o

clean:
	rm -f *.o exe

