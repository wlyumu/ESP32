# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
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
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/wl/esp/mqtt

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/wl/esp/mqtt/build

# Include any dependencies generated for this target.
include esp-idf/jsmn/CMakeFiles/__idf_jsmn.dir/depend.make

# Include the progress variables for this target.
include esp-idf/jsmn/CMakeFiles/__idf_jsmn.dir/progress.make

# Include the compile flags for this target's objects.
include esp-idf/jsmn/CMakeFiles/__idf_jsmn.dir/flags.make

esp-idf/jsmn/CMakeFiles/__idf_jsmn.dir/src/jsmn.c.obj: esp-idf/jsmn/CMakeFiles/__idf_jsmn.dir/flags.make
esp-idf/jsmn/CMakeFiles/__idf_jsmn.dir/src/jsmn.c.obj: /home/wl/esp/esp-idf/components/jsmn/src/jsmn.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wl/esp/mqtt/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object esp-idf/jsmn/CMakeFiles/__idf_jsmn.dir/src/jsmn.c.obj"
	cd /home/wl/esp/mqtt/build/esp-idf/jsmn && /home/wl/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/__idf_jsmn.dir/src/jsmn.c.obj   -c /home/wl/esp/esp-idf/components/jsmn/src/jsmn.c

esp-idf/jsmn/CMakeFiles/__idf_jsmn.dir/src/jsmn.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_jsmn.dir/src/jsmn.c.i"
	cd /home/wl/esp/mqtt/build/esp-idf/jsmn && /home/wl/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/wl/esp/esp-idf/components/jsmn/src/jsmn.c > CMakeFiles/__idf_jsmn.dir/src/jsmn.c.i

esp-idf/jsmn/CMakeFiles/__idf_jsmn.dir/src/jsmn.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_jsmn.dir/src/jsmn.c.s"
	cd /home/wl/esp/mqtt/build/esp-idf/jsmn && /home/wl/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/wl/esp/esp-idf/components/jsmn/src/jsmn.c -o CMakeFiles/__idf_jsmn.dir/src/jsmn.c.s

# Object files for target __idf_jsmn
__idf_jsmn_OBJECTS = \
"CMakeFiles/__idf_jsmn.dir/src/jsmn.c.obj"

# External object files for target __idf_jsmn
__idf_jsmn_EXTERNAL_OBJECTS =

esp-idf/jsmn/libjsmn.a: esp-idf/jsmn/CMakeFiles/__idf_jsmn.dir/src/jsmn.c.obj
esp-idf/jsmn/libjsmn.a: esp-idf/jsmn/CMakeFiles/__idf_jsmn.dir/build.make
esp-idf/jsmn/libjsmn.a: esp-idf/jsmn/CMakeFiles/__idf_jsmn.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/wl/esp/mqtt/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C static library libjsmn.a"
	cd /home/wl/esp/mqtt/build/esp-idf/jsmn && $(CMAKE_COMMAND) -P CMakeFiles/__idf_jsmn.dir/cmake_clean_target.cmake
	cd /home/wl/esp/mqtt/build/esp-idf/jsmn && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/__idf_jsmn.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
esp-idf/jsmn/CMakeFiles/__idf_jsmn.dir/build: esp-idf/jsmn/libjsmn.a

.PHONY : esp-idf/jsmn/CMakeFiles/__idf_jsmn.dir/build

esp-idf/jsmn/CMakeFiles/__idf_jsmn.dir/clean:
	cd /home/wl/esp/mqtt/build/esp-idf/jsmn && $(CMAKE_COMMAND) -P CMakeFiles/__idf_jsmn.dir/cmake_clean.cmake
.PHONY : esp-idf/jsmn/CMakeFiles/__idf_jsmn.dir/clean

esp-idf/jsmn/CMakeFiles/__idf_jsmn.dir/depend:
	cd /home/wl/esp/mqtt/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/wl/esp/mqtt /home/wl/esp/esp-idf/components/jsmn /home/wl/esp/mqtt/build /home/wl/esp/mqtt/build/esp-idf/jsmn /home/wl/esp/mqtt/build/esp-idf/jsmn/CMakeFiles/__idf_jsmn.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : esp-idf/jsmn/CMakeFiles/__idf_jsmn.dir/depend

