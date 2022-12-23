#ifndef __BLUFI_H
#define __BLUFI_H
#include <stdint.h>
#include "axk_ble.h"

#define BLE_ADV_DATA_MAX_LEN 31

#define BLUFI_ERR_SUCCESS 0
#define BLUFI_ERR_FAIL -1

typedef enum
{
    BLUFI_STATION_DISCONNECTED = -1,
    BLUFI_STATION_CONNECTED = 1,
    BLUFI_STATION_GOT_IP = 0,
    BLUFI_WIFI_SCAN_DONE = 2
} blufi_jap_state_t;

typedef enum
{
    BLUFI_WIFI_STATE_NOT_STARTUP = 0,      /**< station has not started any Wi-Fi connection. */
    BLUFI_WIFI_STATE_CONNECTED_NOT_GET_IP, /**< station has connected to an AP, but does not get an IPv4 address yet */
    BLUFI_WIFI_STATE_CONNECTED_GOT_IP,     /**< station has connected to an AP, and got an IPv4 address. */
    BLUFI_WIFI_STATE_CONNECTING,           /**< station is in Wi-Fi connecting or reconnecting state. */
    BLUFI_WIFI_STATE_DISCONNECTED,         /**< station is in Wi-Fi disconnected state. */
} wifi_state_t;

typedef enum
{
    WIFIMODE_NONE = 0,
    WIFIMODE_STA = 1,
    WIFIMODE_SOFTAP = 2,
    WIFIMODE_STA_AP = 3,
} wifi_mode_t;

typedef void (*blufi_wifi_conn_event_cb_t)(int event, void *param);

typedef struct
{
    char ssid[32 + 1]; /**< the SSID of the target AP. */
    char pwd[64];      /**< password, MAX: 63-byte ASCII.*/
    uint8_t bssid[6];  /**< the MAC address of the target AP */
} cwjap_param_t;

typedef struct
{
    uint8_t state; /**< current Wi-Fi state.  */
    cwjap_param_t cwjap_param;
} sta_config_t;

typedef struct
{
    uint8_t cwmode;
    sta_config_t sta;
} wifi_config_t;

typedef struct
{
    wifi_config_t wifi;
    ble_config_t ble;
} blufi_config_t;

#endif