#ifndef __WIFI_EXECUTE_H__
#define __WIFI_EXECUTE_H__

#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>

#include <FreeRTOS.h>
#include "portmacro.h"
#include <task.h>
#include <timers.h>
#include "event_groups.h"
#include <aos/kernel.h>
#include <aos/yloop.h>
#include <event_device.h>
#include <easyflash.h>

#include <hal_sys.h>
#include <bl_wifi.h>
#include <hal_wifi.h>
#include <bl_timer.h>
#include <bl_sys_time.h>
#include <bl_sys.h>

#include "lwip/err.h"
#include "lwip/sys.h"
#include "lwip/netdb.h"

#include <wifi_mgmr_ext.h>

#define WIFI_RECONN_INTERVAL_SEC 15
#define WIFI_RECONN_REPEAT_TIMES 10

#define IP_SET_ADDR(a, b, c, d) (((uint32_t)((a)&0xff)) |       \
                                 ((uint32_t)((b)&0xff) << 8) |  \
                                 ((uint32_t)((c)&0xff) << 16) | \
                                 ((uint32_t)((d)&0xff) << 24))

typedef enum
{
    WIFI_COUNTRY_CODE_CN = 0,
    WIFI_COUNTRY_CODE_JP,
    WIFI_COUNTRY_CODE_US,
    WIFI_COUNTRY_CODE_EU,
    WIFI_COUNTRY_CODE_MAX
} country_code_type;

typedef struct
{
    uint32_t ip;
    uint32_t gateway;
    uint32_t netmask;
} wifi_ip_params_t;

typedef enum
{
    WIFI_AUTOCONN_DISABLE = 0,
    WIFI_AUTOCONN_ENABLE,
} wifi_auto_conn;

void wifi_background_init(country_code_type country_code);
void wifi_execute(void *pvParameters);

#endif