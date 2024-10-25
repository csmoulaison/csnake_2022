#include "game.h"
#include "draw.h"

void init_game(struct Game *game) {
	game->state = GAME_INTERSTITIAL;
	struct Coordinate inter_coord = {0, 0};
	game->countdown_coordinate = inter_coord;

	// TODO: Randomize snake position and direction
	struct Coordinate snake_head = {
		COLUMNS / 2,
		ROWS / 2
	};
	game->snake[0] = snake_head;
	game->snake[1] = snake_head;
	game->snake[1].x -= 1;
	game->snake[2] = snake_head;
	game->snake[2].x -= 2;
	game->next_move = (struct Coordinate){1, 0};
	// END: randomize snake position and direction

	game->snake_length = 2;
	game->direction = game->next_move;
	game->time_to_next_step = game->step_length;
	
	move_food(game);
}

void update_game(struct Game *game, struct Input *input, struct Platform *platform, double delta_time) {
	game->orientation.tile_gap = 8; 
	game->orientation.tile_size = (double)platform->win_h / ROWS - game->orientation.tile_gap - 4;
	game->orientation.left_edge = ((double)platform->win_w / 2) - (((double)COLUMNS / 2) * game->orientation.tile_size) - (((double)COLUMNS / 2) * game->orientation.tile_gap);
	game->orientation.top_edge = ((double)platform->win_h / 2) - (((double)ROWS / 2) * game->orientation.tile_size) - (((double)ROWS / 2) * game->orientation.tile_gap);

	if(game->state == GAME_RUNNING) {
		update_running_state(game, input, platform, delta_time);
	} else {
		update_interstitial_state(game, platform, delta_time);
	}
}

// This function is responsible only for drawing the "loading" interstitial screen
// shown at the start of each game.
void update_interstitial_state(struct Game *game, struct Platform *platform, double delta_time) {
	game->time_to_next_step -= delta_time;
	if(game->time_to_next_step <= 0) {
		game->time_to_next_step = 0.00001;

		if(game->countdown_coordinate.x + 1 >= COLUMNS) {
			game->countdown_coordinate.x = 0;
			game->countdown_coordinate.y++;

			if(game->countdown_coordinate.y >= ROWS) {
				game->state = GAME_RUNNING;
			}
		} else {
			game->countdown_coordinate.x++;
		}
	}

	draw_background_and_tiles(platform, &game->orientation);

	// Draw countdown tiles
	int tile_brightness = 225;
	int tile_index_offset = 0;
	while(tile_brightness > 50) {
		tile_brightness -= 25;

		if(tile_brightness < 50) {
			tile_brightness = 50;
		}

		struct Coordinate tile_coord = game->countdown_coordinate;

		int tile_index_walkback = 0;
		while(tile_index_walkback < tile_index_offset) {
			tile_index_walkback++;

			if(tile_coord.x - 1 < 0) {
				tile_coord.x = COLUMNS - 1;
				tile_coord.y--;
			} else {
				tile_coord.x--;
			}
		}

		if(tile_coord.y >= 0 && tile_coord.y < ROWS) {
			struct Color color = {50, tile_brightness, tile_brightness, 255};
			draw_cell(platform, &game->orientation, &color, tile_coord.x, tile_coord.y);
		}

		tile_index_offset++;
	}
}

void update_running_state(struct Game *game, struct Input *input, struct Platform *platform, double delta_time) {
	// *** UPDATE ***

	// Set move from previous frame's pressed input
	if(input->w == true
	&& game->previous_input.w == false 
	&& game->direction.y != 1) {
		game->next_move.x = 0;
		game->next_move.y = -1;
	}

	if(input->a == true 
	&& game->previous_input.a == false 
	&& game->direction.x != 1) {
		game->next_move.x = -1;
		game->next_move.y = 0;
	}

	if(input->s == true 
	&& game->previous_input.s == false 
	&& game->direction.y != -1) {
		game->next_move.x = 0;
		game->next_move.y = 1;
	}

	if(input->d == true 
	&& game->previous_input.d == false 
	&& game->direction.x != -1) {
		game->next_move.x = 1;
		game->next_move.y = 0;
	}

	// Tick timer
	game->time_to_next_step -= delta_time;
	if(game->time_to_next_step <= 0) {
		game->time_to_next_step = STEP_LENGTH;
		step(game);
	}

	// Update previous input to current input
	game->previous_input.w = input->w;
	game->previous_input.a = input->a;
	game->previous_input.s = input->s;
	game->previous_input.d = input->d;

	// *** RENDER ***
	draw_background_and_tiles(platform, &game->orientation);

	// Draw snake
	struct Color snake_head_color = {150, 150, 150, 255};
	draw_cell(platform, &game->orientation, &snake_head_color, game->snake[0].x, game->snake[0].y);
	struct Color snake_color = {100, 100, 100, 255};
	for(int i = 1; i < game->snake_length; ++i) {
		draw_cell(platform, &game->orientation, &snake_color, game->snake[i].x, game->snake[i].y);
	}

	// Draw food
	struct Color food_color = {150, 25, 25, 255};
	draw_cell(platform, &game->orientation, &food_color, game->food.x, game->food.y);
}

void step(struct Game *game) {
	game->direction = game->next_move;
	struct Coordinate new_snake_head;
	struct Coordinate *snake_head = &game->snake[0];
	new_snake_head.x = snake_head->x + game->next_move.x;
	new_snake_head.y = snake_head->y + game->next_move.y;

	// Check if new position is out of bounds
	if(new_snake_head.x < 0 ||
	   new_snake_head.x >= COLUMNS ||
	   new_snake_head.y < 0 ||
	   new_snake_head.y >= ROWS)
	{
		init_game(game);
		return;
	}

	// Check if new position hits the snake
	for(int i = 0; i < game->snake_length; ++i) {
		if(new_snake_head.x != game->snake[i].x || new_snake_head.y != game->snake[i].y) {
			continue;
		}

		init_game(game);
		return;
	}

	// Shift all snakes to the right and set i0 to the new position
	for(int i = game->snake_length; i > 0; --i) {
		game->snake[i] = game->snake[i - 1];
	}
	game->snake[0] = new_snake_head;

	// Check if new position is a food
	// Must happen after move or else snake length changes iteration
	if(snake_head->x == game->food.x && snake_head->y == game->food.y) {
		game->snake_length++;
		
		// Move food randomly
		move_food(game);
	}
}


void draw_background_and_tiles(struct Platform *platform, struct BoardOrientation *orientation) {
	// Draw background
	struct Color bg = {25, 25, 25, 255};
	clear_screen(platform, &bg);

	// Draw tiles
	for(int y = 0; y < ROWS; ++y) {
		for(int x = 0; x < COLUMNS; ++x) {
			struct Color color = {50, 50, 50, 255};
			draw_cell(platform, orientation, &color, x, y);
		}
	}
}

void draw_cell(struct Platform *platform, struct BoardOrientation *orientation, struct Color *color, int x, int y) {
	int rx = orientation->left_edge + (x * orientation->tile_size) + (x * orientation->tile_gap);
	int ry = orientation->top_edge + (y * orientation->tile_size) + (y * orientation->tile_gap);
	for(int y = ry; y < ry + orientation->tile_size; ++y) {
		for(int x = rx; x < rx + orientation->tile_size; ++x) {
			draw_pixel(platform, color, x, y); 
		}
	}
}

void move_food(struct Game *game) {
	game->food.x = rand() % COLUMNS;
	game->food.y = rand() % ROWS;
}
