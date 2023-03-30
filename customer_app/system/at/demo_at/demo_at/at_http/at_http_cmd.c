/**
  ******************************************************************************
  * @file    at_http_cmd.c
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

static int at_setup_cmd_httpclient(int argc, const char **argv)
{
    return AT_RESULT_CODE_OK;
}

static int at_setup_cmd_httpgetsize(int argc, const char **argv)
{
    return AT_RESULT_CODE_OK;
}

static int at_setup_cmd_httpcpost(int argc, const char **argv)
{
    return AT_RESULT_CODE_OK;
}

static const at_cmd_struct at_http_cmd[] = {
    {"+HTTPCLIENT", NULL, NULL, at_setup_cmd_httpclient, NULL, 0, 0},
    {"+HTTPGETSIZE", NULL, NULL, at_setup_cmd_httpgetsize, NULL, 0, 0},
    {"+HTTPCPOST", NULL, NULL, at_setup_cmd_httpcpost, NULL, 0, 0},
};

bool at_http_cmd_regist(void)
{
    if (at_cmd_register(at_http_cmd, sizeof(at_http_cmd) / sizeof(at_http_cmd[0])) == 0)
        return true;
    else
        return false;
}

