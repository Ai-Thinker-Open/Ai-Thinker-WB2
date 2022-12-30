/**
 * @file        dev_interface.c
 * @brief
 * @author      Jimmy
 * @version     v1.0.0
 * @date        2022-07-29
 * 
 * @copyright   Copyright (c) 2022 Shenzhen Ai-Thinker Technology Co., Ltd. All Rights Reserved.
 * 
 * Disclaimer: This program is for informational purposes only, please keep author information and source code license.
 * 
 */

/*****************************************************************************/
/* Includes header */
/*****************************************************************************/
#include <FreeRTOS.h>
#include <task.h>
#include <timers.h>
#include <stdio.h>
#include <stdint.h>
#include <string.h>

#include <vfs.h>
#include <aos/kernel.h>
#include <aos/yloop.h>
#include <event_device.h>
#include <cli.h>

#include <bl602_glb.h>
#include <bl602_hbn.h>

#include <bl_sys.h>
#include <bl_uart.h>
#include <bl_chip.h>
#include <bl_sec.h>
#include <bl_cks.h>
#include <hal_boot2.h>
#include <hal_board.h>
#include <bl_sys_time.h>
#include <fdt.h>
#include <device/vfs_uart.h>

//sec
#include <mbedtls/sha1.h>
#include <mbedtls/sha256.h>
#include "mbedtls/error.h"
#include "mbedtls/md.h"
#include "mbedtls/pk.h"
#include "mbedtls/rsa.h"
#include "mbedtls/entropy.h"
#include "mbedtls/ctr_drbg.h"

#include <mbedtls/aes.h>

#include <bl_timer.h>
//sec HW
#include <bl_sec.h>
#include <bl602_sec_eng.h>

//flash
#include <hosal_flash.h>
#include "hosal_efuse.h"

#include <blog.h>

#include "dev_interface.h"


/*****************************************************************************/
/* Macro definition */
/*****************************************************************************/

#define OPEN_INTERFACE_LOG  (0)
#if (OPEN_INTERFACE_LOG)
#define bind_printf(x)      printf x
#else
#define bind_printf(x)
#endif

#define DEFAULT_EFLASH_ADDR (0x1c)

#define DEFAULT_SOFT_VAR    "1.0.0"
#define DEFAULT_AUTH_VAR    "0.0.1"
#define DEFAULT_CHIP_ID     "135246"
#define DEFAULT_MAC_ADDR    "\xF8\x7A\x35\x87\x01\x32"
#define DEFAULT_MF_INFO     "Ai-Thinker"

// default settings
#define DEFAULT_DEV_INFO             \
    {                                 \
        .soft_ver = DEFAULT_SOFT_VAR, \
        .auth_ver = DEFAULT_AUTH_VAR, \
        .MF_info = DEFAULT_MF_INFO,   \
        .chip_id = DEFAULT_CHIP_ID,   \
        .mac = DEFAULT_MAC_ADDR,      \
    }


/*****************************************************************************/
/* Type definition */
/*****************************************************************************/

/*****************************************************************************/
/* Static variable */
/*****************************************************************************/

/*****************************************************************************/
/* Function declaration */
/*****************************************************************************/

static uint8_t init_dev_info(dev_info_t * dev)
{
    uint8_t mac[]={0xf8,0x7a,0x35,0x87,0x01,0x34};
    // uint8_t id[6]={ 0xc4, 0xd7, 0xfd, 0x56, 0x00, 0x25};
    uint8_t id[6]={0};

    dev_info_t local_info = DEFAULT_DEV_INFO;
    
    memcpy((char *)dev, (char *)&local_info, sizeof(dev_info_t));

    memcpy(dev->mac, mac, 6);
    
    EF_Ctrl_Read_Chip_ID(id);

    memcpy(dev->chip_id, id, 6);

    bind_printf(("test chip id read func\n"));
    
    return 0;
}

static int SHA_CHECK(uint8_t *input, uint8_t *output, SEC_ENG_SHA_Type shaType, uint32_t length)
{
    uint32_t shaTmpBuf[16] = {0};
    uint32_t padding[16] = {0};
    SEC_Eng_SHA256_Ctx shaCtx;
    SEC_ENG_SHA_ID_Type shaID = SEC_ENG_SHA_ID0;

    Sec_Eng_SHA256_Init(&shaCtx, shaID, shaType, shaTmpBuf, padding);
    Sec_Eng_SHA_Start(shaID);

    Sec_Eng_SHA256_Update(&shaCtx, shaID, input,length);
    if (Sec_Eng_SHA256_Finish(&shaCtx, shaID, output) != SUCCESS) {
        bind_printf(("Sec_Eng_SHA256_Finish error \n"));
    }
    return 0;
}

static int __HW_sha(uint8_t * raw_data_in, uint32_t length_in, uint8_t * sha_out, uint32_t *out_len, SHA_TYPE_E sha_type)
{
    uint32_t count=1;

    if ((!raw_data_in) || (!sha_out)) {
        bind_printf(("Can not allocate sha test_buf memory!\n"));
        return ret_is_null;
    }

    // Link mode is not used in this test.
    // Disable potentially enabled link mode
    Sec_Eng_SHA_Disable_Link(SEC_ENG_SHA_ID0);

#if (OPEN_INTERFACE_LOG)
    uint32_t time_irq_start, speed_time;
    time_irq_start = bl_timer_now_us();
#endif

    taskENTER_CRITICAL();

    for (int i = 0; i < count ; i++) {
        switch (sha_type) {
        case SHA_256_MODE:
            if (0 == SHA_CHECK(raw_data_in, sha_out, SEC_ENG_SHA256, length_in))
            {
                *out_len = 32;
            }
            break;
        case SHA_224_MODE:
            if (0 == SHA_CHECK(raw_data_in, sha_out, SEC_ENG_SHA224, length_in))
            {
                *out_len = 32;
            }
            break;
        case SHA_1_MODE:
        case SHA_1_RSVD_MODE:
            if (0 == SHA_CHECK(raw_data_in, sha_out, SEC_ENG_SHA1, length_in))
            {

                *out_len = 20;
            }
            break;
        default:
            bind_printf(("NO Support SHA MODE!\n"));
            return ret_param_err;
        }
    }
    taskEXIT_CRITICAL();
    
#if (OPEN_INTERFACE_LOG)
    bind_printf(("HW output sha256:\n"));
    for (int i = 0; i < 32; i++)
    {
        bind_printf(("%02X", sha_out[i]));
    }
    bind_printf(("\n"));
    speed_time = bl_timer_now_us() - time_irq_start;

    bind_printf(("speed_time is %ldus\n", speed_time));
    bind_printf(("sha speed is %.4lfMbps\n", length_in * count * 8.0 / speed_time));
#endif
    return ret_ok;
}

static void __create_soft_sha2xx(uint8_t *raw_data_in, uint32_t length_in, uint8_t *sha_out, uint32_t *out_len, uint32_t count, uint8_t is_224)
{
    mbedtls_sha256_context ctx1;
    unsigned char sha1sum[32]={0};

    mbedtls_sha256_init( &ctx1 );

#if (OPEN_INTERFACE_LOG)
    uint32_t time_irq_start, speed_time;
    time_irq_start = bl_timer_now_us();
#endif

    for (int i = 0; i < count ; i++) {
        mbedtls_sha256_starts( &ctx1, is_224);
        mbedtls_sha256_update( &ctx1, raw_data_in, length_in);
        mbedtls_sha256_finish( &ctx1, sha1sum );
    }
    memcpy(sha_out, sha1sum, 32);
    *out_len = 32;

#if (OPEN_INTERFACE_LOG)
    bind_printf(("soft output sha256:\n"));
    for (int i = 0; i < 32; i++)
    {
        bind_printf(("%02X", sha1sum[i]));
    }
    speed_time = bl_timer_now_us() - time_irq_start;

    bind_printf(("speed_time is %ldus\n", speed_time));
    bind_printf(("sha speed is %.4lfMbps\n", length_in * count * 8.0 / speed_time));
#endif

    mbedtls_sha256_free( &ctx1 );
}

static void __create_soft_sha1(uint8_t *raw_data_in, uint32_t length_in, uint8_t *sha_out, uint32_t *out_len, uint32_t count)
{
    mbedtls_sha1_context ctx1;
    unsigned char sha1sum[20];

    mbedtls_sha1_init(&ctx1);

#if (OPEN_INTERFACE_LOG)
    uint32_t time_irq_start, speed_time;
    time_irq_start = bl_timer_now_us();
#endif

    for (int i = 0; i < count; i++)
    {
        mbedtls_sha1_starts(&ctx1);
        mbedtls_sha1_update(&ctx1, raw_data_in, length_in);
        mbedtls_sha1_finish(&ctx1, sha1sum);
    }

    memcpy(sha_out, sha1sum, 20);
    *out_len = 20;

#if (OPEN_INTERFACE_LOG)
    speed_time = bl_timer_now_us() - time_irq_start;

    bind_printf(("speed_time is %ldus\n", speed_time));
    bind_printf(("sha speed is %.4lfMbps\n", length_in * count * 8.0 / speed_time));
#endif

    mbedtls_sha1_free(&ctx1);
}

static void __mbedtls_soft_sha(uint8_t * raw_data_in, uint32_t length_in, uint8_t * sha_out, uint32_t *out_len, SHA_TYPE_E sha_type)
{
    switch (sha_type) {
        case SHA_256_MODE:
            __create_soft_sha2xx(raw_data_in, length_in, sha_out, out_len, 1, 0);
            break;
        case SHA_224_MODE:
            __create_soft_sha2xx(raw_data_in, length_in, sha_out, out_len, 1, 1);
            break;
        case SHA_1_MODE:
        case SHA_1_RSVD_MODE:
            __create_soft_sha1(raw_data_in, length_in, sha_out, out_len, 1);
            break;
        default:
            bind_printf(("invalid keytype parametre!\n"));
            return;
    }
}

static uint8_t generate_dev_hash_data(uint8_t *sha_out, uint32_t *sha_out_len, raw_info_t *raw_info)
{
    raw_info_t * info = raw_info;

    if (info->is_HW)
    {
        bind_printf(("SHA HW\n"));
        __HW_sha(info->raw_data, info->raw_data_len , sha_out, sha_out_len, info->mode);
    }
    else
    {
        bind_printf(("SHA SOFT\n"));
        __mbedtls_soft_sha(info->raw_data, info->raw_data_len , sha_out, sha_out_len, info->mode);
    }
    return 0;
}

/**
 * @brief Read flash data content
 * @param  address  Read data address, non-zero is the actual address, zero is the read and write area defined by the implementation side
 * @param  buffer   read buffer, in bytes
 * @param  length   The length of the data read, in bytes
 * @param  type     The read address area, divided by the implementation side， @see FLASH_TYPE_E
 * @return 
 *	- 0    on success
 *	- other  if an error occurred with any step
 * 
 * @note The read data is read in bytes, and the port side should be responsible for considering the corresponding flash alignment, read and write unit size
 */
static int flash_read(uint32_t address, uint8_t *buffer, uint32_t length, uint8_t type)
{
    int ret = 0;
    switch (type)
    {
    case FLASH_TABLE1:
        //应该限制地址范围或做一次转换
        if (length <= 32 && address >= DEFAULT_EFLASH_ADDR && address < 0x3c)
            ret = hosal_efuse_read(address, (uint32_t *)buffer, length);
        break;
    case FLASH_TABLE3:
        //The address range needs to be checked,TODO
        ret = hosal_flash_raw_read((uint32_t *)buffer, address, length);
        break;
    case FLASH_TABLE4:
        //The address range needs to be checked,TODO
        ret = hosal_flash_raw_read((uint32_t *)buffer, address, length);
        break;
    
    default:
        break;
    }
    bind_printf(("read ret :%d, addr: %p\r\n", ret, (void *)address));
    return ret;
}

/**
 * @brief write flash data content
 * @param  address  write data address, non-zero is the actual address, zero is the read and write area defined by the implementation side
 * @param  buffer   write buffer, in bytes
 * @param  length   The length of the data write, in bytes
 * @param  type     The write address area, divided by the implementation side
 *	- 0    on success
 *	- other  if an error occurred with any step
 * 
 * @note The write data is write in bytes, and the port side should be responsible for considering the corresponding flash alignment, read and write unit size
 */
static int flash_write(uint32_t address, uint8_t *buffer, uint32_t length, uint8_t type)
{
    int ret = 1;
    switch (type)
    {
    case FLASH_TABLE1:
        ret = 99;
        // if (length <= 32 && address >= DEFAULT_EFLASH_ADDR && address < 0x3c)
        //     ret = hosal_efuse_write(address, (uint32_t *)buffer, length);
        break;
    case FLASH_TABLE3:
        ret = hosal_flash_raw_erase(address, length);
        if (0 != ret)
            break;
        ret = hosal_flash_raw_write((uint32_t *)buffer, address, length);
        break;
    case FLASH_TABLE4:
        ret = hosal_flash_raw_erase(address, length);
        if (0 != ret)
            break;
        ret = hosal_flash_raw_write((uint32_t *)buffer, address, length);
        break;

    default:
        break;
    }
    bind_printf(("write ret :%d, addr: %p\r\n", ret, (void *)address));
    return ret;
}

static int __rsa_pub_check( const uint8_t * hash, const uint8_t *signed_data , const uint8_t *pub_key, uint16_t pub_key_len)
{
	int ret = -1;
	
	if(NULL == hash || NULL == signed_data ||NULL == pub_key)
		return ret;

    mbedtls_pk_context ctx_pk;
    mbedtls_rsa_context rsa;
    mbedtls_entropy_context entropy;
    mbedtls_ctr_drbg_context ctr_drbg;
    mbedtls_pk_init(&ctx_pk);
    
    if (0 != mbedtls_pk_parse_public_key(&ctx_pk, pub_key, pub_key_len+1))
    {
        bind_printf(("Can't import private key\n"));
    }

    if (!mbedtls_pk_can_do(&ctx_pk, MBEDTLS_PK_RSA))
    {
        bind_printf(("failed! Key is not an RSA key\n"));
    }

    ret = mbedtls_rsa_check_pubkey(mbedtls_pk_rsa(ctx_pk));
    if (ret != 0)
    {
        bind_printf(("Check pubkey failed\n"));
    }

    mbedtls_rsa_init(&rsa, MBEDTLS_RSA_PKCS_V15, 0);
    mbedtls_ctr_drbg_init(&ctr_drbg);
    mbedtls_entropy_init(&entropy);

    ret = mbedtls_ctr_drbg_seed(&ctr_drbg, mbedtls_entropy_func,
                                &entropy, NULL, 0);
    if (ret != 0)
    {
        bind_printf((" mbedtls_ctr_drbg_seed returned %d,fail\n", ret));
        goto exit;
    }
    rsa = *(mbedtls_rsa_context*)ctx_pk.pk_ctx;
 
    if ((ret = mbedtls_rsa_complete(&rsa)) != 0)
    {
        bind_printf((" mbedtls_rsa_complete returned %d,fail\n", ret));
        goto exit;
    }
 
    /*
     * Extract the RSA encrypted value from the text file
     */
    if (128 != rsa.len)
    {
        bind_printf(("Invalid RSA signature format\n"));
        goto exit;
    }
    /*
     * Decrypt the encrypted RSA data and print the result.
     */
    if( ( ret = mbedtls_rsa_pkcs1_verify( &rsa, NULL, NULL, MBEDTLS_RSA_PUBLIC,
                                  MBEDTLS_MD_SHA256, 32, hash, signed_data ) ) != 0 )
    {
        bind_printf(( " mbedtls_rsa_pkcs1_verify returned -0x%0x,fail\n", -ret));
        goto exit;
    }
	
    bind_printf((". OK\n"));
 	return 0;
exit:
    mbedtls_ctr_drbg_free(&ctr_drbg);
    mbedtls_entropy_free(&entropy);
    mbedtls_rsa_free(&rsa);
    return -1;
}


static int __rsa_pri_sign(uint8_t *sig_out, const uint8_t * hash, const uint8_t *pri_key, uint16_t pri_key_len)
{
	int ret = -1;
    unsigned char buf[128]={0};//MBEDTLS_MPI_MAX_SIZE
	if(NULL == hash  || NULL == pri_key || NULL == sig_out)
		return ret;

    mbedtls_pk_context ctx_pk;
    mbedtls_rsa_context rsa;
    mbedtls_entropy_context entropy;
    mbedtls_ctr_drbg_context ctr_drbg;
    mbedtls_pk_init(&ctx_pk);
    
    if (0 != mbedtls_pk_parse_key(&ctx_pk, pri_key, pri_key_len+1, NULL, 0))
    {
        bind_printf(("Can't import private key\n"));
    }

    if (!mbedtls_pk_can_do(&ctx_pk, MBEDTLS_PK_RSA))
    {
        bind_printf(("Key is not an RSA key,fail\n"));
    }

    ret = mbedtls_rsa_check_privkey(mbedtls_pk_rsa(ctx_pk));
    if (ret != 0)
    {
        bind_printf(("Check pubkey failed\n"));
    }

    mbedtls_rsa_init(&rsa, MBEDTLS_RSA_PKCS_V15, 0);
    mbedtls_ctr_drbg_init(&ctr_drbg);
    mbedtls_entropy_init(&entropy);

    ret = mbedtls_ctr_drbg_seed(&ctr_drbg, mbedtls_entropy_func,
                                &entropy, NULL, 0);
    if (ret != 0)
    {
        bind_printf((" mbedtls_ctr_drbg_seed returned %d,fail\n", ret));
        goto exit;
    }
    rsa = *(mbedtls_rsa_context*)ctx_pk.pk_ctx;
 
    if ((ret = mbedtls_rsa_complete(&rsa)) != 0)
    {
        bind_printf((" mbedtls_rsa_complete returned %d,fail\n", ret));
        goto exit;
    }
 
    if( ( ret = mbedtls_rsa_check_privkey( &rsa ) ) != 0 )
    {
        bind_printf(( " mbedtls_rsa_check_privkey failed with -0x%0x,fail\n", (unsigned int) -ret));
        goto exit;
    }

    if (128 != rsa.len)
    {
        bind_printf((" Invalid RSA signature format,fail\n"));
        goto exit;
    }
    /*
     * Decrypt the encrypted RSA data and print the result.
     */
    if( ( ret = mbedtls_rsa_pkcs1_sign( &rsa, NULL, NULL, MBEDTLS_RSA_PRIVATE, MBEDTLS_MD_SHA256,
                                32, hash, buf ) ) != 0 )
    {
        bind_printf(( " mbedtls_rsa_pkcs1_sign returned -0x%0x\n", (unsigned int) -ret));
        goto exit;
    }
#if 1
    bind_printf(("sign:\r\n"));
    for (int i = 0; i < 128; i++)
    {
        bind_printf(("%02X",buf[i]));
    }
    bind_printf(("\r\n"));
#endif
    memcpy(sig_out, buf, 128);
    bind_printf((". OK\n"));
 	return 0;

exit:
    mbedtls_ctr_drbg_free(&ctr_drbg);
    mbedtls_entropy_free(&entropy);
    mbedtls_rsa_free(&rsa);
    return -1;
}

static int __mbedtls_aes_crypt(mbedtls_aes_context *ctx,
                               int mode,
                               AES_TYPE_E aes_type,
                               const uint8_t *key,
                               uint32_t key_type,
                               uint8_t *vi,
                               const uint8_t *const input,
                               uint8_t *output,
                               uint32_t length)
{
    int j;

    size_t offset = 0;
    unsigned char nonce_counter[16];
    unsigned char stream_block[16];

    if (mode == MBEDTLS_AES_ENCRYPT) {
        mbedtls_aes_setkey_enc(ctx, key, key_type);
    } else {
        mbedtls_aes_setkey_dec(ctx, key, key_type);
    }

    switch (aes_type) {
    case AES_ECB_MODE:
        for(j = 0; j < length; j += 16) {
            mbedtls_aes_crypt_ecb( ctx, mode, input + j, output + j);
        }
        break;
    case AES_CBC_MODE:
        mbedtls_aes_crypt_cbc( ctx, mode, length, vi, input, output);
        break;
    case AES_CTR_MODE:
        mbedtls_aes_crypt_ctr(ctx, length, &offset, nonce_counter,
                              stream_block, input, output);
        break;
    default:
        return 0;
    }
    return 0;
}
static uint8_t __mbedtls_soft_aes(const uint8_t *const input, uint8_t *output,
                               uint32_t length, uint8_t aes_enc_dec, AES_TYPE_E aes_type, 
                               uint8_t *iv, uint8_t *key, int key_type)
{

    if (!(key_type == 256 || key_type == 192 || key_type == 128))
        return 1;

    if (NULL == input || NULL == output || NULL == iv || NULL == key)
        return 1;
    mbedtls_aes_context ctx;

    mbedtls_aes_init(&ctx);

#if (OPEN_INTERFACE_LOG)
    uint32_t time_irq_start, speed_time;
    time_irq_start = bl_timer_now_us();
#endif

    bind_printf(("aes input %ld:\r\n", length));
    for(int i=0; i<16;i++){
        bind_printf(("%02x ", input[i]));
    }
    bind_printf(("\r\n"));
    taskENTER_CRITICAL();
    __mbedtls_aes_crypt(&ctx,
                        aes_enc_dec,//MBEDTLS_AES_ENCRYPT
                        aes_type,
                        key,
                        key_type,
                        iv,
                        input,
                        output,
                        length);
    taskEXIT_CRITICAL();

#if (OPEN_INTERFACE_LOG)

    bind_printf(("aes output:\r\n"));
    for(int i=0; i<16;i++){
        bind_printf(("%02x ", output[i]));
    }
    bind_printf(("\r\n"));

    speed_time = bl_timer_now_us() - time_irq_start;
    bind_printf(("speed_time is %ldus\r\n", speed_time));//enc 47 dec 27
    bind_printf(("aes encrypt speed is %.4lfMbps\r\n", length * 8.0 / speed_time));
#endif

    mbedtls_aes_free(&ctx);
    return 0;
}
static int AES_CRYPT(int mode, const uint8_t *input,
                     uint8_t *output, uint8_t *iv, uint8_t *key,
                     SEC_ENG_AES_Type AES_Type, int key_type, size_t length)
{
    uint8_t *input_temp;
    SEC_ENG_AES_Key_Type Key_Type;
    SEC_ENG_AES_EnDec_Type aesEnDec;
    SEC_ENG_AES_ID_Type aesId = SEC_ENG_AES_ID0;

    SEC_Eng_AES_Ctx aes_ctx;
    memset(&aes_ctx, 0, sizeof(SEC_Eng_AES_Ctx));

    if(((uint32_t)output & 0x00000003) != 0) {
        bind_printf(("output is not 4 Byte alignment! \r\n"));
        while (1);
    }

    input_temp = (uint8_t *)input;

    if (mode == 1) {
        aesEnDec = SEC_ENG_AES_ENCRYPTION;
    } else if (mode == 0) {
        aesEnDec = SEC_ENG_AES_DECRYPTION;
    } else {
        bind_printf(("error aes endec mode! \r\n"));
        while (1);
    }

    switch (key_type)
    {
        case 128:
            Key_Type = SEC_ENG_AES_KEY_128BITS;
            break;
        case 192:
            Key_Type = SEC_ENG_AES_KEY_192BITS;
            break;
        case 256:
            Key_Type = SEC_ENG_AES_KEY_256BITS;
            break;
        case 16:
            Key_Type = SEC_ENG_AES_DOUBLE_KEY_128BITS;
            break;
        default:
            bind_printf(("error aes cbc key_type! \r\n"));
            while(1);
            return 0;
    }

    Sec_Eng_AES_Init(&aes_ctx, aesId,AES_Type,Key_Type,aesEnDec);
    Sec_Eng_AES_Set_Key_IV_BE(aesId,SEC_ENG_AES_KEY_SW,key,iv);

    Sec_Eng_AES_Crypt(&aes_ctx, aesId, input_temp, length, output);
    Sec_Eng_AES_Finish(aesId);

    return 0;
}

static int AES_CBC_CRYPT(int mode, const uint8_t *input, uint8_t *output, uint8_t *iv, uint8_t *key, int key_type, size_t length)
{
    return AES_CRYPT(mode, input, output, iv, key, SEC_ENG_AES_CBC, key_type, length);
}

static int AES_CTR_CRYPT(int mode, const uint8_t *input, uint8_t *output, uint8_t *iv, uint8_t *key, int key_type, size_t length)
{
    return AES_CRYPT(mode, input, output, iv, key, SEC_ENG_AES_CTR, key_type, length);
}

static int AES_ECB_CRYPT(int mode, const uint8_t *input, uint8_t *output, uint8_t *key, int key_type, size_t length)
{
    uint8_t iv[16] = {0};
    return AES_CRYPT(mode, input, output, iv, key, SEC_ENG_AES_ECB, key_type, length);
}

static int bl_HW_aes(const uint8_t *const input, uint8_t *output,
                     uint32_t length, uint8_t aes_enc_dec, AES_TYPE_E aes_type,
                     uint8_t *iv, uint8_t *key, int key_type)
{
        
    if (!(key_type == 256 || key_type == 192 || key_type == 128))
        return 1;

    if (NULL == input || NULL == output || NULL == iv || NULL == key)
        return 1;
    if (length % 16 != 0) {
        bind_printf(("length is inviald, Must be an integer multiple of 16 !\n"));
        return 1;
    }
#if (OPEN_INTERFACE_LOG)
    uint32_t time_irq_start, speed_time;
    time_irq_start = bl_timer_now_us();
#endif

    taskENTER_CRITICAL();

    switch (aes_type)
    {
    case AES_ECB_MODE:
        AES_ECB_CRYPT(aes_enc_dec, input, output, key, key_type, length);
        break;
    case AES_CBC_MODE:
        AES_CBC_CRYPT(aes_enc_dec, input, output, iv, key, key_type, length);
        break;
    case AES_CTR_MODE:
        AES_CTR_CRYPT(aes_enc_dec, input, output, iv, key, key_type, length);
        break;
    default:
        bind_printf(("NO Support AES crypt mode!\r\n"));
        return 0;
    }

    taskEXIT_CRITICAL();

#if (OPEN_INTERFACE_LOG)
    speed_time = bl_timer_now_us() - time_irq_start;
    bind_printf(("speed_time is %ldus\r\n", speed_time));//enc 72 dec 48
    bind_printf(("aes encrypt speed is %.4lfMbps\r\n", length * 8.0 / speed_time));
#endif

    return 0;
}

static int aes128_encryption_decryption(uint8_t * data_out, uint16_t *out_len, raw_info_t *raw_info)
{
    raw_info_t *info = raw_info;

    if (info->check_cb)
    {
        (*info->check_cb)(info->key, info->key, info->aes_dec_enc);
    }

    if (info->is_aes_HW)
    {
        bind_printf(("AES HW\n"));
        bl_HW_aes(info->raw_data, data_out,
                  info->raw_data_len, info->aes_dec_enc, info->aes_mode,
                  info->iv, info->key, AES_KEY_128);
    }
    else
    {
        bind_printf(("AES SOFT\n"));
        __mbedtls_soft_aes(info->raw_data, data_out,
                           info->raw_data_len, info->aes_dec_enc, info->aes_mode,
                           info->iv, info->key, AES_KEY_128);
    }
    *out_len = (info->raw_data_len + 15) / 16 * 16;
    return 0;
}
/*****************************************************************************/
/* Static variable */
/*****************************************************************************/

static const bind_interface_inst_t bind_interface_inst = {
    .read = flash_read,
    .write = flash_write,
    .platform_info = init_dev_info,
    .generate_hash_data = NULL,
    .aes128_enc_dec = aes128_encryption_decryption,
    .pri_sign = NULL,
    .pub_check = NULL,
};

/*****************************************************************************/
/* Function implementation */
/*****************************************************************************/


/*****************************************************************************/
/* External interface */
/*****************************************************************************/

/**
 * @brief Get the bind interface inst object
 * @return Device instance structure pointer
 */
const bind_interface_inst_t *get_bind_interface_inst(void)
{
    return &bind_interface_inst;
}

/************************ Copyright (c) 2022 Shenzhen Ai-Thinker Technology Co., Ltd. ************************/
