/**
 * @file device_state.h
 * @author Seahi (seahi-mo@foxmail.com)
 * @brief
 * @version 0.1
 * @date 2024-05-20
 *
 * @copyright Copyright (c) 2024
 *
 */
#ifndef DEVICE_STATE_H
#define DEVICE_STATE_H
#include <stdint.h>
#include "wifi_code.h"
#include "easy_flash.h"
#include <../wifi_mgmr.h>
#include "bl_sys.h"
#include "blufi_config.h"

#define DEVICE_HW_SERSION "V1.0.0"

#define DEVICE_QUEUE_HANDLE_SIZE 1024

typedef enum
{
    DEVICE_STATE_NONE = -1,
    DEVICE_SATE_SYSYTEM_INIT,
    DEVICE_STATE_WIFI_CONNECTED,
    DEVICE_STATE_WIFI_CONNECT_ERROR,
    DEVICE_STATE_WIFI_DISCONNECT,
    DEVICE_STATE_WIFI_SCAN_FINISH,
    DEVICE_STATE_BLUFI_CONFIG,
    DEVICE_STATE_HOMEASSISTANT_CONNECT,
    DEVIDE_STATE_CFG_STATE_SHORT_PRESS,
    DEVICE_STATE_CFG_STATE_LONG_PRESS,
    DEVICE_STATE_CFG_STATE_DOUBLE_CLICK,
    DEVICE_STATE_HTTP_REQUEST,
    DEVICE_STATE_HTTP_RESPONSE,
} device_state_t;

typedef struct device_state_handle
{
    device_state_t device_state;
    wifi_info_t wifi_info;
    int ac_type;
} dev_msg_t;
extern char flash_bilibili_uid[32];
extern int fans_count;
extern char project_uid[64];
extern int project_view_count;
extern unsigned char display_msg;
extern bool is_flash_bilibili_uid;
extern bool is_flash_jlc_pro_uid;
void device_state_init(void *arg);
void device_state_update(int is_iqr, dev_msg_t *dev_msg);
#endif