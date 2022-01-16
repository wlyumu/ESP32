# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.16

# compile C with D:/esp/espressif/tools/xtensa-esp32-elf/esp-2021r1-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc.exe
C_FLAGS = -mlongcalls -Wno-frame-address -g  

C_DEFINES = -DHAVE_CONFIG_H -DMBEDTLS_CONFIG_FILE=\"mbedtls/esp_config.h\" -DUNITY_INCLUDE_CONFIG_H -DWITH_POSIX

C_INCLUDES = -ID:\esp\esp-idf\components\esp_pm\include -IE:\EPS32\esp32_test\ESP32\mqtt\cmake-build_debug\config -ID:\esp\esp-idf\components\newlib\platform_include -ID:\esp\esp-idf\components\freertos\include -ID:\esp\esp-idf\components\freertos\port\xtensa\include -ID:\esp\esp-idf\components\esp_hw_support\include -ID:\esp\esp-idf\components\esp_hw_support\port\esp32\. -ID:\esp\esp-idf\components\heap\include -ID:\esp\esp-idf\components\log\include -ID:\esp\esp-idf\components\lwip\include\apps -ID:\esp\esp-idf\components\lwip\include\apps\sntp -ID:\esp\esp-idf\components\lwip\lwip\src\include -ID:\esp\esp-idf\components\lwip\port\esp32\include -ID:\esp\esp-idf\components\lwip\port\esp32\include\arch -ID:\esp\esp-idf\components\soc\include -ID:\esp\esp-idf\components\soc\esp32\. -ID:\esp\esp-idf\components\soc\esp32\include -ID:\esp\esp-idf\components\hal\esp32\include -ID:\esp\esp-idf\components\hal\include -ID:\esp\esp-idf\components\esp_rom\include -ID:\esp\esp-idf\components\esp_rom\esp32 -ID:\esp\esp-idf\components\esp_rom\include\esp32 -ID:\esp\esp-idf\components\esp_common\include -ID:\esp\esp-idf\components\esp_system\include -ID:\esp\esp-idf\components\esp32\include -ID:\esp\esp-idf\components\driver\include -ID:\esp\esp-idf\components\driver\esp32\include -ID:\esp\esp-idf\components\esp_ringbuf\include -ID:\esp\esp-idf\components\efuse\include -ID:\esp\esp-idf\components\efuse\esp32\include -ID:\esp\esp-idf\components\xtensa\include -ID:\esp\esp-idf\components\xtensa\esp32\include -ID:\esp\esp-idf\components\espcoredump\include -ID:\esp\esp-idf\components\esp_timer\include -ID:\esp\esp-idf\components\esp_ipc\include -ID:\esp\esp-idf\components\vfs\include -ID:\esp\esp-idf\components\esp_wifi\include -ID:\esp\esp-idf\components\esp_wifi\esp32\include -ID:\esp\esp-idf\components\esp_event\include -ID:\esp\esp-idf\components\esp_netif\include -ID:\esp\esp-idf\components\esp_eth\include -ID:\esp\esp-idf\components\tcpip_adapter\include -ID:\esp\esp-idf\components\app_trace\include -ID:\esp\esp-idf\components\mbedtls\port\include -ID:\esp\esp-idf\components\mbedtls\mbedtls\include -ID:\esp\esp-idf\components\mbedtls\esp_crt_bundle\include -ID:\esp\esp-idf\components\app_update\include -ID:\esp\esp-idf\components\spi_flash\include -ID:\esp\esp-idf\components\bootloader_support\include -ID:\esp\esp-idf\components\nvs_flash\include -ID:\esp\esp-idf\components\pthread\include -ID:\esp\esp-idf\components\esp_gdbstub\include -ID:\esp\esp-idf\components\esp_gdbstub\xtensa -ID:\esp\esp-idf\components\esp_gdbstub\esp32 -ID:\esp\esp-idf\components\wpa_supplicant\include -ID:\esp\esp-idf\components\wpa_supplicant\port\include -ID:\esp\esp-idf\components\wpa_supplicant\include\esp_supplicant -ID:\esp\esp-idf\components\perfmon\include -ID:\esp\esp-idf\components\asio\asio\asio\include -ID:\esp\esp-idf\components\asio\port\include -ID:\esp\esp-idf\components\cbor\port\include -ID:\esp\esp-idf\components\unity\include -ID:\esp\esp-idf\components\unity\unity\src -ID:\esp\esp-idf\components\cmock\CMock\src -ID:\esp\esp-idf\components\coap\port\include -ID:\esp\esp-idf\components\coap\port\include\coap -ID:\esp\esp-idf\components\coap\libcoap\include -ID:\esp\esp-idf\components\coap\libcoap\include\coap2 -ID:\esp\esp-idf\components\console -ID:\esp\esp-idf\components\nghttp\port\include -ID:\esp\esp-idf\components\nghttp\nghttp2\lib\includes -ID:\esp\esp-idf\components\esp-tls -ID:\esp\esp-idf\components\esp-tls\esp-tls-crypto -ID:\esp\esp-idf\components\esp_adc_cal\include -ID:\esp\esp-idf\components\esp_hid\include -ID:\esp\esp-idf\components\tcp_transport\include -ID:\esp\esp-idf\components\esp_http_client\include -ID:\esp\esp-idf\components\esp_http_server\include -ID:\esp\esp-idf\components\esp_https_ota\include -ID:\esp\esp-idf\components\esp_https_server\include -ID:\esp\esp-idf\components\protobuf-c\protobuf-c -ID:\esp\esp-idf\components\protocomm\include\common -ID:\esp\esp-idf\components\protocomm\include\security -ID:\esp\esp-idf\components\protocomm\include\transports -ID:\esp\esp-idf\components\mdns\include -ID:\esp\esp-idf\components\esp_local_ctrl\include -ID:\esp\esp-idf\components\sdmmc\include -ID:\esp\esp-idf\components\esp_serial_slave_link\include -ID:\esp\esp-idf\components\esp_websocket_client\include -ID:\esp\esp-idf\components\expat\expat\expat\lib -ID:\esp\esp-idf\components\expat\port\include -ID:\esp\esp-idf\components\wear_levelling\include -ID:\esp\esp-idf\components\fatfs\diskio -ID:\esp\esp-idf\components\fatfs\vfs -ID:\esp\esp-idf\components\fatfs\src -ID:\esp\esp-idf\components\freemodbus\common\include -ID:\esp\esp-idf\components\idf_test\include -ID:\esp\esp-idf\components\idf_test\include\esp32 -ID:\esp\esp-idf\components\jsmn\include -ID:\esp\esp-idf\components\json\cJSON -ID:\esp\esp-idf\components\libsodium\libsodium\src\libsodium\include -ID:\esp\esp-idf\components\libsodium\port_include -ID:\esp\esp-idf\components\mqtt\esp-mqtt\include -ID:\esp\esp-idf\components\openssl\include -ID:\esp\esp-idf\components\spiffs\include -ID:\esp\esp-idf\components\ulp\include -ID:\esp\esp-idf\components\wifi_provisioning\include -ID:\esp\esp-idf\examples\common_components\protocol_examples_common\include -IE:\EPS32\esp32_test\ESP32\mqtt\components\spi_bus\include -IE:\EPS32\esp32_test\ESP32\mqtt\components\att7053\include -IE:\EPS32\esp32_test\ESP32\mqtt\components\https_req_weather -IE:\EPS32\esp32_test\ESP32\mqtt\components\lwutil\include -IE:\EPS32\esp32_test\ESP32\mqtt\components\mbedtls_test\include -IE:\EPS32\esp32_test\ESP32\mqtt\components\nvs_key\include -IE:\EPS32\esp32_test\ESP32\mqtt\components\uart\include -IE:\EPS32\esp32_test\ESP32\mqtt\components\wifi_conn_mgr\include -IE:\EPS32\esp32_test\ESP32\mqtt\components\wmqtt\include -IE:\EPS32\esp32_test\ESP32\mqtt\main -IE:\EPS32\esp32_test\ESP32\mqtt\main\include 
