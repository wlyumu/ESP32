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
CMAKE_SOURCE_DIR = G:\esp-idf\components\bootloader\subproject

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\wl\Desktop\esp32-demo\mqtt\cmake-build-debug\bootloader

# Utility rule file for size-components.

# Include the progress variables for this target.
include CMakeFiles/size-components.dir/progress.make

CMakeFiles/size-components: bootloader.elf
	G:\espressif\python_env\idf4.3_py3.8_env\Scripts\python.exe G:/esp-idf/tools/idf_size.py --archives C:/Users/wl/Desktop/esp32-demo/mqtt/cmake-build-debug/bootloader/bootloader.map

size-components: CMakeFiles/size-components
size-components: CMakeFiles/size-components.dir/build.make

.PHONY : size-components

# Rule to build all files generated by this target.
CMakeFiles/size-components.dir/build: size-components

.PHONY : CMakeFiles/size-components.dir/build

CMakeFiles/size-components.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\size-components.dir\cmake_clean.cmake
.PHONY : CMakeFiles/size-components.dir/clean

CMakeFiles/size-components.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" G:\esp-idf\components\bootloader\subproject G:\esp-idf\components\bootloader\subproject C:\Users\wl\Desktop\esp32-demo\mqtt\cmake-build-debug\bootloader C:\Users\wl\Desktop\esp32-demo\mqtt\cmake-build-debug\bootloader C:\Users\wl\Desktop\esp32-demo\mqtt\cmake-build-debug\bootloader\CMakeFiles\size-components.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/size-components.dir/depend

