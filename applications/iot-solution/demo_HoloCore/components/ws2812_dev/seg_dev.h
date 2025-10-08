/**
 * @file seg_dev.h
 * @author Seahi-Mo (seahi-mo@foxmail.com)
 * @brief
 * @version 0.1
 * @date 2025-07-23
 *
 * @copyright Ai-Thinker co.,ltd (c) 2025
 *
 */
#ifndef SEG_DEV_H
#define SEG_DEV_H
#include <stdint.h>
#include "ws2812.h"
#include "stdbool.h"
#define SEG_WIFI_LED_NUNBER 60
#define SEG_FANS_W_LED_NUMBER 59
#define SEG_BAT_LED_NUMBER 61
#define SEG_NMBLE_DOT_LED_NUMBLE 58
typedef enum
{
	SEG_A = 0,
	SEG_B,
	SEG_C,
	SEG_D,
	SEG_E,
	SEG_F,
	SEG_G,
	NUM_SEGMENTS,
} segment_t;

typedef enum
{
	SEG_TEMP_AN_HUIT_TEN = 0,
	SEG_TEMP_AN_HUIT_UNIT,
	SEG_TIMER_HOUR_TEN,
	SEG_TIMER_HOUR_UNIT,
	SEG_TIMER_MINUTE_TEN,
	SEG_TIMER_MINUTE_UNIT,
} seg_index_t;

typedef enum
{
	SEG_LOADING_BLUFI_CONFIG = 0,
	SEG_LOADING_WIFI_CONNECT,
	SEG_LOADING_WIFI_DISCONNECT,
} loading_t;

/**
 * @brief 初始化数码管
 *
 */
void seg_dev_init(void);
/**
 * @brief 显示一个数字
 *
 * @param seg_index  数码管索引
 * @param digit 数字
 * @param color 颜色
 * @param brightness 亮度
 */
void seg_dispaly_number(seg_index_t seg_index, int digit, color_t color, float brightness);
/**
 * @brief 显示时间
 *
 * @param hour 小时
 * @param minute 分钟
 * @param color 颜色
 * @param brightness 亮度
 */
void seg_display_time(int hour, int minute, color_t color, float brightness);
/**
 * @brief 炫彩显示时间
 *
 * @param hour
 * @param minute
 * @param color_mode
 * @param brightness
 */
void seg_display_time_ex_color_mode(int hour, int minute, int color_mode, float brightness);
/**
 * @brief 显示粉丝数
 *
 * @param hour
 * @param minute
 * @param color_mode
 * @param brightness
 */
void seg_display_fans_count_color_mode(int follow_cnt, int color_mode, float brightness);
/**
 * @brief 显示加载状态
 *
 * @param status
 */

void seg_display_loading(loading_t status, unsigned char color_mode);

// void seg_time_dot_blink(bool enable, color_t color, float brightness);
#endif // SEG_DEV_H
