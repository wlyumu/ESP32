#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "esp_system.h"
#include "esp_log.h"
#include "driver/uart.h"
#include "string.h"
#include "driver/gpio.h"
#include "sntp.h"
#include "mqtt.h"
#include "car_control_frame.h"


static const int RX_BUF_SIZE = 1024;
static const char *TAG = "uart";
static uint8_t s_time_count = 0;

#define TXD_PIN (GPIO_NUM_17)
#define RXD_PIN (GPIO_NUM_16)

/**
  * @brief   uart2初始化
  * 波特率    115200
  * 数据位    8bit
  * 奇偶校验  无校验
  * 停止位    1bit  
  */
void uart2_init(void) {
    const uart_config_t uart_config = {
        .baud_rate = 115200,
        .data_bits = UART_DATA_8_BITS,
        .parity = UART_PARITY_DISABLE,
        .stop_bits = UART_STOP_BITS_1,
        .flow_ctrl = UART_HW_FLOWCTRL_DISABLE,
        .source_clk = UART_SCLK_APB,
    };
    // We won't use a buffer for sending data.
    uart_driver_install(UART_NUM_2, RX_BUF_SIZE * 2, 0, 0, NULL, 0);
    uart_param_config(UART_NUM_2, &uart_config);
    uart_set_pin(UART_NUM_2, TXD_PIN, RXD_PIN, UART_PIN_NO_CHANGE, UART_PIN_NO_CHANGE);
}

/**
 * @Brief : 串口打印数据
 * @param  logName   LOG TAG       
 * @param  data      要发送数据       
 * @return int       返回已发送数据的长度       
 */

int sendData(uart_port_t _uartNum, const char* data)
{
    const int len = strlen(data);
    const int txBytes = uart_write_bytes(_uartNum, data, len);
    //ESP_LOGI(TAG, "%d, %s\r\n", len, data);
    return txBytes;
}



/**
 * @Brief : 设置断连时间计数次数
 * @param  _value    计数次数       
 */
void setRecTime(uint8_t _value)
{
     s_time_count = _value;
}



static void tx_task(void *arg)
{
    static const char *TX_TASK_TAG = "TX_TASK";
   
    int16_t _speed      = 0;
    int16_t _direction  = 0;
    int16_t _trunSpeed  = 0;
    uint8_t _lightState = 0;
   
    esp_log_level_set(TX_TASK_TAG, ESP_LOG_INFO);
    while (1) {
       sendData(UART_NUM_1, "Hello world\r\n");
       
       if(getRecFlag() == 1)
       {
         getCarInfo(&_speed, &_direction, &_lightState);
   
         //ESP_LOGI(TAG, "_speed:%d, _direction:%d, _lightStatus:%d",_speed, _direction, _lightState);

         if(_speed == 0 && _direction != 0)
         _trunSpeed = 350 * _direction;
         else
         _trunSpeed = 350 * _direction;

         if(_direction == 0)
         {
            _trunSpeed = 0; 
         }
         setRecFlag(0);
       }

       if(_lightState)
       {
           //ESP_LOGI(TAG, "open light");

       }
       else
       {
           //ESP_LOGI(TAG, "close light");

       }
       
       if(s_time_count > 5 && getRecFlag() == 0)
       {
          _speed = 0;
          _direction = 0;
          _trunSpeed = 0;
       }
       else
       {
          s_time_count ++;
       }

       //ESP_LOGI(TAG, "_speed %d, _trunSpeed: %d ", _speed,_trunSpeed); 
        car_control_move(_speed, 0, 0, _lightState, _trunSpeed);
       
        vTaskDelay(100);
    }
}


static void rx_task(void *arg)
{
    static const char *RX_TASK_TAG = "RX_TASK";
    uint8_t* data = (uint8_t*) malloc(RX_BUF_SIZE+1);
    esp_log_level_set(RX_TASK_TAG, ESP_LOG_INFO);
    
    while (1) {
        const int rxBytes = uart_read_bytes(UART_NUM_2, data, RX_BUF_SIZE, 0);
        if (rxBytes > 0) {

            packet_unpack(data, rxBytes);
            data[rxBytes] = 0;
            //ESP_LOGI(RX_TASK_TAG, "Read %d bytes: '%s'", rxBytes, data);
           // ESP_LOG_BUFFER_HEXDUMP(RX_TASK_TAG, data, rxBytes, ESP_LOG_INFO);

            
        }
        
         vTaskDelay(1000);
    }
    free(data);
}

extern void bsp_uart1Init(void);

void uart2_task_create(void)
{
    uart2_init();
    bsp_uart1Init();
    xTaskCreate(rx_task, "uart_rx_task", 1024*4, NULL, configMAX_PRIORITIES, NULL);
    xTaskCreate(tx_task, "uart_tx_task", 1024*2, NULL, configMAX_PRIORITIES-1, NULL);
}
