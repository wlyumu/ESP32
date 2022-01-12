#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "freertos/queue.h"
#include "esp_system.h"
#include "esp_log.h"
#include "driver/uart.h"
#include "string.h"
#include "driver/gpio.h"



static const char *TAG = "UART";

#define UART2_TX_PIN (GPIO_NUM_17)
#define UART2_RX_PIN (GPIO_NUM_16)

#define UART1_TX_PIN (GPIO_NUM_10)
#define UART1_RX_PIN (GPIO_NUM_9) 


#define UART1_RX_BUF_SIZE 1024
#define UART1_BAUDRATE    115200

#define UART2_RX_BUF_SIZE 1024
#define UART2_BAUDRATE    115200


#define BUF_SIZE        (330)
#define PATTERN_CHR_NUM (3)

static QueueHandle_t uart1_queue;
static QueueHandle_t uart2_queue;

void bsp_uart1Init(void)
{
    const uart_config_t uart_config = {
        .baud_rate = UART1_BAUDRATE,
        .data_bits = UART_DATA_8_BITS,
        .parity    = UART_PARITY_DISABLE,
        .stop_bits = UART_STOP_BITS_1,
        .flow_ctrl = UART_HW_FLOWCTRL_DISABLE,
        .source_clk = UART_SCLK_APB
    };
    /*
       uart_driver_install: 安装UART驱动程序并将UART设置为默认配置。UART ISR处理器将被附加到运行该函数的同一个CPU核心上
       note:  Rx_buffer_size应该大于UART_FIFO_LEN。Tx_buffer_size应为零或大于UART_FIFO_LEN。
       param:
            uart_num： UART 端口号
            rx_buffer_size： UART RX 环缓冲器大小
            tx_buffer_size： UART TX 环缓冲器尺寸。如果设置为零，驱动程序将不会使用 TX 缓冲器，
                            TX 功能将阻止任务，直到所有数据都发送出去。
            queue_size： UART 事件队列大小/深度。
            uart_queue： UART 事件队列句柄（出参数）。成功后，这里将编写新的队列句柄，以提供 UART 事件的访问权限。
                        如果设置为 NULL，则设备将不会使用事件队列。

            intr_alloc_flags： 用于分配中断的标志。一个或多个（Orred）ESP_INTR_FLAG_*值。有关更多信息，
            请参阅esp_intr_alloc.h。不要在此处设置ESP_INTR_FLAG_IRAM（设备的 ISR 处理程序不位于 IRAM）
    */
    uart_driver_install(UART_NUM_1,BUF_SIZE * 2, BUF_SIZE * 2, 20, &uart1_queue, 0);

    uart_param_config(UART_NUM_1, &uart_config);
    uart_set_pin(UART_NUM_1, UART1_TX_PIN, UART1_RX_PIN, UART_PIN_NO_CHANGE, UART_PIN_NO_CHANGE);

    /*
        uart_enable_pattern_det_baud_intr: UART 启用模式检测功能。专为"AT 命令"等应用程序而设计。
                                           当硬件检测到一系列相同的字符时，将触发中断。
        param:
                uart_num： UART 端口号。

                pattern_chr：图案的字符。

                chr_num： 字符数， 8 位值。

                chr_tout： 每个图案字符之间的间隔超时， 16bit 值， 单位是您配置的包率周期。当持续时间超过此值时，
                          它不会将此数据视为at_cmd字符。

                post_idle： 闲置时间后的最后一个模式字符， 16bit 值， 单位是你配置的 baud 率周期。
                          当持续时间小于此值时，它不会将以前的数据作为最后一个at_cmd字符

                pre_idle： 闲置时间之前的第一个模式字符， 16bit 值， 单位是你配置的 baud 率周期。
                          当持续时间小于此值时，它不会将此数据作为第一个at_cmd字符。
    */
    uart_enable_pattern_det_baud_intr(UART_NUM_1, '+', PATTERN_CHR_NUM, 9, 0, 0);
    
    /*分配一个给定长度的新内存来保存rx缓冲区中检测到的模式位置*/
    uart_pattern_queue_reset(UART_NUM_1, 10);

}

/**
  * @brief   uart2初始化
  * 波特率    115200
  * 数据位    8bit
  * 奇偶校验  无校验
  * 停止位    1bit  
  */
void bsp_uart2Init(void) {
    const uart_config_t uart_config = {
        .baud_rate = UART2_BAUDRATE,
        .data_bits = UART_DATA_8_BITS,
        .parity    = UART_PARITY_DISABLE,
        .stop_bits = UART_STOP_BITS_1,
        .flow_ctrl = UART_HW_FLOWCTRL_DISABLE,
        .source_clk = UART_SCLK_APB,
    };
    // We won't use a buffer for sending data.
    uart_driver_install(UART_NUM_2, BUF_SIZE * 2, BUF_SIZE * 2, 20, &uart2_queue, 0);
    uart_param_config(UART_NUM_2, &uart_config);
    uart_set_pin(UART_NUM_2, UART2_TX_PIN, UART2_RX_PIN, UART_PIN_NO_CHANGE, UART_PIN_NO_CHANGE);

    /*
        uart_enable_pattern_det_baud_intr: UART开启模式检测功能。 专为像“AT命令”这样的应用程序设计。
         当硬件检测到一系列相同的字符时，就会触发中断。

        para:
          uart_num: UART端口号。
          Chr_num:  匹配字符。
          Chr_tout:每个模式字符之间的间隔超时时间，16位值，
                   单位为您配置的波特率周期。当持续时间大于此值时，
                   它将不接受此数据为at_cmd 字符。

          Post_idle:最后一个模式字符后的空闲时间，16位值，
                    单位为您配置的波特率周期。当持续时间小于此值时，
                    它将不会将以前的数据作为最后的at_cmd字符
          
          Pre_idle:第一个模式字符之前的空闲时间，16位值，
                   单位为您配置的波特率周期。当持续时间小于此值时，
                   它将不会将此数据作为第一个at_cmd字符。
    */
    uart_enable_pattern_det_baud_intr(UART_NUM_2, '+', PATTERN_CHR_NUM, 9, 0, 0);
    
    /*分配一个给定长度的新内存来保存rx缓冲区中检测到的模式位置*/
    uart_pattern_queue_reset(UART_NUM_2, 10);
}

/**
 * @Brief : 串口发送数据
 * @param  logName   LOG TAG       
 * @param  data      要发送数据       
 * @return int       返回已发送数据的长度       
 */

int sendData(uart_port_t _uartNum, const char* data)
{
    const int len = strlen(data);
    const int txBytes = uart_write_bytes(_uartNum, data, len);
   
    return txBytes;
}



void uart1_event_task(void *pvParameters)
{
    uart_event_t event;
    size_t buffered_size;

    uint8_t* dtmp = (uint8_t*) malloc(1024);
    
    for(;;){

       /*等待接收串口二的事件， 如果没有事件，该函数会阻塞在这里*/ 
       if(xQueueReceive(uart1_queue, (void * )&event, (portTickType)portMAX_DELAY))
       {
          bzero(dtmp, 1024);

           switch(event.type) {
            
                /*UART接收数据的事件  
                    我们最好快速处理数据事件，这样会有更多的数据事件  
                    其他类型的事件。 如果我们在数据事件上花费太多时间，队列可能会  
                    充满  
                
                */
                case UART_DATA: 
                    ESP_LOGI(TAG, "[UART DATA]: %d", event.size);
                    uart_read_bytes(UART_NUM_1, dtmp, event.size, portMAX_DELAY);
                    ESP_LOGI(TAG, "[DATA EVT]:");
                    uart_write_bytes(UART_NUM_1, (const char*) dtmp, event.size);
                    break;
                //Event of HW FIFO overflow detected ： 检测FIFO溢出事件
                case UART_FIFO_OVF:
                    ESP_LOGI(TAG, "hw fifo overflow");
                    //如果发生fifo溢出，你应该考虑为你的应用程序添加流量控制。  
                    // ISR已经重置了rx FIFO，  
                    //例如，为了读取更多的数据，我们直接刷新rx缓冲区。  

                    uart_flush_input(UART_NUM_1);
                    xQueueReset(uart1_queue);
                    break;
                //Event of UART ring buffer full ： 串口ringbuf满
                case UART_BUFFER_FULL:
                    ESP_LOGI(TAG, "ring buffer full");
                    //如果缓冲区满了，你应该考虑增加你的缓冲区大小  
                    //例如，为了读取更多的数据，我们直接刷新rx缓冲区。  
                    uart_flush_input(UART_NUM_1);
                    xQueueReset(uart1_queue);
                    break;
                //Event of UART RX break detected
                case UART_BREAK:
                    ESP_LOGI(TAG, "uart rx break");
                    break;
                //Event of UART parity check error 
                case UART_PARITY_ERR:
                    ESP_LOGI(TAG, "uart parity error");
                    break;
                //Event of UART frame error
                case UART_FRAME_ERR:
                    ESP_LOGI(TAG, "uart frame error");
                    break;
                //UART_PATTERN_DET
                case UART_PATTERN_DET: /*字符检测事件*/
                    uart_get_buffered_data_len(UART_NUM_1, &buffered_size);
                    int pos = uart_pattern_pop_pos(UART_NUM_1);
                    ESP_LOGI(TAG, "[UART PATTERN DETECTED] pos: %d, buffered size: %d", pos, buffered_size);
                    if (pos == -1) {
                        // There used to be a UART_PATTERN_DET event, but the pattern position queue is full so that it can not
                        // record the position. We should set a larger queue size.
                        // As an example, we directly flush the rx buffer here.

                        /*有一个UART_PATTERN_DET事件，但是模式位置队列已满，因此不能  
                          记录位置。 我们应该设置一个更大的队列大小。
                        */ 
                        uart_flush_input(UART_NUM_1);
                    } else {
                        uart_read_bytes(UART_NUM_1, dtmp, pos, 100 / portTICK_PERIOD_MS);
                        uint8_t pat[PATTERN_CHR_NUM + 1];
                        memset(pat, 0, sizeof(pat));
                        uart_read_bytes(UART_NUM_1, pat, PATTERN_CHR_NUM, 100 / portTICK_PERIOD_MS);
                        ESP_LOGI(TAG, "read data: %s", dtmp);
                        ESP_LOGI(TAG, "read pat : %s", pat);
                    }
                    break;
                //Others
                default:
                    ESP_LOGI(TAG, "uart event type: %d", event.type);
                    break;
            }
        }
    }
    free(dtmp);
    dtmp = NULL;
    vTaskDelete(NULL);
    }



void uart2_event_task(void *pvParameters)
{
    uart_event_t event;
    size_t buffered_size;

    uint8_t* dtmp = (uint8_t*) malloc(1024);
    
    for(;;){

       /*等待接收串口二的事件， 如果没有事件，该函数会阻塞在这里*/ 
       if(xQueueReceive(uart2_queue, (void * )&event, (portTickType)portMAX_DELAY))
       {
          bzero(dtmp, 1024);

           switch(event.type) {
            
                /*UART接收数据的事件  
                    我们最好快速处理数据事件，这样会有更多的数据事件  
                    其他类型的事件。 如果我们在数据事件上花费太多时间，队列可能会  
                    充满  
                
                */
                case UART_DATA: 
                    ESP_LOGI(TAG, "[UART DATA]: %d", event.size);
                    uart_read_bytes(UART_NUM_2, dtmp, event.size, portMAX_DELAY);
                    ESP_LOGI(TAG, "[DATA EVT]:");
                    uart_write_bytes(UART_NUM_2, (const char*) dtmp, event.size);
                    break;
                //Event of HW FIFO overflow detected ： 检测FIFO溢出事件
                case UART_FIFO_OVF:
                    ESP_LOGI(TAG, "hw fifo overflow");
                    //如果发生fifo溢出，你应该考虑为你的应用程序添加流量控制。  
                    // ISR已经重置了rx FIFO，  
                    //例如，为了读取更多的数据，我们直接刷新rx缓冲区。  

                    uart_flush_input(UART_NUM_2);
                    xQueueReset(uart2_queue);
                    break;
                //Event of UART ring buffer full ： 串口ringbuf满
                case UART_BUFFER_FULL:
                    ESP_LOGI(TAG, "ring buffer full");
                    //如果缓冲区满了，你应该考虑增加你的缓冲区大小  
                    //例如，为了读取更多的数据，我们直接刷新rx缓冲区。  
                    uart_flush_input(UART_NUM_2);
                    xQueueReset(uart2_queue);
                    break;
                //Event of UART RX break detected
                case UART_BREAK:
                    ESP_LOGI(TAG, "uart rx break");
                    break;
                //Event of UART parity check error 
                case UART_PARITY_ERR:
                    ESP_LOGI(TAG, "uart parity error");
                    break;
                //Event of UART frame error
                case UART_FRAME_ERR:
                    ESP_LOGI(TAG, "uart frame error");
                    break;
                //UART_PATTERN_DET
                case UART_PATTERN_DET: /*字符检测事件*/
                    uart_get_buffered_data_len(UART_NUM_2, &buffered_size);
                    int pos = uart_pattern_pop_pos(UART_NUM_2);
                    ESP_LOGI(TAG, "[UART PATTERN DETECTED] pos: %d, buffered size: %d", pos, buffered_size);
                    if (pos == -1) {
                        // There used to be a UART_PATTERN_DET event, but the pattern position queue is full so that it can not
                        // record the position. We should set a larger queue size.
                        // As an example, we directly flush the rx buffer here.

                        /*有一个UART_PATTERN_DET事件，但是模式位置队列已满，因此不能  
                          记录位置。 我们应该设置一个更大的队列大小。
                        */ 
                        uart_flush_input(UART_NUM_2);
                    } else {
                        uart_read_bytes(UART_NUM_2, dtmp, pos, 100 / portTICK_PERIOD_MS);
                        uint8_t pat[PATTERN_CHR_NUM + 1];
                        memset(pat, 0, sizeof(pat));
                        uart_read_bytes(UART_NUM_2, pat, PATTERN_CHR_NUM, 100 / portTICK_PERIOD_MS);
                        ESP_LOGI(TAG, "read data: %s", dtmp);
                        ESP_LOGI(TAG, "read pat : %s", pat);
                    }
                    break;
                //Others
                default:
                    ESP_LOGI(TAG, "uart event type: %d", event.type);
                    break;
            }
        }
    }
    free(dtmp);
    dtmp = NULL;
    vTaskDelete(NULL);
    }

void uart_thread_create(void)
{
    bsp_uart1Init();
    bsp_uart2Init();

    xTaskCreate(uart2_event_task, "uart2_event_task", 2048, NULL, 12, NULL);
    xTaskCreate(uart1_event_task, "uart1_event_task", 2048, NULL, 12, NULL);
    
}


