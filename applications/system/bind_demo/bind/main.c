#include <stdio.h>
#include <string.h>
#include <FreeRTOS.h>
#include <task.h>
#include <bl_gpio.h>
#include "blog.h"
#include "dev_interface.h"
#include "syn_user_info.h"

#define GPIO_LED_PIN 5

uint8_t g_bind_sta = 0;

static void syn_event_cb(uint8_t event, Event_Msg_t* pMsg)
{
    switch (event)
    {
        case SYN_EVT_INIT_INFO:
            break;
        case SYN_EVT_COMPLETE:
            blog_info("SYN_EVT_COMPLETE: %d", pMsg->state);
            break;

        default:
            break;
    }
}

void bind_check(void)
{
    syn_user_info(syn_event_cb, &g_bind_sta);

    if (0x27 != g_bind_sta) {
        const char* notify = "invaild bind info";

        blog_error("%s", notify);
        while (1) {
            vTaskDelay(100);
        }
    }
}

void blink_test(void* param)
{
    uint8_t value = 1;
    while (1) {
        printf("running\r\n");
        vTaskDelay(1000);
    }
}

void main(void)
{
    bind_check();
    xTaskCreate(blink_test, "blink", 1024, NULL, 15, NULL);
}


