#ifndef __NVS_WIFI_INFO_H__
#define __NVS_WIFI_INFO_H__

typedef struct{
    char wifi_ssid[33];
    char wifi_passwd[65];
   
}wifi_info_t;

typedef struct{
    char host[20];
    uint16_t port;
    uint16_t keepalive;
    char username[20];
    char password[20];
    char client_id[20];
}mqtt_info_t;




void write_wifi_ssid_passwd( wifi_info_t* _wifiInfo);
void read_wifi_info_passwd(wifi_info_t* _wifiInfo);
void write_mqtt_info_passwd( mqtt_info_t* _mqttInfo);
void read_mqtt_info_passwd(mqtt_info_t* _mqttInfo);

#endif /*__NVS_WIFI_INFO_H__*/