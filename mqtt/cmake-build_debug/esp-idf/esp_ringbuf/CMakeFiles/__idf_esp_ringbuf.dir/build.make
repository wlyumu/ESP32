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

# Include any dependencies generated for this target.
include esp-idf/esp_ringbuf/CMakeFiles/__idf_esp_ringbuf.dir/depend.make

# Include the progress variables for this target.
include esp-idf/esp_ringbuf/CMakeFiles/__idf_esp_ringbuf.dir/progress.make

# Include the compile flags for this target's objects.
include esp-idf/esp_ringbuf/CMakeFiles/__idf_esp_ringbuf.dir/flags.make

esp-idf/esp_ringbuf/CMakeFiles/__idf_esp_ringbuf.dir/ringbuf.c.obj: esp-idf/esp_ringbuf/CMakeFiles/__idf_esp_ringbuf.dir/flags.make
esp-idf/esp_ringbuf/CMakeFiles/__idf_esp_ringbuf.dir/ringbuf.c.obj: D:/esp/esp-idf/components/esp_ringbuf/ringbuf.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object esp-idf/esp_ringbuf/CMakeFiles/__idf_esp_ringbuf.dir/ringbuf.c.obj"
	cd /d E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\esp-idf\esp_ringbuf && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\__idf_esp_ringbuf.dir\ringbuf.c.obj   -c D:\esp\esp-idf\components\esp_ringbuf\ringbuf.c

esp-idf/esp_ringbuf/CMakeFiles/__idf_esp_ringbuf.dir/ringbuf.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_esp_ringbuf.dir/ringbuf.c.i"
	cd /d E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\esp-idf\esp_ringbuf && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E D:\esp\esp-idf\components\esp_ringbuf\ringbuf.c > CMakeFiles\__idf_esp_ringbuf.dir\ringbuf.c.i

esp-idf/esp_ringbuf/CMakeFiles/__idf_esp_ringbuf.dir/ringbuf.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_esp_ringbuf.dir/ringbuf.c.s"
	cd /d E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\esp-idf\esp_ringbuf && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S D:\esp\esp-idf\components\esp_ringbuf\ringbuf.c -o CMakeFiles\__idf_esp_ringbuf.dir\ringbuf.c.s

# Object files for target __idf_esp_ringbuf
__idf_esp_ringbuf_OBJECTS = \
"CMakeFiles/__idf_esp_ringbuf.dir/ringbuf.c.obj"

# External object files for target __idf_esp_ringbuf
__idf_esp_ringbuf_EXTERNAL_OBJECTS =

esp-idf/esp_ringbuf/libesp_ringbuf.a: esp-idf/esp_ringbuf/CMakeFiles/__idf_esp_ringbuf.dir/ringbuf.c.obj
esp-idf/esp_ringbuf/libesp_ringbuf.a: esp-idf/esp_ringbuf/CMakeFiles/__idf_esp_ringbuf.dir/build.make
esp-idf/esp_ringbuf/libesp_ringbuf.a: esp-idf/esp_ringbuf/CMakeFiles/__idf_esp_ringbuf.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C static library libesp_ringbuf.a"
	cd /d E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\esp-idf\esp_ringbuf && $(CMAKE_COMMAND) -P CMakeFiles\__idf_esp_ringbuf.dir\cmake_clean_target.cmake
	cd /d E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\esp-idf\esp_ringbuf && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\__idf_esp_ringbuf.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
esp-idf/esp_ringbuf/CMakeFiles/__idf_esp_ringbuf.dir/build: esp-idf/esp_ringbuf/libesp_ringbuf.a

.PHONY : esp-idf/esp_ringbuf/CMakeFiles/__idf_esp_ringbuf.dir/build

esp-idf/esp_ringbuf/CMakeFiles/__idf_esp_ringbuf.dir/clean:
	cd /d E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\esp-idf\esp_ringbuf && $(CMAKE_COMMAND) -P CMakeFiles\__idf_esp_ringbuf.dir\cmake_clean.cmake
.PHONY : esp-idf/esp_ringbuf/CMakeFiles/__idf_esp_ringbuf.dir/clean

esp-idf/esp_ringbuf/CMakeFiles/__idf_esp_ringbuf.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" E:\EPS32\esp32_test\ESP32\mqtt D:\esp\esp-idf\components\esp_ringbuf E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\esp-idf\esp_ringbuf E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\esp-idf\esp_ringbuf\CMakeFiles\__idf_esp_ringbuf.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : esp-idf/esp_ringbuf/CMakeFiles/__idf_esp_ringbuf.dir/depend

