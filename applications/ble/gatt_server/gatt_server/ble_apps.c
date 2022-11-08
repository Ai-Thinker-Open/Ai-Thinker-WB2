
#include "ble_app.h"
#include <FreeRTOS.h>
#include <task.h>
#include "bluetooth.h"
#include "ble_cli_cmds.h"
#include "hci_driver.h"
#include "ble_lib_api.h"

#include <aos/kernel.h>
#include <aos/yloop.h>

#include "conn.h"
#include "gatt.h"
#include "hci_core.h"
#include "uuid.h"
//#include "oad_api.h"
#include "bl_gpio.h"
#include <vfs.h>

#define gatt_server_name "BL_602"

static void ble_bl_ccc_cfg_changed(const struct bt_gatt_attr *attr, u16_t vblfue);
static int ble_blf_recv(struct bt_conn *conn,
              const struct bt_gatt_attr *attr, const void *buf,
              u16_t len, u16_t offset, u8_t flags);


static const struct bt_data ad[] = {
	BT_DATA_BYTES(BT_DATA_FLAGS, (BT_LE_AD_GENERAL | BT_LE_AD_NO_BREDR)),
	BT_DATA(BT_DATA_NAME_COMPLETE, gatt_server_name, 6),
    BT_DATA(BT_DATA_MANUFACTURER_DATA, "BL_602", 6),
    
};
static struct bt_gatt_attr blattrs[]= {
    BT_GATT_PRIMARY_SERVICE(BT_UUID_TEST),

    BT_GATT_CHARACTERISTIC(BT_UUID_TEST_RX,
                            BT_GATT_CHRC_NOTIFY,
                            BT_GATT_PERM_READ,
                            NULL,
                            NULL,
                            NULL),

    BT_GATT_CCC(ble_bl_ccc_cfg_changed, BT_GATT_PERM_READ | BT_GATT_PERM_WRITE),

    BT_GATT_CHARACTERISTIC(BT_UUID_TEST_TX,
                            BT_GATT_CHRC_WRITE_WITHOUT_RESP,
                            BT_GATT_PERM_READ | BT_GATT_PERM_WRITE,
                            NULL,
                            ble_blf_recv,
                            NULL)
};

static struct bt_conn *ble_bl_conn=NULL;
static bool notify_flag=false;

void ble_bl_notify_test(void)
{
    char data[10] = {0x00,0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09};
    if(ble_bl_conn!=NULL&&notify_flag==true){
        printf("ble_notify_test.\r\n");    
        bt_gatt_notify(ble_bl_conn, &blattrs[1],data,10);
    }
}

static void ble_bl_ccc_cfg_changed(const struct bt_gatt_attr *attr, u16_t vblfue)
{
    if(vblfue == BT_GATT_CCC_NOTIFY) {
        
     printf("enable notify.\r\n");
     notify_flag=true;
    } else {
        printf("disable notify.\r\n");
        notify_flag=false;
    }
}

void ble_bl_disconnect(void)
{
    if(ble_bl_conn!=NULL)
    {
        
        printf("user disconnect\r\n");
        bt_conn_disconnect(ble_bl_conn,BT_HCI_ERR_REMOTE_USER_TERM_CONN);
        aos_post_event(EV_BLE_TEST,BLE_DEV_DISCONN,NULL);
    }
}

static int ble_blf_recv(struct bt_conn *conn,
              const struct bt_gatt_attr *attr, const void *buf,
              u16_t len, u16_t offset, u8_t flags)
{
    uint8_t *recv_buffer;
    recv_buffer=pvPortMalloc(sizeof(uint8_t)*len);
    memcpy(recv_buffer, buf, len);
    printf("ble rx=%d\r\n",len);
    for (size_t i = 0; i < len; i++)
    {
         printf("0x%x ",recv_buffer[i]);
    }
    printf("\r\n");
    vPortFree(recv_buffer);

    ble_bl_notify_test();   //send notify to client

    return 0;
}



struct bt_gatt_service ble_bl_server = BT_GATT_SERVICE(blattrs);

static void bt_ready(void)
{
    bt_set_name(gatt_server_name);
	printf("Bluetooth initiblfized\r\n");
    bleapps_adv_starting();
}

void bleapps_adv_starting(void)
{
    int err;

    printf("Bluetooth Advertising start\r\n");
	err = bt_le_adv_start(BT_LE_ADV_CONN_NAME, ad, ARRAY_SIZE(ad), NULL, 0);
        if (err) {
            printf("Advertising failed to start (err %d)\r\n", err);
        }else{
             aos_post_event(EV_BLE_TEST,BLE_ADV_START,NULL);
        }
   
}
void bleapps_adv_stop(void)
{
    int err;
    printf("Bluetooth Advertising stop\r\n");
    err =bt_le_adv_stop();
    if (err) {
        printf("Advertising failed to stop (err %d)\r\n", err);
    }else{
        aos_post_event(EV_BLE_TEST,BLE_ADV_STOP,NULL);
    }
}

static void ble_app_init(int err)
{
    if (err != 0) {
        printf("BT FAILED started\r\n");
    }else{
        printf("BT SUCCESS started\r\n");
        bt_ready();    
    }
}

static void bl_connected(struct bt_conn *conn, uint8_t err)
{
    struct bt_le_conn_param param;
    param.interval_max=24;
    param.interval_min=24;
    param.latency=0;
    param.timeout=600;
    int update_err;
	if (err) {
		printf("Connection failed (err 0x%02x)\r\n", err);
	} else {
		printf("Connected\n");
        ble_bl_conn=conn;
        update_err = bt_conn_le_param_update(conn, &param);

        if (err) {
            printf("conn update failed (err %d)\r\n", err);
        } else {
            printf("conn update initiated\r\n");
        }
        aos_post_event(EV_BLE_TEST,BLE_DEV_CONN,NULL);
	}
}

static void bl_disconnected(struct bt_conn *conn, uint8_t reason)
{
	printf("Disconnected (reason 0x%02x)\n", reason);
    aos_post_event(EV_BLE_TEST,BLE_DEV_DISCONN,NULL);
}

static struct bt_conn_cb conn_callbacks = {
	.connected = bl_connected,
	.disconnected = bl_disconnected,
};

static void ble_stack_start(void)
{
     // Initiblfize BLE controller
    ble_controller_init(configMAX_PRIORITIES - 1);
    // Initiblfize BLE Host stack
    hci_driver_init();
    bt_enable(ble_app_init);
  
}
#if defined(CONFIG_BT_SMP)

static void auth_passkey_display(struct bt_conn *conn, unsigned int passkey)
{
    char addr[BT_ADDR_LE_STR_LEN];

    bt_addr_le_to_str(bt_conn_get_dst(conn), addr, sizeof(addr));

    printf("passkey_str is: %06u\r\n", passkey);
}

static void auth_passkey_confirm(struct bt_conn *conn, unsigned int passkey)
{
    char addr[BT_ADDR_LE_STR_LEN];

    bt_addr_le_to_str(bt_conn_get_dst(conn), addr, sizeof(addr));

    printf("Confirm passkey for %s: %06u\r\n", addr, passkey);
    bt_conn_auth_passkey_confirm(conn);
}

static void auth_passkey_entry(struct bt_conn *conn)
{
    char addr[BT_ADDR_LE_STR_LEN];

    bt_addr_le_to_str(bt_conn_get_dst(conn), addr, sizeof(addr));

    printf("Enter passkey for %s\r\n", addr);
}

static void auth_cancel(struct bt_conn *conn)
{
    char addr[BT_ADDR_LE_STR_LEN];

    bt_addr_le_to_str(bt_conn_get_dst(conn), addr, sizeof(addr));

    printf("Pairing cancelled: %s\r\n", addr);
}

static void auth_pairing_confirm(struct bt_conn *conn)
{
    char addr[BT_ADDR_LE_STR_LEN];

    bt_addr_le_to_str(bt_conn_get_dst(conn), addr, sizeof(addr));

    printf("Confirm pairing for %s\r\n", addr);
   
}

static void auth_pairing_complete(struct bt_conn *conn, bool bonded)
{
    char addr[BT_ADDR_LE_STR_LEN];

    bt_addr_le_to_str(bt_conn_get_dst(conn), addr, sizeof(addr));

    printf("%s with %s\r\n", bonded ? "Bonded" : "Paired", addr);
}

static void auth_pairing_failed(struct bt_conn *conn, enum bt_security_err reason)
{
    char addr[BT_ADDR_LE_STR_LEN];

    bt_addr_le_to_str(bt_conn_get_dst(conn), addr, sizeof(addr));
    printf("Pairing failed with %s\r\n", addr);
}

static struct bt_conn_auth_cb auth_cb_display = {
    .passkey_display = auth_passkey_display,
    .passkey_entry = auth_passkey_entry,
    .passkey_confirm = auth_passkey_confirm,
    .cancel = auth_cancel,
    .pairing_confirm = auth_pairing_confirm,
    .pairing_failed = auth_pairing_failed,
    .pairing_complete = auth_pairing_complete,
};
#endif

void apps_ble_start(void)
{
    int err;
    ble_stack_start();
    bt_conn_cb_register(&conn_callbacks);
    err=bt_gatt_service_register(&ble_bl_server);
    if (err==0) {
		printf("bt_gatt_service_register ok\r\n");
	} else {
		printf("bt_gatt_service_register err\r\n");
    }

 
    #if defined(CONFIG_BT_SMP)
    err = bt_conn_auth_cb_register(&auth_cb_display);
   
    if(err){
        printf("Auth callback has blfready been registered\r\n");
    }else{
        printf("Register auth callback successfully\r\n");
    }
    #endif
}

