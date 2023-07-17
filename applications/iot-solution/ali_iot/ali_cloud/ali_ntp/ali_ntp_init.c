#include "ali_ntp_init.h"

#include "aiot_state_api.h"
#include "aiot_sysdep_api.h"
#include "aiot_mqtt_api.h"
#include "aiot_ntp_api.h"

static int8_t time_zone = 8;

void *ntp_handle = NULL;

/* 事件处理回调,  */
void aiot_ntp_event_handler(void *handle, const aiot_ntp_event_t *event, void *userdata)
{
    switch (event->type)
    {
    case AIOT_NTPEVT_INVALID_RESPONSE:
    {
        printf("AIOT_NTPEVT_INVALID_RESPONSE\n");
    }
    break;
    case AIOT_NTPEVT_INVALID_TIME_FORMAT:
    {
        printf("AIOT_NTPEVT_INVALID_TIME_FORMAT\n");
    }
    break;
    default:
        break;
    }
}

/* TODO: 数据处理回调, 当SDK从网络上收到ntp消息时被调用 */
void aiot_ntp_recv_handler(void *handle, const aiot_ntp_recv_t *packet, void *userdata)
{
    switch (packet->type)
    {
    /* TODO: 结构体 aiot_ntp_recv_t{} 中包含当前时区下, 年月日时分秒的数值, 可在这里把它们解析储存起来 */
    case AIOT_NTPRECV_LOCAL_TIME:
    {
        printf("local time: %llu, %02d/%02d/%02d-%02d:%02d:%02d:%d\n",
               (long long unsigned int)packet->data.local_time.timestamp,
               packet->data.local_time.year,
               packet->data.local_time.mon, packet->data.local_time.day, packet->data.local_time.hour, packet->data.local_time.min,
               packet->data.local_time.sec, packet->data.local_time.msec);

        time_t timestamp = packet->data.local_time.timestamp; // 例如：2022-03-21 12:00:00的时间戳
        struct tm *local_time = localtime(&timestamp);        // 将时间戳转换为本地时间

        char weekday[20];
        strftime(weekday, 20, "%A", local_time); // 将本地时间转换为星期

        printf("%s\n", weekday); // 输出：Monday（星期一）
    }
    break;

    default:
        break;
    }
}

void aiot_ntp_thread(void *pvParameters)
{
    int32_t res = STATE_SUCCESS;
    while (1)
    {
        /* 发送NTP查询请求给云平台 */
        res = aiot_ntp_send_request(pvParameters);
        if (res < STATE_SUCCESS)
        {
            printf("ntp request failed\r\n");
        }
        vTaskDelay(1000 * 60 * 60 * 2);
    }
}

int32_t ali_ntp_init(void *handle)
{
    int32_t res = STATE_SUCCESS;
    /* 创建1个ntp客户端实例并内部初始化默认参数 */
    ntp_handle = aiot_ntp_init();
    if (ntp_handle == NULL)
    {
        // aiot_mqtt_stop(&mqtt_handle);
        printf("aiot_ntp_init failed\n");
        return -1;
    }
    res = aiot_ntp_setopt(ntp_handle, AIOT_NTPOPT_MQTT_HANDLE, handle);
    if (res < STATE_SUCCESS)
    {
        printf("aiot_ntp_setopt AIOT_NTPOPT_MQTT_HANDLE failed, res: -0x%04X\n", -res);
        aiot_ntp_deinit(&ntp_handle);
        // aiot_mqtt_stop(&mqtt_handle);
        return -1;
    }

    res = aiot_ntp_setopt(ntp_handle, AIOT_NTPOPT_TIME_ZONE, (int8_t *)&time_zone);
    if (res < STATE_SUCCESS)
    {
        printf("aiot_ntp_setopt AIOT_NTPOPT_TIME_ZONE failed, res: -0x%04X\n", -res);
        aiot_ntp_deinit(&ntp_handle);
        // aiot_mqtt_stop(&mqtt_handle);
        return -1;
    }

    /* TODO: NTP消息回应从云端到达设备时, 会进入此处设置的回调函数 */
    res = aiot_ntp_setopt(ntp_handle, AIOT_NTPOPT_RECV_HANDLER, (void *)aiot_ntp_recv_handler);
    if (res < STATE_SUCCESS)
    {
        printf("aiot_ntp_setopt AIOT_NTPOPT_RECV_HANDLER failed, res: -0x%04X\n", -res);
        aiot_ntp_deinit(&ntp_handle);
        // aiot_mqtt_stop(&mqtt_handle);
        return -1;
    }

    res = aiot_ntp_setopt(ntp_handle, AIOT_NTPOPT_EVENT_HANDLER, (void *)aiot_ntp_event_handler);
    if (res < STATE_SUCCESS)
    {
        printf("aiot_ntp_setopt AIOT_NTPOPT_EVENT_HANDLER failed, res: -0x%04X\n", -res);
        aiot_ntp_deinit(&ntp_handle);
        // aiot_mqtt_stop(&mqtt_handle);
        return -1;
    }

    res = xTaskCreate(aiot_ntp_thread, (char *)"aiot_ntp_thread", 512, ntp_handle, 4, NULL);
    if (res != pdPASS)
    {
        printf("xTaskCreate aiot_ntp_thread failed: %d\n", res);
        return -1;
    }
    return 0;
}