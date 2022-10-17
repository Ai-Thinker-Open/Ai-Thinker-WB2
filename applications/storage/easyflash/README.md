# EasyFlash Example

## Example Output

Starts a FreeRTOS task to print "easyflash write/read demo". As you run the example, you will see the log :

```
Booting Ai-WB2 Modules...
------------------------------------------------------------
RISC-V Core Feature:RV32-ACFIMX
Build Version: release_bl_iot_sdk_1.6.38
Build Date: Oct 17 2022
Build Time: 14:08:51
------------------------------------------------------------

blog init set power on level 2, 2, 2.
[IRQ] Clearing and Disable all the pending IRQ...
[         0][INFO: hal_boot2.c: 282] [HAL] [BOOT2] Active Partition[0] consumed 596 Bytes
[         0][INFO: hal_boot2.c:  82] ======= PtTable_Config @0x4200d420=======
[         0][INFO: hal_boot2.c:  83] magicCode 0x54504642; version 0x0000; entryCnt 7; age 0; crc32 0x12DF9A26
[         0][INFO: hal_boot2.c:  89] idx  type device activeIndex     name   Address[0]  Address[1]  Length[0]   Length[1]   age
[         0][INFO: hal_boot2.c:  91] [00]  00     0         0            FW  0x00010000  0x000e8000  0x000d8000  0x00088000  0
[         0][INFO: hal_boot2.c:  91] [01]  02     0         0           mfg  0x00170000  0x00000000  0x00032000  0x00000000  0
[         0][INFO: hal_boot2.c:  91] [02]  03     0         0         media  0x001a2000  0x00000000  0x00047000  0x00000000  0
[         0][INFO: hal_boot2.c:  91] [03]  04     0         0           PSM  0x001e9000  0x00000000  0x00008000  0x00000000  0
[         0][INFO: hal_boot2.c:  91] [04]  05     0         0           KEY  0x001f1000  0x00000000  0x00002000  0x00000000  0
[         0][INFO: hal_boot2.c:  91] [05]  06     0         0          DATA  0x001f3000  0x00000000  0x00005000  0x00000000  0
[         0][INFO: hal_boot2.c:  91] [06]  07     0         0       factory  0x001f8000  0x00000000  0x00007000  0x00000000  0
[         0][INFO: bl_flash.c: 391] ======= FlashCfg magiccode @0x42049c18=======
[         0][INFO: bl_flash.c: 392] mid                 0x5E
[         0][INFO: bl_flash.c: 393] clkDelay    0x1
[         0][INFO: bl_flash.c: 394] clkInvert   0x1
[         0][INFO: bl_flash.c: 395] sector size 4KBytes
[         0][INFO: bl_flash.c: 396] page size   256Bytes
[         0][INFO: bl_flash.c: 397] ---------------------------------------------------------------
[         0][INFO: hal_board.c:1249] [MAIN] [BOARD] [FLASH] addr from partition is 001f8000, ret is 0
[         0][INFO: hal_board.c:1257] [MAIN] [BOARD] [XIP] addr from partition is 231e7000, ret is 0
--------easyflash write/read demo--------[MTD] >>>>>> Hanlde info Dump >>>>>>
      name PSM
      id 0
      offset 0x001e9000(2002944)
      size 0x00008000(32Kbytes)
      xip_addr 0x231d8000
[MTD] <<<<<< Hanlde info End <<<<<<
[EF] Found Valid PSM partition, XIP Addr 231d8000, flash addr 001e9000, size 32768
ENV AREA SIZE 32768, SECTOR NUM 8
*default_env_size = 0x00000001
ENV start address is 0x00000000, size is 32768 bytes.
EasyFlash V4.0.99 is initialize success.
You can get the latest version on https://github.com/armink/EasyFlash .

ef_bytes_key write bytes: 0 1 2 3 4 5 6 7 8 9
ef_bytes_key read bytes: 0 1 2 3 4 5 6 7 8 9 
ef_u8_key write uint8: 8
ef_u8_key read uint8: 8
ef_u16_key write uint16: 1616
ef_u16_key read uint16: 1616
ef_u32_key write uint32: 32323232
ef_u32_key read uint32: 32323232
ef_int_key write int: -666
ef_int_key read int: -666
ef_str_key write string: Hello World!
ef_str_key read string: Hello World!
ef_float_key write float: 3.141592
ef_float_key read float: 3.141592

```

## How to use?

```cpp
easyflash_init();
```

## API

```cpp
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

```


## Troubleshooting

For any technical queries, please open an [issue](https://github.com/Ai-Thinker-Open/Ai-Thinker-WB2/issues) on GitHub. We will get back to you soon.
