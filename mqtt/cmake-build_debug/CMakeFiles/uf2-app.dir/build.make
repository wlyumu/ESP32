# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.16

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = D:\esp\espressif\tools\cmake\3.16.4\bin\cmake.exe

# The command to remove a file.
RM = D:\esp\espressif\tools\cmake\3.16.4\bin\cmake.exe -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = E:\EPS32\esp32_test\ESP32\mqtt

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug

# Utility rule file for uf2-app.

# Include the progress variables for this target.
include CMakeFiles/uf2-app.dir/progress.make

CMakeFiles/uf2-app:
	python D:/esp/esp-idf/tools/mkuf2.py write -o E:/EPS32/esp32_test/ESP32/mqtt/cmake-build_debug/uf2-app.bin --json E:/EPS32/esp32_test/ESP32/mqtt/cmake-build_debug/flasher_args.json --chip-id 0x1c5f21b0 --bin app

uf2-app: CMakeFiles/uf2-app
uf2-app: CMakeFiles/uf2-app.dir/build.make

.PHONY : uf2-app

# Rule to build all files generated by this target.
CMakeFiles/uf2-app.dir/build: uf2-app

.PHONY : CMakeFiles/uf2-app.dir/build

CMakeFiles/uf2-app.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\uf2-app.dir\cmake_clean.cmake
.PHONY : CMakeFiles/uf2-app.dir/clean

CMakeFiles/uf2-app.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" E:\EPS32\esp32_test\ESP32\mqtt E:\EPS32\esp32_test\ESP32\mqtt E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\CMakeFiles\uf2-app.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/uf2-app.dir/depend

