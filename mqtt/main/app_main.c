/* MQTT (over TCP) Example

   This example code is in the Public Domain (or CC0 licensed, at your option.)

   Unless required by applicable law or agreed to in writing, this
   software is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR
   CONDITIONS OF ANY KIND, either express or implied.
*/

#include <stdio.h>
#include <stdint.h>
#include <stddef.h>
#include <string.h>
#include "esp_wifi.h"
#include "esp_system.h"
#include "nvs_flash.h"
#include "esp_event.h"
#include "esp_netif.h"
#include "driver/gpio.h"

#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "freertos/semphr.h"
#include "freertos/queue.h"

#include "lwip/sockets.h"
#include "lwip/dns.h"
#include "lwip/netdb.h"

#include "esp_log.h"
#include "mqtt_client.h"
#include "time_update.h"

#include "esp_spiffs.h"
#include "../nvs/nvs_kv.h"
#include "wifi_connect_mgr.h"
#include "mbedtls_test.h"

static const char *TAG = "MQTT_EXAMPLE";

extern void wifi_init_sta(void);
extern void initialise_wifi(void);
extern void uart_thread_create(void);
extern void nvs_write_read(void);
extern void mqtt_app_start(void);


///* Function to initialize SPIFFS */
//static esp_err_t init_spiffs(void)
//{
//    ESP_LOGI(TAG, "Initializing SPIFFS");
//
//    esp_vfs_spiffs_conf_t conf = {
//      .base_path = "/spiffs",
//      .partition_label = NULL,
//      .max_files = 5,   // This decides the maximum number of files that can be created on the storage
//      .format_if_mount_failed = true
//    };
//
//    esp_err_t ret = esp_vfs_spiffs_register(&conf);
//    if (ret != ESP_OK) {
//        if (ret == ESP_FAIL) {
//            ESP_LOGE(TAG, "Failed to mount or format filesystem");
//        } else if (ret == ESP_ERR_NOT_FOUND) {
//            ESP_LOGE(TAG, "Failed to find SPIFFS partition");
//        } else {
//            ESP_LOGE(TAG, "Failed to initialize SPIFFS (%s)", esp_err_to_name(ret));
//        }
//        return ESP_FAIL;
//    }
//
//    size_t total = 0, used = 0;
//    ret = esp_spiffs_info(NULL, &total, &used);
//    if (ret != ESP_OK) {
//        ESP_LOGE(TAG, "Failed to get SPIFFS partition information (%s)", esp_err_to_name(ret));
//        return ESP_FAIL;
//    }
//
//    //ESP_LOGI(TAG, "Partition size: total: %d, used: %d", total, used);
//    return ESP_OK;
//}


void app_main(void)
{
    ESP_LOGI(TAG, "[APP] Startup..");
    ESP_LOGI(TAG, "[APP] Free memory: %d bytes", esp_get_free_heap_size());
    ESP_LOGI(TAG, "[APP] IDF version: %s", esp_get_idf_version());

    esp_log_level_set("*", ESP_LOG_INFO);

   

   ESP_ERROR_CHECK(NVS_Kv_Init());
   ESP_ERROR_CHECK(esp_event_loop_create_default());

   ESP_LOGD(TAG,"my write APP");
    //ESP_ERROR_CHECK(nvs_flash_erase());

    connect_mgr_init();
    connect_mgr_start();
    aes_ecb_crypt_test();
    mqtt_app_start();
//   uart_thread_create();
//    wifi_init_sta();
  
//    system_time_update();
   //uart2_task_create();
   //initialise_wifi();
   //mqtt_app_start();
}
