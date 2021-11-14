#include <string.h>
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "freertos/event_groups.h"
#include "esp_system.h"
#include "esp_wifi.h"
#include "esp_event.h"
#include "esp_log.h"
#include "nvs_flash.h"

#include "lwip/err.h"
#include "lwip/sys.h"

#include "nvs_wifi_info.h"
#include "smart_config.h"
#include "esp_smartconfig.h"

#include "http_server.h"

#define WIFI_SSID        "codbot"
#define WIFI_PASSWD      "codbot2021"
#define MAXIMUM_RETRY    10

static EventGroupHandle_t s_wifi_event_group;

#define WIFI_CONNECTED_BIT BIT0
#define WIFI_FAIL_BIT      BIT1
#define ESPTOUCH_DONE_BIT  BIT2

static const char *TAG = "wifi station";
static int  s_retry_num = 0;



static void event_handler(void* arg, esp_event_base_t event_base,
                                int32_t event_id, void* event_data)
{
     if (event_base == WIFI_EVENT && event_id == WIFI_EVENT_STA_START)
     {
         esp_wifi_connect();
     }else if (event_base == WIFI_EVENT && event_id == WIFI_EVENT_STA_DISCONNECTED) {
        if (s_retry_num < MAXIMUM_RETRY) {
            esp_wifi_connect();
            s_retry_num++;
            ESP_LOGI(TAG, "retry to connect to the AP");
            xEventGroupClearBits(s_wifi_event_group, WIFI_CONNECTED_BIT);
        } else {
            xEventGroupSetBits(s_wifi_event_group, WIFI_FAIL_BIT);
        }
        ESP_LOGI(TAG,"connect to the AP fail");
    }else if (event_base == IP_EVENT && event_id == IP_EVENT_STA_GOT_IP) {
        ip_event_got_ip_t* event = (ip_event_got_ip_t*) event_data;
        ESP_LOGI(TAG, "got ip:" IPSTR, IP2STR(&event->ip_info.ip));
        s_retry_num = 0;
        xEventGroupSetBits(s_wifi_event_group, WIFI_CONNECTED_BIT);
    }
    else if (event_base == SC_EVENT && event_id == SC_EVENT_SCAN_DONE) {
        ESP_LOGI(TAG, "Scan done");
    } else if (event_base == SC_EVENT && event_id == SC_EVENT_FOUND_CHANNEL) {
        ESP_LOGI(TAG, "Found channel");
    } else if (event_base == SC_EVENT && event_id == SC_EVENT_GOT_SSID_PSWD) {
        ESP_LOGI(TAG, "Got SSID and password");

        smartconfig_event_got_ssid_pswd_t *evt = (smartconfig_event_got_ssid_pswd_t *)event_data;
        wifi_config_t wifi_config;
        wifi_info_t _wifiInfo;
        uint8_t rvd_data[33] = { 0 };

        bzero(&_wifiInfo, sizeof(wifi_info_t));
        bzero(&wifi_config, sizeof(wifi_config_t));

        /**/
        memcpy(wifi_config.sta.ssid, evt->ssid, sizeof(wifi_config.sta.ssid));
        memcpy(wifi_config.sta.password, evt->password, sizeof(wifi_config.sta.password));
        wifi_config.sta.bssid_set = evt->bssid_set;
        if (wifi_config.sta.bssid_set == true) {
            memcpy(wifi_config.sta.bssid, evt->bssid, sizeof(wifi_config.sta.bssid));
        }

        memcpy(_wifiInfo.wifi_ssid, evt->ssid, sizeof(evt->ssid));
        memcpy(_wifiInfo.wifi_passwd, evt->password, sizeof(evt->password));
        
        /*写入nvs存储中*/
        write_wifi_ssid_passwd(&_wifiInfo);
       
        ESP_LOGI(TAG, "SSID:%s", _wifiInfo.wifi_ssid);
        ESP_LOGI(TAG, "PASSWORD:%s",  _wifiInfo.wifi_passwd);
        if (evt->type == SC_TYPE_ESPTOUCH_V2) {
            ESP_ERROR_CHECK( esp_smartconfig_get_rvd_data(rvd_data, sizeof(rvd_data)) );
            ESP_LOGI(TAG, "RVD_DATA:");
            for (int i=0; i<33; i++) {
                printf("%02x ", rvd_data[i]);
            }
            printf("\n");
        }

        ESP_ERROR_CHECK( esp_wifi_disconnect() );
        ESP_ERROR_CHECK( esp_wifi_set_config(WIFI_IF_STA, &wifi_config) );
        esp_wifi_connect();
    } else if (event_base == SC_EVENT && event_id == SC_EVENT_SEND_ACK_DONE) {
        xEventGroupSetBits(s_wifi_event_group, ESPTOUCH_DONE_BIT);
    }

}


static void smartconfig_init(void)
{
    EventBits_t uxBits;
    ESP_ERROR_CHECK( esp_smartconfig_set_type(SC_TYPE_ESPTOUCH) );
    smartconfig_start_config_t cfg = SMARTCONFIG_START_CONFIG_DEFAULT();
    ESP_ERROR_CHECK(esp_smartconfig_start(&cfg));
    ESP_LOGI(TAG,"smart config start");

    uxBits = xEventGroupWaitBits(s_wifi_event_group, WIFI_CONNECTED_BIT | ESPTOUCH_DONE_BIT, true, false, portMAX_DELAY);
    if(uxBits & WIFI_CONNECTED_BIT) {
        ESP_LOGI(TAG, "WiFi Connected to ap");
        
    }

    if(uxBits & ESPTOUCH_DONE_BIT) {
        ESP_LOGI(TAG, "smartconfig over");
        esp_smartconfig_stop();
        
     }


}

void wifi_init_sta(void)
{
    wifi_info_t _wifiInfo;

    s_wifi_event_group = xEventGroupCreate();


    esp_netif_create_default_wifi_sta();

    wifi_init_config_t cfg = WIFI_INIT_CONFIG_DEFAULT();
    
    ESP_ERROR_CHECK(esp_wifi_init(&cfg));

     /* The event will not be processed after unregister */
    ESP_ERROR_CHECK( esp_event_handler_register(WIFI_EVENT, ESP_EVENT_ANY_ID, &event_handler, NULL) );
    /*注册IP事件，获取IP触发*/
    ESP_ERROR_CHECK( esp_event_handler_register(IP_EVENT, IP_EVENT_STA_GOT_IP, &event_handler, NULL) );
    /*注册一键配网事件，任意事件ID触发*/
    ESP_ERROR_CHECK( esp_event_handler_register(SC_EVENT, ESP_EVENT_ANY_ID, &event_handler, NULL) );

    read_wifi_info_passwd(&_wifiInfo);
    
    wifi_config_t wifi_config;   
    bzero(&wifi_config, sizeof(wifi_config_t)); 
    memcpy(wifi_config.sta.ssid, _wifiInfo.wifi_ssid, sizeof(wifi_config.sta.ssid));
    memcpy(wifi_config.sta.password, _wifiInfo.wifi_passwd, sizeof(wifi_config.sta.password));


    ESP_ERROR_CHECK(esp_wifi_set_mode(WIFI_MODE_STA));
    ESP_ERROR_CHECK(esp_wifi_set_config(WIFI_IF_STA, &wifi_config));
    ESP_ERROR_CHECK(esp_wifi_start());

     ESP_LOGI(TAG, "wifi_init_sta finished.");

    EventBits_t bits = xEventGroupWaitBits(s_wifi_event_group,
            WIFI_CONNECTED_BIT | WIFI_FAIL_BIT,
            pdFALSE,
            pdFALSE,
            portMAX_DELAY);
        if (bits & WIFI_CONNECTED_BIT) {
        ESP_LOGI(TAG, "connected to ap SSID:%s password:%s",
                  _wifiInfo.wifi_ssid, _wifiInfo.wifi_passwd);
        
         start_web_server("/spiffs");
         vEventGroupDelete(s_wifi_event_group);
    } else if (bits & WIFI_FAIL_BIT) {
        ESP_LOGI(TAG, "Failed to connect to SSID:%s, password:%s",
                  _wifiInfo.wifi_ssid, _wifiInfo.wifi_passwd);
          smartconfig_init();
              
    } else {
        ESP_LOGE(TAG, "UNEXPECTED EVENT");
        smartconfig_init();
    } 
}