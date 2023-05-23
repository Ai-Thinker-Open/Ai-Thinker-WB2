#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include "ble_btc.h"
#include "blufi_prf.h"

void *g_btc_profile_cb = NULL;

void axk_profile_cb_reset(void)
{
    g_btc_profile_cb = NULL;
}

int btc_profile_cb_set(void *cb)
{

    g_btc_profile_cb = cb;
    return 0;
}

void *btc_profile_cb_get()
{
    return g_btc_profile_cb;
}


static void btc_thread_handler(void *arg)
{
    btc_msg_t *msg = (btc_msg_t *)arg;

    printf("[blufi] %s msg %u %u %p\n", __func__, msg->sig, msg->act, msg->arg);
    switch (msg->sig) {
    case BTC_SIG_API_CALL:
        btc_blufi_call_handler(msg);
        break;
    case BTC_SIG_API_CB:
        btc_blufi_cb_handler(msg);
        break;
    default:
        break;
    }

    if (msg->arg) {
        free(msg->arg);
    }
    //free(msg);
}

bt_status_t btc_transfer_context(btc_msg_t *msg, void *arg, int arg_len, btc_arg_deep_copy_t copy_func)
{
     btc_msg_t lmsg;

    if (msg == NULL) {
        return BT_STATUS_PARM_INVALID;
    }

    printf("[blufi]%s msg %u %u %p\n", __func__, msg->sig, msg->act, arg);

    memcpy(&lmsg, msg, sizeof(btc_msg_t));
    if (arg) {
        lmsg.arg = (void *)malloc(arg_len);
        if (lmsg.arg == NULL) {
            return BT_STATUS_NOMEM;
        }
        memset(lmsg.arg, 0x00, arg_len);    //important, avoid arg which have no length
        memcpy(lmsg.arg, arg, arg_len);
        if (copy_func) {
            copy_func(&lmsg, lmsg.arg, arg);
        }
    } else {
        lmsg.arg = NULL;
    }

    btc_thread_handler(&lmsg);

    return 0;
}