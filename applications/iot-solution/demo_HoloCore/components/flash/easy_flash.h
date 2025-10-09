/**
 * @file easy_flash.h
 * @author your name (you@domain.com)
 * @brief
 * @version 0.1
 * @date 2024-05-26
 *
 * @copyright Copyright (c) 2024
 *
 */
#ifndef EASY_FLASH_H
#define EASY_FLASH_H
#include <stdbool.h>
typedef enum
{
    FLASH_WIFI_SSID,
    FLASH_WIFI_PASSWORD,
    FLASH_WIFI_PMK,
    FLASH_WIFI_BAND,
    FLASH_WIFI_CHAN_ID,
    FLASH_MQTT_HOST,
    FLASH_MQTT_PORT,
    FLASH_MQTT_CLIENT_ID,
    FLASH_MQTT_USERNAME,
    FLASH_MQTT_PASSWORD,
    FLASH_HA_DEV_NAME,
    FLASH_HA_MANUFACTURER,
    FLASH_HA_AC_TYPE,
    FLASH_HA_AC_GCODE,
    FLASH_HA_RESET_NUM,
    FLASH_BILIBILI_USER_ID,
    FLASH_BILIBILI_FOLLOWER_COUNT,
    FLASH_JLC_PUID,
    FLASH_JLC_VIEWS_COUNT,
    FLASH_DEVICE_LOG_ENABLE,
    FLASH_COLOR_MODE_TYPE,
    FLASH_DISPLAY_MSG_TYPE,
} flash_key_t;

bool flash_save_wifi_info(void *value);
int flash_get_wifi_info(void *value);
bool ef_del_key(flash_key_t key);
bool flash_save_new_temp(float temperature);
float flash_get_temperature(void);

int flash_save_reset_count(int count);
int flash_get_reset_count(void);

int flash_save_follower_count(int count);
int flash_get_follower_count(void);
int flash_save_bilibili_uid(char *uid);
int flash_get_bilibili_uid(char *uid);
int flash_seve_jlc_puid(char *puid);
int flash_get_jlc_puid(char *puid);
int flash_save_views_count(int count);
int flash_get_views_count(void);
int flash_set_blog_enable(bool enable);
int flash_get_blog_enable(void);
int flash_save_color_mode(unsigned char mode);
unsigned char flash_get_color_mode(void);
int flash_save_dispaly_msg(unsigned char msg_type);
unsigned char flash_get_dispaly_msg(void);
#endif