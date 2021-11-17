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
#include "esp_event.h"
#include "esp_log.h"
#include "esp_wifi.h"
#include "../include/wifi_connect_mgr.h"
#include "../include/nvs_kv.h"

#define STA_SSID_KEY             "wifi_ssid"
#define STA_PASSWORD_KEY         "wifi_passwd"

static const char *TAG = "connect_mgr";
static system_event_cb_t hal_wifi_system_cb;


static void  connect_mgr_save_wifi_config(void)
{
    wifi_config_t  wifi_config;
    esp_err_t      err;

    /*1. 获取wifi 配置*/
    esp_wifi_get_config(ESP_IF_WIFI_STA, &wifi_config);
    /*2. 将WiFi配置信息写入NVS flash 中*/
    err = NVS_Kv_Set(STA_SSID_KEY, wifi_config.sta.ssid, sizeof(wifi_config.sta.ssid));

    if(err != ESP_OK)
    {
        ESP_LOGW(TAG, "%s key store failed with %d", STA_SSID_KEY, err);

    }

    if(wifi_config.sta.password[0] != 0)
    {
        err = NVS_Kv_Set(STA_PASSWORD_KEY, wifi_config.sta.password, sizeof(wifi_config.sta.password));
        if(err != ESP_OK)
        {
            ESP_LOGW(TAG, "%s key store failed with %d", STA_PASSWORD_KEY, err);

        }
    }


}

static esp_err_t conn_mgr_wifi_connect(void)
{
    wifi_config_t  wifiConfig = {0};
    esp_err_t err;

    size_t ssid_len   = sizeof(wifiConfig.sta.ssid);
    size_t passwd_len = sizeof (wifiConfig.sta.password);

    /*1.获取wifi ssid*/
    err = NVS_Kv_Get(STA_SSID_KEY, wifiConfig.sta.ssid, &ssid_len);
    if(err != ESP_OK)
    {
        ESP_LOGW(TAG, "fail to get wifi ssid");
        return ESP_FAIL;
    }

    /*2.获取wifi passwd*/
    err = NVS_Kv_Get(STA_PASSWORD_KEY, wifiConfig.sta.password, &passwd_len);
    if(err != ESP_OK)
    {
        ESP_LOGW(TAG, "fail to get wifi passwd");
        return ESP_FAIL;
    }

    esp_wifi_set_mode(WIFI_MODE_STA);
    esp_wifi_set_config(ESP_IF_WIFI_STA, &wifiConfig);
    esp_wifi_connect();

    return ESP_OK;
}

static void conn_mgr_wifi_event_loop_handler(void* arg, esp_event_base_t event_base,
                                                  int32_t event_id, void* event_data)
{
    /*ip获取事件，存入wifi信息*/
    if(event_base == IP_EVENT && event_id == IP_EVENT_STA_GOT_IP)
    {
        ESP_LOGI(TAG, "get wifi ip");
        connect_mgr_save_wifi_config();
    }
    else if(event_base == WIFI_EVENT && event_id == WIFI_EVENT_STA_DISCONNECTED)
    {
        ESP_LOGI(TAG, " wifi disconnect");
        conn_mgr_wifi_connect();
    }
}

void conn_mgr_register_wifi_event(system_event_cb_t cb)
{
    hal_wifi_system_cb = cb;
}

static esp_err_t  connect_mgr_is_configure(bool *configured)
{
    if(configured == NULL)
    {
        return ESP_ERR_INVALID_ARG;
    }

    esp_err_t  err;

    size_t ssid_len = 32;
    uint8_t ssid[32] = {0};

    err = NVS_Kv_Get(STA_SSID_KEY, ssid, &ssid_len);
    if(err == ESP_OK && ssid_len)
    {
        *configured = true;
        ESP_LOGI(TAG, "Found ssid %s", ssid);
    }

    return err;
}

esp_err_t  connect_mgr_init(void)
{
    ESP_ERROR_CHECK(NVS_Kv_Init());
    ESP_ERROR_CHECK(esp_netif_init());

    esp_netif_create_default_wifi_sta();
    wifi_init_config_t cfg = WIFI_INIT_CONFIG_DEFAULT();

    /*注册ip获取事件*/
    ESP_ERROR_CHECK(esp_event_handler_instance_register(IP_EVENT, IP_EVENT_STA_GOT_IP, conn_mgr_wifi_event_loop_handler, NULL, NULL));
    /*注册wifi事件*/
    ESP_ERROR_CHECK(esp_event_handler_instance_register(WIFI_EVENT, ESP_EVENT_ANY_ID , conn_mgr_wifi_event_loop_handler, NULL, NULL));

    ESP_ERROR_CHECK(esp_wifi_init(&cfg));
    ESP_ERROR_CHECK(esp_wifi_set_mode(WIFI_MODE_STA));
    ESP_ERROR_CHECK(esp_wifi_start());

    return ESP_OK;
}

esp_err_t  connect_mgr_start(void)
{
    bool ret = true;
    bool configured = false;

    /*检查是WIFI是否被配置*/
    if(connect_mgr_is_configure(&configured) != ESP_OK )
        return ESP_FAIL;

    /*wifi配网*/
    if(!configured)
    {

    } else /*wifi连接*/
    {
        if (conn_mgr_wifi_connect() != ESP_OK) {
            ret = false;
        }
    }

    return ret == true ? ESP_OK : ESP_FAIL;
}