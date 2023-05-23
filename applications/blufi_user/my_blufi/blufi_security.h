/*
 * @Author: xuhongv | 半颗心脏 xuhongv@yeah.net
 * @Date: 2022-12-16 17:22:35
 * @LastEditors: xuhongv | 半颗心脏 xuhongv@yeah.net
 * @LastEditTime: 2022-12-19 10:21:34
 * @FilePath: \bl_iot_sdk_for_aithinker\applications\bluetooth\blufi\blufi\blufi_security.h
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
#ifndef __SECURITY_BLUFI_PRF_H__
#define __SECURITY_BLUFI_PRF_H__

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "blufi_hal.h"
#include "blufi_init.h"
#include "blufi_api.h"
#include "ble_btc.h"
#include "bluetooth.h"
#include "hci_driver.h"
#include "hci_core.h"
#include "ble_lib_api.h"
#include "conn.h"
#include "conn_internal.h"
#include "gatt.h"
#include "bl_port.h"
#include <aos/yloop.h>
#include <aos/kernel.h>
#include <stdio.h>
#include <stdlib.h>

#define BLUFI_INFO(fmt, ...) printf(fmt, ##__VA_ARGS__)
#define BLUFI_ERROR(fmt, ...) printf(fmt, ##__VA_ARGS__)


void blufi_dh_negotiate_data_handler(uint8_t *data, int len, uint8_t **output_data, int *output_len, bool *need_free);
int blufi_aes_encrypt(uint8_t iv8, uint8_t *crypt_data, int crypt_len);
int blufi_aes_decrypt(uint8_t iv8, uint8_t *crypt_data, int crypt_len);
uint16_t blufi_crc_checksum(uint8_t iv8, uint8_t *data, int len);

int blufi_security_init(void);
void blufi_security_deinit(void);

#endif