//
// Created by Lenovo on 2021-11-16.
//

#include <stdlib.h>
#include <unistd.h>
#include <string.h>

#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "freertos/event_groups.h"

#include "esp_err.h"
#include "esp_event.h"
#include "esp_log.h"
#include "esp_wifi.h"
#include "esp_sntp.h"
#include "include/wifi_connect_mgr.h"
#include "nvs_kv.h"
#include "esp_smartconfig.h"

static const int CONNECTED_BIT = BIT0;
static const int ESPTOUCH_DONE_BIT = BIT1;

static const char *TAG = "connect_mgr";
static EventGroupHandle_t  s_wifi_conn_mgr;
static system_event_cb_t hal_wifi_system_cb;
static esp_err_t  conn_mgr_obtain_time(void);

static void smartconfig_task(void *param);


void  connect_mgr_save_wifi_config(void)
{
    wifi_config_t  wifi_config;
    esp_err_t      err;

    /*1. 获取wifi 配置*/
    esp_wifi_get_config(ESP_IF_WIFI_STA, &wifi_config);
    /*2. 将WiFi配置信息写入NVS flash 中*/
    err = NVS_Kv_Set(WIFI_INFO_REGION, STA_SSID_KEY, wifi_config.sta.ssid, sizeof(wifi_config.sta.ssid));

    if(err != ESP_OK)
    {
        ESP_LOGW(TAG, "%s key store failed with %d", STA_SSID_KEY, err);

    }

    if(wifi_config.sta.password[0] != 0)
    {
        err = NVS_Kv_Set(WIFI_INFO_REGION, STA_PASSWORD_KEY, wifi_config.sta.password, sizeof(wifi_config.sta.password));
        if(err != ESP_OK)
        {
            ESP_LOGW(TAG, "%s key store failed with %d", STA_PASSWORD_KEY, err);

        }
    }


}

static esp_err_t conn_mgr_wifi_connect(void)
{
    EventBits_t uxBits;
    wifi_config_t  wifiConfig = {0};
    esp_err_t err;

    size_t ssid_len   = sizeof(wifiConfig.sta.ssid);
    size_t passwd_len = sizeof (wifiConfig.sta.password);

    /*1.获取wifi ssid*/
    err = NVS_Kv_Get( WIFI_INFO_REGION, STA_SSID_KEY, wifiConfig.sta.ssid, ssid_len);
    if(err != ESP_OK)
    {
        ESP_LOGW(TAG, "fail to get wifi ssid");
        return ESP_FAIL;
    }

    /*2.获取wifi passwd*/
    err = NVS_Kv_Get(WIFI_INFO_REGION, STA_PASSWORD_KEY, wifiConfig.sta.password, passwd_len);
    if(err != ESP_OK)
    {
        ESP_LOGW(TAG, "fail to get wifi passwd");
        return ESP_FAIL;
    }

    esp_wifi_set_mode(WIFI_MODE_STA);
    esp_wifi_set_config(ESP_IF_WIFI_STA, &wifiConfig);
    esp_wifi_connect();

    uxBits = xEventGroupWaitBits(s_wifi_conn_mgr, CONNECTED_BIT , false, true, portMAX_DELAY);
    if(uxBits & CONNECTED_BIT) {
        //同步时间
        conn_mgr_obtain_time();
        ESP_LOGI(TAG, "WiFi Connected to ap");
    }

    return ESP_OK;
}


static void conn_mgr_wifi_event_loop_handler(void* arg, esp_event_base_t event_base,
                                                  int32_t event_id, void* event_data)
{
    static uint8_t  disconn_cnt = 0;
    
    // if(event_base == IP_EVENT && event_id == IP_EVENT_STA_GOT_IP)
    // {
    //     /*ip获取事件，存入wifi信息*/
    //     ESP_LOGI(TAG, "get wifi ip");
    //    // connect_mgr_save_wifi_config();
        
       
    //     disconn_cnt = 0;

    //     xEventGroupSetBits(s_wifi_conn_mgr, CONNECTED_BIT);
    //     /*同步时间*/
    //     conn_mgr_obtain_time();
    // }
    // else if(event_base == WIFI_EVENT && event_id == WIFI_EVENT_STA_START)
    // {
       
    //     ESP_LOGI(TAG, " WIFI_EVENT_STA_START");
    // }
    // else if(event_base == WIFI_EVENT && event_id == WIFI_EVENT_STA_DISCONNECTED)
    // {
    //     ESP_LOGI(TAG, " wifi disconnect");

    //     /*连接失败5次，进入配网模式*/
    //     if(disconn_cnt >= 5)
    //     {
    //         disconn_cnt = 0;
    //         ESP_LOGI(TAG, "enter smart config");
    //         /*创建配网任务*/
    //         xTaskCreate(smartconfig_task, "smartconfig_task", 4096, NULL, 3, NULL);
    //     } else{
    //         conn_mgr_wifi_connect();
    //         xEventGroupClearBits(s_wifi_conn_mgr, CONNECTED_BIT);
    //         ++ disconn_cnt;
    //     }
    // }
    // else  if(event_base == SC_EVENT && event_id == SC_EVENT_SCAN_DONE)
    // {
    //     ESP_LOGI(TAG, "Scan Done");
    // } else if(event_base == SC_EVENT && event_id == SC_EVENT_FOUND_CHANNEL)
    // {
    //     ESP_LOGI(TAG, "Found channel");
    // }else if(event_base == SC_EVENT && event_id == SC_EVENT_GOT_SSID_PSWD)
    // {
    //     ESP_LOGI(TAG, "Got SSID and password");
    //     smartconfig_event_got_ssid_pswd_t *evt = (smartconfig_event_got_ssid_pswd_t *)event_data;

    //     wifi_config_t  wifi_config;
    //    // smart_config_save_info(event_data);

    //     bzero(&wifi_config, sizeof(wifi_config_t));
    //     memcpy(wifi_config.sta.ssid, evt->ssid, sizeof(wifi_config.sta.ssid));
    //     memcpy(wifi_config.sta.password, evt->password, sizeof(wifi_config.sta.password));

    //      wifi_config.sta.bssid_set = evt->bssid_set;
    //     if (wifi_config.sta.bssid_set == true) {
    //         memcpy(wifi_config.sta.bssid, evt->bssid, sizeof(wifi_config.sta.bssid));
    //     }
        
    //     ESP_ERROR_CHECK( esp_wifi_disconnect() );
    //     ESP_ERROR_CHECK( esp_wifi_set_config(WIFI_IF_STA, &wifi_config) );
    //     esp_wifi_connect();
    // } else if(event_data == SC_EVENT && event_id == SC_EVENT_SEND_ACK_DONE)
    // {
    //     ESP_LOGI(TAG, "SC_EVENT_SEND_ACK_DONE");
    //     xEventGroupSetBits(s_wifi_conn_mgr, ESPTOUCH_DONE_BIT);
    // }

    if (event_base == WIFI_EVENT && event_id == WIFI_EVENT_STA_START) {
        ESP_LOGI(TAG, "WIFI_EVENT_STA_START");
        
    } else if (event_base == WIFI_EVENT && event_id == WIFI_EVENT_STA_DISCONNECTED) {
        ESP_LOGI(TAG, "WIFI_EVENT_STA_DISCONNECTED");
        disconn_cnt++;
        esp_wifi_connect();
        xEventGroupClearBits(s_wifi_conn_mgr, CONNECTED_BIT);
        if(disconn_cnt > 5)
        {
            disconn_cnt = 0;
           xTaskCreate(smartconfig_task, "smartconfig_task", 4096, NULL, 3, NULL);
        }
    } else if (event_base == IP_EVENT && event_id == IP_EVENT_STA_GOT_IP) {
        ESP_LOGI(TAG, "IP_EVENT_STA_GOT_IP");
        xEventGroupSetBits(s_wifi_conn_mgr, CONNECTED_BIT);

    } else if (event_base == SC_EVENT && event_id == SC_EVENT_SCAN_DONE) {
        ESP_LOGI(TAG, "Scan done");
    } else if (event_base == SC_EVENT && event_id == SC_EVENT_FOUND_CHANNEL) {
        ESP_LOGI(TAG, "Found channel");
    } else if (event_base == SC_EVENT && event_id == SC_EVENT_GOT_SSID_PSWD) {
        ESP_LOGI(TAG, "Got SSID and password");

        smartconfig_event_got_ssid_pswd_t *evt = (smartconfig_event_got_ssid_pswd_t *)event_data;
        wifi_config_t wifi_config;
        uint8_t ssid[33] = { 0 };
        uint8_t password[65] = { 0 };
        uint8_t rvd_data[33] = { 0 };

        bzero(&wifi_config, sizeof(wifi_config_t));
        memcpy(wifi_config.sta.ssid, evt->ssid, sizeof(wifi_config.sta.ssid));
        memcpy(wifi_config.sta.password, evt->password, sizeof(wifi_config.sta.password));
        wifi_config.sta.bssid_set = evt->bssid_set;
        if (wifi_config.sta.bssid_set == true) {
            memcpy(wifi_config.sta.bssid, evt->bssid, sizeof(wifi_config.sta.bssid));
        }

        memcpy(ssid, evt->ssid, sizeof(evt->ssid));
        memcpy(password, evt->password, sizeof(evt->password));
        ESP_LOGI(TAG, "SSID:%s", ssid);
        ESP_LOGI(TAG, "PASSWORD:%s", password);
        if (evt->type == SC_TYPE_ESPTOUCH_V2) {
            ESP_ERROR_CHECK( esp_smartconfig_get_rvd_data(rvd_data, sizeof(rvd_data)) );
            ESP_LOGI(TAG, "RVD_DATA:");
            for (int i=0; i<33; i++) {
                printf("%02x ", rvd_data[i]);
            }
            printf("\n");
        }

        //将ssid password 写入nvs falsh中
        NVS_Kv_Set(WIFI_INFO_REGION, STA_SSID_KEY, ssid, strlen((char*)ssid));
        NVS_Kv_Set(WIFI_INFO_REGION, STA_PASSWORD_KEY, password, strlen((char *)password));

        ESP_ERROR_CHECK( esp_wifi_disconnect() );
        ESP_ERROR_CHECK( esp_wifi_set_config(WIFI_IF_STA, &wifi_config) );
        esp_wifi_connect();
    } else if (event_base == SC_EVENT && event_id == SC_EVENT_SEND_ACK_DONE) {
        xEventGroupSetBits(s_wifi_conn_mgr, ESPTOUCH_DONE_BIT);
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
        ESP_LOGI(TAG, "config err");
        return ESP_ERR_INVALID_ARG;
    }

    esp_err_t  err;

    size_t ssid_len = 32;
    uint8_t ssid[32]   = {0};

    err = NVS_Kv_Get(WIFI_INFO_REGION, STA_SSID_KEY, ssid, ssid_len);
    if(err == ESP_OK && ssid_len)
    {
        *configured = true;
        ESP_LOGI(TAG, "Found ssid %s", ssid);
    } else{
         *configured = false;
        /*写入默认配置*/
        ESP_LOGI(TAG, "write default config");
        NVS_Kv_Set(WIFI_INFO_REGION, STA_SSID_KEY, "codbot2021", strlen("codbot2021"));
        NVS_Kv_Set(WIFI_INFO_REGION, STA_PASSWORD_KEY, "codbot2021", strlen("codbot2021"));
    }

    return err;
}

static esp_err_t  conn_mgr_obtain_time(void)
{
    static bool get_time_flag = false;
    time_t now = 0;
    struct tm timeInfo = {0};
    int sntp_retry_cnt = 0;
    int sntp_retry_time = 0;

    /*获取成功一次，即不再重复获取*/
    if(get_time_flag)
        return ESP_OK;
    /*设置sntp操作模式*/
    sntp_setoperatingmode(SNTP_OPMODE_POLL);

    sntp_setservername(0, "ntp1.aliyun.com");
    sntp_setservername(1, "ntp2.aliyun.com");
    sntp_setservername(2, "ntp3.aliyun.com");

    sntp_init();

    /*获取时间并转换*/
    while(1)
    {
        /*获取时间*/
        for(int32_t i = 0; i < (SNTP_RECV_TIMEOUT / 100) && timeInfo.tm_year < (2020 - 1900); i ++)
        {
            vTaskDelay(100/portTICK_RATE_MS);
            time(&now);
            /*获取当前时间*/
            localtime_r(&now, &timeInfo);
        }
        ESP_LOGI(TAG, "year : %d, sntp_retry_cnt:%d", timeInfo.tm_year,  sntp_retry_cnt);
        if(timeInfo.tm_year < (2020 - 1900) && sntp_retry_cnt < (SNTP_RECV_TIMEOUT / 100))
        {
            sntp_retry_time = SNTP_RECV_TIMEOUT << sntp_retry_cnt;
            if((SNTP_RECV_TIMEOUT << (sntp_retry_cnt + 1)) < SNTP_RETRY_TIMEOUT_MAX )
            {
                sntp_retry_cnt ++;
            }
            ESP_LOGW(TAG, "SNTP get time failed, retry after %d ms", sntp_retry_time);
            vTaskDelay(100/portTICK_RATE_MS);
        } else{
            ESP_LOGI(TAG, "SNTP get time success");
            break;
        }
        vTaskDelay(1);
    }
    get_time_flag = true;
    return ESP_OK;
}

esp_err_t  connect_mgr_init(void)
{


    ESP_ERROR_CHECK(esp_netif_init());
    s_wifi_conn_mgr = xEventGroupCreate();
   
    esp_netif_t *sta_netif = esp_netif_create_default_wifi_sta();
    assert(sta_netif);

    wifi_init_config_t cfg = WIFI_INIT_CONFIG_DEFAULT();
    ESP_ERROR_CHECK( esp_wifi_init(&cfg) );

    ESP_ERROR_CHECK( esp_event_handler_register(WIFI_EVENT, ESP_EVENT_ANY_ID   , &conn_mgr_wifi_event_loop_handler, NULL) );
    ESP_ERROR_CHECK( esp_event_handler_register(IP_EVENT  , IP_EVENT_STA_GOT_IP, &conn_mgr_wifi_event_loop_handler, NULL) );
    ESP_ERROR_CHECK( esp_event_handler_register(SC_EVENT  , ESP_EVENT_ANY_ID   , &conn_mgr_wifi_event_loop_handler, NULL) );

    ESP_ERROR_CHECK( esp_wifi_set_mode(WIFI_MODE_STA) );
    ESP_ERROR_CHECK( esp_wifi_start() );

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
       xTaskCreate(smartconfig_task, "smartconfig_task", 4096, NULL, 3, NULL);

    } else /*wifi连接*/
    {
        if (conn_mgr_wifi_connect() != ESP_OK) {
            ret = false;
        }
    }

    return ret == true ? ESP_OK : ESP_FAIL;
}


/***********************wifi_smart_config*******************************/


static void smartconfig_task(void *param)
{
    EventBits_t uxBits;
    ESP_ERROR_CHECK( esp_smartconfig_set_type(SC_TYPE_ESPTOUCH) );
    smartconfig_start_config_t cfg = SMARTCONFIG_START_CONFIG_DEFAULT();
    ESP_ERROR_CHECK( esp_smartconfig_start(&cfg) );
    while (1) {
        uxBits = xEventGroupWaitBits(s_wifi_conn_mgr, ESPTOUCH_DONE_BIT, false, true, portMAX_DELAY);

        if(uxBits & ESPTOUCH_DONE_BIT) {
            ESP_LOGI(TAG, "smartconfig over");
            esp_smartconfig_stop();
            vTaskDelete(NULL);
        }
    }

}