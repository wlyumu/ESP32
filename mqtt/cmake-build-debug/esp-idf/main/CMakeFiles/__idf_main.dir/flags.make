# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.19

# compile ASM with G:/espressif/tools/xtensa-esp32-elf/esp-2021r1-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc.exe
# compile C with G:/espressif/tools/xtensa-esp32-elf/esp-2021r1-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc.exe
ASM_DEFINES = -DHAVE_CONFIG_H -DMBEDTLS_CONFIG_FILE=\"mbedtls/esp_config.h\" -DUNITY_INCLUDE_CONFIG_H -DWITH_POSIX

ASM_INCLUDES = -IC:\Users\wl\Desktop\esp32-demo\mqtt\cmake-build-debug\config -IC:\Users\wl\Desktop\esp32-demo\mqtt\main -IC:\Users\wl\Desktop\esp32-demo\mqtt\include -IG:\esp-idf\components\newlib\platform_include -IG:\esp-idf\components\freertos\include -IG:\esp-idf\components\freertos\port\xtensa\include -IG:\esp-idf\components\esp_hw_support\include -IG:\esp-idf\components\esp_hw_support\port\esp32\. -IG:\esp-idf\components\heap\include -IG:\esp-idf\components\log\include -IG:\esp-idf\components\lwip\include\apps -IG:\esp-idf\components\lwip\include\apps\sntp -IG:\esp-idf\components\lwip\lwip\src\include -IG:\esp-idf\components\lwip\port\esp32\include -IG:\esp-idf\components\lwip\port\esp32\include\arch -IG:\esp-idf\components\soc\include -IG:\esp-idf\components\soc\esp32\. -IG:\esp-idf\components\soc\esp32\include -IG:\esp-idf\components\hal\esp32\include -IG:\esp-idf\components\hal\include -IG:\esp-idf\components\esp_rom\include -IG:\esp-idf\components\esp_rom\esp32 -IG:\esp-idf\components\esp_rom\include\esp32 -IG:\esp-idf\components\esp_common\include -IG:\esp-idf\components\esp_system\include -IG:\esp-idf\components\esp32\include -IG:\esp-idf\components\driver\include -IG:\esp-idf\components\driver\esp32\include -IG:\esp-idf\components\esp_ringbuf\include -IG:\esp-idf\components\efuse\include -IG:\esp-idf\components\efuse\esp32\include -IG:\esp-idf\components\xtensa\include -IG:\esp-idf\components\xtensa\esp32\include -IG:\esp-idf\components\espcoredump\include -IG:\esp-idf\components\esp_timer\include -IG:\esp-idf\components\esp_ipc\include -IG:\esp-idf\components\esp_pm\include -IG:\esp-idf\components\vfs\include -IG:\esp-idf\components\esp_wifi\include -IG:\esp-idf\components\esp_wifi\esp32\include -IG:\esp-idf\components\esp_event\include -IG:\esp-idf\components\esp_netif\include -IG:\esp-idf\components\esp_eth\include -IG:\esp-idf\components\tcpip_adapter\include -IG:\esp-idf\components\app_trace\include -IG:\esp-idf\components\mbedtls\port\include -IG:\esp-idf\components\mbedtls\mbedtls\include -IG:\esp-idf\components\mbedtls\esp_crt_bundle\include -IG:\esp-idf\components\app_update\include -IG:\esp-idf\components\spi_flash\include -IG:\esp-idf\components\bootloader_support\include -IG:\esp-idf\components\nvs_flash\include -IG:\esp-idf\components\pthread\include -IG:\esp-idf\components\esp_gdbstub\include -IG:\esp-idf\components\esp_gdbstub\xtensa -IG:\esp-idf\components\esp_gdbstub\esp32 -IG:\esp-idf\components\wpa_supplicant\include -IG:\esp-idf\components\wpa_supplicant\port\include -IG:\esp-idf\components\wpa_supplicant\include\esp_supplicant -IG:\esp-idf\components\perfmon\include -IG:\esp-idf\components\asio\asio\asio\include -IG:\esp-idf\components\asio\port\include -IG:\esp-idf\components\cbor\port\include -IG:\esp-idf\components\unity\include -IG:\esp-idf\components\unity\unity\src -IG:\esp-idf\components\cmock\CMock\src -IG:\esp-idf\components\coap\port\include -IG:\esp-idf\components\coap\port\include\coap -IG:\esp-idf\components\coap\libcoap\include -IG:\esp-idf\components\coap\libcoap\include\coap2 -IG:\esp-idf\components\console -IG:\esp-idf\components\nghttp\port\include -IG:\esp-idf\components\nghttp\nghttp2\lib\includes -IG:\esp-idf\components\esp-tls -IG:\esp-idf\components\esp-tls\esp-tls-crypto -IG:\esp-idf\components\esp_adc_cal\include -IG:\esp-idf\components\esp_hid\include -IG:\esp-idf\components\tcp_transport\include -IG:\esp-idf\components\esp_http_client\include -IG:\esp-idf\components\esp_http_server\include -IG:\esp-idf\components\esp_https_ota\include -IG:\esp-idf\components\esp_https_server\include -IG:\esp-idf\components\protobuf-c\protobuf-c -IG:\esp-idf\components\protocomm\include\common -IG:\esp-idf\components\protocomm\include\security -IG:\esp-idf\components\protocomm\include\transports -IG:\esp-idf\components\mdns\include -IG:\esp-idf\components\esp_local_ctrl\include -IG:\esp-idf\components\sdmmc\include -IG:\esp-idf\components\esp_serial_slave_link\include -IG:\esp-idf\components\esp_websocket_client\include -IG:\esp-idf\components\expat\expat\expat\lib -IG:\esp-idf\components\expat\port\include -IG:\esp-idf\components\wear_levelling\include -IG:\esp-idf\components\fatfs\diskio -IG:\esp-idf\components\fatfs\vfs -IG:\esp-idf\components\fatfs\src -IG:\esp-idf\components\freemodbus\common\include -IG:\esp-idf\components\idf_test\include -IG:\esp-idf\components\idf_test\include\esp32 -IG:\esp-idf\components\jsmn\include -IG:\esp-idf\components\json\cJSON -IG:\esp-idf\components\libsodium\libsodium\src\libsodium\include -IG:\esp-idf\components\libsodium\port_include -IG:\esp-idf\components\mqtt\esp-mqtt\include -IG:\esp-idf\components\openssl\include -IG:\esp-idf\components\spiffs\include -IG:\esp-idf\components\ulp\include -IG:\esp-idf\components\wifi_provisioning\include -IG:\esp-idf\examples\common_components\protocol_examples_common\include

ASM_FLAGS = -g -ffunction-sections -fdata-sections -Wall -Werror=all -Wno-error=unused-function -Wno-error=unused-variable -Wno-error=deprecated-declarations -Wextra -Wno-unused-parameter -Wno-sign-compare -ggdb -Og -fstrict-volatile-bitfields -Wno-error=unused-but-set-variable -D_GNU_SOURCE -DIDF_VER=\"v4.3.1\" -DESP_PLATFORM

C_DEFINES = -DHAVE_CONFIG_H -DMBEDTLS_CONFIG_FILE=\"mbedtls/esp_config.h\" -DUNITY_INCLUDE_CONFIG_H -DWITH_POSIX

C_INCLUDES = -IC:\Users\wl\Desktop\esp32-demo\mqtt\cmake-build-debug\config -IC:\Users\wl\Desktop\esp32-demo\mqtt\main -IC:\Users\wl\Desktop\esp32-demo\mqtt\include -IG:\esp-idf\components\newlib\platform_include -IG:\esp-idf\components\freertos\include -IG:\esp-idf\components\freertos\port\xtensa\include -IG:\esp-idf\components\esp_hw_support\include -IG:\esp-idf\components\esp_hw_support\port\esp32\. -IG:\esp-idf\components\heap\include -IG:\esp-idf\components\log\include -IG:\esp-idf\components\lwip\include\apps -IG:\esp-idf\components\lwip\include\apps\sntp -IG:\esp-idf\components\lwip\lwip\src\include -IG:\esp-idf\components\lwip\port\esp32\include -IG:\esp-idf\components\lwip\port\esp32\include\arch -IG:\esp-idf\components\soc\include -IG:\esp-idf\components\soc\esp32\. -IG:\esp-idf\components\soc\esp32\include -IG:\esp-idf\components\hal\esp32\include -IG:\esp-idf\components\hal\include -IG:\esp-idf\components\esp_rom\include -IG:\esp-idf\components\esp_rom\esp32 -IG:\esp-idf\components\esp_rom\include\esp32 -IG:\esp-idf\components\esp_common\include -IG:\esp-idf\components\esp_system\include -IG:\esp-idf\components\esp32\include -IG:\esp-idf\components\driver\include -IG:\esp-idf\components\driver\esp32\include -IG:\esp-idf\components\esp_ringbuf\include -IG:\esp-idf\components\efuse\include -IG:\esp-idf\components\efuse\esp32\include -IG:\esp-idf\components\xtensa\include -IG:\esp-idf\components\xtensa\esp32\include -IG:\esp-idf\components\espcoredump\include -IG:\esp-idf\components\esp_timer\include -IG:\esp-idf\components\esp_ipc\include -IG:\esp-idf\components\esp_pm\include -IG:\esp-idf\components\vfs\include -IG:\esp-idf\components\esp_wifi\include -IG:\esp-idf\components\esp_wifi\esp32\include -IG:\esp-idf\components\esp_event\include -IG:\esp-idf\components\esp_netif\include -IG:\esp-idf\components\esp_eth\include -IG:\esp-idf\components\tcpip_adapter\include -IG:\esp-idf\components\app_trace\include -IG:\esp-idf\components\mbedtls\port\include -IG:\esp-idf\components\mbedtls\mbedtls\include -IG:\esp-idf\components\mbedtls\esp_crt_bundle\include -IG:\esp-idf\components\app_update\include -IG:\esp-idf\components\spi_flash\include -IG:\esp-idf\components\bootloader_support\include -IG:\esp-idf\components\nvs_flash\include -IG:\esp-idf\components\pthread\include -IG:\esp-idf\components\esp_gdbstub\include -IG:\esp-idf\components\esp_gdbstub\xtensa -IG:\esp-idf\components\esp_gdbstub\esp32 -IG:\esp-idf\components\wpa_supplicant\include -IG:\esp-idf\components\wpa_supplicant\port\include -IG:\esp-idf\components\wpa_supplicant\include\esp_supplicant -IG:\esp-idf\components\perfmon\include -IG:\esp-idf\components\asio\asio\asio\include -IG:\esp-idf\components\asio\port\include -IG:\esp-idf\components\cbor\port\include -IG:\esp-idf\components\unity\include -IG:\esp-idf\components\unity\unity\src -IG:\esp-idf\components\cmock\CMock\src -IG:\esp-idf\components\coap\port\include -IG:\esp-idf\components\coap\port\include\coap -IG:\esp-idf\components\coap\libcoap\include -IG:\esp-idf\components\coap\libcoap\include\coap2 -IG:\esp-idf\components\console -IG:\esp-idf\components\nghttp\port\include -IG:\esp-idf\components\nghttp\nghttp2\lib\includes -IG:\esp-idf\components\esp-tls -IG:\esp-idf\components\esp-tls\esp-tls-crypto -IG:\esp-idf\components\esp_adc_cal\include -IG:\esp-idf\components\esp_hid\include -IG:\esp-idf\components\tcp_transport\include -IG:\esp-idf\components\esp_http_client\include -IG:\esp-idf\components\esp_http_server\include -IG:\esp-idf\components\esp_https_ota\include -IG:\esp-idf\components\esp_https_server\include -IG:\esp-idf\components\protobuf-c\protobuf-c -IG:\esp-idf\components\protocomm\include\common -IG:\esp-idf\components\protocomm\include\security -IG:\esp-idf\components\protocomm\include\transports -IG:\esp-idf\components\mdns\include -IG:\esp-idf\components\esp_local_ctrl\include -IG:\esp-idf\components\sdmmc\include -IG:\esp-idf\components\esp_serial_slave_link\include -IG:\esp-idf\components\esp_websocket_client\include -IG:\esp-idf\components\expat\expat\expat\lib -IG:\esp-idf\components\expat\port\include -IG:\esp-idf\components\wear_levelling\include -IG:\esp-idf\components\fatfs\diskio -IG:\esp-idf\components\fatfs\vfs -IG:\esp-idf\components\fatfs\src -IG:\esp-idf\components\freemodbus\common\include -IG:\esp-idf\components\idf_test\include -IG:\esp-idf\components\idf_test\include\esp32 -IG:\esp-idf\components\jsmn\include -IG:\esp-idf\components\json\cJSON -IG:\esp-idf\components\libsodium\libsodium\src\libsodium\include -IG:\esp-idf\components\libsodium\port_include -IG:\esp-idf\components\mqtt\esp-mqtt\include -IG:\esp-idf\components\openssl\include -IG:\esp-idf\components\spiffs\include -IG:\esp-idf\components\ulp\include -IG:\esp-idf\components\wifi_provisioning\include -IG:\esp-idf\examples\common_components\protocol_examples_common\include

C_FLAGS = -mlongcalls -Wno-frame-address -g -ffunction-sections -fdata-sections -Wall -Werror=all -Wno-error=unused-function -Wno-error=unused-variable -Wno-error=deprecated-declarations -Wextra -Wno-unused-parameter -Wno-sign-compare -ggdb -Og -fstrict-volatile-bitfields -Wno-error=unused-but-set-variable -std=gnu99 -Wno-old-style-declaration -D_GNU_SOURCE -DIDF_VER=\"v4.3.1\" -DESP_PLATFORM

