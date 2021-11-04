#include "esp_log.h"
#include "mqtt_client.h"
#include "mqtt.h"
#include "jsmn.h"
#include "string.h"
#include "driver/gpio.h"


typedef struct {
    char messageId[20];   /*消息ID*/
    char deviceId[20];   /*设备ID*/
    char function[20];   /*控制消息*/
    char speed[5];       /*速度*/
    char name[10];
    char value[5];       /*转向速度或速度值*/
    char direction[5];   /*转向方向*/
    char carLightstate[10]; /*车灯状态*/
}car_control_info_t;

#define PRODUCT_ID   "SmartCar2"
#define DEIVCE_ID    "171cb7426666"

static const char *TAG = "MQTT";
static car_control_info_t  car_control;
static esp_mqtt_client_handle_t client; 

static int16_t s_speed       = 0;
static int16_t s_direction   = 0;
static uint8_t s_lightStatus = 0;
static uint8_t s_rec_status  = 0;


uint8_t car_control_cmd_parse(char *_buf);


/**
 * @Brief : mqtt事件回调函数
 * @param  event 事件句柄           
 * @return esp_err_t        
 */
static esp_err_t mqtt_event_handler_cb(void *handler_args, esp_mqtt_event_handle_t event)
{
    char buf[200]; 
    char _subTopic[100] = {0};
    

    sprintf(_subTopic,"/%s/%s/function/invoke", PRODUCT_ID, DEIVCE_ID);
    esp_mqtt_client_handle_t client = event->client;
   
    switch (event->event_id) {
        case MQTT_EVENT_CONNECTED:
            ESP_LOGI(TAG, "MQTT_EVENT_CONNECTED");
            gpio_set_level(2, 1);
            
            break;
        case MQTT_EVENT_DISCONNECTED:
            ESP_LOGI(TAG, "MQTT_EVENT_DISCONNECTED");
            gpio_set_level(2, 0);
            esp_mqtt_client_start(client);  
            break;

        case MQTT_EVENT_SUBSCRIBED:
            ESP_LOGI(TAG, "MQTT_EVENT_SUBSCRIBED, msg_id=%d", event->msg_id);
            ESP_LOGI(TAG, "MQTT_EVENT_DATA");
            ESP_LOGI(TAG,"TOPIC=%.*s\r\n", event->topic_len, event->topic);
            ESP_LOGI(TAG,"DATA=%.*s\r\n", event->data_len, event->data);
           
            break;
        case MQTT_EVENT_UNSUBSCRIBED:
            ESP_LOGI(TAG, "MQTT_EVENT_UNSUBSCRIBED, msg_id=%d", event->msg_id);
            break;
        case MQTT_EVENT_PUBLISHED:
           // ESP_LOGI(TAG, "MQTT_EVENT_PUBLISHED, msg_id=%d", event->msg_id);
            break;
        case MQTT_EVENT_DATA:
            
           ESP_LOGI(TAG, "MQTT_EVENT_DATA");
           ESP_LOGI(TAG,"TOPIC=%.*s\r\n", event->topic_len, event->topic);
           ESP_LOGI(TAG,"DATA=%.*s\r\n", event->data_len, event->data);
           
            memset(buf, 0, sizeof(buf));
            strncpy(buf, event->data,  event->data_len);
            
            setRecTime(0);
            s_rec_status = 1;
            car_control_cmd_parse(buf);
            if(strlen(car_control.function) !=0)
            respons_msg(car_control.messageId, "true", "true");
         
            break;
        case MQTT_EVENT_ERROR:
            ESP_LOGI(TAG, "MQTT_EVENT_ERROR");
            break;
        default:
            ESP_LOGI(TAG, "Other event id:%d", event->event_id);
            break;
    }
    return ESP_OK;
}

static void mqtt_event_handler(void *handler_args, esp_event_base_t base, int32_t event_id, void *event_data) {
    ESP_LOGD(TAG, "Event dispatched from event loop base=%s, event_id=%d", base, event_id);
    mqtt_event_handler_cb(handler_args, event_data);
}


 /**
  * @brief       开启mqtt应用连接
  *     
  */
void mqtt_app_start(void)
{
    // esp_mqtt_client_config_t mqtt_cfg = {
    //     .host = "a1S7vkEGU6j.iot-as-mqtt.cn-shanghai.aliyuncs.com",//CONFIG_BROKER_URL,
    //     .port = 1883,
    //     .username = "esp123&a1S7vkEGU6j",
    //     .password = "32D7B67C467C85F4B11CC9DF0DDD1AB093AE15B0",
    //     .client_id = "123456|securemode=3,signmethod=hmacsha1,timestamp=789|",
    // };

        esp_mqtt_client_config_t mqtt_cfg = {
        .host = "115.29.64.113",//CONFIG_BROKER_URL,
        .port = 1886,
        .username = "171cb7426666",
        .password = "171cb7426666",
        .client_id = "171cb7426666",
        .keepalive = 6000,
        
    };


    client = esp_mqtt_client_init(&mqtt_cfg);
    esp_mqtt_client_register_event(client, ESP_EVENT_ANY_ID, mqtt_event_handler, client);
    esp_mqtt_client_start(client);  
}

static int jsoneq(const char *json, jsmntok_t *tok, const char *s) {
  if (tok->type == JSMN_STRING && (int)strlen(s) == tok->end - tok->start &&
      strncmp(json + tok->start, s, tok->end - tok->start) == 0) {
    return 0;
  }
  return -1;
}

/**
 * @Brief : 服务器向车端发送数据的数据解析
 * @param  _buf            需要解析数据          
 * @return uint8_t         0-数据解析成功
 *                         1-数据解析失败 
 */
uint8_t car_control_cmd_parse(char *_buf)
{
   jsmntok_t t[128];

    int r;
    int i;

    jsmn_parser p;

    //ESP_LOGI(TAG, "%s", _buf);
    jsmn_init(&p);

    r = jsmn_parse(&p, _buf, strlen(_buf), t, sizeof(t) / sizeof(t[0]));

    if(r < 0)
    {
         ESP_LOGE(TAG,"failed to parse json : %d\r\n", r);
        return 1;
    }

    if(r < 1 || t[0].type != JSMN_OBJECT){
        ESP_LOGE(TAG,"object expect");
        return 1;
    }

   
    for(i = 1; i < r; i++)
    {
        if (jsoneq(_buf, &t[i], "messageId") == 0)   
        {
      	    /* We may use strndup() to fetch string value */
        	// ESP_LOGI(TAG,"- messageId: %.*s", t[i + 1].end - t[i + 1].start,
            // _buf + t[i + 1].start);
            memcpy(car_control.messageId, _buf + t[i + 1].start, t[i + 1].end - t[i + 1].start);
            car_control.messageId[t[i + 1].end - t[i + 1].start] = '\0';
    
      	    i++;
         }
         else if (jsoneq(_buf, &t[i], "deviceId") == 0)   
        {
      	    /* We may use strndup() to fetch string value */
        	// ESP_LOGI(TAG,"- deviceId: %.*s", t[i + 1].end - t[i + 1].start,
            // _buf + t[i + 1].start);

            memcpy(car_control.deviceId, _buf + t[i + 1].start, t[i + 1].end - t[i + 1].start);
           //  ESP_LOGI(TAG,"deviceId: %s", car_control.deviceId);
      	    i++;
         }
         else if (jsoneq(_buf, &t[i], "function") == 0)   
        {
      	    /* We may use strndup() to fetch string value */
        	// ESP_LOGI(TAG,"- function: %.*s", t[i + 1].end - t[i + 1].start,
            // _buf + t[i + 1].start);

            memcpy(car_control.function, _buf + t[i + 1].start, t[i + 1].end - t[i + 1].start);
      	   // ESP_LOGI(TAG,"function: %s", car_control.function);
            i++;
         }

        else if(jsoneq(_buf, &t[i], "name") == 0)
        {
             //ESP_LOGI(TAG,"- name: %.*s", t[i + 1].end - t[i + 1].start,
             //_buf + t[i + 1].start);
             memcpy(car_control.name, _buf + t[i + 1].start, t[i + 1].end - t[i + 1].start);
             i++;
        }
         else if(jsoneq(_buf, &t[i], "value") == 0)
         {
              //ESP_LOGI(TAG,"- value: %.*s", t[i + 1].end - t[i + 1].start,
              // _buf + t[i + 1].start);
              memcpy(car_control.value, _buf + t[i + 1].start, t[i + 1].end - t[i + 1].start);
              car_control.value[t[i + 1].end - t[i + 1].start] = 0;
             if(strncmp(car_control.name, "speed", 5) == 0)
             {
                 s_speed =  atoi(car_control.value);
                // ESP_LOGI(TAG,"s_speed:%d", s_speed);
             }
             else if(strncmp(car_control.name, "direction", 9) == 0)
             {
                 
                 if(strncmp(car_control.value, "L", 1) == 0)
                 {
                    s_direction = -1;
                    //ESP_LOGI(TAG,"s_direction--- %s", car_control.value);
                 }
                 else if(strncmp(car_control.value, "R", 1) == 0)
                 {
                    s_direction = 1;
                    //ESP_LOGI(TAG,"s_direction--- %s", car_control.value);
                 }
                 else if(strncmp(car_control.value, "K", 1) == 0)
                 {
                    s_direction = 0;
                    //ESP_LOGI(TAG,"s_direction--- %s", car_control.value);
                 }
                // ESP_LOGI(TAG,"s_direction %d", s_direction);
             }
             else if(strncmp(car_control.name, "on", 2) == 0)
             {
                 if(strncmp(car_control.value, "true", 4) == 0)
                 s_lightStatus = 1;
                 else if(strncmp(car_control.value, "false", 4) == 0)
                 s_lightStatus = 0;
             }
 
            i++;
         }
         else
         {
             //ESP_LOGI(TAG,"Unexpected key: %.*s", t[i].end - t[i].start,
             //_buf + t[i].start);

         }

    }
   // ESP_LOGI(TAG, "speed:%d, dirction : %d", s_speed,s_direction );
    return 0;
}

 /**
  * @brief         获取车辆信息
  *
  * @param         _speed 车辆运动速度
  * 
  * @param         _direction 车辆运动方向
  * 
  * @param         _lightState 车辆车灯状态
  * 
  * @return       
  */
void getCarInfo(int16_t *_speed, int16_t *_direction, uint8_t *_lightState)
{
    *_speed      = s_speed;
    *_direction  = s_direction;
    *_lightState = s_lightStatus;
}

/**
  * @brief         清除车辆信息     
  */
 
void cleanCarInfo(void)
{
    s_speed       = 0;
    s_direction   = 0;
    s_lightStatus = 0;
}

/**
 * @Brief : Get mqtt data Rec Flag object
 * @return uint8_t          
 */
uint8_t getRecFlag(void)
{
    return s_rec_status;
}

 /**
  * @Brief : Set mqtt data Rec Flag object
  * @param  flag        标志位     
  */
void setRecFlag(uint8_t flag)
{
    s_rec_status = flag;
}

 /**
  * @brief         发送应答指令
  *
  * @param[in]     _messageId      应答消息ID
  * 
  * @param[in]     control_ack     车辆控制状态 
  * 
  * @param[in]     communicate_ack 车辆通讯状态
  * 
  * @return       
  */
void respons_msg(char *_messageId, char* control_ack, char* communicate_ack)
{
    char _buf[200] = {0};
    char _pubTopic[200] = {0};

    int  msg_id = 0;

    
    /*获取时间戳*/
    struct timeval tv_now;
    int64_t time_ms;
    //ESP_LOGI(TAG, "respons_msg : %s", _messageId);
    gettimeofday(&tv_now, NULL);
    time_ms = ((int64_t)tv_now.tv_sec * 1000000L + (int64_t)tv_now.tv_usec) / 1000;


   // sprintf(_pubTopic,"/%s/%s/function/invoke/reply", PRODUCT_ID, DEIVCE_ID);
   // ESP_LOGI(TAG,"_pubTopic : %s", _pubTopic);
   // sprintf(_buf, "{\"timestamp\": %lld, \"messageId\": \"%s\",\"output\": \"%s\", \"success\": \"%s\"}",time_ms, _messageId, control_ack, communicate_ack);
   // ESP_LOGI(TAG,"respons : %s",_buf);


    /*MQTT 发送函数*/
    msg_id =  esp_mqtt_client_publish(client, _pubTopic, _buf, strlen(_buf), 0, 0);
    if(msg_id == -1)
    ESP_LOGI(TAG,"esp_mqtt_client_publish err : %d",msg_id);
}

  /**
  * @brief         车辆反馈数据发送到服务器
  *
  * @param[in]        _speed 车辆速度信息
  * 
  * @param[in]        _time 车辆电池可以时长        
  *
  * @param[in]        _powerCap 车辆电池电量
  * 
  * @return        
  */
void car_info_send_cloud(float _speed, int32_t _time, double _powerCap)
{
    char _buf[200] = {0};
    char _pubTopic[100] = {0};
    /*获取时间戳*/
    struct timeval tv_now;
    int64_t time_ms;
    
    _speed = _speed / 10.0;

    gettimeofday(&tv_now, NULL);
    time_ms = ((int64_t)tv_now.tv_sec * 1000000L + (int64_t)tv_now.tv_usec) / 1000;

    sprintf(_pubTopic,"/%s/%s/properties/report", PRODUCT_ID, DEIVCE_ID);
   // ESP_LOGI(TAG,"_pubTopic : %s", _pubTopic);

    sprintf(_buf, "{\"timestamp\": %lld, \"messageId\": \"123456\",\"properties\": {\"timeRemaining\": %d,\"speed\": %f, \"electricity\": %0.1f}}",time_ms, _time, _speed, _powerCap);
    //ESP_LOGI(TAG,"car_info_send_cloud : %s",_buf);

    /*MQTT 发送函数*/
    esp_mqtt_client_publish(client, _pubTopic, _buf, strlen(_buf), 0, 0);
    //ESP_LOGI(TAG,"msg_id : %d",msg_id);
}
