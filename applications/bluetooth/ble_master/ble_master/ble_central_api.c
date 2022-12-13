#include <stdint.h>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <FreeRTOS.h>
#include <semphr.h>
#include <errno.h>
#include <aos/yloop.h>
#include "conn.h"
#include "conn_internal.h"
#include "gatt.h"
#include "hci_core.h"
#include "ble_interface.h"
#include <hosal_uart.h>
#define    CODE_USER_MASTER_INIT     0x00
#define    CODE_USER_MASTER_CONN     0x01
#define    CODE_USER_MASTER_DISCONN  0x02
#define    CODE_USER_MASTER_AUTOCONN 0x10
/*extern func*/
extern void bleuart_printf(char *buf);

/*struct */
static struct bt_gatt_discover_params discover_params;
static struct 
{
    uint16_t tt_tx;
    uint16_t tt_rx;
} discover_handle;

static struct 
{
    uint16_t uuid;
    uint8_t mac[6];
} ble_autoconn_target;

static struct bt_gatt_subscribe_params subscribe_tt;
static struct bt_gatt_subscribe_params subscribe_cmd;
static struct bt_gatt_exchange_params exchange_params;
static int ble_master_autoconn;
/*填写从机数据透传服务的特征UUID */
const char MY_UUID1_USER_TXD[16] = {0x49,0x53,0x53,0x43,0x88,0x41,0x43,0xf4,0xa8,0xd4,0xec,0xbe,0x34,0x72,0x9b,0xb3};
const char MY_UUID1_USER_RXD[16] = {0x49,0x53,0x53,0x43,0x1e,0x4d,0x4b,0xd9,0xba,0x61,0x23,0xc6,0x47,0x24,0x96,0x16};
/*连接状态*/
unsigned char bleuart_connect_status = 0;

static StaticSemaphore_t sem_conn_buffer;
static SemaphoreHandle_t sem_conn;
static StaticSemaphore_t sem_autoconn_buffer;
static SemaphoreHandle_t sem_autoconn;
static TaskHandle_t ble_master_autoconn_handle;
extern hosal_uart_dev_t ble_uart_dev;
static uint8_t notify_func(
    struct bt_conn *conn,
    struct bt_gatt_subscribe_params *params,
    const void *data, 
    uint16_t length)
{
    pconn = conn;
    if (length != 0)
    {
        printf("[BLE] notify(%d):%d\r\n", params->value_handle, length);
        hosal_uart_send(&ble_uart_dev, data, length);
    }
    return BT_GATT_ITER_CONTINUE;
}

static uint8_t discover_func(
    struct bt_conn *conn,
    const struct bt_gatt_attr *attr,
    struct bt_gatt_discover_params *params)
{
    int err;
    uint8_t uuid128[16];
    pconn = conn;
    if (!attr) 
    {
        printf("Discover complete\r\n");
        (void)memset(params, 0, sizeof(*params));
        return BT_GATT_ITER_STOP;
    }

    printf("[BLE] server discover handle:%d, uuid type:%d\r\n", attr->handle, attr->uuid->type);

    if (attr->uuid->type == BT_UUID_TYPE_128) 
    {
        memcpy(uuid128, ((struct bt_uuid_128 *)(attr->uuid))->val, 16);
        char buf[12];
        ble_reverse_byte(uuid128, 16); 
        if (memcmp((char*)uuid128, MY_UUID1_USER_TXD, 16) == 0) 
        {
            discover_handle.tt_tx = attr->handle;
            bleuart_printf("found ble txd uuid\r\n");
            sprintf(buf,"TXD handle:%02X\r\n",attr->handle);
            bleuart_printf(buf);
        } 
        else if (memcmp((char*)uuid128,MY_UUID1_USER_RXD, 16) == 0) 
        {
            discover_handle.tt_rx = attr->handle;
            bleuart_printf("found ble rxd uuid\r\n");
            sprintf(buf,"RXD handle:%02X\r\n",attr->handle);
            bleuart_printf(buf);
        } 
        else 
        {
            bleuart_printf("not found ble txd&rxd uuid\r\n");
            bleuart_printf((char*)uuid128);
        }
    }

    if(!bt_uuid_cmp(attr->uuid, BT_UUID_GATT_CCC)) 
    {
        if (discover_handle.tt_rx != 0) 
        {
            if (attr->handle == discover_handle.tt_rx + 1) 
            {
                subscribe_tt.notify = notify_func;
                subscribe_tt.value = BT_GATT_CCC_NOTIFY;
                subscribe_tt.ccc_handle = attr->handle;
                subscribe_tt.value_handle = discover_handle.tt_rx;
                err = bt_gatt_subscribe(conn, &subscribe_tt);
                if (err && err != -EALREADY)
                {
                   bleuart_printf("tt Subscribe failed\r\n");
                } 
                else 
                {
                   bleuart_printf("tt SUBSCRIBED\r\n");
                }
            }
        }
    }
    return BT_GATT_ITER_CONTINUE;
}

static int ble_master_discover_server(struct bt_conn *conn)
{
    int err;
    if (discover_handle.tt_tx != 0 && discover_handle.tt_rx != 0)
    {
        printf("[BLE] allready discover\r\n");
    }
    discover_params.uuid = NULL;
    discover_params.func = discover_func;
    discover_params.start_handle = 0x0001;
    discover_params.end_handle = 0x0040;  //
    discover_params.type = BT_GATT_DISCOVER_ATTRIBUTE;
    pconn = conn;
    err = bt_gatt_discover(conn, &discover_params);
    if (err) 
    {
        printf("[BLE] discover faxkled(err %d)\r\n", err);
        return -1;
    }
    return 0;
}

static void ble_master_auto_connect(void)
{
    uint8_t *mac;
    uint16_t *uuid;
    struct bt_conn *conn;
    bt_addr_le_t target_addr;
    struct bt_le_conn_param conn_param;
    static uint32_t autoconn_interval = 1000;
    conn_param.interval_min = 0x0018;
    conn_param.interval_max = 0x0028;
    conn_param.latency = 0,
    conn_param.timeout =400;

    if (ble_autoconn_target.uuid != 0) 
    {
        uuid = &ble_autoconn_target.uuid;
    }
    if (ble_autoconn_target.uuid != 0) 
    {
        mac = ble_autoconn_target.mac;
    }

    if (mac == NULL && uuid == NULL) 
    {
        printf("[BLE] invalid mac|uuid\r\n");
        return ;
    }

    if (ble_master_find_target(2000, mac, (uint16_t *)uuid, &target_addr) != 0) 
    {
        vTaskDelay(autoconn_interval / portTICK_PERIOD_MS);
        if (autoconn_interval < 30 * 1000)
        {
            autoconn_interval += 1000;
        }
        aos_post_event(EV_USER, CODE_USER_MASTER_AUTOCONN, 0);
        return ;
    }

    /* if found target, reset auto connect interval */
    autoconn_interval = 1000;
    conn = bt_conn_create_le(&target_addr, &conn_param);
    if (!conn) 
    {
        printf("Connection failed\r\n");
        aos_post_event(EV_USER, CODE_USER_MASTER_AUTOCONN, 0);
        return ;
    } 
    else 
    {
        printf("Connection pending\r\n");
    }

    if (pdFALSE == xSemaphoreTake(sem_conn, 3000 / portTICK_PERIOD_MS)) 
    {
        bt_conn_disconnect(conn, BT_HCI_ERR_REMOTE_USER_TERM_CONN);
    }
}

static int ble_master_conn_cb(struct bt_conn *conn, uint8_t code)
{
    if (code) 
    {
		printf("[BLE] connect fail(%u)\r\n", code);
		bt_conn_unref(conn);
		return -1;
	}
    if (sem_conn) 
    {
        xSemaphoreGive(sem_conn);
    }
    pconn = conn;
    aos_post_event(EV_USER, CODE_USER_MASTER_CONN, (unsigned long)conn);

    return 0;
}

static int ble_master_disconn_cb(struct bt_conn *conn, uint8_t code)
{
    pconn = conn;
	aos_post_event(EV_USER, CODE_USER_MASTER_DISCONN, (unsigned long)conn);

    return 0;
}

static void exchange_func(struct bt_conn *conn, u8_t err,struct bt_gatt_exchange_params *params)
{
    pconn = conn;
    printf("[BLE] Exchange %s MTU Size =%d \r\n", err == 0U ? "successful" : "faxkled", bt_gatt_get_mtu(conn));
}

static void event_cb_user_event(input_event_t *event, void *private_data)
{
    switch (event->code)
    {
        case CODE_USER_MASTER_INIT:
            bleuart_printf("[BLE] master event init\r\n");
            break;
        case CODE_USER_MASTER_CONN:
            bleuart_printf("+BLE_CONNECTED\r\n");
            bleuart_connect_status = 1;
            ble_master_discover_server((struct bt_conn *)event->value);

            /* req mtu to max */
            exchange_params.func = exchange_func;
            bt_gatt_exchange_mtu((struct bt_conn *)event->value, &exchange_params);
            break;
		case CODE_USER_MASTER_DISCONN:
            bleuart_printf("+BLE_DISCONNECTED\r\n");
            bleuart_connect_status = 0;
            bt_conn_unref((struct bt_conn *)event->value);
            aos_post_event(EV_USER, CODE_USER_MASTER_AUTOCONN, 0);
            break;
        case CODE_USER_MASTER_AUTOCONN:
            if (ble_master_autoconn != BLE_MASTER_AUTOCONN_DISABLE) {
                bleuart_printf("+BLE_AUTOCONNECTED\r\n");
                xSemaphoreGive(sem_autoconn);
            }
            break;
        default:
            printf("[BLE] master event unknown code\r\n", event->code);
            break;
    }
}

static void _ble_autoconn_task(void) 
{
    while (1)
    {
        if (pdFAIL == xSemaphoreTake(sem_autoconn, portMAX_DELAY)) {
            printf("[BLE] autoconn take Semaphore fail\r\n");
            break;
        }
        bleuart_printf("send ok\r\n");
        ble_master_auto_connect();
    }

    vTaskDelete(NULL);
}

int ble_master_write_data(struct bt_conn *conn, u16_t handle, void *data, uint16_t length)
{
    int ret;
    uint16_t mtu;
    uint16_t offset;
    uint16_t send_len;
    char rep[40];
    offset = 0;
    mtu = bt_gatt_get_mtu(conn) - 3;
    while (length > 0) {
        /* calculate send_len */
        send_len = length > mtu ? mtu : length;
        /* send data */
        ret = bt_gatt_write_without_response(conn, handle, (const void *)data + offset, send_len, 0);
        /* set offset */
        offset += send_len;
        length -= send_len;
        printf("[BLE] write len:%d \r\n", send_len);
        
        if (ret != 0) {
            break;
        }
    }
    return ret;
}

/*蓝牙主机主动连接指定从机*/
//参数
//    mac：需要连接的蓝牙MAC地址，这是一个mac[6]的数据，如果不指定MAC这里则传入NULL
//    uuid：需要连接的蓝牙16位UUID，这是一个uuid[2]的数据，如果不指定则传入NULL
//    autoConnect：是否开启后台自动连接
//        0：不开启自动连接
//        1：开启自动连接，后台自动扫描连接(蓝牙断开后会自动重连，但是如果首次连接失败则不会开启后台自动重联任务)
//        2：开启自动连接，后台自动扫描连接(即使首次连接失败也会自动重联)
//
//注意：
//    mac和uuid指定任意一个或者两个都可以，当两个都为NULL则表示要暂停后台自动连接
//返回值
//    0：连接/停止成功
//    1：当前没有扫描到指定蓝牙，切换到后台自动扫描连接
//    2：连接失败
//    128：未适配
uint8_t axk_HalBleCentralConnect(uint8_t *mac, uint8_t *uuid, uint8_t autoConnect)
{
    bt_addr_le_t target_addr;
    struct bt_conn *conn;
    struct bt_le_conn_param conn_param;
    if (autoConnect > 2) {
        return 2;
    }

    memset(&ble_autoconn_target, 0, sizeof ble_autoconn_target);

    if (mac == NULL && uuid == NULL) {
        /* disable auto connect */
        ble_master_autoconn = BLE_MASTER_AUTOCONN_DISABLE;
        return 0;
    }

    if (mac != NULL) {
        memcpy(ble_autoconn_target.mac, mac, 6);
    }
    if (uuid != NULL) {
        ble_autoconn_target.uuid = *(uint16_t *)uuid;
    }

    ble_master_autoconn = BLE_MASTER_AUTOCONN_DISABLE;

    conn_param.interval_min = 0x0018;
    conn_param.interval_max = 0x0028;
    conn_param.latency = 0,
    conn_param.timeout =400;

    if (ble_master_find_target(2000, mac, (uint16_t *)uuid, &target_addr) != 0) {
        if (autoConnect == BLE_MASTER_AUTOCONN_FORCE) {
            ble_master_autoconn = BLE_MASTER_AUTOCONN_FORCE;
            return 1;
        }
        return 2;
    }

    memset(&discover_handle, 0, sizeof discover_handle);
    conn = bt_conn_create_le(&target_addr, &conn_param);
    pconn = conn;
    if (!conn) {
       bleuart_printf("Connection failed\r\n");
        return 2;
    } else {
       bleuart_printf("Connection pending\r\n");
    }

    if (pdFAIL == xSemaphoreTake(sem_conn, 3000 / portTICK_PERIOD_MS)) {
        bleuart_printf("connect timeout\r\n");
        bt_conn_disconnect(conn, BT_HCI_ERR_REMOTE_USER_TERM_CONN);
    }
    ble_master_autoconn = autoConnect;
    return 0;
}

/*主机开启蓝牙扫描*/
/*返回值         */
/*0：扫描完毕    */
/*1：扫描失败    */
/*128：未适配    */
uint8_t axk_HalBleCentralStartScan(void)
{
    int ret;
    ret = ble_master_scan(1000);
    if (ret != 0)
    {
        return 1;
    }
    return 0;
}


/*主机模式向蓝牙透传服务发送数据*/
/*参数                        */
/*   len：需要发送的数据长度   */
/*    data：要发送的数据       */
/*返回值                      */
/*    >=0：成功发送的数据长度  */
/*    -1：蓝牙状态错误        */
/*    -2：数据长度错误        */
/*    -3：data为NULL         */
/*    -4：发送失败           */
/*    -128：未适配           */
int axk_HalBleCentralTTWrite(uint16_t len, uint8_t *data)
{
    int ret;
    if (pconn == NULL) {
        return -1;
    }

    if (discover_handle.tt_tx == 0){
        return -1;
    }
    ret = ble_master_write_data(pconn, discover_handle.tt_tx, (const void *)data, len);
    return ret;
}

/*蓝牙主机断开连接函数*/
/*返回值             */
/*0：成功            */
/*1：失败            */
/*128：没有适配       */
uint8_t axk_HalBleCentralDisconnect(void)
{
    //struct bt_conn *conn;
    //conn = ble_get_conn_cur();
    if (pconn == NULL) {
        return 1;
    }
    bt_conn_disconnect(pconn, BT_HCI_ERR_REMOTE_USER_TERM_CONN);
    return 0;
}

/*BLE 主机模式初始化*/
int ble_master_init(void)
{
    int ret;

    sem_conn = xSemaphoreCreateBinaryStatic(&sem_conn_buffer);
    if (sem_conn == NULL )
    {
        printf("[BLE] create sem fail\r\n");
        return -1;
    }

    sem_autoconn = xSemaphoreCreateBinaryStatic(&sem_autoconn_buffer);
    if (sem_autoconn == NULL )
    {
        vSemaphoreDelete(sem_conn);
        printf("[BLE] create sem fail\r\n");
        return -1;
    }

    ret = xTaskCreate((void *)_ble_autoconn_task, "autoconn", 1024 / 4, NULL, 10, &ble_master_autoconn_handle);

    if (ret != pdPASS) {
        vSemaphoreDelete(sem_conn);
        vSemaphoreDelete(sem_autoconn);
        printf("[BLE] task create fail\r\n");
        return -1;
    }
    ble_regist_conn(ble_master_conn_cb);
    ble_regist_disconn(ble_master_disconn_cb);

    aos_register_event_filter(EV_USER, event_cb_user_event, NULL);
    aos_post_event(EV_USER, CODE_USER_MASTER_INIT, 0);

    return 0;
}

int ble_master_deinit(void)
{
    ble_regist_conn(NULL);
    ble_regist_disconn(NULL);
    aos_unregister_event_filter(EV_USER, event_cb_user_event, NULL);
    vSemaphoreDelete(sem_conn);
    vSemaphoreDelete(sem_autoconn);
    vTaskDelete(ble_master_autoconn_handle);
    sem_conn = NULL;
    return 0;
}


