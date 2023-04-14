/*
 * @Author: xuhongv | 半颗心脏 xuhongv@yeah.net
 * @Date: 2022-12-16 17:22:29
 * @LastEditors: xuhongv | 半颗心脏 xuhongv@yeah.net
 * @LastEditTime: 2022-12-20 14:35:22
 * @FilePath: \bl_iot_sdk_for_aithinker\applications\bluetooth\blufi\blufi\blufi_security.c
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */

#include "blufi_security.h"
#include "mbedtls/aes.h"
#include "mbedtls/dhm.h"
#include "mbedtls/md5.h"

#include <FreeRTOS.h>
#include <task.h>
#include "blog.h"
 /*
    The SEC_TYPE_xxx is for self-defined packet data type in the procedure of "BLUFI negotiate key"
    If user use other negotiation procedure to exchange(or generate) key, should redefine the type by yourself.
  */
#define SEC_TYPE_DH_PARAM_LEN 0x00
#define SEC_TYPE_DH_PARAM_DATA 0x01
#define SEC_TYPE_DH_P 0x02
#define SEC_TYPE_DH_G 0x03
#define SEC_TYPE_DH_PUBLIC 0x04

static const uint16_t crc16_be_table[256] = {
    0x0000, 0x1021, 0x2042, 0x3063, 0x4084, 0x50a5, 0x60c6, 0x70e7, 0x8108, 0x9129, 0xa14a, 0xb16b, 0xc18c, 0xd1ad, 0xe1ce, 0xf1ef,
    0x1231, 0x0210, 0x3273, 0x2252, 0x52b5, 0x4294, 0x72f7, 0x62d6, 0x9339, 0x8318, 0xb37b, 0xa35a, 0xd3bd, 0xc39c, 0xf3ff, 0xe3de,
    0x2462, 0x3443, 0x0420, 0x1401, 0x64e6, 0x74c7, 0x44a4, 0x5485, 0xa56a, 0xb54b, 0x8528, 0x9509, 0xe5ee, 0xf5cf, 0xc5ac, 0xd58d,
    0x3653, 0x2672, 0x1611, 0x0630, 0x76d7, 0x66f6, 0x5695, 0x46b4, 0xb75b, 0xa77a, 0x9719, 0x8738, 0xf7df, 0xe7fe, 0xd79d, 0xc7bc,
    0x48c4, 0x58e5, 0x6886, 0x78a7, 0x0840, 0x1861, 0x2802, 0x3823, 0xc9cc, 0xd9ed, 0xe98e, 0xf9af, 0x8948, 0x9969, 0xa90a, 0xb92b,
    0x5af5, 0x4ad4, 0x7ab7, 0x6a96, 0x1a71, 0x0a50, 0x3a33, 0x2a12, 0xdbfd, 0xcbdc, 0xfbbf, 0xeb9e, 0x9b79, 0x8b58, 0xbb3b, 0xab1a,
    0x6ca6, 0x7c87, 0x4ce4, 0x5cc5, 0x2c22, 0x3c03, 0x0c60, 0x1c41, 0xedae, 0xfd8f, 0xcdec, 0xddcd, 0xad2a, 0xbd0b, 0x8d68, 0x9d49,
    0x7e97, 0x6eb6, 0x5ed5, 0x4ef4, 0x3e13, 0x2e32, 0x1e51, 0x0e70, 0xff9f, 0xefbe, 0xdfdd, 0xcffc, 0xbf1b, 0xaf3a, 0x9f59, 0x8f78,
    0x9188, 0x81a9, 0xb1ca, 0xa1eb, 0xd10c, 0xc12d, 0xf14e, 0xe16f, 0x1080, 0x00a1, 0x30c2, 0x20e3, 0x5004, 0x4025, 0x7046, 0x6067,
    0x83b9, 0x9398, 0xa3fb, 0xb3da, 0xc33d, 0xd31c, 0xe37f, 0xf35e, 0x02b1, 0x1290, 0x22f3, 0x32d2, 0x4235, 0x5214, 0x6277, 0x7256,
    0xb5ea, 0xa5cb, 0x95a8, 0x8589, 0xf56e, 0xe54f, 0xd52c, 0xc50d, 0x34e2, 0x24c3, 0x14a0, 0x0481, 0x7466, 0x6447, 0x5424, 0x4405,
    0xa7db, 0xb7fa, 0x8799, 0x97b8, 0xe75f, 0xf77e, 0xc71d, 0xd73c, 0x26d3, 0x36f2, 0x0691, 0x16b0, 0x6657, 0x7676, 0x4615, 0x5634,
    0xd94c, 0xc96d, 0xf90e, 0xe92f, 0x99c8, 0x89e9, 0xb98a, 0xa9ab, 0x5844, 0x4865, 0x7806, 0x6827, 0x18c0, 0x08e1, 0x3882, 0x28a3,
    0xcb7d, 0xdb5c, 0xeb3f, 0xfb1e, 0x8bf9, 0x9bd8, 0xabbb, 0xbb9a, 0x4a75, 0x5a54, 0x6a37, 0x7a16, 0x0af1, 0x1ad0, 0x2ab3, 0x3a92,
    0xfd2e, 0xed0f, 0xdd6c, 0xcd4d, 0xbdaa, 0xad8b, 0x9de8, 0x8dc9, 0x7c26, 0x6c07, 0x5c64, 0x4c45, 0x3ca2, 0x2c83, 0x1ce0, 0x0cc1,
    0xef1f, 0xff3e, 0xcf5d, 0xdf7c, 0xaf9b, 0xbfba, 0x8fd9, 0x9ff8, 0x6e17, 0x7e36, 0x4e55, 0x5e74, 0x2e93, 0x3eb2, 0x0ed1, 0x1ef0 };

struct blufi_security
{
#define DH_SELF_PUB_KEY_LEN 128
#define DH_SELF_PUB_KEY_BIT_LEN (DH_SELF_PUB_KEY_LEN * 8)
    uint8_t self_public_key[DH_SELF_PUB_KEY_LEN];
#define SHARE_KEY_LEN 128
#define SHARE_KEY_BIT_LEN (SHARE_KEY_LEN * 8)
    uint8_t share_key[SHARE_KEY_LEN];
    size_t share_len;
#define PSK_LEN 16
    uint8_t psk[PSK_LEN];
    uint8_t* dh_param;
    int dh_param_len;
    uint8_t iv[16];
    mbedtls_dhm_context dhm;
    mbedtls_aes_context aes;
};

#define MIN_UM(a, b) (((a) < (b)) ? (a) : (b))

static struct blufi_security* blufi_sec;

static uint16_t axk_rom_crc16_be(uint16_t crc, uint8_t const* buf, uint32_t len)
{
    unsigned int i;
    crc = ~crc;
    for (i = 0; i < len; i++)
    {
        crc = crc16_be_table[(crc >> 8) ^ buf[i]] ^ (crc << 8);
    }
    return ~crc;
}

static uint16_t esp_crc16_be(uint16_t crc, uint8_t const* buf, uint32_t len)
{
    return axk_rom_crc16_be(crc, buf, len);
}

void axk_fill_random(void* buf, size_t len)
{
    assert(buf != NULL);
    uint8_t* buf_bytes = (uint8_t*)buf;
    while (len > 0)
    {
        // uint32_t word = random();
        uint32_t word = 0;
        hosal_random_num_read(&word, 1);
        blog_info("word=%d ", word);
        uint32_t to_copy = MIN_UM(sizeof(word), len);
        memcpy(buf_bytes, &word, to_copy);
        buf_bytes += to_copy;
        len -= to_copy;
    }
}

static int myrand(void* rng_state, unsigned char* output, size_t len)
{
    axk_fill_random(output, len);
    return (0);
}
extern void btc_blufi_report_error(_blufi_error_state_t state);

static void TaskAES(void* p)
{
    mbedtls_aes_setkey_enc(&blufi_sec->aes, blufi_sec->psk, 128);

    vTaskDelete(NULL);
}
void blufi_dh_negotiate_data_handler(uint8_t* data, int len, uint8_t** output_data, int* output_len, bool* need_free)
{
    int ret;
    uint8_t type = data[0];

    if (blufi_sec == NULL)
    {
        blog_info("BLUFI Security is not initialized ");
        btc_blufi_report_error(_BLUFI_INIT_SECURITY_ERROR); //
        return;
    }

    blog_info("blufi_dh_negotiate_data_handler type = %d", type);

    switch (type)
    {
        case SEC_TYPE_DH_PARAM_LEN:
            blufi_sec->dh_param_len = ((data[1] << 8) | data[2]);
            if (blufi_sec->dh_param)
            {
                free(blufi_sec->dh_param);
                blufi_sec->dh_param = NULL;
            }
            blufi_sec->dh_param = (uint8_t*)malloc(blufi_sec->dh_param_len);
            if (blufi_sec->dh_param == NULL)
            {
                btc_blufi_report_error(_BLUFI_DH_MALLOC_ERROR);
                blog_info("%s, malloc failed ", __func__);
                return;
            }
            break;
        case SEC_TYPE_DH_PARAM_DATA:
        {
            if (blufi_sec->dh_param == NULL)
            {
                blog_info("%s, blufi_sec->dh_param == NULL\n", __func__);
                btc_blufi_report_error(_BLUFI_DH_PARAM_ERROR);
                return;
            }
            uint8_t* param = blufi_sec->dh_param;
            memcpy(blufi_sec->dh_param, &data[1], blufi_sec->dh_param_len);
            ret = mbedtls_dhm_read_params(&blufi_sec->dhm, &param, &param[blufi_sec->dh_param_len]);
            if (ret)
            {
                blog_info("%s read param failed %d\n", __func__, ret);
                btc_blufi_report_error(_BLUFI_READ_PARAM_ERROR);
                return;
            }
            free(blufi_sec->dh_param);
            blufi_sec->dh_param = NULL;
            ret = mbedtls_dhm_make_public(&blufi_sec->dhm, (int)mbedtls_mpi_size(&blufi_sec->dhm.P), blufi_sec->self_public_key, blufi_sec->dhm.len, myrand, NULL);
            if (ret)
            {
                blog_info("%s make public failed %d\n", __func__, ret);
                btc_blufi_report_error(_BLUFI_MAKE_PUBLIC_ERROR);
                return;
            }

            mbedtls_dhm_calc_secret(&blufi_sec->dhm,
                                    blufi_sec->share_key,
                                    SHARE_KEY_BIT_LEN,
                                    &blufi_sec->share_len,
                                    NULL, NULL);
            mbedtls_md5(blufi_sec->share_key, blufi_sec->share_len, blufi_sec->psk);

            xTaskCreate(TaskAES, (char*)"TaskAES", 1024 * 2, NULL, 13, NULL);
            vTaskDelay(1000 / portTICK_RATE_MS);

            /* alloc output data */
            *output_data = &blufi_sec->self_public_key[0];
            *output_len = blufi_sec->dhm.len;
            *need_free = false;
        }
        break;
        case SEC_TYPE_DH_P:
            break;
        case SEC_TYPE_DH_G:
            break;
        case SEC_TYPE_DH_PUBLIC:
            break;
    }
}

int blufi_aes_encrypt(uint8_t iv8, uint8_t* crypt_data, int crypt_len)
{
    int ret;
    size_t iv_offset = 0;
    uint8_t iv0[16];

    memcpy(iv0, blufi_sec->iv, sizeof(blufi_sec->iv));
    iv0[0] = iv8; /* set iv8 as the iv0[0] */

    ret = mbedtls_aes_crypt_cfb128(&blufi_sec->aes, MBEDTLS_AES_ENCRYPT, crypt_len, &iv_offset, iv0, crypt_data, crypt_data);
    if (ret)
    {
        blog_info("%s mbedtls_aes_crypt_cfb128 failed %d\n", __func__, ret);
        return -1;
    }

    return crypt_len;
}

int blufi_aes_decrypt(uint8_t iv8, uint8_t* crypt_data, int crypt_len)
{
    int ret;
    size_t iv_offset = 0;
    uint8_t iv0[16];

    memcpy(iv0, blufi_sec->iv, sizeof(blufi_sec->iv));
    iv0[0] = iv8; /* set iv8 as the iv0[0] */

    ret = mbedtls_aes_crypt_cfb128(&blufi_sec->aes, MBEDTLS_AES_DECRYPT, crypt_len, &iv_offset, iv0, crypt_data, crypt_data);
    if (ret)
    {
        blog_error("%s mbedtls_aes_crypt_cfb128 failed %d", __func__, ret);
        return -1;
    }

    return crypt_len;
}

uint16_t blufi_crc_checksum(uint8_t iv8, uint8_t* data, int len)
{
    /* This iv8 ignore, not used */
    return esp_crc16_be(0, data, len);
}

int blufi_security_init(void)
{
    blufi_sec = (struct blufi_security*)malloc(sizeof(struct blufi_security));
    if (blufi_sec == NULL)
    {
        return 1;
    }

    blog_info("%s ok ", __func__);

    memset(blufi_sec, 0x0, sizeof(struct blufi_security));

    mbedtls_dhm_init(&blufi_sec->dhm);
    mbedtls_aes_init(&blufi_sec->aes);

    blog_info("%s mbedtls_aes_init ok ", __func__);

    memset(blufi_sec->iv, 0x0, 16);
    return 0;
}

void blufi_security_deinit(void)
{
    if (blufi_sec == NULL)
    {
        return;
    }
    if (blufi_sec->dh_param)
    {
        free(blufi_sec->dh_param);
        blufi_sec->dh_param = NULL;
    }
    mbedtls_dhm_free(&blufi_sec->dhm);
    mbedtls_aes_free(&blufi_sec->aes);

    memset(blufi_sec, 0x0, sizeof(struct blufi_security));

    free(blufi_sec);
    blufi_sec = NULL;
}
