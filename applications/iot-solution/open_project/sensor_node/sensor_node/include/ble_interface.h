#ifndef BLE_INTERFACE_H
#define BLE_INTERFACE_H
#include "axk_ble.h"

int axk_hal_ble_role_set(ble_role_t role);
int axk_hal_ble_adv_stop(void);
int axk_hal_ble_adv_start(ble_adv_param_t *adv_param, ble_adv_data_t *adv_data);

#endif