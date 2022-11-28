#include "MQTTPacket.h"
#include "mqtt_client.h"
#include "FreeRTOS.h"
#include "task.h"
#include "blog.h"
TaskHandle_t xHandleTasMQTT = NULL;
static wifi_stauts_t wifi_status = WIFI_DISCONNECTED;
uint8_t buff_receive[RECV_BUFF_SIZE] = { 0 };
uint8_t mqtt_pack[MQTT_PACK_SIZE] = { 0 };

static char* XMQTT_SELF_VERSION = "xMQTT_v3.1";

static mqtt_client_config_t xMqttConfig;

static mqtt_msg_t rMqttMsg;

static mqtt_msg_t wMqttMsg;

static xQueueHandle mqttSendMsgQueue = NULL;
static xQueueHandle mqttRcvMsgQueue = NULL;

/*** tcp start **/
int mqtt_tcp_connect(const char* host, const int port);
int mqtt_tcp_disconnect(void);
int tcp_send(int connect_socket, uint8_t* buff, int len, unsigned int timeout_ms);
int tcp_receive(int connect_socket, uint8_t* buff, int len, unsigned int timeout_ms);
struct sockaddr_in serverAddr;
int connect_socket = -1;
/*** tcp end  **/

static mqtt_transfer_t mqtt =
{
    .Pack = mqtt_pack,
};

static transport_recv_t recvBuff =
{
    .buff = buff_receive,
    .buff_len = 0,
};

void xMqttConnectWifiNotify(wifi_stauts_t state)
{
    wifi_status = state;
}

static wifi_stauts_t wifi_status_get(void)
{
    return wifi_status;
}

int transport_getdata(uint8_t* buf, int len)
{
    int i;
    if ((recvBuff.buff_len > 0) && (recvBuff.buff_len >= len))
    {
        for (i = 0; i < len; i++)
        {
            *(buf + i) = *(recvBuff.buff + i);
        }
        recvBuff.buff_len -= len;
        memcpy(recvBuff.buff, recvBuff.buff + len, recvBuff.buff_len);
    }
    else
    {
        len = 0;
    }
    return (int)len;
}

void mqtt_ping_request(void)
{
    memset(mqtt.Pack, 0, MQTT_PACK_SIZE);
    uint16_t len = MQTTSerialize_pingreq(mqtt.Pack, MQTT_PACK_SIZE);
    tcp_send(connect_socket, mqtt.Pack, len, 500); // 发送
}

void mqtt_client_publish(mqtt_msg_t* mqttMsg)
{
    mqttMsg->type = xMQTT_TYPE_SYSTEM_PUB_TOPIC;
    if (xQueueSend(mqttSendMsgQueue, mqttMsg, 0) != pdTRUE)
    {
    }
}

int32_t msgid = 1;
void mqtt_client_subscribe(mqtt_msg_t* mqttMsg)
{
    mqttMsg->type = xMQTT_TYPE_SYSTEM_SUB_TOPIC;
    if (xQueueSend(mqttSendMsgQueue, mqttMsg, 0) != pdTRUE)
    {
    }
}

void mqtt_disconnect(void)
{
    memset(mqtt.Pack, 0, MQTT_PACK_SIZE);
    uint16_t len = MQTTSerialize_disconnect(mqtt.Pack, MQTT_PACK_SIZE);
    tcp_send(connect_socket, mqtt.Pack, len, 500);
    close(connect_socket);
}

void TaskMainMqtt(void* pvParameters)
{

    MQTTPacket_connectData pack = MQTTPacket_connectData_initializer;
    mqtt.pingCnt = 0;
    pack.MQTTVersion = xMqttConfig.MQTTVersion;
    pack.keepAliveInterval = xMqttConfig.keepAliveInterval;
    pack.cleansession = xMqttConfig.cleansession;
    pack.username.cstring = xMqttConfig.username;
    pack.password.cstring = xMqttConfig.password;
    pack.clientID.cstring = xMqttConfig.clientID;

    mqtt.LinkFlag = MQTT_DISCONNECTED;
    uint8_t msgtypes = CONNECT;
    uint32_t curtick = xTaskGetTickCount();

    unsigned short submsgid;
    int subcount;
    int granted_qos;
    int len;
    unsigned char dup;
    int qos = 1;
    unsigned char retained;
    unsigned short packetid;
    MQTTString topicName = MQTTString_initializer;

    while (1)
    {
        if (wifi_status_get() == WIFI_CONNECTED)
        {
            if (mqtt.LinkFlag == MQTT_CONNECTED)
            {
                if (xQueueReceive(mqttSendMsgQueue, &wMqttMsg, 0))
                {
                    unsigned short packetid = 0;
                    MQTTString topicName = MQTTString_initializer;
                    topicName.cstring = (char*)wMqttMsg.topic;
                    memset(mqtt.Pack, 0, MQTT_PACK_SIZE);
                    if (xMQTT_TYPE_SYSTEM_SUB_TOPIC == wMqttMsg.type)
                    {
                        msgid++;
                        len = MQTTSerialize_subscribe(mqtt.Pack, MQTT_PACK_SIZE, wMqttMsg.dup, msgid, 1, &topicName, (int*)&wMqttMsg.qos);
                        tcp_send(connect_socket, mqtt.Pack, len, 500);
                    }
                    else if (xMQTT_TYPE_SYSTEM_PUB_TOPIC == wMqttMsg.type)
                    {
                        len = MQTTSerialize_publish(mqtt.Pack, MQTT_PACK_SIZE, wMqttMsg.dup, wMqttMsg.qos, wMqttMsg.retained, packetid, topicName, wMqttMsg.payload, wMqttMsg.payloadlen);
                        tcp_send(connect_socket, mqtt.Pack, len, 500);
                        continue;
                    }
                    vTaskDelay(1000 / portTICK_RATE_MS);
                }
            }

            if ((xTaskGetTickCount() - curtick) > (pack.keepAliveInterval * 1000 / portTICK_RATE_MS))
            {

                if (mqtt.LinkFlag == MQTT_CONNECTED)
                {
                    curtick = xTaskGetTickCount();
                    mqtt_ping_request();
                    mqtt.pingCnt++;
                    if (mqtt.pingCnt > 3)
                    {
                        blog_debug("MQTT lost link... ");
                        mqtt_disconnect();
                        mqtt.pingCnt = 0;
                        mqtt.LinkFlag = MQTT_DISCONNECTED;
                        msgtypes = CONNECT;
                        rMqttMsg.type = xMQTT_TYPE_DISCONNECTED;
                        xQueueSend(mqttRcvMsgQueue, &rMqttMsg, 0);
                    }
                    else
                    {

                        blog_debug("mqtt.pingCnt %d", mqtt.pingCnt);
                        rMqttMsg.type = xMQTT_TYPE_SEND_PING;
                        xQueueSend(mqttRcvMsgQueue, &rMqttMsg, 0);
                    }
                }
            }
        }
        else
        {
            blog_error("mqtt_handle_task wifi status fail...");
            mqtt_disconnect();
            mqtt.pingCnt = 0;
            mqtt.LinkFlag = MQTT_DISCONNECTED;
            msgtypes = CONNECT;
        }

        switch (msgtypes)
        {

            case DISCONNECT:
                mqtt.LinkFlag = MQTT_DISCONNECTED;
                vTaskDelay(1000 / portTICK_RATE_MS);
                msgtypes = CONNECT;

                blog_debug("DISCONNECT borkerHost!!");
                rMqttMsg.type = xMQTT_TYPE_DISCONNECTED;
                xQueueSend(mqttRcvMsgQueue, &rMqttMsg, 0);

                break;


            case CONNECT:

                rMqttMsg.type = xMQTT_TYPE_CONNECTED;
                xQueueSend(mqttRcvMsgQueue, &rMqttMsg, 0);
                memset(mqtt.Pack, 0, MQTT_PACK_SIZE);
                len = MQTTSerialize_connect(mqtt.Pack, MQTT_PACK_SIZE, &pack);
                mqtt.LinkFlag = MQTT_DISCONNECTED;
                if (mqtt_tcp_connect(xMqttConfig.borkerHost, xMqttConfig.borkerPort) != 0)
                {
                    mqtt.LinkFlag = MQTT_DISCONNECTED;
                    vTaskDelay(1000 / portTICK_RATE_MS);
                    msgtypes = CONNECT;
                    break;
                }
                tcp_send(connect_socket, mqtt.Pack, len, 500);

                break;

            case CONNACK:

                xQueueReset(mqttSendMsgQueue);
                xQueueReset(mqttRcvMsgQueue);
                blog_debug("MQTT server connect success !!");
                memset(mqtt.Pack, 0, MQTT_PACK_SIZE);
                msgtypes = SUBSCRIBE; //
                mqtt.LinkFlag = MQTT_CONNECTED;
                break;

            case PUBLISH:

                memset(&rMqttMsg, 0x0, sizeof(rMqttMsg));

                MQTTDeserialize_publish((unsigned char*)(&dup), (int*)(&qos), (unsigned char*)(&retained),
                                        (unsigned short*)(&packetid), (MQTTString*)(&topicName),
                                        &(mqtt.Data), &(mqtt.DataLen),
                                        mqtt.Pack, MQTT_PACK_SIZE);

                uint16_t payloadlen = mqtt.DataLen;
                uint16_t topicLen = topicName.lenstring.len;
                strncpy((char*)rMqttMsg.topic, topicName.lenstring.data, topicLen);
                rMqttMsg.topic[topicLen] = '\0';

                strncpy((char*)rMqttMsg.payload, (char*)mqtt.Data, payloadlen);
                rMqttMsg.payload[payloadlen] = '\0';
                rMqttMsg.qos = qos;
                rMqttMsg.retained = retained;
                rMqttMsg.payloadlen = mqtt.DataLen;
                rMqttMsg.type = xMQTT_TYPE_RECIEVE_MSG;
                xQueueSend(mqttRcvMsgQueue, &rMqttMsg, (portTickType)10);

                if (mqtt.LinkFlag == MQTT_CONNECTED)
                {
                    if (qos != 0)
                    {
                        memset(mqtt.Pack, 0, MQTT_PACK_SIZE);
                        len = MQTTSerialize_ack(mqtt.Pack, MQTT_PACK_SIZE, PUBACK, dup, packetid);
                        tcp_send(connect_socket, mqtt.Pack, len, 500);
                    }
                }

                msgtypes = 0;

                break;

            case PUBACK:
                rMqttMsg.type = xMQTT_TYPE_PUB_SUCCESS;
                msgtypes = 0;
                break;

            case PUBREC: // just for qos2
            case PUBREL: // just for qos2
            {
                unsigned short packetid;
                unsigned char dup, type;
                if (MQTTDeserialize_ack(&type, &dup, &packetid, mqtt.Pack, MQTT_PACK_SIZE) != 1)
                {
                    blog_error("PUBREL Error");
                }
                else if (((len = MQTTSerialize_ack(mqtt.Pack, MQTT_PACK_SIZE, (msgtypes == PUBREC) ? PUBREL : PUBCOMP, 0, packetid)) != 0))
                {
                    tcp_send(connect_socket, mqtt.Pack, len, 500);
                }
                msgtypes = 0;
            }
            break;
            case PUBCOMP: // just for qos2
                msgtypes = 0;
                break;

            case SUBSCRIBE:
                rMqttMsg.type = xMQTT_TYPE_CONNECTED;
                xQueueSend(mqttRcvMsgQueue, &rMqttMsg, 0);
                blog_debug("SUBSCRIBE S");
                msgtypes = 0;
                break;

            case SUBACK:
                MQTTDeserialize_suback(&submsgid, 1, &subcount, &granted_qos, mqtt.Pack, MQTT_PACK_SIZE);
                msgtypes = 0;
                blog_debug("subscribe success");
                rMqttMsg.type = xMQTT_TYPE_SUB_SUCCESS;

                xQueueSend(mqttRcvMsgQueue, &rMqttMsg, 0);
                break;

            case PINGREQ:
                memset(mqtt.Pack, 0, MQTT_PACK_SIZE);
                len = MQTTSerialize_pingreq(mqtt.Pack, MQTT_PACK_SIZE);
                tcp_send(connect_socket, mqtt.Pack, len, 500);
                blog_debug("sending ping...");
                msgtypes = 0;

                break;

            case PINGRESP:
                msgtypes = 0;
                mqtt.pingCnt = 0;
                break;
        }

        recvBuff.buff_len = tcp_receive(connect_socket, recvBuff.buff, RECV_BUFF_SIZE, 250);
        if (recvBuff.buff_len > 0)
        {
            msgtypes = (enum msgTypes)MQTTPacket_read(mqtt.Pack, MQTT_PACK_SIZE, transport_getdata);
        }
        vTaskDelay(100 / portTICK_RATE_MS);

    }
    mqtt_disconnect();
}

mqtt_err_t mqtt_client_receive(mqtt_msg_t* msg)
{
    if (mqttRcvMsgQueue == NULL)
    {
        blog_error("mqtt_client_receive fail");
        return 0;
    }
    return xQueueReceive(mqttRcvMsgQueue, msg, 10);
}

mqtt_err_t mqtt_client_init(mqtt_client_config_t* config)
{

    mqtt_err_t err = XP_MQTT_SUCCESS;

    mqtt_client_config_t mConfig;
    memset(&mConfig, 0, sizeof(mqtt_client_config_t));

    mConfig.MQTTVersion = config->MQTTVersion;
    mConfig.keepAliveInterval = config->keepAliveInterval;
    mConfig.cleansession = config->cleansession;
    mConfig.borkerPort = config->borkerPort;
    mConfig.mqttCommandTimeout = config->mqttCommandTimeout;

    mConfig.borkerHost = (char*)malloc(strlen(config->borkerHost) + 1);
    mConfig.username = (char*)malloc(strlen(config->username) + 1);
    mConfig.password = (char*)malloc(strlen(config->password) + 1);
    mConfig.clientID = (char*)malloc(strlen(config->clientID) + 1);

    if (mConfig.borkerHost == NULL ||
        mConfig.username == NULL ||
        mConfig.password == NULL ||
        mConfig.clientID == NULL)
    {
        err = XP_MQTT_ERR_MALLOC_FAIL;
        goto __FINISH;
    }
    else
    {
        strcpy(mConfig.borkerHost, config->borkerHost);
        strcpy(mConfig.username, config->username);
        strcpy(mConfig.password, config->password);
        strcpy(mConfig.clientID, config->clientID);
    }

    mqttRcvMsgQueue = xQueueCreate(XP_MQTT_RCV_MSG_QUEUE_LEN, sizeof(mqtt_msg_t));
    mqttSendMsgQueue = xQueueCreate(XP_MQTT_SEND_MSG_QUEUE_LEN, sizeof(mqtt_msg_t));

    if (mqttRcvMsgQueue == NULL)
    {
        err = XP_MQTT_ERR_MALLOC_FAIL;
        goto __FINISH;
    }

    xMqttConfig = mConfig;

__FINISH:
    if (err != XP_MQTT_SUCCESS)
    {
        free(mConfig.borkerHost);
        free(mConfig.username);
        free(mConfig.password);
        free(mConfig.clientID);
        vQueueDelete(mqttRcvMsgQueue);
        vQueueDelete(mqttSendMsgQueue);
        mqttRcvMsgQueue = NULL;
        mqttSendMsgQueue = NULL;
        memset(&mConfig, 0, sizeof(mqtt_client_config_t));
        blog_error("XP_MQTT_START fail(%d)", err);
    }
    return err;
}

char* getXMqttVersion()
{
    return XMQTT_SELF_VERSION;
}

static int mqtt_read(int my_socket, unsigned char* buffer, unsigned int len, unsigned int timeout_ms)
{
    portTickType xTicksToWait = timeout_ms / portTICK_RATE_MS; /* convert milliseconds to ticks */
    xTimeOutType xTimeOut;
    int recvLen = 0;
    int rc = 0;

    struct timeval timeout;
    fd_set fdset;

    FD_ZERO(&fdset);
    FD_SET(my_socket, &fdset);

    timeout.tv_sec = 0;
    timeout.tv_usec = timeout_ms * 1000;

    vTaskSetTimeOutState(&xTimeOut); /* Record the time at which this function was entered. */

    if (select(my_socket + 1, &fdset, NULL, NULL, &timeout) > 0)
    {
        if (FD_ISSET(my_socket, &fdset))
        {
            do
            {
                rc = recv(my_socket, buffer + recvLen, len - recvLen, MSG_DONTWAIT);

                if (rc > 0)
                {
                    recvLen += rc;
                }
                else if (rc <= 0)
                {

                    break;
                }
            } while (recvLen < len && xTaskCheckForTimeOut(&xTimeOut, &xTicksToWait) == pdFALSE);
        }
    }

    //printf("recvLen = %d",recvLen);

    return recvLen;
}

static int mqtt_write(int my_socket, unsigned char* buffer, unsigned int len, unsigned int timeout_ms)
{
    portTickType xTicksToWait = timeout_ms / portTICK_RATE_MS; /* convert milliseconds to ticks */
    xTimeOutType xTimeOut;
    int sentLen = 0;
    int rc = 0;

    struct timeval timeout;
    fd_set fdset;

    FD_ZERO(&fdset);
    FD_SET(my_socket, &fdset);

    timeout.tv_sec = 0;
    timeout.tv_usec = timeout_ms * 1000;

    vTaskSetTimeOutState(&xTimeOut); /* Record the time at which this function was entered. */

    if (select(my_socket + 1, NULL, &fdset, NULL, &timeout) > 0)
    {
        if (FD_ISSET(my_socket, &fdset))
        {
            do
            {
                rc = send(my_socket, buffer + sentLen, len - sentLen, MSG_DONTWAIT);

                if (rc > 0)
                {
                    sentLen += rc;
                }
                else if (rc <= 0)
                {
                    //sentLen = rc;
                    break;
                }
            } while (sentLen < len && xTaskCheckForTimeOut(&xTimeOut, &xTicksToWait) == pdFALSE);
        }
    }

    return sentLen;
}

int tcp_send(int connect_socket, uint8_t* buff, int len, unsigned int timeout_ms)
{
    return mqtt_write(connect_socket, buff, len, timeout_ms);
}

int tcp_receive(int connect_socket, uint8_t* buff, int len, unsigned int timeout_ms)
{
    return mqtt_read(connect_socket, buff, len, timeout_ms);
}

int mqtt_tcp_disconnect(void)
{
    shutdown(connect_socket, SHUT_RDWR);
    return close(connect_socket);
}

int mqtt_tcp_connect(const char* host, const int port)
{
    int ret;
    struct addrinfo hints, * addr_list, * cur;

    memset(&hints, 0, sizeof(hints));
    hints.ai_family = AF_UNSPEC; // Allow IPv4 or IPv6
    hints.ai_flags = 0;
    hints.ai_protocol = 0;
    hints.ai_socktype = SOCK_STREAM;

    ret = getaddrinfo(host, NULL, &hints, &addr_list);
    if (ret != 0)
    {
        blog_error("DNS parsing failed!");
        return -1;
    }

    for (cur = addr_list; cur != NULL; cur = cur->ai_next)
    {
        char ip[128];
        inet_ntop(AF_INET, &(((struct sockaddr_in*)cur->ai_addr)->sin_addr), ip, 128);

        //printf("DNS IP: %s:%d", ip, port);
        connect_socket = socket(AF_INET, SOCK_STREAM, 0);
        if (connect_socket < 0)
        {
            ret = -1;
            blog_error("socket created failed!");
            continue;
        }

        bzero(&serverAddr, sizeof(struct sockaddr_in));
        serverAddr.sin_family = AF_INET;
        serverAddr.sin_addr.s_addr = inet_addr((const char*)ip);
        //serverAddr.sin_addr.s_addr = inet_addr((const char*)("192.168.1.124"));
        serverAddr.sin_port = htons(port);

        if (connect(connect_socket, (struct sockaddr*)&serverAddr, sizeof(serverAddr)) == 0)
        {
            //printf("connect server success!");
            ret = 0;
            break;
        }
        else
        {
            blog_error("error = %d", errno);
        }
        close(connect_socket);
        ret = -1;
    }
    if (cur == NULL)
        ret = -1;

    freeaddrinfo(addr_list);

    return ret;
}
/**
 * @brief
 *
 * @param mqtt_type_handle
 */
void mqtt_client_register_type(mqtt_type_handle_cb mqtt_type_handle)
{
    xTaskCreate(mqtt_type_handle, "mqtt_type_handle", 1024*4, NULL, 8, NULL);
}

/**
 * @brief
 *
 */
static xTaskHandle xHandlerMqtt = NULL;
void mqtt_client_start(void)
{
    if (xHandlerMqtt==NULL)
        xTaskCreate(TaskMainMqtt, "TaskMainMqtt", 1024 * 8, NULL, 10, &xHandlerMqtt);
}