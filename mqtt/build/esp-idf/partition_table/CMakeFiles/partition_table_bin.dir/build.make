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

# Utility rule file for partition_table_bin.

# Include the progress variables for this target.
include esp-idf/partition_table/CMakeFiles/partition_table_bin.dir/progress.make

esp-idf/partition_table/CMakeFiles/partition_table_bin: partition_table/partition-table.bin
esp-idf/partition_table/CMakeFiles/partition_table_bin: partition_table/partition-table.bin


partition_table/partition-table.bin: E:/EPS32/esp32_test/mqtt_20220110/mqtt/partitions.csv
partition_table/partition-table.bin: D:/esp/esp-idf/components/partition_table/gen_esp32part.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating ../../partition_table/partition-table.bin"
	cd /d E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\esp-idf\partition_table && python D:/esp/esp-idf/components/partition_table/gen_esp32part.py -q --offset 0x8000 --flash-size 4MB E:/EPS32/esp32_test/mqtt_20220110/mqtt/partitions.csv E:/EPS32/esp32_test/mqtt_20220110/mqtt/build/partition_table/partition-table.bin
	cd /d E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\esp-idf\partition_table && D:\esp\espressif\tools\cmake\3.16.4\bin\cmake.exe -E echo "Partition table binary generated. Contents:"
	cd /d E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\esp-idf\partition_table && D:\esp\espressif\tools\cmake\3.16.4\bin\cmake.exe -E echo *******************************************************************************
	cd /d E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\esp-idf\partition_table && python D:/esp/esp-idf/components/partition_table/gen_esp32part.py -q --offset 0x8000 --flash-size 4MB E:/EPS32/esp32_test/mqtt_20220110/mqtt/build/partition_table/partition-table.bin
	cd /d E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\esp-idf\partition_table && D:\esp\espressif\tools\cmake\3.16.4\bin\cmake.exe -E echo *******************************************************************************

partition_table_bin: esp-idf/partition_table/CMakeFiles/partition_table_bin
partition_table_bin: partition_table/partition-table.bin
partition_table_bin: esp-idf/partition_table/CMakeFiles/partition_table_bin.dir/build.make

.PHONY : partition_table_bin

# Rule to build all files generated by this target.
esp-idf/partition_table/CMakeFiles/partition_table_bin.dir/build: partition_table_bin

.PHONY : esp-idf/partition_table/CMakeFiles/partition_table_bin.dir/build

esp-idf/partition_table/CMakeFiles/partition_table_bin.dir/clean:
	cd /d E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\esp-idf\partition_table && $(CMAKE_COMMAND) -P CMakeFiles\partition_table_bin.dir\cmake_clean.cmake
.PHONY : esp-idf/partition_table/CMakeFiles/partition_table_bin.dir/clean

esp-idf/partition_table/CMakeFiles/partition_table_bin.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" E:\EPS32\esp32_test\mqtt_20220110\mqtt D:\esp\esp-idf\components\partition_table E:\EPS32\esp32_test\mqtt_20220110\mqtt\build E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\esp-idf\partition_table E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\esp-idf\partition_table\CMakeFiles\partition_table_bin.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : esp-idf/partition_table/CMakeFiles/partition_table_bin.dir/depend

