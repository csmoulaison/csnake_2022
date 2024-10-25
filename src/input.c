#include "input.h"

void init_input(struct Input* input) {
	input->w = false;
	input->a = false;
	input->s = false;
	input->d = false;
	input->quit = false;
}

void poll_input(struct Input* input, struct Platform* platform) {
	input->w = false;
	input->a = false;
	input->s = false;
	input->d = false;

	SDL_Event event;
	while(SDL_PollEvent(&event) != 0) {
		switch(event.type) {
		case SDL_QUIT:
			input->quit = true;
			break;		
		case SDL_KEYDOWN:
			switch(event.key.keysym.sym) {
				case SDLK_w:
					input->w = true;
					break;
				case SDLK_a:
					input->a = true;
					break;
				case SDLK_s:
					input->s = true;
					break;
				case SDLK_d:
					input->d = true;
					break;
				case SDLK_ESCAPE:
					input->quit = true;
					break;
				default:
					break;
			}
			break;
		default:
			break;
		}
	}
}
