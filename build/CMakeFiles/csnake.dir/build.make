# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.29

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/csmoulaison/archive/csnake_2022

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/csmoulaison/archive/csnake_2022/build

# Include any dependencies generated for this target.
include CMakeFiles/csnake.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/csnake.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/csnake.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/csnake.dir/flags.make

CMakeFiles/csnake.dir/src/game.c.o: CMakeFiles/csnake.dir/flags.make
CMakeFiles/csnake.dir/src/game.c.o: /home/csmoulaison/archive/csnake_2022/src/game.c
CMakeFiles/csnake.dir/src/game.c.o: CMakeFiles/csnake.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/csmoulaison/archive/csnake_2022/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/csnake.dir/src/game.c.o"
	/sbin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/csnake.dir/src/game.c.o -MF CMakeFiles/csnake.dir/src/game.c.o.d -o CMakeFiles/csnake.dir/src/game.c.o -c /home/csmoulaison/archive/csnake_2022/src/game.c

CMakeFiles/csnake.dir/src/game.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/csnake.dir/src/game.c.i"
	/sbin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/csmoulaison/archive/csnake_2022/src/game.c > CMakeFiles/csnake.dir/src/game.c.i

CMakeFiles/csnake.dir/src/game.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/csnake.dir/src/game.c.s"
	/sbin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/csmoulaison/archive/csnake_2022/src/game.c -o CMakeFiles/csnake.dir/src/game.c.s

CMakeFiles/csnake.dir/src/input.c.o: CMakeFiles/csnake.dir/flags.make
CMakeFiles/csnake.dir/src/input.c.o: /home/csmoulaison/archive/csnake_2022/src/input.c
CMakeFiles/csnake.dir/src/input.c.o: CMakeFiles/csnake.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/csmoulaison/archive/csnake_2022/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/csnake.dir/src/input.c.o"
	/sbin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/csnake.dir/src/input.c.o -MF CMakeFiles/csnake.dir/src/input.c.o.d -o CMakeFiles/csnake.dir/src/input.c.o -c /home/csmoulaison/archive/csnake_2022/src/input.c

CMakeFiles/csnake.dir/src/input.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/csnake.dir/src/input.c.i"
	/sbin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/csmoulaison/archive/csnake_2022/src/input.c > CMakeFiles/csnake.dir/src/input.c.i

CMakeFiles/csnake.dir/src/input.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/csnake.dir/src/input.c.s"
	/sbin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/csmoulaison/archive/csnake_2022/src/input.c -o CMakeFiles/csnake.dir/src/input.c.s

CMakeFiles/csnake.dir/src/main.c.o: CMakeFiles/csnake.dir/flags.make
CMakeFiles/csnake.dir/src/main.c.o: /home/csmoulaison/archive/csnake_2022/src/main.c
CMakeFiles/csnake.dir/src/main.c.o: CMakeFiles/csnake.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/csmoulaison/archive/csnake_2022/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/csnake.dir/src/main.c.o"
	/sbin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/csnake.dir/src/main.c.o -MF CMakeFiles/csnake.dir/src/main.c.o.d -o CMakeFiles/csnake.dir/src/main.c.o -c /home/csmoulaison/archive/csnake_2022/src/main.c

CMakeFiles/csnake.dir/src/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/csnake.dir/src/main.c.i"
	/sbin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/csmoulaison/archive/csnake_2022/src/main.c > CMakeFiles/csnake.dir/src/main.c.i

CMakeFiles/csnake.dir/src/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/csnake.dir/src/main.c.s"
	/sbin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/csmoulaison/archive/csnake_2022/src/main.c -o CMakeFiles/csnake.dir/src/main.c.s

CMakeFiles/csnake.dir/src/platform.c.o: CMakeFiles/csnake.dir/flags.make
CMakeFiles/csnake.dir/src/platform.c.o: /home/csmoulaison/archive/csnake_2022/src/platform.c
CMakeFiles/csnake.dir/src/platform.c.o: CMakeFiles/csnake.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/csmoulaison/archive/csnake_2022/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/csnake.dir/src/platform.c.o"
	/sbin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/csnake.dir/src/platform.c.o -MF CMakeFiles/csnake.dir/src/platform.c.o.d -o CMakeFiles/csnake.dir/src/platform.c.o -c /home/csmoulaison/archive/csnake_2022/src/platform.c

CMakeFiles/csnake.dir/src/platform.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/csnake.dir/src/platform.c.i"
	/sbin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/csmoulaison/archive/csnake_2022/src/platform.c > CMakeFiles/csnake.dir/src/platform.c.i

CMakeFiles/csnake.dir/src/platform.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/csnake.dir/src/platform.c.s"
	/sbin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/csmoulaison/archive/csnake_2022/src/platform.c -o CMakeFiles/csnake.dir/src/platform.c.s

CMakeFiles/csnake.dir/src/draw.c.o: CMakeFiles/csnake.dir/flags.make
CMakeFiles/csnake.dir/src/draw.c.o: /home/csmoulaison/archive/csnake_2022/src/draw.c
CMakeFiles/csnake.dir/src/draw.c.o: CMakeFiles/csnake.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/csmoulaison/archive/csnake_2022/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object CMakeFiles/csnake.dir/src/draw.c.o"
	/sbin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/csnake.dir/src/draw.c.o -MF CMakeFiles/csnake.dir/src/draw.c.o.d -o CMakeFiles/csnake.dir/src/draw.c.o -c /home/csmoulaison/archive/csnake_2022/src/draw.c

CMakeFiles/csnake.dir/src/draw.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/csnake.dir/src/draw.c.i"
	/sbin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/csmoulaison/archive/csnake_2022/src/draw.c > CMakeFiles/csnake.dir/src/draw.c.i

CMakeFiles/csnake.dir/src/draw.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/csnake.dir/src/draw.c.s"
	/sbin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/csmoulaison/archive/csnake_2022/src/draw.c -o CMakeFiles/csnake.dir/src/draw.c.s

# Object files for target csnake
csnake_OBJECTS = \
"CMakeFiles/csnake.dir/src/game.c.o" \
"CMakeFiles/csnake.dir/src/input.c.o" \
"CMakeFiles/csnake.dir/src/main.c.o" \
"CMakeFiles/csnake.dir/src/platform.c.o" \
"CMakeFiles/csnake.dir/src/draw.c.o"

# External object files for target csnake
csnake_EXTERNAL_OBJECTS =

/home/csmoulaison/archive/csnake_2022/bin/csnake: CMakeFiles/csnake.dir/src/game.c.o
/home/csmoulaison/archive/csnake_2022/bin/csnake: CMakeFiles/csnake.dir/src/input.c.o
/home/csmoulaison/archive/csnake_2022/bin/csnake: CMakeFiles/csnake.dir/src/main.c.o
/home/csmoulaison/archive/csnake_2022/bin/csnake: CMakeFiles/csnake.dir/src/platform.c.o
/home/csmoulaison/archive/csnake_2022/bin/csnake: CMakeFiles/csnake.dir/src/draw.c.o
/home/csmoulaison/archive/csnake_2022/bin/csnake: CMakeFiles/csnake.dir/build.make
/home/csmoulaison/archive/csnake_2022/bin/csnake: /usr/lib/libSDL2main.a
/home/csmoulaison/archive/csnake_2022/bin/csnake: /usr/lib/libSDL2-2.0.so.0.3000.4
/home/csmoulaison/archive/csnake_2022/bin/csnake: CMakeFiles/csnake.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/csmoulaison/archive/csnake_2022/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking C executable /home/csmoulaison/archive/csnake_2022/bin/csnake"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/csnake.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/csnake.dir/build: /home/csmoulaison/archive/csnake_2022/bin/csnake
.PHONY : CMakeFiles/csnake.dir/build

CMakeFiles/csnake.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/csnake.dir/cmake_clean.cmake
.PHONY : CMakeFiles/csnake.dir/clean

CMakeFiles/csnake.dir/depend:
	cd /home/csmoulaison/archive/csnake_2022/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/csmoulaison/archive/csnake_2022 /home/csmoulaison/archive/csnake_2022 /home/csmoulaison/archive/csnake_2022/build /home/csmoulaison/archive/csnake_2022/build /home/csmoulaison/archive/csnake_2022/build/CMakeFiles/csnake.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/csnake.dir/depend

