#include "ble_interface.h"

#include <stdio.h>
#include <string.h>
#include <FreeRTOS.h>
#include <semphr.h>

#include "bluetooth.h"
#include "hci_driver.h"
#include "hci_core.h"
#include "ble_lib_api.h"
#include "conn.h"
#include "conn_internal.h"
#include "gatt.h"
extern void bleuart_printf(char *buf);
static ble_scan_info_t master_scan_tbl[MASTER_SCAN_MAX];
static int master_current_scan;
static uint8_t scan_le_addr[6];


static ssize_t ble_tt_write_val(struct bt_conn *conn, const struct bt_gatt_attr *attr,
             const void *buf, u16_t len, u16_t offset, u8_t flags);
static ssize_t ble_cmd_write_val(struct bt_conn *conn, const struct bt_gatt_attr *attr,
             const void *buf, u16_t len, u16_t offset, u8_t flags);
static void ble_ccc_cfg_changed(const struct bt_gatt_attr *attr,
                       u16_t value);

static struct bt_gatt_attr salve_tt_server[]= {
    /* Primary Service */
    BT_GATT_PRIMARY_SERVICE(BT_UUID_DECLARE_128(0x0000)),

    /* Characteristic && Characteristic User Declaration */
    BT_GATT_CHARACTERISTIC(BT_UUID_DECLARE_128(0x0000),
                   BT_GATT_CHRC_NOTIFY,
                   BT_GATT_PERM_READ, NULL, NULL,
                   NULL),
    BT_GATT_CCC(ble_ccc_cfg_changed, BT_GATT_PERM_READ | BT_GATT_PERM_WRITE),

    /* Characteristic && Characteristic User Declaration */
    BT_GATT_CHARACTERISTIC(BT_UUID_DECLARE_128(0x0000),
                   BT_GATT_CHRC_WRITE_WITHOUT_RESP,
                   BT_GATT_PERM_WRITE, NULL, ble_tt_write_val,
                   NULL),
};
#define SALVE_TT_SERVER_TX_INDEX 2
#define SALVE_TT_SERVER_TX_CCD_INDEX 3
#define SALVE_TT_SERVER_RX_INDEX 5

static struct bt_uuid_128 salve_tt_svr_uuid = BT_UUID_INIT_128(0x0000);
static struct bt_uuid_128 salve_tt_tx_uuid = BT_UUID_INIT_128(0x0000);
static struct bt_uuid_128 salve_tt_rx_uuid = BT_UUID_INIT_128(0x0000);

static struct bt_gatt_attr salve_cmd_server[]= {
    /* Primary Service */
    BT_GATT_PRIMARY_SERVICE(BT_UUID_DECLARE_128(0x0000)),

    /* Characteristic && Characteristic User Declaration */
    BT_GATT_CHARACTERISTIC(BT_UUID_DECLARE_128(0x0000),
                   BT_GATT_CHRC_NOTIFY,
                   BT_GATT_PERM_READ, NULL, NULL,
                   NULL),
    BT_GATT_CCC(ble_ccc_cfg_changed, BT_GATT_PERM_READ | BT_GATT_PERM_WRITE),

    /* Characteristic && Characteristic User Declaration */
    BT_GATT_CHARACTERISTIC(BT_UUID_DECLARE_128(0x0000),
                   BT_GATT_CHRC_WRITE_WITHOUT_RESP,
                   BT_GATT_PERM_WRITE, NULL, ble_cmd_write_val,
                   NULL),
};
#define SALVE_CMD_SERVER_TX_INDEX 2
#define SALVE_CMD_SERVER_TX_CCD_INDEX 3
#define SALVE_CMD_SERVER_RX_INDEX 5

static struct bt_uuid_128 salve_cmd_svr_uuid = BT_UUID_INIT_128(0x0000);
static struct bt_uuid_128 salve_cmd_tx_uuid = BT_UUID_INIT_128(0x0000);
static struct bt_uuid_128 salve_cmd_rx_uuid = BT_UUID_INIT_128(0x0000);

static struct bt_gatt_service ble_tt_server = BT_GATT_SERVICE(salve_tt_server);
static struct bt_gatt_service ble_cmd_server = BT_GATT_SERVICE(salve_cmd_server);
// static struct bt_gatt_service *server[] = {&ble_tt_server, &ble_cmd_server};

static ssize_t ble_tt_write_val(struct bt_conn *conn, const struct bt_gatt_attr *attr,
             const void *buf, u16_t len, u16_t offset,
             u8_t flags)
{
    //////axk_Callbacks.blePeripheralTTRxCallback(len, (uint8_t *)buf);

    return len;
}

static ssize_t ble_cmd_write_val(struct bt_conn *conn, const struct bt_gatt_attr *attr,
             const void *buf, u16_t len, u16_t offset,
             u8_t flags)
{
    ////axk_Callbacks.blePeripheralCmdRxCallback(len, (uint8_t *)buf);

    return len;
}

static void ble_ccc_cfg_changed(const struct bt_gatt_attr *attr,
                       u16_t value)
{
    char *str = "disabled";

    if (value == BT_GATT_CCC_NOTIFY) {
        str = "notify";
    } else if (value == BT_GATT_CCC_INDICATE) {
        str = "indicate";
    }

    printf("[BLE] ccc change %s", str);
}

static void bt_enable_cb(int err)
{
    if (!err) {
        bt_addr_le_t bt_addr;
        bt_get_local_public_address(&bt_addr);
        printf("BD_ADDR:(MSB)%02x:%02x:%02x:%02x:%02x:%02x(LSB) \r\n",
            bt_addr.a.val[5], bt_addr.a.val[4], bt_addr.a.val[3], bt_addr.a.val[2], bt_addr.a.val[1], bt_addr.a.val[0]);
    }
}

void ble_reverse_byte(uint8_t *arr, uint32_t size)
{
    uint8_t i, tmp;

    for (i = 0; i < size / 2; i++) {
        tmp = arr[i];
        arr[i] = arr[size - 1 - i];
        arr[size - 1 - i] = tmp;
    }
}

void ble_stack_start(void)
{
    // Initialize BLE controller
    ble_controller_init(configMAX_PRIORITIES - 1);
    // Initialize BLE Host stack
    hci_driver_init();
    bt_enable(bt_enable_cb);
}

static bool scan_data_cb(struct bt_data *data, void *user_data)
{
    ble_scan_info_t *info = user_data;
    u8_t len;

    switch (data->type) {
        case BT_DATA_NAME_SHORTENED:
        case BT_DATA_NAME_COMPLETE:
            len = (data->data_len > NAME_LEN - 1)?(NAME_LEN - 1):(data->data_len);
            memcpy(info->name, data->data, len);
            return false;
        default:
            return true;
    }
}

static void scan_device_found(const bt_addr_le_t *addr, s8_t rssi, u8_t evtype,
             struct net_buf_simple *buf)
{
    if (master_current_scan >= MASTER_SCAN_MAX) {
        return ;
    }

    /* if the address recorded last is different from this */
    if (memcmp(scan_le_addr, addr->a.val, 6) != 0)
    {
        if (*(uint32_t *)scan_le_addr != 0) {
            /* output result */
            memcpy(master_scan_tbl[master_current_scan].mac, scan_le_addr, 6);
            /* and scan count */
            master_current_scan++;
        }
        
        /* record newer addr */
        memcpy(scan_le_addr, addr->a.val, 6);
    }

    /* parse ble name */
    bt_data_parse(buf, scan_data_cb, &master_scan_tbl[master_current_scan]);
    /* record rssi */
    master_scan_tbl[master_current_scan].rssi = rssi;
}

int ble_master_scan(uint32_t scan_time) {
    int ret;
    struct bt_le_scan_param scan_param;
    char scan_data[250];
    scan_param.type = BT_LE_SCAN_TYPE_ACTIVE;
    scan_param.filter_dup = BT_LE_SCAN_FILTER_DUPLICATE;
    scan_param.interval = 320;
    scan_param.window = 48;

    master_current_scan = 0;
    memset(scan_le_addr, 0, sizeof(scan_le_addr));
    memset(master_scan_tbl, 0, sizeof(master_scan_tbl));

    ret = bt_le_scan_start(&scan_param, scan_device_found);
    if (ret != 0)
    {
        printf("[BLE][SCAN] ret:%d \r\n", ret);
        return -1;
    }

    vTaskDelay(scan_time / portTICK_PERIOD_MS);
    bt_le_scan_stop();

    for (int i = 0; i < master_current_scan; i++) {
        ble_reverse_byte(master_scan_tbl[i].mac, 6);
	    sprintf(scan_data,"mac:%02X%02X%02X%02X%02X%02X rssi:%i name:%s\r\n", 
             master_scan_tbl[i].mac[0],master_scan_tbl[i].mac[1],master_scan_tbl[i].mac[2],
             master_scan_tbl[i].mac[3],master_scan_tbl[i].mac[4],master_scan_tbl[i].mac[5],
             master_scan_tbl[i].rssi, master_scan_tbl[i].name);
	    bleuart_printf(scan_data);
    }

    return 0;
}

int find_result;
static uint8_t *find_mac;
static uint16_t *find_uuid;
static bt_addr_le_t *find_target_addr;
static StaticSemaphore_t sem_found_buffer;
static SemaphoreHandle_t sem_found;
static bool find_data_cb(struct bt_data *data, void *user_data)
{
    u8_t len;
    uint16_t *uuid = user_data;

    switch (data->type) {
        case BT_DATA_UUID16_SOME:
        case BT_DATA_UUID16_ALL:
            len = data->data_len;
            if (len % 2 != 0) {
                /* invalid adv data, discard */
                printf("[BLE] find invalid adv\r\n");
                return false;
            }
            uint16_t *p_uuid = (uint16_t *)(data->data);

            while (len >= 2) {
                if (*uuid == *find_uuid) {
                    *uuid = find_uuid;
                    return false;
                }
                p_uuid++;
                len -= 2;
            }
        default:
            return true;
    }
}

static void find_device_found(const bt_addr_le_t *addr, s8_t rssi, u8_t evtype,
             struct net_buf_simple *buf)
{
    uint8_t mac[6];
    uint16_t uuid = 0;

    if (find_uuid != NULL) {
        /* parse uuid */
        bt_data_parse(buf, find_data_cb, &uuid);
    }

    memcpy(mac, addr->a.val, 6);
    ble_reverse_byte(mac, 6);
    if (find_mac != NULL && memcmp(find_mac, mac, 6) != 0) {
        return ;
    }

    if (find_uuid != NULL && *find_uuid != uuid) {
        return ;
    }

    /* found target */
    printf("[BLE] found target\r\n");
    memcpy(find_target_addr, addr, sizeof(bt_addr_le_t));
    find_result = 1;
    xSemaphoreGive(sem_found);
}

int ble_master_find_target(uint32_t scan_time, uint8_t *mac, uint16_t *uuid, bt_addr_le_t *target_addr)
{
    int ret;
    struct bt_le_scan_param scan_param;

    if (target_addr == NULL) {
        return -1;
    }

    if (mac == NULL && uuid == NULL) {
        return -1;
    }

    sem_found = xSemaphoreCreateBinaryStatic(&sem_found_buffer);
    if (sem_found == NULL )
    {
        printf("[BLE] create sem faxkl \r\n");
        return -1;
    }

    find_mac = mac;
    find_uuid = uuid;
    find_target_addr = target_addr;

    scan_param.type = BT_LE_SCAN_TYPE_ACTIVE;
    scan_param.filter_dup = BT_LE_SCAN_FILTER_DUPLICATE;
    scan_param.interval = 320;
    scan_param.window = 120;

    find_result = 0;
    ret = bt_le_scan_start(&scan_param, find_device_found);
    if (ret != 0)
    {
        printf("[BLE][FIND] ret:%d \r\n", ret);
        return -1;
    }

    xSemaphoreTake(sem_found, scan_time / portTICK_PERIOD_MS);
    vSemaphoreDelete(sem_found);
    sem_found = NULL;

    // vTaskDelay(scan_time / portTICK_PERIOD_MS);
    bt_le_scan_stop();

    if (find_result == 0) {
        printf("[BLE] not found target\r\n");
        return -1;
    }

    return 0;
}
