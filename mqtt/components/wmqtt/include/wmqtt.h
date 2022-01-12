//
// Created by Lenovo on 2021-11-26.
//

#ifndef MQTT_TCP_MQTT_H
#define MQTT_TCP_MQTT_H

#include <stdio.h>
#include <string.h>

#include <freertos/FreeRTOS.h>
#include <freertos/task.h>
#include <freertos/event_groups.h>

#include <esp_log.h>
#include <mqtt_client.h>

/**
 * @brief mqtt configuration
 */
 typedef struct {
     char *host;
     char *password;        /**< MQTT Host */
     char *username;
     char *client_id;       /**< Client ID */
     char *client_cert;     /**< Client Certificate in NULL terminate PEM format */
     char *client_key;      /**< Client Key in NULL terminate PEM format */
     char *server_cert;     /**< Server Certificate in NULL terminate PEM format */
 }mqtt_config_t;



/** ESP  MQTT Subscribe callback prototype
 *
 * @param[in] topic Topic on which the message was received
 * @param[in] payload Data received in the message
 * @param[in] payload_len Length of the data
 * @param[in] priv_data The private data passed during subscription
 */
typedef void (*mqtt_subscribe_cb_t)(const char *topic, void *payload, size_t payload_len, void *priv_data);

/** Initialize MQTT
 *
 * @param[in] config The MQTT configuration data
 *
 * @return ESP_OK on success.
 * @return error in case of any error.
 */
esp_err_t mqtt_init(mqtt_config_t *config);

/** MQTT Connect
 *
 * Starts the connection attempts to the MQTT broker as per the configuration
 * provided during initializing.
 * This should ideally be called after successful network connection.
 *
 * @return ESP_OK on success.
 * @return error in case of any error.
 */
esp_err_t mqtt_connect(void);

/** MQTT Disconnect
 *
 * Disconnects from the MQTT broker.
 *
 * @return ESP_OK on success.
 * @return error in case of any error.
 */
esp_err_t mqtt_disconnect(void);

/** Publish MQTT Message
 *
 * @param[in] topic The MQTT topic on which the message should be published.
 * @param[in] data Data to be published
 * @param[in] data_len Length of the data
 *
 * @return ESP_OK on success.
 * @return error in case of any error.
 */
esp_err_t mqtt_publish(const char *topic, void *data, size_t data_len);

/** Subscribe to MQTT topic
 *
 * @param[in] topic The topic to be subscribed to.
 * @param[in] cb The callback to be invoked when a message is received on the given topic.
 * @param[in] priv_data Optional private data to be passed to the callback
 *
 * @return ESP_OK on success.
 * @return error in case of any error.
 */
esp_err_t mqtt_subscribe(const char *topic, mqtt_subscribe_cb_t cb, void *priv_data);

/** Unsubscribe from MQTT topic
 *
 * @param[in] topic Topic from which to unsubscribe.
 *
 * @return ESP_OK on success.
 * @return error in case of any error.
 */
esp_err_t mqtt_unsubscribe(const char *topic);


#endif //MQTT_TCP_MQTT_H
