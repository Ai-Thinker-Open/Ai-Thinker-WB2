/**
  ******************************************************************************
  * @file    at_config.c
  * @version V1.0
  * @date
  * @brief   This file is part of AT command framework
  ******************************************************************************
  */

#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>
#ifdef EASYFLASH_ENABLE
#include <easyflash.h>
#endif

#define AT_CONFIG_PRINTF printf
    
int at_config_read(const char *key, void *config, int len)
{
    size_t ret, value_len;

    memset(config, 0, len);
    ret = ef_get_env_blob(key, config, len, &value_len);
    if (ret > 0 && ret == value_len && value_len == len) {
        AT_CONFIG_PRINTF("'%s' (%d) read success\r\n", key, len);
        return 1;
    }

    AT_CONFIG_PRINTF("'%s' (%d) read failed\r\n", key, len);
    return 0;
}

int at_config_write(const char *key, void *config, int len)
{
    ef_set_env_blob(key, config, len);
    return 1;
}

