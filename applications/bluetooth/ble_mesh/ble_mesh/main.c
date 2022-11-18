#include <FreeRTOS.h>
#include <stdio.h>
#include <aos/kernel.h>
#include <aos/yloop.h>
#include <event_device.h>
#include <bl_sys.h>
#include <bl_timer.h>
#include <sntp.h>
#include <bl_sys_time.h>
#include <device/vfs_uart.h>
#include <wifi_bt_coex.h>
#include "key.h"

#define TIME_5MS_IN_32768CYCLE  (164) // (5000/(1000000/32768))

#define CONFIG_BT_MESH_PROVISIONER 0
uint16_t addr = 0X0004;

bool pds_start = false;
extern void ble_stack_start(void);

#if ( configUSE_TICKLESS_IDLE != 0 )
void vApplicationSleep( TickType_t xExpectedIdleTime_ms )
{
#if defined(CFG_BLE_PDS)
    int32_t bleSleepDuration_32768cycles = 0;
    int32_t expectedIdleTime_32768cycles = 0;
    eSleepModeStatus eSleepStatus;
    bool freertos_max_idle = false;

    if (pds_start == 0)
        return;

    if(xExpectedIdleTime_ms + xTaskGetTickCount() == portMAX_DELAY){
        freertos_max_idle = true;
    }else{   
        xExpectedIdleTime_ms -= 1;
        expectedIdleTime_32768cycles = 32768 * xExpectedIdleTime_ms / 1000;
    }

    if((!freertos_max_idle)&&(expectedIdleTime_32768cycles < TIME_5MS_IN_32768CYCLE)){
        return;
    }

    /*Disable mtimer interrrupt*/
    *(volatile uint8_t*)configCLIC_TIMER_ENABLE_ADDRESS = 0;

    eSleepStatus = eTaskConfirmSleepModeStatus();
    if(eSleepStatus == eAbortSleep || ble_controller_sleep_is_ongoing())
    {
        /*A task has been moved out of the Blocked state since this macro was
        executed, or a context siwth is being held pending.Restart the tick 
        and exit the critical section. */
        /*Enable mtimer interrrupt*/
        *(volatile uint8_t*)configCLIC_TIMER_ENABLE_ADDRESS = 1;
        //printf("%s:not do ble sleep\r\n", __func__);
        return;
    }

    bleSleepDuration_32768cycles = ble_controller_sleep();

	if(bleSleepDuration_32768cycles < TIME_5MS_IN_32768CYCLE)
    {
        /*BLE controller does not allow sleep.  Do not enter a sleep state.Restart the tick 
        and exit the critical section. */
        /*Enable mtimer interrrupt*/
        //printf("%s:not do pds sleep\r\n", __func__);
        *(volatile uint8_t*)configCLIC_TIMER_ENABLE_ADDRESS = 1;
    }
    else
    {
        printf("%s:bleSleepDuration_32768cycles=%ld\r\n", __func__, bleSleepDuration_32768cycles);
        if(eSleepStatus == eStandardSleep && ((!freertos_max_idle) && (expectedIdleTime_32768cycles < bleSleepDuration_32768cycles)))
        {
           hal_pds_enter_with_time_compensation(1, expectedIdleTime_32768cycles - 40);//40);//20);
        }
        else
        {
           hal_pds_enter_with_time_compensation(1, bleSleepDuration_32768cycles - 40);//40);//20);
        }
    }
#endif
}
#endif

extern void blemeshcli_beacon_listen_extern(void);
extern int blemeshcli_provision_adv_extern(u16_t addr_base);
extern int blemeshcli_app_key_add_extern(u16_t addr);
extern int blemeshcli_mod_app_bind_extern(u16_t addr, u16_t model_id);
extern int blemeshcli_vendor_cli_extern(u16_t addr, u8_t *tx_buff, uint8_t datalen);

uint32_t systick = 0;

#define KEY_PUTDOWN  get_key_value()

typedef struct{
	uint32_t tick;
	uint32_t tick_cnt;
	uint32_t tick_start;
	u8_t	 adcgetted;
	u8_t       err_cnt;
}TYPE_SYSTEM;

TYPE_SYSTEM stSys;
#define g_Sys_Clock_Tick	stSys.tick

u32_t Time_Passing(u32_t Time_Slicing)
{
	u32_t time;
	if(Time_Slicing <= g_Sys_Clock_Tick )
	{
		time = (g_Sys_Clock_Tick - Time_Slicing);
	}
	else
	{
		time = g_Sys_Clock_Tick;
		time += ((u16_t)0xFFFFFFFF - Time_Slicing);
	}
	return(time);
}

u8_t TimePass_Check(u32_t *timer_defned, u32_t cnt)
{
	if(Time_Passing(*timer_defned)>=cnt)
	{
		*timer_defned=g_Sys_Clock_Tick;
		return 1;
	}
	else
		return 0;
}

void blemmesh_sendata(uint16_t addr)
{
    u16_t cnt = 10;
    u8_t txbuff[8];
    for (int i = 0; i < sizeof(txbuff); i++) 
        txbuff[i] = i;

    while (cnt--) {
        blemeshcli_vendor_cli_extern(addr, txbuff, sizeof(txbuff));
        vTaskDelay(200);
    }
}

#define NETWORK_NUM 2
u8_t network_successflag = 0;
u32_t network_stat[NETWORK_NUM] = {0};
static u8_t network_cnt =0;

void Sys_Msg_Proce_IDLE(uint8_t key)
{ 
	switch (key)
	{
		case KEYCODE_KEY_PRESSED_x1:
			MSG("SYS-IDLE: Touch_Key Press\r\n");

#if CONFIG_BT_MESH_PROVISIONER
            addr = 0X0003;
            blemmesh_sendata(addr);
#else
            blemeshcli_mod_app_bind_extern(addr, 0x0003);
            addr = 0x0001;
            blemmesh_sendata(addr);
#endif

			break;
		case KEYCODE_PRESS_x5:
			MSG("SYS-IDLE: Touch_Key Press x5\r\n");
			break;
		case KEYCODE_PRESS_x4:
			MSG("SYS-IDLE: Touch_Key Press x4\r\n");
			
			break;
		case KEYCODE_PRESS_x3:
			MSG("SYS-IDLE: Touch_Key Press x3\r\n");

			break;
		case KEYCODE_PRESS_x2:
			MSG("INFO(ETM): KeyPress x2->FIRE START!\r\n");
#if CONFIG_BT_MESH_PROVISIONER
             addr = 0X0004;
             blemmesh_sendata(addr);
#endif
			break;
		case KEYCODE_PRESS_3s:
			MSG("SYS-IDLE: Touch_Key Press 3S\r\n");

#if CONFIG_BT_MESH_PROVISIONER
                int err;

                if (network_successflag) {
                    for (int i = 0; i < NETWORK_NUM; i++) {
                        if (network_stat[i] == 0X0003) {
                            if (network_stat[i+1] == 0X0004)
                                return ;
                            else network_stat[i+1] = 0X0004;
                        }
                    }
                }
                
                blemeshcli_beacon_listen_extern();
                err = blemeshcli_provision_adv_extern(addr);
                vTaskDelay(2500);
                if (!err) {
                    
                    err = blemeshcli_app_key_add_extern(addr);
                    if (err) {   
                        printf("recond app key add err%d \n", err);
                        err = blemeshcli_app_key_add_extern(addr);
                        if (err) break;
                    }
                    vTaskDelay(300);
                    err = blemeshcli_mod_app_bind_extern(addr, 0x0002);
                    if (err) {   
                        printf("recond mod app bind addr0X%04X err%d \n",addr, err);
                        err = blemeshcli_mod_app_bind_extern(addr, 0x0002);
                        if (err) break;
                    }

                    network_successflag = 1;
                    network_stat[network_cnt++] = addr;
                    addr += 1;

                    if(addr == 0x0005) 
                        addr = 0x0003;
                    printf("=====addr0X%04X==============\r\n",addr);
                }  
#else
                extern void blemeshcli_pb_extern(void);
                blemeshcli_pb_extern();
#endif

			break;		
		default:
			break;
	}
}


static void proc_hellow_entry(void *pvParameters)
{
    uint8_t event;
    vTaskDelay(500);
    key_init_cfg();
    stSys.tick_cnt=stSys.tick_start = stSys.tick;

    while (1) {

        if(TimePass_Check(&stSys.tick_cnt,1))
        {
            KEY_Scan();
        }
        event = KEY_Pull_CodeFIFO();
        Sys_Msg_Proce_IDLE(event);
    }

    vTaskDelete(NULL);
}

#ifndef CONFIG_BT_TL
static void cmd_stack_ble(char *buf, int len, int argc, char **argv)
{
    ble_stack_start();
}
#endif

static void event_cb_key_event(input_event_t *event, void *private_data)
{
    switch (event->code) {
        case KEY_1:
        {
            printf("[KEY_1] [EVT] INIT DONE %lld\r\n", aos_now_ms());
            printf("short press \r\n");
        }
        break;
        case KEY_2:
        {
            printf("[KEY_2] [EVT] INIT DONE %lld\r\n", aos_now_ms());
            printf("long press \r\n");
        }
        break;
        case KEY_3:
        {
            printf("[KEY_3] [EVT] INIT DONE %lld\r\n", aos_now_ms());
            printf("longlong press \r\n");
        }
        break;
        default:
        {
            printf("[KEY] [EVT] Unknown code %u, %lld\r\n", event->code, aos_now_ms());
            /*nothing*/
        }
    }
}

static void proc_main_entry(void *pvParameters)
{
    cmd_stack_ble(NULL, 0, 0, NULL);

#if CONFIG_BT_MESH_PROVISIONER

    extern void blemeshcli_pvnr_init_extern(void);
    blemeshcli_pvnr_init_extern();
#else

    extern void blemeshcli_init_extern(void);
    blemeshcli_init_extern();
#endif

    vTaskDelete(NULL);
}

TimerHandle_t xTimers;

 void vTimerCallback( TimerHandle_t xTimer )
 {
    configASSERT( xTimer );
    stSys.tick++;
    // printf("timer = %d \r\n", systick);
 }


void main()
{
    bl_sys_init();

    puts("[OS] Starting proc_hellow_entry task ccccccccccccc...\r\n");
    xTaskCreate(proc_hellow_entry, (char*)"hellow", 512, NULL, 15, NULL);
    xTaskCreate(proc_main_entry, (char*)"main_entry", 1024, NULL, 15, NULL);
    xTimers = xTimerCreate("Timer", 10,  pdTRUE, ( void * ) 0, vTimerCallback);
    xTimerStart( xTimers, 0 );
}
