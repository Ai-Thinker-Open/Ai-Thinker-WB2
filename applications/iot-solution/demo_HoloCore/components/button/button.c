/**
 * @file buttom.c
 * @author Seahi-Mo (seahi-mo@foxmail.com)
 * @brief
 * @version 0.1
 * @date 2025-09-23
 *
 * @copyright Ai-Thinker co.,ltd (c) 2025
 *
 */
#include <stdio.h>
#include <string.h>
#include "button.h"
#include <blog.h>

// 定时器回调函数，用于检测按键状态和识别事件
static void Button_timer_callback(TimerHandle_t xTimer)
{
	KeyDetector *detector = (KeyDetector *)pvTimerGetTimerID(xTimer);
	if (detector == NULL)
		return;

	// 读取按键状态
	uint8_t current_level = detector->read_pin();
	uint8_t is_pressed = (current_level == detector->config.active_level);

	switch (detector->state)
	{
	case KEY_STATE_RELEASED:
		if (is_pressed)
		{
			// 按键按下
			detector->state = KEY_STATE_PRESSED;
			detector->press_time = xTaskGetTickCount() * portTICK_PERIOD_MS;
			detector->click_count++;
		}
		break;

	case KEY_STATE_PRESSED:
		if (!is_pressed)
		{
			// 按键释放
			detector->release_time = xTaskGetTickCount() * portTICK_PERIOD_MS;
			uint32_t press_duration = detector->release_time - detector->press_time;

			// 判断是否为短按
			if (press_duration < detector->config.long_press_time)
			{
				// 检查是否可能为双击
				if (detector->click_count == 1)
				{
					// 等待双击
					detector->state = KEY_STATE_RELEASED;
					// 重启定时器，等待双击
					xTimerReset(detector->timer, 0);
				}
				else if (detector->click_count == 2)
				{
					// 双击事件
					detector->event = KEY_EVENT_DOUBLE_CLICK;
					if (detector->on_double_click)
					{
						detector->on_double_click();
					}
					detector->click_count = 0;
					detector->state = KEY_STATE_RELEASED;
				}
			}
		}
		else
		{
			// 按键仍按下，检查是否达到长按时间
			uint32_t press_duration = xTaskGetTickCount() * portTICK_PERIOD_MS - detector->press_time;
			if (press_duration >= detector->config.long_press_time)
			{
				detector->state = KEY_STATE_LONG_PRESSED;
				detector->event = KEY_EVENT_LONG_PRESS;
				if (detector->on_long_press)
				{
					detector->on_long_press();
				}
			}
		}
		break;

	case KEY_STATE_LONG_PRESSED:
		if (!is_pressed)
		{
			// 长按后释放
			detector->state = KEY_STATE_RELEASED;
			detector->click_count = 0;
		}
		break;
	}

	// 处理单击事件(在双击时间窗口过后)
	if (detector->state == KEY_STATE_RELEASED && detector->click_count == 1)
	{
		uint32_t current_time = xTaskGetTickCount() * portTICK_PERIOD_MS;
		if (current_time - detector->release_time >= detector->config.click_interval)
		{
			// 单击事件
			detector->event = KEY_EVENT_SHORT_PRESS;
			if (detector->on_short_press)
			{
				detector->on_short_press();
			}
			detector->click_count = 0;
		}
	}
}

// 初始化按键检测器
KeyDetector *Button_detector_init(const KeyConfig *config, int (*read_pin)(void),
								  void (*short_press_cb)(void),
								  void (*long_press_cb)(void),
								  void (*double_click_cb)(void))
{
	if (config == NULL)
		return NULL;

	// 分配内存
	KeyDetector *detector = (KeyDetector *)pvPortMalloc(sizeof(KeyDetector));
	if (detector == NULL)
		return NULL;

	// 初始化配置
	detector->config = *config;
	detector->state = KEY_STATE_RELEASED;
	detector->event = KEY_EVENT_NONE;
	detector->press_time = 0;
	detector->release_time = 0;
	detector->click_count = 0;

	// 设置回调函数
	detector->on_short_press = short_press_cb;
	detector->on_long_press = long_press_cb;
	detector->on_double_click = double_click_cb;
	detector->read_pin = read_pin;
	// 创建定时器，周期为5ms(可根据需要调整)
	detector->timer = xTimerCreate("KeyTimer", pdMS_TO_TICKS(10), pdTRUE, (void *)detector, Button_timer_callback);

	if (detector->timer == NULL)
	{
		vPortFree(detector);
		return NULL;
	}
	return detector;
}

// 启动按键检测
void Button_detector_start(KeyDetector *detector)
{
	if (detector && detector->timer)
	{
		xTimerStart(detector->timer, 0);
	}
}

// 停止按键检测
void Button_detector_stop(KeyDetector *detector)
{
	if (detector && detector->timer)
	{
		xTimerStop(detector->timer, 0);
	}
}

// 删除按键检测器
void Button_detector_delete(KeyDetector *detector)
{
	if (detector)
	{
		if (detector->timer)
		{
			xTimerDelete(detector->timer, 0);
		}
		vPortFree(detector);
	}
}

// 获取当前按键事件
KeyEventType Button_detector_get_event(KeyDetector *detector)
{
	if (detector)
	{
		return detector->event;
	}
	return KEY_EVENT_NONE;
}

// 清除按键事件
void Button_detector_clear_event(KeyDetector *detector)
{
	if (detector)
	{
		detector->event = KEY_EVENT_NONE;
	}
}
