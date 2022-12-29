/*
 * This file is subject to the terms and conditions defined in
 * file 'LICENSE', which is part of this source code package.
 * Tuan PM <tuanpm at live dot com>
 */
#pragma once

#include <FreeRTOS.h>
#include <event_groups.h>

#include <sys/time.h>

char *platform_create_id_string(void);
int platform_random(int max);
long long platform_tick_get_ms(void);
void ms_to_timeval(int timeout_ms, struct timeval *tv);

#define AXK_MEM_CHECK(TAG, a, action) if (!(a)) {                                                      \
        blog_error("%s(%d): %s",  __FUNCTION__, __LINE__, "Memory exhausted"); \
        action;                                                                                         \
        }

#define AXK_OK_CHECK(TAG, a, action) if ((a) != AXK_OK) {                                                     \
        blog_error("%s(%d): %s", __FUNCTION__, __LINE__, "Failed with non AXK_OK err code"); \
        action;                                                                                               \
        }
