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
include esp-idf/https_req_weather/CMakeFiles/__idf_https_req_weather.dir/depend.make

# Include the progress variables for this target.
include esp-idf/https_req_weather/CMakeFiles/__idf_https_req_weather.dir/progress.make

# Include the compile flags for this target's objects.
include esp-idf/https_req_weather/CMakeFiles/__idf_https_req_weather.dir/flags.make

server_root_cert.pem.S: D:/esp/esp-idf/tools/cmake/scripts/data_file_embed_asm.cmake
server_root_cert.pem.S: ../components/https_req_weather/server_root_cert.pem
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating ../../server_root_cert.pem.S"
	D:\esp\espressif\tools\cmake\3.16.4\bin\cmake.exe -D DATA_FILE=E:/EPS32/esp32_test/ESP32/mqtt/components/https_req_weather/server_root_cert.pem -D SOURCE_FILE=E:/EPS32/esp32_test/ESP32/mqtt/cmake-build_debug/server_root_cert.pem.S -D FILE_TYPE=TEXT -P D:/esp/esp-idf/tools/cmake/scripts/data_file_embed_asm.cmake

esp-idf/https_req_weather/CMakeFiles/__idf_https_req_weather.dir/https_request.c.obj: esp-idf/https_req_weather/CMakeFiles/__idf_https_req_weather.dir/flags.make
esp-idf/https_req_weather/CMakeFiles/__idf_https_req_weather.dir/https_request.c.obj: ../components/https_req_weather/https_request.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object esp-idf/https_req_weather/CMakeFiles/__idf_https_req_weather.dir/https_request.c.obj"
	cd /d E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\esp-idf\https_req_weather && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\__idf_https_req_weather.dir\https_request.c.obj   -c E:\EPS32\esp32_test\ESP32\mqtt\components\https_req_weather\https_request.c

esp-idf/https_req_weather/CMakeFiles/__idf_https_req_weather.dir/https_request.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_https_req_weather.dir/https_request.c.i"
	cd /d E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\esp-idf\https_req_weather && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E E:\EPS32\esp32_test\ESP32\mqtt\components\https_req_weather\https_request.c > CMakeFiles\__idf_https_req_weather.dir\https_request.c.i

esp-idf/https_req_weather/CMakeFiles/__idf_https_req_weather.dir/https_request.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_https_req_weather.dir/https_request.c.s"
	cd /d E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\esp-idf\https_req_weather && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S E:\EPS32\esp32_test\ESP32\mqtt\components\https_req_weather\https_request.c -o CMakeFiles\__idf_https_req_weather.dir\https_request.c.s

esp-idf/https_req_weather/CMakeFiles/__idf_https_req_weather.dir/__/__/server_root_cert.pem.S.obj: esp-idf/https_req_weather/CMakeFiles/__idf_https_req_weather.dir/flags.make
esp-idf/https_req_weather/CMakeFiles/__idf_https_req_weather.dir/__/__/server_root_cert.pem.S.obj: server_root_cert.pem.S
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building ASM object esp-idf/https_req_weather/CMakeFiles/__idf_https_req_weather.dir/__/__/server_root_cert.pem.S.obj"
	cd /d E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\esp-idf\https_req_weather && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-gcc.exe $(ASM_DEFINES) $(ASM_INCLUDES) $(ASM_FLAGS) -o CMakeFiles\__idf_https_req_weather.dir\__\__\server_root_cert.pem.S.obj -c E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\server_root_cert.pem.S

# Object files for target __idf_https_req_weather
__idf_https_req_weather_OBJECTS = \
"CMakeFiles/__idf_https_req_weather.dir/https_request.c.obj" \
"CMakeFiles/__idf_https_req_weather.dir/__/__/server_root_cert.pem.S.obj"

# External object files for target __idf_https_req_weather
__idf_https_req_weather_EXTERNAL_OBJECTS =

esp-idf/https_req_weather/libhttps_req_weather.a: esp-idf/https_req_weather/CMakeFiles/__idf_https_req_weather.dir/https_request.c.obj
esp-idf/https_req_weather/libhttps_req_weather.a: esp-idf/https_req_weather/CMakeFiles/__idf_https_req_weather.dir/__/__/server_root_cert.pem.S.obj
esp-idf/https_req_weather/libhttps_req_weather.a: esp-idf/https_req_weather/CMakeFiles/__idf_https_req_weather.dir/build.make
esp-idf/https_req_weather/libhttps_req_weather.a: esp-idf/https_req_weather/CMakeFiles/__idf_https_req_weather.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking C static library libhttps_req_weather.a"
	cd /d E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\esp-idf\https_req_weather && $(CMAKE_COMMAND) -P CMakeFiles\__idf_https_req_weather.dir\cmake_clean_target.cmake
	cd /d E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\esp-idf\https_req_weather && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\__idf_https_req_weather.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
esp-idf/https_req_weather/CMakeFiles/__idf_https_req_weather.dir/build: esp-idf/https_req_weather/libhttps_req_weather.a

.PHONY : esp-idf/https_req_weather/CMakeFiles/__idf_https_req_weather.dir/build

esp-idf/https_req_weather/CMakeFiles/__idf_https_req_weather.dir/clean:
	cd /d E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\esp-idf\https_req_weather && $(CMAKE_COMMAND) -P CMakeFiles\__idf_https_req_weather.dir\cmake_clean.cmake
.PHONY : esp-idf/https_req_weather/CMakeFiles/__idf_https_req_weather.dir/clean

esp-idf/https_req_weather/CMakeFiles/__idf_https_req_weather.dir/depend: server_root_cert.pem.S
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" E:\EPS32\esp32_test\ESP32\mqtt E:\EPS32\esp32_test\ESP32\mqtt\components\https_req_weather E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\esp-idf\https_req_weather E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\esp-idf\https_req_weather\CMakeFiles\__idf_https_req_weather.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : esp-idf/https_req_weather/CMakeFiles/__idf_https_req_weather.dir/depend

