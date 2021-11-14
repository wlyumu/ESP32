#include "ATT7053.h"
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "freertos/semphr.h"
#include <unistd.h>
#include "esp_log.h"
#include "string.h"

#define VSPI_MOSI_GPIO    GPIO_NUM_12
#define VSPI_MISO_GPIO    GPIO_NUM_13
#define VSPI_SCLK_GPIO    GPIO_NUM_14
#define VSPI_CS_GPIO      GPIO_NUM_15 

static const char* TAG = "att7053";
static spi_device_handle_t s_spi;

int vspiMasterInit(void)
{
    esp_err_t ret = ESP_OK;

    spi_bus_config_t busCfg = {
        .miso_io_num = VSPI_MISO_GPIO,
        .mosi_io_num = VSPI_MOSI_GPIO,
        .sclk_io_num = VSPI_SCLK_GPIO,
        .quadhd_io_num = -1,
        .quadwp_io_num = -1
    };

    spi_device_interface_config_t devCfg = {
        .command_bits = 8,
        .address_bits = 0,
        .clock_speed_hz =  1000 * 1000,
        .mode = 1,
        .input_delay_ns = 10,
        .spics_io_num = VSPI_CS_GPIO,
        .queue_size   = 6   //queue 7 transaction at a time


    };

    ret = spi_bus_initialize(VSPI_HOST, &busCfg, 0);

    assert(ret == OK);

    ret = spi_bus_add_device(VSPI_HOST, &devCfg, &s_spi);

    assert(ret == OK);

   // gpio_sleep_set_pull_mode(GPIO_NUM_15, GPIO_FLOATING);

    return ret;
}


int vspiMasterWrite(uint8_t* value, uint8_t cmd, size_t len)
{
    esp_err_t ret;
    spi_transaction_t t;
    

    memset(&t, 0, sizeof(t));
    t.flags  = SPI_TRANS_USE_TXDATA;
    t.cmd    = cmd;
    t.length = (len)* 8 ;
    t.tx_data[0] = value[0];
    t.tx_data[1] = value[1];
    t.tx_data[2] = value[2];
    ret = spi_device_transmit(s_spi, &t);
    assert(ret == ESP_OK);

    return 0;

}

void vspiMasterRead(uint8_t *data, uint8_t cmd, size_t len)
{
    esp_err_t ret;
    spi_transaction_t t;
    memset(&t, 0, sizeof(spi_transaction_t));
    t.cmd = cmd;
    t.length =  8;
    t.flags = SPI_TRANS_USE_RXDATA | SPI_TRANS_USE_TXDATA;
    t.length = (len) * 8;
    t.rxlength = len * 8;
    memset(t.tx_data, 0 , 4);
    ret = spi_device_transmit(s_spi, &t);
    assert(ret == ESP_OK);
    ESP_LOGI(TAG, "%x, %x, %x, %x", t.rx_data[0], t.rx_data[1], t.rx_data[2], t.rx_data[3]);
}


void att7053Reset(void)
{
    uint8_t buf[4] = {0};
    uint8_t ret;
    memset(buf, 0, 4);
    buf[0] = 0x55;
    buf[1] = 0xaa;
    ret = vspiMasterWrite( buf, 0x11, 3);
    assert(ret == ESP_OK);
    vTaskDelay(30);

    memset(buf, 0, 4);
    buf[0] = 0xA6;
    ret = vspiMasterWrite(buf, 0x32, 3);
    assert(ret == ESP_OK);

    memset(buf, 0, 4);
    buf[0] = 0x78;
    buf[1] = 0x80;
    ret = vspiMasterWrite( buf, 0x50, 3);
    assert(ret == ESP_OK);
    ret = vspiMasterWrite( buf, 0x51, 3);
    assert(ret == ESP_OK);
    ret = vspiMasterWrite( buf, 0x52, 3);
    assert(ret == ESP_OK);

    memset(buf, 0, 4);
    buf[0] = 0x05;
    buf[1] = 0x28;
    ret = vspiMasterWrite( buf, 0x59, 3);
    assert(ret == ESP_OK);

    memset(buf, 0, 4);
    buf[0] = 0x00;
    buf[1] = 0xb9; 
    ret = vspiMasterWrite( buf, 0x61, 3);

    memset(buf, 0, 4);
    ret = vspiMasterWrite( buf, 0x32, 3);
    assert(ret == ESP_OK);

    memset(buf, 0, 4);
    buf[0] = 0xBC;
    ret = vspiMasterWrite( buf, 0x32, 3);
    assert(ret == ESP_OK);

    memset(buf, 0, 4);
    buf[0] = 0x20;
    buf[1] = 0x10;
    ret = vspiMasterWrite( buf, 0x40, 3);
    assert(ret == ESP_OK);

    memset(buf, 0, 4);
    buf[0] = 0x00;
    buf[1] = 0xCC;
    ret = vspiMasterWrite( buf, 0x41, 3);
    assert(ret == ESP_OK);

    memset(buf, 0, 4);
    ret = vspiMasterWrite( buf, 0x32, 3);
    assert(ret == ESP_OK);
}


void att7053_readData(uint8_t cmd)
{
    uint8_t data[3] = {1,1,1};
    vspiMasterRead(data,  cmd, 3);

   

}

static void att7053_task(void* pvParameters) 
{
   
    while(1)
    {
       //
       ESP_LOGI(TAG,"att7053");
       att7053_readData(0x14);

      
        vTaskDelay(100);
    }


}

void att7053_createThread(void)
{
    xTaskCreate(att7053_task, "att7053_task", 2048, NULL, 12, NULL);

}