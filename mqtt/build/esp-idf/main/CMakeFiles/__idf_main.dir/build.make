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
include esp-idf/main/CMakeFiles/__idf_main.dir/depend.make

# Include the progress variables for this target.
include esp-idf/main/CMakeFiles/__idf_main.dir/progress.make

# Include the compile flags for this target's objects.
include esp-idf/main/CMakeFiles/__idf_main.dir/flags.make

esp-idf/main/CMakeFiles/__idf_main.dir/app_main.c.obj: esp-idf/main/CMakeFiles/__idf_main.dir/flags.make
esp-idf/main/CMakeFiles/__idf_main.dir/app_main.c.obj: ../main/app_main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object esp-idf/main/CMakeFiles/__idf_main.dir/app_main.c.obj"
	cd /d E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\esp-idf\main && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\__idf_main.dir\app_main.c.obj   -c E:\EPS32\esp32_test\mqtt_20220110\mqtt\main\app_main.c

esp-idf/main/CMakeFiles/__idf_main.dir/app_main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_main.dir/app_main.c.i"
	cd /d E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\esp-idf\main && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E E:\EPS32\esp32_test\mqtt_20220110\mqtt\main\app_main.c > CMakeFiles\__idf_main.dir\app_main.c.i

esp-idf/main/CMakeFiles/__idf_main.dir/app_main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_main.dir/app_main.c.s"
	cd /d E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\esp-idf\main && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S E:\EPS32\esp32_test\mqtt_20220110\mqtt\main\app_main.c -o CMakeFiles\__idf_main.dir\app_main.c.s

esp-idf/main/CMakeFiles/__idf_main.dir/app_mqtt.c.obj: esp-idf/main/CMakeFiles/__idf_main.dir/flags.make
esp-idf/main/CMakeFiles/__idf_main.dir/app_mqtt.c.obj: ../main/app_mqtt.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object esp-idf/main/CMakeFiles/__idf_main.dir/app_mqtt.c.obj"
	cd /d E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\esp-idf\main && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\__idf_main.dir\app_mqtt.c.obj   -c E:\EPS32\esp32_test\mqtt_20220110\mqtt\main\app_mqtt.c

esp-idf/main/CMakeFiles/__idf_main.dir/app_mqtt.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_main.dir/app_mqtt.c.i"
	cd /d E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\esp-idf\main && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E E:\EPS32\esp32_test\mqtt_20220110\mqtt\main\app_mqtt.c > CMakeFiles\__idf_main.dir\app_mqtt.c.i

esp-idf/main/CMakeFiles/__idf_main.dir/app_mqtt.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_main.dir/app_mqtt.c.s"
	cd /d E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\esp-idf\main && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S E:\EPS32\esp32_test\mqtt_20220110\mqtt\main\app_mqtt.c -o CMakeFiles\__idf_main.dir\app_mqtt.c.s

esp-idf/main/CMakeFiles/__idf_main.dir/__/nvs/nvs_kv.c.obj: esp-idf/main/CMakeFiles/__idf_main.dir/flags.make
esp-idf/main/CMakeFiles/__idf_main.dir/__/nvs/nvs_kv.c.obj: ../nvs/nvs_kv.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object esp-idf/main/CMakeFiles/__idf_main.dir/__/nvs/nvs_kv.c.obj"
	cd /d E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\esp-idf\main && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\__idf_main.dir\__\nvs\nvs_kv.c.obj   -c E:\EPS32\esp32_test\mqtt_20220110\mqtt\nvs\nvs_kv.c

esp-idf/main/CMakeFiles/__idf_main.dir/__/nvs/nvs_kv.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_main.dir/__/nvs/nvs_kv.c.i"
	cd /d E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\esp-idf\main && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E E:\EPS32\esp32_test\mqtt_20220110\mqtt\nvs\nvs_kv.c > CMakeFiles\__idf_main.dir\__\nvs\nvs_kv.c.i

esp-idf/main/CMakeFiles/__idf_main.dir/__/nvs/nvs_kv.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_main.dir/__/nvs/nvs_kv.c.s"
	cd /d E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\esp-idf\main && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S E:\EPS32\esp32_test\mqtt_20220110\mqtt\nvs\nvs_kv.c -o CMakeFiles\__idf_main.dir\__\nvs\nvs_kv.c.s

esp-idf/main/CMakeFiles/__idf_main.dir/__/timer_demo/esp_timer_demo.c.obj: esp-idf/main/CMakeFiles/__idf_main.dir/flags.make
esp-idf/main/CMakeFiles/__idf_main.dir/__/timer_demo/esp_timer_demo.c.obj: ../timer_demo/esp_timer_demo.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object esp-idf/main/CMakeFiles/__idf_main.dir/__/timer_demo/esp_timer_demo.c.obj"
	cd /d E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\esp-idf\main && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\__idf_main.dir\__\timer_demo\esp_timer_demo.c.obj   -c E:\EPS32\esp32_test\mqtt_20220110\mqtt\timer_demo\esp_timer_demo.c

esp-idf/main/CMakeFiles/__idf_main.dir/__/timer_demo/esp_timer_demo.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_main.dir/__/timer_demo/esp_timer_demo.c.i"
	cd /d E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\esp-idf\main && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E E:\EPS32\esp32_test\mqtt_20220110\mqtt\timer_demo\esp_timer_demo.c > CMakeFiles\__idf_main.dir\__\timer_demo\esp_timer_demo.c.i

esp-idf/main/CMakeFiles/__idf_main.dir/__/timer_demo/esp_timer_demo.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_main.dir/__/timer_demo/esp_timer_demo.c.s"
	cd /d E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\esp-idf\main && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S E:\EPS32\esp32_test\mqtt_20220110\mqtt\timer_demo\esp_timer_demo.c -o CMakeFiles\__idf_main.dir\__\timer_demo\esp_timer_demo.c.s

esp-idf/main/CMakeFiles/__idf_main.dir/__/ATT7053/ATT7053.c.obj: esp-idf/main/CMakeFiles/__idf_main.dir/flags.make
esp-idf/main/CMakeFiles/__idf_main.dir/__/ATT7053/ATT7053.c.obj: ../ATT7053/ATT7053.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object esp-idf/main/CMakeFiles/__idf_main.dir/__/ATT7053/ATT7053.c.obj"
	cd /d E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\esp-idf\main && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\__idf_main.dir\__\ATT7053\ATT7053.c.obj   -c E:\EPS32\esp32_test\mqtt_20220110\mqtt\ATT7053\ATT7053.c

esp-idf/main/CMakeFiles/__idf_main.dir/__/ATT7053/ATT7053.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_main.dir/__/ATT7053/ATT7053.c.i"
	cd /d E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\esp-idf\main && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E E:\EPS32\esp32_test\mqtt_20220110\mqtt\ATT7053\ATT7053.c > CMakeFiles\__idf_main.dir\__\ATT7053\ATT7053.c.i

esp-idf/main/CMakeFiles/__idf_main.dir/__/ATT7053/ATT7053.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_main.dir/__/ATT7053/ATT7053.c.s"
	cd /d E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\esp-idf\main && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S E:\EPS32\esp32_test\mqtt_20220110\mqtt\ATT7053\ATT7053.c -o CMakeFiles\__idf_main.dir\__\ATT7053\ATT7053.c.s

esp-idf/main/CMakeFiles/__idf_main.dir/__/smart_config/smartconfig.c.obj: esp-idf/main/CMakeFiles/__idf_main.dir/flags.make
esp-idf/main/CMakeFiles/__idf_main.dir/__/smart_config/smartconfig.c.obj: ../smart_config/smartconfig.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object esp-idf/main/CMakeFiles/__idf_main.dir/__/smart_config/smartconfig.c.obj"
	cd /d E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\esp-idf\main && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\__idf_main.dir\__\smart_config\smartconfig.c.obj   -c E:\EPS32\esp32_test\mqtt_20220110\mqtt\smart_config\smartconfig.c

esp-idf/main/CMakeFiles/__idf_main.dir/__/smart_config/smartconfig.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_main.dir/__/smart_config/smartconfig.c.i"
	cd /d E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\esp-idf\main && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E E:\EPS32\esp32_test\mqtt_20220110\mqtt\smart_config\smartconfig.c > CMakeFiles\__idf_main.dir\__\smart_config\smartconfig.c.i

esp-idf/main/CMakeFiles/__idf_main.dir/__/smart_config/smartconfig.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_main.dir/__/smart_config/smartconfig.c.s"
	cd /d E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\esp-idf\main && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S E:\EPS32\esp32_test\mqtt_20220110\mqtt\smart_config\smartconfig.c -o CMakeFiles\__idf_main.dir\__\smart_config\smartconfig.c.s

# Object files for target __idf_main
__idf_main_OBJECTS = \
"CMakeFiles/__idf_main.dir/app_main.c.obj" \
"CMakeFiles/__idf_main.dir/app_mqtt.c.obj" \
"CMakeFiles/__idf_main.dir/__/nvs/nvs_kv.c.obj" \
"CMakeFiles/__idf_main.dir/__/timer_demo/esp_timer_demo.c.obj" \
"CMakeFiles/__idf_main.dir/__/ATT7053/ATT7053.c.obj" \
"CMakeFiles/__idf_main.dir/__/smart_config/smartconfig.c.obj"

# External object files for target __idf_main
__idf_main_EXTERNAL_OBJECTS =

esp-idf/main/libmain.a: esp-idf/main/CMakeFiles/__idf_main.dir/app_main.c.obj
esp-idf/main/libmain.a: esp-idf/main/CMakeFiles/__idf_main.dir/app_mqtt.c.obj
esp-idf/main/libmain.a: esp-idf/main/CMakeFiles/__idf_main.dir/__/nvs/nvs_kv.c.obj
esp-idf/main/libmain.a: esp-idf/main/CMakeFiles/__idf_main.dir/__/timer_demo/esp_timer_demo.c.obj
esp-idf/main/libmain.a: esp-idf/main/CMakeFiles/__idf_main.dir/__/ATT7053/ATT7053.c.obj
esp-idf/main/libmain.a: esp-idf/main/CMakeFiles/__idf_main.dir/__/smart_config/smartconfig.c.obj
esp-idf/main/libmain.a: esp-idf/main/CMakeFiles/__idf_main.dir/build.make
esp-idf/main/libmain.a: esp-idf/main/CMakeFiles/__idf_main.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Linking C static library libmain.a"
	cd /d E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\esp-idf\main && $(CMAKE_COMMAND) -P CMakeFiles\__idf_main.dir\cmake_clean_target.cmake
	cd /d E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\esp-idf\main && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\__idf_main.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
esp-idf/main/CMakeFiles/__idf_main.dir/build: esp-idf/main/libmain.a

.PHONY : esp-idf/main/CMakeFiles/__idf_main.dir/build

esp-idf/main/CMakeFiles/__idf_main.dir/clean:
	cd /d E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\esp-idf\main && $(CMAKE_COMMAND) -P CMakeFiles\__idf_main.dir\cmake_clean.cmake
.PHONY : esp-idf/main/CMakeFiles/__idf_main.dir/clean

esp-idf/main/CMakeFiles/__idf_main.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" E:\EPS32\esp32_test\mqtt_20220110\mqtt E:\EPS32\esp32_test\mqtt_20220110\mqtt\main E:\EPS32\esp32_test\mqtt_20220110\mqtt\build E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\esp-idf\main E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\esp-idf\main\CMakeFiles\__idf_main.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : esp-idf/main/CMakeFiles/__idf_main.dir/depend
