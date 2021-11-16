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
        .command_bits = 0,
        .address_bits = 8,
        .clock_speed_hz = 40 * 1000 * 1000,
        .mode = 0,
        .spics_io_num = VSPI_CS_GPIO,
        .queue_size   = 6   //queue 7 transaction at a time


    };

    ret = spi_bus_initialize(VSPI_HOST, &busCfg, 0);

    assert(ret == OK);

    ret = spi_bus_add_device(VSPI_HOST, &devCfg, &s_spi);

    assert(ret == OK);

    gpio_sleep_set_pull_mode(GPIO_NUM_15, GPIO_FLOATING);

    return ret;
}


int vspiMasterWrite(uint8_t* value, uint8_t addr, size_t len)
{
    esp_err_t ret;
    spi_transaction_t t;

    memset(&t, 0, sizeof(t));
    t.flags  = SPI_TRANS_USE_TXDATA;
    t.addr   = addr;
    t.length = len * 8;
    t.tx_buffer = value;

    ret = spi_device_transmit(s_spi, &t);
    assert(ret == ESP_OK);

    return 0;

}

void vspiMasterRead(uint8_t *data, uint8_t addr, size_t len)
{
    esp_err_t ret;
    spi_transaction_t t;
    memset(&t, 0, sizeof(spi_transaction_t));

    t.addr = addr;
    t.length = len * 8;
    t.tx_buffer = NULL;
    t.rx_buffer = data;

    ret = spi_device_transmit(s_spi, &t);

    assert(ret == ESP_OK);
}


void att7053Reset(void)
{
    uint8_t buf[4] = {0};

    buf[0] = 0x55;
    vspiMasterWrite(0x33, buf, 1);
    vTaskDelay(30);
    buf[0] = 0xA6;
    vspiMasterWrite(0x32, buf, 1);
    buf[0] = 0x78;
    buf[1] = 0x80;
    vspiMasterWrite(0x50, buf, 2);
    vspiMasterWrite(0x51, buf, 2);
    vspiMasterWrite(0x52, buf, 2);

    buf[0] = 0x05;
    buf[1] = 0x28;
    vspiMasterWrite(0x59, buf, 2);

    buf[0] = 0x00;
    buf[1] = 0xb9;
    vspiMasterWrite(0x59, buf, 2);


}