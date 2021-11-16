//
// Created by Lenovo on 2021-11-16.
//

#include <stdlib.h>
#include <stdlib.h>
#include <ctype.h>
#include <unistd.h>
#include <limits.h>
#include <string.h>

#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "freertos/event_groups.h"

#include "esp_err.h"
#include "esp_event_loop.h"
#include "esp_log.h"
#include "esp_wifi.h"
#include "../include/wifi_connect_mgr.h"
#include "../include/nvs_kv.h"


static const char *TAG = "conn_mgr";
static system_event_cb_t hal_wifi_system_cb;

static esp_err_t conn_mgr_wifi_event_loop_handler(void *ctx, system_event_t *event)
{
    system_event_info_t *info = &event->event_info;
    switch (event->event_id) {
        case SYSTEM_EVENT_STA_GOT_IP:
            conn_mgr_save_wifi_config();
#ifdef CONFIG_ESP_TLS_USING_WOLFSSL
            conn_mgr_obtain_time();
#endif
            break;

        case SYSTEM_EVENT_STA_DISCONNECTED:
            ESP_LOGE(TAG, "Disconnect reason : %d", info->disconnected.reason);
#ifdef CONFIG_IDF_TARGET_ESP8266
            if (info->disconnected.reason == WIFI_REASON_BASIC_RATE_NOT_SUPPORT) {
                /*Switch to 802.11 bgn mode */
                esp_wifi_set_protocol(ESP_IF_WIFI_STA, WIFI_PROTOCOL_11B | WIFI_PROTOCOL_11G | WIFI_PROTOCOL_11N);
            }
#endif
            esp_wifi_connect();
            break;

        default:
            break;
    }

    /** The application loop event handle */
    if (hal_wifi_system_cb) {
        hal_wifi_system_cb(ctx, event);
    }

    return ESP_OK;
}

void conn_mgr_register_wifi_event(system_event_cb_t cb)
{
    hal_wifi_system_cb = cb;
}

esp_err_t  connect_mgr_init(void)
{
    ESP_ERROR_CHECK(NVS_Kv_Init());
    ESP_ERROR_CHECK(esp_netif_init());

    esp_netif_create_default_wifi_sta();
    wifi_init_config_t cfg = WIFI_INIT_CONFIG_DEFAULT();

    /*注册wifi连接管理事件*/
    ESP_ERROR_CHECK(esp_event_loop_init(conn_mgr_wifi_event_loop_handler, NULL));
    ESP_ERROR_CHECK(esp_wifi_init(&cfg));
    ESP_ERROR_CHECK(esp_wifi_set_mode(WIFI_MODE_STA));
    ESP_ERROR_CHECK(esp_wifi_start());
}
