#include "my_ble.h"
#define MY_UUID_USER_SER    BT_UUID_DECLARE_128(BT_UUID_128_ENCODE(0x10190d0c, 0x0b0a, 0x0908, 0x0706, 0x050403020100))
#define MY_UUID_USER_TRD    BT_UUID_DECLARE_128(BT_UUID_128_ENCODE(0x102B0d0c, 0x0b0a, 0x0908, 0x0706, 0x050403020100))		

my_ble_recv_data_cb_t static_ble_recv_data_cb = NULL;
my_ble_send_data_cb_t static_ble_send_data_cb = NULL;
my_ble_connet_status_cb_t static_ble_connet_status_cb = NULL;
static struct bt_gatt_exchange_params exchange_params;
static const uint8_t hids_report_descriptor[] =
{

    0x05, 0x01,      // USAGE_PAGE (Generic Desktop)

    0x09, 0x06,      // USAGE (Keyboard)

    0xa1, 0x01,      // COLLECTION (Application)

    0x85, 0x01,      //     REPORT_ID (1)

    0x75, 0x01,      //     Report Size (1)

    0x95, 0x08,      //     Report Count (8)

    0x05, 0x07,      //     Usage Page (Key Codes)

    0x19, 0xE0,      //     Usage Minimum (224)

    0x29, 0xE7,      //     Usage Maximum (231)

    0x15, 0x00,      //     Logical Minimum (0)

    0x25, 0x01,      //     Logical Maximum (1)

    0x81, 0x02,      //     Input (Data, Variable, Absolute); Modifier byte

    0x95, 0x01,      //     Report Count (1)

    0x75, 0x08,      //     Report Size (8)

    0x81, 0x01,      //     Input (Constant); Reserved byte

    0x95, 0x05,      //     Report Count (5)

    0x75, 0x01,      //     Report Size (1)

    0x05, 0x08,      //     Usage Page (LEDs)

    0x19, 0x01,      //     Usage Minimum (1)

    0x29, 0x05,      //     Usage Maximum (5)

    0x91, 0x02,      //     Output (Data, Variable, Absolute); LED report

    0x95, 0x01,      //     Report Count (1)

    0x75, 0x03,      //     Report Size (3)

    0x91, 0x01,      //     Output (Constant); LED report padding

    0x95, 0x06,      //     Report Count (6)

    0x75, 0x08,      //     Report Size (8)

    0x15, 0x00,      //     Logical Minimum (0)

    0x25, 0x65,      //     Logical Maximum (101)

    0x05, 0x07,      //     Usage Page (Key Codes)

    0x19, 0x00,      //     Usage Minimum (0)

    0x29, 0x65,      //     Usage Maximum (101)

    0x81, 0x00,      //     Input (Data, Array); Key array (6 bytes)

    0xc0             // END_COLLECTION

};

static void ccc_cfg_changed(const struct bt_gatt_attr* attr, u16_t value)
{
    printf("ccc change %d", value);
}

static void connected(struct bt_conn* conn, u8_t err)
{
    char addr[BT_ADDR_LE_STR_LEN];
    pconn = conn;
    bt_addr_le_to_str(bt_conn_get_dst(conn), addr, sizeof(addr));
    if (err)
    {
        printf("Failed to connect to %s (%u)", addr, err);
        return;
    }
    printf("Connected: %s \r\n", addr);
    if (static_ble_connet_status_cb != NULL)
    {
        static_ble_connet_status_cb(MY_BLE_DEVICE_CONNECT, addr);
    }
}

static void disconnected(struct bt_conn* conn, u8_t reason)
{
    char addr[BT_ADDR_LE_STR_LEN];
    pconn = conn;
    bt_addr_le_to_str(bt_conn_get_dst(conn), addr, sizeof(addr));
    printf("Disconnected: %s (reason %u)", addr, reason);
    if (static_ble_connet_status_cb != NULL)
    {
        static_ble_connet_status_cb(MY_BLE_DEVICE_DISCONNECT, addr);
    }
}


static void le_param_updated(struct bt_conn* conn, u16_t interval, u16_t latency, u16_t timeout)
{
    printf("LE conn param updated: int 0x%04x lat %d to %d", interval, latency, timeout);
}
/*广播包数据*/
static struct bt_data adv_data[3] =
{
    BT_DATA_BYTES(BT_DATA_FLAGS, (BT_LE_AD_GENERAL | BT_LE_AD_NO_BREDR)),
    BT_DATA_BYTES(BT_DATA_UUID16_ALL, 0x12, 0x18),//hid uuid 
    BT_DATA_BYTES(BT_DATA_GAP_APPEARANCE, 0xC1, 0x03),//hid apperence 0x03C1
};

void my_ble_start_advertise(void)
{
    struct bt_le_adv_param param;
    int err = 0;
    param.id = BT_ID_DEFAULT;
    param.interval_min = BT_GAP_ADV_FAST_INT_MIN_2;
    param.interval_max = BT_GAP_ADV_FAST_INT_MAX_2;
    param.options = (BT_LE_ADV_OPT_CONNECTABLE | BT_LE_ADV_OPT_USE_NAME | BT_LE_ADV_OPT_ONE_TIME);
    /*Get mode, 0:General discoverable,  1:non discoverable, 2:limit discoverable*/
    err = bt_le_adv_start(&param, adv_data, ARRAY_SIZE(adv_data), NULL, 0);//rsp_data, ARRAY_SIZE(rsp_data));
    if (err)
    {
        printf("Failed to start advertising (err %d)", err);
    }
    else
    {
        printf("Advertising started");
    }
}

static void bt_ready_cb(int err)
{
    if (err != 0)
    {
        return;
    }
    printf("bt_ready");
}

static ssize_t read_data(struct bt_conn* conn, const struct bt_gatt_attr* attr, void* buf, u16_t len, u16_t offset)
{
    if (static_ble_send_data_cb != NULL)
    {
        static_ble_send_data_cb(conn, buf, len);
    }

    return len;
}

static ssize_t write_data(struct bt_conn* conn, const struct bt_gatt_attr* attr, const void* buf, u16_t len, u16_t offset, u8_t flags)
{
    if (static_ble_recv_data_cb != NULL)
    {
        static_ble_recv_data_cb(conn, buf, len);
    }

    return len;
}

static ssize_t hid_info_read_data(struct bt_conn* conn, const struct bt_gatt_attr* attr, void* buf, u16_t len, u16_t offset)
{
    return len;
}

static ssize_t hid_map_read_data(struct bt_conn* conn, const struct bt_gatt_attr* attr, void* buf, u16_t len, u16_t offset)
{
    return len;
}

static ssize_t hid_descrtptor_read_data(struct bt_conn* conn, const struct bt_gatt_attr* attr, void* buf, u16_t len, u16_t offset)
{
    return len;
}

static ssize_t hid_descrtptor_read_data_1(struct bt_conn* conn, const struct bt_gatt_attr* attr, void* buf, u16_t len, u16_t offset)
{
    return len;
}

static ssize_t hid_descrtptor_read_data_2(struct bt_conn* conn, const struct bt_gatt_attr* attr, void* buf, u16_t len, u16_t offset)
{
    return len;
}

static ssize_t hid_mode_read_data(struct bt_conn* conn, const struct bt_gatt_attr* attr, void* buf, u16_t len, u16_t offset)
{
    return len;
}

static ssize_t hid_ctrl_write_data(struct bt_conn* conn, const struct bt_gatt_attr* attr, const void* buf, u16_t len, u16_t offset, u8_t flags)
{
    if (static_ble_recv_data_cb != NULL)
    {
        static_ble_recv_data_cb(conn, buf, len);
    }

    return len;
}

/*ble 属性表*/
static struct bt_gatt_attr ble_Attributes[] =
{
    /*自定义主服务*/

    // BT_GATT_PRIMARY_SERVICE(MY_UUID_USER_SER),
    // BT_GATT_CHARACTERISTIC(MY_UUID_USER_TRD, BT_GATT_CHRC_NOTIFY|BT_GATT_CHRC_WRITE | BT_GATT_CHRC_WRITE_WITHOUT_RESP, BT_GATT_PERM_READ|BT_GATT_PERM_WRITE,read_data,write_data,NULL),
    // BT_GATT_CCC(ccc_cfg_changed, BT_GATT_PERM_READ | BT_GATT_PERM_WRITE),
    /*HID服务*/
    BT_GATT_PRIMARY_SERVICE(BT_UUID_HIDS), //
    /*返回数据 {0x11, 0x01, 0x00, 0x02}*/
    BT_GATT_CHARACTERISTIC(BT_UUID_HIDS_INFO,BT_GATT_CHRC_READ,BT_GATT_PERM_READ ,hid_info_read_data,NULL,NULL), //1 2
    /*返回键盘描述符*/
    BT_GATT_CHARACTERISTIC(BT_UUID_HIDS_REPORT_MAP,BT_GATT_CHRC_READ,BT_GATT_PERM_READ ,hid_map_read_data,NULL,NULL), // 3 4
    /*暂时不处理*/
    BT_GATT_CHARACTERISTIC(BT_UUID_HIDS_CTRL_POINT,BT_GATT_CHRC_WRITE,BT_GATT_PERM_READ ,hid_ctrl_write_data,NULL,NULL), // 5 6
    /*hid_ctrl_write_data 空函数，hid_descrtptor_read_data 返回 0x01 0x01 */
    BT_GATT_CHARACTERISTIC(BT_UUID_HIDS_REPORT,BT_GATT_CHRC_WRITE|BT_GATT_CHRC_NOTIFY|BT_GATT_CHRC_WRITE_WITHOUT_RESP,BT_GATT_PERM_READ| BT_GATT_PERM_WRITE ,read_data,write_data,NULL), // 7  8
    BT_GATT_CCC(hid_ctrl_write_data, BT_GATT_PERM_READ | BT_GATT_PERM_WRITE),
    BT_GATT_DESCRIPTOR(BT_UUID_HIDS_REPORT_REF, BT_GATT_PERM_READ, hid_descrtptor_read_data, NULL, NULL),
    /*hid_ctrl_write_data 空函数，hid_descrtptor_read_data_1返回 0x01 0x02 */
    BT_GATT_CHARACTERISTIC(BT_UUID_HIDS_REPORT,BT_GATT_CHRC_READ|BT_GATT_CHRC_WRITE,BT_GATT_PERM_READ|BT_GATT_PERM_WRITE ,NULL,hid_ctrl_write_data,NULL),
    BT_GATT_DESCRIPTOR(BT_UUID_HIDS_REPORT_REF, BT_GATT_PERM_READ, hid_descrtptor_read_data_1, NULL, NULL),
    /*hid_mode_read_data 返回0x01*/
    BT_GATT_CHARACTERISTIC(BT_UUID_HIDS_PROTOCOL_MODE,BT_GATT_CHRC_READ|BT_GATT_CHRC_WRITE,BT_GATT_PERM_READ ,hid_mode_read_data,NULL,NULL),
    /*hid_ctrl_write_data空函数hid_descrtptor_read_data_2 返回0x01 0x03*/
    BT_GATT_CHARACTERISTIC(BT_UUID_HIDS_REPORT,BT_GATT_CHRC_READ|BT_GATT_CHRC_WRITE,BT_GATT_PERM_READ ,NULL,hid_ctrl_write_data,NULL),
    BT_GATT_DESCRIPTOR(BT_UUID_HIDS_REPORT_REF, BT_GATT_PERM_READ, hid_descrtptor_read_data_2, NULL, 1),

};

struct bt_gatt_service BLE_GATT_SER = BT_GATT_SERVICE(ble_Attributes);
static struct bt_conn_cb conn_callbacks = {
    .connected = connected,
    .disconnected = disconnected,
    .le_param_updated = le_param_updated,
};


/*BLE发送函数*/
void my_ble_notify(struct bt_conn* conn, char* buf, u16_t len)
{
    bt_gatt_notify(conn, notify_attrs, buf, len);

}

/*BLE初始化函数*/
void my_ble_init(void)
{
    printf("my_ble_hid_init\r\n");
    ble_controller_init(configMAX_PRIORITIES - 1); //ble协议栈初始化
    hci_driver_init();//初始化驱动
    bt_enable(bt_ready_cb);
    bt_gatt_service_register((struct bt_gatt_service*)&BLE_GATT_SER); //注册GATT服务     
    notify_attrs = &ble_Attributes[5];   //对应notify 
    bt_conn_cb_register(&conn_callbacks);
    my_ble_start_advertise();//开启广播
    bt_set_name("QD01 Keyboard"); //设置蓝牙名称  
}
/*注册蓝牙接收回调*/
void my_ble_recv_register(my_ble_recv_data_cb_t ble_recv_cb)
{
    static_ble_recv_data_cb = ble_recv_cb;
}
/*注册蓝牙连接回调*/
void my_ble_connect_register(my_ble_connet_status_cb_t ble_connet_cb)
{
    static_ble_connet_status_cb = ble_connet_cb;
}


