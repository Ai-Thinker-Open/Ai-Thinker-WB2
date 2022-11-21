#include <FreeRTOS.h>
#include <task.h>
#include <stdio.h>
#include <string.h>
#include <aos/yloop.h>
#include <aos/kernel.h>
#include <lwip/tcpip.h>
#include <wifi_mgmr_ext.h>
#include <hal_wifi.h>
#include "wifi_execute.h"
#include <blog.h>
#ifdef EASYFLASH_ENABLE
#include <easyflash.h>
#endif

void main()
{
    puts("[OS] main entry\r\n");
    bl_sys_init();
    xTaskCreate(wifi_execute, (char*)"wifi execute", 1024 * 3, NULL, 15, NULL);
    tcpip_init(NULL, NULL);
    blog_info("all things ready");
}