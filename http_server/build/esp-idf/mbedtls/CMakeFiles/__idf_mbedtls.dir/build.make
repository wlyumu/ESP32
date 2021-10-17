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
include esp-idf/mbedtls/CMakeFiles/__idf_mbedtls.dir/depend.make

# Include the progress variables for this target.
include esp-idf/mbedtls/CMakeFiles/__idf_mbedtls.dir/progress.make

# Include the compile flags for this target's objects.
include esp-idf/mbedtls/CMakeFiles/__idf_mbedtls.dir/flags.make

esp-idf/mbedtls/CMakeFiles/__idf_mbedtls.dir/esp_crt_bundle/esp_crt_bundle.c.obj: esp-idf/mbedtls/CMakeFiles/__idf_mbedtls.dir/flags.make
esp-idf/mbedtls/CMakeFiles/__idf_mbedtls.dir/esp_crt_bundle/esp_crt_bundle.c.obj: /home/wl/esp/esp-idf/components/mbedtls/esp_crt_bundle/esp_crt_bundle.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wl/esp/mqtt/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object esp-idf/mbedtls/CMakeFiles/__idf_mbedtls.dir/esp_crt_bundle/esp_crt_bundle.c.obj"
	cd /home/wl/esp/mqtt/build/esp-idf/mbedtls && /home/wl/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/__idf_mbedtls.dir/esp_crt_bundle/esp_crt_bundle.c.obj   -c /home/wl/esp/esp-idf/components/mbedtls/esp_crt_bundle/esp_crt_bundle.c

esp-idf/mbedtls/CMakeFiles/__idf_mbedtls.dir/esp_crt_bundle/esp_crt_bundle.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_mbedtls.dir/esp_crt_bundle/esp_crt_bundle.c.i"
	cd /home/wl/esp/mqtt/build/esp-idf/mbedtls && /home/wl/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/wl/esp/esp-idf/components/mbedtls/esp_crt_bundle/esp_crt_bundle.c > CMakeFiles/__idf_mbedtls.dir/esp_crt_bundle/esp_crt_bundle.c.i

esp-idf/mbedtls/CMakeFiles/__idf_mbedtls.dir/esp_crt_bundle/esp_crt_bundle.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_mbedtls.dir/esp_crt_bundle/esp_crt_bundle.c.s"
	cd /home/wl/esp/mqtt/build/esp-idf/mbedtls && /home/wl/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/wl/esp/esp-idf/components/mbedtls/esp_crt_bundle/esp_crt_bundle.c -o CMakeFiles/__idf_mbedtls.dir/esp_crt_bundle/esp_crt_bundle.c.s

# Object files for target __idf_mbedtls
__idf_mbedtls_OBJECTS = \
"CMakeFiles/__idf_mbedtls.dir/esp_crt_bundle/esp_crt_bundle.c.obj"

# External object files for target __idf_mbedtls
__idf_mbedtls_EXTERNAL_OBJECTS =

esp-idf/mbedtls/libmbedtls.a: esp-idf/mbedtls/CMakeFiles/__idf_mbedtls.dir/esp_crt_bundle/esp_crt_bundle.c.obj
esp-idf/mbedtls/libmbedtls.a: esp-idf/mbedtls/CMakeFiles/__idf_mbedtls.dir/build.make
esp-idf/mbedtls/libmbedtls.a: esp-idf/mbedtls/CMakeFiles/__idf_mbedtls.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/wl/esp/mqtt/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C static library libmbedtls.a"
	cd /home/wl/esp/mqtt/build/esp-idf/mbedtls && $(CMAKE_COMMAND) -P CMakeFiles/__idf_mbedtls.dir/cmake_clean_target.cmake
	cd /home/wl/esp/mqtt/build/esp-idf/mbedtls && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/__idf_mbedtls.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
esp-idf/mbedtls/CMakeFiles/__idf_mbedtls.dir/build: esp-idf/mbedtls/libmbedtls.a

.PHONY : esp-idf/mbedtls/CMakeFiles/__idf_mbedtls.dir/build

esp-idf/mbedtls/CMakeFiles/__idf_mbedtls.dir/clean:
	cd /home/wl/esp/mqtt/build/esp-idf/mbedtls && $(CMAKE_COMMAND) -P CMakeFiles/__idf_mbedtls.dir/cmake_clean.cmake
.PHONY : esp-idf/mbedtls/CMakeFiles/__idf_mbedtls.dir/clean

esp-idf/mbedtls/CMakeFiles/__idf_mbedtls.dir/depend:
	cd /home/wl/esp/mqtt/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/wl/esp/mqtt /home/wl/esp/esp-idf/components/mbedtls /home/wl/esp/mqtt/build /home/wl/esp/mqtt/build/esp-idf/mbedtls /home/wl/esp/mqtt/build/esp-idf/mbedtls/CMakeFiles/__idf_mbedtls.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : esp-idf/mbedtls/CMakeFiles/__idf_mbedtls.dir/depend

