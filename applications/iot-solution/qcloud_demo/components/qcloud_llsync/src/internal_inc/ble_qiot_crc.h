/*
 * Tencent is pleased to support the open source community by making IoT Hub available.
 * Copyright (C) 2018-2020 THL A29 Limited, a Tencent company. All rights reserved.

 * Licensed under the MIT License (the "License"); you may not use this file except in
 * compliance with the License. You may obtain a copy of the License at
 * http://opensource.org/licenses/MIT

 * Unless required by applicable law or agreed to in writing, software distributed under the License is
 * distributed on an "AS IS" basis, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND,
 * either express or implied. See the License for the specific language governing permissions and
 * limitations under the License.
 *
 */

#ifndef TENCENTCLOUD_IOT_EXPLORER_BLE_SDK_EMBEDDED_INTERNAL_INC_BLE_QIOT_CRC_H_
#define TENCENTCLOUD_IOT_EXPLORER_BLE_SDK_EMBEDDED_INTERNAL_INC_BLE_QIOT_CRC_H_

#if defined(__cplusplus)
extern "C" {
#endif

#include <stdio.h>
#include <stdint.h>

uint32_t ble_qiot_crc32(uint32_t crc, const uint8_t *buf, int len);

#if defined(__cplusplus)
}
#endif
#endif  // TENCENTCLOUD_IOT_EXPLORER_BLE_SDK_EMBEDDED_INTERNAL_INC_BLE_QIOT_CRC_H_
