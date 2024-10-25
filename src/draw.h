#pragma once
#include "platform.h"

void draw_pixel(struct Platform *platform, struct Color *color, int x, int y);
void clear_screen(struct Platform *platform, struct Color *color);
void present_render(struct Platform *platform);
