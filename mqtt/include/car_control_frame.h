/**
 * @file car_control_frame.h
 * @author wl (1546205823@qq.com)
 * @brief 
 * @version 0.1
 * @date 2021-11-04
 * 
 * @copyright Copyright (c) 2021
 * 
 */

#ifndef __CAR_CONTROL_FRAME_H__
#define __CAR_CONTROL_FRAME_H__

typedef struct{
    uint8_t head;
    uint8_t frame_len;
    uint8_t frame_code;
    uint8_t *frame_data;
    uint8_t frame_crc;

}uart_frame_t;

typedef struct{
    uint8_t  car_xDir;
    uint8_t  car_yDir;
    uint16_t car_xSpeed;
    uint16_t car_ySpeed;
    uint16_t car_steerAngle;
    uint8_t  car_steerDir;
    uint16_t  car_power_use_time;
    uint8_t  car_powerCap;
    uint8_t  car_powerVol;
}car_info_t;



uint8_t xor_check(uint8_t *_buf, uint8_t len);
uint8_t xor_check_frame(uart_frame_t *_frame);
void packet_unpack(uint8_t *_buf, uint16_t _len);
void car_control_move(int16_t _xSpeed, uint8_t _leftLight, uint8_t _rightLight, uint8_t _frontLight,int16_t _angle);


#endif /*__CAR_CONTROL_FRAME_H__*/