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
include esp-idf/nvs_flash/CMakeFiles/__idf_nvs_flash.dir/depend.make

# Include the progress variables for this target.
include esp-idf/nvs_flash/CMakeFiles/__idf_nvs_flash.dir/progress.make

# Include the compile flags for this target's objects.
include esp-idf/nvs_flash/CMakeFiles/__idf_nvs_flash.dir/flags.make

esp-idf/nvs_flash/CMakeFiles/__idf_nvs_flash.dir/src/nvs_api.cpp.obj: esp-idf/nvs_flash/CMakeFiles/__idf_nvs_flash.dir/flags.make
esp-idf/nvs_flash/CMakeFiles/__idf_nvs_flash.dir/src/nvs_api.cpp.obj: D:/esp/esp-idf/components/nvs_flash/src/nvs_api.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object esp-idf/nvs_flash/CMakeFiles/__idf_nvs_flash.dir/src/nvs_api.cpp.obj"
	cd /d E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\esp-idf\nvs_flash && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\__idf_nvs_flash.dir\src\nvs_api.cpp.obj -c D:\esp\esp-idf\components\nvs_flash\src\nvs_api.cpp

esp-idf/nvs_flash/CMakeFiles/__idf_nvs_flash.dir/src/nvs_api.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/__idf_nvs_flash.dir/src/nvs_api.cpp.i"
	cd /d E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\esp-idf\nvs_flash && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\esp\esp-idf\components\nvs_flash\src\nvs_api.cpp > CMakeFiles\__idf_nvs_flash.dir\src\nvs_api.cpp.i

esp-idf/nvs_flash/CMakeFiles/__idf_nvs_flash.dir/src/nvs_api.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/__idf_nvs_flash.dir/src/nvs_api.cpp.s"
	cd /d E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\esp-idf\nvs_flash && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\esp\esp-idf\components\nvs_flash\src\nvs_api.cpp -o CMakeFiles\__idf_nvs_flash.dir\src\nvs_api.cpp.s

esp-idf/nvs_flash/CMakeFiles/__idf_nvs_flash.dir/src/nvs_cxx_api.cpp.obj: esp-idf/nvs_flash/CMakeFiles/__idf_nvs_flash.dir/flags.make
esp-idf/nvs_flash/CMakeFiles/__idf_nvs_flash.dir/src/nvs_cxx_api.cpp.obj: D:/esp/esp-idf/components/nvs_flash/src/nvs_cxx_api.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object esp-idf/nvs_flash/CMakeFiles/__idf_nvs_flash.dir/src/nvs_cxx_api.cpp.obj"
	cd /d E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\esp-idf\nvs_flash && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\__idf_nvs_flash.dir\src\nvs_cxx_api.cpp.obj -c D:\esp\esp-idf\components\nvs_flash\src\nvs_cxx_api.cpp

esp-idf/nvs_flash/CMakeFiles/__idf_nvs_flash.dir/src/nvs_cxx_api.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/__idf_nvs_flash.dir/src/nvs_cxx_api.cpp.i"
	cd /d E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\esp-idf\nvs_flash && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\esp\esp-idf\components\nvs_flash\src\nvs_cxx_api.cpp > CMakeFiles\__idf_nvs_flash.dir\src\nvs_cxx_api.cpp.i

esp-idf/nvs_flash/CMakeFiles/__idf_nvs_flash.dir/src/nvs_cxx_api.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/__idf_nvs_flash.dir/src/nvs_cxx_api.cpp.s"
	cd /d E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\esp-idf\nvs_flash && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\esp\esp-idf\components\nvs_flash\src\nvs_cxx_api.cpp -o CMakeFiles\__idf_nvs_flash.dir\src\nvs_cxx_api.cpp.s

esp-idf/nvs_flash/CMakeFiles/__idf_nvs_flash.dir/src/nvs_item_hash_list.cpp.obj: esp-idf/nvs_flash/CMakeFiles/__idf_nvs_flash.dir/flags.make
esp-idf/nvs_flash/CMakeFiles/__idf_nvs_flash.dir/src/nvs_item_hash_list.cpp.obj: D:/esp/esp-idf/components/nvs_flash/src/nvs_item_hash_list.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object esp-idf/nvs_flash/CMakeFiles/__idf_nvs_flash.dir/src/nvs_item_hash_list.cpp.obj"
	cd /d E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\esp-idf\nvs_flash && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\__idf_nvs_flash.dir\src\nvs_item_hash_list.cpp.obj -c D:\esp\esp-idf\components\nvs_flash\src\nvs_item_hash_list.cpp

esp-idf/nvs_flash/CMakeFiles/__idf_nvs_flash.dir/src/nvs_item_hash_list.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/__idf_nvs_flash.dir/src/nvs_item_hash_list.cpp.i"
	cd /d E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\esp-idf\nvs_flash && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\esp\esp-idf\components\nvs_flash\src\nvs_item_hash_list.cpp > CMakeFiles\__idf_nvs_flash.dir\src\nvs_item_hash_list.cpp.i

esp-idf/nvs_flash/CMakeFiles/__idf_nvs_flash.dir/src/nvs_item_hash_list.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/__idf_nvs_flash.dir/src/nvs_item_hash_list.cpp.s"
	cd /d E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\esp-idf\nvs_flash && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\esp\esp-idf\components\nvs_flash\src\nvs_item_hash_list.cpp -o CMakeFiles\__idf_nvs_flash.dir\src\nvs_item_hash_list.cpp.s

esp-idf/nvs_flash/CMakeFiles/__idf_nvs_flash.dir/src/nvs_page.cpp.obj: esp-idf/nvs_flash/CMakeFiles/__idf_nvs_flash.dir/flags.make
esp-idf/nvs_flash/CMakeFiles/__idf_nvs_flash.dir/src/nvs_page.cpp.obj: D:/esp/esp-idf/components/nvs_flash/src/nvs_page.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object esp-idf/nvs_flash/CMakeFiles/__idf_nvs_flash.dir/src/nvs_page.cpp.obj"
	cd /d E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\esp-idf\nvs_flash && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\__idf_nvs_flash.dir\src\nvs_page.cpp.obj -c D:\esp\esp-idf\components\nvs_flash\src\nvs_page.cpp

esp-idf/nvs_flash/CMakeFiles/__idf_nvs_flash.dir/src/nvs_page.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/__idf_nvs_flash.dir/src/nvs_page.cpp.i"
	cd /d E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\esp-idf\nvs_flash && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\esp\esp-idf\components\nvs_flash\src\nvs_page.cpp > CMakeFiles\__idf_nvs_flash.dir\src\nvs_page.cpp.i

esp-idf/nvs_flash/CMakeFiles/__idf_nvs_flash.dir/src/nvs_page.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/__idf_nvs_flash.dir/src/nvs_page.cpp.s"
	cd /d E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\esp-idf\nvs_flash && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\esp\esp-idf\components\nvs_flash\src\nvs_page.cpp -o CMakeFiles\__idf_nvs_flash.dir\src\nvs_page.cpp.s

esp-idf/nvs_flash/CMakeFiles/__idf_nvs_flash.dir/src/nvs_pagemanager.cpp.obj: esp-idf/nvs_flash/CMakeFiles/__idf_nvs_flash.dir/flags.make
esp-idf/nvs_flash/CMakeFiles/__idf_nvs_flash.dir/src/nvs_pagemanager.cpp.obj: D:/esp/esp-idf/components/nvs_flash/src/nvs_pagemanager.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object esp-idf/nvs_flash/CMakeFiles/__idf_nvs_flash.dir/src/nvs_pagemanager.cpp.obj"
	cd /d E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\esp-idf\nvs_flash && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\__idf_nvs_flash.dir\src\nvs_pagemanager.cpp.obj -c D:\esp\esp-idf\components\nvs_flash\src\nvs_pagemanager.cpp

esp-idf/nvs_flash/CMakeFiles/__idf_nvs_flash.dir/src/nvs_pagemanager.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/__idf_nvs_flash.dir/src/nvs_pagemanager.cpp.i"
	cd /d E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\esp-idf\nvs_flash && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\esp\esp-idf\components\nvs_flash\src\nvs_pagemanager.cpp > CMakeFiles\__idf_nvs_flash.dir\src\nvs_pagemanager.cpp.i

esp-idf/nvs_flash/CMakeFiles/__idf_nvs_flash.dir/src/nvs_pagemanager.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/__idf_nvs_flash.dir/src/nvs_pagemanager.cpp.s"
	cd /d E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\esp-idf\nvs_flash && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\esp\esp-idf\components\nvs_flash\src\nvs_pagemanager.cpp -o CMakeFiles\__idf_nvs_flash.dir\src\nvs_pagemanager.cpp.s

esp-idf/nvs_flash/CMakeFiles/__idf_nvs_flash.dir/src/nvs_storage.cpp.obj: esp-idf/nvs_flash/CMakeFiles/__idf_nvs_flash.dir/flags.make
esp-idf/nvs_flash/CMakeFiles/__idf_nvs_flash.dir/src/nvs_storage.cpp.obj: D:/esp/esp-idf/components/nvs_flash/src/nvs_storage.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object esp-idf/nvs_flash/CMakeFiles/__idf_nvs_flash.dir/src/nvs_storage.cpp.obj"
	cd /d E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\esp-idf\nvs_flash && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\__idf_nvs_flash.dir\src\nvs_storage.cpp.obj -c D:\esp\esp-idf\components\nvs_flash\src\nvs_storage.cpp

esp-idf/nvs_flash/CMakeFiles/__idf_nvs_flash.dir/src/nvs_storage.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/__idf_nvs_flash.dir/src/nvs_storage.cpp.i"
	cd /d E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\esp-idf\nvs_flash && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\esp\esp-idf\components\nvs_flash\src\nvs_storage.cpp > CMakeFiles\__idf_nvs_flash.dir\src\nvs_storage.cpp.i

esp-idf/nvs_flash/CMakeFiles/__idf_nvs_flash.dir/src/nvs_storage.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/__idf_nvs_flash.dir/src/nvs_storage.cpp.s"
	cd /d E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\esp-idf\nvs_flash && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\esp\esp-idf\components\nvs_flash\src\nvs_storage.cpp -o CMakeFiles\__idf_nvs_flash.dir\src\nvs_storage.cpp.s

esp-idf/nvs_flash/CMakeFiles/__idf_nvs_flash.dir/src/nvs_handle_simple.cpp.obj: esp-idf/nvs_flash/CMakeFiles/__idf_nvs_flash.dir/flags.make
esp-idf/nvs_flash/CMakeFiles/__idf_nvs_flash.dir/src/nvs_handle_simple.cpp.obj: D:/esp/esp-idf/components/nvs_flash/src/nvs_handle_simple.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object esp-idf/nvs_flash/CMakeFiles/__idf_nvs_flash.dir/src/nvs_handle_simple.cpp.obj"
	cd /d E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\esp-idf\nvs_flash && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\__idf_nvs_flash.dir\src\nvs_handle_simple.cpp.obj -c D:\esp\esp-idf\components\nvs_flash\src\nvs_handle_simple.cpp

esp-idf/nvs_flash/CMakeFiles/__idf_nvs_flash.dir/src/nvs_handle_simple.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/__idf_nvs_flash.dir/src/nvs_handle_simple.cpp.i"
	cd /d E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\esp-idf\nvs_flash && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\esp\esp-idf\components\nvs_flash\src\nvs_handle_simple.cpp > CMakeFiles\__idf_nvs_flash.dir\src\nvs_handle_simple.cpp.i

esp-idf/nvs_flash/CMakeFiles/__idf_nvs_flash.dir/src/nvs_handle_simple.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/__idf_nvs_flash.dir/src/nvs_handle_simple.cpp.s"
	cd /d E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\esp-idf\nvs_flash && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\esp\esp-idf\components\nvs_flash\src\nvs_handle_simple.cpp -o CMakeFiles\__idf_nvs_flash.dir\src\nvs_handle_simple.cpp.s

esp-idf/nvs_flash/CMakeFiles/__idf_nvs_flash.dir/src/nvs_handle_locked.cpp.obj: esp-idf/nvs_flash/CMakeFiles/__idf_nvs_flash.dir/flags.make
esp-idf/nvs_flash/CMakeFiles/__idf_nvs_flash.dir/src/nvs_handle_locked.cpp.obj: D:/esp/esp-idf/components/nvs_flash/src/nvs_handle_locked.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object esp-idf/nvs_flash/CMakeFiles/__idf_nvs_flash.dir/src/nvs_handle_locked.cpp.obj"
	cd /d E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\esp-idf\nvs_flash && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\__idf_nvs_flash.dir\src\nvs_handle_locked.cpp.obj -c D:\esp\esp-idf\components\nvs_flash\src\nvs_handle_locked.cpp

esp-idf/nvs_flash/CMakeFiles/__idf_nvs_flash.dir/src/nvs_handle_locked.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/__idf_nvs_flash.dir/src/nvs_handle_locked.cpp.i"
	cd /d E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\esp-idf\nvs_flash && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\esp\esp-idf\components\nvs_flash\src\nvs_handle_locked.cpp > CMakeFiles\__idf_nvs_flash.dir\src\nvs_handle_locked.cpp.i

esp-idf/nvs_flash/CMakeFiles/__idf_nvs_flash.dir/src/nvs_handle_locked.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/__idf_nvs_flash.dir/src/nvs_handle_locked.cpp.s"
	cd /d E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\esp-idf\nvs_flash && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\esp\esp-idf\components\nvs_flash\src\nvs_handle_locked.cpp -o CMakeFiles\__idf_nvs_flash.dir\src\nvs_handle_locked.cpp.s

esp-idf/nvs_flash/CMakeFiles/__idf_nvs_flash.dir/src/nvs_partition.cpp.obj: esp-idf/nvs_flash/CMakeFiles/__idf_nvs_flash.dir/flags.make
esp-idf/nvs_flash/CMakeFiles/__idf_nvs_flash.dir/src/nvs_partition.cpp.obj: D:/esp/esp-idf/components/nvs_flash/src/nvs_partition.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object esp-idf/nvs_flash/CMakeFiles/__idf_nvs_flash.dir/src/nvs_partition.cpp.obj"
	cd /d E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\esp-idf\nvs_flash && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\__idf_nvs_flash.dir\src\nvs_partition.cpp.obj -c D:\esp\esp-idf\components\nvs_flash\src\nvs_partition.cpp

esp-idf/nvs_flash/CMakeFiles/__idf_nvs_flash.dir/src/nvs_partition.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/__idf_nvs_flash.dir/src/nvs_partition.cpp.i"
	cd /d E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\esp-idf\nvs_flash && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\esp\esp-idf\components\nvs_flash\src\nvs_partition.cpp > CMakeFiles\__idf_nvs_flash.dir\src\nvs_partition.cpp.i

esp-idf/nvs_flash/CMakeFiles/__idf_nvs_flash.dir/src/nvs_partition.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/__idf_nvs_flash.dir/src/nvs_partition.cpp.s"
	cd /d E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\esp-idf\nvs_flash && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\esp\esp-idf\components\nvs_flash\src\nvs_partition.cpp -o CMakeFiles\__idf_nvs_flash.dir\src\nvs_partition.cpp.s

esp-idf/nvs_flash/CMakeFiles/__idf_nvs_flash.dir/src/nvs_partition_lookup.cpp.obj: esp-idf/nvs_flash/CMakeFiles/__idf_nvs_flash.dir/flags.make
esp-idf/nvs_flash/CMakeFiles/__idf_nvs_flash.dir/src/nvs_partition_lookup.cpp.obj: D:/esp/esp-idf/components/nvs_flash/src/nvs_partition_lookup.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object esp-idf/nvs_flash/CMakeFiles/__idf_nvs_flash.dir/src/nvs_partition_lookup.cpp.obj"
	cd /d E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\esp-idf\nvs_flash && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\__idf_nvs_flash.dir\src\nvs_partition_lookup.cpp.obj -c D:\esp\esp-idf\components\nvs_flash\src\nvs_partition_lookup.cpp

esp-idf/nvs_flash/CMakeFiles/__idf_nvs_flash.dir/src/nvs_partition_lookup.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/__idf_nvs_flash.dir/src/nvs_partition_lookup.cpp.i"
	cd /d E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\esp-idf\nvs_flash && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\esp\esp-idf\components\nvs_flash\src\nvs_partition_lookup.cpp > CMakeFiles\__idf_nvs_flash.dir\src\nvs_partition_lookup.cpp.i

esp-idf/nvs_flash/CMakeFiles/__idf_nvs_flash.dir/src/nvs_partition_lookup.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/__idf_nvs_flash.dir/src/nvs_partition_lookup.cpp.s"
	cd /d E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\esp-idf\nvs_flash && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\esp\esp-idf\components\nvs_flash\src\nvs_partition_lookup.cpp -o CMakeFiles\__idf_nvs_flash.dir\src\nvs_partition_lookup.cpp.s

esp-idf/nvs_flash/CMakeFiles/__idf_nvs_flash.dir/src/nvs_partition_manager.cpp.obj: esp-idf/nvs_flash/CMakeFiles/__idf_nvs_flash.dir/flags.make
esp-idf/nvs_flash/CMakeFiles/__idf_nvs_flash.dir/src/nvs_partition_manager.cpp.obj: D:/esp/esp-idf/components/nvs_flash/src/nvs_partition_manager.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object esp-idf/nvs_flash/CMakeFiles/__idf_nvs_flash.dir/src/nvs_partition_manager.cpp.obj"
	cd /d E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\esp-idf\nvs_flash && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\__idf_nvs_flash.dir\src\nvs_partition_manager.cpp.obj -c D:\esp\esp-idf\components\nvs_flash\src\nvs_partition_manager.cpp

esp-idf/nvs_flash/CMakeFiles/__idf_nvs_flash.dir/src/nvs_partition_manager.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/__idf_nvs_flash.dir/src/nvs_partition_manager.cpp.i"
	cd /d E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\esp-idf\nvs_flash && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\esp\esp-idf\components\nvs_flash\src\nvs_partition_manager.cpp > CMakeFiles\__idf_nvs_flash.dir\src\nvs_partition_manager.cpp.i

esp-idf/nvs_flash/CMakeFiles/__idf_nvs_flash.dir/src/nvs_partition_manager.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/__idf_nvs_flash.dir/src/nvs_partition_manager.cpp.s"
	cd /d E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\esp-idf\nvs_flash && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\esp\esp-idf\components\nvs_flash\src\nvs_partition_manager.cpp -o CMakeFiles\__idf_nvs_flash.dir\src\nvs_partition_manager.cpp.s

esp-idf/nvs_flash/CMakeFiles/__idf_nvs_flash.dir/src/nvs_types.cpp.obj: esp-idf/nvs_flash/CMakeFiles/__idf_nvs_flash.dir/flags.make
esp-idf/nvs_flash/CMakeFiles/__idf_nvs_flash.dir/src/nvs_types.cpp.obj: D:/esp/esp-idf/components/nvs_flash/src/nvs_types.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object esp-idf/nvs_flash/CMakeFiles/__idf_nvs_flash.dir/src/nvs_types.cpp.obj"
	cd /d E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\esp-idf\nvs_flash && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\__idf_nvs_flash.dir\src\nvs_types.cpp.obj -c D:\esp\esp-idf\components\nvs_flash\src\nvs_types.cpp

esp-idf/nvs_flash/CMakeFiles/__idf_nvs_flash.dir/src/nvs_types.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/__idf_nvs_flash.dir/src/nvs_types.cpp.i"
	cd /d E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\esp-idf\nvs_flash && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\esp\esp-idf\components\nvs_flash\src\nvs_types.cpp > CMakeFiles\__idf_nvs_flash.dir\src\nvs_types.cpp.i

esp-idf/nvs_flash/CMakeFiles/__idf_nvs_flash.dir/src/nvs_types.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/__idf_nvs_flash.dir/src/nvs_types.cpp.s"
	cd /d E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\esp-idf\nvs_flash && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\esp\esp-idf\components\nvs_flash\src\nvs_types.cpp -o CMakeFiles\__idf_nvs_flash.dir\src\nvs_types.cpp.s

# Object files for target __idf_nvs_flash
__idf_nvs_flash_OBJECTS = \
"CMakeFiles/__idf_nvs_flash.dir/src/nvs_api.cpp.obj" \
"CMakeFiles/__idf_nvs_flash.dir/src/nvs_cxx_api.cpp.obj" \
"CMakeFiles/__idf_nvs_flash.dir/src/nvs_item_hash_list.cpp.obj" \
"CMakeFiles/__idf_nvs_flash.dir/src/nvs_page.cpp.obj" \
"CMakeFiles/__idf_nvs_flash.dir/src/nvs_pagemanager.cpp.obj" \
"CMakeFiles/__idf_nvs_flash.dir/src/nvs_storage.cpp.obj" \
"CMakeFiles/__idf_nvs_flash.dir/src/nvs_handle_simple.cpp.obj" \
"CMakeFiles/__idf_nvs_flash.dir/src/nvs_handle_locked.cpp.obj" \
"CMakeFiles/__idf_nvs_flash.dir/src/nvs_partition.cpp.obj" \
"CMakeFiles/__idf_nvs_flash.dir/src/nvs_partition_lookup.cpp.obj" \
"CMakeFiles/__idf_nvs_flash.dir/src/nvs_partition_manager.cpp.obj" \
"CMakeFiles/__idf_nvs_flash.dir/src/nvs_types.cpp.obj"

# External object files for target __idf_nvs_flash
__idf_nvs_flash_EXTERNAL_OBJECTS =

esp-idf/nvs_flash/libnvs_flash.a: esp-idf/nvs_flash/CMakeFiles/__idf_nvs_flash.dir/src/nvs_api.cpp.obj
esp-idf/nvs_flash/libnvs_flash.a: esp-idf/nvs_flash/CMakeFiles/__idf_nvs_flash.dir/src/nvs_cxx_api.cpp.obj
esp-idf/nvs_flash/libnvs_flash.a: esp-idf/nvs_flash/CMakeFiles/__idf_nvs_flash.dir/src/nvs_item_hash_list.cpp.obj
esp-idf/nvs_flash/libnvs_flash.a: esp-idf/nvs_flash/CMakeFiles/__idf_nvs_flash.dir/src/nvs_page.cpp.obj
esp-idf/nvs_flash/libnvs_flash.a: esp-idf/nvs_flash/CMakeFiles/__idf_nvs_flash.dir/src/nvs_pagemanager.cpp.obj
esp-idf/nvs_flash/libnvs_flash.a: esp-idf/nvs_flash/CMakeFiles/__idf_nvs_flash.dir/src/nvs_storage.cpp.obj
esp-idf/nvs_flash/libnvs_flash.a: esp-idf/nvs_flash/CMakeFiles/__idf_nvs_flash.dir/src/nvs_handle_simple.cpp.obj
esp-idf/nvs_flash/libnvs_flash.a: esp-idf/nvs_flash/CMakeFiles/__idf_nvs_flash.dir/src/nvs_handle_locked.cpp.obj
esp-idf/nvs_flash/libnvs_flash.a: esp-idf/nvs_flash/CMakeFiles/__idf_nvs_flash.dir/src/nvs_partition.cpp.obj
esp-idf/nvs_flash/libnvs_flash.a: esp-idf/nvs_flash/CMakeFiles/__idf_nvs_flash.dir/src/nvs_partition_lookup.cpp.obj
esp-idf/nvs_flash/libnvs_flash.a: esp-idf/nvs_flash/CMakeFiles/__idf_nvs_flash.dir/src/nvs_partition_manager.cpp.obj
esp-idf/nvs_flash/libnvs_flash.a: esp-idf/nvs_flash/CMakeFiles/__idf_nvs_flash.dir/src/nvs_types.cpp.obj
esp-idf/nvs_flash/libnvs_flash.a: esp-idf/nvs_flash/CMakeFiles/__idf_nvs_flash.dir/build.make
esp-idf/nvs_flash/libnvs_flash.a: esp-idf/nvs_flash/CMakeFiles/__idf_nvs_flash.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Linking C static library libnvs_flash.a"
	cd /d E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\esp-idf\nvs_flash && $(CMAKE_COMMAND) -P CMakeFiles\__idf_nvs_flash.dir\cmake_clean_target.cmake
	cd /d E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\esp-idf\nvs_flash && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\__idf_nvs_flash.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
esp-idf/nvs_flash/CMakeFiles/__idf_nvs_flash.dir/build: esp-idf/nvs_flash/libnvs_flash.a

.PHONY : esp-idf/nvs_flash/CMakeFiles/__idf_nvs_flash.dir/build

esp-idf/nvs_flash/CMakeFiles/__idf_nvs_flash.dir/clean:
	cd /d E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\esp-idf\nvs_flash && $(CMAKE_COMMAND) -P CMakeFiles\__idf_nvs_flash.dir\cmake_clean.cmake
.PHONY : esp-idf/nvs_flash/CMakeFiles/__idf_nvs_flash.dir/clean

esp-idf/nvs_flash/CMakeFiles/__idf_nvs_flash.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" E:\EPS32\esp32_test\mqtt_20220110\mqtt D:\esp\esp-idf\components\nvs_flash E:\EPS32\esp32_test\mqtt_20220110\mqtt\build E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\esp-idf\nvs_flash E:\EPS32\esp32_test\mqtt_20220110\mqtt\build\esp-idf\nvs_flash\CMakeFiles\__idf_nvs_flash.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : esp-idf/nvs_flash/CMakeFiles/__idf_nvs_flash.dir/depend

