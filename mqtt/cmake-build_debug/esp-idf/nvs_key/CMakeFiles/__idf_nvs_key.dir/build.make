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
include esp-idf/nvs_key/CMakeFiles/__idf_nvs_key.dir/depend.make

# Include the progress variables for this target.
include esp-idf/nvs_key/CMakeFiles/__idf_nvs_key.dir/progress.make

# Include the compile flags for this target's objects.
include esp-idf/nvs_key/CMakeFiles/__idf_nvs_key.dir/flags.make

esp-idf/nvs_key/CMakeFiles/__idf_nvs_key.dir/nvs_kv.c.obj: esp-idf/nvs_key/CMakeFiles/__idf_nvs_key.dir/flags.make
esp-idf/nvs_key/CMakeFiles/__idf_nvs_key.dir/nvs_kv.c.obj: ../components/nvs_key/nvs_kv.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object esp-idf/nvs_key/CMakeFiles/__idf_nvs_key.dir/nvs_kv.c.obj"
	cd /d E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\esp-idf\nvs_key && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\__idf_nvs_key.dir\nvs_kv.c.obj   -c E:\EPS32\esp32_test\ESP32\mqtt\components\nvs_key\nvs_kv.c

esp-idf/nvs_key/CMakeFiles/__idf_nvs_key.dir/nvs_kv.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_nvs_key.dir/nvs_kv.c.i"
	cd /d E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\esp-idf\nvs_key && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E E:\EPS32\esp32_test\ESP32\mqtt\components\nvs_key\nvs_kv.c > CMakeFiles\__idf_nvs_key.dir\nvs_kv.c.i

esp-idf/nvs_key/CMakeFiles/__idf_nvs_key.dir/nvs_kv.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_nvs_key.dir/nvs_kv.c.s"
	cd /d E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\esp-idf\nvs_key && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S E:\EPS32\esp32_test\ESP32\mqtt\components\nvs_key\nvs_kv.c -o CMakeFiles\__idf_nvs_key.dir\nvs_kv.c.s

# Object files for target __idf_nvs_key
__idf_nvs_key_OBJECTS = \
"CMakeFiles/__idf_nvs_key.dir/nvs_kv.c.obj"

# External object files for target __idf_nvs_key
__idf_nvs_key_EXTERNAL_OBJECTS =

esp-idf/nvs_key/libnvs_key.a: esp-idf/nvs_key/CMakeFiles/__idf_nvs_key.dir/nvs_kv.c.obj
esp-idf/nvs_key/libnvs_key.a: esp-idf/nvs_key/CMakeFiles/__idf_nvs_key.dir/build.make
esp-idf/nvs_key/libnvs_key.a: esp-idf/nvs_key/CMakeFiles/__idf_nvs_key.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C static library libnvs_key.a"
	cd /d E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\esp-idf\nvs_key && $(CMAKE_COMMAND) -P CMakeFiles\__idf_nvs_key.dir\cmake_clean_target.cmake
	cd /d E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\esp-idf\nvs_key && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\__idf_nvs_key.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
esp-idf/nvs_key/CMakeFiles/__idf_nvs_key.dir/build: esp-idf/nvs_key/libnvs_key.a

.PHONY : esp-idf/nvs_key/CMakeFiles/__idf_nvs_key.dir/build

esp-idf/nvs_key/CMakeFiles/__idf_nvs_key.dir/clean:
	cd /d E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\esp-idf\nvs_key && $(CMAKE_COMMAND) -P CMakeFiles\__idf_nvs_key.dir\cmake_clean.cmake
.PHONY : esp-idf/nvs_key/CMakeFiles/__idf_nvs_key.dir/clean

esp-idf/nvs_key/CMakeFiles/__idf_nvs_key.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" E:\EPS32\esp32_test\ESP32\mqtt E:\EPS32\esp32_test\ESP32\mqtt\components\nvs_key E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\esp-idf\nvs_key E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\esp-idf\nvs_key\CMakeFiles\__idf_nvs_key.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : esp-idf/nvs_key/CMakeFiles/__idf_nvs_key.dir/depend

