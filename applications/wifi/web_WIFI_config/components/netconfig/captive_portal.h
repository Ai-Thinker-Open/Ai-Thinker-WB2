#pragma once

#include <string.h>
#include <stdio.h>
#include <FreeRTOS.h>
#include <lwip/pbuf.h>
#include <lwip/udp.h>
#include <lwip/netifapi.h>
#include <utils_dns.h>

void captive_portal_start(void);
void captive_portal_deinit(void);
