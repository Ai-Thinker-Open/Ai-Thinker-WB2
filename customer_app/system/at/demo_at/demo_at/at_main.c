/**
  ******************************************************************************
  * @file    at_main.c
  * @version V1.0
  * @date
  * @brief   This file is part of AT command framework
  ******************************************************************************
  */

#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>
#include <stdbool.h>
#include <stdarg.h>
#include <FreeRTOS.h>
#include <task.h>

#include "at_main.h"
#include "at_core.h"
#include "at_port.h"
#include "at_base_cmd.h"
#include "at_base_config.h"
#include "at_user_cmd.h"
#include "at_wifi_cmd.h"
#include "at_net_cmd.h"
#include "at_mqtt_cmd.h"
#include "at_http_cmd.h"
#include "at_through.h"
#include "at_ble_cmd.h"

#define ATCMD_TASK_STACK_SIZE 1024
#define ATCMD_TASK_PRIORITY 15
#define AT_CMD_PRINTF printf

void at_response_result(uint8_t result_code)
{
    if (!at) {
        AT_CMD_PRINTF("ERROR: atcmd has not been initialized\r\n");
        return;
    }

    if (AT_RESULT_CODE_OK == result_code)
        at->device_ops.write_data((uint8_t *)AT_CMD_MSG_OK, strlen(AT_CMD_MSG_OK));
    else if (AT_RESULT_CODE_ERROR == result_code)
        at->device_ops.write_data((uint8_t *)AT_CMD_MSG_ERROR, strlen(AT_CMD_MSG_ERROR));
    else if (AT_RESULT_CODE_FAIL == result_code)
        at->device_ops.write_data((uint8_t *)AT_CMD_MSG_FAIL, strlen(AT_CMD_MSG_FAIL));
    else if (AT_RESULT_CODE_SEND_OK == result_code)
        at->device_ops.write_data((uint8_t *)AT_CMD_MSG_SEND_OK, strlen(AT_CMD_MSG_SEND_OK));
    else if (AT_RESULT_CODE_SEND_FAIL == result_code)
        at->device_ops.write_data((uint8_t *)AT_CMD_MSG_SEND_FAIL, strlen(AT_CMD_MSG_SEND_FAIL));
}

void at_response_string(const char *format , ...)
{
    va_list ap;
    char outbuf[64];

    if (!at) {
        AT_CMD_PRINTF("ERROR: atcmd has not been initialized\r\n");
        return;
    }

    memset(outbuf, 0, 64);
    va_start(ap, format);
    vsnprintf(outbuf, 63, format, ap);
    va_end(ap);

    at->device_ops.write_data((uint8_t *)outbuf, strlen(outbuf));
}

int at_register_function(at_func restore, at_func stop)
{
    if (!at) {
        AT_CMD_PRINTF("ERROR: atcmd has not been initialized\r\n");
        return -1;
    }

    if (at->function_num < AT_CMD_MAX_FUNC) {
        at->function_ops[at->function_num].restore_func = restore;
        at->function_ops[at->function_num].stop_func = stop;
        at->function_num++;
        return 0;
    }
    else {
        AT_CMD_PRINTF("ERROR: register function failed\r\n");
        return -1;
    }
}

int at_set_work_mode(at_work_mode mode)
{
    at->incmd = mode;
    return 0;
}

at_work_mode at_get_work_mode(void)
{
    return at->incmd;
}

static void at_main_task(void *pvParameters)
{
    int ret;
    int len = 0;
    at_work_mode cmd_mode = at->incmd;
    int recv_size = 0;

    at->device_ops.write_data((uint8_t *)AT_CMD_MSG_WEL, strlen(AT_CMD_MSG_WEL));
    while(!at->exit) {
        if (cmd_mode != at->incmd) {
            if (at->incmd == AT_WORK_MODE_CMD)
                ;
            else
                at->device_ops.write_data((uint8_t *)AT_CMD_MSG_WAIT_DATA, strlen(AT_CMD_MSG_WAIT_DATA));
            cmd_mode = at->incmd;
        }

        if (cmd_mode == AT_WORK_MODE_CMD) {
            ret  = at->device_ops.read_data((uint8_t *)(at->inbuf + len), AT_CMD_MAX_LEN - len);
            if (ret > 0) {
                len += ret;
                len = at_cmd_input((uint8_t *)at->inbuf, len);
            }
        }
        else {
            recv_size = at_through_max_length();
            if (recv_size == 0) {
                at->device_ops.write_data((uint8_t *)AT_CMD_MSG_SEND_OK, strlen(AT_CMD_MSG_SEND_OK));
                at_set_work_mode(AT_WORK_MODE_CMD);
                continue;
            }
            else if (recv_size < 0) {
                at->device_ops.write_data((uint8_t *)AT_CMD_MSG_SEND_FAIL, strlen(AT_CMD_MSG_SEND_FAIL));
                at_set_work_mode(AT_WORK_MODE_CMD);
                continue;
            }

            ret = at->device_ops.read_data((uint8_t *)(at->inbuf), recv_size);
            if (ret > 0) {
                ret = at_through_input((uint8_t *)at->inbuf, ret);
                len = 0;

                if (ret == -1) {
                    at_set_work_mode(AT_WORK_MODE_CMD);
                    if (at_base_config->sysmsg_cfg.bit.quit_throughput_msg)
                        at->device_ops.write_data((uint8_t *)AT_CMD_MSG_QUIT_THROUGHPUT, strlen(AT_CMD_MSG_QUIT_THROUGHPUT));
                }
                else if (ret == -2) {
                    at->device_ops.write_data((uint8_t *)AT_CMD_MSG_SEND_CANCELLED, strlen(AT_CMD_MSG_SEND_CANCELLED));
                    at_set_work_mode(AT_WORK_MODE_CMD);
                }
            }
        }
    }

    vTaskDelete(NULL);
}

int at_module_init(void)
{
    int ret = -1;
    int bufLen = (AT_THROUGH_MAX_LEN > AT_CMD_MAX_LEN) ? AT_THROUGH_MAX_LEN : AT_CMD_MAX_LEN;
 
    if (at) {
        AT_CMD_PRINTF( "ERROR: atcmd has been initialized\r\n");
        return -1;
    }

    at = (struct at_struct *)pvPortMalloc(sizeof(struct at_struct) + bufLen);
    if (at == NULL) {
        return -1;
    }

    memset((void *)at, 0, sizeof(struct at_struct));
    at->initialized = 0;
    at->echo = 1;
    at->syslog = 0;
    at->store = 1;
    at->exit = 0;
    at->incmd = AT_WORK_MODE_CMD;
    at->device_ops.init_device = at_port_init;
    at->device_ops.deinit_device = at_port_deinit;
    at->device_ops.read_data = at_port_read_data;
    at->device_ops.write_data = at_port_write_data;
    at->inbuf = (char *)((char *)at + sizeof(struct at_struct));

    ret = at->device_ops.init_device();
    if (ret < 0) {
        AT_CMD_PRINTF("ERROR: init at cmd device failed, ret = %d\r\n", ret);
        goto INIT_ERROR;
    }

    /* register base AT command */
    at_base_cmd_regist();

    ret = xTaskCreate(at_main_task, (char*)"at_main_task", ATCMD_TASK_STACK_SIZE, NULL, ATCMD_TASK_PRIORITY, NULL);
    if (ret != pdPASS) {
        AT_CMD_PRINTF( "ERROR: create at_main_task failed, ret = %d\r\n", ret);
        goto INIT_ERROR;
    }

    /* register user AT command */
    at_user_cmd_regist();
    /* register wifi AT command */
    at_wifi_cmd_regist();
    /* register network AT command */
    at_net_cmd_regist();
    /* register mqtt AT command */
    at_mqtt_cmd_regist();
    /* register http AT command */
    at_http_cmd_regist();

    at_ble_cmd_regist();

    at->initialized = 1;
    return 0;

INIT_ERROR:
    if (at) {
        vPortFree(at);
        at = NULL;
    }
    return -1;
}

int at_module_deinit(void)
{
    if (!at) {
        AT_CMD_PRINTF("ERROR: atcmd has not been initialized\r\n");
        return -1;
    }

    at->exit = 1;

    /* wait at_main exit*/
    vTaskDelay(1000);

    at->device_ops.deinit_device();
    vPortFree(at);
    at = NULL;
    return 0;
}

int at_module_func(char *cmd, int (*resp_func) (uint8_t *data, int len))
{
    int ret;
    void *func = NULL;

    if (!at) {
        AT_CMD_PRINTF("ERROR: atcmd has not been initialized\r\n");
        return -1;
    }

    func = (void *)at->device_ops.write_data;//store atcmd write function
    at->device_ops.write_data = resp_func;
    ret = at_cmd_input((uint8_t *)cmd, strlen(cmd));
    at->device_ops.write_data = func;//recovery atcmd write function
    return ret;
}

