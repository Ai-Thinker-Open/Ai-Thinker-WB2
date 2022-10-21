/*
 * Copyright (C) 2019 THL A29 Limited, a Tencent company. All rights reserved.
 * Licensed under the MIT License (the "License"); you may not use this file except in
 * compliance with the License. You may obtain a copy of the License at
 * http://opensource.org/licenses/MIT
 * Unless required by applicable law or agreed to in writing, software distributed under the License is
 * distributed on an "AS IS" basis, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND,
 * either express or implied. See the License for the specific language governing permissions and
 * limitations under the License.
 *
 */
#ifdef __cplusplus
extern "C" {
#endif

#include "ble_qiot_config.h"

#include <stdint.h>
#include <stdio.h>
#include <string.h>

#include "ble_qiot_common.h"
#include "ble_qiot_config.h"
#include "ble_qiot_export.h"
#include "ble_qiot_hmac.h"
#include "ble_qiot_import.h"
#include "ble_qiot_log.h"
#include "ble_qiot_param_check.h"
#include "ble_qiot_utils_base64.h"
#include "ble_qiot_md5.h"
#include "ble_qiot_llsync_device.h"
#include "ble_qiot_aes.h"

#define BLE_GET_EXPIRATION_TIME(_cur_time) ((_cur_time) + BLE_EXPIRATION_TIME)

static ble_core_data             sg_core_data;                // ble data storage in flash
ble_device_info           sg_device_info;              // device info storage in flash
static e_llsync_bind_state       sg_llsync_bind_state;        // llsync bind state in used
static e_llsync_connection_state sg_llsync_connection_state;  // llsync connection state in used
static e_ble_connection_state    sg_ble_connection_state;     // ble connection state in used
static uint16_t                  sg_llsync_mtu;               // the mtu for llsync slice data
static uint8_t                   sg_system_type;              // system type in current pairings

uint16_t llsync_mtu_get(void)
{
    // return default mtu if llsync mtu not set
    if (0 == sg_llsync_mtu) {
        sg_llsync_mtu = ATT_MTU_TO_LLSYNC_MTU(ATT_DEFAULT_MTU);
    }
    return sg_llsync_mtu;
}

void llsync_mtu_update(uint16_t llsync_mtu)
{
    sg_llsync_mtu = llsync_mtu;
}

void llsync_bind_state_set(e_llsync_bind_state new_state)
{
    ble_qiot_log_d("bind state: %d ---> %d", sg_llsync_bind_state, new_state);
    sg_llsync_bind_state = new_state;
}

e_llsync_bind_state llsync_bind_state_get(void)
{
    return sg_llsync_bind_state;
}

void llsync_connection_state_set(e_llsync_connection_state new_state)
{
    ble_qiot_log_d("llsync state: %d ---> %d", sg_llsync_connection_state, new_state);
    sg_llsync_connection_state = new_state;
}

bool llsync_is_connected(void)
{
    return sg_llsync_connection_state == E_LLSYNC_CONNECTED;
}

void ble_connection_state_set(e_ble_connection_state new_state)
{
    ble_qiot_log_d("ble state: %d ---> %d", sg_llsync_connection_state, new_state);
    sg_ble_connection_state = new_state;
}

bool ble_is_connected(void)
{
    return sg_ble_connection_state == E_BLE_CONNECTED;
}

void ble_system_type_set(e_system type)
{
    sg_system_type = type;
}

uint8_t ble_system_type_get(void)
{
    return sg_system_type;
}

// [1byte bind state] + [6 bytes mac] + [8bytes identify string]/[10 bytes product id]
int ble_get_my_broadcast_data(char *out_buf, int buf_len)
{
    POINTER_SANITY_CHECK(out_buf, BLE_QIOT_RS_ERR_PARA);
    BUFF_LEN_SANITY_CHECK(buf_len, BLE_BIND_IDENTIFY_STR_LEN + BLE_QIOT_MAC_LEN + 1, BLE_QIOT_RS_ERR_PARA);
    int ret_len = 0;
#if BLE_QIOT_LLSYNC_STANDARD
    int     i                            = 0;
    uint8_t md5_in_buf[128]              = {0};
    uint8_t md5_in_len                   = 0;
    uint8_t md5_out_buf[MD5_DIGEST_SIZE] = {0};

    out_buf[ret_len] = llsync_bind_state_get() | (BLE_QIOT_LLSYNC_PROTOCOL_VERSION << LLSYNC_PROTO_VER_BIT);
#if BLE_QIOT_DYNREG_ENABLE
    if (llsync_need_dynreg()){
        out_buf[ret_len] |= (1 << LLSYNC_DYNREG_MASK_BIT);
    }
#endif
    ret_len++;
    if (E_LLSYNC_BIND_SUCC == llsync_bind_state_get()) {
        // 1 bytes state + 8 bytes device identify_str + 8 bytes identify_str
        memcpy((char *)md5_in_buf, sg_device_info.product_id, sizeof(sg_device_info.product_id));
        md5_in_len += sizeof(sg_device_info.product_id);
        memcpy((char *)md5_in_buf + md5_in_len, sg_device_info.device_name, strlen(sg_device_info.device_name));
        md5_in_len += strlen(sg_device_info.device_name);
        utils_md5(md5_in_buf, md5_in_len, md5_out_buf);
        for (i = 0; i < MD5_DIGEST_SIZE / 2; i++) {
            out_buf[i + ret_len] = md5_out_buf[i] ^ md5_out_buf[i + MD5_DIGEST_SIZE / 2];
        }
        ret_len += MD5_DIGEST_SIZE / 2;
        memcpy(out_buf + ret_len, sg_core_data.identify_str, sizeof(sg_core_data.identify_str));
        ret_len += sizeof(sg_core_data.identify_str);
    } else
#endif  // BLE_QIOT_LLSYNC_STANDARD
    {
#if BLE_QIOT_LLSYNC_CONFIG_NET && !BLE_QIOT_LLSYNC_DUAL_COM
        out_buf[ret_len++] = BLE_QIOT_LLSYNC_PROTOCOL_VERSION;
#endif  // BLE_QIOT_LLSYNC_CONFIG_NET
        // 1 bytes state + 6 bytes mac + 10 bytes product id
        memcpy(out_buf + ret_len, sg_device_info.mac, BLE_QIOT_MAC_LEN);
        ret_len += BLE_QIOT_MAC_LEN;
        memcpy(out_buf + ret_len, sg_device_info.product_id, sizeof(sg_device_info.product_id));
        ret_len += sizeof(sg_device_info.product_id);
    }
    ble_qiot_log_hex(BLE_QIOT_LOG_LEVEL_INFO, "broadcast", out_buf, ret_len);

    return ret_len;
}

int ble_inform_mtu_result(const char *result, uint16_t data_len)
{
    uint16_t ret = 0;

    memcpy(&ret, result, sizeof(uint16_t));
    ret = NTOHS(ret);
    ble_qiot_log_i("mtu setting result: %02x", ret);

    if (LLSYNC_MTU_SET_RESULT_ERR == ret) {
        return ble_event_sync_mtu(ATT_DEFAULT_MTU);
    } else if (0 == ret) {
        if (SYSTEM_IS_IOS == ble_system_type_get()) {
            ble_event_sync_mtu(ble_get_user_data_mtu_size(ble_system_type_get()));
        }
        return BLE_QIOT_RS_OK;
    } else {
        llsync_mtu_update(ATT_MTU_TO_LLSYNC_MTU(ret));
        return BLE_QIOT_RS_OK;
    }
}

#if BLE_QIOT_LLSYNC_STANDARD
static int memchk(const uint8_t *buf, int len)
{
    int i = 0;

    for (i = 0; i < len; i++) {
        if (buf[i] != 0xFF) {
            return 1;
        }
    }
    return 0;
}

#if BLE_QIOT_DYNREG_ENABLE
uint8_t llsync_need_dynreg(void)
{
    return (0 == memchk((const uint8_t *)sg_device_info.psk, BLE_QIOT_PSK_LEN));
}

static int8_t llsync_utils_hb2hex(uint8_t hb)
{
    hb = hb & 0xF;
    return (int8_t)(hb < 10 ? '0' + hb : hb - 10 + 'a');
}

int ble_dynreg_get_authcode(const char *bind_data, uint16_t data_len, char *out_buf, uint16_t buf_len)
{
    POINTER_SANITY_CHECK(bind_data, BLE_QIOT_RS_ERR_PARA);
    POINTER_SANITY_CHECK(out_buf, BLE_QIOT_RS_ERR_PARA);

    const char *sign_fmt                   = "deviceName=%s&nonce=%u&productId=%.10s&timestamp=%u";
    uint32_t    timestamp                  = 0;
    uint32_t    nonce                      = 0;
    char        sign_source[128]           = {0};
    uint8_t     sign_len                   = 0;
    char        tmp_sign[SHA1_DIGEST_SIZE] = {0};
    int         i                          = 0;
    int         ret_len                    = 0;

    ble_bind_data bind_data_aligned;
    memcpy(&bind_data_aligned, bind_data, sizeof(ble_bind_data));
    nonce     = NTOHL(bind_data_aligned.nonce);
    timestamp = NTOHL(bind_data_aligned.timestamp);

    sign_len = snprintf((char *)sign_source, sizeof(sign_source), sign_fmt, sg_device_info.device_name, nonce,
                        sg_device_info.product_id, timestamp);

    llsync_utils_hmac_sha1(sign_source, sign_len, tmp_sign, sg_device_info.product_secret,
                           sizeof(sg_device_info.product_secret));
    for (i = 0; i < SHA1_DIGEST_SIZE; i++) {
        sign_source[i * 2]     = llsync_utils_hb2hex(tmp_sign[i] >> 4);
        sign_source[i * 2 + 1] = llsync_utils_hb2hex(tmp_sign[i]);
    }

    out_buf[ret_len++] = strlen(sg_device_info.device_name);
    memcpy(out_buf + ret_len, sg_device_info.device_name, out_buf[0]);
    ret_len += out_buf[0];
    /*base64 encode*/
    qcloud_iot_utils_base64encode((uint8_t *)out_buf + ret_len, buf_len - ret_len, &sign_len,
                                  (const uint8_t *)sign_source, SHA1_DIGEST_SIZE * 2);
    ret_len += sign_len;
    return ret_len;
}

int ble_dynreg_parse_psk(const char *in_buf, uint16_t data_len)
{
    int           ret             = 0;
    char          decodeBuff[128] = {0};
    size_t        len;
    int           datalen;
    unsigned int  keybits;
    char          key[UTILS_AES_BLOCK_LEN + 1];
    unsigned char iv[16];
    char *        psk = NULL;

    ret = qcloud_iot_utils_base64decode((uint8_t *)decodeBuff, sizeof(decodeBuff), &len, (uint8_t *)in_buf, data_len);
    if (ret != 0) {
        ble_qiot_log_e("Response decode err, response:%s", in_buf);
        return BLE_QIOT_RS_ERR;
    }

    datalen = len + (UTILS_AES_BLOCK_LEN - len % UTILS_AES_BLOCK_LEN);
    keybits = AES_KEY_BITS_128;
    memset(key, 0, UTILS_AES_BLOCK_LEN);
    strncpy(key, sg_device_info.product_secret, UTILS_AES_BLOCK_LEN);
    memset(iv, '0', UTILS_AES_BLOCK_LEN);
    ret = utils_aes_cbc((uint8_t *)decodeBuff, datalen, (uint8_t *)decodeBuff, sizeof(decodeBuff), UTILS_AES_DECRYPT,
                        (uint8_t *)key, keybits, iv);
    if (0 == ret) {
        ble_qiot_log_i("The decrypted data is:%s", decodeBuff);
    } else {
        ble_qiot_log_e("data decry err, ret:%d", ret);
        return BLE_QIOT_RS_ERR;
    }

    psk = strstr(decodeBuff, "\"psk\"");
    if (NULL != psk) {
        memcpy(sg_device_info.psk, psk + strlen("\"psk\":\""), BLE_QIOT_PSK_LEN);
        ble_set_psk(sg_device_info.psk, BLE_QIOT_PSK_LEN);
        return BLE_QIOT_RS_OK;
    }
    ble_qiot_log_e("no-exist psk");

    return BLE_QIOT_RS_ERR;
}
#endif

static ble_qiot_ret_status_t ble_write_core_data(ble_core_data *core_data)
{
    memcpy(&sg_core_data, core_data, sizeof(ble_core_data));
    if (sizeof(ble_core_data) !=
        ble_write_flash(BLE_QIOT_RECORD_FLASH_ADDR, (char *)&sg_core_data, sizeof(ble_core_data))) {
        ble_qiot_log_e("llsync write core failed");
        return BLE_QIOT_RS_ERR_FLASH;
    }

    return BLE_QIOT_RS_OK;
}

int ble_bind_get_authcode(const char *bind_data, uint16_t data_len, char *out_buf, uint16_t buf_len)
{
    POINTER_SANITY_CHECK(bind_data, BLE_QIOT_RS_ERR_PARA);
    BUFF_LEN_SANITY_CHECK(data_len, (int32_t)sizeof(ble_bind_data), BLE_QIOT_RS_ERR_PARA);
    POINTER_SANITY_CHECK(out_buf, BLE_QIOT_RS_ERR_PARA);
    BUFF_LEN_SANITY_CHECK(buf_len, SHA1_DIGEST_SIZE + BLE_QIOT_DEVICE_NAME_LEN, BLE_QIOT_RS_ERR_PARA);

    char    out_sign[SHA1_DIGEST_SIZE]       = {0};
    char    sign_info[80]                    = {0};
    int     sign_info_len                    = 0;
    int     time_expiration                  = 0;
    int     nonce                            = 0;
    int     ret_len                          = 0;
    uint8_t secret[BLE_QIOT_PSK_LEN / 4 * 3] = {0};
    int     secret_len                       = 0;

    // if the pointer "char *bind_data" is not aligned with 4 byte, in some cpu convert it to
    // pointer "ble_bind_data *" work correctly, but some cpu will get wrong value, or cause
    // other "Unexpected Error". Here copy it to a local variable make sure aligned with 4 byte.
    ble_bind_data bind_data_aligned;
    memcpy(&bind_data_aligned, bind_data, sizeof(ble_bind_data));

    nonce           = NTOHL(bind_data_aligned.nonce);
    time_expiration = BLE_GET_EXPIRATION_TIME(NTOHL(bind_data_aligned.timestamp));

    // [10 bytes product_id] + [x bytes device name] + ';' + [4 bytes nonce] + ';' + [4 bytes timestamp]
    memcpy(sign_info, sg_device_info.product_id, sizeof(sg_device_info.product_id));
    sign_info_len += sizeof(sg_device_info.product_id);
    memcpy(sign_info + sign_info_len, sg_device_info.device_name, strlen(sg_device_info.device_name));
    sign_info_len += strlen(sg_device_info.device_name);
    snprintf(sign_info + sign_info_len, sizeof(sign_info) - sign_info_len, ";%u", nonce);
    sign_info_len += strlen(sign_info + sign_info_len);
    snprintf(sign_info + sign_info_len, sizeof(sign_info) - sign_info_len, ";%u", time_expiration);
    sign_info_len += strlen(sign_info + sign_info_len);

    qcloud_iot_utils_base64decode(secret, sizeof(secret), (size_t *)&secret_len,
                                  (const unsigned char *)sg_device_info.psk, sizeof(sg_device_info.psk));
    ble_qiot_log_hex(BLE_QIOT_LOG_LEVEL_INFO, "bind sign in", sign_info, sign_info_len);
    llsync_utils_hmac_sha1((const char *)sign_info, sign_info_len, out_sign, (const char *)secret, secret_len);
    ble_qiot_log_hex(BLE_QIOT_LOG_LEVEL_INFO, "bind sign out", out_sign, sizeof(out_sign));

    // return [20 bytes sign] + [x bytes device_name]
    memset(out_buf, 0, buf_len);
    memcpy(out_buf, out_sign, SHA1_DIGEST_SIZE);
    ret_len = SHA1_DIGEST_SIZE;

    memcpy(out_buf + ret_len, sg_device_info.device_name, strlen(sg_device_info.device_name));
    ret_len += strlen(sg_device_info.device_name);
    ble_qiot_log_hex(BLE_QIOT_LOG_LEVEL_INFO, "bind auth code", out_buf, ret_len);

    return ret_len;
}

ble_qiot_ret_status_t ble_bind_write_result(const char *result, uint16_t len)
{
    POINTER_SANITY_CHECK(result, BLE_QIOT_RS_ERR_PARA);
    BUFF_LEN_SANITY_CHECK(len, (int32_t)sizeof(ble_core_data), BLE_QIOT_RS_ERR_PARA);

    ble_core_data *bind_result = (ble_core_data *)result;

    llsync_bind_state_set((e_llsync_bind_state)bind_result->bind_state);
    return ble_write_core_data(bind_result);
}

ble_qiot_ret_status_t ble_unbind_write_result(void)
{
    ble_core_data bind_result;

    llsync_connection_state_set(E_LLSYNC_DISCONNECTED);
    llsync_bind_state_set(E_LLSYNC_BIND_IDLE);
    memset(&bind_result, 0, sizeof(bind_result));
    return ble_write_core_data(&bind_result);
}

int ble_conn_get_authcode(const char *conn_data, uint16_t data_len, char *out_buf, uint16_t buf_len)
{
    POINTER_SANITY_CHECK(conn_data, BLE_QIOT_RS_ERR_PARA);
    BUFF_LEN_SANITY_CHECK(data_len, (int32_t)sizeof(ble_conn_data), BLE_QIOT_RS_ERR_PARA);
    POINTER_SANITY_CHECK(out_buf, BLE_QIOT_RS_ERR_PARA);
    BUFF_LEN_SANITY_CHECK(buf_len, SHA1_DIGEST_SIZE + BLE_QIOT_DEVICE_NAME_LEN, BLE_QIOT_RS_ERR_PARA);

    char sign_info[64]              = {0};
    char out_sign[SHA1_DIGEST_SIZE] = {0};
    int  sign_info_len              = 0;
    int  timestamp                  = 0;
    int  ret_len                    = 0;

    // if the pointer "char *bind_data" is not aligned with 4 byte, in some cpu convert it to
    // pointer "ble_bind_data *" work correctly, but some cpu will get wrong value, or cause
    // other "Unexpected Error". Here copy it to a local variable make sure aligned with 4 byte.
    ble_conn_data conn_data_aligned;
    memcpy(&conn_data_aligned, conn_data, sizeof(ble_conn_data));

    // valid sign
    timestamp = NTOHL(conn_data_aligned.timestamp);
    snprintf(sign_info + sign_info_len, sizeof(sign_info) - sign_info_len, "%d", timestamp);
    sign_info_len = strlen(sign_info + sign_info_len);
    ble_qiot_log_hex(BLE_QIOT_LOG_LEVEL_INFO, "valid sign in", sign_info, sign_info_len);
    llsync_utils_hmac_sha1(sign_info, sign_info_len, out_sign, sg_core_data.local_psk, sizeof(sg_core_data.local_psk));
    ble_qiot_log_hex(BLE_QIOT_LOG_LEVEL_INFO, "valid sign out", out_sign, SHA1_DIGEST_SIZE);
    if (0 != memcmp(&conn_data_aligned.sign_info, out_sign, SHA1_DIGEST_SIZE)) {
        ble_qiot_log_e("llsync invalid connect sign");
        return BLE_QIOT_RS_VALID_SIGN_ERR;
    }

    // calc sign
    memset(sign_info, 0, sizeof(sign_info));
    sign_info_len = 0;

    // expiration time + product id + device name
    timestamp = BLE_GET_EXPIRATION_TIME(NTOHL(conn_data_aligned.timestamp));
    snprintf(sign_info + sign_info_len, sizeof(sign_info) - sign_info_len, "%d", timestamp);
    sign_info_len += strlen(sign_info + sign_info_len);
    memcpy(sign_info + sign_info_len, sg_device_info.product_id, sizeof(sg_device_info.product_id));
    sign_info_len += sizeof(sg_device_info.product_id);
    memcpy(sign_info + sign_info_len, sg_device_info.device_name, strlen(sg_device_info.device_name));
    sign_info_len += strlen(sg_device_info.device_name);

    ble_qiot_log_hex(BLE_QIOT_LOG_LEVEL_INFO, "conn sign in", sign_info, sign_info_len);
    llsync_utils_hmac_sha1(sign_info, sign_info_len, out_sign, sg_core_data.local_psk, sizeof(sg_core_data.local_psk));
    ble_qiot_log_hex(BLE_QIOT_LOG_LEVEL_INFO, "conn sign out", out_sign, sizeof(out_sign));

    // return authcode
    memset(out_buf, 0, buf_len);
    memcpy(out_buf, out_sign, SHA1_DIGEST_SIZE);
    ret_len += SHA1_DIGEST_SIZE;
    memcpy(out_buf + ret_len, sg_device_info.device_name, strlen(sg_device_info.device_name));
    ret_len += strlen(sg_device_info.device_name);
    ble_qiot_log_hex(BLE_QIOT_LOG_LEVEL_INFO, "conn auth code", out_buf, ret_len);

    return ret_len;
}

int ble_unbind_get_authcode(const char *unbind_data, uint16_t data_len, char *out_buf, uint16_t buf_len)
{
    POINTER_SANITY_CHECK(unbind_data, BLE_QIOT_RS_ERR_PARA);
    BUFF_LEN_SANITY_CHECK(data_len, (int32_t)sizeof(ble_unbind_data), BLE_QIOT_RS_ERR_PARA);
    POINTER_SANITY_CHECK(out_buf, BLE_QIOT_RS_ERR_PARA);
    BUFF_LEN_SANITY_CHECK(buf_len, SHA1_DIGEST_SIZE, BLE_QIOT_RS_ERR_PARA);

    char sign_info[32]              = {0};
    char out_sign[SHA1_DIGEST_SIZE] = {0};
    int  sign_info_len              = 0;
    int  ret_len                    = 0;

    // valid sign
    memcpy(sign_info, BLE_UNBIND_REQUEST_STR, BLE_UNBIND_REQUEST_STR_LEN);
    sign_info_len = BLE_UNBIND_REQUEST_STR_LEN;
    llsync_utils_hmac_sha1(sign_info, sign_info_len, out_sign, sg_core_data.local_psk, sizeof(sg_core_data.local_psk));
    ble_qiot_log_hex(BLE_QIOT_LOG_LEVEL_INFO, "valid sign out", out_sign, SHA1_DIGEST_SIZE);

    if (0 != memcmp(((ble_unbind_data *)unbind_data)->sign_info, out_sign, SHA1_DIGEST_SIZE)) {
        ble_qiot_log_e("llsync invalid unbind sign");
        return BLE_QIOT_RS_VALID_SIGN_ERR;
    }

    // calc sign
    memset(sign_info, 0, sizeof(sign_info));
    sign_info_len = 0;

    memcpy(sign_info, BLE_UNBIND_RESPONSE, strlen(BLE_UNBIND_RESPONSE));
    sign_info_len += BLE_UNBIND_RESPONSE_STR_LEN;
    llsync_utils_hmac_sha1(sign_info, sign_info_len, out_sign, sg_core_data.local_psk, sizeof(sg_core_data.local_psk));
    ble_qiot_log_hex(BLE_QIOT_LOG_LEVEL_INFO, "unbind auth code", out_sign, SHA1_DIGEST_SIZE);

    memset(out_buf, 0, buf_len);
    memcpy(out_buf, out_sign, sizeof(out_sign));
    ret_len += sizeof(out_sign);

    return ret_len;
}
#endif  // BLE_QIOT_LLSYNC_STANDARD

ble_qiot_ret_status_t ble_init_flash_data(void)
{
#if BLE_QIOT_LLSYNC_STANDARD
    if (sizeof(sg_core_data) !=
        ble_read_flash(BLE_QIOT_RECORD_FLASH_ADDR, (char *)&sg_core_data, sizeof(sg_core_data))) {
        ble_qiot_log_e("llsync read flash failed");
        return BLE_QIOT_RS_ERR_FLASH;
    }
    if (0 == memchk((const uint8_t *)&sg_core_data, sizeof(sg_core_data))) {
        memset(&sg_core_data, 0, sizeof(sg_core_data));
    }

    if (0 != ble_get_psk(sg_device_info.psk)) {
        ble_qiot_log_e("llsync get device secret key failed");
        return BLE_QIOT_RS_ERR_FLASH;
    }
#if BLE_QIOT_DYNREG_ENABLE
    if (0 != ble_get_product_key(sg_device_info.product_secret)) {
        ble_qiot_log_e("llsync get product secret key failed");
        return BLE_QIOT_RS_ERR_FLASH;
    }
#endif // BLE_QIOT_DYNREG_ENABLE
#endif  // BLE_QIOT_LLSYNC_STANDARD

    if (0 != ble_get_mac(sg_device_info.mac)) {
        ble_qiot_log_e("llsync get mac failed");
        return BLE_QIOT_RS_ERR_FLASH;
    }
    if (0 != ble_get_product_id(sg_device_info.product_id)) {
        ble_qiot_log_e("llsync get product id failed");
        return BLE_QIOT_RS_ERR_FLASH;
    }
    if (0 == ble_get_device_name(sg_device_info.device_name)) {
        ble_qiot_log_e("llsync get device name failed");
        return BLE_QIOT_RS_ERR_FLASH;
    }

#if BLE_QIOT_LLSYNC_STANDARD
    llsync_bind_state_set((e_llsync_bind_state)sg_core_data.bind_state);
    // ble_qiot_log_hex(BLE_QIOT_LOG_LEVEL_INFO, "core_data", (char *)&sg_core_data, sizeof(sg_core_data));
    // ble_qiot_log_hex(BLE_QIOT_LOG_LEVEL_INFO, "device_info", (char *)&sg_device_info, sizeof(sg_device_info));
#endif  // BLE_QIOT_LLSYNC_STANDARD

    return BLE_QIOT_RS_OK;
}

#ifdef __cplusplus
}
#endif
