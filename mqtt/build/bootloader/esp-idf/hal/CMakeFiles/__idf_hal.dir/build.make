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
CMAKE_SOURCE_DIR = D:\esp\esp-idf\components\bootloader\subproject

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\bootloader

# Include any dependencies generated for this target.
include esp-idf/hal/CMakeFiles/__idf_hal.dir/depend.make

# Include the progress variables for this target.
include esp-idf/hal/CMakeFiles/__idf_hal.dir/progress.make

# Include the compile flags for this target's objects.
include esp-idf/hal/CMakeFiles/__idf_hal.dir/flags.make

esp-idf/hal/CMakeFiles/__idf_hal.dir/wdt_hal_iram.c.obj: esp-idf/hal/CMakeFiles/__idf_hal.dir/flags.make
esp-idf/hal/CMakeFiles/__idf_hal.dir/wdt_hal_iram.c.obj: D:/esp/esp-idf/components/hal/wdt_hal_iram.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\bootloader\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object esp-idf/hal/CMakeFiles/__idf_hal.dir/wdt_hal_iram.c.obj"
	cd /d E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\bootloader\esp-idf\hal && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\__idf_hal.dir\wdt_hal_iram.c.obj   -c D:\esp\esp-idf\components\hal\wdt_hal_iram.c

esp-idf/hal/CMakeFiles/__idf_hal.dir/wdt_hal_iram.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_hal.dir/wdt_hal_iram.c.i"
	cd /d E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\bootloader\esp-idf\hal && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E D:\esp\esp-idf\components\hal\wdt_hal_iram.c > CMakeFiles\__idf_hal.dir\wdt_hal_iram.c.i

esp-idf/hal/CMakeFiles/__idf_hal.dir/wdt_hal_iram.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_hal.dir/wdt_hal_iram.c.s"
	cd /d E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\bootloader\esp-idf\hal && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S D:\esp\esp-idf\components\hal\wdt_hal_iram.c -o CMakeFiles\__idf_hal.dir\wdt_hal_iram.c.s

esp-idf/hal/CMakeFiles/__idf_hal.dir/mpu_hal.c.obj: esp-idf/hal/CMakeFiles/__idf_hal.dir/flags.make
esp-idf/hal/CMakeFiles/__idf_hal.dir/mpu_hal.c.obj: D:/esp/esp-idf/components/hal/mpu_hal.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\bootloader\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object esp-idf/hal/CMakeFiles/__idf_hal.dir/mpu_hal.c.obj"
	cd /d E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\bootloader\esp-idf\hal && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\__idf_hal.dir\mpu_hal.c.obj   -c D:\esp\esp-idf\components\hal\mpu_hal.c

esp-idf/hal/CMakeFiles/__idf_hal.dir/mpu_hal.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_hal.dir/mpu_hal.c.i"
	cd /d E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\bootloader\esp-idf\hal && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E D:\esp\esp-idf\components\hal\mpu_hal.c > CMakeFiles\__idf_hal.dir\mpu_hal.c.i

esp-idf/hal/CMakeFiles/__idf_hal.dir/mpu_hal.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_hal.dir/mpu_hal.c.s"
	cd /d E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\bootloader\esp-idf\hal && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S D:\esp\esp-idf\components\hal\mpu_hal.c -o CMakeFiles\__idf_hal.dir\mpu_hal.c.s

# Object files for target __idf_hal
__idf_hal_OBJECTS = \
"CMakeFiles/__idf_hal.dir/wdt_hal_iram.c.obj" \
"CMakeFiles/__idf_hal.dir/mpu_hal.c.obj"

# External object files for target __idf_hal
__idf_hal_EXTERNAL_OBJECTS =

esp-idf/hal/libhal.a: esp-idf/hal/CMakeFiles/__idf_hal.dir/wdt_hal_iram.c.obj
esp-idf/hal/libhal.a: esp-idf/hal/CMakeFiles/__idf_hal.dir/mpu_hal.c.obj
esp-idf/hal/libhal.a: esp-idf/hal/CMakeFiles/__idf_hal.dir/build.make
esp-idf/hal/libhal.a: esp-idf/hal/CMakeFiles/__idf_hal.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\bootloader\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C static library libhal.a"
	cd /d E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\bootloader\esp-idf\hal && $(CMAKE_COMMAND) -P CMakeFiles\__idf_hal.dir\cmake_clean_target.cmake
	cd /d E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\bootloader\esp-idf\hal && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\__idf_hal.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
esp-idf/hal/CMakeFiles/__idf_hal.dir/build: esp-idf/hal/libhal.a

.PHONY : esp-idf/hal/CMakeFiles/__idf_hal.dir/build

esp-idf/hal/CMakeFiles/__idf_hal.dir/clean:
	cd /d E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\bootloader\esp-idf\hal && $(CMAKE_COMMAND) -P CMakeFiles\__idf_hal.dir\cmake_clean.cmake
.PHONY : esp-idf/hal/CMakeFiles/__idf_hal.dir/clean

esp-idf/hal/CMakeFiles/__idf_hal.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" D:\esp\esp-idf\components\bootloader\subproject D:\esp\esp-idf\components\hal E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\bootloader E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\bootloader\esp-idf\hal E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\bootloader\esp-idf\hal\CMakeFiles\__idf_hal.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : esp-idf/hal/CMakeFiles/__idf_hal.dir/depend

