#include <FreeRTOS.h>
#include <task.h>
#include <stdio.h>
#include <lwip/tcpip.h>
#include <blog.h>
#include <easyflash.h>
#include <bl_sys.h>

#include "web_config_app.h"

void main(void)
{
    bl_sys_init();
    easyflash_init();

    puts("[web_config] Starting TCP/IP...\r\n");
    tcpip_init(NULL, NULL);

    xTaskCreate(web_config_wifi_main_task, (char *)"wc_wifi", 1536, NULL, 15, NULL);
}
