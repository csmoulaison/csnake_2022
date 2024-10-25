#pragma once
#include <SDL2/SDL.h>
#include <stdbool.h>
#include <stdint.h>
#include "color.h"

struct Platform {
	SDL_Window* window;
	SDL_Renderer* renderer;
	SDL_Texture* texture;
	int win_w;
	int win_h;
	uint32_t *pixels;
};

void init_platform(struct Platform *platform);
