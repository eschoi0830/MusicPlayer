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
CMAKE_COMMAND = /snap/cmake/1399/bin/cmake

# The command to remove a file.
RM = /snap/cmake/1399/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/s202355587/project

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/s202355587/project/build

# Include any dependencies generated for this target.
include CMakeFiles/Player.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/Player.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/Player.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Player.dir/flags.make

CMakeFiles/Player.dir/src/Player.c.o: CMakeFiles/Player.dir/flags.make
CMakeFiles/Player.dir/src/Player.c.o: /home/s202355587/project/src/Player.c
CMakeFiles/Player.dir/src/Player.c.o: CMakeFiles/Player.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/s202355587/project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/Player.dir/src/Player.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/Player.dir/src/Player.c.o -MF CMakeFiles/Player.dir/src/Player.c.o.d -o CMakeFiles/Player.dir/src/Player.c.o -c /home/s202355587/project/src/Player.c

CMakeFiles/Player.dir/src/Player.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/Player.dir/src/Player.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/s202355587/project/src/Player.c > CMakeFiles/Player.dir/src/Player.c.i

CMakeFiles/Player.dir/src/Player.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/Player.dir/src/Player.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/s202355587/project/src/Player.c -o CMakeFiles/Player.dir/src/Player.c.s

CMakeFiles/Player.dir/libs/linkedlist.c.o: CMakeFiles/Player.dir/flags.make
CMakeFiles/Player.dir/libs/linkedlist.c.o: /home/s202355587/project/libs/linkedlist.c
CMakeFiles/Player.dir/libs/linkedlist.c.o: CMakeFiles/Player.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/s202355587/project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/Player.dir/libs/linkedlist.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/Player.dir/libs/linkedlist.c.o -MF CMakeFiles/Player.dir/libs/linkedlist.c.o.d -o CMakeFiles/Player.dir/libs/linkedlist.c.o -c /home/s202355587/project/libs/linkedlist.c

CMakeFiles/Player.dir/libs/linkedlist.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/Player.dir/libs/linkedlist.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/s202355587/project/libs/linkedlist.c > CMakeFiles/Player.dir/libs/linkedlist.c.i

CMakeFiles/Player.dir/libs/linkedlist.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/Player.dir/libs/linkedlist.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/s202355587/project/libs/linkedlist.c -o CMakeFiles/Player.dir/libs/linkedlist.c.s

CMakeFiles/Player.dir/libs/textfilewriter.c.o: CMakeFiles/Player.dir/flags.make
CMakeFiles/Player.dir/libs/textfilewriter.c.o: /home/s202355587/project/libs/textfilewriter.c
CMakeFiles/Player.dir/libs/textfilewriter.c.o: CMakeFiles/Player.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/s202355587/project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/Player.dir/libs/textfilewriter.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/Player.dir/libs/textfilewriter.c.o -MF CMakeFiles/Player.dir/libs/textfilewriter.c.o.d -o CMakeFiles/Player.dir/libs/textfilewriter.c.o -c /home/s202355587/project/libs/textfilewriter.c

CMakeFiles/Player.dir/libs/textfilewriter.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/Player.dir/libs/textfilewriter.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/s202355587/project/libs/textfilewriter.c > CMakeFiles/Player.dir/libs/textfilewriter.c.i

CMakeFiles/Player.dir/libs/textfilewriter.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/Player.dir/libs/textfilewriter.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/s202355587/project/libs/textfilewriter.c -o CMakeFiles/Player.dir/libs/textfilewriter.c.s

# Object files for target Player
Player_OBJECTS = \
"CMakeFiles/Player.dir/src/Player.c.o" \
"CMakeFiles/Player.dir/libs/linkedlist.c.o" \
"CMakeFiles/Player.dir/libs/textfilewriter.c.o"

# External object files for target Player
Player_EXTERNAL_OBJECTS =

Player: CMakeFiles/Player.dir/src/Player.c.o
Player: CMakeFiles/Player.dir/libs/linkedlist.c.o
Player: CMakeFiles/Player.dir/libs/textfilewriter.c.o
Player: CMakeFiles/Player.dir/build.make
Player: CMakeFiles/Player.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/s202355587/project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking C executable Player"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Player.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Player.dir/build: Player
.PHONY : CMakeFiles/Player.dir/build

CMakeFiles/Player.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Player.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Player.dir/clean

CMakeFiles/Player.dir/depend:
	cd /home/s202355587/project/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/s202355587/project /home/s202355587/project /home/s202355587/project/build /home/s202355587/project/build /home/s202355587/project/build/CMakeFiles/Player.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/Player.dir/depend

