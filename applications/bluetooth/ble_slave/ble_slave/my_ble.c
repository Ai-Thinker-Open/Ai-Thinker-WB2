#include "my_ble.h"

/*自定义UUID*/
#define MY_UUID1_USER_SER    BT_UUID_DECLARE_128(BT_UUID_128_ENCODE(0x55535343, 0xfe7d, 0x4ae5, 0x8fa9, 0x9fafd205e455))
#define MY_UUID1_USER_TXD    BT_UUID_DECLARE_128(BT_UUID_128_ENCODE(0x49535343, 0x8841, 0x43f4, 0xa8d4, 0xecbe34729bb3))
#define MY_UUID1_USER_RXD    BT_UUID_DECLARE_128(BT_UUID_128_ENCODE(0x49535343, 0x1e4d, 0x4bd9, 0xba61, 0x23c647249616))

#define MY_UUID2_USER_SER    BT_UUID_DECLARE_128(BT_UUID_128_ENCODE(0x10190d0c, 0x0b0a, 0x0908, 0x0706, 0x050403020100))
#define MY_UUID2_USER_TRD    BT_UUID_DECLARE_128(BT_UUID_128_ENCODE(0x102B0d0c, 0x0b0a, 0x0908, 0x0706, 0x050403020100))			
my_ble_recv_data_cb_t static_ble_recv_data_cb = NULL;
my_ble_send_data_cb_t static_ble_send_data_cb = NULL;
my_ble_connet_status_cb_t static_ble_connet_status_cb = NULL;
static struct bt_gatt_exchange_params exchange_params;

static void ccc_cfg_changed(const struct bt_gatt_attr *attr,u16_t value)
{
    printf("ccc change %d", value);
}

static void connected(struct bt_conn *conn, u8_t err)
{
	char addr[BT_ADDR_LE_STR_LEN];
    pconn=conn;
    bt_addr_le_to_str(bt_conn_get_dst(conn), addr, sizeof(addr));
	if (err) 
    {
		printf("Failed to connect to %s (%u)", addr, err);
		return;
	}
	printf("Connected: %s \r\n", addr);
    if(static_ble_connet_status_cb != NULL)
    {
        static_ble_connet_status_cb(MY_BLE_DEVICE_CONNECT, addr);
    }
}

static void disconnected(struct bt_conn *conn, u8_t reason)
{
	char addr[BT_ADDR_LE_STR_LEN];
    pconn=conn;
	bt_addr_le_to_str(bt_conn_get_dst(conn), addr, sizeof(addr));  
	printf("Disconnected: %s (reason %u)", addr, reason);
    if(static_ble_connet_status_cb != NULL)
    {
        static_ble_connet_status_cb(MY_BLE_DEVICE_DISCONNECT, addr);
    }
}


static void le_param_updated(struct bt_conn *conn, u16_t interval,u16_t latency, u16_t timeout)
{
   printf("LE conn param updated: int 0x%04x lat %d to %d", interval, latency, timeout);
}

/*广播包数据*/
static struct bt_data adv_data[2] = 
{
	BT_DATA_BYTES(BT_DATA_FLAGS, (BT_LE_AD_GENERAL | BT_LE_AD_NO_BREDR)),
    BT_DATA(BT_DATA_MANUFACTURER_DATA, "123456", 6),
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
    err = bt_le_adv_start(&param, adv_data, ARRAY_SIZE(adv_data),NULL,0);//rsp_data, ARRAY_SIZE(rsp_data));
    if(err)
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

static ssize_t read_data(struct bt_conn *conn,const struct bt_gatt_attr *attr, void *buf,u16_t len, u16_t offset)
{
    if(static_ble_send_data_cb != NULL)
    {
        static_ble_send_data_cb(conn, buf, len);
    }
    return len;
}

static ssize_t write_data(struct bt_conn *conn, const struct bt_gatt_attr *attr, const void *buf,u16_t len, u16_t offset, u8_t flags)
{
    if(static_ble_recv_data_cb != NULL)
    {
        static_ble_recv_data_cb(conn, buf, len);
    }
    return len;
}

/*ble 属性表*/
static struct bt_gatt_attr ble_Attributes[]=
{
    /*自定义主服务*/
	BT_GATT_PRIMARY_SERVICE(MY_UUID1_USER_SER),
    BT_GATT_CHARACTERISTIC(MY_UUID1_USER_TXD, BT_GATT_CHRC_WRITE | BT_GATT_CHRC_WRITE_WITHOUT_RESP, BT_GATT_PERM_WRITE,NULL,write_data,NULL),
    BT_GATT_CHARACTERISTIC(MY_UUID1_USER_RXD, BT_GATT_CHRC_NOTIFY,BT_GATT_PERM_READ, read_data,NULL, NULL),
    BT_GATT_CCC(ccc_cfg_changed, BT_GATT_PERM_READ | BT_GATT_PERM_WRITE),
    BT_GATT_PRIMARY_SERVICE(MY_UUID2_USER_SER),
    BT_GATT_CHARACTERISTIC(MY_UUID2_USER_TRD, BT_GATT_CHRC_NOTIFY|BT_GATT_CHRC_WRITE | BT_GATT_CHRC_WRITE_WITHOUT_RESP, BT_GATT_PERM_READ|
    BT_GATT_PERM_WRITE,read_data,write_data,NULL),
    BT_GATT_CCC(ccc_cfg_changed, BT_GATT_PERM_READ | BT_GATT_PERM_WRITE),
};

struct bt_gatt_service BLE_GATT_SER = BT_GATT_SERVICE(ble_Attributes);
static struct bt_conn_cb conn_callbacks = {
	.connected = connected,
	.disconnected = disconnected,
	.le_param_updated = le_param_updated,
};


/*BLE发送函数*/
void my_ble_notify(struct bt_conn *conn, char *buf, u16_t len)
{
    bt_gatt_notify(conn, notify_attrs, buf, len);
}

/*BLE初始化函数*/
void my_ble_init(void)
{                                                        
    printf("my_ble_init\r\n");
    ble_controller_init(configMAX_PRIORITIES - 1); //ble协议栈初始化
    hci_driver_init();//初始化驱动
    bt_enable(bt_ready_cb);
    bt_gatt_service_register((struct bt_gatt_service *)&BLE_GATT_SER); //注册GATT服务     
    notify_attrs = &ble_Attributes[4];   //对应notify 
    bt_conn_cb_register(&conn_callbacks);
    my_ble_start_advertise();//开启广播
    bt_set_name("MY-BLE"); //设置蓝牙名称  
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


 
