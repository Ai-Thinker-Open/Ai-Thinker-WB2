/**
 * @file        dev_interface.h
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

#ifndef __BIND_INTERFACE_H__
#define __BIND_INTERFACE_H__

#include <stddef.h>
#include "stdint.h"
#include "string.h"

#ifdef __cplusplus
extern "C"
{
#endif

/**
 * @brief Internal random number generation interface
 */
#define BIND_RAND() rand()
#define BIND_RANDOM() random()

#ifndef MALLOC
/**
 * @brief Internal memory request interface
 */
#define MALLOC(x) malloc(x)
#endif

#ifndef FREE
/**
 * @brief Internal memory release interface
 */
#define FREE(x) free(x)
#endif

#define SOFT_HW_CODING (0)/**< 0. Use software encryption/decryption, 1. Use hardware encryption/decryption*/

#define AES_KEY_128 (128)        /**< AES key type 128*/
#define AES_KEY_192 (192)        /**< AES key type 192*/
#define AES_KEY_256 (256)        /**< AES key type 256*/
#define AES_KEY_DOUBLE_128 (16)  /**< AES key type double 128*/

#define DEVICE_CHIP_ID  (6)      /**< Used to identify the length of the unique identifier of the device, it is recommended to use the same length for MAC and chip ID*/

#define DEVICE_PLATF (0)  //平台版本信息
#define MAJOR_VERSION (0) //主版本号
#define MINOR_VERSION (1) //次版本号

#define DEV_FLASH_TYPE (0)//2 flash 0 eflash 

#if (0 == DEV_FLASH_TYPE)
#define AES_LIC_FLASH_ADDR (0x1c)
// #error "!!生产阶段各个平台适配者需要将此处放入.c文件"
#elif (2 == DEV_FLASH_TYPE)
#define AES_LIC_FLASH_ADDR (0x192000)
#error "!!生产阶段各个平台适配者需要将此处放入.c文件"
#endif

/**
 * @brief bind status code
 */
typedef enum
{
    ret_ok = 0x00, /**< SUCCEED */
    ret_is_null,   /**< parameter is empty */
    ret_param_err, /**< parameter content error*/
    ret_mac_err,   /**< MAC parameter content error*/
    ret_key_err,   /**< key read error*/
    ret_crc_err,   /**< crc error*/
    ret_enc_err,   /**< Inconsistent encryption method*/
    ret_fail,      /**< error*/
    ret_max = 0xff,
} DEV_STA_E;

/**
 * @brief bind callback event enumerate
 */
typedef enum {
    BIND_EVT_INIT_INFO,/**< Binding initialization information*/
    BIND_EVT_PROCESSING,/**< information during binding*/
    BIND_EVT_COMPLETE,/**< Binding complete information*/
}BIND_EVT_E;

/**
 * @brief SHA select mode
 */
typedef enum {
    SHA_256_MODE,/**< SHA mode type:256 */
    SHA_224_MODE,/**< SHA mode type:224 */
    SHA_1_MODE,/**< SHA 1*/
    SHA_1_RSVD_MODE,
}SHA_TYPE_E;

/**
 * @brief Flash storage area identifier
 */
typedef enum{
    FLASH_TABLE1, /**< first partition data block, efalsh sign area*/
    FLASH_TABLE2, /**< second partition data block, efalsh reserve area*/
    FLASH_TABLE3, /**< third partition data block, falsh public key area*/
    FLASH_TABLE4, /**< Fourth partition data block, falsh reserve area*/
}FLASH_TYPE_E;

/**
 * @brief bind event struct
 */
typedef struct
{
    uint8_t event;/**< Authentication callback event @see BIND_EVT_E*/
    uint8_t dev_sta;/**< Return event status code @see DEV_STA_E*/
}BindEvent_t;

/**
 * @brief Device raw data information
 */
typedef struct
{
    uint8_t dev_platf : 2;           /**< AES use, Chip Platform Information*/
    uint8_t major_ver : 2;           /**< AES use, major version number*/
    uint8_t minor_ver : 2;           /**< AES use, minor version number*/
    uint8_t key_en : 1;              /**< AES use, 0.disabled, 1.enable*/
    uint8_t reserved : 1;            /**< AES use, reserved*/
    uint8_t soft_ver[8];             /**< RSA use, Current firmware version*/
    uint8_t auth_ver[8];             /**< RSA use, Current binding encryption version, Bitwise XOR encryption*/
    uint8_t chip_id[DEVICE_CHIP_ID]; /**< chip id*/
    uint8_t mac[DEVICE_CHIP_ID];     /**< mac address*/
    uint8_t MF_info[12];             /**< Manufacturer info */
} dev_info_t;

/**
 * @brief AES encryption mode
 */
typedef enum
{
    AES_ECB_MODE, /*!< AES mode type:ECB */
    AES_CTR_MODE, /*!< AES mode type:CTR */
    AES_CBC_MODE, /*!< AES mode type:CBC */
} AES_TYPE_E;

/**
 * @brief generate sha256 data struct
 */
typedef struct
{
    uint16_t is_HW : 1;       /**< 0.software calculates the hash, 1.hardware calculates the hash*/
    uint16_t is_aes_HW : 1;   /**< 0.software calculates the AES, 1.hardware calculates the AES*/
    uint16_t aes_dec_enc : 1; /**< 0.AES Decryption, 1.AES Encryption*/
    uint16_t reserve : 13;    /**< reserve*/
    union
    {
        uint8_t mode;     /**< SHA mdoe @see SHA_TYPE_E*/
        uint8_t aes_mode; /**< AES mdoe @see AES_TYPE_E*/
    };
    uint8_t *iv;                          /**< */
    uint8_t *key;                         /**< */
    void (*check_cb)(uint8_t * ,uint8_t *, uint8_t ); /**< */
    uint8_t *raw_data;                    /**<generate raw data*/
    uint32_t raw_data_len;                /**<generate raw data lenght*/
} raw_info_t;

/**
 * @brief Binding interface instance structure
 */
typedef struct
{
    int (*read)(uint32_t address, uint8_t *buffer, uint32_t length, uint8_t type);
    int (*write)(uint32_t address, uint8_t *buffer, uint32_t length, uint8_t type);
    uint8_t (*platform_info)(dev_info_t *dev);
    uint8_t (*generate_hash_data)(uint8_t *sha_out, uint32_t *sha_out_len, raw_info_t *raw_info);
    int (*aes128_enc_dec)(uint8_t *data_out, uint16_t *out_len, raw_info_t *raw_info);
    int (*pri_sign)(uint8_t *sig_out, const uint8_t *hash, const uint8_t *pri_key, uint16_t pri_key_len);
    int (*pub_check)(const uint8_t *hash, const uint8_t *signed_data, const uint8_t *pub_key, uint16_t pub_key_len);
    uint8_t (*bind_evt_cb)(BindEvent_t *pMsg);
} bind_interface_inst_t;

/**
 * @brief Get the bind interface inst object
 * @return Device instance structure pointer
 */
const bind_interface_inst_t *get_bind_interface_inst(void);

#ifdef __cplusplus
}
#endif

#endif //__BIND_INTERFACE_H__ 
/************************ Copyright (c) 2022 Shenzhen Ai-Thinker Technology Co., Ltd. ************************/
