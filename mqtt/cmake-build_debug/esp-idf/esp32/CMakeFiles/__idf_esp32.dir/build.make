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
include esp-idf/esp32/CMakeFiles/__idf_esp32.dir/depend.make

# Include the progress variables for this target.
include esp-idf/esp32/CMakeFiles/__idf_esp32.dir/progress.make

# Include the compile flags for this target's objects.
include esp-idf/esp32/CMakeFiles/__idf_esp32.dir/flags.make

esp-idf/esp32/CMakeFiles/__idf_esp32.dir/cache_err_int.c.obj: esp-idf/esp32/CMakeFiles/__idf_esp32.dir/flags.make
esp-idf/esp32/CMakeFiles/__idf_esp32.dir/cache_err_int.c.obj: D:/esp/esp-idf/components/esp32/cache_err_int.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object esp-idf/esp32/CMakeFiles/__idf_esp32.dir/cache_err_int.c.obj"
	cd /d E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\esp-idf\esp32 && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\__idf_esp32.dir\cache_err_int.c.obj   -c D:\esp\esp-idf\components\esp32\cache_err_int.c

esp-idf/esp32/CMakeFiles/__idf_esp32.dir/cache_err_int.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_esp32.dir/cache_err_int.c.i"
	cd /d E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\esp-idf\esp32 && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E D:\esp\esp-idf\components\esp32\cache_err_int.c > CMakeFiles\__idf_esp32.dir\cache_err_int.c.i

esp-idf/esp32/CMakeFiles/__idf_esp32.dir/cache_err_int.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_esp32.dir/cache_err_int.c.s"
	cd /d E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\esp-idf\esp32 && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S D:\esp\esp-idf\components\esp32\cache_err_int.c -o CMakeFiles\__idf_esp32.dir\cache_err_int.c.s

esp-idf/esp32/CMakeFiles/__idf_esp32.dir/cache_sram_mmu.c.obj: esp-idf/esp32/CMakeFiles/__idf_esp32.dir/flags.make
esp-idf/esp32/CMakeFiles/__idf_esp32.dir/cache_sram_mmu.c.obj: D:/esp/esp-idf/components/esp32/cache_sram_mmu.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object esp-idf/esp32/CMakeFiles/__idf_esp32.dir/cache_sram_mmu.c.obj"
	cd /d E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\esp-idf\esp32 && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\__idf_esp32.dir\cache_sram_mmu.c.obj   -c D:\esp\esp-idf\components\esp32\cache_sram_mmu.c

esp-idf/esp32/CMakeFiles/__idf_esp32.dir/cache_sram_mmu.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_esp32.dir/cache_sram_mmu.c.i"
	cd /d E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\esp-idf\esp32 && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E D:\esp\esp-idf\components\esp32\cache_sram_mmu.c > CMakeFiles\__idf_esp32.dir\cache_sram_mmu.c.i

esp-idf/esp32/CMakeFiles/__idf_esp32.dir/cache_sram_mmu.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_esp32.dir/cache_sram_mmu.c.s"
	cd /d E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\esp-idf\esp32 && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S D:\esp\esp-idf\components\esp32\cache_sram_mmu.c -o CMakeFiles\__idf_esp32.dir\cache_sram_mmu.c.s

esp-idf/esp32/CMakeFiles/__idf_esp32.dir/clk.c.obj: esp-idf/esp32/CMakeFiles/__idf_esp32.dir/flags.make
esp-idf/esp32/CMakeFiles/__idf_esp32.dir/clk.c.obj: D:/esp/esp-idf/components/esp32/clk.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object esp-idf/esp32/CMakeFiles/__idf_esp32.dir/clk.c.obj"
	cd /d E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\esp-idf\esp32 && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\__idf_esp32.dir\clk.c.obj   -c D:\esp\esp-idf\components\esp32\clk.c

esp-idf/esp32/CMakeFiles/__idf_esp32.dir/clk.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_esp32.dir/clk.c.i"
	cd /d E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\esp-idf\esp32 && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E D:\esp\esp-idf\components\esp32\clk.c > CMakeFiles\__idf_esp32.dir\clk.c.i

esp-idf/esp32/CMakeFiles/__idf_esp32.dir/clk.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_esp32.dir/clk.c.s"
	cd /d E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\esp-idf\esp32 && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S D:\esp\esp-idf\components\esp32\clk.c -o CMakeFiles\__idf_esp32.dir\clk.c.s

esp-idf/esp32/CMakeFiles/__idf_esp32.dir/crosscore_int.c.obj: esp-idf/esp32/CMakeFiles/__idf_esp32.dir/flags.make
esp-idf/esp32/CMakeFiles/__idf_esp32.dir/crosscore_int.c.obj: D:/esp/esp-idf/components/esp32/crosscore_int.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object esp-idf/esp32/CMakeFiles/__idf_esp32.dir/crosscore_int.c.obj"
	cd /d E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\esp-idf\esp32 && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\__idf_esp32.dir\crosscore_int.c.obj   -c D:\esp\esp-idf\components\esp32\crosscore_int.c

esp-idf/esp32/CMakeFiles/__idf_esp32.dir/crosscore_int.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_esp32.dir/crosscore_int.c.i"
	cd /d E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\esp-idf\esp32 && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E D:\esp\esp-idf\components\esp32\crosscore_int.c > CMakeFiles\__idf_esp32.dir\crosscore_int.c.i

esp-idf/esp32/CMakeFiles/__idf_esp32.dir/crosscore_int.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_esp32.dir/crosscore_int.c.s"
	cd /d E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\esp-idf\esp32 && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S D:\esp\esp-idf\components\esp32\crosscore_int.c -o CMakeFiles\__idf_esp32.dir\crosscore_int.c.s

esp-idf/esp32/CMakeFiles/__idf_esp32.dir/dport_access.c.obj: esp-idf/esp32/CMakeFiles/__idf_esp32.dir/flags.make
esp-idf/esp32/CMakeFiles/__idf_esp32.dir/dport_access.c.obj: D:/esp/esp-idf/components/esp32/dport_access.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object esp-idf/esp32/CMakeFiles/__idf_esp32.dir/dport_access.c.obj"
	cd /d E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\esp-idf\esp32 && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\__idf_esp32.dir\dport_access.c.obj   -c D:\esp\esp-idf\components\esp32\dport_access.c

esp-idf/esp32/CMakeFiles/__idf_esp32.dir/dport_access.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_esp32.dir/dport_access.c.i"
	cd /d E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\esp-idf\esp32 && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E D:\esp\esp-idf\components\esp32\dport_access.c > CMakeFiles\__idf_esp32.dir\dport_access.c.i

esp-idf/esp32/CMakeFiles/__idf_esp32.dir/dport_access.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_esp32.dir/dport_access.c.s"
	cd /d E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\esp-idf\esp32 && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S D:\esp\esp-idf\components\esp32\dport_access.c -o CMakeFiles\__idf_esp32.dir\dport_access.c.s

esp-idf/esp32/CMakeFiles/__idf_esp32.dir/esp_himem.c.obj: esp-idf/esp32/CMakeFiles/__idf_esp32.dir/flags.make
esp-idf/esp32/CMakeFiles/__idf_esp32.dir/esp_himem.c.obj: D:/esp/esp-idf/components/esp32/esp_himem.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object esp-idf/esp32/CMakeFiles/__idf_esp32.dir/esp_himem.c.obj"
	cd /d E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\esp-idf\esp32 && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\__idf_esp32.dir\esp_himem.c.obj   -c D:\esp\esp-idf\components\esp32\esp_himem.c

esp-idf/esp32/CMakeFiles/__idf_esp32.dir/esp_himem.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_esp32.dir/esp_himem.c.i"
	cd /d E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\esp-idf\esp32 && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E D:\esp\esp-idf\components\esp32\esp_himem.c > CMakeFiles\__idf_esp32.dir\esp_himem.c.i

esp-idf/esp32/CMakeFiles/__idf_esp32.dir/esp_himem.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_esp32.dir/esp_himem.c.s"
	cd /d E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\esp-idf\esp32 && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S D:\esp\esp-idf\components\esp32\esp_himem.c -o CMakeFiles\__idf_esp32.dir\esp_himem.c.s

esp-idf/esp32/CMakeFiles/__idf_esp32.dir/hw_random.c.obj: esp-idf/esp32/CMakeFiles/__idf_esp32.dir/flags.make
esp-idf/esp32/CMakeFiles/__idf_esp32.dir/hw_random.c.obj: D:/esp/esp-idf/components/esp32/hw_random.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object esp-idf/esp32/CMakeFiles/__idf_esp32.dir/hw_random.c.obj"
	cd /d E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\esp-idf\esp32 && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\__idf_esp32.dir\hw_random.c.obj   -c D:\esp\esp-idf\components\esp32\hw_random.c

esp-idf/esp32/CMakeFiles/__idf_esp32.dir/hw_random.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_esp32.dir/hw_random.c.i"
	cd /d E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\esp-idf\esp32 && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E D:\esp\esp-idf\components\esp32\hw_random.c > CMakeFiles\__idf_esp32.dir\hw_random.c.i

esp-idf/esp32/CMakeFiles/__idf_esp32.dir/hw_random.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_esp32.dir/hw_random.c.s"
	cd /d E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\esp-idf\esp32 && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S D:\esp\esp-idf\components\esp32\hw_random.c -o CMakeFiles\__idf_esp32.dir\hw_random.c.s

esp-idf/esp32/CMakeFiles/__idf_esp32.dir/spiram.c.obj: esp-idf/esp32/CMakeFiles/__idf_esp32.dir/flags.make
esp-idf/esp32/CMakeFiles/__idf_esp32.dir/spiram.c.obj: D:/esp/esp-idf/components/esp32/spiram.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building C object esp-idf/esp32/CMakeFiles/__idf_esp32.dir/spiram.c.obj"
	cd /d E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\esp-idf\esp32 && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\__idf_esp32.dir\spiram.c.obj   -c D:\esp\esp-idf\components\esp32\spiram.c

esp-idf/esp32/CMakeFiles/__idf_esp32.dir/spiram.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_esp32.dir/spiram.c.i"
	cd /d E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\esp-idf\esp32 && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E D:\esp\esp-idf\components\esp32\spiram.c > CMakeFiles\__idf_esp32.dir\spiram.c.i

esp-idf/esp32/CMakeFiles/__idf_esp32.dir/spiram.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_esp32.dir/spiram.c.s"
	cd /d E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\esp-idf\esp32 && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S D:\esp\esp-idf\components\esp32\spiram.c -o CMakeFiles\__idf_esp32.dir\spiram.c.s

esp-idf/esp32/CMakeFiles/__idf_esp32.dir/spiram_psram.c.obj: esp-idf/esp32/CMakeFiles/__idf_esp32.dir/flags.make
esp-idf/esp32/CMakeFiles/__idf_esp32.dir/spiram_psram.c.obj: D:/esp/esp-idf/components/esp32/spiram_psram.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building C object esp-idf/esp32/CMakeFiles/__idf_esp32.dir/spiram_psram.c.obj"
	cd /d E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\esp-idf\esp32 && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\__idf_esp32.dir\spiram_psram.c.obj   -c D:\esp\esp-idf\components\esp32\spiram_psram.c

esp-idf/esp32/CMakeFiles/__idf_esp32.dir/spiram_psram.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_esp32.dir/spiram_psram.c.i"
	cd /d E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\esp-idf\esp32 && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E D:\esp\esp-idf\components\esp32\spiram_psram.c > CMakeFiles\__idf_esp32.dir\spiram_psram.c.i

esp-idf/esp32/CMakeFiles/__idf_esp32.dir/spiram_psram.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_esp32.dir/spiram_psram.c.s"
	cd /d E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\esp-idf\esp32 && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S D:\esp\esp-idf\components\esp32\spiram_psram.c -o CMakeFiles\__idf_esp32.dir\spiram_psram.c.s

esp-idf/esp32/CMakeFiles/__idf_esp32.dir/system_api_esp32.c.obj: esp-idf/esp32/CMakeFiles/__idf_esp32.dir/flags.make
esp-idf/esp32/CMakeFiles/__idf_esp32.dir/system_api_esp32.c.obj: D:/esp/esp-idf/components/esp32/system_api_esp32.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building C object esp-idf/esp32/CMakeFiles/__idf_esp32.dir/system_api_esp32.c.obj"
	cd /d E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\esp-idf\esp32 && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\__idf_esp32.dir\system_api_esp32.c.obj   -c D:\esp\esp-idf\components\esp32\system_api_esp32.c

esp-idf/esp32/CMakeFiles/__idf_esp32.dir/system_api_esp32.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_esp32.dir/system_api_esp32.c.i"
	cd /d E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\esp-idf\esp32 && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E D:\esp\esp-idf\components\esp32\system_api_esp32.c > CMakeFiles\__idf_esp32.dir\system_api_esp32.c.i

esp-idf/esp32/CMakeFiles/__idf_esp32.dir/system_api_esp32.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_esp32.dir/system_api_esp32.c.s"
	cd /d E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\esp-idf\esp32 && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S D:\esp\esp-idf\components\esp32\system_api_esp32.c -o CMakeFiles\__idf_esp32.dir\system_api_esp32.c.s

# Object files for target __idf_esp32
__idf_esp32_OBJECTS = \
"CMakeFiles/__idf_esp32.dir/cache_err_int.c.obj" \
"CMakeFiles/__idf_esp32.dir/cache_sram_mmu.c.obj" \
"CMakeFiles/__idf_esp32.dir/clk.c.obj" \
"CMakeFiles/__idf_esp32.dir/crosscore_int.c.obj" \
"CMakeFiles/__idf_esp32.dir/dport_access.c.obj" \
"CMakeFiles/__idf_esp32.dir/esp_himem.c.obj" \
"CMakeFiles/__idf_esp32.dir/hw_random.c.obj" \
"CMakeFiles/__idf_esp32.dir/spiram.c.obj" \
"CMakeFiles/__idf_esp32.dir/spiram_psram.c.obj" \
"CMakeFiles/__idf_esp32.dir/system_api_esp32.c.obj"

# External object files for target __idf_esp32
__idf_esp32_EXTERNAL_OBJECTS =

esp-idf/esp32/libesp32.a: esp-idf/esp32/CMakeFiles/__idf_esp32.dir/cache_err_int.c.obj
esp-idf/esp32/libesp32.a: esp-idf/esp32/CMakeFiles/__idf_esp32.dir/cache_sram_mmu.c.obj
esp-idf/esp32/libesp32.a: esp-idf/esp32/CMakeFiles/__idf_esp32.dir/clk.c.obj
esp-idf/esp32/libesp32.a: esp-idf/esp32/CMakeFiles/__idf_esp32.dir/crosscore_int.c.obj
esp-idf/esp32/libesp32.a: esp-idf/esp32/CMakeFiles/__idf_esp32.dir/dport_access.c.obj
esp-idf/esp32/libesp32.a: esp-idf/esp32/CMakeFiles/__idf_esp32.dir/esp_himem.c.obj
esp-idf/esp32/libesp32.a: esp-idf/esp32/CMakeFiles/__idf_esp32.dir/hw_random.c.obj
esp-idf/esp32/libesp32.a: esp-idf/esp32/CMakeFiles/__idf_esp32.dir/spiram.c.obj
esp-idf/esp32/libesp32.a: esp-idf/esp32/CMakeFiles/__idf_esp32.dir/spiram_psram.c.obj
esp-idf/esp32/libesp32.a: esp-idf/esp32/CMakeFiles/__idf_esp32.dir/system_api_esp32.c.obj
esp-idf/esp32/libesp32.a: esp-idf/esp32/CMakeFiles/__idf_esp32.dir/build.make
esp-idf/esp32/libesp32.a: esp-idf/esp32/CMakeFiles/__idf_esp32.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Linking C static library libesp32.a"
	cd /d E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\esp-idf\esp32 && $(CMAKE_COMMAND) -P CMakeFiles\__idf_esp32.dir\cmake_clean_target.cmake
	cd /d E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\esp-idf\esp32 && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\__idf_esp32.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
esp-idf/esp32/CMakeFiles/__idf_esp32.dir/build: esp-idf/esp32/libesp32.a

.PHONY : esp-idf/esp32/CMakeFiles/__idf_esp32.dir/build

esp-idf/esp32/CMakeFiles/__idf_esp32.dir/clean:
	cd /d E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\esp-idf\esp32 && $(CMAKE_COMMAND) -P CMakeFiles\__idf_esp32.dir\cmake_clean.cmake
.PHONY : esp-idf/esp32/CMakeFiles/__idf_esp32.dir/clean

esp-idf/esp32/CMakeFiles/__idf_esp32.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" E:\EPS32\esp32_test\ESP32\mqtt D:\esp\esp-idf\components\esp32 E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\esp-idf\esp32 E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\esp-idf\esp32\CMakeFiles\__idf_esp32.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : esp-idf/esp32/CMakeFiles/__idf_esp32.dir/depend

