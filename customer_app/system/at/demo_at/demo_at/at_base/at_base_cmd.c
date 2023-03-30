/**
  ******************************************************************************
  * @file    at_base_cmd.c
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
#include <FreeRTOS.h>
#include <task.h>
#include <hal_sys.h>
#include <hal_hbn.h>
#include <utils_string.h>
#include <wifi_hosal.h>
#include <bl_rtc.h>
#include <bl_irq.h>
#include <bl_flash.h>
#include <bl602_xip_sflash.h>
#include <wifi_mgmr_ext.h>

#include "at_main.h"
#include "at_core.h"
#include "at_port.h"
#include "at_base_config.h"

#define AT_CMD_GET_VERSION(v) (int)((v>>24)&0xFF),(int)((v>>16)&0xFF),(int)((v>>8)&0xFF),(int)(v&0xFF)

static int at_exe_cmd_rst(int argc, const char **argv)
{
    int i;

    at_response_string(AT_CMD_MSG_OK);

    /* stop all service */
    for (i = 0; i < AT_CMD_MAX_FUNC; i++) {
        if (at->function_ops[i].stop_func)
            at->function_ops[i].stop_func();
    }

    vTaskDelay(pdMS_TO_TICKS(100));
    hal_reboot();
    return AT_RESULT_CODE_OK;
}

static int at_exe_cmd_gmr(int argc, const char **argv)
{
    char *outbuf = NULL;
    uint32_t core_version;
    char core_compile_time[32];

    outbuf = (char *)pvPortMalloc(1024);
    if (!outbuf)
        return AT_RESULT_CODE_FAIL;

    core_version = at_cmd_get_version();
    at_cmd_get_compile_time(core_compile_time);

    sprintf(outbuf, "AT version:%d.%d.%d.%d(BL602 - %s)\r\n", AT_CMD_GET_VERSION(core_version), core_compile_time);
    sprintf(outbuf+strlen(outbuf), "SDK version:%s\r\n", BL_SDK_VER);
    sprintf(outbuf+strlen(outbuf), "compile time:%s %s\r\n",  __DATE__, __TIME__);
    sprintf(outbuf+strlen(outbuf), "Bin version:%s\r\n", AT_CMD_BIN_VERSION);
    AT_CMD_RESPONSE(outbuf);
    vPortFree(outbuf);

    return AT_RESULT_CODE_OK;
}

static int at_query_cmd_cmd(int argc, const char **argv)
{
    int i, n = 0;
    int t, q, s, e;
    char *name;
    char *outbuf = NULL;

    outbuf = (char *)pvPortMalloc(64*AT_CMD_MAX_NUM);
    if (!outbuf)
        return AT_RESULT_CODE_FAIL;

    memset(outbuf, 0, 64*AT_CMD_MAX_NUM);
    sprintf(outbuf, "+CMD:0,\"AT\",0,0,0,1\r\n");
    for (i = 0, n = 0; i < AT_CMD_MAX_NUM && n < at->num_commands; i++) {
        name = at->commands[i]->at_name;
        if (name) {
            t = at->commands[i]->at_test_cmd ? 1 : 0;
            q = at->commands[i]->at_query_cmd ? 1 : 0;
            s = at->commands[i]->at_setup_cmd ? 1 : 0;
            e = at->commands[i]->at_exe_cmd ? 1 : 0;
            sprintf(outbuf+strlen(outbuf), "+CMD:%d,\"AT%s\",%d,%d,%d,%d\r\n", ++n, name, t, q, s, e);
        }
    }
    AT_CMD_RESPONSE(outbuf);
    vPortFree(outbuf);

    return AT_RESULT_CODE_OK;
}

static int at_setup_cmd_gslp(int argc, const char **argv)
{
    int sleep_time = 0;
    uint8_t weakup_pin = 0xFF;

    AT_CMD_PARSE_NUMBER(0, &sleep_time);

    at_response_string(AT_CMD_MSG_OK);
    vTaskDelay(pdMS_TO_TICKS(100));

    if (sleep_time <= 0) {
        hal_reboot();
    }
    else {
        hal_hbn_init(&weakup_pin, 1);
        hal_hbn_enter((uint32_t)sleep_time);
    }
    return AT_RESULT_CODE_OK;
}

static int at_exe_cmd_close_echo(int argc, const char **argv)
{
    at->echo = 0;
    return AT_RESULT_CODE_OK;
}

static int at_exe_cmd_open_echo(int argc, const char **argv)
{
    at->echo = 1;
    return AT_RESULT_CODE_OK;
}

static int at_exe_cmd_restore(int argc, const char **argv)
{
    int i;

    /* stop all service */
    for (i = 0; i < AT_CMD_MAX_FUNC; i++) {
        if (at->function_ops[i].restore_func)
            at->function_ops[i].restore_func();
    }

    at_response_string(AT_CMD_MSG_OK);
    vTaskDelay(pdMS_TO_TICKS(100));
    hal_reboot();

    return AT_RESULT_CODE_OK;
}

static int at_query_cmd_uart_cur(int argc, const char **argv)
{
    int baudrate;
    uint8_t databits, stopbits, parity, flow_control;
    if (at_port_para_get(&baudrate, &databits, &stopbits, &parity, &flow_control) != 0)
        return AT_RESULT_CODE_FAIL;

    at_response_string("+UART_CUR:%d,%d,%d,%d,%d\r\n", baudrate, databits, stopbits, parity, flow_control);
    return AT_RESULT_CODE_OK;
}

static int at_setup_cmd_uart_cur(int argc, const char **argv)
{
    int baudrate, databits, stopbits, parity, flow_control;
    int ret;

    AT_CMD_PARSE_NUMBER(0, &baudrate);
    AT_CMD_PARSE_NUMBER(1, &databits);
    AT_CMD_PARSE_NUMBER(2, &stopbits);
    AT_CMD_PARSE_NUMBER(3, &parity);
    AT_CMD_PARSE_NUMBER(4, &flow_control);

    if (baudrate < 80 || baudrate > 5000000)
        return AT_RESULT_CODE_ERROR;
    if (databits < 5 || databits > 8)
        return AT_RESULT_CODE_ERROR;
    if (stopbits < 1 || stopbits > 3)
        return AT_RESULT_CODE_ERROR;
    if (parity < 0 || parity > 2)
        return AT_RESULT_CODE_ERROR;
    if (flow_control < 0 || flow_control > 3)
        return AT_RESULT_CODE_ERROR;

    at_response_string(AT_CMD_MSG_OK);
    vTaskDelay(pdMS_TO_TICKS(100));
    ret = at_port_para_set(baudrate, (uint8_t)databits, (uint8_t)stopbits, (uint8_t)parity, (uint8_t)flow_control);
    if (ret != 0)
        return AT_RESULT_CODE_FAIL;
    else
        return AT_RESULT_CODE_MAX;
}

static int at_query_cmd_uart_def(int argc, const char **argv)
{
    at_response_string("+UART_DEF:%d,%d,%d,%d,%d\r\n", at_base_config->uart_cfg.baudrate,
            at_base_config->uart_cfg.databits,
            at_base_config->uart_cfg.stopbits,
            at_base_config->uart_cfg.parity,
            at_base_config->uart_cfg.flow_control);
    return AT_RESULT_CODE_OK;
}

static int at_setup_cmd_uart_def(int argc, const char **argv)
{
    int baudrate, databits, stopbits, parity, flow_control;

    AT_CMD_PARSE_NUMBER(0, &baudrate);
    AT_CMD_PARSE_NUMBER(1, &databits);
    AT_CMD_PARSE_NUMBER(2, &stopbits);
    AT_CMD_PARSE_NUMBER(3, &parity);
    AT_CMD_PARSE_NUMBER(4, &flow_control);

    if (baudrate < 80 || baudrate > 5000000)
        return AT_RESULT_CODE_ERROR;
    if (databits < 5 || databits > 8)
        return AT_RESULT_CODE_ERROR;
    if (stopbits < 1 || stopbits > 3)
        return AT_RESULT_CODE_ERROR;
    if (parity < 0 || parity > 2)
        return AT_RESULT_CODE_ERROR;
    if (flow_control < 0 || flow_control > 3)
        return AT_RESULT_CODE_ERROR;

    at_base_config->uart_cfg.baudrate = baudrate;
    at_base_config->uart_cfg.databits = (uint8_t)databits;
    at_base_config->uart_cfg.stopbits = (uint8_t)stopbits;
    at_base_config->uart_cfg.parity = (uint8_t)parity;
    at_base_config->uart_cfg.flow_control = (uint8_t)flow_control;
    at_base_config_save(AT_CONFIG_KEY_UART_CFG);
    return AT_RESULT_CODE_OK;
}

static int at_query_cmd_sleep(int argc, const char **argv)
{
    at_response_string("+SLEEP:%d\r\n", at_base_config->sleep_mode);
    return 0;
}

static int at_setup_cmd_sleep(int argc, const char **argv)
{
    int sleep_mode;

    AT_CMD_PARSE_NUMBER(0, &sleep_mode);

    if (sleep_mode == BASE_SLEEP_MODE_DISABLE) {
        if (at_base_config->sleep_mode != BASE_SLEEP_MODE_DISABLE) {
            if (at_base_config->sleep_mode == BASE_SLEEP_MODE_MODEM)
                wifi_mgmr_sta_ps_exit();
            at_base_config->sleep_mode = BASE_SLEEP_MODE_DISABLE;
        }
    }
    else if (sleep_mode == BASE_SLEEP_MODE_MODEM) {
        if (at_base_config->sleep_mode != BASE_SLEEP_MODE_MODEM) {
            wifi_mgmr_sta_ps_enter(WIFI_COEX_PM_STA_DOZE);
            at_base_config->sleep_mode = BASE_SLEEP_MODE_MODEM;
        }
    }
    else if (sleep_mode == BASE_SLEEP_MODE_LIGHT) {
        if (!at_base_config->sleepwk_cfg.wakeup_valid)
            return AT_RESULT_CODE_ERROR;

        if (at_base_config->sleep_mode != BASE_SLEEP_MODE_LIGHT) {
            at_base_config->sleep_mode = BASE_SLEEP_MODE_LIGHT;

            uint32_t sleep_time = 0;
            uint8_t weakup_pin = 0xFF;

            if (at_base_config->sleepwk_cfg.wakeup_source == 0) {
                sleep_time = at_base_config->sleepwk_cfg.wakeup_sleep_time;
            }
            else if (at_base_config->sleepwk_cfg.wakeup_source == 2) {
                weakup_pin = at_base_config->sleepwk_cfg.wakeup_gpio;
                if (at_base_config->sleepwk_cfg.wakeup_level)
                    weakup_pin |= 0x80;
            }

            at_response_string(AT_CMD_MSG_OK);
            vTaskDelay(pdMS_TO_TICKS(100));

            hal_hbn_init(&weakup_pin, 1);
            hal_hbn_enter((uint32_t)sleep_time);
        }
    }
    else
        return AT_RESULT_CODE_ERROR;

    return AT_RESULT_CODE_OK;
}

static int at_query_cmd_sysram(int argc, const char **argv)
{
    at_response_string("+SYSRAM:%d,%d", xPortGetFreeHeapSize(), xPortGetMinimumEverFreeHeapSize());
    return AT_RESULT_CODE_OK;
}

static int at_query_cmd_sysmsg(int argc, const char **argv)
{
    at_response_string("+SYSMSG:%d", at_base_config->sysmsg_cfg.byte);
    return AT_RESULT_CODE_OK;
}

static int at_setup_cmd_sysmsg(int argc, const char **argv)
{
    int sysmsg = 0;

    AT_CMD_PARSE_NUMBER(0, &sysmsg);

    if (sysmsg >= 0 && sysmsg <= 7) {
        at_base_config->sysmsg_cfg.byte = (uint8_t)sysmsg;
        if (at->store)
            at_base_config_save(AT_CONFIG_KEY_SYS_MSG);
    }
    else
        return AT_RESULT_CODE_ERROR;

    return AT_RESULT_CODE_OK;
}

static int at_query_cmd_sysflash(int argc, const char **argv)
{
    return 0;
}

static int at_setup_cmd_sysflash(int argc, const char **argv)
{
    return 0;
}

static int at_query_cmd_rfpower(int argc, const char **argv)
{
    return 0;
}

static int at_setup_cmd_rfpower(int argc, const char **argv)
{
    return 0;
}

static int at_exe_cmd_sysrollback(int argc, const char **argv)
{
    return 0;
}

static int at_query_cmd_systimestamp(int argc, const char **argv)
{
    uint32_t systimestamp = (at_base_config->systime_stamp + bl_rtc_get_timestamp_ms())/1000;
    at_response_string("+SYSTIMESTAMP:%d", systimestamp);
    return 0;
}

static int at_setup_cmd_systimestamp(int argc, const char **argv)
{
    int systimestamp;
    uint64_t time_stamp;

    AT_CMD_PARSE_NUMBER(0, &systimestamp);

    time_stamp = systimestamp;
    at_base_config->systime_stamp = time_stamp*1000 - bl_rtc_get_timestamp_ms();
    return AT_RESULT_CODE_OK;
}

static int at_query_cmd_syslog(int argc, const char **argv)
{
    at_response_string("+SYSLOG:%d\r\n", at->syslog);
    return AT_RESULT_CODE_OK;
}

static int at_setup_cmd_syslog(int argc, const char **argv)
{
    int enable = 0;

    AT_CMD_PARSE_NUMBER(0, &enable);

    if (enable == 0 || enable == 1)
        at->syslog = enable;
    else
        return AT_RESULT_CODE_ERROR;
    return AT_RESULT_CODE_OK;
}

static int at_setup_cmd_sleepwkcfg(int argc, const char **argv)
{
    int wakeup_source;
    int wakeup_para1;
    int wakeup_para2;

    AT_CMD_PARSE_NUMBER(0, &wakeup_source);
    if (wakeup_source == 0) {
        if (argc != 2)
            return AT_RESULT_CODE_ERROR;
        AT_CMD_PARSE_NUMBER(1, &wakeup_para1);
    }
    else if (wakeup_source == 2) {
        if (argc != 3)
            return AT_RESULT_CODE_ERROR;
        AT_CMD_PARSE_NUMBER(1, &wakeup_para1);
        AT_CMD_PARSE_NUMBER(2, &wakeup_para2);
        if (wakeup_para1 != 7 && wakeup_para1 != 8)
            return AT_RESULT_CODE_ERROR;
        if (wakeup_para2 != 0 && wakeup_para2 != 1)
            return AT_RESULT_CODE_ERROR;
    }
    else
        return AT_RESULT_CODE_ERROR;

    at_base_config->sleepwk_cfg.wakeup_valid = 1;
    at_base_config->sleepwk_cfg.wakeup_source = (uint8_t)wakeup_source;
    if (wakeup_source == 0) {
        at_base_config->sleepwk_cfg.wakeup_sleep_time = (uint32_t)wakeup_para1;
    }
    else {
        at_base_config->sleepwk_cfg.wakeup_gpio = (uint8_t)wakeup_para1;
        at_base_config->sleepwk_cfg.wakeup_level = (uint8_t)wakeup_para2;
    }

    return AT_RESULT_CODE_OK;
}

static int at_query_cmd_sysstore(int argc, const char **argv)
{
    at_response_string("+SYSSTORE:%d\r\n", at->store);
    return AT_RESULT_CODE_OK;
}

static int at_setup_cmd_sysstore(int argc, const char **argv)
{
    int store = 0;

    AT_CMD_PARSE_NUMBER(0, &store);

    if (store == 0 || store == 1)
        at->store = (uint8_t)store;
    else
        return AT_RESULT_CODE_ERROR;

    return AT_RESULT_CODE_OK;
}

static int at_setup_cmd_sysreg(int argc, const char **argv)
{
    int direct = 0;
    uint32_t regAddr, regValue;
    volatile uint32_t *reg = NULL;

    AT_CMD_PARSE_NUMBER(0, &direct);

    get_uint32_from_string((char **)&argv[1], &regAddr);
    reg = (volatile uint32_t *)regAddr;

    if (direct == 0 && argc == 2) {
        at_response_string("+SYSREG:0x%lx\r\n", *reg);
    }
    else if (direct == 1 && argc == 3) {
        get_uint32_from_string((char **)&argv[2], &regValue);
        *reg = regValue;
    }
    else
        return AT_RESULT_CODE_ERROR;

    return AT_RESULT_CODE_OK;
}

static int at_query_cmd_systemp(int argc, const char **argv)
{
    int temp = 0;

#ifdef CONF_ADC_ENABLE_TSEN
    hosal_adc_dev_t *adc;
    adc = wifi_hosal_adc_device_get();
    if (NULL == adc) {
        return AT_RESULT_CODE_FAIL;
    }
    temp = wifi_hosal_adc_tsen_value_get(adc);

    printf("temp is %u\r\n", temp);
    
#endif
    at_response_string("+SYSTEMP:%d.00", temp);

    return AT_RESULT_CODE_OK;
}

static int at_query_cmd_flash(int argc, const char **argv)
{
    int flash_size = 0;
    char flash_type[16] = {0};

    uint32_t usage;
    EF_Ctrl_Read_Sw_Usage(0, &usage);
    if(((usage>>16)&0x03) == 0) {
        Efuse_Device_Info_Type deviceInfo;
        EF_Ctrl_Read_Device_Info(&deviceInfo);

        if(deviceInfo.memoryInfo == 1)
            flash_size = 1;
        else if(deviceInfo.memoryInfo == 2)
            flash_size = 2;
        else if(deviceInfo.memoryInfo == 3)
            flash_size = 4;
        else
            flash_size = 0;
        strcpy(flash_type, "IntFlash");
    }
    else {
        uint8_t jedecID[3] = {0, 0, 0};
        uint32_t flags = bl_irq_save();
        SPI_Flash_Cfg_Type *flash_info = (SPI_Flash_Cfg_Type *)bl_flash_get_flashCfg();
        XIP_SFlash_GetJedecId_Need_Lock(flash_info, jedecID);
        bl_irq_restore(flags);

        printf("flash jedec id: 0x%02X 0x%02X 0x%02X\r\n", jedecID[0], jedecID[1], jedecID[2]);
        if (jedecID[2] == 0x17 && jedecID[0] == 0xC8 && jedecID[1] == 0x40) {
            flash_size = 8;
            strcpy(flash_type, "GD25Q64C");
        }
        else if(jedecID[2] == 0x17 && jedecID[0] == 0x5E && jedecID[1] == 0x40) {
            flash_size = 2;
            strcpy(flash_type, "ZB25VQ64B");
        }
        else if(jedecID[2] == 0x15 && jedecID[0] == 0x5E && jedecID[1] == 0x60) {
            flash_size = 2;
            strcpy(flash_type, "ZB25VQ16A");
        }
        else
            flash_size = 0;
    }

    if (flash_size == 0)
        at_response_string("+FLASH:%s\r\n", "unknown flash info");
    else
        at_response_string("+FLASH:%dMB, %s\r\n", flash_size, flash_type);
    return AT_RESULT_CODE_OK;
}

static const at_cmd_struct at_base_cmd[] = {
    {"+RST", NULL, NULL, NULL, at_exe_cmd_rst, 0, 0},
    {"+GMR", NULL, NULL, NULL, at_exe_cmd_gmr, 0, 0},
    {"+CMD", NULL, at_query_cmd_cmd, NULL, NULL, 0, 0},
    {"+GSLP", NULL, NULL, at_setup_cmd_gslp, NULL, 1, 1},
    {"E0", NULL, NULL, NULL, at_exe_cmd_close_echo, 0, 0},
    {"E1", NULL, NULL, NULL, at_exe_cmd_open_echo, 0, 0},
    {"+RESTORE", NULL, NULL, NULL, at_exe_cmd_restore, 0, 0},
    {"+UART_CUR", NULL, at_query_cmd_uart_cur, at_setup_cmd_uart_cur, NULL, 5, 5},
    {"+UART_DEF", NULL, at_query_cmd_uart_def, at_setup_cmd_uart_def, NULL, 5, 5},
    {"+SLEEP", NULL, at_query_cmd_sleep, at_setup_cmd_sleep, NULL, 1, 1},
    {"+SYSRAM", NULL, at_query_cmd_sysram, NULL, NULL, 0, 0},
    {"+SYSMSG", NULL, at_query_cmd_sysmsg, at_setup_cmd_sysmsg, NULL, 1, 1},
    {"+SYSFLASH", NULL, at_query_cmd_sysflash, at_setup_cmd_sysflash, NULL, 5, 5},
    {"+RFPOWER", NULL, at_query_cmd_rfpower, at_setup_cmd_rfpower, NULL, 1, 4},
    {"+SYSROLLBACK", NULL, NULL, NULL, at_exe_cmd_sysrollback, 0, 0},
    {"+SYSTIMESTAMP", NULL, at_query_cmd_systimestamp, at_setup_cmd_systimestamp, NULL, 1, 1},
    {"+SYSLOG", NULL, at_query_cmd_syslog, at_setup_cmd_syslog, NULL, 1, 1},
    {"+SLEEPWKCFG", NULL, NULL, at_setup_cmd_sleepwkcfg, NULL, 2, 3},
    {"+SYSSTORE", NULL, at_query_cmd_sysstore, at_setup_cmd_sysstore, NULL, 1, 1},
    {"+SYSREG", NULL, NULL, at_setup_cmd_sysreg, NULL, 2, 3},
    {"+SYSTEMP", NULL, at_query_cmd_systemp, NULL, NULL, 0, 0},
    {"+FLASH", NULL, at_query_cmd_flash, NULL, NULL, 0, 0},
};

bool at_base_cmd_regist(void)
{
    at_base_config_init();

    at_port_para_set(at_base_config->uart_cfg.baudrate,
            at_base_config->uart_cfg.databits,
            at_base_config->uart_cfg.stopbits,
            at_base_config->uart_cfg.parity,
            at_base_config->uart_cfg.flow_control);

    at_register_function(at_base_config_default, NULL);

    if (at_cmd_register(at_base_cmd, sizeof(at_base_cmd) / sizeof(at_base_cmd[0])) == 0)
        return true;
    else
        return false;
}

