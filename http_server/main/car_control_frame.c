#include "stdio.h"
#include "string.h"
#include "driver/uart.h"
#include "esp_log.h"
#include "car_control_frame.h"
#include "mqtt.h"


static const char *TAG = "uart_frame";
static car_info_t s_car_info;

/**
 * @brief 串口数据帧异或校验
 *
 * 主任务入口函数
 *
 * @note
 * 
 *
 * @param
 *
 * @return

 */

uint8_t xor_check_frame(uart_frame_t *_frame)
{
    
    uint8_t _buf[_frame->frame_len] ;
    uint8_t xorTemp = 0;

    _buf[0] = _frame->frame_code;

    for(int i = 0; i < _frame->frame_len ; i ++)
    {
        _buf[i + 1] = _frame->frame_data[i ];
    }


    /*异或校验*/
    xorTemp = _buf[0];

    for(int i = 1; i < _frame->frame_len; i ++)
    {
        xorTemp ^= (*(_buf + i));
         //ESP_LOGI(TAG, "%x",*(_buf + i));
    }

    return xorTemp;
}

uint8_t xor_check(uint8_t *_buf, uint8_t len)
{
    uint8_t xorTemp = _buf[0];

    for(int i = 1; i < len; i ++)
    {
        xorTemp ^= (*(_buf + i));
         //ESP_LOGI(TAG, "%x",*(_buf + i));
    }
    return xorTemp;
}


void car_control_move(int16_t _xSpeed, uint8_t _leftLight, uint8_t _rightLight, uint8_t _frontLight,int16_t _angle)
{
    uart_frame_t _frame;
    uint8_t _mode = 0;
    uint8_t _buf[9] = {0};
    _frame.frame_data = _buf;
    
    switch(_mode)
    {
        case 0:  /*阿克曼*/
        _frame.head = 0xCD;
        _frame.frame_len = 0x0A;
        _frame.frame_code = 0x01;

        /*x轴速度*/
        if(_xSpeed >= 0)
        {
            _frame.frame_data[0] = 0x00;
        }
        else 
        {

            _frame.frame_data[0] = 0x01;
        }
      
        
        _frame.frame_data[1] = (abs(_xSpeed) & 0xff00) >> 8;
        _frame.frame_data[2] = abs(_xSpeed) & 0x00ff ;

     

        /*Y轴速度*/
        //bzero(&(_frame.frame_data[3]), 3);

        _frame.frame_data[3] = _leftLight;
        
        _frame.frame_data[4] = _rightLight;  

        _frame.frame_data[5] = _frontLight;  
         
        //ESP_LOGI(TAG, "speed :%d, %x, %x %x",_xSpeed, _frame.frame_data[1], _frame.frame_data[2], _frame.frame_data[5]);

        /*转向角度*/
        if(_angle <=  0)
        {
            _frame.frame_data[6] = 0x00;
        }
        else if(_angle > 0)
        {

            _frame.frame_data[6] = 0x01;

        }
        

        _frame.frame_data[7] = (abs(_angle) & 0xff00) >> 8;
        _frame.frame_data[8] = abs(_angle) & 0x00ff;

        _frame.frame_crc =  xor_check_frame(&_frame);
       
        break;
        case 1: /*差速*/
  
       

        break;
        case 2:

        break;
        default:

        break;
    }

    uart_write_bytes(UART_NUM_2,  &_frame , 3);
    uart_write_bytes(UART_NUM_2,  _frame.frame_data, 9);
    uart_write_bytes(UART_NUM_2,  &_frame.frame_crc, 1);

    // for(int i = 0; i < 9; i ++)
    // {
    //     printf("%x ",  _frame.frame_data[i]);
    // }
    //  printf("\r\n ");
}



/**
 * @Brief : 解析底盘反馈数据
 * @param  _buf      底盘反馈数据缓冲区       
 * @param  _len      解析反馈数据的长度        
 */
void packet_unpack(uint8_t *_buf, uint16_t _len)
{
    uint16_t _datalen = 0;
    uint16_t _cnt = 0;
    uint8_t _crc_len = 0; /*需要校验数据的长度*/

   while(_datalen <_len)
   {
    
    if(_buf[_datalen] == 0xFD)
    {
       // ESP_LOGI(TAG, "--%d--%x",_datalen, _buf[_datalen + 2]);
        switch(_buf[_datalen + 2])
        {
           
            case 0x02: /*速度*/
         
            _cnt = 2 + _buf[_datalen + 1];
            _crc_len = _buf[_datalen + 1];
             //  ESP_LOGI(TAG, "---%x, %x, %x", _cnt, _buf[_cnt], xor_check(&_buf[_datalen + 2], _crc_len));
            if(_buf[_datalen + _cnt ] == xor_check(&_buf[_datalen + 2], _crc_len))
            {
               // ESP_LOGI(TAG, "---2---");
                s_car_info.car_xDir   = _buf[_datalen  + 3];
                s_car_info.car_xSpeed = (_buf[_datalen + 4] << 8) | _buf[_datalen + 5];
                s_car_info.car_yDir   = _buf[_datalen + 6];
                s_car_info.car_ySpeed = (_buf[_datalen + 7] << 8) | _buf[_datalen + 8];
                s_car_info.car_steerDir = _buf[_datalen + 9];
                s_car_info.car_steerAngle = (_buf[_datalen + 10] << 8) | _buf[_datalen + 11];


                _datalen += _cnt;
            
            }

            break;

            case 0x04:/*电压反馈*/
           // printf("----3\r\n");
            _cnt = 2 + _buf[_datalen + 1];
            _crc_len = _buf[_datalen + 1];

            if( _buf[_datalen + _cnt] == xor_check(&_buf[_datalen + 2], _crc_len))
            {
                s_car_info.car_powerVol = _buf[_datalen + 3];
                s_car_info.car_powerCap = _buf[_datalen + 4];
                s_car_info.car_power_use_time = (_buf[_datalen +5] << 8) | _buf[_datalen +6];
               // printf("---4\r\n");
              //ESP_LOGI(TAG,"%d, %d, %d", s_car_info.car_powerVol, s_car_info.car_powerCap,  s_car_info.car_power_use_time);
            }
            _datalen += _cnt;
           // ESP_LOGI(TAG, "%d, %d", _datalen, _len);
            break;
        }

     }
     _datalen ++;
   
   }
    
   car_info_send_cloud(s_car_info.car_xSpeed, s_car_info.car_power_use_time, s_car_info.car_powerCap);

}