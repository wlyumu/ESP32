#include <stdio.h>
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "esp_system.h"
#include "nvs_flash.h"
#include "nvs.h"
#include "nvs_wifi_info.h"


static wifi_info_t s_wifiInfo = {
    "codbot",
    "codbot2021"
};

/**
 * @Brief : nvs flash中读写数据
 */
void nvs_write_read(void)
{
    char g_wifi_ssid[50] = {0};
    char g_wifi_passwd[50] = {0};
    size_t len;

    esp_err_t err;
    nvs_handle_t nvs_handle;

    err = nvs_open("storge", NVS_READWRITE, &nvs_handle);
    if(err != ESP_OK)
    {
        printf("Error (%s) opening NVS handle\n", esp_err_to_name(err));
    }

  
    // err = nvs_get_str(nvs_handle, "wifi_ssid", wifi_ssid, &len);
    // switch(err){
    //     case ESP_OK:
    //         printf("Done\n");
    //         printf("wifi ssid  = %s\n", wifi_ssid);
    //     break;
    //     case ESP_ERR_NVS_NOT_FOUND:
    //     printf("The value is not initialized yet!\n");
    //     break;

    //     default :
    //        printf("Error (%s) reading!\n", esp_err_to_name(err));
    //     break;
    // }

    // err = nvs_get_str(nvs_handle, "wifi_passwd", wifi_passwd, &len);
    // switch(err){
    //     case ESP_OK:
    //         printf("Done\n");
    //         printf("wifi passwd  = %s\n", wifi_passwd);
    //     break;
    //     case ESP_ERR_NVS_NOT_FOUND:
    //     printf("The value is not initialized yet!\n");
    //     break;

    //     default :
    //        printf("Error (%s) reading!\n", esp_err_to_name(err));
    //     break;
    // }

    /*write*/
    err = nvs_set_str(nvs_handle, "wifi_ssid", "codbot");
    printf((err != ESP_OK) ? "Failed!\n" : "Done\n");



    err = nvs_set_str(nvs_handle, "wifi_passwd", "codbot2021");
    printf((err != ESP_OK) ? "Failed!\n" : "Done\n");

    printf("Committing updates in NVS ... ");
    err = nvs_commit(nvs_handle);
    printf((err != ESP_OK) ? "Failed!\n" : "Done\n");


printf("---------------------------------------\r\n");
    err = nvs_get_str(nvs_handle, "wifi_ssid", g_wifi_ssid, &len);
    switch(err){
        case ESP_OK:
            printf("Done\n");
            printf("wifi ssid  = %s\n", g_wifi_ssid);
        break;
        case ESP_ERR_NVS_NOT_FOUND:
        printf("The value is not initialized yet!\n");
        break;

        default :
           printf("Error (%s) reading!\n", esp_err_to_name(err));
        break;
    }
    size_t _len;
    err = nvs_get_str(nvs_handle, "wifi_passwd", g_wifi_passwd, &_len);
    switch(err){
        case ESP_OK:
            printf("Done\n");
            printf("wifi passwd  = %s\n", g_wifi_passwd);
        break;
        case ESP_ERR_NVS_NOT_FOUND:
        printf("The value is not initialized yet!\n");
        break;

        default :
           printf("Error (%s) reading!\n", esp_err_to_name(err));
        break;
    }

     // Close
     nvs_close(nvs_handle);

     printf("\n");


}


/**
 * @Brief : write wifi_ssid and wifi_passwd key-value
 * @param  _wifiInfo   要写入的WiFi信息            
 */
void write_wifi_ssid_passwd( wifi_info_t* _wifiInfo)
{
    esp_err_t err;
    nvs_handle_t nvs_handle;

    err = nvs_open("storge", NVS_READWRITE, &nvs_handle);
    if(err != ESP_OK)
    {
        printf("Error (%s) opening NVS handle\n", esp_err_to_name(err));
    }
    
     /*write*/
    err = nvs_set_str(nvs_handle, "wifi_ssid", _wifiInfo->wifi_ssid);
    printf((err != ESP_OK) ? "Failed!\n" : "Done\n");



    err = nvs_set_str(nvs_handle, "wifi_passwd", _wifiInfo->wifi_passwd);
    printf((err != ESP_OK) ? "Failed!\n" : "Done\n");

    err = nvs_commit(nvs_handle);
    printf((err != ESP_OK) ? "Failed!\n" : "Done\n");

    nvs_close(nvs_handle);

}


esp_err_t nvs_flash_clear_key(const char* key, nvs_handle_t  nvs_handle)
{
    esp_err_t err;
    err = nvs_open("storge", NVS_READWRITE, &nvs_handle);
    if(err != ESP_OK)
    {
        printf("Error (%s) opening NVS handle\n", esp_err_to_name(err));
        return err;
    }

    /*清除NVS flash wifi_ssid wifi_passwd 键值*/
    nvs_erase_key(nvs_handle, "wifi_ssid");
    nvs_erase_key(nvs_handle, "wifi_passwd");

    nvs_close(nvs_handle);

    return err;

}

/**
 * @Brief : read wifi_ssid and wifi_passwd key-value
 * @param  _wifiInfo     要读取的wifi信息      
 */
void read_wifi_info_passwd(wifi_info_t* _wifiInfo)
{
    esp_err_t err;
    nvs_handle_t nvs_handle;
    size_t _len;

    /*wifi info 键值是否写入nvs flash的标志*/
     uint8_t s_nvs_wifi_state = 0; 
    /*mqtt info 键值是否写入nvs flash的标志*/

    err = nvs_open("storge", NVS_READWRITE, &nvs_handle);
    if(err != ESP_OK)
    {
        printf("Error (%s) opening NVS handle\n", esp_err_to_name(err));
    }

    _len = 33;
    err = nvs_get_str(nvs_handle, "wifi_ssid", _wifiInfo->wifi_ssid, &_len);
    switch(err){
        case ESP_OK:
            printf("Done\n");
            printf("wifi ssid  = %s\n", _wifiInfo->wifi_ssid);
        break;
        case ESP_ERR_NVS_NOT_FOUND:
        printf("The value is not initialized yet!\n");
             s_nvs_wifi_state |= 1 << 0;
        break;

        default :
           printf("Error (%s) reading!\n", esp_err_to_name(err));
        break;
    }
    _len = 60;
    err = nvs_get_str(nvs_handle, "wifi_passwd", _wifiInfo->wifi_passwd, &_len);
    switch(err){
        case ESP_OK:
            printf("Done\n");
            printf("wifi passwd  = %s\n", _wifiInfo->wifi_passwd);
        break;
        case ESP_ERR_NVS_NOT_FOUND:
        printf("The value is not initialized yet!\n");
             s_nvs_wifi_state |= 1 << 1;
        break;

        default :
           printf("Error (%s) reading!\n", esp_err_to_name(err));
        break;
    }

    // Close
    nvs_close(nvs_handle);

    printf("wifi passwd : %x\n", s_nvs_wifi_state);

    if(s_nvs_wifi_state == 0x3)
    {
        /*写入默认wifi info*/
        write_wifi_ssid_passwd(&s_wifiInfo);
        /*读取数据验证是否写入成功*/
        read_wifi_info_passwd(_wifiInfo);
    }
   
}

/**
 * @Brief : 向nvs flash 写入mqtt相关信息
 * @param  _mqttInfo    要写入的mqtt信息    
 */
void write_mqtt_info_passwd( mqtt_info_t* _mqttInfo)
{
    esp_err_t err;
    nvs_handle_t nvs_handle;

    err = nvs_open("storge", NVS_READWRITE, &nvs_handle);
    if(err != ESP_OK)
    {
        printf("Error (%s) opening NVS handle\n", esp_err_to_name(err));
    }
    
     /*write*/
    err = nvs_set_str(nvs_handle, "host", _mqttInfo->host);
    printf((err != ESP_OK) ? "Failed!\n" : "Done\n");



    err = nvs_set_str(nvs_handle, "port", (char*)&(_mqttInfo->port));
    printf((err != ESP_OK) ? "Failed!\n" : "Done\n");

    err = nvs_set_str(nvs_handle, "username", _mqttInfo->username);
    printf((err != ESP_OK) ? "Failed!\n" : "Done\n");

    err = nvs_set_str(nvs_handle, "password", _mqttInfo->password);
    printf((err != ESP_OK) ? "Failed!\n" : "Done\n");
    
    err = nvs_set_str(nvs_handle, "client_id", _mqttInfo->client_id);
    printf((err != ESP_OK) ? "Failed!\n" : "Done\n");

    err = nvs_set_str(nvs_handle, "keepalive", (char*)&(_mqttInfo->keepalive));
    printf((err != ESP_OK) ? "Failed!\n" : "Done\n");

    err = nvs_commit(nvs_handle);
    printf((err != ESP_OK) ? "Failed!\n" : "Done\n");

    nvs_close(nvs_handle);

}

/**
 * @Brief : 从nvs flash 中读取mqtt info
 * @param  _mqttInfo  存储mqtt info 缓冲区      
 */
 void read_mqtt_info_passwd(mqtt_info_t* _mqttInfo)
{
    esp_err_t err;
    nvs_handle_t nvs_handle;
    size_t _len;
    err = nvs_open("storge", NVS_READWRITE, &nvs_handle);
    if(err != ESP_OK)
    {
        printf("Error (%s) opening NVS handle\n", esp_err_to_name(err));
    }

    _len = sizeof( _mqttInfo->host) / sizeof( _mqttInfo->host[0]);
    err = nvs_get_str(nvs_handle, "host", _mqttInfo->host, &_len);
    switch(err){
        case ESP_OK:
            printf("Done\n");
            printf("host  = %s\n", _mqttInfo->host);

        break;
        case ESP_ERR_NVS_NOT_FOUND:
        printf("The value is not initialized yet!\n");
        break;

        default :
           printf("Error (%s) reading!\n", esp_err_to_name(err));
        break;
    }

    _len = sizeof( _mqttInfo->port);
    err = nvs_get_str(nvs_handle, "port",  (char*)(&_mqttInfo->port), &_len);
    switch(err){
        case ESP_OK:
            printf("Done\n");
            printf("port = %d\n",  _mqttInfo->port);
        break;
        case ESP_ERR_NVS_NOT_FOUND:
        printf("The value is not initialized yet!\n");
        break;

        default :
           printf("Error (%s) reading!\n", esp_err_to_name(err));
        break;
    }

    _len = sizeof( _mqttInfo->password) / sizeof( _mqttInfo->password[0]);
    err = nvs_get_str(nvs_handle, "password",  _mqttInfo->password, &_len);
    switch(err){
        case ESP_OK:
            printf("Done\n");
            printf("password = %s\n",  _mqttInfo->password);
        break;
        case ESP_ERR_NVS_NOT_FOUND:
        printf("The value is not initialized yet!\n");
        break;

        default :
           printf("Error (%s) reading!\n", esp_err_to_name(err));
        break;
    }

    _len = sizeof( _mqttInfo->username) / sizeof( _mqttInfo->username[0]);
    err = nvs_get_str(nvs_handle, "username",  _mqttInfo->username, &_len);
    switch(err){
        case ESP_OK:
            printf("Done\n");
            printf("username = %s\n",  _mqttInfo->username);
        break;
        case ESP_ERR_NVS_NOT_FOUND:
        printf("The value is not initialized yet!\n");
        break;

        default :
           printf("Error (%s) reading!\n", esp_err_to_name(err));
        break;
    }

     _len = sizeof( _mqttInfo->client_id) / sizeof( _mqttInfo->client_id[0]);
    err = nvs_get_str(nvs_handle, "client_id",  _mqttInfo->client_id, &_len);
    switch(err){
        case ESP_OK:
            printf("Done\n");
            printf("client_id = %s\n",  _mqttInfo->client_id);
        break;
        case ESP_ERR_NVS_NOT_FOUND:
        printf("The value is not initialized yet!\n");
        break;

        default :
           printf("Error (%s) reading!\n", esp_err_to_name(err));
        break;
    }

    _len = sizeof( _mqttInfo->keepalive);
    err = nvs_get_str(nvs_handle, "keepalive", (char*)(&_mqttInfo->keepalive), &_len);
    switch(err){
        case ESP_OK:
            printf("Done\n");
            printf("port = %d\n",  _mqttInfo->keepalive);
        break;
        case ESP_ERR_NVS_NOT_FOUND:
        printf("The value is not initialized yet!\n");
        break;

        default :
           printf("Error (%s) reading!\n", esp_err_to_name(err));
        break;
    }
     // Close
     nvs_close(nvs_handle);
}