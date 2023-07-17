#ifndef ALI_MQTT_INIT__
#define ALI_MQTT_INIT__

#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <stdbool.h>

#include <time.h>
#include <FreeRTOS.h>
#include <task.h>
#include <event_groups.h>
#include "semphr.h"

#include <wifi_mgmr_ext.h>
#include "cJSON.h"

uint32_t ali_mqtt_init(void);

/**
 * @brief
 *
 */
int32_t aiot_mqtt_stop(void);

void start_update_data(void);
// void mqtt_device_data_parse(void *handle, const char *message);

#endif
