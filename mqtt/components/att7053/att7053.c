//
// Created by Lenovo on 2022-1-11.
//
#include "stdio.h"
#include "spi_bus.h"
#include "esp_log.h"
#include "string.h"
#include "Freertos/task.h"

#define VSPI_MOSI_GPIO    GPIO_NUM_12
#define VSPI_MISO_GPIO    GPIO_NUM_13
#define VSPI_SCLK_GPIO    GPIO_NUM_14
#define VSPI_CS_GPIO      GPIO_NUM_15

#define VSPI_CLK_HZ  40 * 1000 * 1000


//spi bus config
spi_config_t bus_conf = {
        .miso_io_num = VSPI_MISO_GPIO,
        .mosi_io_num = VSPI_MOSI_GPIO,
        .sclk_io_num = VSPI_SCLK_GPIO,
};

//att7053 device init
spi_device_config_t att7053_device_cfg= {
        .cs_io_num = VSPI_CS_GPIO,
        .clock_speed_hz = VSPI_CLK_HZ,
        .mode = 0, // 配置时钟极性
};

spi_bus_handle_t  bus_handle = NULL;

spi_bus_device_handle_t     att7053_devHandle = NULL;

static const char *TAG = "att7053";


esp_err_t  att7053WriteData(uint8_t* data, uint8_t cmd, size_t len)
{
    esp_err_t ret;
    if(len > 4)
    {
        ret = ESP_ERR_INVALID_ARG;
        return ret;
    }

    spi_transaction_t t = {
            .flags  = SPI_TRANS_USE_TXDATA,
            .cmd    = cmd,
            .length = len * 8,

    };

    if(data)
    {
        t.tx_buffer = data;
    }

    ret = spi_bus_transmit_begin(att7053_devHandle, &t);

    return ESP_OK;
}

esp_err_t  att7053ReadData(uint32_t* data, uint8_t cmd, size_t len)
{
    esp_err_t ret;
    if(len > 4)
    {
        ret = ESP_ERR_INVALID_ARG;
        return ret;
    }

    spi_transaction_t t = {
            .flags  = SPI_TRANS_USE_RXDATA | SPI_TRANS_USE_TXDATA,
            .cmd    = cmd,
            .length = len * 8,
            .rxlength = len * 8,
    };

    ret = spi_bus_transmit_begin(att7053_devHandle, &t);

    if(!(ret == ESP_OK)) {
        ESP_LOGE(TAG,"%s:%d (%s):%s", __FILE__, __LINE__, __FUNCTION__, "att7053 read data failed");
        return (ret);
    }
    if(data)
    {
        *data =  (t.rx_data[0] << 16) | (t.rx_data[1] << 8) | t.rx_data[2];
    }

    return ESP_OK;
}




esp_err_t  att7053_device_init(void)
{
    esp_err_t  ret;
    uint8_t  _buf[4] = {0};
    uint8_t  _cmd = 0;
    //1.create spi bus
    bus_handle = spi_bus_create(VSPI_HOST, &bus_conf);
    if(bus_handle == NULL)
    {
        return ret;
    }

    //2,create spi device
    att7053_devHandle = spi_bus_device_create(bus_handle, &att7053_device_cfg);
    if(att7053_devHandle == NULL)
    {
        return ret;
    }

    //3.初始化att7053
    _buf[0] = 0x55;
    _buf[1] = 0xaa;
    _cmd = 0x11;
    ret = att7053WriteData(_buf, _cmd, 3);
    assert(ret == ESP_OK);

    memset(_buf, 0, 4);
    _buf[0] = 0xA6;
    _cmd    = 0x32;
    ret = att7053WriteData(_buf, _cmd, 3);
    assert(ret == ESP_OK);

    memset(_buf, 0, 4);
    _buf[0] = 0x78;
    _buf[1] = 0x80;
    _cmd    = 0x50;
    ret = att7053WriteData(_buf, _cmd, 3);
    assert(ret == ESP_OK);

    _cmd    = 0x51;
    ret = att7053WriteData(_buf, _cmd, 3);
    assert(ret == ESP_OK);

    _cmd    = 0x52;
    ret = att7053WriteData(_buf, _cmd, 3);
    assert(ret == ESP_OK);

    memset(_buf, 0, 4);
    _buf[0] = 0x05;
    _buf[1] = 0x28;
    _cmd    = 0x59;
    ret = att7053WriteData(_buf, _cmd, 3);
    assert(ret == ESP_OK);

    memset(_buf, 0, 4);
    _buf[0] = 0x00;
    _buf[1] = 0xb9;
    _cmd    = 0x61;
    ret = att7053WriteData(_buf, _cmd, 3);
    assert(ret == ESP_OK);

    memset(_buf, 0, 4);
    _cmd    = 0x32;
    ret = att7053WriteData(_buf, _cmd, 3);
    assert(ret == ESP_OK);

    memset(_buf, 0, 4);
    _buf[0] = 0xbc;
    _cmd    = 0x32;
    ret = att7053WriteData(_buf, _cmd, 3);
    assert(ret == ESP_OK);

    memset(_buf, 0, 4);
    _buf[0] = 0x20;
    _buf[0] = 0x10;
    _cmd    = 0x40;
    ret = att7053WriteData(_buf, _cmd, 3);
    assert(ret == ESP_OK);

    memset(_buf, 0, 4);
    _buf[0] = 0x00;
    _buf[0] = 0xcc;
    _cmd    = 0x41;
    ret = att7053WriteData(_buf, _cmd, 3);
    assert(ret == ESP_OK);

    memset(_buf, 0, 4);
    _cmd    = 0x32;
    ret = att7053WriteData(_buf, _cmd, 3);
    assert(ret == ESP_OK);


    return ESP_OK;
}

static void att7053_GetInfoTask(void *pvParameters)
{
    uint8_t  _cmd = 0;
    uint32_t  _dataIn = 0;
    while(1){
        _cmd = 0x18;
        att7053ReadData(&_dataIn, _cmd, 3);
        /*!获取电压*/
        _cmd = 0x08;
        att7053ReadData(&_dataIn, _cmd, 3);

        /*!获取电流*/
        _cmd = 0x06;
        att7053ReadData(&_dataIn, _cmd, 3);
        vTaskDelay(100);
    }
}

void att7053CreateThread(void)
{
    xTaskCreate(att7053_GetInfoTask, "att7053_task", 2048, NULL, 12, NULL);
}
