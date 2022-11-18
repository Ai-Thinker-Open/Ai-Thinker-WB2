// Copyright 2017-2019 Espressif Systems (Shanghai) PTE LTD
// Additional Copyright 2016-2020 Bouffalolab
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at

//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

#ifndef _BFL_BLE_MESH_COMMON_API_H_
#define _BFL_BLE_MESH_COMMON_API_H_

#include "bfl_ble_mesh_defs.h"

#ifdef __cplusplus
extern "C" {
#endif

/**
 * @brief         Initialize BLE Mesh module.
 *                This API initializes provisioning capabilities and composition data information.
 *
 * @note          After calling this API, the device needs to call bfl_ble_mesh_prov_enable()
 *                to enable provisioning functionality again.
 *
 * @param[in]     prov: Pointer to the device provisioning capabilities. This pointer must
 *                      remain valid during the lifetime of the BLE Mesh device.
 * @param[in]     comp: Pointer to the device composition data information. This pointer
 *                      must remain valid during the lifetime of the BLE Mesh device.
 *
 * @return        BFL_OK on success or error code otherwise.
 *
 */
bfl_err_t bfl_ble_mesh_init(bfl_ble_mesh_prov_t *prov, bfl_ble_mesh_comp_t *comp);

/**
 * @brief         De-initialize BLE Mesh module.
 * 
 * @note          This function shall be invoked after bfl_ble_mesh_client_model_deinit().
 *
 * @param[in]     param: Pointer to the structure of BLE Mesh deinit parameters.
 *
 * @return        BFL_OK on success or error code otherwise.
 *
 */
bfl_err_t bfl_ble_mesh_deinit(bfl_ble_mesh_deinit_param_t *param);

#ifdef __cplusplus
}
#endif

#endif /* _BFL_BLE_MESH_COMMON_API_H_ */
