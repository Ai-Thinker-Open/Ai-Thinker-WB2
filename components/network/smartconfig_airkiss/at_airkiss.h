#ifndef __AT_AIRKISS_H_
#define __AT_AIRKISS_H_
#include "stdio.h"
#include "stdlib.h"
#include "string.h"
#include "sc_wifi_mgr.h"
#include "airkiss.h"
#include "string.h"
#include "FreeRTOSConfig.h"
#include "FreeRTOS.h"
#include "queue.h"
#include <lwip/netdb.h>
#include "bl_os_system.h"
#include "smartconfig.h"
#include "sc_wifi_mgr.h"
#include <FreeRTOS.h>
#include "task.h"
#include "timers.h"
#include "queue.h"
#include <lwip/netdb.h>
#include <wifi_mgmr_ext.h>
#include <aos/yloop.h>
#include <utils_log.h>
#include <string.h>

#ifdef __AT_AIRKISS_C_
    #define  AT_AIRKISS_EXT
#else
    #define  AT_AIRKISS_EXT  extern
#endif

AT_AIRKISS_EXT int wifi_airkiss_v1_start(void);
AT_AIRKISS_EXT int wifi_airkiss_v1_stop(void);
#endif
