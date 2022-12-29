/**
 * @file nfc_blufi.h
 * @author your name (you@domain.com)
 * @brief
 * @version 0.1
 * @date 2022-11-29
 *
 * @copyright Copyright (c) 2022
 *
 */
#ifndef NFC_BLUFI_H
#define NFC_BLUFI_H

#include "wifi_interface.h"
#include "blufi.h"
#include "blufi_api.h"
#include "blufi_hal.h"
#include "blufi_init.h"
#include "axk_blufi.h"
#include "ble_interface.h"


#define NODE_NAME "RADAR_NODE"

void nfc_blufi_start(void* arg);
#endif