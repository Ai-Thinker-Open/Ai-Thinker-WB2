#ifndef __EASY_FLASH_COMMON_H__
#define __EASY_FLASH_COMMON_H__

#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <string.h>
#include <easyflash.h>

#define EF_READ_EMPTY 0

/**
 * @description: easyflash write bytes 
 * @param {char} *key
 * @param {uint8_t} *value
 * @param {int} len
 * @return {*}
 */
bool ef_set_bytes(const char *key, uint8_t *value, int len);

/**
 * @description: easyflash read bytes 
 * @param {char} *key
 * @param {uint8_t} *value
 * @param {int} len
 * @return {*}
 */
int ef_get_bytes(const char *key, uint8_t *value, int len);


/**
 * @description: easyflash delete key
 * @param {char} *key
 * @return {*}
 */
bool ef_del_key(const char *key);

/**
 * @description: easyflash write uint8_t
 * @param {char} *key
 * @param {uint8_t} value
 * @return {*}
 */
bool ef_set_u8(const char *key, uint8_t value);

/**
 * @description: easyflash read uint8_t
 * @param {char} *key
 * @param {uint8_t} *value
 * @return {*}
 */
bool ef_get_u8(const char *key, uint8_t *value);

/**
 * @description: easyflash write uint16_t
 * @param {char} *key
 * @param {uint16_t} value
 * @return {*}
 */
bool ef_set_u16(const char *key, uint16_t value);

/**
 * @description: easyflash read uint16_t
 * @param {char} *key
 * @param {uint16_t} *value
 * @return {*}
 */
bool ef_get_u16(const char *key, uint16_t *value);

/**
 * @description: easyflash write uint32_t
 * @param {char} *key
 * @param {uint32_t} value
 * @return {*}
 */
bool ef_set_u32(const char *key, uint32_t value);

/**
 * @description: easyflash read uint32_t
 * @param {char} *key
 * @param {uint32_t} *value
 * @return {*}
 */
bool ef_get_u32(const char *key, uint32_t *value);

/**
 * @description: easyflash write int
 * @param {char} *key
 * @param {int} value
 * @return {*}
 */
bool ef_set_int(const char *key, int value);

/**
 * @description: easyflash read int
 * @param {char} *key
 * @param {int} *value
 * @return {*}
 */
bool ef_get_int(const char *key, int *value);

/**
 * @description: easyflash write float
 * @param {char} *key
 * @param {float} value
 * @return {*}
 */
bool ef_set_float(const char *key, float value);

/**
 * @description: easyflash read float
 * @param {char} *key
 * @param {float} *value
 * @return {*}
 */
bool ef_get_float(const char *key, float *value);

/**
 * @description: easyflash write string
 * @param {char} *key
 * @param {char} *str
 * @return {*}
 */
bool ef_set_str(const char *key, char *str);

/**
 * @description: easyflash read string
 * @param {char} *key
 * @param {char} *str
 * @param {int} len
 * @return {*}
 */
bool ef_get_str(const char *key, char *str, int len);

#endif /*__EASY_FLASH_COMMON_H__*/
