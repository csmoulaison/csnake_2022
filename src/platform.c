#include "platform.h"
#include "SDL.h"
#include "SDL_events.h"
#include "SDL_pixels.h"
#include "SDL_render.h"
#include "SDL_video.h"
#include <stdio.h>

void init_platform(struct Platform* platform) {
	SDL_Init(SDL_INIT_EVERYTHING);

	platform->win_w = 2560;
	platform->win_h = 1440; 

	platform->window = SDL_CreateWindow("cnake", SDL_WINDOWPOS_CENTERED, SDL_WINDOWPOS_CENTERED, platform->win_w, platform->win_h, SDL_WINDOW_FULLSCREEN);
	platform->renderer = SDL_CreateRenderer(platform->window, -1, SDL_RENDERER_PRESENTVSYNC);

	SDL_SetWindowMinimumSize(platform->window, platform->win_w, platform->win_h);
	SDL_RenderSetLogicalSize(platform->renderer, platform->win_w, platform->win_h);
	SDL_RenderSetIntegerScale(platform->renderer, 1);

	platform->texture = SDL_CreateTexture(platform->renderer, SDL_PIXELFORMAT_RGBA32, SDL_TEXTUREACCESS_STREAMING, platform->win_w, platform->win_h);

	platform->pixels = malloc(platform->win_w * platform->win_h * 4);
}

