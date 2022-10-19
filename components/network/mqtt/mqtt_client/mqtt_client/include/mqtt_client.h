#ifndef __MQTT_CLIENT_H
#define __MQTT_CLIENT_H

#include <stdio.h>
#include <stdint.h>
#include <stddef.h>
#include <string.h>


#include <FreeRTOS.h>
#include <task.h>
#include <event_groups.h>

#include "lwip/err.h"
#include "lwip/sockets.h"
#include "lwip/sys.h"
#include "lwip/netdb.h"
#include "lwip/dns.h"


//接收数据缓存包设置
#define RECV_BUFF_SIZE 512
#define MQTT_PACK_SIZE 512

#define XP_MQTT_MAX_TOPICLEN 50
#define XP_MQTT_RCV_MSG_QUEUE_LEN 5
#define XP_MQTT_SEND_MSG_QUEUE_LEN 5

//错误代码
typedef enum
{
    XP_MQTT_SUCCESS = 0, //成功
    XP_MQTT_ERR_MALLOC_FAIL = -1,
    XP_MQTT_ERR_NO_START = -2,
} mqtt_err_t;

typedef enum
{
    MQTT_DISCONNECTED = 0,
    MQTT_CONNECTING,
    MQTT_CONNECTED,
    MQTT_LINKLOST,
} mqtt_linkstate_t;

typedef struct
{
    uint8_t* Pack;             // buff use for mqtt pack
    uint8_t* Data;             // data stream p for mqtt data
    int DataLen;               // length of data steam
    uint8_t pingCnt;           // number of ping, clean after receive PINGRESP
    mqtt_linkstate_t LinkFlag; // linkstate
} mqtt_transfer_t;

typedef struct
{
    uint8_t* buff;
    int buff_len;
} transport_recv_t;

typedef enum
{
    WIFI_CONNECTED = 0,
    WIFI_DISCONNECTED,
} wifi_stauts_t;

typedef struct
{
    char* borkerHost;
    char* username;
    char* password;
    char* clientID;
    uint8_t MQTTVersion;
    uint8_t cleansession;
    uint16_t borkerPort;
    uint16_t keepAliveInterval;
    uint32_t mqttCommandTimeout;
} mqtt_client_config_t;

typedef enum
{
    xMQTT_TYPE_CONNECTED = 0,
    xMQTT_TYPE_SYSTEM_SUB_TOPIC,
    xMQTT_TYPE_SYSTEM_PUB_TOPIC,

    xMQTT_TYPE_DISCONNECTED,
    xMQTT_TYPE_CONNECTTING,
    xMQTT_TYPE_SUB_SUCCESS,
    xMQTT_TYPE_RECIEVE_MSG,
    xMQTT_TYPE_SEND_PING,
} mqtt_msg_type_t;

typedef struct
{
    uint8_t qos;
    uint8_t retained;
    uint8_t dup;
    uint8_t topic[XP_MQTT_MAX_TOPICLEN + 1];
    uint8_t payload[RECV_BUFF_SIZE + 1];
    uint16_t payloadlen;
    mqtt_msg_type_t type;
} mqtt_msg_t;

typedef void (*mqtt_type_handle_cb)(void* mqtt_type);
/**
 * @description: 通知mqtt当前的网络连接状态
 * @param {type} 0:表示成功连接路由器；1表示断开连接路由器
 * @return:
 */
void xMqttConnectWifiNotify(wifi_stauts_t state);

/**
 * @description: 连接服务器任务
 * @param {type}
 * @return:
 */
void TaskMainMqtt(void* pvParameters);

/**
 * @description: 服务器配置
 * @param {type}
 * @return:
 */
mqtt_err_t mqtt_client_init(mqtt_client_config_t* config);

/**
 * @description: 发布消息
 * @param {type}
 * @return:
 */
void mqtt_client_publish(mqtt_msg_t* mqttMsg);

/**
 * @description: 订阅主题
 * @param {type}
 * @return:
 */
void mqtt_client_subscribe(mqtt_msg_t* mqttMsg);

/**
 * @description:  接收Mqtt信息
 * @param {type}
 * @return:
 */
mqtt_err_t mqtt_client_receive(mqtt_msg_t* msg);

/**
 * @description: 获取版本
 * @param {type}
 * @return:
 */
char* getXMqttVersion();
/**
 * @brief
 *
 */
void mqtt_client_register_type(mqtt_type_handle_cb mqtt_type_handle);
/**
 * @brief
 *
 */
void mqtt_client_start(void);

#endif