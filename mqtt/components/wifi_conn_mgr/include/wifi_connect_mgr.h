//
// Created by Lenovo on 2021-11-16.
//

#ifndef MQTT_TCP_WIFI_CONNECT_MGR_H
#define MQTT_TCP_WIFI_CONNECT_MGR_H
#define STA_SSID_KEY             "wifi_ssid"
#define STA_PASSWORD_KEY         "wifi_passwd"
#define WIFI_INFO_REGION   "nvs"
esp_err_t  connect_mgr_init(void);
esp_err_t  connect_mgr_start(void);
void  connect_mgr_save_wifi_config(void);
#endif //MQTT_TCP_WIFI_CONNECT_MGR_H
