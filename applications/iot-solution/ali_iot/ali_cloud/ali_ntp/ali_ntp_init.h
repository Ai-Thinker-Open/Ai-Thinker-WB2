#ifndef ALI_NTP_INIT_H__
#define ALI_NTP_INIT_H__

#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <pthread.h>

#include <time.h>
#include <FreeRTOS.h>
#include <task.h>
#include <event_groups.h>

int32_t ali_ntp_init(void *handle);

#endif // !ALI_NTP_INIT_H__