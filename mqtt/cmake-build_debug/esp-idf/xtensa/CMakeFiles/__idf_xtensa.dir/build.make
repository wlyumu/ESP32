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
include esp-idf/xtensa/CMakeFiles/__idf_xtensa.dir/depend.make

# Include the progress variables for this target.
include esp-idf/xtensa/CMakeFiles/__idf_xtensa.dir/progress.make

# Include the compile flags for this target's objects.
include esp-idf/xtensa/CMakeFiles/__idf_xtensa.dir/flags.make

esp-idf/xtensa/CMakeFiles/__idf_xtensa.dir/debug_helpers.c.obj: esp-idf/xtensa/CMakeFiles/__idf_xtensa.dir/flags.make
esp-idf/xtensa/CMakeFiles/__idf_xtensa.dir/debug_helpers.c.obj: D:/esp/esp-idf/components/xtensa/debug_helpers.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object esp-idf/xtensa/CMakeFiles/__idf_xtensa.dir/debug_helpers.c.obj"
	cd /d E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\esp-idf\xtensa && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\__idf_xtensa.dir\debug_helpers.c.obj   -c D:\esp\esp-idf\components\xtensa\debug_helpers.c

esp-idf/xtensa/CMakeFiles/__idf_xtensa.dir/debug_helpers.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_xtensa.dir/debug_helpers.c.i"
	cd /d E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\esp-idf\xtensa && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E D:\esp\esp-idf\components\xtensa\debug_helpers.c > CMakeFiles\__idf_xtensa.dir\debug_helpers.c.i

esp-idf/xtensa/CMakeFiles/__idf_xtensa.dir/debug_helpers.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_xtensa.dir/debug_helpers.c.s"
	cd /d E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\esp-idf\xtensa && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S D:\esp\esp-idf\components\xtensa\debug_helpers.c -o CMakeFiles\__idf_xtensa.dir\debug_helpers.c.s

esp-idf/xtensa/CMakeFiles/__idf_xtensa.dir/debug_helpers_asm.S.obj: esp-idf/xtensa/CMakeFiles/__idf_xtensa.dir/flags.make
esp-idf/xtensa/CMakeFiles/__idf_xtensa.dir/debug_helpers_asm.S.obj: D:/esp/esp-idf/components/xtensa/debug_helpers_asm.S
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building ASM object esp-idf/xtensa/CMakeFiles/__idf_xtensa.dir/debug_helpers_asm.S.obj"
	cd /d E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\esp-idf\xtensa && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-gcc.exe $(ASM_DEFINES) $(ASM_INCLUDES) $(ASM_FLAGS) -o CMakeFiles\__idf_xtensa.dir\debug_helpers_asm.S.obj -c D:\esp\esp-idf\components\xtensa\debug_helpers_asm.S

esp-idf/xtensa/CMakeFiles/__idf_xtensa.dir/expression_with_stack_xtensa.c.obj: esp-idf/xtensa/CMakeFiles/__idf_xtensa.dir/flags.make
esp-idf/xtensa/CMakeFiles/__idf_xtensa.dir/expression_with_stack_xtensa.c.obj: D:/esp/esp-idf/components/xtensa/expression_with_stack_xtensa.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object esp-idf/xtensa/CMakeFiles/__idf_xtensa.dir/expression_with_stack_xtensa.c.obj"
	cd /d E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\esp-idf\xtensa && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\__idf_xtensa.dir\expression_with_stack_xtensa.c.obj   -c D:\esp\esp-idf\components\xtensa\expression_with_stack_xtensa.c

esp-idf/xtensa/CMakeFiles/__idf_xtensa.dir/expression_with_stack_xtensa.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_xtensa.dir/expression_with_stack_xtensa.c.i"
	cd /d E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\esp-idf\xtensa && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E D:\esp\esp-idf\components\xtensa\expression_with_stack_xtensa.c > CMakeFiles\__idf_xtensa.dir\expression_with_stack_xtensa.c.i

esp-idf/xtensa/CMakeFiles/__idf_xtensa.dir/expression_with_stack_xtensa.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_xtensa.dir/expression_with_stack_xtensa.c.s"
	cd /d E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\esp-idf\xtensa && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S D:\esp\esp-idf\components\xtensa\expression_with_stack_xtensa.c -o CMakeFiles\__idf_xtensa.dir\expression_with_stack_xtensa.c.s

esp-idf/xtensa/CMakeFiles/__idf_xtensa.dir/expression_with_stack_xtensa_asm.S.obj: esp-idf/xtensa/CMakeFiles/__idf_xtensa.dir/flags.make
esp-idf/xtensa/CMakeFiles/__idf_xtensa.dir/expression_with_stack_xtensa_asm.S.obj: D:/esp/esp-idf/components/xtensa/expression_with_stack_xtensa_asm.S
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building ASM object esp-idf/xtensa/CMakeFiles/__idf_xtensa.dir/expression_with_stack_xtensa_asm.S.obj"
	cd /d E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\esp-idf\xtensa && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-gcc.exe $(ASM_DEFINES) $(ASM_INCLUDES) $(ASM_FLAGS) -o CMakeFiles\__idf_xtensa.dir\expression_with_stack_xtensa_asm.S.obj -c D:\esp\esp-idf\components\xtensa\expression_with_stack_xtensa_asm.S

esp-idf/xtensa/CMakeFiles/__idf_xtensa.dir/eri.c.obj: esp-idf/xtensa/CMakeFiles/__idf_xtensa.dir/flags.make
esp-idf/xtensa/CMakeFiles/__idf_xtensa.dir/eri.c.obj: D:/esp/esp-idf/components/xtensa/eri.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object esp-idf/xtensa/CMakeFiles/__idf_xtensa.dir/eri.c.obj"
	cd /d E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\esp-idf\xtensa && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\__idf_xtensa.dir\eri.c.obj   -c D:\esp\esp-idf\components\xtensa\eri.c

esp-idf/xtensa/CMakeFiles/__idf_xtensa.dir/eri.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_xtensa.dir/eri.c.i"
	cd /d E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\esp-idf\xtensa && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E D:\esp\esp-idf\components\xtensa\eri.c > CMakeFiles\__idf_xtensa.dir\eri.c.i

esp-idf/xtensa/CMakeFiles/__idf_xtensa.dir/eri.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_xtensa.dir/eri.c.s"
	cd /d E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\esp-idf\xtensa && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S D:\esp\esp-idf\components\xtensa\eri.c -o CMakeFiles\__idf_xtensa.dir\eri.c.s

esp-idf/xtensa/CMakeFiles/__idf_xtensa.dir/trax.c.obj: esp-idf/xtensa/CMakeFiles/__idf_xtensa.dir/flags.make
esp-idf/xtensa/CMakeFiles/__idf_xtensa.dir/trax.c.obj: D:/esp/esp-idf/components/xtensa/trax.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object esp-idf/xtensa/CMakeFiles/__idf_xtensa.dir/trax.c.obj"
	cd /d E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\esp-idf\xtensa && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\__idf_xtensa.dir\trax.c.obj   -c D:\esp\esp-idf\components\xtensa\trax.c

esp-idf/xtensa/CMakeFiles/__idf_xtensa.dir/trax.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_xtensa.dir/trax.c.i"
	cd /d E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\esp-idf\xtensa && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E D:\esp\esp-idf\components\xtensa\trax.c > CMakeFiles\__idf_xtensa.dir\trax.c.i

esp-idf/xtensa/CMakeFiles/__idf_xtensa.dir/trax.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_xtensa.dir/trax.c.s"
	cd /d E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\esp-idf\xtensa && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S D:\esp\esp-idf\components\xtensa\trax.c -o CMakeFiles\__idf_xtensa.dir\trax.c.s

esp-idf/xtensa/CMakeFiles/__idf_xtensa.dir/xtensa_intr.c.obj: esp-idf/xtensa/CMakeFiles/__idf_xtensa.dir/flags.make
esp-idf/xtensa/CMakeFiles/__idf_xtensa.dir/xtensa_intr.c.obj: D:/esp/esp-idf/components/xtensa/xtensa_intr.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object esp-idf/xtensa/CMakeFiles/__idf_xtensa.dir/xtensa_intr.c.obj"
	cd /d E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\esp-idf\xtensa && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\__idf_xtensa.dir\xtensa_intr.c.obj   -c D:\esp\esp-idf\components\xtensa\xtensa_intr.c

esp-idf/xtensa/CMakeFiles/__idf_xtensa.dir/xtensa_intr.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_xtensa.dir/xtensa_intr.c.i"
	cd /d E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\esp-idf\xtensa && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E D:\esp\esp-idf\components\xtensa\xtensa_intr.c > CMakeFiles\__idf_xtensa.dir\xtensa_intr.c.i

esp-idf/xtensa/CMakeFiles/__idf_xtensa.dir/xtensa_intr.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_xtensa.dir/xtensa_intr.c.s"
	cd /d E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\esp-idf\xtensa && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S D:\esp\esp-idf\components\xtensa\xtensa_intr.c -o CMakeFiles\__idf_xtensa.dir\xtensa_intr.c.s

esp-idf/xtensa/CMakeFiles/__idf_xtensa.dir/xtensa_intr_asm.S.obj: esp-idf/xtensa/CMakeFiles/__idf_xtensa.dir/flags.make
esp-idf/xtensa/CMakeFiles/__idf_xtensa.dir/xtensa_intr_asm.S.obj: D:/esp/esp-idf/components/xtensa/xtensa_intr_asm.S
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building ASM object esp-idf/xtensa/CMakeFiles/__idf_xtensa.dir/xtensa_intr_asm.S.obj"
	cd /d E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\esp-idf\xtensa && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-gcc.exe $(ASM_DEFINES) $(ASM_INCLUDES) $(ASM_FLAGS) -o CMakeFiles\__idf_xtensa.dir\xtensa_intr_asm.S.obj -c D:\esp\esp-idf\components\xtensa\xtensa_intr_asm.S

esp-idf/xtensa/CMakeFiles/__idf_xtensa.dir/esp32/trax_init.c.obj: esp-idf/xtensa/CMakeFiles/__idf_xtensa.dir/flags.make
esp-idf/xtensa/CMakeFiles/__idf_xtensa.dir/esp32/trax_init.c.obj: D:/esp/esp-idf/components/xtensa/esp32/trax_init.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building C object esp-idf/xtensa/CMakeFiles/__idf_xtensa.dir/esp32/trax_init.c.obj"
	cd /d E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\esp-idf\xtensa && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\__idf_xtensa.dir\esp32\trax_init.c.obj   -c D:\esp\esp-idf\components\xtensa\esp32\trax_init.c

esp-idf/xtensa/CMakeFiles/__idf_xtensa.dir/esp32/trax_init.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_xtensa.dir/esp32/trax_init.c.i"
	cd /d E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\esp-idf\xtensa && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E D:\esp\esp-idf\components\xtensa\esp32\trax_init.c > CMakeFiles\__idf_xtensa.dir\esp32\trax_init.c.i

esp-idf/xtensa/CMakeFiles/__idf_xtensa.dir/esp32/trax_init.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_xtensa.dir/esp32/trax_init.c.s"
	cd /d E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\esp-idf\xtensa && D:\esp\espressif\tools\xtensa-esp32-elf\esp-2021r1-8.4.0\xtensa-esp32-elf\bin\xtensa-esp32-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S D:\esp\esp-idf\components\xtensa\esp32\trax_init.c -o CMakeFiles\__idf_xtensa.dir\esp32\trax_init.c.s

# Object files for target __idf_xtensa
__idf_xtensa_OBJECTS = \
"CMakeFiles/__idf_xtensa.dir/debug_helpers.c.obj" \
"CMakeFiles/__idf_xtensa.dir/debug_helpers_asm.S.obj" \
"CMakeFiles/__idf_xtensa.dir/expression_with_stack_xtensa.c.obj" \
"CMakeFiles/__idf_xtensa.dir/expression_with_stack_xtensa_asm.S.obj" \
"CMakeFiles/__idf_xtensa.dir/eri.c.obj" \
"CMakeFiles/__idf_xtensa.dir/trax.c.obj" \
"CMakeFiles/__idf_xtensa.dir/xtensa_intr.c.obj" \
"CMakeFiles/__idf_xtensa.dir/xtensa_intr_asm.S.obj" \
"CMakeFiles/__idf_xtensa.dir/esp32/trax_init.c.obj"

# External object files for target __idf_xtensa
__idf_xtensa_EXTERNAL_OBJECTS =

esp-idf/xtensa/libxtensa.a: esp-idf/xtensa/CMakeFiles/__idf_xtensa.dir/debug_helpers.c.obj
esp-idf/xtensa/libxtensa.a: esp-idf/xtensa/CMakeFiles/__idf_xtensa.dir/debug_helpers_asm.S.obj
esp-idf/xtensa/libxtensa.a: esp-idf/xtensa/CMakeFiles/__idf_xtensa.dir/expression_with_stack_xtensa.c.obj
esp-idf/xtensa/libxtensa.a: esp-idf/xtensa/CMakeFiles/__idf_xtensa.dir/expression_with_stack_xtensa_asm.S.obj
esp-idf/xtensa/libxtensa.a: esp-idf/xtensa/CMakeFiles/__idf_xtensa.dir/eri.c.obj
esp-idf/xtensa/libxtensa.a: esp-idf/xtensa/CMakeFiles/__idf_xtensa.dir/trax.c.obj
esp-idf/xtensa/libxtensa.a: esp-idf/xtensa/CMakeFiles/__idf_xtensa.dir/xtensa_intr.c.obj
esp-idf/xtensa/libxtensa.a: esp-idf/xtensa/CMakeFiles/__idf_xtensa.dir/xtensa_intr_asm.S.obj
esp-idf/xtensa/libxtensa.a: esp-idf/xtensa/CMakeFiles/__idf_xtensa.dir/esp32/trax_init.c.obj
esp-idf/xtensa/libxtensa.a: esp-idf/xtensa/CMakeFiles/__idf_xtensa.dir/build.make
esp-idf/xtensa/libxtensa.a: esp-idf/xtensa/CMakeFiles/__idf_xtensa.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Linking C static library libxtensa.a"
	cd /d E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\esp-idf\xtensa && $(CMAKE_COMMAND) -P CMakeFiles\__idf_xtensa.dir\cmake_clean_target.cmake
	cd /d E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\esp-idf\xtensa && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\__idf_xtensa.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
esp-idf/xtensa/CMakeFiles/__idf_xtensa.dir/build: esp-idf/xtensa/libxtensa.a

.PHONY : esp-idf/xtensa/CMakeFiles/__idf_xtensa.dir/build

esp-idf/xtensa/CMakeFiles/__idf_xtensa.dir/clean:
	cd /d E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\esp-idf\xtensa && $(CMAKE_COMMAND) -P CMakeFiles\__idf_xtensa.dir\cmake_clean.cmake
.PHONY : esp-idf/xtensa/CMakeFiles/__idf_xtensa.dir/clean

esp-idf/xtensa/CMakeFiles/__idf_xtensa.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" E:\EPS32\esp32_test\ESP32\mqtt D:\esp\esp-idf\components\xtensa E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\esp-idf\xtensa E:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\esp-idf\xtensa\CMakeFiles\__idf_xtensa.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : esp-idf/xtensa/CMakeFiles/__idf_xtensa.dir/depend

