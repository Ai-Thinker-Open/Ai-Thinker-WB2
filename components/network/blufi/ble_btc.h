#ifndef __AT_BTC_H__
#define __AT_BTC_H__
#include <stdint.h>

#define MAX_UUID_SIZE 16

typedef struct
{
#define LEN_UUID_16 2
#define LEN_UUID_32 4
#define LEN_UUID_128 16

    uint16_t len;

    union
    {
        uint16_t uuid16;
        uint32_t uuid32;
        uint8_t uuid128[MAX_UUID_SIZE];
    } uu;

} tBT_UUID;

#define BD_ADDR_LEN 6 /* Device address length */
typedef uint8_t BD_ADDR[BD_ADDR_LEN];


typedef struct btc_msg {
    uint8_t sig;    //event signal
    uint8_t aid;    //application id
    //uint8_t pid;    //profile id
    uint8_t act;    //profile action, defined in seprerate header files
    void   *arg;    //param for btc function or function param
} btc_msg_t;

typedef enum {
    BTC_SIG_API_CALL = 0,   // APP TO STACK
    BTC_SIG_API_CB,         // STACK TO APP
    BTC_SIG_NUM,
} btc_sig_t; //btc message type

typedef enum {
    BT_STATUS_SUCCESS = 0,
    BT_STATUS_FAIL,
    BT_STATUS_NOT_READY,
    BT_STATUS_NOMEM,
    BT_STATUS_BUSY,
    BT_STATUS_DONE,        /* request already completed */
    BT_STATUS_UNSUPPORTED,
    BT_STATUS_PARM_INVALID,
    BT_STATUS_UNHANDLED,
    BT_STATUS_AUTH_FAILURE,
    BT_STATUS_RMT_DEV_DOWN,
    BT_STATUS_AUTH_REJECTED,
    BT_STATUS_INVALID_STATIC_RAND_ADDR,
    BT_STATUS_PENDING,
    BT_STATUS_UNACCEPT_CONN_INTERVAL,
    BT_STATUS_PARAM_OUT_OF_RANGE,
    BT_STATUS_TIMEOUT,
    BT_STATUS_MEMORY_FULL,
    BT_STATUS_EIR_TOO_LARGE,
} bt_status_t;

int btc_profile_cb_set(void *cb);
void *btc_profile_cb_get();
void axk_profile_cb_reset(void);


typedef struct {
    void (* btc_call)(btc_msg_t *msg);
    void (* btc_cb)(btc_msg_t *msg);
} btc_func_t;

typedef void (* btc_arg_deep_copy_t)(btc_msg_t *msg, void *dst, void *src);

bt_status_t btc_transfer_context(btc_msg_t *msg, void *arg, int arg_len, btc_arg_deep_copy_t copy_func);

#endif