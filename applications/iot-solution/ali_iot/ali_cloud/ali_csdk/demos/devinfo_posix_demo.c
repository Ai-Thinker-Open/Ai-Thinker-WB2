/*
 * 这个例程适用于`Linux`这类支持pthread的POSIX设备, 它演示了用SDK配置MQTT参数并建立连接, 之后创建2个线程
 *
 * + 一个线程用于保活长连接
 * + 一个线程用于接收消息, 并在有消息到达时进入默认的数据回调, 在连接状态变化时进入事件回调
 *
 * 接着在MQTT连接上发送设备标签更新或删除请求, 如果云平台的回应报文到达, 从接收线程会调用devinfo消息处理的回调函数, 把上报结果打印出来
 *
 * 需要用户关注或修改的部分, 已经用 TODO 在注释中标明
 *
 */
#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <pthread.h>

#include "aiot_state_api.h"
#include "aiot_sysdep_api.h"
#include "aiot_mqtt_api.h"
#include "aiot_devinfo_api.h"


/* TODO: 替换为自己设备的三元组 */
char *product_key       = "${YourProductKey}";
char *device_name       = "${YourDeviceName}";
char *device_secret     = "${YourDeviceSecret}";

/*
    TODO: 替换为自己实例的接入点

    对于企业实例, 或者2021年07月30日之后（含当日）开通的物联网平台服务下公共实例
    mqtt_host的格式为"${YourInstanceId}.mqtt.iothub.aliyuncs.com"
    其中${YourInstanceId}: 请替换为您企业/公共实例的Id

    对于2021年07月30日之前（不含当日）开通的物联网平台服务下公共实例
    需要将mqtt_host修改为: mqtt_host = "${YourProductKey}.iot-as-mqtt.${YourRegionId}.aliyuncs.com"
    其中, ${YourProductKey}：请替换为设备所属产品的ProductKey。可登录物联网平台控制台，在对应实例的设备详情页获取。
    ${YourRegionId}：请替换为您的物联网平台设备所在地域代码, 比如cn-shanghai等
    该情况下完整mqtt_host举例: a1TTmBPIChA.iot-as-mqtt.cn-shanghai.aliyuncs.com

    详情请见: https://help.aliyun.com/document_detail/147356.html
*/
char  *mqtt_host = "${YourInstanceId}.mqtt.iothub.aliyuncs.com";

/* 位于portfiles/aiot_port文件夹下的系统适配函数集合 */
extern aiot_sysdep_portfile_t g_aiot_sysdep_portfile;

/* 位于external/ali_ca_cert.c中的服务器证书 */
extern const char *ali_ca_cert;

static pthread_t g_mqtt_process_thread;
static pthread_t g_mqtt_recv_thread;
static uint8_t g_mqtt_process_thread_running = 0;
static uint8_t g_mqtt_recv_thread_running = 0;

/* TODO: 如果要关闭日志, 就把这个函数实现为空, 如果要减少日志, 可根据code选择不打印
 *
 * 例如: [1581501698.455][LK-0309] pub: /sys/gb80sFmX7yX/devinfo_basic_demo/thing/deviceinfo/update
 *
 * 上面这条日志的code就是0309(十六进制), code值的定义见core/aiot_state_api.h
 *
 */

/* 日志回调函数, SDK的日志会从这里输出 */
static int32_t demo_state_logcb(int32_t code, char *message)
{
    printf("%s", message);
    return 0;
}

/* MQTT事件回调函数, 当网络连接/重连/断开时被触发, 事件定义见core/aiot_mqtt_api.h */
void demo_mqtt_event_handler(void *handle, const aiot_mqtt_event_t *event, void *userdata)
{
    switch (event->type) {
        /* SDK因为用户调用了aiot_mqtt_connect()接口, 与mqtt服务器建立连接已成功 */
        case AIOT_MQTTEVT_CONNECT: {
            printf("AIOT_MQTTEVT_CONNECT\n");
        }
        break;

        /* SDK因为网络状况被动断连后, 自动发起重连已成功 */
        case AIOT_MQTTEVT_RECONNECT: {
            printf("AIOT_MQTTEVT_RECONNECT\n");
        }
        break;

        /* SDK因为网络的状况而被动断开了连接, network是底层读写失败, heartbeat是没有按预期得到服务端心跳应答 */
        case AIOT_MQTTEVT_DISCONNECT: {
            char *cause = (event->data.disconnect == AIOT_MQTTDISCONNEVT_NETWORK_DISCONNECT) ? ("network disconnect") :
                          ("heartbeat disconnect");
            printf("AIOT_MQTTEVT_DISCONNECT: %s\n", cause);
        }
        break;

        default: {

        }
    }
}

/* MQTT默认消息处理回调, 当SDK从服务器收到MQTT消息时, 且无对应用户回调处理时被调用 */
void demo_mqtt_default_recv_handler(void *handle, const aiot_mqtt_recv_t *packet, void *userdata)
{
    switch (packet->type) {
        case AIOT_MQTTRECV_HEARTBEAT_RESPONSE: {
            printf("heartbeat response\n");
        }
        break;

        case AIOT_MQTTRECV_SUB_ACK: {
            printf("suback, res: -0x%04X, packet id: %d, max qos: %d\n",
                   -packet->data.sub_ack.res, packet->data.sub_ack.packet_id, packet->data.sub_ack.max_qos);
        }
        break;

        case AIOT_MQTTRECV_PUB: {
            printf("pub, qos: %d, topic: %.*s\n", packet->data.pub.qos, packet->data.pub.topic_len, packet->data.pub.topic);
            printf("pub, payload: %.*s\n", packet->data.pub.payload_len, packet->data.pub.payload);
        }
        break;

        case AIOT_MQTTRECV_PUB_ACK: {
            printf("puback, packet id: %d\n", packet->data.pub_ack.packet_id);
        }
        break;

        default: {

        }
    }
}

/* 执行aiot_mqtt_process的线程, 包含心跳发送和QoS1消息重发 */
void *demo_mqtt_process_thread(void *args)
{
    int32_t res = STATE_SUCCESS;

    while (g_mqtt_process_thread_running) {
        res = aiot_mqtt_process(args);
        if (res == STATE_USER_INPUT_EXEC_DISABLED) {
            break;
        }
        sleep(1);
    }
    return NULL;
}

/* 执行aiot_mqtt_recv的线程, 包含网络自动重连和从服务器收取MQTT消息 */
void *demo_mqtt_recv_thread(void *args)
{
    int32_t res = STATE_SUCCESS;

    while (g_mqtt_recv_thread_running) {
        res = aiot_mqtt_recv(args);
        if (res < STATE_SUCCESS) {
            if (res == STATE_USER_INPUT_EXEC_DISABLED) {
                break;
            }
            sleep(1);
        }
    }
    return NULL;
}

int32_t demo_mqtt_start(void **handle, char *product_key, char *device_name, char *device_secret)
{
    int32_t     res = STATE_SUCCESS;
    void       *mqtt_handle = NULL;
    uint16_t    port = 443;      /* 无论设备是否使用TLS连接阿里云平台, 目的端口都是443 */
    aiot_sysdep_network_cred_t cred; /* 安全凭据结构体, 如果要用TLS, 这个结构体中配置CA证书等参数 */

    /* 配置SDK的底层依赖 */
    aiot_sysdep_set_portfile(&g_aiot_sysdep_portfile);
    /* 配置SDK的日志输出 */
    aiot_state_set_logcb(demo_state_logcb);

    /* 创建SDK的安全凭据, 用于建立TLS连接 */
    memset(&cred, 0, sizeof(aiot_sysdep_network_cred_t));
    cred.option = AIOT_SYSDEP_NETWORK_CRED_SVRCERT_CA;  /* 使用RSA证书校验MQTT服务端 */
    cred.max_tls_fragment = 16384; /* 最大的分片长度为16K, 其它可选值还有4K, 2K, 1K, 0.5K */
    cred.sni_enabled = 1;                               /* TLS建连时, 支持Server Name Indicator */
    cred.x509_server_cert = ali_ca_cert;                 /* 用来验证MQTT服务端的RSA根证书 */
    cred.x509_server_cert_len = strlen(ali_ca_cert);     /* 用来验证MQTT服务端的RSA根证书长度 */

    /* 创建1个MQTT客户端实例并内部初始化默认参数 */
    mqtt_handle = aiot_mqtt_init();
    if (mqtt_handle == NULL) {
        printf("aiot_mqtt_init failed\n");
        return -1;
    }

    /* 如果以下代码不被注释, 则例程会用TCP而不是TLS连接云平台 */
    /*
    {
        memset(&cred, 0, sizeof(aiot_sysdep_network_cred_t));
        cred.option = AIOT_SYSDEP_NETWORK_CRED_NONE;
    }
    */

    /* 配置MQTT服务器地址 */
    aiot_mqtt_setopt(mqtt_handle, AIOT_MQTTOPT_HOST, (void *)mqtt_host);
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
    aiot_mqtt_setopt(mqtt_handle, AIOT_MQTTOPT_RECV_HANDLER, (void *)demo_mqtt_default_recv_handler);
    /* 配置MQTT事件回调函数 */
    aiot_mqtt_setopt(mqtt_handle, AIOT_MQTTOPT_EVENT_HANDLER, (void *)demo_mqtt_event_handler);

    /* 与服务器建立MQTT连接 */
    res = aiot_mqtt_connect(mqtt_handle);
    if (res < STATE_SUCCESS) {
        /* 尝试建立连接失败, 销毁MQTT实例, 回收资源 */
        aiot_mqtt_deinit(&mqtt_handle);
        printf("aiot_mqtt_connect failed: -0x%04X\n\r\n", -res);
        printf("please check variables like mqtt_host, produt_key, device_name, device_secret in demo\r\n");
        return -1;
    }

    /* 创建一个单独的线程, 专用于执行aiot_mqtt_process, 它会自动发送心跳保活, 以及重发QoS1的未应答报文 */
    g_mqtt_process_thread_running = 1;
    res = pthread_create(&g_mqtt_process_thread, NULL, demo_mqtt_process_thread, mqtt_handle);
    if (res < 0) {
        printf("pthread_create demo_mqtt_process_thread failed: %d\n", res);
        aiot_mqtt_deinit(&mqtt_handle);
        return -1;
    }

    /* 创建一个单独的线程用于执行aiot_mqtt_recv, 它会循环收取服务器下发的MQTT消息, 并在断线时自动重连 */
    g_mqtt_recv_thread_running = 1;
    res = pthread_create(&g_mqtt_recv_thread, NULL, demo_mqtt_recv_thread, mqtt_handle);
    if (res < 0) {
        printf("pthread_create demo_mqtt_recv_thread failed: %d\n", res);
        g_mqtt_process_thread_running = 0;
        pthread_join(g_mqtt_process_thread, NULL);
        aiot_mqtt_deinit(&mqtt_handle);
        return -1;
    }

    *handle = mqtt_handle;

    return 0;
}

int32_t demo_mqtt_stop(void **handle)
{
    int32_t res = STATE_SUCCESS;
    void *mqtt_handle = NULL;

    mqtt_handle = *handle;

    g_mqtt_process_thread_running = 0;
    g_mqtt_recv_thread_running = 0;
    pthread_join(g_mqtt_process_thread, NULL);
    pthread_join(g_mqtt_recv_thread, NULL);

    /* 断开MQTT连接 */
    res = aiot_mqtt_disconnect(mqtt_handle);
    if (res < STATE_SUCCESS) {
        aiot_mqtt_deinit(&mqtt_handle);
        printf("aiot_mqtt_disconnect failed: -0x%04X\n", -res);
        return -1;
    }

    /* 销毁MQTT实例 */
    res = aiot_mqtt_deinit(&mqtt_handle);
    if (res < STATE_SUCCESS) {
        printf("aiot_mqtt_deinit failed: -0x%04X\n", -res);
        return -1;
    }

    return 0;
}

/* 事件处理回调,  */
void demo_devinfo_event_handler(void *handle, const aiot_devinfo_event_t *event, void *userdata)
{
    switch (event->type) {
        case AIOT_DEVINFOEVT_INVALID_DEVINFO: {
            printf("AIOT_DEVINFOEVT_INVALID_DEVINFO\n");
        }
        break;
        case AIOT_DEVINFOEVT_INVALID_RESPONSE: {
            printf("AIOT_DEVINFOEVT_INVALID_RESPONSE\n");
        }
        break;
        case AIOT_DEVINFOEVT_INVALID_RESPONSE_FORMAT: {
            printf("AIOT_DEVINFOEVT_INVALID_RESPONSE_FORMAT\n");
        }
        break;
        default: {

        }
    }
}

/* TODO: 数据处理回调, 当SDK从网络上收到devinfo消息时被调用 */
void demo_devinfo_recv_handler(void *handle, const aiot_devinfo_recv_t *packet, void *userdata)
{
    switch (packet->type) {
        /* 这是云端对更新和删除devinfo消息的应答报文 */
        case AIOT_DEVINFORECV_GENERIC_REPLY: {
            printf("pk: %s, dn: %s, code: %d, msg id: %d, data: %.*s, message: %.*s\n", packet->product_key, packet->device_name,
                   packet->data.generic_reply.code, packet->data.generic_reply.msg_id, packet->data.generic_reply.data_len,
                   packet->data.generic_reply.data, packet->data.generic_reply.message_len, packet->data.generic_reply.message);
        }
        break;
        /* 这是云端对查询devinfo消息的应答报文 */
        case AIOT_DEVINFORECV_GET_REPLY: {
            printf("pk: %s, dn: %s, code: %d, msg id: %d, data: %.*s, message: %.*s\n", packet->product_key, packet->device_name,
                   packet->data.get_reply.code, packet->data.get_reply.msg_id, packet->data.get_reply.data_len,
                   packet->data.get_reply.data, packet->data.get_reply.message_len, packet->data.get_reply.message);
        }
        break;
        default: {

        }
    }
}

int main(int argc, char *argv[])
{
    int32_t     res = STATE_SUCCESS;
    void       *mqtt_handle = NULL, *devinfo_handle = NULL;

    /* 建立MQTT连接, 并开启保活线程和接收线程 */
    res = demo_mqtt_start(&mqtt_handle, product_key, device_name, device_secret);
    if (res < 0) {
        printf("demo_mqtt_start failed\n");
        return -1;
    }

    /* 创建1个devinfo客户端实例并内部初始化默认参数 */
    devinfo_handle = aiot_devinfo_init();
    if (devinfo_handle == NULL) {
        demo_mqtt_stop(&mqtt_handle);
        printf("aiot_devinfo_init failed\n");
        return -1;
    }

    /* 配置devinfo会话, 把它和MQTT会话的句柄关联起来 */
    res = aiot_devinfo_setopt(devinfo_handle, AIOT_DEVINFOOPT_MQTT_HANDLE, mqtt_handle);
    if (res < STATE_SUCCESS) {
        printf("aiot_devinfo_setopt AIOT_DEVINFOOPT_MQTT_HANDLE failed, res: -0x%04X\n", -res);
        aiot_devinfo_deinit(&devinfo_handle);
        demo_mqtt_stop(&mqtt_handle);
        return -1;
    }

    /* TODO: DEVINFO消息回应从云端到达设备时, 会进入此处设置的回调函数 */
    res = aiot_devinfo_setopt(devinfo_handle, AIOT_DEVINFOOPT_RECV_HANDLER, (void *)demo_devinfo_recv_handler);
    if (res < STATE_SUCCESS) {
        printf("aiot_devinfo_setopt AIOT_DEVINFOOPT_RECV_HANDLER failed, res: -0x%04X\n", -res);
        aiot_devinfo_deinit(&devinfo_handle);
        demo_mqtt_stop(&mqtt_handle);
        return -1;
    }

    res = aiot_devinfo_setopt(devinfo_handle, AIOT_DEVINFOOPT_EVENT_HANDLER, (void *)demo_devinfo_event_handler);
    if (res < STATE_SUCCESS) {
        printf("aiot_devinfo_setopt AIOT_DEVINFOOPT_EVENT_HANDLER failed, res: -0x%04X\n", -res);
        aiot_devinfo_deinit(&devinfo_handle);
        demo_mqtt_stop(&mqtt_handle);
        return -1;
    }

    /* 示例: 发送get查询请求给云平台,查询该设备标签对应的值,当前支持一次最多查询10个标签 */
    /* {
        aiot_devinfo_msg_t devinfo_get;
        char *get = "{\"attrKeys\": [ \"testKey1\", \"testKey2\" ] }";

        memset(&devinfo_get, 0, sizeof(aiot_devinfo_msg_t));
        devinfo_get.product_key = product_key;
        devinfo_get.device_name = device_name;
        devinfo_get.type = AIOT_DEVINFO_MSG_GET;
        devinfo_get.data.get.params = get;

        res = aiot_devinfo_send(devinfo_handle, &devinfo_get);
        if (res < STATE_SUCCESS) {
            aiot_devinfo_deinit(&devinfo_handle);
            demo_mqtt_stop(&mqtt_handle);
            return -1;
        }
        printf("aiot_devinfo_send get msg id: %d\n", res);
    } */

    /* 示例: 发送delete删除请求给云平台 */
    /* TODO: 替换示例JSON中的 testKey 部分, 效果就会变成删除其他Key标识的设备标签 */
    /* {
        aiot_devinfo_msg_t devinfo_delete;
        char *delete = "[{\"attrKey\":\"testKey\"}]";

        memset(&devinfo_delete, 0, sizeof(aiot_devinfo_msg_t));
        devinfo_delete.product_key = product_key;
        devinfo_delete.device_name = device_name;
        devinfo_delete.type = AIOT_DEVINFO_MSG_DELETE;
        devinfo_delete.data.delete.params = delete;

        res = aiot_devinfo_send(devinfo_handle, &devinfo_delete);
        if (res < STATE_SUCCESS) {
            aiot_devinfo_deinit(&devinfo_handle);
            demo_mqtt_stop(&mqtt_handle);
            return -1;
        }
        printf("aiot_devinfo_send delete msg id: %d\n", res);
    } */

    /* 示例: 发送update请求给云平台 */
    /* TODO: 替换示例JSON中的 testKey 部分, 效果就会变成更新其他Key标识的设备标签 */
    /* TODO: 替换示例JSON中的 testValue 部分, 效果就会变成更新其他Value到设备标签 */
    /* {
        aiot_devinfo_msg_t devinfo_update;
        char *update = "[{\"attrKey\":\"testKey\",\"attrValue\":\"testValue\"}]";

        memset(&devinfo_update, 0, sizeof(aiot_devinfo_msg_t));
        devinfo_update.product_key = product_key;
        devinfo_update.device_name = device_name;
        devinfo_update.type = AIOT_DEVINFO_MSG_UPDATE;
        devinfo_update.data.update.params = update;

        res = aiot_devinfo_send(devinfo_handle, &devinfo_update);
        if (res < STATE_SUCCESS) {
            aiot_devinfo_deinit(&devinfo_handle);
            demo_mqtt_stop(&mqtt_handle);
            return -1;
        }
        printf("aiot_devinfo_send update msg id: %d\n", res);
    } */

    /* 主线程进入休眠, 等云平台的DEVINFO回应到达时, 接收线程会调用 demo_devinfo_recv_handler() */
    while (1) {
        sleep(1);
    }

    /* 销毁DEVINFO实例, 一般不会运行到这里 */
    res = aiot_devinfo_deinit(&devinfo_handle);
    if (res < STATE_SUCCESS) {
        demo_mqtt_stop(&mqtt_handle);
        printf("aiot_devinfo_deinit failed: -0x%04X\n", -res);
        return -1;
    }

    /* 销毁MQTT实例, 退出线程, 一般不会运行到这里 */
    res = demo_mqtt_stop(&mqtt_handle);
    if (res < 0) {
        printf("demo_start_stop failed\n");
        return -1;
    }

    return 0;
}

