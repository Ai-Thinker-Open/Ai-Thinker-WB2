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

/* TODO: 替换为自己设备的三元组 */
char *product_key       = "${YourProductKey}";
char *device_name       = "${YourDeviceName}";
char *product_secret    = "${YourProductSecret}";
char  *host             = "${YourInstanceId}.coap.iothub.aliyuncs.com";
uint16_t port = 5684;

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
        /**/
        printf("rx code: 0x%x, msg_id: %d \r\n", packet->data.rsp_code, packet->data.msg_id);
        if (0 != packet->data.payload_len) {
            printf("response: %.*s\r\n", packet->data.payload_len, (char *)packet->data.payload);
        }
    }
    break;
    default:
        break;
    }
}

int main(int argc, char *argv[])
{
    int32_t res = 0;
    void *coap_handle;
    aiot_sysdep_network_cred_t cred;
    char result_secret[128];

    /* 创建SDK的安全凭据, 用于建立DTLS连接 */
    memset(&cred, 0, sizeof(aiot_sysdep_network_cred_t));
    cred.option = AIOT_SYSDEP_NETWORK_CRED_SVRCERT_CA;
    cred.max_tls_fragment = 512;
    cred.sni_enabled = 1;                               /* TLS建连时, 支持Server Name Indicator */
    cred.x509_server_cert = ali_ca_cert;                 /* 用来验证MQTT服务端的RSA根证书 */
    cred.x509_server_cert_len = strlen(ali_ca_cert);     /* 用来验证MQTT服务端的RSA根证书长度 */

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
    /* 配置网络连接的安全凭据, 上面已经创建好了 */
    aiot_coap_setopt(coap_handle, AIOT_COAPOPT_CRED, (void *)(&cred));
    /* 配置COAP默认消息接收回调函数 */
    aiot_coap_setopt(coap_handle, AIOT_COAPOPT_RECV_HANDLER, demo_coap_recv_handler);
    /* 配置COAP事件回调函数 */
    aiot_coap_setopt(coap_handle, AIOT_COAPOPT_EVENT_HANDLER, demo_coap_event_handler);

    /* 动态注册 */
    memset(result_secret, 0, sizeof(result_secret));
    res = aiot_coap_dynreg(coap_handle, product_secret, result_secret, 128);
    if (res < 0) {
        printf("dynmic register error,: -0x%04X\n", -res);
        aiot_coap_deinit(&coap_handle);
        return -1;
    }
    printf("dynmic register success! \r\n");

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

