#include <stdio.h>
#include <stdbool.h>
#include <stdlib.h>
#include <time.h>
#include <SDL2/SDL.h>
#include "SDL_render.h"
#include "SDL_video.h"
#include "game.h"
#include "draw.h"

int main(int argc, char* argv[]) {
	struct Platform platform;
	init_platform(&platform);

	struct Input input;
	init_input(&input);

	struct Game game;
	init_game(&game);

	// See random number generator
	srand(time(NULL));
	// Set initial ticks for calculating delta_time
	Uint32 ticks_count = 0;

	while(!input.quit) {
		double delta_time = (SDL_GetTicks() - ticks_count) / 1000.0f;
		ticks_count = SDL_GetTicks();

		// Clamp delta_time to prevent gameplay issues occuring as a result of lag or
		// debugging with break points.
		if(delta_time > 0.05) {
			delta_time = 0.05;
		}

		poll_input(&input, &platform);
		update_game(&game, &input, &platform, delta_time);
		present_render(&platform);
	}

	SDL_DestroyWindow(platform.window);
	SDL_DestroyRenderer(platform.renderer);
	SDL_DestroyTexture(platform.texture);
	return 0;
}
