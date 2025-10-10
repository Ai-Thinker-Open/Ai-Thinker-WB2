#include <bl_ir.h>
#include <stdio.h>
#include <FreeRTOS.h>
#include <task.h>
#include <bl_irq.h>
#include <bl_sys.h>
#include <easyflash.h>
#include "device_state.h"
#include "wifi_interface.h"
#include <../wifi_mgmr.h>
#include "seg_dev.h"
#include "blog.h"

#include "holoCoreSntp.h"
#include <lwip/tcpip.h>
#include <lwip/dns.h>
#include <lwip/netdb.h>
#include <lwip/sockets.h>
#include <lwip/inet.h>
#include "key_read.h"
#include "user_cli.h"
static ip4_addr_t dns_addr;

void main(void)
{
    bl_sys_init(); // 初始化系统
    user_cli_init();
    seg_dev_init(); // 初始化数码管
    easyflash_init();
    device_state_init(NULL);
    tcpip_init(_startup_sntp, NULL);
    button_init();
    // // 添加 DNS 加快网络连接速度
    inet_aton("223.5.5.5", &dns_addr);
    dns_init();
    dns_setserver(0, &dns_addr);

    while (1)
    {
        blog_debug("HeapSize=%d ", xPortGetFreeHeapSize());

        vTaskDelay(pdMS_TO_TICKS(1000));
    }
}