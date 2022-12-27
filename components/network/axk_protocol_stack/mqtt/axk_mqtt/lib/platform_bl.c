#include "platform.h"

#include "axk_log.h"
#include <sys/time.h>
#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>

#include <bl_wifi.h>
#include <bl_sec.h>
#include <bl_timer.h>

static const char *TAG = "PLATFORM";

#define MAX_ID_STRING (32)

char *platform_create_id_string(void)
{
    uint8_t mac[6];
    char *id_string = calloc(1, MAX_ID_STRING);
    AXK_MEM_CHECK(TAG, id_string, return NULL);
    bl_wifi_mac_addr_get(mac);
    sprintf(id_string, "BL60X_%02x%02X%02X", mac[3], mac[4], mac[5]);
    return id_string;
}

int platform_random(int max)
{
    return bl_rand() % max;
}

long long platform_tick_get_ms(void)
{
    return bl_timer_now_us64() / 1000;
}

void ms_to_timeval(int timeout_ms, struct timeval *tv)
{
    tv->tv_sec = timeout_ms / 1000;
    tv->tv_usec = (timeout_ms - (tv->tv_sec * 1000)) * 1000;
}
