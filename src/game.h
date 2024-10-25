#pragma once
#include <stdbool.h>
#include <stdlib.h>
#include "color.h"
#include "input.h"
#include "platform.h"

#define ROWS 12
#define COLUMNS 12
#define STEP_LENGTH 0.15

struct Coordinate {
	int x;
	int y;
};

enum GameState {
	GAME_INTERSTITIAL,
	GAME_RUNNING
};

struct BoardOrientation {
	int tile_gap;
	int tile_size;
	int left_edge;
	int top_edge;
};

struct Game {
	enum GameState state; 
	struct Color tiles[ROWS][COLUMNS];
	struct Coordinate food;
	double time_to_next_step;

	struct Coordinate snake[ROWS * COLUMNS];
	int snake_length;

	struct Coordinate direction;

	double step_length;
	struct Input previous_input;
	struct Coordinate next_move;
	struct Coordinate countdown_coordinate;
	struct BoardOrientation orientation;
};

void init_game(struct Game *game);
void update_game(struct Game* game, struct Input *input, struct Platform *platform, double delta_time);
void update_interstitial_state(struct Game *game, struct Platform *platform, double delta_time);
void update_running_state(struct Game *game, struct Input *input, struct Platform *platform, double delta_time);
void step(struct Game *game);

void draw_cell(struct Platform *platform, struct BoardOrientation *orientation, struct Color *color, int x, int y);
void draw_background_and_tiles(struct Platform *platform, struct BoardOrientation *orientation);
void move_food(struct Game *game);
