# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.19

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Disable VCS-based implicit rules.
% : %,v


# Disable VCS-based implicit rules.
% : RCS/%


# Disable VCS-based implicit rules.
% : RCS/%,v


# Disable VCS-based implicit rules.
% : SCCS/s.%


# Disable VCS-based implicit rules.
% : s.%


.SUFFIXES: .hpux_make_needs_suffix_list


# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "F:\Program Files\JetBrains\CLion 2021.1.3\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "F:\Program Files\JetBrains\CLion 2021.1.3\bin\cmake\win\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\wl\Desktop\esp32-demo\mqtt

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\wl\Desktop\esp32-demo\mqtt\cmake-build-debug

# Utility rule file for gen_project_binary.

# Include the progress variables for this target.
include CMakeFiles/gen_project_binary.dir/progress.make

CMakeFiles/gen_project_binary: .bin_timestamp


.bin_timestamp: mqtt_tcp.elf
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=C:\Users\wl\Desktop\esp32-demo\mqtt\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating binary image from built executable"
	G:\espressif\python_env\idf4.3_py3.8_env\Scripts\python.exe G:/esp-idf/components/esptool_py/esptool/esptool.py --chip esp32 elf2image --flash_mode dio --flash_freq 40m --flash_size 4MB --elf-sha256-offset 0xb0 -o C:/Users/wl/Desktop/esp32-demo/mqtt/cmake-build-debug/mqtt_tcp.bin C:/Users/wl/Desktop/esp32-demo/mqtt/cmake-build-debug/mqtt_tcp.elf
	"F:\Program Files\JetBrains\CLion 2021.1.3\bin\cmake\win\bin\cmake.exe" -E echo "Generated C:/Users/wl/Desktop/esp32-demo/mqtt/cmake-build-debug/mqtt_tcp.bin"
	"F:\Program Files\JetBrains\CLion 2021.1.3\bin\cmake\win\bin\cmake.exe" -E md5sum C:/Users/wl/Desktop/esp32-demo/mqtt/cmake-build-debug/mqtt_tcp.bin > C:/Users/wl/Desktop/esp32-demo/mqtt/cmake-build-debug/.bin_timestamp

gen_project_binary: .bin_timestamp
gen_project_binary: CMakeFiles/gen_project_binary
gen_project_binary: CMakeFiles/gen_project_binary.dir/build.make

.PHONY : gen_project_binary

# Rule to build all files generated by this target.
CMakeFiles/gen_project_binary.dir/build: gen_project_binary

.PHONY : CMakeFiles/gen_project_binary.dir/build

CMakeFiles/gen_project_binary.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\gen_project_binary.dir\cmake_clean.cmake
.PHONY : CMakeFiles/gen_project_binary.dir/clean

CMakeFiles/gen_project_binary.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\wl\Desktop\esp32-demo\mqtt C:\Users\wl\Desktop\esp32-demo\mqtt C:\Users\wl\Desktop\esp32-demo\mqtt\cmake-build-debug C:\Users\wl\Desktop\esp32-demo\mqtt\cmake-build-debug C:\Users\wl\Desktop\esp32-demo\mqtt\cmake-build-debug\CMakeFiles\gen_project_binary.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/gen_project_binary.dir/depend

