#include <stdlib.h>
#include <stdio.h>
#include <string>
#include <vector>
#include <FL/Fl.H>
#include <FL/Fl_Window.H>
#include <FL/Fl_Box.H>

using namespace std;

int main(int argc, char **argv){
	Fl_Window *window = new Fl_Window(300,180);
	Fl_Box *box = new Fl_Box(20,40,260,100, "Hello,World!");
	box->box(FL_UP_BOX);
	box->labelsize(36);
	box->labelfont(FL_BOLD+FL_ITALIC);
	box->labeltype(FL_SHADOW_LABEL);
	window->end();
	window->show(argc, argv);
/*	bool running = FALSE;
	while(running){


	}*/
	return Fl::run();
}
