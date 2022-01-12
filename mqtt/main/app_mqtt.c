#include "wmqtt.h"
#include "esp_log.h"

#define MQTT_CLIENT_ID    "admin2"
#define MQTT_USERNAME     "admin2"
#define MQTT_PASSWORD     "admin2"
#define MQTT_HOST         "mqtt://8.129.223.164:1883"

static const char *TAG = "app_mqtt";

esp_err_t mqtt_app_start(void)
{
    esp_err_t err = ESP_FAIL;
    mqtt_config_t mqtt_cfg = {0};

    //set mqtt config
    mqtt_cfg.client_id = MQTT_CLIENT_ID;
    mqtt_cfg.username  = MQTT_USERNAME;
    mqtt_cfg.password  = MQTT_PASSWORD;
    mqtt_cfg.host      = MQTT_HOST;

    ESP_ERROR_CHECK(mqtt_init(&mqtt_cfg));
    ESP_LOGD(TAG, "qcloud_uri: %s", mqtt_cfg.host);
    ESP_LOGD(TAG, "client_id: %s", mqtt_cfg.client_id);
    ESP_LOGD(TAG, "username: %s", mqtt_cfg.username);
    ESP_LOGD(TAG, "password: %s", mqtt_cfg.password);


    mqtt_connect();

    return err;
}