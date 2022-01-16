//
// Created by Lenovo on 2021-11-16.
//

#ifndef MQTT_TCP_NVS_KV_H
#define MQTT_TCP_NVS_KV_H

esp_err_t NVS_Kv_Init(void);
esp_err_t NVS_Kv_Delete(const char *name, const char *key);
esp_err_t NVS_Kv_Get(const char *name, const char *key, void *value, size_t length);
esp_err_t NVS_Kv_Set(const char *name, const char *key, const void *value, size_t length);
#endif //MQTT_TCP_NVS_KV_H
