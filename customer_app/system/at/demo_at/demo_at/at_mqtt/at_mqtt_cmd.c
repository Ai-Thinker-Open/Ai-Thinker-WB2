/**
  ******************************************************************************
  * @file    at_mqtt_cmd.c
  * @version V1.0
  * @date
  * @brief   This file is part of AT command framework
  ******************************************************************************
  */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdbool.h>
#include "at_main.h"
#include "at_core.h"

static int at_setup_cmd_mqttusercfg(int argc, const char **argv)
{
    return AT_RESULT_CODE_OK;
}

static int at_setup_cmd_mqttclientid(int argc, const char **argv)
{
    return AT_RESULT_CODE_OK;
}

static int at_setup_cmd_mqttusername(int argc, const char **argv)
{
    return AT_RESULT_CODE_OK;
}

static int at_setup_cmd_mqttpassword(int argc, const char **argv)
{
    return AT_RESULT_CODE_OK;
}

static int at_setup_cmd_mqttconncfg(int argc, const char **argv)
{
    return AT_RESULT_CODE_OK;
}

static int at_query_cmd_mqttconn(int argc, const char **argv)
{
    return AT_RESULT_CODE_OK;
}

static int at_setup_cmd_mqttconn(int argc, const char **argv)
{
    return AT_RESULT_CODE_OK;
}

static int at_setup_cmd_mqttpub(int argc, const char **argv)
{
    return AT_RESULT_CODE_OK;
}

static int at_setup_cmd_mqttpubraw(int argc, const char **argv)
{
    return AT_RESULT_CODE_OK;
}

static int at_query_cmd_mqttsub(int argc, const char **argv)
{
    return AT_RESULT_CODE_OK;
}

static int at_setup_cmd_mqttsub(int argc, const char **argv)
{
    return AT_RESULT_CODE_OK;
}

static int at_setup_cmd_mqttunsub(int argc, const char **argv)
{
    return AT_RESULT_CODE_OK;
}

static int at_setup_cmd_mqttclean(int argc, const char **argv)
{
    return AT_RESULT_CODE_OK;
}

static const at_cmd_struct at_mqtt_cmd[] = {
    {"+MQTTUSERCFG", NULL, NULL, at_setup_cmd_mqttusercfg, NULL, 8, 8},
    {"+MQTTCLIENTID", NULL, NULL, at_setup_cmd_mqttclientid, NULL, 2, 2},
    {"+MQTTUSERNAME", NULL, NULL, at_setup_cmd_mqttusername, NULL, 2, 2},
    {"+MQTTPASSWORD", NULL, NULL, at_setup_cmd_mqttpassword, NULL, 2, 2},
    {"+MQTTCONNCFG", NULL, NULL, at_setup_cmd_mqttconncfg, NULL, 7, 7},
    {"+MQTTCONN", NULL, at_query_cmd_mqttconn, at_setup_cmd_mqttconn, NULL, 4, 4},
    {"+MQTTPUB", NULL, NULL, at_setup_cmd_mqttpub, NULL, 5, 5},
    {"+MQTTPUBRAW", NULL, NULL, at_setup_cmd_mqttpubraw, NULL, 5, 5},
    {"+MQTTSUB", NULL, at_query_cmd_mqttsub, at_setup_cmd_mqttsub, NULL, 3, 3},
    {"+MQTTUNSUB", NULL, NULL, at_setup_cmd_mqttunsub, NULL, 2, 2},
    {"+MQTTCLEAN", NULL, NULL, at_setup_cmd_mqttclean, NULL, 1, 1},
};

bool at_mqtt_cmd_regist(void)
{
    if (at_cmd_register(at_mqtt_cmd, sizeof(at_mqtt_cmd) / sizeof(at_mqtt_cmd[0])) == 0)
        return true;
    else
        return false;
}

