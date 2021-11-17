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
#include "nvs_kv.h"

static const char *TAG = "MQTT_EXAMPLE";

extern void wifi_init_sta(void);
extern void initialise_wifi(void);
extern void uart_thread_create(void);
extern void nvs_write_read(void);
extern void mqtt_app_start(void);


/* Function to initialize SPIFFS */
static esp_err_t init_spiffs(void)
{
    ESP_LOGI(TAG, "Initializing SPIFFS");

    esp_vfs_spiffs_conf_t conf = {
      .base_path = "/spiffs",
      .partition_label = NULL,
      .max_files = 5,   // This decides the maximum number of files that can be created on the storage
      .format_if_mount_failed = true
    };

    esp_err_t ret = esp_vfs_spiffs_register(&conf);
    if (ret != ESP_OK) {
        if (ret == ESP_FAIL) {
            ESP_LOGE(TAG, "Failed to mount or format filesystem");
        } else if (ret == ESP_ERR_NOT_FOUND) {
            ESP_LOGE(TAG, "Failed to find SPIFFS partition");
        } else {
            ESP_LOGE(TAG, "Failed to initialize SPIFFS (%s)", esp_err_to_name(ret));
        }
        return ESP_FAIL;
    }

    size_t total = 0, used = 0;
    ret = esp_spiffs_info(NULL, &total, &used);
    if (ret != ESP_OK) {
        ESP_LOGE(TAG, "Failed to get SPIFFS partition information (%s)", esp_err_to_name(ret));
        return ESP_FAIL;
    }

    ESP_LOGI(TAG, "Partition size: total: %d, used: %d", total, used);
    return ESP_OK;
}

void app_main(void)
{
    ESP_LOGI(TAG, "[APP] Startup..");
    ESP_LOGI(TAG, "[APP] Free memory: %d bytes", esp_get_free_heap_size());
    ESP_LOGI(TAG, "[APP] IDF version: %s", esp_get_idf_version());

    esp_log_level_set("*", ESP_LOG_INFO);
    esp_log_level_set("MQTT_CLIENT", ESP_LOG_VERBOSE);
    esp_log_level_set("MQTT_EXAMPLE", ESP_LOG_VERBOSE);
    esp_log_level_set("TRANSPORT_TCP", ESP_LOG_VERBOSE);
    esp_log_level_set("TRANSPORT_SSL", ESP_LOG_VERBOSE);
    esp_log_level_set("TRANSPORT", ESP_LOG_VERBOSE);
    esp_log_level_set("OUTBOX", ESP_LOG_VERBOSE);

    ESP_ERROR_CHECK(esp_netif_init());
    ESP_ERROR_CHECK(esp_event_loop_create_default());

    ESP_ERROR_CHECK(NVS_Kv_Init());


    ESP_LOGD(TAG,"my write APP");
    //uart_create_thread();
    //nvs_write_read();
    // esp_timerInit();
    gpio_reset_pin(2);
    gpio_set_direction(2, GPIO_MODE_OUTPUT);
    init_spiffs();

    extern esp_err_t  connect_mgr_init(void);
    extern esp_err_t  connect_mgr_start(void);
    connect_mgr_init();
    connect_mgr_start();
//    char wifi_ssid[33] = "MEIZU 18";
//    char wifi_ssid1[33] = {0};
//    size_t len = strlen(wifi_ssid);

//    char wifi_passwd[33] = "12345678";
//    char wifi_passwd1[33] = {0};
//    size_t len1 = strlen(wifi_passwd);
//    NVS_Kv_Set("wifi_ssid", wifi_ssid, len);
//    NVS_Kv_Get("wifi_ssid", wifi_ssid1, &len);
//
//    NVS_Kv_Set("wifi_passwd", wifi_passwd, len1);
//    NVS_Kv_Get("wifi_passwd", wifi_passwd1, &len1);
//   // NVS_Kv_Delete("wifi_ssid");
//    ESP_LOGI(TAG, "wifi_ssid:%s", wifi_ssid1);
//    ESP_LOGI(TAG, "wifi_passwd:%s", wifi_passwd1);
//   uart_thread_create();
//    wifi_init_sta();
  
//    system_time_update();
   //uart2_task_create();
   //initialise_wifi();
   //mqtt_app_start();
}
