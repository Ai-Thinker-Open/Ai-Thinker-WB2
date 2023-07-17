/*
 * 这个例程适用于`Linux`这类支持pthread的POSIX设备, 它演示了使用MQTT通道进行单个文件的上传功能
 * 设定单个文件的长度为1M，使用MQTT通过分片上传每次上传1024Bytes，演示的demo没有上传CRC64的参数云端将不做校验
 * 需要用户关注或修改的部分, 已经用 TODO 在注释中标明
 *
 */
#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <pthread.h>
#include <stdlib.h>
#include <assert.h>

#include "aiot_state_api.h"
#include "aiot_sysdep_api.h"
#include "aiot_mqtt_api.h"

#include "aiot_mqtt_upload_api.h"
#include "upload_crc64.h"

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

/* 测试文件 */
#define MQTT_UPLOAD_SINGLE_FILE_SIZE       (1 * 1024)
#define MQTT_UPLOAD_SINGLE_FILE_NAME       ("mqttuploadfile.txt")
uint8_t g_upload_single_file_buf[MQTT_UPLOAD_SINGLE_FILE_SIZE] = {0};
uint8_t g_upload_file_flag = 0;
pthread_t g_fileupload_thread;
/* 位于portfiles/aiot_port文件夹下的系统适配函数集合 */
extern aiot_sysdep_portfile_t g_aiot_sysdep_portfile;

/* 位于external/ali_ca_cert.c中的服务器证书 */
extern const char *ali_ca_cert;

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
        printf("AIOT_MQTTEVT_CONNECT\r\n");
        /* TODO: 处理SDK建连成功, 不可以在这里调用耗时较长的阻塞函数 */
    }
    break;

    /* SDK因为网络状况被动断连后, 自动发起重连已成功 */
    case AIOT_MQTTEVT_RECONNECT: {
        printf("AIOT_MQTTEVT_RECONNECT\r\n");
        /* TODO: 处理SDK重连成功, 不可以在这里调用耗时较长的阻塞函数 */
    }
    break;

    /* SDK因为网络的状况而被动断开了连接, network是底层读写失败, heartbeat是没有按预期得到服务端心跳应答 */
    case AIOT_MQTTEVT_DISCONNECT: {
        char *cause = (event->data.disconnect == AIOT_MQTTDISCONNEVT_NETWORK_DISCONNECT) ? ("network disconnect") :
                      ("heartbeat disconnect");
        printf("AIOT_MQTTEVT_DISCONNECT: %s\r\n", cause);
        /* TODO: 处理SDK被动断连, 不可以在这里调用耗时较长的阻塞函数 */
    }
    break;
    default: {

    }
    }
}

/* MQTT默认消息处理回调, 当SDK从服务器收到MQTT消息时, 且无对应用户回调处理时被调用 */
void demo_mqtt_default_recv_handler(void *handle, const aiot_mqtt_recv_t *const packet, void *userdata)
{
    switch (packet->type) {
        case AIOT_MQTTRECV_HEARTBEAT_RESPONSE: {
            printf("heartbeat response\r\n");
            /* TODO: 处理服务器对心跳的回应, 一般不处理 */
        }
        break;
        case AIOT_MQTTRECV_SUB_ACK: {
            printf("suback, res: -0x%04X, packet id: %d, max qos: %d\r\n",
                -packet->data.sub_ack.res, packet->data.sub_ack.packet_id, packet->data.sub_ack.max_qos);
            /* TODO: 处理服务器对订阅请求的回应, 一般不处理 */
        }
        break;
        case AIOT_MQTTRECV_PUB: {
            printf("pub, qos: %d, topic: %.*s\r\n", packet->data.pub.qos, packet->data.pub.topic_len, packet->data.pub.topic);
            printf("pub, payload: %.*s\r\n", packet->data.pub.payload_len, packet->data.pub.payload);
            /* TODO: 处理服务器下发的业务报文 */
        }
        break;
        case AIOT_MQTTRECV_PUB_ACK: {
            printf("puback, packet id: %d\r\n", packet->data.pub_ack.packet_id);
            /* TODO: 处理服务器对QoS1上报消息的回应, 一般不处理 */
        }
        break;
        default: {

        }
    }
}

/* 文件上传的回调处理函数，用于读取本地文件 */
int32_t demo_read_data_handler(const aiot_mqtt_upload_recv_t *packet, uint8_t *data, uint32_t size, void *userdata) {
    int32_t read_len = 0;
    static uint32_t offset = 0;

    if (packet == NULL) {
        return 0;
    }

    if (packet->desc.code == UPLOAD_FILE_OK) {
        if (data != NULL && size != 0) {
            if (offset < sizeof(g_upload_single_file_buf)) {
                memcpy(data, g_upload_single_file_buf + offset, size);
                offset += size;
                read_len = size;
            }
        } 
    } else {
        printf("Error code:%d, message:%s\r\n", packet->desc.code, packet->desc.message);
    }

    return read_len;
}

void *demo_mqtt_fileupload_thread(void *args)
{
    int32_t res = STATE_SUCCESS;
    void *up_handle = args;
    uint32_t rsp_timeout = 10000;
    aiot_mqtt_upload_setopt(up_handle, AIOT_MQTT_UPLOADOPT_RSP_TIMEOUT_MS, &rsp_timeout);
    uint32_t rety_count = 5;
    aiot_mqtt_upload_setopt(up_handle, AIOT_MQTT_UPLOADOPT_RETRY_COUNT, &rety_count);
    uint32_t block_size = 256;
    aiot_mqtt_upload_setopt(up_handle, AIOT_MQTT_UPLOADOPT_DEFAULLT_BLOCK_SIZE, &block_size);

    
    /* 配置MQTT需要上传的文件信息，未知文件大小，文件长度设置为-1，回调函数read_data_handler设置为NULL，
       使用aiot_mqtt_upload_send_data接口进行数据发送 */
    uint32_t file_size = -1;
    
    aiot_mqtt_upload_file_opt_t file_option = {
        .file_name = MQTT_UPLOAD_SINGLE_FILE_NAME,
        .file_size = file_size,
        .mode = AIOT_MQTT_UPLOAD_FILE_MODE_OVERWRITE,
        .digest = NULL,
        .read_data_handler = NULL,
        .userdata = NULL,
        .extra_params = NULL
    };
    res = aiot_mqtt_upload_setopt(up_handle, AIOT_MQTT_UPLOADOPT_FILE_OPTION, &file_option);
    aiot_mqtt_upload_recv_t recv_packet = {0};
    res = aiot_mqtt_upload_open_stream(up_handle, MQTT_UPLOAD_SINGLE_FILE_NAME, &recv_packet);
    if (res < STATE_SUCCESS) {
        goto exit;
    }
    
    uint32_t data_len = block_size;
    /* 续传模式下recv_packet.desc.file_offset 是云端返回的当前已有文件的偏移量 */
    uint32_t upload_file_len = recv_packet.desc.file_offset;
    uint8_t is_commplete = 0;

    while (1)
    {
        if ((upload_file_len + data_len) < MQTT_UPLOAD_SINGLE_FILE_SIZE) {
            /* 发送分包数据 */
            data_len = block_size;
            is_commplete = 0;
        } else {
            /* 发送最后一包文件内容 */
            data_len = MQTT_UPLOAD_SINGLE_FILE_SIZE - upload_file_len;
            is_commplete = 1;
        }

        res = aiot_mqtt_upload_send_data(up_handle, MQTT_UPLOAD_SINGLE_FILE_NAME, &g_upload_single_file_buf[upload_file_len], data_len, is_commplete);
        if (res == STATE_SUCCESS) {
            upload_file_len += data_len;
            printf("upload_file_len:%d\r\n", upload_file_len);
        } 
        /* 循环检测返回的结果和uploadid */
        aiot_mqtt_upload_result_t result = aiot_mqtt_upload_process(up_handle);
        if (result.status == STATE_MQTT_UPLOAD_FINISHED) {
            /* 上传成功 */
            printf("MQTT Upload file(%s) uploadid(%s) success.\r\n", result.file_name, result.uploadid);
            break;
        } else if (result.status == STATE_MQTT_UPLOAD_FAILED || 
                   result.status == STATE_MQTT_UPLOAD_FAILED_TIMEOUT ||
                   result.status == STATE_MQTT_UPLOAD_CANCEL_FAILED ) {
            /* 上传失败 */
            printf("MQTT Upload file(%s) uploadid(%s) failed,res:-0x%.4X\r\n", result.file_name, result.uploadid, -result.status);
            break;
        } else if (result.status == STATE_MQTT_UPLOAD_CANCEL_SUCCESS) {
            printf("MQTT Upload file(%s) cancel success,res:-0x%.4X\r\n", result.file_name, -result.status);
            break;
        } else if (result.status == STATE_MQTT_UPLOAD_FAILED_WHOLE_CHECK) {
            /* 云端校验文件的完整性失败 */
            printf("MQTT Upload file(%s) whole file md5 failed,res:-0x%.4X\r\n", result.file_name, -result.status);
            break;
        }
    }

exit:
    g_upload_file_flag = 1;
    return NULL;
}

int main(int argc, char *argv[])
{
   int32_t res = STATE_SUCCESS;
    void *mqtt_handle = NULL;
    void *up_handle = NULL;
    uint16_t port = 443; /* 无论设备是否使用TLS连接阿里云平台, 目的端口都是443 */
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
        return -1;
    }

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
    uint32_t timeout_ms = 5000;
    aiot_mqtt_setopt(mqtt_handle, AIOT_MQTTOPT_RECV_TIMEOUT_MS, (void *)&timeout_ms);

    /* 与服务器建立MQTT连接 */
    res = aiot_mqtt_connect(mqtt_handle);
    if (res < STATE_SUCCESS) {
        printf("aiot_mqtt_connect failed: -0x%04X\r\n\r\n", -res);
        /* 尝试建立连接失败, 销毁MQTT实例, 回收资源 */
        goto exit;
    }
    // MQTT Upload File Init.
    up_handle = aiot_mqtt_upload_init();
    aiot_mqtt_upload_setopt(up_handle, AIOT_MQTT_UPLOADOPT_MQTT_HANDLE, mqtt_handle);
    /* 创建文件上传线程 */
    res = pthread_create(&g_fileupload_thread, NULL, demo_mqtt_fileupload_thread, up_handle);
    if (res < 0) {
        aiot_mqtt_upload_deinit(&up_handle);
        goto exit;
    }

    while(1) {
        res = aiot_mqtt_recv(mqtt_handle);
        if (res < STATE_SUCCESS) {
            if (res == STATE_USER_INPUT_EXEC_DISABLED) {
                break;
            }
        }
        res = aiot_mqtt_process(mqtt_handle);
        if (res < STATE_SUCCESS) {
            if (res == STATE_USER_INPUT_EXEC_DISABLED) {
                break;
            }
        }
        if (g_upload_file_flag == 1) {
            break;
        }
    }
    aiot_mqtt_upload_deinit(&up_handle);
exit:
    /* 销毁MQTT实例, 一般不会运行到这里 */
    pthread_join(g_fileupload_thread, NULL);
    res = aiot_mqtt_deinit(&mqtt_handle);
    if (res < STATE_SUCCESS) {
        printf("aiot_mqtt_deinit failed: -0x%04X\r\n", -res);
    }
    return -1;
}