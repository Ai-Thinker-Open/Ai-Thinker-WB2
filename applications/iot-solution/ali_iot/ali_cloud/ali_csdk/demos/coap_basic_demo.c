/*
 * 这个例程演示了用SDK配置COAP参数并成功鉴权, 然后
 *
 * + 如果放开被注释掉的 demo_coap_post_lightswitch() 函数调用, 会向平台上报1条COAP消息
 *
 *  需要用户关注或修改的部分, 已经用 TODO 在注释中标明
 *
 */
#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <pthread.h>

#include "aiot_coap_api.h"
#include "aiot_state_api.h"
#include "aiot_sysdep_api.h"

/* TODO: 替换为自己设备的三元组和接入地址 */
char *product_key       = "${YourProductKey}";
char *device_name       = "${YourDeviceName}";
char *device_secret     = "${YourDeviceSecret}";
char  *host             = "${YourInstanceId}.coap.iothub.aliyuncs.com";
/* DTLS加密端口为5684，应用层对称加密端口为5682 */
uint16_t port = 5682;

/* 位于portfiles/aiot_port文件夹下的系统适配函数集合 */
extern aiot_sysdep_portfile_t g_aiot_sysdep_portfile;
/* 位于external/ali_ca_cert.c中的服务器证书 */
extern const char *ali_ca_cert;

/* TODO: 如果要关闭日志, 就把这个函数实现为空, 如果要减少日志, 可根据code选择不打印
 *
 * 例如: [1577589489.033][LK-0317] coap_basic_demo&a13FN5TplKq
 *
 * 上面这条日志的code就是0317(十六进制), code值的定义见core/aiot_state_api.h
 *
 */

/* 日志回调函数, SDK的日志会从这里输出 */
static int32_t demo_state_logcb(int32_t code, char *message)
{
    printf("%s", message);
    return 0;
}

/* COAP事件回调函数, 当auth token状态发生变化时被触发, 事件定义见component/coap/aiot_coap_api.h */
void demo_coap_event_handler(void *handle, aiot_coap_event_t *event, void *userdata)
{
    switch (event->type) {
    /* 设备收到auth token */
    case AIOT_COAPEVT_AUTH_TOKEN_RECEIVED: {
        printf("event: auth token received\n");
    }
    break;
    case AIOT_COAPEVT_AUTH_TOKEN_EXPIRED: {
        printf("event: auth token expired\n");
        /* TODO: 用户需要重新调用aiot_coap_auth以获取auth token */
    }
    break;
    default:
        break;
    }
}

/* COAP网络报文回调, 当SDK从网络上收到COAP消息时被调用, 报文描述类型见component/coap/aiot_coap_api.h */
void demo_coap_recv_handler(void *handle, const aiot_coap_recv_t *packet, void *userdata)
{
    switch (packet->type) {
    case AIOT_COAPRECV_RESPONSE: {
        /* TODO: 以下代码如果不被注释, SDK收到COAP报文时, 会通过这个用户回调打印COAP报文的code, token 以及payload */
        /*
        printf("rx code: 0x%x, msg_id: %d \r\n", packet->data.rsp_code, packet->data.msg_id);
        if (0 != packet->data.payload_len) {
            printf("response: %.*s\r\n", packet->data.payload_len, (char *)packet->data.payload);
        }
        */
    }
    break;
    default:
        break;
    }
}

/* 用COAP通道上报业务数据给云平台, 例如: 灯已关闭 */
int32_t demo_coap_post_lightswitch(void *handle, const char *product_key, const char *device_name)
{
    int32_t res;
    char demo_request_uri[200] = {0};
    snprintf(demo_request_uri, 200, "%s%s%s%s%s", "/topic/sys/", product_key, "/", device_name,
             "/thing/event/property/post");
    const char *demo_request_payload = "{\"id\":\"1\",\"version\":\"1.0\",\"params\":{\"LightSwitch\":0},\"sys\":{\"ack\":1}}";
    uint32_t req_token = 0;

    /* 定义一个请求 */
    aiot_coap_request_t req = {
        .payload = (uint8_t *)demo_request_payload,
        .payload_len = strlen(demo_request_payload),
        .msg_type = AIOT_COAP_MSG_TYPE_CON,
        /* 上行的数据格式为json */
        .content_format = AIOT_COAP_CT_APP_JSON,
        .msg_token = &req_token
    };

    /* 用COAP通道向云平台上报1条业务数据, 接口是aiot_coap_send() */
    res = aiot_coap_send(handle, demo_request_uri, &req);
    if (res < 0) {
        printf("aiot_coap_send res = -0x%04X\r\n", -res);
        return res;
    }

    res = aiot_coap_recv(handle);
    if (res == 0) {
        /* 成功接收到服务器应答, 且业务应答码为=0, 说明数据上报成功 */
        return 0;
    } else {
        printf("aiot_coap_recv res = -0x%04X\r\n", -res);
        return -1;
    }
}

int main(int argc, char *argv[])
{
    int32_t res = 0;
    void *coap_handle;
    aiot_sysdep_network_cred_t cred;
    uint8_t payload_encryption = 1;
    int32_t msg_id = 0;

    /* 创建SDK的安全凭据, 用于建立TLS连接 */
    memset(&cred, 0, sizeof(aiot_sysdep_network_cred_t));
    /* 如需开启DTLS加密,取消注释，再将port需要修改为5684, 并且设置关闭应用层加密：payload_encryption = 0
    cred.option = AIOT_SYSDEP_NETWORK_CRED_SVRCERT_CA;
    cred.max_tls_fragment = 512;
    cred.sni_enabled = 1;
    cred.x509_server_cert = ali_ca_cert;
    cred.x509_server_cert_len = strlen(ali_ca_cert);
    */

    /* 配置SDK的底层依赖 */
    aiot_sysdep_set_portfile(&g_aiot_sysdep_portfile);
    /* 配置SDK的日志输出 */
    aiot_state_set_logcb(demo_state_logcb);

    /* 创建1个coap客户端实例并内部初始化默认参数 */
    coap_handle = aiot_coap_init();
    if (coap_handle == NULL) {
        printf("aiot_coap_init failed\n");
        return -1;
    }

    /* 配置连接的服务器地址 */
    aiot_coap_setopt(coap_handle, AIOT_COAPOPT_HOST, host);
    /* 配置连接的服务器端口 */
    aiot_coap_setopt(coap_handle, AIOT_COAPOPT_PORT, &port);
    /* 配置设备productKey */
    aiot_coap_setopt(coap_handle, AIOT_COAPOPT_PRODUCT_KEY, (void *)product_key);
    /* 配置设备deviceName */
    aiot_coap_setopt(coap_handle, AIOT_COAPOPT_DEVICE_NAME, (void *)device_name);
    /* 配置设备deviceSecret */
    aiot_coap_setopt(coap_handle, AIOT_COAPOPT_DEVICE_SECRET, (void *)device_secret);
    /* 配置网络连接的安全凭据, 上面已经创建好了 */
    aiot_coap_setopt(coap_handle, AIOT_COAPOPT_CRED, (void *)(&cred));
    /* 配置COAP默认消息接收回调函数 */
    aiot_coap_setopt(coap_handle, AIOT_COAPOPT_RECV_HANDLER, demo_coap_recv_handler);
    /* 配置COAP事件回调函数 */
    aiot_coap_setopt(coap_handle, AIOT_COAPOPT_EVENT_HANDLER, demo_coap_event_handler);
    /* 启动应用层payload加密 */
    aiot_coap_setopt(coap_handle, AIOT_COAPOPT_PAYLOAD_ENCRYPTION, &payload_encryption);

    /* 从服务器获取auth token, 用于后续的收发动作 */
    res = aiot_coap_auth(coap_handle);
    if (res < 0) {
        printf("auth error: -0x%04X\n", -res);
        aiot_coap_deinit(&coap_handle);
        return -1;
    }

    while(1) {
        /* 上报消息示例 */
        demo_coap_post_lightswitch(coap_handle, product_key, device_name);

        /* 主动拉消息示例, 需要用户调用云端pub发布消息，设备才能收到下行消息 */
        msg_id = aiot_coap_request_message(coap_handle, 1);
        printf("coap request msg_id %d\r\n", msg_id);
        aiot_coap_recv(coap_handle);
        sleep(1);
    }

    /* 销毁COAP实例 */
    res = aiot_coap_deinit(&coap_handle);
    if (res < STATE_SUCCESS) {
        printf("aiot_coap_deinit failed: -0x%04X\n", -res);
        return -1;
    }
    printf("program exit as normal return\r\n");
    printf("\r\n");

    return 0;
}

