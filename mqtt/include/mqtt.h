#ifndef  __MQTT_H__
#define  __MQTT_H__

 void mqtt_app_start(void);

 void getCarInfo(int16_t *_speed, int16_t *_direction, uint8_t *_lightState);

 void cleanCarInfo(void);

 void setRecTime(uint8_t _value);
 
 uint8_t getRecTime(void);

 uint8_t getRecFlag(void);


 void setRecFlag(uint8_t _flag);


 void car_info_send_cloud(float _speed, int32_t _time, double _powerCap);
 
 
 void  respons_msg(char *_messageId, char* control_ack, char* communicate_ack);
#endif  /*__MQTT_H__*/