/**
 * @file buttom.h
 * @author Seahi-Mo (seahi-mo@foxmail.com)
 * @brief
 * @version 0.1
 * @date 2025-09-23
 *
 * @copyright Ai-Thinker co.,ltd (c) 2025
 *
 */
#ifndef __BUTTOM_H__
#define __BUTTOM_H__

#include "FreeRTOS.h"
#include "task.h"
#include "timers.h"

// 按键事件类型
typedef enum
{
	KEY_EVENT_NONE,		   // 无事件
	KEY_EVENT_SHORT_PRESS, // 短按事件
	KEY_EVENT_LONG_PRESS,  // 长按事件
	KEY_EVENT_DOUBLE_CLICK // 双击事件
} KeyEventType;

// 按键状态
typedef enum
{
	KEY_STATE_RELEASED,
	KEY_STATE_PRESSED,
	KEY_STATE_LONG_PRESSED,
	// KEY_STATE_WAIT_DOUBLE_CLICK // 新增：等待双击状态
} KeyState;

// 按键配置结构体
typedef struct
{
	uint16_t gpio_pin;		  // GPIO引脚
	uint8_t active_level;	  // 有效电平(0:低电平有效,1:高电平有效)
	uint32_t long_press_time; // 长按判定时间(ms)
	uint32_t click_interval;  // 双击间隔时间(ms)
} KeyConfig;

// 按键结构体(外部不需要知道内部细节)
typedef struct
{
	KeyConfig config;
	KeyState state;
	KeyEventType event;

	TimerHandle_t timer;

	uint32_t press_time;   // 按下时间戳
	uint32_t release_time; // 释放时间戳
	uint8_t click_count;   // 点击计数

	// 回调函数
	void (*on_short_press)(void);
	void (*on_long_press)(void);
	void (*on_double_click)(void);

	int (*read_pin)(void); // 读取按键引脚状态的函数指针
} KeyDetector;

// 初始化按键检测器
KeyDetector *Button_detector_init(const KeyConfig *config,
								  int (*read_pin)(void),
								  void (*short_press_cb)(void),
								  void (*long_press_cb)(void),
								  void (*double_click_cb)(void));

// 启动按键检测
void Button_detector_start(KeyDetector *detector);

// 停止按键检测
void Button_detector_stop(KeyDetector *detector);

// 删除按键检测器
void Button_detector_delete(KeyDetector *detector);

// 获取当前按键事件
KeyEventType Button_detector_get_event(KeyDetector *detector);

// 清除按键事件
void Button_detector_clear_event(KeyDetector *detector);
#endif // !__BUTTOM_H__