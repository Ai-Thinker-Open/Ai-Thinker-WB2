#include <FreeRTOS.h>
#include <task.h>
#include <stdio.h>
#include <cli.h>
#include <netutils/netutils.h>
#include <lwip/tcpip.h>
#include "wifi_execute.h"
#include "demo.h"

static void _cli_init()
{
    /*Put CLI which needs to be init here*/
    xTaskCreate(wifi_execute, (char *)"wifi execute", 1024 * 3, NULL, 15, NULL);
    network_netutils_iperf_cli_register();
    test_cli_init();
}

static void proc_main_entry(void *pvParameters)
{
    _cli_init();

    vTaskDelete(NULL);
}

static void system_thread_init()
{
    /*nothing here*/
}

int main()
{
    system_thread_init();

    puts("[OS] proc_main_entry task...\r\n");
    xTaskCreate(proc_main_entry, (char*)"main_entry", 1024, NULL, 15, NULL);
    tcpip_init(NULL, NULL);
    return 0;
}
