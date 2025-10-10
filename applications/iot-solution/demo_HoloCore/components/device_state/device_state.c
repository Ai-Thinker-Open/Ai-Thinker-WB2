/**
 * @file device_state.c
 * @author Seahi (seahi-mo@foxmail.com)
 * @brief
 * @version 0.1
 * @date 2024-05-20
 *
 * @copyright Copyright (c) 2024
 *
 */
#include <FreeRTOS.h>
#include <task.h>
#include <queue.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <blog.h>
#include <device_state.h>
#include <bl_gpio.h>
#include "seg_dev.h"
#include "timers.h"
#include "sntp.h"

#include <utils_time.h>
#include "bilibili_follower.h"
#include "jlc_project_view.h"
extern TaskHandle_t https_get_fans_task_handle;
extern TaskHandle_t https_get_project_view_task_handle;
// 设备消息队列
static QueueHandle_t device_queue_handle;
// 设备定时器标识符
static TimerHandle_t device_state_timer_handle = NULL;
// SNTP 网络授时定时器标识符
static TimerHandle_t SNTP_gernerate_timer_handle = NULL;
static uint8_t timer_hour = 0;
static uint8_t timer_min = 0;
// 粉丝数获取定时器标识符
static TimerHandle_t fans_count_timer_handle = NULL;

extern bool is_https_running;
// 蓝牙配网状态
static bool is_blufi_config = false;
// 数码管显示时间状态
static bool seg_is_timer_running = true;
// B站信息变量
bool is_flash_bilibili_uid = false;
char flash_bilibili_uid[32] = {0};
int fans_count = 0;
// 嘉立创 工程浏览量
bool is_flash_jlc_pro_uid = false;
char project_uid[64] = {0};
int project_view_count = 0;

// 颜色模式
static unsigned char color_mode = 0;
// 显示的内容,默认显示工程浏览量
unsigned char display_msg = 0;
/**
 * @brief 从 flash 读取设备信息
 *
 */
static void device_read_msg_from_flash(void)
{
    // 读取 B站 uid
    memset(flash_bilibili_uid, 0, 32);
    flash_get_bilibili_uid(flash_bilibili_uid);
    if (strlen(flash_bilibili_uid) != 0)
    {
        is_flash_bilibili_uid = true;
    }
    else
    {
        is_flash_bilibili_uid = false;
    }
    memset(project_uid, 0, 32);
    flash_get_jlc_puid(project_uid);
    if (strlen(project_uid) != 0)
    {
        is_flash_jlc_pro_uid = true;
    }
    else
    {
        is_flash_jlc_pro_uid = false;
    }

    // 读取B站粉丝数
    fans_count = flash_get_follower_count();
    // 读取嘉立创工程浏览量
    project_view_count = flash_get_views_count();
    //  读取颜色模式
    color_mode = flash_get_color_mode();

    flash_save_color_mode(color_mode);
    // 读取显示的内容
    display_msg = flash_get_dispaly_msg();
    blog_info("bilibili uid=%s, bilibili fans numble=%d, color_mode=%d, display_msg=%d", flash_bilibili_uid, fans_count, color_mode, display_msg);
}

static void device_state_task(void *arg)
{
    dev_msg_t *dev_msg = pvPortMalloc(sizeof(dev_msg_t));
    int ac_type = 0;
    BaseType_t type = pdFALSE;
    int i = 0;

    while (1)
    {
        if (xQueueReceive(device_queue_handle, dev_msg, pdMS_TO_TICKS(1000) == pdTRUE))
        {
            switch (dev_msg->device_state)
            {
            case DEVICE_SATE_SYSYTEM_INIT:
            {
                blog_info("<<<<<<<<<<<<<<<  DEVICE_SATE_SYSYTEM_INIT");
                seg_display_loading(SEG_LOADING_BLUFI_CONFIG, color_mode);
            }
            break;
            case DEVICE_STATE_WIFI_SCAN_FINISH:
            {
                blog_info("<<<<<<<<<<<<<<<  DEVICE_STATE_WIFI_SCAN_FINISH");
                // 1:读取WiFi信息
                flash_get_wifi_info(&dev_msg->wifi_info);
                if (strlen(dev_msg->wifi_info.ssid) != 0 && is_blufi_config == false)
                {
                    blog_info("get wifi info ssid=%s password=%s", dev_msg->wifi_info.ssid, dev_msg->wifi_info.password);
                    // 在扫描的设备当中查找是否有该ssid

                    for (size_t i = WIFI_MGMR_SCAN_ITEMS_MAX - 1; i > 0; i--)
                    {
                        // 识别到该设备之后，发起连接
                        if (!memcmp(wifiMgmr.scan_items[i].ssid, dev_msg->wifi_info.ssid, strlen(dev_msg->wifi_info.ssid)))
                        {
                            blog_info("scan \"%s\" is OK", dev_msg->wifi_info.ssid);
                            dev_msg->wifi_info.band = 0;
                            dev_msg->wifi_info.chan_id = 4212 + wifiMgmr.scan_items[i].channel * 5;
                            quick_connect_wifi(&dev_msg->wifi_info);

                            // 退出循环
                            goto __EXIT;
                        }
                    }
                    blog_warn("no wifi info")
                }
            }
            __EXIT:
                break;
            case DEVICE_STATE_WIFI_CONNECTED:
            {
                blog_info("<<<<<<<<<<<<<<<  DEVICE_STATE_WIFI_CONNECTED");
                // 读取连的AP信息
                blog_info("ssid =%s,password=%s addr=%s", dev_msg->wifi_info.ssid, dev_msg->wifi_info.password, dev_msg->wifi_info.ipv4_addr);
                seg_display_loading(SEG_LOADING_WIFI_CONNECT, color_mode);
                // 保存连接信息
                blog_info("mark>>>>>>>>>>>>>>>>>>>>");
                flash_save_reset_count(0);
                // 如果连接信息保存的不一致，则重新保存
                wifi_info_t flash_wifi_info = {0};
                flash_get_wifi_info(&flash_wifi_info);
                if (memcmp(flash_wifi_info.ssid, dev_msg->wifi_info.ssid, strlen(dev_msg->wifi_info.ssid)) ||
                    memcmp(flash_wifi_info.password, dev_msg->wifi_info.password, strlen(dev_msg->wifi_info.password)) ||
                    (flash_wifi_info.chan_id != dev_msg->wifi_info.chan_id))
                {
                    // 重新保存新的WiFi信息
                    flash_save_wifi_info(&dev_msg->wifi_info);
                }
                xTimerStart(SNTP_gernerate_timer_handle, pdMS_TO_TICKS(100));
                xTimerStart(fans_count_timer_handle, pdMS_TO_TICKS(100));
                vTaskDelay(pdMS_TO_TICKS(100));
            }
            break;

            case DEVICE_STATE_BLUFI_CONFIG:
                is_blufi_config = true;
                seg_display_loading(SEG_LOADING_BLUFI_CONFIG, color_mode);
                blufi_config_start();
                break;

            case DEVIDE_STATE_CFG_STATE_SHORT_PRESS:
            {
                blog_info("<<<<<<<<<<<<<<<  DEVIDE_STATE_CFG_STATE_SHORT_PRESS");
                // 切换显示
                seg_is_timer_running = !seg_is_timer_running;
                blog_warn("seg_is_timer_running :%s", seg_is_timer_running ? "true" : "false");
                int flash_fans_count = 0;
                if (seg_is_timer_running == true)
                {
                    seg_display_time_ex_color_mode((int)timer_hour == 0 ? 8 : timer_hour, (int)timer_min == 0 ? 0 : timer_min, (int)color_mode, 0.05);
                }
                else
                {
                    seg_display_fans_count_color_mode(display_msg ? fans_count : project_view_count, color_mode, 0.05);

                    if (is_flash_bilibili_uid && display_msg)
                    {
                        bilibili_get_fans_count(flash_bilibili_uid);
                    }
                    else if (is_flash_jlc_pro_uid && !display_msg)
                    {
                        jlc_get_views_count(project_uid);
                    }
                }
            }
            break;

            case DEVICE_STATE_CFG_STATE_LONG_PRESS:
                blog_info("<<<<<<<<<<<<<<<  DEVICE_STATE_CFG_STATE_LONG_PRESS");
                // 进入配网模式
                blufi_config_start();
                break;
            case DEVICE_STATE_CFG_STATE_DOUBLE_CLICK:
            {

                blog_info("<<<<<<<<<<<<<<<  DEVICE_STATE_CFG_STATE_DOUBLE_CLICK");
                // is_https_running = false;
                color_mode++;
                if (color_mode >= 4)
                {
                    color_mode = 0;
                }

                blog_info("color_mode:%d", color_mode);
                flash_save_color_mode(color_mode);
                seg_set_wifi_dot_color(color_mode, 0.05);
                if (seg_is_timer_running == true)
                {
                    seg_display_time_ex_color_mode((int)timer_hour == 0 ? 8 : timer_hour, (int)timer_min == 0 ? 0 : timer_min, (int)color_mode, 0.05);
                }
                else
                {
                    seg_display_fans_count_color_mode(display_msg ? fans_count : project_view_count, color_mode, 0.05);
                }
            }
            break;
            case DEVICE_STATE_HTTP_REQUEST:
                blog_info("<<<<<<<<<<<<<<<  DEVICE_STATE_HTTP_REQUEST");
                // seg_display_fans_count_color_mode(fans_count, (int)color_mode, 0.05);
                blog_info("display_msg:%d,is_flash_bilibili_uid:%d,is_flash_jlc_pro_uid:%d", display_msg, is_flash_bilibili_uid, is_flash_jlc_pro_uid);
                if (is_flash_bilibili_uid && display_msg)
                {
                    bilibili_get_fans_count(flash_bilibili_uid);
                }
                else if (is_flash_jlc_pro_uid && display_msg == 0)
                {
                    jlc_get_views_count(project_uid);
                }

                break;
            case DEVICE_STATE_HTTP_RESPONSE:
            {
                blog_info("<<<<<<<<<<<<<<<  DEVICE_STATE_HTTP_RESPONSE");
                if (display_msg == HTTP_REQUEST_TYPE_BILIBILI)
                {

                    int fans_count_flash = flash_get_follower_count();
                    if (fans_count_flash != fans_count)
                    {
                        flash_save_follower_count(fans_count);
                    }
                }
                else
                {

                    int flash_views = flash_get_views_count();
                    if (flash_views != project_view_count)
                    {
                        flash_save_views_count(project_view_count);
                    }
                }
                if (seg_is_timer_running == false)
                    seg_display_fans_count_color_mode(display_msg ? fans_count : project_view_count, color_mode, 0.05);
            }

            break;

            default:
                break;
            }

            memset(dev_msg, 0, sizeof(dev_msg_t));
        }
        i++;
        if (i == 9)
        {
            i = 0;
        }
    }
}
static void device_state_timer_callback(TimerHandle_t xTimer)
{
    int ret = pvTimerGetTimerID(xTimer);

    if (ret == 0)
    {
        flash_save_reset_count(0);
        xTimerDelete(xTimer, pdMS_TO_TICKS(100));
    }
    else if (ret == 1)
    {

        uint32_t seconds = 0, frags = 0;
        utils_time_date_t date;

        sntp_get_time(&seconds, &frags);
        utils_time_date_from_epoch(seconds + 8 * 60 * 60, &date);
        blog_debug("Date & time is: %u-%02u-%02u %02u:%02u:%02u (Day %u of week, Day %u of Year)",
                   date.ntp_year,
                   date.ntp_month,
                   date.ntp_date,
                   date.ntp_hour,
                   date.ntp_minute,
                   date.ntp_second,
                   date.ntp_week_day,
                   date.day_of_year);
        timer_hour = date.ntp_hour;
        timer_min = date.ntp_minute;
        if (seg_is_timer_running == true)
        {
            seg_display_time_ex_color_mode((int)timer_hour == 0 ? 8 : timer_hour, (int)timer_min == 0 ? 0 : timer_min, (int)color_mode, 0.05);
        }
        else
        {
            seg_display_fans_count_color_mode(display_msg ? fans_count : project_view_count, color_mode, 0.05);
        }
    }
    else if (ret == 2)
    {
        if (wifi_device_connect_status())
        {
            dev_msg_t dev_msg = {0};
            dev_msg.device_state = DEVICE_STATE_HTTP_REQUEST;
            device_state_update(true, &dev_msg);
        }
    }
}

void device_state_init(void *arg)
{
    device_queue_handle = xQueueCreate(2, sizeof(dev_msg_t));
    BaseType_t err = xTaskCreate(device_state_task, "device_state_task", DEVICE_QUEUE_HANDLE_SIZE * 4, NULL, 9, NULL);

    wifi_device_init(blufi_wifi_event);
    // blufi_wifi_init();
    if (err == pdPASS)
    {
        blog_info("\"device_state_task\" is create OK");
    }
    else
        blog_error("\"device_state_task\" is create error");

    // 检查是否为配网模式
    int reset_count = flash_get_reset_count();
    blog_info("reset_count =%d", reset_count);

    if (reset_count == -1)
        flash_save_reset_count(0);
    device_read_msg_from_flash();
    dev_msg_t dev_msg = {0};

    device_state_timer_handle = xTimerCreate("device_state_timer", pdMS_TO_TICKS(5000), pdFALSE, (void *)0, device_state_timer_callback);
    SNTP_gernerate_timer_handle = xTimerCreate("SNTP_gernerate_timer", pdMS_TO_TICKS(1000), pdTRUE, (void *)1, device_state_timer_callback);
    fans_count_timer_handle = xTimerCreate("fans_count_timer", pdMS_TO_TICKS(1000 * 60), pdTRUE, (void *)2, device_state_timer_callback);

    xTimerStart(device_state_timer_handle, pdMS_TO_TICKS(100));

    if (reset_count >= 3 || reset_count == -1)
    {
        dev_msg.device_state = DEVICE_STATE_BLUFI_CONFIG;
    }
    else
    {
        dev_msg.device_state = DEVICE_SATE_SYSYTEM_INIT;
        if (reset_count > 10)
        {
            flash_save_reset_count(0);
        }
        else
        {

            flash_save_reset_count(reset_count + 1);
        }
    }
    device_state_update(false, &dev_msg); // WiFi 准备OK,等待连接
}

void device_state_update(int is_iqr, dev_msg_t *dev_msg)
{
    BaseType_t xHigherPriorityTaskWoken = pdFALSE;
    if (is_iqr)
    {
        xQueueSendFromISR(device_queue_handle, dev_msg, &xHigherPriorityTaskWoken);
    }
    else
    {
        xQueueSend(device_queue_handle, dev_msg, portMAX_DELAY);
    }
}
