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
CMAKE_SOURCE_DIR = E:\EPS32\esp32_test\mqtt_20220110\mqtt

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = E:\EPS32\esp32_test\mqtt_20220110\mqtt\build

# Utility rule file for confserver.

# Include the progress variables for this target.
include CMakeFiles/confserver.dir/progress.make

CMakeFiles/confserver:
	python D:/esp/esp-idf/tools/kconfig_new/prepare_kconfig_files.py --env-file E:/EPS32/esp32_test/mqtt_20220110/mqtt/build/config.env
	python D:/esp/esp-idf/tools/kconfig_new/confserver.py --env-file E:/EPS32/esp32_test/mqtt_20220110/mqtt/build/config.env --kconfig D:/esp/esp-idf/Kconfig --sdkconfig-rename D:/esp/esp-idf/sdkconfig.rename --config E:/EPS32/esp32_test/mqtt_20220110/mqtt/sdkconfig

confserver: CMakeFiles/confserver
confserver: CMakeFiles/confserver.dir/build.make

.PHONY : confserver

# Rule to build all files generated by this target.
CMakeFiles/confserver.dir/build: confserver

.PHONY : CMakeFiles/confserver.dir/build

CMakeFiles/confserver.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\confserver.dir\cmake_clean.cmake
.PHONY : CMakeFiles/confserver.dir/clean

CMakeFiles/confserver.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" E:\EPS32\esp32_test\mqtt_20220110\mqtt E:\EPS32\esp32_test\mqtt_20220110\mqtt E:\EPS32\esp32_test\mqtt_20220110\mqtt\build E:\EPS32\esp32_test\mqtt_20220110\mqtt\build E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\CMakeFiles\confserver.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/confserver.dir/depend
