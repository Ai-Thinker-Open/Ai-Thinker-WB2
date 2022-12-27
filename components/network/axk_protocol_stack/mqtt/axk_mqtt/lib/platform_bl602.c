#include "platform.h"

#ifdef AXK_PLATFORM
#include "axk_log.h"
#include "axk_mac.h"
#include "axk_random.h"
#include <sys/time.h>
#include <stdlib.h>
#include <stdint.h>

static const char *TAG = "PLATFORM";

#define MAX_ID_STRING (32)

char *platform_create_id_string(void)
{
    uint8_t mac[6];
    char *id_string = calloc(1, MAX_ID_STRING);
    AXK_MEM_CHECK(TAG, id_string, return NULL);
    axk_read_mac(mac, AXK_MAC_WIFI_STA);
    sprintf(id_string, "BL602_%02x%02X%02X", mac[3], mac[4], mac[5]);
    return id_string;
}

int platform_random(int max)
{
    return axk_random() % max;
}

long long platform_tick_get_ms(void)
{
    struct timeval te;
    gettimeofday(&te, NULL); // get current time
    long long milliseconds = te.tv_sec * 1000LL + te.tv_usec / 1000; // calculate milliseconds
    // printf("milliseconds: %lld\n", milliseconds);
    return milliseconds;
}

void ms_to_timeval(int timeout_ms, struct timeval *tv)
{
    tv->tv_sec = timeout_ms / 1000;
    tv->tv_usec = (timeout_ms - (tv->tv_sec * 1000)) * 1000;
}
#endif
