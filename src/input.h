#pragma once
#include <stdbool.h>
#include "platform.h"

struct Input {
	bool w;
	bool a;
	bool s;
	bool d;
	bool quit;
};

void init_input(struct Input *input);
void poll_input(struct Input *input, struct Platform *platform);
