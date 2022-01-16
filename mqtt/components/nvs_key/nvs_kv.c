//
// Created by Lenovo on 2021-11-16.
//


#include <stdio.h>
#include <string.h>
#include "nvs_flash.h"
#include "nvs.h"

#include "esp_err.h"
#include "esp_log.h"

#include "include/nvs_kv.h"

static const char *TAG = "nvs_kv";


esp_err_t NVS_Kv_Init(void)
{
    esp_err_t  err = nvs_flash_init();
    if(err == ESP_ERR_NVS_NO_FREE_PAGES || err == ESP_ERR_NVS_NEW_VERSION_FOUND)
    {
        ESP_ERROR_CHECK(nvs_flash_erase());
        err = nvs_flash_init();
    } else if(err != ESP_OK){

        ESP_LOGE(TAG, "NVS FLASH INIT %d FAILED", err);
    }
    return err;
}

esp_err_t NVS_Kv_Delete(const char*name, const char *key)
{
    nvs_handle nvs_handle;
    esp_err_t err;
    char key_name[16] = {0};

    if(key == NULL)
    {
        ESP_LOGW(TAG, "NVS_KV del NULL key");
        return  ESP_FAIL;
    }

    err = nvs_open(name, NVS_READWRITE, &nvs_handle);
    if(err != ESP_OK)
    {
        ESP_LOGW(TAG, "nvs_key open  failed with %x", err);
    }

    memcpy(key_name, key, sizeof(key_name));
    if(!strcmp(key_name, name)){
        err = nvs_erase_all(nvs_handle);
    } else{
        err = nvs_erase_key(nvs_handle, key_name);
    }

    if (err != ESP_OK) {
        ESP_LOGE(TAG, "nvs_key erase key %s failed with %x", key_name, err);
    } else {
        nvs_commit(nvs_handle);
    }

    nvs_close(nvs_handle);
    return err;
}

esp_err_t NVS_Kv_Get(const char *name, const char *key, void *value, size_t length)
{
    nvs_handle_t  nvs_handle;
    esp_err_t  err;

    err = nvs_open(name, NVS_READONLY, &nvs_handle);
    if(err != ESP_OK)
    {
        ESP_LOGW(TAG, "Error (%s) opening NVS handle!", esp_err_to_name(err));
    }

    err = nvs_get_blob(nvs_handle, key, value, &length);

    if(err != ESP_OK)
    {
        printf("Error (%s) reading!\n", esp_err_to_name(err));
    }
    nvs_close(nvs_handle);
    return  err;
}


esp_err_t NVS_Kv_Set(const char *name, const char *key, const void *value, size_t length)
{
    nvs_handle_t  nvs_handle;
    esp_err_t  err;

    err = nvs_open(name, NVS_READWRITE, &nvs_handle);
    if(err != ESP_OK)
    {
        ESP_LOGW(TAG, "Error (%s) opening NVS handle!", esp_err_to_name(err));
    }

    err = nvs_set_blob(nvs_handle, key, value, length);
    if(err != ESP_OK)
    {
        ESP_LOGW(TAG, "Error (%s) opening NVS handle!", esp_err_to_name(err));
    }

    err = nvs_commit(nvs_handle);
    nvs_close(nvs_handle);

    return err;
}