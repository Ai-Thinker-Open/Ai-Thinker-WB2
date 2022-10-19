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

#define MQTT_DATA_PUBLISH "publish/topic"
#define MQTT_DATA_SUBLISH "subscribe/topic"

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
                //Receive new messages and send them
                case xMQTT_TYPE_RECIEVE_MSG:
                    blog_info("xQueueReceive topic: %s:%s", rMsg.topic, rMsg.payload);
                    strcpy((char*)sMsg.topic, MQTT_DATA_PUBLISH);
                    sprintf((char*)sMsg.payload, "{\"xMqttVersion\":\"%s\",\"freeHeap\":%d}", getXMqttVersion(), xPortGetFreeHeapSize());
                    sMsg.payloadlen = strlen((char*)sMsg.payload);
                    sMsg.qos = 1;
                    sMsg.retained = 0;
                    sMsg.dup = 0;
                    mqtt_client_publish(&sMsg);

                    break;
                    //mqtt client connection succeeded
                case xMQTT_TYPE_CONNECTED:
                    strcpy((char*)rMsg.topic, MQTT_DATA_SUBLISH);
                    rMsg.qos = 1;
                    mqtt_client_subscribe(&rMsg);
                    //Subscribe to publishing topics at the same time
                    strcpy((char*)rMsg.topic, MQTT_DATA_PUBLISH);
                    rMsg.qos = 0;
                    mqtt_client_subscribe(&rMsg);
                    blog_info("xMQTT : xMQTT_TYPE_CONNECTED");
                    break;
                    //The mqtt client was disconnected successfully
                case xMQTT_TYPE_DISCONNECTED:
                    blog_info("xMQTT : xMQTT_TYPE_DISCONNECTED");
                    break;
                    //Connecting to MQTT server
                case xMQTT_TYPE_CONNECTTING:
                    blog_info("xMQTT : xMQTT_TYPE_CONNECTTING");
                    break;
                    //Topic subscription succeeded
                case xMQTT_TYPE_SUB_SUCCESS:
                    blog_info("xMQTT : xMQTT_TYPE_SUB_SUCCESS");
                    break;
                    // Ping the heartbeat packet
                case xMQTT_TYPE_SEND_PING:
                    blog_info("xMQTT : xMQTT_TYPE_SEND_PING");
                    break;
                default:
                    break;
            }
        }
    }
}

