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
include esp-idf/esp_common/CMakeFiles/__idf_esp_common.dir/depend.make

# Include the progress variables for this target.
include esp-idf/esp_common/CMakeFiles/__idf_esp_common.dir/progress.make

# Include the compile flags for this target's objects.
include esp-idf/esp_common/CMakeFiles/__idf_esp_common.dir/flags.make

esp-idf/esp_common/CMakeFiles/__idf_esp_common.dir/src/brownout.c.obj: esp-idf/esp_common/CMakeFiles/__idf_esp_common.dir/flags.make
esp-idf/esp_common/CMakeFiles/__idf_esp_common.dir/src/brownout.c.obj: D:/esp/esp-idf/components/esp_common/src/brownout.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object esp-idf/esp_common/CMakeFiles/__idf_esp_common.dir/src/brownout.c.obj"
	cd /d E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\esp-idf\esp_common && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\__idf_esp_common.dir\src\brownout.c.obj   -c D:\esp\esp-idf\components\esp_common\src\brownout.c

esp-idf/esp_common/CMakeFiles/__idf_esp_common.dir/src/brownout.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_esp_common.dir/src/brownout.c.i"
	cd /d E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\esp-idf\esp_common && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E D:\esp\esp-idf\components\esp_common\src\brownout.c > CMakeFiles\__idf_esp_common.dir\src\brownout.c.i

esp-idf/esp_common/CMakeFiles/__idf_esp_common.dir/src/brownout.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_esp_common.dir/src/brownout.c.s"
	cd /d E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\esp-idf\esp_common && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S D:\esp\esp-idf\components\esp_common\src\brownout.c -o CMakeFiles\__idf_esp_common.dir\src\brownout.c.s

esp-idf/esp_common/CMakeFiles/__idf_esp_common.dir/src/esp_err.c.obj: esp-idf/esp_common/CMakeFiles/__idf_esp_common.dir/flags.make
esp-idf/esp_common/CMakeFiles/__idf_esp_common.dir/src/esp_err.c.obj: D:/esp/esp-idf/components/esp_common/src/esp_err.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object esp-idf/esp_common/CMakeFiles/__idf_esp_common.dir/src/esp_err.c.obj"
	cd /d E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\esp-idf\esp_common && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\__idf_esp_common.dir\src\esp_err.c.obj   -c D:\esp\esp-idf\components\esp_common\src\esp_err.c

esp-idf/esp_common/CMakeFiles/__idf_esp_common.dir/src/esp_err.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_esp_common.dir/src/esp_err.c.i"
	cd /d E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\esp-idf\esp_common && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E D:\esp\esp-idf\components\esp_common\src\esp_err.c > CMakeFiles\__idf_esp_common.dir\src\esp_err.c.i

esp-idf/esp_common/CMakeFiles/__idf_esp_common.dir/src/esp_err.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_esp_common.dir/src/esp_err.c.s"
	cd /d E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\esp-idf\esp_common && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S D:\esp\esp-idf\components\esp_common\src\esp_err.c -o CMakeFiles\__idf_esp_common.dir\src\esp_err.c.s

esp-idf/esp_common/CMakeFiles/__idf_esp_common.dir/src/esp_err_to_name.c.obj: esp-idf/esp_common/CMakeFiles/__idf_esp_common.dir/flags.make
esp-idf/esp_common/CMakeFiles/__idf_esp_common.dir/src/esp_err_to_name.c.obj: D:/esp/esp-idf/components/esp_common/src/esp_err_to_name.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object esp-idf/esp_common/CMakeFiles/__idf_esp_common.dir/src/esp_err_to_name.c.obj"
	cd /d E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\esp-idf\esp_common && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\__idf_esp_common.dir\src\esp_err_to_name.c.obj   -c D:\esp\esp-idf\components\esp_common\src\esp_err_to_name.c

esp-idf/esp_common/CMakeFiles/__idf_esp_common.dir/src/esp_err_to_name.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_esp_common.dir/src/esp_err_to_name.c.i"
	cd /d E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\esp-idf\esp_common && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E D:\esp\esp-idf\components\esp_common\src\esp_err_to_name.c > CMakeFiles\__idf_esp_common.dir\src\esp_err_to_name.c.i

esp-idf/esp_common/CMakeFiles/__idf_esp_common.dir/src/esp_err_to_name.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_esp_common.dir/src/esp_err_to_name.c.s"
	cd /d E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\esp-idf\esp_common && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S D:\esp\esp-idf\components\esp_common\src\esp_err_to_name.c -o CMakeFiles\__idf_esp_common.dir\src\esp_err_to_name.c.s

esp-idf/esp_common/CMakeFiles/__idf_esp_common.dir/src/freertos_hooks.c.obj: esp-idf/esp_common/CMakeFiles/__idf_esp_common.dir/flags.make
esp-idf/esp_common/CMakeFiles/__idf_esp_common.dir/src/freertos_hooks.c.obj: D:/esp/esp-idf/components/esp_common/src/freertos_hooks.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object esp-idf/esp_common/CMakeFiles/__idf_esp_common.dir/src/freertos_hooks.c.obj"
	cd /d E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\esp-idf\esp_common && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\__idf_esp_common.dir\src\freertos_hooks.c.obj   -c D:\esp\esp-idf\components\esp_common\src\freertos_hooks.c

esp-idf/esp_common/CMakeFiles/__idf_esp_common.dir/src/freertos_hooks.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_esp_common.dir/src/freertos_hooks.c.i"
	cd /d E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\esp-idf\esp_common && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E D:\esp\esp-idf\components\esp_common\src\freertos_hooks.c > CMakeFiles\__idf_esp_common.dir\src\freertos_hooks.c.i

esp-idf/esp_common/CMakeFiles/__idf_esp_common.dir/src/freertos_hooks.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_esp_common.dir/src/freertos_hooks.c.s"
	cd /d E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\esp-idf\esp_common && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S D:\esp\esp-idf\components\esp_common\src\freertos_hooks.c -o CMakeFiles\__idf_esp_common.dir\src\freertos_hooks.c.s

esp-idf/esp_common/CMakeFiles/__idf_esp_common.dir/src/mac_addr.c.obj: esp-idf/esp_common/CMakeFiles/__idf_esp_common.dir/flags.make
esp-idf/esp_common/CMakeFiles/__idf_esp_common.dir/src/mac_addr.c.obj: D:/esp/esp-idf/components/esp_common/src/mac_addr.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object esp-idf/esp_common/CMakeFiles/__idf_esp_common.dir/src/mac_addr.c.obj"
	cd /d E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\esp-idf\esp_common && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\__idf_esp_common.dir\src\mac_addr.c.obj   -c D:\esp\esp-idf\components\esp_common\src\mac_addr.c

esp-idf/esp_common/CMakeFiles/__idf_esp_common.dir/src/mac_addr.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_esp_common.dir/src/mac_addr.c.i"
	cd /d E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\esp-idf\esp_common && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E D:\esp\esp-idf\components\esp_common\src\mac_addr.c > CMakeFiles\__idf_esp_common.dir\src\mac_addr.c.i

esp-idf/esp_common/CMakeFiles/__idf_esp_common.dir/src/mac_addr.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_esp_common.dir/src/mac_addr.c.s"
	cd /d E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\esp-idf\esp_common && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S D:\esp\esp-idf\components\esp_common\src\mac_addr.c -o CMakeFiles\__idf_esp_common.dir\src\mac_addr.c.s

esp-idf/esp_common/CMakeFiles/__idf_esp_common.dir/src/stack_check.c.obj: esp-idf/esp_common/CMakeFiles/__idf_esp_common.dir/flags.make
esp-idf/esp_common/CMakeFiles/__idf_esp_common.dir/src/stack_check.c.obj: D:/esp/esp-idf/components/esp_common/src/stack_check.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object esp-idf/esp_common/CMakeFiles/__idf_esp_common.dir/src/stack_check.c.obj"
	cd /d E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\esp-idf\esp_common && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -fno-stack-protector -o CMakeFiles\__idf_esp_common.dir\src\stack_check.c.obj   -c D:\esp\esp-idf\components\esp_common\src\stack_check.c

esp-idf/esp_common/CMakeFiles/__idf_esp_common.dir/src/stack_check.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_esp_common.dir/src/stack_check.c.i"
	cd /d E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\esp-idf\esp_common && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -fno-stack-protector -E D:\esp\esp-idf\components\esp_common\src\stack_check.c > CMakeFiles\__idf_esp_common.dir\src\stack_check.c.i

esp-idf/esp_common/CMakeFiles/__idf_esp_common.dir/src/stack_check.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_esp_common.dir/src/stack_check.c.s"
	cd /d E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\esp-idf\esp_common && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -fno-stack-protector -S D:\esp\esp-idf\components\esp_common\src\stack_check.c -o CMakeFiles\__idf_esp_common.dir\src\stack_check.c.s

esp-idf/esp_common/CMakeFiles/__idf_esp_common.dir/src/task_wdt.c.obj: esp-idf/esp_common/CMakeFiles/__idf_esp_common.dir/flags.make
esp-idf/esp_common/CMakeFiles/__idf_esp_common.dir/src/task_wdt.c.obj: D:/esp/esp-idf/components/esp_common/src/task_wdt.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object esp-idf/esp_common/CMakeFiles/__idf_esp_common.dir/src/task_wdt.c.obj"
	cd /d E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\esp-idf\esp_common && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\__idf_esp_common.dir\src\task_wdt.c.obj   -c D:\esp\esp-idf\components\esp_common\src\task_wdt.c

esp-idf/esp_common/CMakeFiles/__idf_esp_common.dir/src/task_wdt.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_esp_common.dir/src/task_wdt.c.i"
	cd /d E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\esp-idf\esp_common && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E D:\esp\esp-idf\components\esp_common\src\task_wdt.c > CMakeFiles\__idf_esp_common.dir\src\task_wdt.c.i

esp-idf/esp_common/CMakeFiles/__idf_esp_common.dir/src/task_wdt.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_esp_common.dir/src/task_wdt.c.s"
	cd /d E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\esp-idf\esp_common && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S D:\esp\esp-idf\components\esp_common\src\task_wdt.c -o CMakeFiles\__idf_esp_common.dir\src\task_wdt.c.s

esp-idf/esp_common/CMakeFiles/__idf_esp_common.dir/src/int_wdt.c.obj: esp-idf/esp_common/CMakeFiles/__idf_esp_common.dir/flags.make
esp-idf/esp_common/CMakeFiles/__idf_esp_common.dir/src/int_wdt.c.obj: D:/esp/esp-idf/components/esp_common/src/int_wdt.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building C object esp-idf/esp_common/CMakeFiles/__idf_esp_common.dir/src/int_wdt.c.obj"
	cd /d E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\esp-idf\esp_common && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\__idf_esp_common.dir\src\int_wdt.c.obj   -c D:\esp\esp-idf\components\esp_common\src\int_wdt.c

esp-idf/esp_common/CMakeFiles/__idf_esp_common.dir/src/int_wdt.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_esp_common.dir/src/int_wdt.c.i"
	cd /d E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\esp-idf\esp_common && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E D:\esp\esp-idf\components\esp_common\src\int_wdt.c > CMakeFiles\__idf_esp_common.dir\src\int_wdt.c.i

esp-idf/esp_common/CMakeFiles/__idf_esp_common.dir/src/int_wdt.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_esp_common.dir/src/int_wdt.c.s"
	cd /d E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\esp-idf\esp_common && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S D:\esp\esp-idf\components\esp_common\src\int_wdt.c -o CMakeFiles\__idf_esp_common.dir\src\int_wdt.c.s

esp-idf/esp_common/CMakeFiles/__idf_esp_common.dir/src/dbg_stubs.c.obj: esp-idf/esp_common/CMakeFiles/__idf_esp_common.dir/flags.make
esp-idf/esp_common/CMakeFiles/__idf_esp_common.dir/src/dbg_stubs.c.obj: D:/esp/esp-idf/components/esp_common/src/dbg_stubs.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building C object esp-idf/esp_common/CMakeFiles/__idf_esp_common.dir/src/dbg_stubs.c.obj"
	cd /d E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\esp-idf\esp_common && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\__idf_esp_common.dir\src\dbg_stubs.c.obj   -c D:\esp\esp-idf\components\esp_common\src\dbg_stubs.c

esp-idf/esp_common/CMakeFiles/__idf_esp_common.dir/src/dbg_stubs.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_esp_common.dir/src/dbg_stubs.c.i"
	cd /d E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\esp-idf\esp_common && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E D:\esp\esp-idf\components\esp_common\src\dbg_stubs.c > CMakeFiles\__idf_esp_common.dir\src\dbg_stubs.c.i

esp-idf/esp_common/CMakeFiles/__idf_esp_common.dir/src/dbg_stubs.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_esp_common.dir/src/dbg_stubs.c.s"
	cd /d E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\esp-idf\esp_common && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S D:\esp\esp-idf\components\esp_common\src\dbg_stubs.c -o CMakeFiles\__idf_esp_common.dir\src\dbg_stubs.c.s

# Object files for target __idf_esp_common
__idf_esp_common_OBJECTS = \
"CMakeFiles/__idf_esp_common.dir/src/brownout.c.obj" \
"CMakeFiles/__idf_esp_common.dir/src/esp_err.c.obj" \
"CMakeFiles/__idf_esp_common.dir/src/esp_err_to_name.c.obj" \
"CMakeFiles/__idf_esp_common.dir/src/freertos_hooks.c.obj" \
"CMakeFiles/__idf_esp_common.dir/src/mac_addr.c.obj" \
"CMakeFiles/__idf_esp_common.dir/src/stack_check.c.obj" \
"CMakeFiles/__idf_esp_common.dir/src/task_wdt.c.obj" \
"CMakeFiles/__idf_esp_common.dir/src/int_wdt.c.obj" \
"CMakeFiles/__idf_esp_common.dir/src/dbg_stubs.c.obj"

# External object files for target __idf_esp_common
__idf_esp_common_EXTERNAL_OBJECTS =

esp-idf/esp_common/libesp_common.a: esp-idf/esp_common/CMakeFiles/__idf_esp_common.dir/src/brownout.c.obj
esp-idf/esp_common/libesp_common.a: esp-idf/esp_common/CMakeFiles/__idf_esp_common.dir/src/esp_err.c.obj
esp-idf/esp_common/libesp_common.a: esp-idf/esp_common/CMakeFiles/__idf_esp_common.dir/src/esp_err_to_name.c.obj
esp-idf/esp_common/libesp_common.a: esp-idf/esp_common/CMakeFiles/__idf_esp_common.dir/src/freertos_hooks.c.obj
esp-idf/esp_common/libesp_common.a: esp-idf/esp_common/CMakeFiles/__idf_esp_common.dir/src/mac_addr.c.obj
esp-idf/esp_common/libesp_common.a: esp-idf/esp_common/CMakeFiles/__idf_esp_common.dir/src/stack_check.c.obj
esp-idf/esp_common/libesp_common.a: esp-idf/esp_common/CMakeFiles/__idf_esp_common.dir/src/task_wdt.c.obj
esp-idf/esp_common/libesp_common.a: esp-idf/esp_common/CMakeFiles/__idf_esp_common.dir/src/int_wdt.c.obj
esp-idf/esp_common/libesp_common.a: esp-idf/esp_common/CMakeFiles/__idf_esp_common.dir/src/dbg_stubs.c.obj
esp-idf/esp_common/libesp_common.a: esp-idf/esp_common/CMakeFiles/__idf_esp_common.dir/build.make
esp-idf/esp_common/libesp_common.a: esp-idf/esp_common/CMakeFiles/__idf_esp_common.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Linking C static library libesp_common.a"
	cd /d E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\esp-idf\esp_common && $(CMAKE_COMMAND) -P CMakeFiles\__idf_esp_common.dir\cmake_clean_target.cmake
	cd /d E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\esp-idf\esp_common && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\__idf_esp_common.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
esp-idf/esp_common/CMakeFiles/__idf_esp_common.dir/build: esp-idf/esp_common/libesp_common.a

.PHONY : esp-idf/esp_common/CMakeFiles/__idf_esp_common.dir/build

esp-idf/esp_common/CMakeFiles/__idf_esp_common.dir/clean:
	cd /d E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\esp-idf\esp_common && $(CMAKE_COMMAND) -P CMakeFiles\__idf_esp_common.dir\cmake_clean.cmake
.PHONY : esp-idf/esp_common/CMakeFiles/__idf_esp_common.dir/clean

esp-idf/esp_common/CMakeFiles/__idf_esp_common.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" E:\EPS32\esp32_test\ESP32\mqtt D:\esp\esp-idf\components\esp_common E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\esp-idf\esp_common E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\esp-idf\esp_common\CMakeFiles\__idf_esp_common.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : esp-idf/esp_common/CMakeFiles/__idf_esp_common.dir/depend

