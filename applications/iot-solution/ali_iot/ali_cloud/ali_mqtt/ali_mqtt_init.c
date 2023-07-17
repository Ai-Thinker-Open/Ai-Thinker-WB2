#include "ali_mqtt_init.h"
#include "ali_ota_init.h"
#include "ali_ntp_init.h"

#include "aiot_state_api.h"
#include "aiot_sysdep_api.h"
#include "aiot_mqtt_api.h"
#include "aiot_ota_api.h"

void *mqtt_handle = NULL;

/* 位于external/ali_ca_cert.c中的服务器证书 */
extern const char *ali_ca_cert;

/* TODO: 替换为自己设备的三元组 */
char *product_key = "a1Rq1D1yQnu";
char *device_name = "bl602-test";
char *device_secret = "64b4f96c8083630db426e0a4c5b075d1";

char device_update_topic[100] = {0};

static uint8_t g_mqtt_process_thread_running = 0;
static uint8_t g_mqtt_recv_thread_running = 0;
static uint8_t g_mqtt_send_thread_running = 0;

SemaphoreHandle_t xSemaphore_send;

/* MQTT事件回调函数, 当网络连接/重连/断开时被触发, 事件定义见core/aiot_mqtt_api.h */
void aiot_mqtt_event_handler(void *handle, const aiot_mqtt_event_t *event, void *userdata)
{
    switch (event->type)
    {
    /* SDK因为用户调用了aiot_mqtt_connect()接口, 与mqtt服务器建立连接已成功 */
    case AIOT_MQTTEVT_CONNECT:
    {
        printf("AIOT_MQTTEVT_CONNECT\n");
        /* TODO: 处理SDK建连成功, 不可以在这里调用耗时较长的阻塞函数 */
    }
    break;

    /* SDK因为网络状况被动断连后, 自动发起重连已成功 */
    case AIOT_MQTTEVT_RECONNECT:
    {
        printf("AIOT_MQTTEVT_RECONNECT\n");
        /* TODO: 处理SDK重连成功, 不可以在这里调用耗时较长的阻塞函数 */
    }
    break;

    /* SDK因为网络的状况而被动断开了连接, network是底层读写失败, heartbeat是没有按预期得到服务端心跳应答 */
    case AIOT_MQTTEVT_DISCONNECT:
    {
        char *cause = (event->data.disconnect == AIOT_MQTTDISCONNEVT_NETWORK_DISCONNECT) ? ("network disconnect") : ("heartbeat disconnect");
        printf("AIOT_MQTTEVT_DISCONNECT: %s\n", cause);
        /* TODO: 处理SDK被动断连, 不可以在这里调用耗时较长的阻塞函数 */
    }
    break;

    default:
    {
    }
    break;
    }
}

/**
 * @brief publish data to server
 * @note  none
 */
void pub_msg(void *handle)
{
    const char *device_update_topic = "/sys/a1Rq1D1yQnu/bl602-test/thing/event/property/post"; // format: sys/${productKey}/${deviceName}/thing/event/property/post
    const char *msg = "{\"id\":\"123\",\"version\":\"1.0\",\"sys\":{\"ack\":0},\"params\":{\"Power\":{\"value\":\"on\",\"time\":1524448722000}},\"method\":\"thing.event.property.post\"}";
    printf("device_update_topic=%s\r\n", device_update_topic);
    int32_t res = aiot_mqtt_pub(handle, device_update_topic, (uint8_t *)msg, strlen(msg), 0);
    if (res < 0)
    {
        printf("aiot_mqtt_pub failed, res: -0x%04X\n", -res);
    }
}

/* MQTT默认消息处理回调, 当SDK从服务器收到MQTT消息时, 且无对应用户回调处理时被调用 */
void aiot_mqtt_default_recv_handler(void *handle, const aiot_mqtt_recv_t *packet, void *userdata)
{
    switch (packet->type)
    {
    case AIOT_MQTTRECV_HEARTBEAT_RESPONSE:
    {
        printf("heartbeat response\n");
        /* TODO: 处理服务器对心跳的回应, 一般不处理 */
    }
    break;

    case AIOT_MQTTRECV_SUB_ACK:
    {
        printf("suback, res: -0x%04X, packet id: %d, max qos: %d\n",
               -packet->data.sub_ack.res, packet->data.sub_ack.packet_id, packet->data.sub_ack.max_qos);
        /* TODO: 处理服务器对订阅请求的回应, 一般不处理 */
    }
    break;

    case AIOT_MQTTRECV_PUB:
    {
        printf("pub, qos: %d, topic: %.*s\n", packet->data.pub.qos, packet->data.pub.topic_len, packet->data.pub.topic);
        printf("pub, payload: %.*s\n", packet->data.pub.payload_len, packet->data.pub.payload);
        /* TODO: 处理服务器下发的业务报文 */
        // mqtt_device_data_parse(handle, (const char *)packet->data.pub.payload);
    }
    break;

    case AIOT_MQTTRECV_PUB_ACK:
    {
        printf("puback, packet id: %d\n", packet->data.pub_ack.packet_id);
        /* TODO: 处理服务器对QoS1上报消息的回应, 一般不处理 */
    }
    break;

    default:
    {
    }
    break;
    }
}

/* 执行aiot_mqtt_process的线程, 包含心跳发送和QoS1消息重发 */
void aiot_mqtt_process_thread(void *pvParameters)
{
    int32_t res = STATE_SUCCESS;

    while (g_mqtt_process_thread_running)
    {
        res = aiot_mqtt_process(pvParameters);
        if (res == STATE_USER_INPUT_EXEC_DISABLED)
        {
            break;
        }
        vTaskDelay(1);
    }
    vTaskDelete(NULL);
    return NULL;
}

/* 执行aiot_mqtt_recv的线程, 包含网络自动重连和从服务器收取MQTT消息 */
void aiot_mqtt_recv_thread(void *pvParameters)
{
    int32_t res = STATE_SUCCESS;

    while (g_mqtt_recv_thread_running)
    {
        res = aiot_mqtt_recv(pvParameters);
        if (res < STATE_SUCCESS)
        {
            if (res == STATE_USER_INPUT_EXEC_DISABLED)
            {
                break;
            }
        }
        /* 网络断了，关闭重连功能 */
        else if (res == STATE_SYS_DEPEND_NWK_CLOSED)
        {
            // aiot_mqtt_setopt(pvParameters, AIOT_MQTTOPT_RECONN_ENABLED, 0);
        }
    }
    vTaskDelete(NULL);
    return NULL;
}

/* 发送实时参数 */
void aiot_mqtt_send_thread(void *pvParameters)
{
    // int32_t res = STATE_SUCCESS;
    xSemaphore_send = xSemaphoreCreateBinary();
    if (xSemaphore_send == NULL)
    {
        printf("create fail\r\n");
    }

    while (g_mqtt_process_thread_running)
    {
        if (xSemaphore_send != NULL)
        {
            /* See if we can obtain the semaphore.  If the semaphore is not
            available wait 10 ticks to see if it becomes free. */
            if (xSemaphoreTake(xSemaphore_send, portMAX_DELAY) == pdTRUE)
            {
                // 这里上传数据
                pub_msg(pvParameters);
            }
        }
    }
    vTaskDelete(NULL);
    return NULL;
}

int32_t aiot_mqtt_stop(void)
{
    int32_t res = STATE_SUCCESS;

    g_mqtt_process_thread_running = 0;
    g_mqtt_recv_thread_running = 0;

    /* 断开MQTT连接 */
    res = aiot_mqtt_disconnect(mqtt_handle);
    if (res < STATE_SUCCESS)
    {
        aiot_mqtt_deinit(&mqtt_handle);
        printf("aiot_mqtt_disconnect failed: -0x%04X\n", -res);
        return -1;
    }

    /* 销毁MQTT实例 */
    res = aiot_mqtt_deinit(&mqtt_handle);
    if (res < STATE_SUCCESS)
    {
        printf("aiot_mqtt_deinit failed: -0x%04X\n", -res);
        return -1;
    }

    return 0;
}

uint32_t ali_mqtt_init(void)
{
    // if (handle == NULL)
    // {
    //     printf("handle is NULL\r\n");
    //     return -1;
    // }
    int32_t res = STATE_SUCCESS;
    // void *mqtt_handle = NULL;
    char *url = "iot-as-mqtt.cn-shanghai.aliyuncs.com"; /* 阿里云平台上海站点的域名后缀 */
    char host[100] = {0};                               /* 用这个数组拼接设备连接的云平台站点全地址, 规则是 ${productKey}.iot-as-mqtt.cn-shanghai.aliyuncs.com */
    uint16_t port = 443;                                /* 无论设备是否使用TLS连接阿里云平台, 目的端口都是443 */
    aiot_sysdep_network_cred_t cred;                    /* 安全凭据结构体, 如果要用TLS, 这个结构体中配置CA证书等参数 */

    /* 创建SDK的安全凭据, 用于建立TLS连接 */
    memset(&cred, 0, sizeof(aiot_sysdep_network_cred_t));
    cred.option = AIOT_SYSDEP_NETWORK_CRED_SVRCERT_CA; /* 使用RSA证书校验MQTT服务端 */
    cred.max_tls_fragment = 16384;                     /* 最大的分片长度为16K, 其它可选值还有4K, 2K, 1K, 0.5K */
    cred.sni_enabled = 1;                              /* TLS建连时, 支持Server Name Indicator */
    cred.x509_server_cert = ali_ca_cert;               /* 用来验证MQTT服务端的RSA根证书 */
    cred.x509_server_cert_len = strlen(ali_ca_cert);   /* 用来验证MQTT服务端的RSA根证书长度 */

    /* 创建1个MQTT客户端实例并内部初始化默认参数 */
    mqtt_handle = aiot_mqtt_init();
    if (mqtt_handle == NULL)
    {
        printf("aiot_mqtt_init failed\n");
        return -1;
    }

    /* TODO: 如果以下代码不被注释, 则例程会用TCP而不是TLS连接云平台 */
    {
        memset(&cred, 0, sizeof(aiot_sysdep_network_cred_t));
        cred.option = AIOT_SYSDEP_NETWORK_CRED_NONE;
    }

    // TODO:这里要注意
    snprintf(host, 100, "%s.%s", product_key, url);
    /* 配置MQTT服务器地址 */
    aiot_mqtt_setopt(mqtt_handle, AIOT_MQTTOPT_HOST, (void *)host);
    /* 配置MQTT服务器端口 */
    aiot_mqtt_setopt(mqtt_handle, AIOT_MQTTOPT_PORT, (void *)&port);
    /* 配置设备productKey */
    aiot_mqtt_setopt(mqtt_handle, AIOT_MQTTOPT_PRODUCT_KEY, (void *)product_key);
    /* 配置设备deviceName */
    aiot_mqtt_setopt(mqtt_handle, AIOT_MQTTOPT_DEVICE_NAME, (void *)device_name);
    /* 配置设备deviceSecret */
    aiot_mqtt_setopt(mqtt_handle, AIOT_MQTTOPT_DEVICE_SECRET, (void *)device_secret);
    /* 配置网络连接的安全凭据, 上面已经创建好了 */
    aiot_mqtt_setopt(mqtt_handle, AIOT_MQTTOPT_NETWORK_CRED, (void *)&cred);
    /* 配置MQTT默认消息接收回调函数 */
    aiot_mqtt_setopt(mqtt_handle, AIOT_MQTTOPT_RECV_HANDLER, (void *)aiot_mqtt_default_recv_handler);
    /* 配置MQTT事件回调函数 */
    aiot_mqtt_setopt(mqtt_handle, AIOT_MQTTOPT_EVENT_HANDLER, (void *)aiot_mqtt_event_handler);

    /* 与服务器建立MQTT连接 */
    res = aiot_mqtt_connect(mqtt_handle);
    for (;;)
    {
        if (res < STATE_SUCCESS)
        {
            vTaskDelay(5000);
            res = aiot_mqtt_reconn(mqtt_handle);
            /* 尝试建立连接失败, 销毁MQTT实例, 回收资源 */
            // res = aiot_mqtt_deinit(&mqtt_handle);
            printf("aiot_mqtt_connect failed: -0x%04X\r\n\r\n", -res);
            printf("please check variables like mqtt_host, produt_key, device_name, device_secret in demo\r\n");
        }
        else
        {
            break;
        }
    }
    printf("aiot_mqtt_connect successs\r\n\r\n", -res);

    ali_ota_init(mqtt_handle);
    ali_ntp_init(mqtt_handle);

    /* TODO:MQTT 订阅topic功能示例, 请根据自己的业务需求进行使用 */
    // {    format: /sys/${productKey}/${deviceName}/thing/event/property/post_reply
    char *sub_topic = "/sys/a1Rq1D1yQnu/bl602-test/thing/event/property/post_reply";
    if (sub_topic != 0)
    {
        res = aiot_mqtt_sub(mqtt_handle, sub_topic, NULL, 1, NULL);
        if (res < 0)
        {
            printf("aiot_mqtt_sub failed, res: -0x%04X\n", -res);
            return -1;
        }
        printf("sub data from server \r\n");
    }

    // }

    /* TODO:MQTT 发布消息功能示例, 请根据自己的业务需求进行使用 */
    // {
    //     char *pub_topic = "/sys/a1rbc4Z1pVd/OuYang_Device/thing/event/property/post";
    //     char *pub_payload = "{\"id\":\"1\",\"version\":\"1.0\",\"params\":{\"CurrentTemperature\":30}}";

    //     res = aiot_mqtt_pub(mqtt_handle, pub_topic, (uint8_t *)pub_payload, strlen(pub_payload), 0);
    //     if (res < 0)
    //     {
    //         printf("aiot_mqtt_sub failed, res: -0x%04X\n", -res);
    //         return -1;
    //     }
    // }

    g_mqtt_send_thread_running = 1;
    res = xTaskCreate(aiot_mqtt_send_thread, (char *)"aiot_mqtt_send_thread", 1024 * 1, mqtt_handle, 8, NULL);
    if (res != pdPASS)
    {
        printf("xTaskCreate aiot_mqtt_process_thread failed: %d\n", res);
        return -1;
    }

    /* 创建一个单独的线程, 专用于执行aiot_mqtt_process, 它会自动发送心跳保活, 以及重发QoS1的未应答报文 */
    g_mqtt_process_thread_running = 1;
    res = xTaskCreate(aiot_mqtt_process_thread, (char *)"aiot_mqtt_process_thread", 1024 * 2, mqtt_handle, 11, NULL);
    if (res != pdPASS)
    {
        printf("xTaskCreate aiot_mqtt_process_thread failed: %d\n", res);
        return -1;
    }

    /* 创建一个单独的线程用于执行aiot_mqtt_recv, 它会循环收取服务器下发的MQTT消息, 并在断线时自动重连 */
    g_mqtt_recv_thread_running = 1;
    res = xTaskCreate(aiot_mqtt_recv_thread, (char *)"aiot_mqtt_recv_thread", 1024 * 2, mqtt_handle, 12, NULL);
    if (res != pdPASS)
    {
        printf("xTaskCreate aiot_mqtt_recv_thread failed: %d\n", res);
        return -1;
    }

    return 0;
}

/**
 * @brief 上传数据，只要调用这个接口，会自动上传最新的数据
 *
 */
void start_update_data(void)
{
    if (xSemaphore_send != NULL)
    {
        xSemaphoreGive(xSemaphore_send);
    }
}