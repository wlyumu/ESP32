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

# Include any dependencies generated for this target.
include esp-idf/asio/CMakeFiles/__idf_asio.dir/depend.make

# Include the progress variables for this target.
include esp-idf/asio/CMakeFiles/__idf_asio.dir/progress.make

# Include the compile flags for this target's objects.
include esp-idf/asio/CMakeFiles/__idf_asio.dir/flags.make

esp-idf/asio/CMakeFiles/__idf_asio.dir/asio/asio/src/asio.cpp.obj: esp-idf/asio/CMakeFiles/__idf_asio.dir/flags.make
esp-idf/asio/CMakeFiles/__idf_asio.dir/asio/asio/src/asio.cpp.obj: D:/esp/esp-idf/components/asio/asio/asio/src/asio.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object esp-idf/asio/CMakeFiles/__idf_asio.dir/asio/asio/src/asio.cpp.obj"
	cd /d E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\esp-idf\asio && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\__idf_asio.dir\asio\asio\src\asio.cpp.obj -c D:\esp\esp-idf\components\asio\asio\asio\src\asio.cpp

esp-idf/asio/CMakeFiles/__idf_asio.dir/asio/asio/src/asio.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/__idf_asio.dir/asio/asio/src/asio.cpp.i"
	cd /d E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\esp-idf\asio && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\esp\esp-idf\components\asio\asio\asio\src\asio.cpp > CMakeFiles\__idf_asio.dir\asio\asio\src\asio.cpp.i

esp-idf/asio/CMakeFiles/__idf_asio.dir/asio/asio/src/asio.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/__idf_asio.dir/asio/asio/src/asio.cpp.s"
	cd /d E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\esp-idf\asio && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\esp\esp-idf\components\asio\asio\asio\src\asio.cpp -o CMakeFiles\__idf_asio.dir\asio\asio\src\asio.cpp.s

# Object files for target __idf_asio
__idf_asio_OBJECTS = \
"CMakeFiles/__idf_asio.dir/asio/asio/src/asio.cpp.obj"

# External object files for target __idf_asio
__idf_asio_EXTERNAL_OBJECTS =

esp-idf/asio/libasio.a: esp-idf/asio/CMakeFiles/__idf_asio.dir/asio/asio/src/asio.cpp.obj
esp-idf/asio/libasio.a: esp-idf/asio/CMakeFiles/__idf_asio.dir/build.make
esp-idf/asio/libasio.a: esp-idf/asio/CMakeFiles/__idf_asio.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C static library libasio.a"
	cd /d E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\esp-idf\asio && $(CMAKE_COMMAND) -P CMakeFiles\__idf_asio.dir\cmake_clean_target.cmake
	cd /d E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\esp-idf\asio && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\__idf_asio.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
esp-idf/asio/CMakeFiles/__idf_asio.dir/build: esp-idf/asio/libasio.a

.PHONY : esp-idf/asio/CMakeFiles/__idf_asio.dir/build

esp-idf/asio/CMakeFiles/__idf_asio.dir/clean:
	cd /d E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\esp-idf\asio && $(CMAKE_COMMAND) -P CMakeFiles\__idf_asio.dir\cmake_clean.cmake
.PHONY : esp-idf/asio/CMakeFiles/__idf_asio.dir/clean

esp-idf/asio/CMakeFiles/__idf_asio.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" E:\EPS32\esp32_test\mqtt_20220110\mqtt D:\esp\esp-idf\components\asio E:\EPS32\esp32_test\mqtt_20220110\mqtt\build E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\esp-idf\asio E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\esp-idf\asio\CMakeFiles\__idf_asio.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : esp-idf/asio/CMakeFiles/__idf_asio.dir/depend
