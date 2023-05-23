#ifndef TM1721_H_
#define TM1721_H_

#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <stdint.h>

/************ GPIO LIB ************/
#include <aos/kernel.h>
#include <bl_gpio.h>
#include <bl602_gpio.h>
#include <hosal_gpio.h>
#include <bl602.h>
#include "bl_timer.h"

// #define DATA 1    // 写数据模式
// #define COMMAND 0 // 命令模式

#define CLKPIN 17
#define DATAPIN 3
#define CSPIN 14

typedef enum
{
    OPERAT_CMD = 0,
    DATA_CMD = 1,
    ADDR_CMD,
    SHOW_CMD,
} CMD_type_t;

typedef enum
{
    FOUR_PSEG = 0,
    THREE_SEG_ONE_PWM = 1,
    TWO_SEG_TWO_PWM,
    FOUR_PWM,
} pwm_seg_select_t;

typedef enum
{
    FOUR_KSEG = 0,
    THREE_SEG_ONE_KEY = 1,
    TWO_SEG_TWO_KEY,
    FOUR_KEY,
} key_seg_select_t;

typedef enum
{
    FOUR_GSEG = 0,
    THREE_SEG_ONE_SW = 1,
    TWO_SEG_TWO_SW,
    FOUR_SW,
} gpio_seg_select_t;

typedef struct
{
    pwm_seg_select_t pwm_seg;
    gpio_seg_select_t gpio_seg;
    key_seg_select_t key_seg;
} operation_params_t;

typedef enum
{
    ADDR_CONTINU = 0,
    ADDR_FIX = 1,
} addr_type_t;

typedef enum
{
    GENERAL_MODE = 0,
    FACTORY_MODE = 1,
} test_mode_t;

typedef enum
{
    WRITE_MODE = 0,
    WRITE_PWM_MODE = 1,
    READ_KEY_MODE = 2,
    READ_SW_MODE = 3,
} write_mode_t;

typedef struct
{
    addr_type_t addr_type;
    test_mode_t test_mode;
    write_mode_t write_mode;
} data_params_t;

typedef enum
{
    THREE_PART = 0,
    TWO_PART = 1,
} duty_cycle_t; // extinction width setting 消光占空比设置，越大，越暗

typedef enum
{
    LIGHT_OFF = 0,
    LIGHT_ON = 1,
} light_switch_t;

typedef struct
{
    duty_cycle_t duty_cycle;
    light_switch_t light_switch;
} light_ctrl_params_t;

void TM1721_init(void);
uint8_t TM1721_write_data_conytinous(uint8_t first_addr, uint8_t *Dbyte, uint8_t addr_num);
uint8_t TM1721_write_data_multiaddr(uint8_t *addr_group, uint8_t *Dbyte, uint8_t num);
uint8_t TM1721_read_key_status(uint8_t *data);

#endif
