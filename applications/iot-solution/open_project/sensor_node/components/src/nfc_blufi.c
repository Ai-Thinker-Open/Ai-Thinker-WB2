/**
 * @file nfc_blufi.c
 * @author your name (you@domain.com)
 * @brief
 * @version 0.1
 * @date 2022-11-29
 *
 * @copyright Copyright (c) 2022
 *
 */
#include <FreeRTOS.h>
#include <task.h>
#include <timers.h>
#include <stdio.h>
#include <stdint.h>
#include <string.h>

#include <lwip/tcpip.h>

#include <bl602_glb.h>

#include <bl_sys.h>
#include <bl_uart.h>

#include "wifi_interface.h"
#include "blufi.h"
#include "blufi_api.h"
#include "blufi_hal.h"
#include "blufi_init.h"
#include "axk_blufi.h"
#include "ble_interface.h"


