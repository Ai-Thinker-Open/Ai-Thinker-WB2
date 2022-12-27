#ifndef CST816_H
#define CST816_H

#include "FreeRTOS.h"
#include "queue.h"
#include <stdint.h>

#define CST816_DEFAULT_ADDR 0x15
#define CST816_SCL 20
#define CST816_SDA 21
#define CST816_INT 11

extern QueueHandle_t touch_point_queue;

typedef struct {
    uint8_t fingers;
    uint8_t x;
    uint8_t y;
} touch_point_t;

void cst816_init();

#endif // CST816_H