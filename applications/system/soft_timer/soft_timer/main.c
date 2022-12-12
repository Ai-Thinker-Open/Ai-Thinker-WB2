
#include <stdio.h>
#include <string.h>
#include <FreeRTOS.h>
#include <task.h>
#include <blog.h>
#include "bl_sys.h"
#include <bl_os_hal.h>
#include "timers.h"
#include <blog.h>

struct timer_adpt *timer1;
struct timer_adpt *timer2;
struct timer_adpt *timer3;
uint32_t delay_ms;

static void timer1_cb(void *data)
{
    static int cnt;
    cnt++;
    blog_info("timer1_cb:%d\r\n",cnt);
}

static void timer2_cb(void *data)
{
    blog_info("timer2_cb:delete timer2 and stop timer1\r\n");
    bl_os_timer_delete(timer2, BL_OS_NO_WAITING);      //delete timer2
    bl_os_timer_stop(timer1,BL_OS_NO_WAITING);         //stop timer1
}

static void timer3_cb(void *data)
{
    blog_info("timer3_cb:start timer1 again and change timer cycle\r\n");
    delay_ms=1000;           //cycle =1000ms
    bl_os_timer_start_periodic(timer1,(delay_ms / 1000),((delay_ms % 1000) * 1e6));
}

void main(void)
{
    blog_set_level_log_component(BLOG_LEVEL_INFO, "soft_timer");
    delay_ms=100;
    timer1=bl_os_timer_create(timer1_cb,NULL);
    bl_os_timer_start_periodic(timer1,(delay_ms / 1000),((delay_ms % 1000) * 1e6));     // cycle =100ms，start periodic

    timer2=bl_os_timer_create(timer2_cb,NULL);
    delay_ms=1000;
    bl_os_timer_start_periodic(timer2,(delay_ms / 1000),((delay_ms % 1000) * 1e6));     //cycle =1000ms，start periodic

    timer3=bl_os_timer_create(timer3_cb,NULL);
    delay_ms=3000;
    bl_os_timer_start_once(timer3,(delay_ms / 1000),((delay_ms % 1000) * 1e6));         //cycle =3000ms，start once
}
