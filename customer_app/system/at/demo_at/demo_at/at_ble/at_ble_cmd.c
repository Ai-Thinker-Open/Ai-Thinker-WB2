/**
  ******************************************************************************
  * @file    at_ble_cmd.c
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

//////////////////////////////////
#include <FreeRTOS.h>
#include <timers.h>
#include <semphr.h>

#include "bluetooth.h"
#include "hci_driver.h"
#include "hci_core.h"
#include "ble_lib_api.h"
#include "conn.h"
#include "conn_internal.h"
#include "gatt.h"
#include "bl_port.h"

static struct bt_conn *g_conn = NULL;
static SemaphoreHandle_t semaphore_indicate;
//static TimerHandle_t timer_handle = NULL;
static struct k_delayed_work indicate_work;
static uint32_t bytes_index = 0;
static char gbuff[128];
static uint8_t work_init = 0;

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

static struct bt_gatt_attr default_server1[]= {
    /* Primary Service */
    BT_GATT_PRIMARY_SERVICE(BT_UUID_DECLARE_16(0xa002)),

    /* Characteristic && Characteristic User Declaration */
    BT_GATT_CHARACTERISTIC(BT_UUID_DECLARE_16(0xc306),
                   BT_GATT_CHRC_INDICATE,
                   BT_GATT_PERM_READ, NULL, NULL,
                   NULL),
    BT_GATT_CCC(ble_ccc_cfg_changed, BT_GATT_PERM_READ | BT_GATT_PERM_WRITE),
};
static struct bt_gatt_service ble_default_server1 = BT_GATT_SERVICE(default_server1);

static void _connected(struct bt_conn *conn, u8_t err)
{
    g_conn = conn;
    printf("[BLE] connected \r\n");
}

static void _disconnected(struct bt_conn *conn, u8_t reason)
{
    g_conn = NULL;
    printf("[BLE] disconnected, reason:%d \r\n", reason);
}
static struct bt_conn_cb conn_callbacks = {
    .connected = _connected,
    .disconnected = _disconnected,
};

static uint8_t adv_data[] = {
    0x02, 0x01, 0x06,
    0x03, 0x09, 'A', 'T' ,
};
int axk_hal_ble_adv_start(void)
{
    int ret;
    struct bt_le_adv_param param;

    param.id = 0;
    param.interval_min = 100;
    param.interval_max = 200;
    param.options = BT_LE_ADV_OPT_NONE;
    param.options |= (BT_LE_ADV_OPT_CONNECTABLE | BT_LE_ADV_OPT_USE_NAME | BT_LE_ADV_OPT_ONE_TIME);

    set_adv_param(&param);
    
    printf("[BLE] set adv\r\n");
    ret = set_ad_and_rsp_d(BT_HCI_OP_LE_SET_ADV_DATA, adv_data, sizeof(adv_data));

    if (ret != 0) {
        return -1;
    }

    printf("[BLE] en adv\r\n");
    if (set_adv_enable(1) != 0) {
        return -1;
    }

    return 0;
}

static void indicate_cb(struct bt_conn *conn, const struct bt_gatt_attr *attr,
			u8_t err)
{
	if (err != 0U) {
		printf("[BLE] Indication fail \r\n");	
	} else {
		printf("[BLE] Indication success \r\n");
	}
    /* reset indicate state */
    xSemaphoreGive(semaphore_indicate);
	k_delayed_work_submit(&indicate_work,K_MSEC(200));
}

int ble_indicate_data(void *data, uint16_t length)
{
    int ret;
    uint16_t mtu;
    uint16_t send_len;
    struct bt_gatt_attr *char_val = &default_server1[2];
    static struct bt_gatt_indicate_params params;

    if (g_conn == NULL) {
        return -1;
    }

    mtu = bt_gatt_get_mtu(g_conn) - 3;
	/* calculate send_len */
	send_len = length > mtu ? mtu : length;
	/* fill in parameters */
	memset(&params, 0, sizeof(params));
	params.attr = char_val;
	params.data = data;
	params.len 	= send_len;
	params.func = indicate_cb;
	/* set indicate state */
	xSemaphoreTake(semaphore_indicate, 0);
	/* send data */
	ret = bt_gatt_indicate(g_conn, &params);
	if(ret){
		printf("Failed Send data,err(%d)\r\n",ret);	
		return -1;
	}
	bytes_index += send_len;	
	printf("[BLE] indicate len:%d \r\n", send_len);

    return ret;
}

static int at_exe_cmd_ble(int argc, const char **argv)
{
    // Initialize BLE controller
    ble_controller_init(configMAX_PRIORITIES - 1);
    // Initialize BLE Host stack
    hci_driver_init();
    bt_enable(NULL);

    bt_conn_cb_register(&conn_callbacks);
    /* avoid callback infinite loop */
    conn_callbacks._next = NULL;

    bt_gatt_service_register(&ble_default_server1);

    semaphore_indicate = xSemaphoreCreateBinary();
    if (semaphore_indicate == NULL )
    {
        printf("[BLE] create mutex fail \r\n");
        return -1;
    }

    axk_hal_ble_adv_start();

    printf("[BLE] at_exe_cmd_ble success \r\n");

    return AT_RESULT_CODE_OK;
}

static int at_exe_cmd_ble_indi(int argc, const char **argv)
{
    char buff[128];

    memset((void *)buff, 50, 128);
    ble_indicate_data((void *)buff, 128);

    return AT_RESULT_CODE_OK;
}

static void work_handler(struct k_work *work)
{
	uint16_t total_len = sizeof(gbuff);

	memset((void *)gbuff, 50, sizeof(gbuff));
	if(bytes_index < total_len - 1){
		ble_indicate_data((void *)gbuff+bytes_index, total_len);
	}else{
		bytes_index = 0;
	}
}

static int at_exe_cmd_ble_time(int argc, const char **argv)
{
	if(!work_init){
		work_init = 1;
		k_delayed_work_init(&indicate_work,work_handler);
	}

    return AT_RESULT_CODE_OK;
}

static const at_cmd_struct at_ble_cmd[] = {
    {"+BLE", NULL, NULL, NULL, at_exe_cmd_ble, 0, 9},
    {"+BLEINDI", NULL, NULL, NULL, at_exe_cmd_ble_indi, 0, 9},
    {"+BLETIME", NULL, NULL, NULL, at_exe_cmd_ble_time, 0, 9},
};

bool at_ble_cmd_regist(void)
{
    if (at_cmd_register(at_ble_cmd, sizeof(at_ble_cmd) / sizeof(at_ble_cmd[0])) == 0)
        return true;
    else
        return false;
}
