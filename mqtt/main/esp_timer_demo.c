/**
 * @file esp_timer_demo.c
 * @author wl (1546205823@qq.com)
 * @brief 
 * @version 0.1
 * @date 2021-11-04
 * 
 * @copyright Copyright (c) 2021
 * 
 */

#include <stdint.h>
#include <stddef.h>
#include <string.h>
#include "esp_wifi.h"
#include "esp_system.h"
#include "nvs_flash.h"
#include "esp_event.h"
#include "esp_netif.h"
#include "driver/gpio.h"

#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "freertos/semphr.h"
#include "freertos/queue.h"

#include "lwip/sockets.h"
#include "lwip/dns.h"
#include "lwip/netdb.h"

#include "esp_log.h"
#include "esp_err.h"

static char *TAG = "eps_timer";
esp_timer_handle_t periodic_timer;
static void periodic_timer_callback(void *arg)
{
    int64_t time_since_boot = esp_timer_get_time();
    // uint32_t test = 0x12345678;
    // uint8_t *p = &test;
    // ESP_LOGI(TAG,"%x, %x, %x, %X\r\n", *p, *(p+1), *(p+2), *(p+3));
    ESP_LOGI(TAG, "Periodic timer called, time since boot: %lld us", time_since_boot);
}

void esp_timerInit(void)
{

    const esp_timer_create_args_t periodic_timer_args = {
        .callback = &periodic_timer_callback, /* name is optional, but may help identify the timer when debugging */
        .name = "periodic"}; //周期定时器配置
    ESP_ERROR_CHECK(esp_timer_create(&periodic_timer_args, &periodic_timer));

    ESP_ERROR_CHECK(esp_timer_start_periodic(periodic_timer, 1000)); //1s回调一次
}