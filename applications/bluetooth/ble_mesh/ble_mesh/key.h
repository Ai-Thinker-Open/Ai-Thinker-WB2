#ifndef __KEY_H__
#define __KEY_H__

#include <stdio.h>
#include <stdint.h>
#include <string.h>

#ifdef __KEY_C__
#define KEYEXT
#else
#define KEYEXT extern
#endif



#define KEY_BURST_DELAY			(30)	//0.3s 时间


#define KEY_TEST_PUTDOWN		get_key_value()  //gpio_read(_PIN_TOUCH_KEY) //READY_PIN

typedef struct{
	uint8_t status;		//按键状�?
	uint8_t key;		//键�?
}KEY_INFO;


enum{
	KEY_RELEASE=0,			//释放
	KEY_PRESS,				//按下
};

typedef enum{
	KEYCODE_NONE	= 0,
	KEYCODE_READY_PUTDOWN,	//测架下压
	KEYCODE_READY_PUSHUP,	//测架上抬
	KEYCODE_KEY_PRESSED_x1,	//按键单次按下
	KEYCODE_PRESS_x2,
	KEYCODE_PRESS_x3,
	KEYCODE_PRESS_x4,
	KEYCODE_PRESS_x5,
	KEYCODE_PRESS_3s,		//长按按键3�?

	KEYCODE_MAX,
}KEYCODE_TYPE;

typedef struct{
	KEY_INFO now;		//当前按键信息
	KEY_INFO last;		//上一次按键信�?
	uint8_t key;		
	uint8_t old;
	KEYCODE_TYPE code;		//获取键�?
	KEYCODE_TYPE codebak;	//上一次键�?
	uint8_t filteCount;		//按键防抖计数
	uint16_t count;			//连续按键计数
	uint16_t countrelease;	//本次按键释放�?之前连续按键时间长度 x10ms
	uint8_t burst;			//多次按键次数
	uint8_t burst_delay;		//多次按键间隔
	uint8_t releaseignor;	//系统通知下次按键释放忽略
	uint16_t keyerrortimer;	//按键卡死倒计�?只要有按键按下持续超�?0�?系统强制进入深度休眠模式
}KEY_TYPE;


KEYEXT KEY_TYPE stKey;

#define KEY_FIFO_SIZE 			8			//��2^x��ʡ�ö����,��2^x�����76�ֽ�^v^
typedef struct
{
	uint8_t fifo[KEY_FIFO_SIZE];//���л�����
	uint8_t out;				//����ͷָ��
	uint8_t in;					//����βָ��
}TYPE_EVENT_QUEUE;

KEYEXT TYPE_EVENT_QUEUE stEventQueue;

void key_init_cfg(void);
uint8_t get_key_value(void);
uint8_t KEY_Press_Burst_Check(uint8_t keyinput,uint8_t *keyoutput);
void KEY_Refresh_Info(void);
uint8_t KEY_Get_Changed(void);
uint8_t KEY_Get_Press(void);
uint8_t KEY_Scan_Event(void);
void KEY_Scan(void);

uint8_t KEY_Pull_CodeFIFO(void);
void KEY_Push_CodeFIFO(uint8_t a);
#endif
	
	
