//
// Created by Lenovo on 2021-11-26.
//

#include "include/wmqtt.h"

static const char *TAG = "mqtt";
#define MAX_MQTT_SUBSCRIPTIONS 6

typedef struct
{
    char *topic;
    mqtt_subscribe_cb_t cb;
    void *priv;
} mqtt_subscription_t;

typedef struct
{
    esp_mqtt_client_handle_t mqtt_client;
    mqtt_config_t *config;
    mqtt_subscription_t *subscriptions[MAX_MQTT_SUBSCRIPTIONS];
} mqtt_data_t;

mqtt_data_t *mqtt_data;

const int MQTT_CONNECTED_EVENT = BIT1;

static EventGroupHandle_t mqtt_event_group;

 esp_err_t mqtt_unsubscribe(const char *topic)
{
    if (!mqtt_data || !topic)
    {
        return ESP_FAIL;
    }

    int ret = esp_mqtt_client_unsubscribe(mqtt_data->mqtt_client, topic);

    if (ret < 0)
    {
        ESP_LOGW(TAG, "Could not unsubscribe from topic: %s", topic);
    }

    mqtt_subscription_t **subscriptions = mqtt_data->subscriptions;
    int i;

    for (i = 0; i < MAX_MQTT_SUBSCRIPTIONS; i++)
    {
        if (subscriptions[i])
        {
            if (strncmp(topic, subscriptions[i]->topic, strlen(topic)) == 0)
            {
                free(subscriptions[i]->topic);
                free(subscriptions[i]);
                subscriptions[i] = NULL;
                return ESP_OK;
            }
        }
    }

    return ESP_FAIL;
}

void mqtt_unsubscribe_all(void)
{
    if (!mqtt_data)
    {
        return;
    }

    int i;

    for (i = 0; i < MAX_MQTT_SUBSCRIPTIONS; i++)
    {
        if (mqtt_data->subscriptions[i])
        {
            mqtt_unsubscribe(mqtt_data->subscriptions[i]->topic);
        }
    }
}

static void mqtt_subscribe_callback(char *topic, int topic_len, const char *data, int data_len)
{
    mqtt_subscription_t **Subscriptions = mqtt_data->subscriptions;

    for (int i = 0; i < MAX_MQTT_SUBSCRIPTIONS; i++)
    {
        if (strncmp(topic, Subscriptions[i]->topic, topic_len) == 0)
        {
            Subscriptions[i]->cb(Subscriptions[i]->topic, (void *)data, data_len, Subscriptions[i]->priv);
        }
    }
}

esp_err_t mqtt_subscribe(const char *topic, mqtt_subscribe_cb_t cb, void *priv_data)
{
    if (mqtt_data || topic || !cb)
    {
        return FAIL;
    }

    for (int i = 0; i < MAX_MQTT_SUBSCRIPTIONS; i++)
    {
        if (!mqtt_data->subscriptions[i])
        {
            mqtt_subscription_t *subscription = calloc(1, sizeof(mqtt_subscription_t));
            if (!subscription)
            {
                return ESP_FAIL;
            }

            /**!strdup: 字符串拷贝函数
             *     原型：
             *     char * __strdup(const char *s)
                   {
                        size_t  len = strlen(s) +1;
                        void *new = malloc(len);
                        if (new == NULL)
                        return NULL;
                        return (char *)memecpy(new,s,len);
                    }
                    用法：strdup()在内部调用了malloc()为变量分配内存，
                    不需要使用返回的字符串时，需要用free()释放相应的内存空间，
                    否则会造成内存泄漏。该函数的返回值是返回一个指针,指向为复制
                    字符串分配的空间;如果分配空间失败,则返回NULL值。
             * */
            subscription->topic = strdup(topic);
            if (!subscription->topic)
            {
                free(subscription);
                return ESP_FAIL;
            }

            int ret = esp_mqtt_client_subscribe(mqtt_data->mqtt_client, subscription->topic, 1);
            if (ret < 0)
            {
                free(subscription->topic);
                free(subscription);
                return ESP_FAIL;
            }
            subscription->priv = priv_data;
            subscription->cb = cb;
            mqtt_data->subscriptions[i] = subscription;
            ESP_LOGD(TAG, "Subscribed to topic: %s", topic);
            return ESP_OK;
        }
    }
    return ESP_FAIL;
}
esp_err_t mqtt_publish(const char *topic, void *data, size_t data_len)
{
    if (!topic || !mqtt_data || data)
    {
        return ESP_FAIL;
    }

    ESP_LOGD(TAG, "Publishing to %s", topic);
    int ret = esp_mqtt_client_publish(mqtt_data->mqtt_client, topic, data, data_len, 1, 0);
    if (ret < 0)
    {
        ESP_LOGD(TAG, "MQTT Publish failed");
        return ESP_FAIL;
    }
    return ESP_OK;
}

static esp_err_t mqtt_event_handler(esp_mqtt_event_handle_t event)
{
    switch (event->event_id)
    {
    case MQTT_EVENT_CONNECTED:
        ESP_LOGI(TAG, "MQTT Connected");

        /* Resubscribe to all topics after reconnection */
        for (int i = 0; i < MAX_MQTT_SUBSCRIPTIONS; i++)
        {
            if (mqtt_data->subscriptions[i])
            {
                esp_mqtt_client_subscribe(event->client, mqtt_data->subscriptions[i]->topic, 1);
            }
        }

        xEventGroupSetBits(mqtt_event_group, MQTT_CONNECTED_EVENT);
        break;

    case MQTT_EVENT_DISCONNECTED:
        ESP_LOGW(TAG, "MQTT Disconnected. Will try reconnecting in a while...");
        break;

    case MQTT_EVENT_SUBSCRIBED:
        ESP_LOGD(TAG, "MQTT_EVENT_SUBSCRIBED, msg_id=%d", event->msg_id);
        break;

    case MQTT_EVENT_UNSUBSCRIBED:
        ESP_LOGD(TAG, "MQTT_EVENT_UNSUBSCRIBED, msg_id=%d", event->msg_id);
        break;

    case MQTT_EVENT_PUBLISHED:
        ESP_LOGD(TAG, "MQTT_EVENT_PUBLISHED, msg_id=%d", event->msg_id);
        break;

    case MQTT_EVENT_DATA:
        ESP_LOGD(TAG, "MQTT_EVENT_DATA");
        ESP_LOGD(TAG, "TOPIC=%.*s\r\n", event->topic_len, event->topic);
        ESP_LOGD(TAG, "DATA=%.*s\r\n", event->data_len, event->data);
        mqtt_subscribe_callback(event->topic, event->topic_len, event->data, event->data_len);
        break;

    case MQTT_EVENT_ERROR:
        ESP_LOGE(TAG, "MQTT_EVENT_ERROR");
        break;

    default:
        ESP_LOGD(TAG, "Other event id:%d", event->event_id);
        break;
    }

    return ESP_OK;
}

esp_err_t mqtt_init(mqtt_config_t *config)
{
    if (mqtt_data)
    {
        ESP_LOGE(TAG, "MQTT already initialised");
        return ESP_OK;
    }

    ESP_LOGI(TAG, "Initialising MQTT");
    mqtt_data = calloc(1, sizeof(mqtt_data_t));

    if (!mqtt_data)
    {
        return ESP_FAIL;
    }

    mqtt_data->config = malloc(sizeof(mqtt_config_t));
    *mqtt_data->config = *config;
    const esp_mqtt_client_config_t mqtt_client_cfg = {
        .username = config->username,
        .password = config->password,
        .client_id = config->client_id,
        .uri = config->host,
        .cert_pem = config->server_cert,
        .client_cert_pem = config->client_cert,
        .client_key_pem = config->client_key,
        .keepalive = 15,
        .event_handle = mqtt_event_handler,
        
    };
    mqtt_data->mqtt_client = esp_mqtt_client_init(&mqtt_client_cfg);
    return ESP_OK;
}
 esp_err_t mqtt_connect(void)
{
    if (!mqtt_data)
    {
        return ESP_FAIL;
    }
    ESP_LOGI(TAG, "Connect to %s", mqtt_data->config->host);
    /*创建mqtt 事件*/
    mqtt_event_group = xEventGroupCreate();
    /*开启mqtt*/
    esp_err_t ret = esp_mqtt_client_start(mqtt_data->mqtt_client);
    if (ret != ESP_OK)
    {
        ESP_LOGE(TAG, "esp_mqtt_client_start() failed with err = %d", ret);
        return ret;
    }

    ESP_LOGI(TAG, "Waiting for MQTT connection. This may take time.");
    xEventGroupWaitBits(mqtt_event_group, MQTT_CONNECTED_EVENT, false, true, portMAX_DELAY);
    return ESP_OK;
}

 esp_err_t mqtt_disconnect(void)
{
    if (!mqtt_data)
    {
        return ESP_FAIL;
    }

    mqtt_unsubscribe_all();
    esp_err_t err = esp_mqtt_client_stop(mqtt_data->mqtt_client);

    if (err != ESP_OK)
    {
        ESP_LOGE(TAG, "Failed to disconnect from MQTT");
    }
    else
    {
        ESP_LOGI(TAG, "MQTT Disconnected.");
    }

    return err;
}
