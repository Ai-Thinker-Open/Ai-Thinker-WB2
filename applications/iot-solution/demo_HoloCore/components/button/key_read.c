/**
 * @file key_read.c
 * @author Seahi-Mo (seahi-mo@foxmail.com)
 * @brief
 * @version 0.1
 * @date 2025-09-24
 *
 * @copyright Ai-Thinker co.,ltd (c) 2025
 *
 */
#include <stdio.h>
#include <string.h>
#include "key_read.h"
#include <bl_gpio.h>
#include "device_state.h"

// 按键1回调函数
static void key1_short_press_handler(void)
{
	// 处理按键1短按事件
	dev_msg_t dev_msg = {0};
	dev_msg.device_state = DEVIDE_STATE_CFG_STATE_SHORT_PRESS;
	device_state_update(0, &dev_msg);
}

static void key1_long_press_handler(void)
{
	// 处理按键1长按事件
	dev_msg_t dev_msg = {0};
	dev_msg.device_state = DEVICE_STATE_CFG_STATE_LONG_PRESS;
	device_state_update(0, &dev_msg);
}

static void key1_double_click_handler(void)
{
	// 处理按键1双击事件
	dev_msg_t dev_msg = {0};
	dev_msg.device_state = DEVICE_STATE_CFG_STATE_DOUBLE_CLICK;
	device_state_update(0, &dev_msg);
}

static int read_keycfg_pin(void)

{
	return bl_gpio_input_get_value(BUTTOM_CFG_PIN);
}
void button_init(void)
{
	KeyConfig key_cfg = {
		.gpio_pin = BUTTOM_CFG_PIN,
		.active_level = 0,
		.long_press_time = 2000,
		.click_interval = 200,

	};
	bl_gpio_enable_input(BUTTOM_CFG_PIN, 1, 0);
	KeyDetector *key_detector = Button_detector_init(&key_cfg, read_keycfg_pin, key1_short_press_handler, key1_long_press_handler, key1_double_click_handler);
	if (key_detector)
		Button_detector_start(key_detector);
}