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
include esp-idf/esp_local_ctrl/CMakeFiles/__idf_esp_local_ctrl.dir/depend.make

# Include the progress variables for this target.
include esp-idf/esp_local_ctrl/CMakeFiles/__idf_esp_local_ctrl.dir/progress.make

# Include the compile flags for this target's objects.
include esp-idf/esp_local_ctrl/CMakeFiles/__idf_esp_local_ctrl.dir/flags.make

esp-idf/esp_local_ctrl/CMakeFiles/__idf_esp_local_ctrl.dir/src/esp_local_ctrl.c.obj: esp-idf/esp_local_ctrl/CMakeFiles/__idf_esp_local_ctrl.dir/flags.make
esp-idf/esp_local_ctrl/CMakeFiles/__idf_esp_local_ctrl.dir/src/esp_local_ctrl.c.obj: D:/esp/esp-idf/components/esp_local_ctrl/src/esp_local_ctrl.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object esp-idf/esp_local_ctrl/CMakeFiles/__idf_esp_local_ctrl.dir/src/esp_local_ctrl.c.obj"
	cd /d E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\esp-idf\esp_local_ctrl && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\__idf_esp_local_ctrl.dir\src\esp_local_ctrl.c.obj   -c D:\esp\esp-idf\components\esp_local_ctrl\src\esp_local_ctrl.c

esp-idf/esp_local_ctrl/CMakeFiles/__idf_esp_local_ctrl.dir/src/esp_local_ctrl.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_esp_local_ctrl.dir/src/esp_local_ctrl.c.i"
	cd /d E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\esp-idf\esp_local_ctrl && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E D:\esp\esp-idf\components\esp_local_ctrl\src\esp_local_ctrl.c > CMakeFiles\__idf_esp_local_ctrl.dir\src\esp_local_ctrl.c.i

esp-idf/esp_local_ctrl/CMakeFiles/__idf_esp_local_ctrl.dir/src/esp_local_ctrl.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_esp_local_ctrl.dir/src/esp_local_ctrl.c.s"
	cd /d E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\esp-idf\esp_local_ctrl && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S D:\esp\esp-idf\components\esp_local_ctrl\src\esp_local_ctrl.c -o CMakeFiles\__idf_esp_local_ctrl.dir\src\esp_local_ctrl.c.s

esp-idf/esp_local_ctrl/CMakeFiles/__idf_esp_local_ctrl.dir/src/esp_local_ctrl_handler.c.obj: esp-idf/esp_local_ctrl/CMakeFiles/__idf_esp_local_ctrl.dir/flags.make
esp-idf/esp_local_ctrl/CMakeFiles/__idf_esp_local_ctrl.dir/src/esp_local_ctrl_handler.c.obj: D:/esp/esp-idf/components/esp_local_ctrl/src/esp_local_ctrl_handler.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object esp-idf/esp_local_ctrl/CMakeFiles/__idf_esp_local_ctrl.dir/src/esp_local_ctrl_handler.c.obj"
	cd /d E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\esp-idf\esp_local_ctrl && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\__idf_esp_local_ctrl.dir\src\esp_local_ctrl_handler.c.obj   -c D:\esp\esp-idf\components\esp_local_ctrl\src\esp_local_ctrl_handler.c

esp-idf/esp_local_ctrl/CMakeFiles/__idf_esp_local_ctrl.dir/src/esp_local_ctrl_handler.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_esp_local_ctrl.dir/src/esp_local_ctrl_handler.c.i"
	cd /d E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\esp-idf\esp_local_ctrl && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E D:\esp\esp-idf\components\esp_local_ctrl\src\esp_local_ctrl_handler.c > CMakeFiles\__idf_esp_local_ctrl.dir\src\esp_local_ctrl_handler.c.i

esp-idf/esp_local_ctrl/CMakeFiles/__idf_esp_local_ctrl.dir/src/esp_local_ctrl_handler.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_esp_local_ctrl.dir/src/esp_local_ctrl_handler.c.s"
	cd /d E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\esp-idf\esp_local_ctrl && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S D:\esp\esp-idf\components\esp_local_ctrl\src\esp_local_ctrl_handler.c -o CMakeFiles\__idf_esp_local_ctrl.dir\src\esp_local_ctrl_handler.c.s

esp-idf/esp_local_ctrl/CMakeFiles/__idf_esp_local_ctrl.dir/proto-c/esp_local_ctrl.pb-c.c.obj: esp-idf/esp_local_ctrl/CMakeFiles/__idf_esp_local_ctrl.dir/flags.make
esp-idf/esp_local_ctrl/CMakeFiles/__idf_esp_local_ctrl.dir/proto-c/esp_local_ctrl.pb-c.c.obj: D:/esp/esp-idf/components/esp_local_ctrl/proto-c/esp_local_ctrl.pb-c.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object esp-idf/esp_local_ctrl/CMakeFiles/__idf_esp_local_ctrl.dir/proto-c/esp_local_ctrl.pb-c.c.obj"
	cd /d E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\esp-idf\esp_local_ctrl && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\__idf_esp_local_ctrl.dir\proto-c\esp_local_ctrl.pb-c.c.obj   -c D:\esp\esp-idf\components\esp_local_ctrl\proto-c\esp_local_ctrl.pb-c.c

esp-idf/esp_local_ctrl/CMakeFiles/__idf_esp_local_ctrl.dir/proto-c/esp_local_ctrl.pb-c.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_esp_local_ctrl.dir/proto-c/esp_local_ctrl.pb-c.c.i"
	cd /d E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\esp-idf\esp_local_ctrl && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E D:\esp\esp-idf\components\esp_local_ctrl\proto-c\esp_local_ctrl.pb-c.c > CMakeFiles\__idf_esp_local_ctrl.dir\proto-c\esp_local_ctrl.pb-c.c.i

esp-idf/esp_local_ctrl/CMakeFiles/__idf_esp_local_ctrl.dir/proto-c/esp_local_ctrl.pb-c.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_esp_local_ctrl.dir/proto-c/esp_local_ctrl.pb-c.c.s"
	cd /d E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\esp-idf\esp_local_ctrl && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S D:\esp\esp-idf\components\esp_local_ctrl\proto-c\esp_local_ctrl.pb-c.c -o CMakeFiles\__idf_esp_local_ctrl.dir\proto-c\esp_local_ctrl.pb-c.c.s

esp-idf/esp_local_ctrl/CMakeFiles/__idf_esp_local_ctrl.dir/src/esp_local_ctrl_transport_httpd.c.obj: esp-idf/esp_local_ctrl/CMakeFiles/__idf_esp_local_ctrl.dir/flags.make
esp-idf/esp_local_ctrl/CMakeFiles/__idf_esp_local_ctrl.dir/src/esp_local_ctrl_transport_httpd.c.obj: D:/esp/esp-idf/components/esp_local_ctrl/src/esp_local_ctrl_transport_httpd.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object esp-idf/esp_local_ctrl/CMakeFiles/__idf_esp_local_ctrl.dir/src/esp_local_ctrl_transport_httpd.c.obj"
	cd /d E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\esp-idf\esp_local_ctrl && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\__idf_esp_local_ctrl.dir\src\esp_local_ctrl_transport_httpd.c.obj   -c D:\esp\esp-idf\components\esp_local_ctrl\src\esp_local_ctrl_transport_httpd.c

esp-idf/esp_local_ctrl/CMakeFiles/__idf_esp_local_ctrl.dir/src/esp_local_ctrl_transport_httpd.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_esp_local_ctrl.dir/src/esp_local_ctrl_transport_httpd.c.i"
	cd /d E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\esp-idf\esp_local_ctrl && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E D:\esp\esp-idf\components\esp_local_ctrl\src\esp_local_ctrl_transport_httpd.c > CMakeFiles\__idf_esp_local_ctrl.dir\src\esp_local_ctrl_transport_httpd.c.i

esp-idf/esp_local_ctrl/CMakeFiles/__idf_esp_local_ctrl.dir/src/esp_local_ctrl_transport_httpd.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_esp_local_ctrl.dir/src/esp_local_ctrl_transport_httpd.c.s"
	cd /d E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\esp-idf\esp_local_ctrl && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S D:\esp\esp-idf\components\esp_local_ctrl\src\esp_local_ctrl_transport_httpd.c -o CMakeFiles\__idf_esp_local_ctrl.dir\src\esp_local_ctrl_transport_httpd.c.s

# Object files for target __idf_esp_local_ctrl
__idf_esp_local_ctrl_OBJECTS = \
"CMakeFiles/__idf_esp_local_ctrl.dir/src/esp_local_ctrl.c.obj" \
"CMakeFiles/__idf_esp_local_ctrl.dir/src/esp_local_ctrl_handler.c.obj" \
"CMakeFiles/__idf_esp_local_ctrl.dir/proto-c/esp_local_ctrl.pb-c.c.obj" \
"CMakeFiles/__idf_esp_local_ctrl.dir/src/esp_local_ctrl_transport_httpd.c.obj"

# External object files for target __idf_esp_local_ctrl
__idf_esp_local_ctrl_EXTERNAL_OBJECTS =

esp-idf/esp_local_ctrl/libesp_local_ctrl.a: esp-idf/esp_local_ctrl/CMakeFiles/__idf_esp_local_ctrl.dir/src/esp_local_ctrl.c.obj
esp-idf/esp_local_ctrl/libesp_local_ctrl.a: esp-idf/esp_local_ctrl/CMakeFiles/__idf_esp_local_ctrl.dir/src/esp_local_ctrl_handler.c.obj
esp-idf/esp_local_ctrl/libesp_local_ctrl.a: esp-idf/esp_local_ctrl/CMakeFiles/__idf_esp_local_ctrl.dir/proto-c/esp_local_ctrl.pb-c.c.obj
esp-idf/esp_local_ctrl/libesp_local_ctrl.a: esp-idf/esp_local_ctrl/CMakeFiles/__idf_esp_local_ctrl.dir/src/esp_local_ctrl_transport_httpd.c.obj
esp-idf/esp_local_ctrl/libesp_local_ctrl.a: esp-idf/esp_local_ctrl/CMakeFiles/__idf_esp_local_ctrl.dir/build.make
esp-idf/esp_local_ctrl/libesp_local_ctrl.a: esp-idf/esp_local_ctrl/CMakeFiles/__idf_esp_local_ctrl.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking C static library libesp_local_ctrl.a"
	cd /d E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\esp-idf\esp_local_ctrl && $(CMAKE_COMMAND) -P CMakeFiles\__idf_esp_local_ctrl.dir\cmake_clean_target.cmake
	cd /d E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\esp-idf\esp_local_ctrl && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\__idf_esp_local_ctrl.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
esp-idf/esp_local_ctrl/CMakeFiles/__idf_esp_local_ctrl.dir/build: esp-idf/esp_local_ctrl/libesp_local_ctrl.a

.PHONY : esp-idf/esp_local_ctrl/CMakeFiles/__idf_esp_local_ctrl.dir/build

esp-idf/esp_local_ctrl/CMakeFiles/__idf_esp_local_ctrl.dir/clean:
	cd /d E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\esp-idf\esp_local_ctrl && $(CMAKE_COMMAND) -P CMakeFiles\__idf_esp_local_ctrl.dir\cmake_clean.cmake
.PHONY : esp-idf/esp_local_ctrl/CMakeFiles/__idf_esp_local_ctrl.dir/clean

esp-idf/esp_local_ctrl/CMakeFiles/__idf_esp_local_ctrl.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" E:\EPS32\esp32_test\mqtt_20220110\mqtt D:\esp\esp-idf\components\esp_local_ctrl E:\EPS32\esp32_test\mqtt_20220110\mqtt\build E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\esp-idf\esp_local_ctrl E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\esp-idf\esp_local_ctrl\CMakeFiles\__idf_esp_local_ctrl.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : esp-idf/esp_local_ctrl/CMakeFiles/__idf_esp_local_ctrl.dir/depend

