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

# Utility rule file for menuconfig.

# Include the progress variables for this target.
include CMakeFiles/menuconfig.dir/progress.make

CMakeFiles/menuconfig:
	python D:/esp/esp-idf/tools/kconfig_new/prepare_kconfig_files.py --env-file E:/EPS32/esp32_test/ESP32/mqtt/cmake-build_debug/config.env
	python D:/esp/esp-idf/tools/kconfig_new/confgen.py --kconfig D:/esp/esp-idf/Kconfig --sdkconfig-rename D:/esp/esp-idf/sdkconfig.rename --config E:/EPS32/esp32_test/ESP32/mqtt/sdkconfig --defaults E:/EPS32/esp32_test/ESP32/mqtt/sdkconfig.defaults --env-file E:/EPS32/esp32_test/ESP32/mqtt/cmake-build_debug/config.env --env IDF_TARGET=esp32 --env IDF_ENV_FPGA= --dont-write-deprecated --output config E:/EPS32/esp32_test/ESP32/mqtt/sdkconfig
	python D:/esp/esp-idf/tools/check_term.py
	D:\esp\espressif\tools\cmake\3.16.4\bin\cmake.exe -E env COMPONENT_KCONFIGS_SOURCE_FILE=E:/EPS32/esp32_test/ESP32/mqtt/cmake-build_debug/kconfigs.in COMPONENT_KCONFIGS_PROJBUILD_SOURCE_FILE=E:/EPS32/esp32_test/ESP32/mqtt/cmake-build_debug/kconfigs_projbuild.in IDF_CMAKE=y KCONFIG_CONFIG=E:/EPS32/esp32_test/ESP32/mqtt/sdkconfig IDF_TARGET=esp32 IDF_ENV_FPGA= python -m menuconfig D:/esp/esp-idf/Kconfig
	python D:/esp/esp-idf/tools/kconfig_new/confgen.py --kconfig D:/esp/esp-idf/Kconfig --sdkconfig-rename D:/esp/esp-idf/sdkconfig.rename --config E:/EPS32/esp32_test/ESP32/mqtt/sdkconfig --defaults E:/EPS32/esp32_test/ESP32/mqtt/sdkconfig.defaults --env-file E:/EPS32/esp32_test/ESP32/mqtt/cmake-build_debug/config.env --env IDF_TARGET=esp32 --env IDF_ENV_FPGA= --output config E:/EPS32/esp32_test/ESP32/mqtt/sdkconfig

menuconfig: CMakeFiles/menuconfig
menuconfig: CMakeFiles/menuconfig.dir/build.make

.PHONY : menuconfig

# Rule to build all files generated by this target.
CMakeFiles/menuconfig.dir/build: menuconfig

.PHONY : CMakeFiles/menuconfig.dir/build

CMakeFiles/menuconfig.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\menuconfig.dir\cmake_clean.cmake
.PHONY : CMakeFiles/menuconfig.dir/clean

CMakeFiles/menuconfig.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" E:\EPS32\esp32_test\ESP32\mqtt E:\EPS32\esp32_test\ESP32\mqtt E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\CMakeFiles\menuconfig.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/menuconfig.dir/depend

