# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.19

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "F:\Program Files\JetBrains\CLion 2021.1.3\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "F:\Program Files\JetBrains\CLion 2021.1.3\bin\cmake\win\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\wl\Desktop\esp32-demo\mqtt

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\wl\Desktop\esp32-demo\mqtt\cmake-build-debug

# Utility rule file for uf2.

# Include the progress variables for this target.
include CMakeFiles/uf2.dir/progress.make

CMakeFiles/uf2:
	G:\espressif\python_env\idf4.3_py3.8_env\Scripts\python.exe G:/esp-idf/tools/mkuf2.py write -o C:/Users/wl/Desktop/esp32-demo/mqtt/cmake-build-debug/uf2.bin --json C:/Users/wl/Desktop/esp32-demo/mqtt/cmake-build-debug/flasher_args.json --chip-id 0x1c5f21b0

uf2: CMakeFiles/uf2
uf2: CMakeFiles/uf2.dir/build.make

.PHONY : uf2

# Rule to build all files generated by this target.
CMakeFiles/uf2.dir/build: uf2

.PHONY : CMakeFiles/uf2.dir/build

CMakeFiles/uf2.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\uf2.dir\cmake_clean.cmake
.PHONY : CMakeFiles/uf2.dir/clean

CMakeFiles/uf2.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\wl\Desktop\esp32-demo\mqtt C:\Users\wl\Desktop\esp32-demo\mqtt C:\Users\wl\Desktop\esp32-demo\mqtt\cmake-build-debug C:\Users\wl\Desktop\esp32-demo\mqtt\cmake-build-debug C:\Users\wl\Desktop\esp32-demo\mqtt\cmake-build-debug\CMakeFiles\uf2.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/uf2.dir/depend

