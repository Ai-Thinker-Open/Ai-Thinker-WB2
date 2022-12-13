#include <stdlib.h>
#include <string.h>

#include "blufi_init.h"
#include "blufi_prf.h"
#include "blufi_hal.h"

#include "axk_ble.h"
#include "blufi.h"
#include "ble_interface.h"

extern blufi_config_t g_blufi_config;
void axk_blufi_adv_start(void)
{
    uint16_t offect = 0;
    uint16_t blufiname_len =0;
    uint8_t adv_data[37] = {0};
    uint8_t rsp_data[37] = {0};
    ble_adv_data_t data = {0};
    ble_adv_param_t adv_param = {0};
    adv_param.adv_int_max = 180;
    adv_param.adv_int_min = 180;
    adv_param.channel_map = 7;

    if (g_blufi_config.ble.blufi.blufiname[0] != 0)
    {
        blufiname_len=strlen(g_blufi_config.ble.blufi.blufiname);   
        rsp_data[0]=blufiname_len + 1;
        rsp_data[1] = 0x09;
        memcpy(&rsp_data[2], g_blufi_config.ble.blufi.blufiname, blufiname_len);
    }
    else
    {
        char name[] = "BLUFI_DEVICE_1234567890";
        blufiname_len=strlen(name);
        rsp_data[0] = blufiname_len+ 1;
        rsp_data[1] = 0x09;
        memcpy(&rsp_data[2], name, strlen(name));
    }

    adv_data[offect++] = 2;
    adv_data[offect++] = 0x01;
    adv_data[offect++] = 0x06;

    adv_data[offect++] = 2;
    adv_data[offect++] = 0x0A;
    adv_data[offect++] = 0x03;

    adv_data[offect++] = 3;
    adv_data[offect++] = 0x03;
    adv_data[offect++] = 0xFF;
    adv_data[offect++] = 0xFF;

    memcpy(data.data, adv_data, offect);
    memcpy(data.rsp_data, rsp_data, blufiname_len + 2);
    data.data_len = offect;
    data.rsp_data_len=blufiname_len+2;
    if (axk_hal_ble_adv_start(&adv_param, &data) != BLUFI_ERR_SUCCESS)
    {
        printf("[BLUFI] axk_hal_ble_adv_start fail\r\n");
    }
}

uint8_t axk_blufi_init(void)
{
    blufi_env.enabled = true;
    _blufi_cb_param_t param;
    param.init_finish.state = _BLUFI_INIT_OK;
    btc_blufi_cb_to_app(AXK_BLUFI_EVENT_INIT_FINISH, &param);
    return _BLUFI_SUCCESS;
}

void axk_blufi_deinit(void)
{
    blufi_env.enabled = false;
    btc_msg_t msg;
    _blufi_cb_param_t param;
    msg.act = AXK_BLUFI_EVENT_DEINIT_FINISH;
    param.deinit_finish.state = _BLUFI_DEINIT_OK;
    btc_transfer_context(&msg, &param, sizeof(_blufi_cb_param_t), NULL);
}

void axk_blufi_adv_stop(void)
{
    axk_hal_ble_adv_stop();
}




void  axk_blufi_disconnect()
{
   axk_hal_blufi_gap_disconnect();
}

void axk_blufi_send_notify(void *arg)
{
   struct pkt_info *pkts = (struct pkt_info *) arg;
   axk_hal_ble_gatt_blufi_notify_send(pkts->pkt,pkts->pkt_len);

}

void axk_blufi_send_encap(void *arg)
{
    struct blufi_hdr *hdr = (struct blufi_hdr *)arg;
    if (blufi_env.is_connected == false)
    {
        printf("[BLUFI] %s ble connection is broken\r\n", __func__);
        free(hdr);
        hdr = NULL;
        return;
    }
    btc_blufi_send_notify((uint8_t *)hdr,
                          ((hdr->fc & BLUFI_FC_CHECK) ? hdr->data_len + sizeof(struct blufi_hdr) + 2 : hdr->data_len + sizeof(struct blufi_hdr)));
}




