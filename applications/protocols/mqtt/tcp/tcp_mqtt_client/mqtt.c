/**
 * @file mqtt.c
 * @author your name (you@domain.com)
 * @brief
 * @version 0.1
 * @date 2022-10-19
 *
 * @copyright Copyright (c) 2022
 *
 */
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>

#include <FreeRTOS.h>
#include <task.h>
#include <event_groups.h>
#include "blog.h"
#include "mqtt_client.h"

#define MQTT_DATA_PUBLISH "devPub"
#define MQTT_DATA_SUBLISH "devSub"

xTaskHandle xHandlerMqtt = NULL;

void TaskXMqttRecieve(void* p)
{

    mqtt_msg_t rMsg;
    mqtt_msg_t sMsg;
    blog_info("mqtt_client_receive start");
    while (1)
    {
        if (mqtt_client_receive(&rMsg))
        {
            switch (rMsg.type)
            {
                //接收到新的消息下发
                case xMQTT_TYPE_RECIEVE_MSG:
                    blog_info("xQueueReceive topic: %s ", rMsg.topic);
                    blog_info("xQueueReceive payload: %s", rMsg.payload);
                    blog_info("[SYS] Memory left is %d Bytes", xPortGetFreeHeapSize());
                    strcpy((char*)sMsg.topic, MQTT_DATA_PUBLISH);
                    sprintf((char*)sMsg.payload, "{\"xMqttVersion\":%s,\"freeHeap\":%d}", getXMqttVersion(), xPortGetFreeHeapSize());
                    sMsg.payloadlen = strlen((char*)sMsg.payload);
                    sMsg.qos = 1;
                    sMsg.retained = 0;
                    sMsg.dup = 0;
                    mqtt_client_publish(&sMsg);

                    break;
                    //连接Mqtt服务器成功
                case xMQTT_TYPE_CONNECTED:
                    strcpy((char*)rMsg.topic, MQTT_DATA_SUBLISH);
                    rMsg.qos = 1;
                    mqtt_client_subscribe(&rMsg);
                    strcpy((char*)rMsg.topic, MQTT_DATA_PUBLISH);
                    rMsg.qos = 0;
                    mqtt_client_subscribe(&rMsg);
                    blog_info("xMQTT : xMQTT_TYPE_CONNECTED");
                    break;
                    //断开Mqtt服务器成功
                case xMQTT_TYPE_DISCONNECTED:
                    blog_info("xMQTT : xMQTT_TYPE_DISCONNECTED");
                    break;
                    //正在连接Mqtt服务器
                case xMQTT_TYPE_CONNECTTING:
                    blog_info("xMQTT : xMQTT_TYPE_CONNECTTING");
                    break;
                    //订阅主题成功
                case xMQTT_TYPE_SUB_SUCCESS:
                    blog_info("xMQTT : xMQTT_TYPE_SUB_SUCCESS");
                    break;
                    // ping心跳服务器
                case xMQTT_TYPE_SEND_PING:
                    blog_info("xMQTT : xMQTT_TYPE_SEND_PING");
                    break;
                default:
                    break;
            }
        }
    }
}

