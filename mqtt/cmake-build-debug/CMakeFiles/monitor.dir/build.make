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

# Utility rule file for monitor.

# Include the progress variables for this target.
include CMakeFiles/monitor.dir/progress.make

CMakeFiles/monitor:
	cd /d G:\esp-idf\components\esptool_py && "F:\Program Files\JetBrains\CLion 2021.1.3\bin\cmake\win\bin\cmake.exe" -D IDF_PATH="G:/esp-idf" -D SERIAL_TOOL="G:/esp-idf/tools/idf_monitor.py" -D SERIAL_TOOL_ARGS="C:/Users/wl/Desktop/esp32-demo/mqtt/cmake-build-debug/mqtt_tcp.elf" -D WORKING_DIRECTORY="C:/Users/wl/Desktop/esp32-demo/mqtt/cmake-build-debug" -P run_serial_tool.cmake

monitor: CMakeFiles/monitor
monitor: CMakeFiles/monitor.dir/build.make

.PHONY : monitor

# Rule to build all files generated by this target.
CMakeFiles/monitor.dir/build: monitor

.PHONY : CMakeFiles/monitor.dir/build

CMakeFiles/monitor.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\monitor.dir\cmake_clean.cmake
.PHONY : CMakeFiles/monitor.dir/clean

CMakeFiles/monitor.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\wl\Desktop\esp32-demo\mqtt C:\Users\wl\Desktop\esp32-demo\mqtt C:\Users\wl\Desktop\esp32-demo\mqtt\cmake-build-debug C:\Users\wl\Desktop\esp32-demo\mqtt\cmake-build-debug C:\Users\wl\Desktop\esp32-demo\mqtt\cmake-build-debug\CMakeFiles\monitor.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/monitor.dir/depend

