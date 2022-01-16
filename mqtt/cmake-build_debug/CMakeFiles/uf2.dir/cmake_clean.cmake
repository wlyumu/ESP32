file(REMOVE_RECURSE
  "CMakeFiles/uf2"
  "bootloader/bootloader.bin"
  "bootloader/bootloader.elf"
  "bootloader/bootloader.map"
  "config/sdkconfig.cmake"
  "config/sdkconfig.h"
  "flash_project_args"
  "mqtt_tcp.bin"
  "mqtt_tcp.map"
  "project_elf_src_esp32.c"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/uf2.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
