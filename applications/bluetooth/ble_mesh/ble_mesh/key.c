#define __KEY_C__
#include "key.h"
#include "hosal_gpio.h"

static hosal_gpio_dev_t key1;

void key_init_cfg(void)
{
    key1.port = 8;
    key1.config = INPUT_PULL_DOWN;
    hosal_gpio_init(&key1);

    stKey.old =0xFF;

	stKey.now.key=0xFF;
	stKey.now.status=KEY_RELEASE;

	stKey.last.key=0xFF;
	stKey.last.status=KEY_RELEASE;

	stKey.count=0;

	stKey.code=KEYCODE_NONE;
}

uint8_t get_key_value(void)
{
    uint8_t value = -1;
    hosal_gpio_input_get(&key1, &value);
    return value;
}

void KEY_Push_CodeFIFO(uint8_t a)
{
    stEventQueue.in=(stEventQueue.in+1)%KEY_FIFO_SIZE; //��������
    stEventQueue.fifo[stEventQueue.in]=a;//����
}


/*------------------------------------------------------------------------
 *      Purpose:    	���к���
 *      Parameters:     None
 *      Return Value:   key
 *
 *------------------------------------------------------------------------*/
uint8_t KEY_Pull_CodeFIFO(void)
{
    if(stEventQueue.out == stEventQueue.in)	//���п�
        return(0x00);
    stEventQueue.out=(stEventQueue.out+1)%KEY_FIFO_SIZE; //��������
    return stEventQueue.fifo[stEventQueue.out]; //ȡ������  //����
}

uint8_t KEY_Error_Det(uint8_t keystatus)
{
	return 0;
}

void KEY_Refresh_Info(void)
{
	stKey.last.key=stKey.now.key;
	stKey.last.status=stKey.now.status;
}

//如果有按键改动事�?则返�?
uint8_t KEY_Get_Changed(void)
{
	if((stKey.now.status !=stKey.last.status)&& (stKey.now.key!=stKey.last.key))
		return 1;
	return 0;
}


uint8_t KEY_Get_Press(void)
{
	uint32_t press=0;
	//获取按键位号
	if(KEY_TEST_PUTDOWN)
		press |= 1;
		
	//由于不需要组合按�?将每bit号转成序列号
	switch(press)
	{
		case 1:
			press=KEYCODE_READY_PUTDOWN;
			break;
		default:
			press=KEYCODE_NONE;
		
	}
	return (uint8_t)press;
}

//按键检�?如果有按�? 按下/释放 动作,返回1 / 无动�?返回0
uint8_t KEY_Scan_Event(void) // 10ms  返回按键状态是否有更改
{
//	stKey.key = 130;
	stKey.key=KEY_Get_Press();
	if(stKey.key==KEYCODE_NONE)
		stKey.key = 130;
	if (stKey.key >= 130) 							// 按键全部释放�?
	{
		stKey.now.key=KEYCODE_NONE;
		stKey.now.status=KEY_RELEASE;

		stKey.old = KEYCODE_NONE;
		stKey.filteCount = 0;
		if(KEY_Get_Changed())
			return 1;
		return 0;
	}
	
	if (stKey.key != stKey.old)
	{
		stKey.old = stKey.key;
		stKey.filteCount = 0;
	}
	else 
	{
		if(++stKey.filteCount > 1) 					// 30ms
			stKey.filteCount =1;
		else if(stKey.filteCount ==1)
		{
			stKey.now.key=stKey.key;				//按键按下  �? 组合按键 键值异�?没有释放,只是从这个按键直接跳转到另一个按�?
			stKey.now.status=KEY_PRESS;
			return 1;
  		}
 	}
	return 0;
}

void KEY_Burst_Scan_Release(void)
{
	if(stKey.burst_delay)
	{
		// MSG("delay = %d\r\n", stKey.burst_delay);
		if(--stKey.burst_delay==0)
		{
			// printf("KEY 0.7s\r\n");
			//释放判断连续按键
            if (stKey.burst==1) {
                KEY_Push_CodeFIFO(KEYCODE_KEY_PRESSED_x1);
            }
        
			if(stKey.burst==2) {
				KEY_Push_CodeFIFO(KEYCODE_PRESS_x2);
			}
				
			else if(stKey.burst==3) {
				KEY_Push_CodeFIFO(KEYCODE_PRESS_x3);
			}
				
			else if(stKey.burst==4)
			{
				KEY_Push_CodeFIFO(KEYCODE_PRESS_x4);
			}
				
			stKey.burst=0;
		}
	}
}

void KEY_Scan(void)
{
	KEY_Burst_Scan_Release();	//释放倒计�?触发连续按键
	if(KEY_Scan_Event())							//检测到按键有动�?--> 按下/释放  只会触发一�?
	{
		if(stKey.now.status==KEY_PRESS)				//按键首次按下//检查哪个按键按�?或�?那些组合按键异动. 触发后开始计�?
		{
			KEY_Push_CodeFIFO(stKey.now.key);
			if(++stKey.burst==5) {
				KEY_Push_CodeFIFO(KEYCODE_PRESS_x5);		//第五次按键直接触�?
			}
			// else
			// {
			// 	KEY_Push_CodeFIFO(KEYCODE_KEY_PRESSED_x1);
			// }
		}
		else if(stKey.now.status==KEY_RELEASE)		//检查哪个按键释�?组合按键需要判断先后顺�?
		{
			// stKeyAdj.pausecount=0;			//调节限制归零
			if(stKey.releaseignor==0)
			{
				//按键释放动作
				//.............
				KEY_Push_CodeFIFO(KEYCODE_READY_PUSHUP);
			}
			
			stKey.burst_delay=KEY_BURST_DELAY;		//按键释放延时触发连续按键动作
			
			stKey.countrelease=stKey.count;			//存储本次按键从按下到释放的总时�?供后续程序使�?
			stKey.count=0;							//按键变动�?重新开始计算长按时�?
			stKey.releaseignor=0;
			printf("key release\r\n");
		}
		KEY_Refresh_Info();							//保存本次按键信息,下次按键变动参考用
	}
	else 											//检测按键长按动�?--> 按下	   后持续触�?
	{
		if(stKey.now.status==KEY_PRESS)				//当前有按键按�?开始处理长�?
		{
			++stKey.count;
			// if(stKey.now.key==KEYCODE_HEATER_NORMAL)
			{
				if(stKey.count > 1000)		
				{
					stKey.count = 1000;
				}
				else if(stKey.count == 300)		 //长按�?秒赋�?
				{
					KEY_Push_CodeFIFO(KEYCODE_PRESS_3s);
					stKey.burst=0;
					stKey.burst_delay=0;
				}
				else if(stKey.count == 200)				//长按 2 �?
				{
				
				}
			}
		}
		else										//无按键动�?	--> 无按键不处理
		{
			stKey.count=0;							//其他组合按键长按无效
			
		}
	}
}

