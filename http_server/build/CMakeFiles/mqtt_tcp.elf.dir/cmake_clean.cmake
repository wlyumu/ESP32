file(REMOVE_RECURSE
  "bootloader/bootloader.bin"
  "bootloader/bootloader.elf"
  "bootloader/bootloader.map"
  "config/sdkconfig.cmake"
  "config/sdkconfig.h"
  "flash_project_args"
  "mqtt_tcp.bin"
  "mqtt_tcp.map"
  "project_elf_src_esp32.c"
  "CMakeFiles/mqtt_tcp.elf.dir/project_elf_src_esp32.c.obj"
  "mqtt_tcp.elf"
  "mqtt_tcp.elf.pdb"
  "project_elf_src_esp32.c"
)

# Per-language clean rules from dependency scanning.
foreach(lang C)
  include(CMakeFiles/mqtt_tcp.elf.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
