/**
 * @file seg_dev.c
 * @author Seahi-Mo (seahi-mo@foxmail.com)
 * @brief
 * @version 0.1
 * @date 2025-07-23
 *
 * @copyright Ai-Thinker co.,ltd (c) 2025
 *
 */
#include "seg_dev.h"
#include "blog.h"
#include <stdint.h>
#include "FreeRTOS.h"
#include "task.h"
#include "timers.h"
#include "color_mode.h"
#define ON true
#define OFF false

static TimerHandle_t seg_timer = NULL;
static TimerHandle_t seg_timer_1 = NULL;
static TimerHandle_t seg_timer_dot = NULL;
color_t seg_wifi_dot_color = {0, 0x00, 0xff};
static float seg_timer_dot_brightness = 0.1;
static float direction = 0.05;
extern color_t seg_color_FF00FF_to_0000FF[4][7][2]; // 生成渐变颜色数组紫色到蓝色
extern color_t seg_color_0000FF_to_00FF00[4][7][2]; // 生成渐变颜色数组蓝色到绿色
extern color_t seg_color_FF0000_to_FF00FF[4][7][2]; // 生成渐变颜色数组绿色到黄色
extern color_t seg_color_FF00FF_to_F06E82[4][7][2]; // 生成渐变颜色数组紫色到粉色

// 数码管显示时间定义
typedef struct
{
	// 小时断码定义
	uint8_t seg_hour_tens[7][2];  // 十位数
	uint8_t seg_hour_units[7][2]; // 个位数
	// 分隔符断码
	uint8_t seg_units[2];
	// 分钟断码定义
	uint8_t seg_minute_tens[7][2];	// 十位数
	uint8_t seg_minute_units[7][2]; // 个位数
} seg_time_t;

static ws2812_strip_t ws2812_strip = {
	.led_count = 62,
	.brightness = 0.05,
	.pin = 12,
};

static bool tempture_unit_icon_enable = false;
static bool humidity_unit_icon_enable = false;
// 数码管显示设备定义
typedef struct
{
	// 定义时间数字显示
	seg_time_t seg_time;
	bool isUsed; // 是否被使用
} seg_dev_t;
/**
 * @brief 映射ws2812 ID 到数码管
 *
 */
static seg_dev_t seg_dev = {
	.seg_time = {
		.seg_hour_tens = {
			{2, 3},	  // A
			{4, 5},	  // B
			{13, 12}, // C
			{11, 10}, // D
			{9, 8},	  // E
			{0, 1},	  // F
			{7, 6},	  // G
		},
		.seg_hour_units = {
			{16, 17}, // A
			{18, 19}, // B
			{27, 26}, // C
			{25, 24}, // D
			{23, 22}, // E
			{14, 15}, // F
			{20, 21}, // G
		},
		.seg_units = {29, 28}, // 分隔符 冒号
		.seg_minute_tens = {
			{32, 33}, // A
			{34, 35}, // B
			{43, 42}, // C
			{41, 40}, // D
			{39, 38}, // E
			{30, 31}, // F
			{36, 37}, // G
		},
		.seg_minute_units = {
			{46, 47}, // A
			{48, 49}, // B
			{57, 56}, // C
			{55, 54}, // D
			{53, 52}, // E
			{44, 45}, // F
			{50, 51}, // G
		},
	},
};
// 数码管显示定义
const uint8_t digitSegments[] = {
	0b0111111, // 0: 显示0时，A~F段亮，G段灭
	0b0000110, // 1: 显示1时，B、C段亮，其他段灭
	0b1011011, // 2
	0b1001111, // 3
	0b1100110, // 4
	0b1101101, // 5
	0b1111101, // 6
	0b0000111, // 7
	0b1111111, // 8
	0b1101111, // 9
	0b1110111, // A
	0b1111100, // B
	0b0111001, // C
	0b1011110, // D
	0b1111001, // E
	0b1110001  // F
};
static uint8_t find_no_used_seg(uint8_t *no_user_seg)
{
	if (no_user_seg == NULL)
		return 0;
	bool used[62] = {false}; // 标记0~46是否被使用
	// 标记seg_time部分使用的值
	for (int i = 0; i < 7; i++)
	{
		used[seg_dev.seg_time.seg_hour_tens[i][0]] = true;
		used[seg_dev.seg_time.seg_hour_tens[i][1]] = true;
	}

	for (int i = 0; i < 7; i++)
	{
		used[seg_dev.seg_time.seg_hour_units[i][0]] = true;
		used[seg_dev.seg_time.seg_hour_units[i][1]] = true;
	}
	used[seg_dev.seg_time.seg_units[0]] = true;
	used[seg_dev.seg_time.seg_units[1]] = true;
	for (int i = 0; i < 7; i++)
	{
		used[seg_dev.seg_time.seg_minute_tens[i][0]] = true;
		used[seg_dev.seg_time.seg_minute_tens[i][1]] = true;
	}
	for (int i = 0; i < 7; i++)
	{
		used[seg_dev.seg_time.seg_minute_units[i][0]] = true;
		used[seg_dev.seg_time.seg_minute_units[i][1]] = true;
	}
	uint8_t no_user_seg_count = 0;
	for (int i = 0; i < ws2812_get_led_count(); i++)
	{
		if (!used[i])
			no_user_seg[no_user_seg_count++] = i;
	}
	return no_user_seg_count;
}

static void seg_disable_all(void)
{
	ws2812_set_all_pixels_color(0, 0, 0, 0.0);
}
void seg_dev_init(void)
{

	ws2812_init(&ws2812_strip);
	// ws2812_set_all_pixels_color(0, 0, 0, 0.0);
	// 初始化ws2812
	// /*初始化数码管，关闭不使用的灯珠*/
	// seg_disable_all();
	uint8_t no_user_seg[ws2812_strip.led_count];
	uint8_t no_user_seg_num = find_no_used_seg(no_user_seg);

	if (no_user_seg_num > 0)
	{
		for (int i = 0; i < no_user_seg_num; i++)
		{
			ws2812_set_pixel_brightness(no_user_seg[i], 0);
			ws2812_set_pixel_color(no_user_seg[i], 0, 0, 0);
		}
	}
}

// 设置单个数码管显示特定数字
void seg_dispaly_number(seg_index_t seg_index, int digit, color_t color, float brightness)
{
	if (digit < 0 || digit > 9)
	{
		blog_error("错误：数字必须在0-9之间");
		return;
	}
	uint8_t segments = digitSegments[digit];
	ws2812_strip.brightness = brightness;
	for (int i = 0; i < NUM_SEGMENTS; i++)
	{
		int is_segment_on = (segments >> i) & 1;

		switch (seg_index)
		{
		case SEG_TIMER_HOUR_TEN:
			ws2812_set_pixel_color(seg_dev.seg_time.seg_hour_tens[i][0], color.r, color.g, color.b);
			ws2812_set_pixel_color(seg_dev.seg_time.seg_hour_tens[i][1], color.r, color.g, color.b);
			ws2812_set_pixel_brightness(seg_dev.seg_time.seg_hour_tens[i][0], is_segment_on ? ws2812_strip.brightness : 0);
			ws2812_set_pixel_brightness(seg_dev.seg_time.seg_hour_tens[i][1], is_segment_on ? ws2812_strip.brightness : 0);
			break;
		case SEG_TIMER_HOUR_UNIT:
			ws2812_set_pixel_color(seg_dev.seg_time.seg_hour_units[i][0], color.r, color.g, color.b);
			ws2812_set_pixel_color(seg_dev.seg_time.seg_hour_units[i][1], color.r, color.g, color.b);
			ws2812_set_pixel_brightness(seg_dev.seg_time.seg_hour_units[i][0], is_segment_on ? ws2812_strip.brightness : 0);
			ws2812_set_pixel_brightness(seg_dev.seg_time.seg_hour_units[i][1], is_segment_on ? ws2812_strip.brightness : 0);
			break;
		case SEG_TIMER_MINUTE_TEN:
			ws2812_set_pixel_color(seg_dev.seg_time.seg_minute_tens[i][0], color.r, color.g, color.b);
			ws2812_set_pixel_color(seg_dev.seg_time.seg_minute_tens[i][1], color.r, color.g, color.b);
			ws2812_set_pixel_brightness(seg_dev.seg_time.seg_minute_tens[i][0], is_segment_on ? ws2812_strip.brightness : 0);
			ws2812_set_pixel_brightness(seg_dev.seg_time.seg_minute_tens[i][1], is_segment_on ? ws2812_strip.brightness : 0);
			break;
		case SEG_TIMER_MINUTE_UNIT:
			ws2812_set_pixel_color(seg_dev.seg_time.seg_minute_units[i][0], color.r, color.g, color.b);
			ws2812_set_pixel_color(seg_dev.seg_time.seg_minute_units[i][1], color.r, color.g, color.b);
			ws2812_set_pixel_brightness(seg_dev.seg_time.seg_minute_units[i][0], is_segment_on ? ws2812_strip.brightness : 0);
			ws2812_set_pixel_brightness(seg_dev.seg_time.seg_minute_units[i][1], is_segment_on ? ws2812_strip.brightness : 0);
			break;
		default:
			break;
		}
	}
}

void seg_display_time(int hour, int minute, color_t color, float brightness)
{
	ws2812_strip.brightness = brightness;
	seg_dispaly_number(SEG_TIMER_HOUR_TEN, hour / 10, color, ws2812_strip.brightness);
	seg_dispaly_number(SEG_TIMER_HOUR_UNIT, hour % 10, color, ws2812_strip.brightness);
	seg_dispaly_number(SEG_TIMER_MINUTE_TEN, minute / 10, color, ws2812_strip.brightness);
	seg_dispaly_number(SEG_TIMER_MINUTE_UNIT, minute % 10, color, ws2812_strip.brightness);

	ws2812_set_pixel_color(seg_dev.seg_time.seg_units[0], color.r, color.g, color.b);
	ws2812_set_pixel_color(seg_dev.seg_time.seg_units[1], color.r, color.g, color.b);
	ws2812_set_pixel_brightness(seg_dev.seg_time.seg_units[0], ws2812_strip.brightness);
	ws2812_set_pixel_brightness(seg_dev.seg_time.seg_units[1], ws2812_strip.brightness);
	ws2812_show_leds();
	vTaskDelay(pdMS_TO_TICKS(200));
	ws2812_set_pixel_color(seg_dev.seg_time.seg_units[0], color.r, color.g, color.b);
	ws2812_set_pixel_color(seg_dev.seg_time.seg_units[1], color.r, color.g, color.b);
	ws2812_set_pixel_brightness(seg_dev.seg_time.seg_units[0], 0);
	ws2812_set_pixel_brightness(seg_dev.seg_time.seg_units[1], 0);
	ws2812_show_leds();
	vTaskDelay(pdMS_TO_TICKS(200));
	ws2812_set_pixel_color(seg_dev.seg_time.seg_units[0], color.r, color.g, color.b);
	ws2812_set_pixel_color(seg_dev.seg_time.seg_units[1], color.r, color.g, color.b);
	ws2812_set_pixel_brightness(seg_dev.seg_time.seg_units[0], ws2812_strip.brightness);
	ws2812_set_pixel_brightness(seg_dev.seg_time.seg_units[1], ws2812_strip.brightness);
	ws2812_show_leds();
}

void seg_display_time_ex_color_mode(int hour, int minute, int color_mode, float brightness)
{

	uint8_t segments = digitSegments[hour / 10];
	ws2812_strip.brightness = brightness;

	color_t(*seg_color)[7][2] = NULL;
	switch (color_mode)
	{
	case 0:
		seg_color = seg_color_FF00FF_to_0000FF; // 紫色到蓝色
		break;
	case 1:
		seg_color = seg_color_0000FF_to_00FF00; // 蓝色到绿色
		break;
	case 2:
		seg_color = seg_color_FF0000_to_FF00FF; // 绿色到紫色
		break;
	case 3:
		seg_color = seg_color_FF00FF_to_F06E82; // 紫色到粉色
		break;
	default:
		seg_color = seg_color_FF00FF_to_0000FF; // 紫色到蓝色
		break;
	}
	// seg_wifi_dot_color = seg_color[4][2][0];
	// 设置小时的十位
	// blog_warn("hour: %d, minute: %d", hour, minute);
	for (int i = 0; i < NUM_SEGMENTS; i++)
	{
		int is_segment_on = (segments >> i) & 1;
		ws2812_set_pixel_color(seg_dev.seg_time.seg_hour_tens[i][0], seg_color[0][i][0].r, seg_color[0][i][0].g, seg_color[0][i][0].b);
		ws2812_set_pixel_color(seg_dev.seg_time.seg_hour_tens[i][1], seg_color[0][i][1].r, seg_color[0][i][1].g, seg_color[0][i][1].b);
		ws2812_set_pixel_brightness(seg_dev.seg_time.seg_hour_tens[i][0], is_segment_on ? ws2812_strip.brightness : 0);
		ws2812_set_pixel_brightness(seg_dev.seg_time.seg_hour_tens[i][1], is_segment_on ? ws2812_strip.brightness : 0);
	}
	// 设置小时的个位
	segments = digitSegments[hour % 10];
	for (int i = 0; i < NUM_SEGMENTS; i++)
	{
		int is_segment_on = (segments >> i) & 1;
		ws2812_set_pixel_color(seg_dev.seg_time.seg_hour_units[i][0], seg_color[1][i][0].r, seg_color[1][i][0].g, seg_color[1][i][0].b);
		ws2812_set_pixel_color(seg_dev.seg_time.seg_hour_units[i][1], seg_color[1][i][1].r, seg_color[1][i][1].g, seg_color[1][i][1].b);
		ws2812_set_pixel_brightness(seg_dev.seg_time.seg_hour_units[i][0], is_segment_on ? ws2812_strip.brightness : 0);
		ws2812_set_pixel_brightness(seg_dev.seg_time.seg_hour_units[i][1], is_segment_on ? ws2812_strip.brightness : 0);
	}
	// 设置分钟的十位
	segments = digitSegments[minute / 10];
	for (int i = 0; i < NUM_SEGMENTS; i++)
	{
		int is_segment_on = (segments >> i) & 1;

		ws2812_set_pixel_color(seg_dev.seg_time.seg_minute_tens[i][0], seg_color[2][i][0].r, seg_color[2][i][0].g, seg_color[2][i][0].b);
		ws2812_set_pixel_color(seg_dev.seg_time.seg_minute_tens[i][1], seg_color[2][i][1].r, seg_color[2][i][1].g, seg_color[2][i][1].b);
		ws2812_set_pixel_brightness(seg_dev.seg_time.seg_minute_tens[i][0], is_segment_on ? ws2812_strip.brightness : 0);
		ws2812_set_pixel_brightness(seg_dev.seg_time.seg_minute_tens[i][1], is_segment_on ? ws2812_strip.brightness : 0);
	}
	// 设置分钟的个位
	segments = digitSegments[minute % 10];
	for (int i = 0; i < NUM_SEGMENTS; i++)
	{
		int is_segment_on = (segments >> i) & 1;
		ws2812_set_pixel_color(seg_dev.seg_time.seg_minute_units[i][0], seg_color[3][i][0].r, seg_color[3][i][0].g, seg_color[3][i][0].b);
		ws2812_set_pixel_color(seg_dev.seg_time.seg_minute_units[i][1], seg_color[3][i][1].r, seg_color[3][i][1].g, seg_color[3][i][1].b);
		ws2812_set_pixel_brightness(seg_dev.seg_time.seg_minute_units[i][1], is_segment_on ? ws2812_strip.brightness : 0);
		ws2812_set_pixel_brightness(seg_dev.seg_time.seg_minute_units[i][0], is_segment_on ? ws2812_strip.brightness : 0);
	}
	vTaskDelay(pdMS_TO_TICKS(200));
	ws2812_set_pixel_color(seg_dev.seg_time.seg_units[0], seg_color[1][1][0].r, seg_color[1][1][0].g, seg_color[1][1][0].b);
	ws2812_set_pixel_color(seg_dev.seg_time.seg_units[1], seg_color[1][1][1].r, seg_color[1][1][1].g, seg_color[1][1][1].b);
	ws2812_set_pixel_brightness(seg_dev.seg_time.seg_units[0], 0);
	ws2812_set_pixel_brightness(seg_dev.seg_time.seg_units[1], 0);
	ws2812_show_leds();
	vTaskDelay(pdMS_TO_TICKS(200));
	ws2812_set_pixel_color(seg_dev.seg_time.seg_units[0], seg_color[1][1][0].r, seg_color[1][1][0].g, seg_color[1][1][0].b);
	ws2812_set_pixel_color(seg_dev.seg_time.seg_units[1], seg_color[1][1][1].r, seg_color[1][1][1].g, seg_color[1][1][1].b);
	ws2812_set_pixel_brightness(seg_dev.seg_time.seg_units[0], ws2812_strip.brightness);
	ws2812_set_pixel_brightness(seg_dev.seg_time.seg_units[1], ws2812_strip.brightness);
	ws2812_show_leds();
}

void seg_display_fans_count_color_mode(int follow_cnt, int color_mode, float brightness)
{
	color_t(*seg_color)[7][2] = NULL;
	// 设置小时的十位
	bool istenthousand = false;
	ws2812_strip.brightness = brightness;
	switch (color_mode)
	{
	case 0:
		seg_color = seg_color_FF00FF_to_0000FF; // 紫色到蓝色
		break;
	case 1:
		seg_color = seg_color_0000FF_to_00FF00; // 蓝色到绿色
		break;
	case 2:
		seg_color = seg_color_FF0000_to_FF00FF; // 绿色到紫色
		break;
	case 3:
		seg_color = seg_color_FF00FF_to_F06E82; // 紫色到粉色
		break;
	default:
		seg_color = seg_color_FF00FF_to_0000FF; // 紫色到蓝色
		break;
	}
	// 计算需要显示的数字
	// 设置小时的十位
	// 关闭冒号灯珠
	ws2812_set_pixel_brightness(seg_dev.seg_time.seg_units[0], 0);
	ws2812_set_pixel_brightness(seg_dev.seg_time.seg_units[1], 0);
	ws2812_set_pixel_color(SEG_FANS_W_LED_NUMBER, seg_color[4][6][0].r, seg_color[4][6][0].g, seg_color[4][6][0].b);
	ws2812_set_pixel_brightness(SEG_FANS_W_LED_NUMBER, 0);
	// 如果粉丝数为负数，显示四条横杠
	if (follow_cnt < 0)
	{
		ws2812_set_pixel_color(seg_dev.seg_time.seg_hour_tens[6][0], seg_color[0][6][0].r, seg_color[0][6][0].g, seg_color[0][6][0].b);
		ws2812_set_pixel_color(seg_dev.seg_time.seg_hour_tens[6][1], seg_color[0][6][1].r, seg_color[0][6][1].g, seg_color[0][6][1].b);
		ws2812_set_pixel_brightness(seg_dev.seg_time.seg_hour_tens[6][0], ws2812_strip.brightness);
		ws2812_set_pixel_brightness(seg_dev.seg_time.seg_hour_tens[6][1], ws2812_strip.brightness);
		ws2812_set_pixel_color(seg_dev.seg_time.seg_hour_units[6][0], seg_color[1][6][0].r, seg_color[1][6][0].g, seg_color[1][6][0].b);
		ws2812_set_pixel_color(seg_dev.seg_time.seg_hour_units[6][1], seg_color[1][6][1].r, seg_color[1][6][1].g, seg_color[1][6][1].b);
		ws2812_set_pixel_brightness(seg_dev.seg_time.seg_hour_units[6][0], ws2812_strip.brightness);
		ws2812_set_pixel_brightness(seg_dev.seg_time.seg_hour_units[6][1], ws2812_strip.brightness);
		ws2812_set_pixel_color(seg_dev.seg_time.seg_minute_tens[6][0], seg_color[2][6][0].r, seg_color[2][6][0].g, seg_color[2][6][0].b);
		ws2812_set_pixel_color(seg_dev.seg_time.seg_minute_tens[6][1], seg_color[2][6][1].r, seg_color[2][6][1].g, seg_color[2][6][1].b);
		ws2812_set_pixel_brightness(seg_dev.seg_time.seg_minute_tens[6][0], ws2812_strip.brightness);
		ws2812_set_pixel_brightness(seg_dev.seg_time.seg_minute_tens[6][1], ws2812_strip.brightness);
		ws2812_set_pixel_color(seg_dev.seg_time.seg_minute_units[6][0], seg_color[3][6][0].r, seg_color[3][6][0].g, seg_color[3][6][0].b);
		ws2812_set_pixel_color(seg_dev.seg_time.seg_minute_units[6][1], seg_color[3][6][1].r, seg_color[3][6][1].g, seg_color[3][6][1].b);
		ws2812_set_pixel_brightness(seg_dev.seg_time.seg_minute_units[6][1], ws2812_strip.brightness);
		ws2812_set_pixel_brightness(seg_dev.seg_time.seg_minute_units[6][0], ws2812_strip.brightness);

		ws2812_show_leds();
		return;
	}
	// 如果大于9999则显示为9999
	if (follow_cnt > 0 && follow_cnt < 9999)
	{
		istenthousand = false;
	}
	else
	{
		istenthousand = true;
		follow_cnt = follow_cnt % 10000;
		// 点亮W灯珠
		ws2812_set_pixel_color(SEG_FANS_W_LED_NUMBER, seg_color[4][6][0].r, seg_color[4][6][0].g, seg_color[4][6][0].b);
		ws2812_set_pixel_brightness(SEG_FANS_W_LED_NUMBER, brightness);
	}

	uint8_t segments = digitSegments[follow_cnt / 1000 % 10];
	for (int i = 0; i < NUM_SEGMENTS; i++)
	{
		int is_segment_on = (segments >> i) & 1 && follow_cnt > 1000 ? true : false; // 千位为0时不显示
		ws2812_set_pixel_color(seg_dev.seg_time.seg_hour_tens[i][0], seg_color[0][i][0].r, seg_color[0][i][0].g, seg_color[0][i][0].b);
		ws2812_set_pixel_color(seg_dev.seg_time.seg_hour_tens[i][1], seg_color[0][i][1].r, seg_color[0][i][1].g, seg_color[0][i][1].b);
		ws2812_set_pixel_brightness(seg_dev.seg_time.seg_hour_tens[i][0], is_segment_on ? ws2812_strip.brightness : 0);
		ws2812_set_pixel_brightness(seg_dev.seg_time.seg_hour_tens[i][1], is_segment_on ? ws2812_strip.brightness : 0);
	}
	// 设置小时的个位
	segments = digitSegments[follow_cnt / 100 % 10];
	for (int i = 0; i < NUM_SEGMENTS; i++)
	{
		int is_segment_on = (segments >> i) & 1 && follow_cnt > 100 ? true : false; // 百位为0时不显示
		ws2812_set_pixel_color(seg_dev.seg_time.seg_hour_units[i][0], seg_color[1][i][0].r, seg_color[1][i][0].g, seg_color[1][i][0].b);
		ws2812_set_pixel_color(seg_dev.seg_time.seg_hour_units[i][1], seg_color[1][i][1].r, seg_color[1][i][1].g, seg_color[1][i][1].b);
		ws2812_set_pixel_brightness(seg_dev.seg_time.seg_hour_units[i][0], is_segment_on ? ws2812_strip.brightness : 0);
		ws2812_set_pixel_brightness(seg_dev.seg_time.seg_hour_units[i][1], is_segment_on ? ws2812_strip.brightness : 0);
	}
	// 设置分钟的十位
	segments = digitSegments[follow_cnt / 10 % 10];
	for (int i = 0; i < NUM_SEGMENTS; i++)
	{
		int is_segment_on = (segments >> i) & 1 && follow_cnt > 10 ? true : false; // 十位为0时不显示

		ws2812_set_pixel_color(seg_dev.seg_time.seg_minute_tens[i][0], seg_color[2][i][0].r, seg_color[2][i][0].g, seg_color[2][i][0].b);
		ws2812_set_pixel_color(seg_dev.seg_time.seg_minute_tens[i][1], seg_color[2][i][1].r, seg_color[2][i][1].g, seg_color[2][i][1].b);
		ws2812_set_pixel_brightness(seg_dev.seg_time.seg_minute_tens[i][0], is_segment_on ? ws2812_strip.brightness : 0);
		ws2812_set_pixel_brightness(seg_dev.seg_time.seg_minute_tens[i][1], is_segment_on ? ws2812_strip.brightness : 0);
	}
	// 设置分钟的个位
	segments = digitSegments[follow_cnt % 10];
	for (int i = 0; i < NUM_SEGMENTS; i++)
	{
		int is_segment_on = (segments >> i) & 1 ? true : false; // 个位为0时不显示，除非是四位数
		ws2812_set_pixel_color(seg_dev.seg_time.seg_minute_units[i][0], seg_color[3][i][0].r, seg_color[3][i][0].g, seg_color[3][i][0].b);
		ws2812_set_pixel_color(seg_dev.seg_time.seg_minute_units[i][1], seg_color[3][i][1].r, seg_color[3][i][1].g, seg_color[3][i][1].b);
		ws2812_set_pixel_brightness(seg_dev.seg_time.seg_minute_units[i][1], is_segment_on ? ws2812_strip.brightness : 0);
		ws2812_set_pixel_brightness(seg_dev.seg_time.seg_minute_units[i][0], is_segment_on ? ws2812_strip.brightness : 0);
	}
	ws2812_show_leds();
}
/**
 * @brief 关闭数码管
 *
 * @param arg
 */
static void seg_display_timer_handle(TimerHandle_t Timer)
{
	loading_t status = (loading_t)pvTimerGetTimerID(Timer);

	static int blink_cont = 0;

	switch (status)
	{
	case SEG_LOADING_BLUFI_CONFIG:
		ws2812_set_pixel_color(SEG_WIFI_LED_NUNBER, seg_wifi_dot_color.r, seg_wifi_dot_color.g, seg_wifi_dot_color.b);
		break;
	case SEG_LOADING_WIFI_DISCONNECT:
		// 进行红色闪烁，闪烁周期为500ms
		ws2812_set_pixel_color(SEG_WIFI_LED_NUNBER, 0xFF, 0x00, 0x00);
		break;
	default:
		break;
	}

	ws2812_set_pixel_brightness(SEG_WIFI_LED_NUNBER, blink_cont % 2 ? ws2812_strip.brightness : 0);
	blink_cont++;
	if (blink_cont >= 10)
	{
		blink_cont = 0;
	}
	ws2812_show_leds();
}
void seg_display_loading(loading_t status, unsigned char color_mode)
{
	// 状态显示

	blog_info("seg_display_loading %d", status);
	color_t(*seg_color)[7][2] = NULL;
	switch (color_mode)
	{
	case 0:
		seg_color = seg_color_FF00FF_to_0000FF; // 紫色到蓝色
		break;
	case 1:
		seg_color = seg_color_0000FF_to_00FF00; // 蓝色到绿色
		break;
	case 2:
		seg_color = seg_color_FF0000_to_FF00FF; // 绿色到紫色
		break;
	case 3:
		seg_color = seg_color_FF00FF_to_F06E82; // 紫色到粉色
		break;
	default:
		seg_color = seg_color_FF00FF_to_0000FF; // 紫色到蓝色
		break;
	}

	switch (status)
	{
	case SEG_LOADING_BLUFI_CONFIG:
		if (seg_timer == NULL)
			seg_timer = xTimerCreate("seg_timer", pdMS_TO_TICKS(500), pdTRUE, (void *)status, seg_display_timer_handle);

		if (xTimerIsTimerActive(seg_timer) != pdTRUE)
		{
			xTimerStart(seg_timer, pdMS_TO_TICKS(100));
		}

		break;
	case SEG_LOADING_WIFI_CONNECT:

		if (seg_timer != NULL && xTimerIsTimerActive(seg_timer) == pdTRUE)
		{
			xTimerStop(seg_timer, pdMS_TO_TICKS(100));
			xTimerDelete(seg_timer, pdMS_TO_TICKS(100));
			seg_timer = NULL;
		}
		if (seg_timer != NULL && xTimerIsTimerActive(seg_timer_1) == pdTRUE)
		{
			xTimerStop(seg_timer_1, pdMS_TO_TICKS(100));
			xTimerDelete(seg_timer_1, pdMS_TO_TICKS(100));
			seg_timer_1 = NULL;
		}
		// wifi连接成功，常亮蓝色
		blog_info("wifi connect success");

		ws2812_set_pixel_color(SEG_WIFI_LED_NUNBER, seg_color == NULL ? 0X00 : seg_color[1][6][0].r, seg_color == NULL ? 0XFF : seg_color[1][6][0].g, seg_color == NULL ? 0X00 : seg_color[1][6][0].b);
		ws2812_set_pixel_brightness(SEG_WIFI_LED_NUNBER, ws2812_strip.brightness);
		ws2812_show_leds();
		break;
	case SEG_LOADING_WIFI_DISCONNECT:
		// wifi断开时，红色闪烁
		if (seg_timer_1 == NULL)
			seg_timer_1 = xTimerCreate("seg_timer_1", pdMS_TO_TICKS(500), pdTRUE, (void *)status, seg_display_timer_handle);

		if (xTimerIsTimerActive(seg_timer) == pdTRUE)
		{
			xTimerStop(seg_timer, pdMS_TO_TICKS(100));
			xTimerDelete(seg_timer, pdMS_TO_TICKS(100));
			seg_timer = NULL;
		}
		// 如果正在呼吸状态，停止呼吸
		if (xTimerIsTimerActive(seg_timer_1) != pdTRUE)
		{
			xTimerStart(seg_timer_1, pdMS_TO_TICKS(100));
		}
		break;
	default:
		break;
	}
}