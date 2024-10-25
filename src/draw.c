#include "draw.h"

void draw_pixel(struct Platform *platform, struct Color *color, int x, int y) {
	int index = x + y * platform->win_w;
	platform->pixels[index] = color->value;
}

void clear_screen(struct Platform *platform, struct Color *color) {
	int pixel_count = platform->win_w * platform->win_h;

	for(int i = 0; i < pixel_count; ++i) {
		platform->pixels[i] = color->value;
	}
}

void present_render(struct Platform *platform) {
	int pitch = platform->win_w * 4;

	SDL_LockTexture(platform->texture, NULL, (void**) &platform->pixels, &pitch);
	SDL_SetRenderDrawColor(platform->renderer, 0, 10, 0, 255);
	SDL_RenderClear(platform->renderer);
	SDL_UnlockTexture(platform->texture);

	SDL_RenderCopy(platform->renderer, platform->texture, NULL, NULL);
	SDL_RenderPresent(platform->renderer);
}
