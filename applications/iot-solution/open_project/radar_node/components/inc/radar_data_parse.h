#ifndef RADAR_DATA_PARSE_H
#define RADAR_DATA_PARSE_H

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <FreeRTOS.h>

#include <task.h>
#include <lwip/sockets.h>
#include <blog.h>

#define FRAME_LENGTH 23

typedef struct {
    uint8_t data_type;
    uint8_t target_status;
}radar_status_t;

bool radar_data_parse(radar_status_t *radar_status, uint8_t *buffer);

#endif