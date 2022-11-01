# Flash Example

## Description

This example for write/read data to a row address/partitoin on a Flash, If you want to save data in the form of key-value pairs, you can refer to the [easyflash](../easyflash/) demo.

## Example Output

Starts a FreeRTOS task to print "flash write/read demo". As you run the example, you will see the log :

```
--------flash write/read demo--------
INFO (5)[main.c: 125] --------flash write/read demo--------
[MTD] >>>>>> Hanlde info Dump >>>>>>
      name DATA
      id 0
      offset 0x001f3000(2043904)
      size 0x00005000(20Kbytes)
      xip_addr 0x00000000
[MTD] <<<<<< Hanlde info End <<<<<<
INFO (26)[main.c:  45] partition name         : DATA
INFO (31)[main.c:  46] partition start address: 0x001f3000
INFO (37)[main.c:  47] partition length       : 20480
INFO (73)[main.c:  77] hal flash partition data R/W successful!
INFO (78)[main.c: 116] hal flash addr R/W successful!
```

## API

```cpp

/**
 * @brief Open a flash partition device
 *
 * @param[in]  name     flash partition name
 * @param[in]  flags    flash flags
 *               - HOSAL_FLASH_FLAG_ADDR_0
 *               - HOSAL_FLASH_FLAG_ADDR_1
 *               - HOSAL_FLASH_FLAG_BUSADDR
 *
 * @return
 *  - NULL flash open error
 *  - otherwise is flash partition device
 */
hosal_flash_dev_t *hosal_flash_open(const char *name, unsigned int flags);

/**
 * @brief Get the information of the specified flash area
 *
 * @param[in]  p_dev     The target flash logical partition device
 * @param[out] partition The buffer to store partition info
 *
 * @return
 *  - 0 On success
 *  - otherwise is error
 */
int hosal_flash_info_get(hosal_flash_dev_t *p_dev, hosal_logic_partition_t *partition);

/**
 * @brief Erase an area on a Flash logical partition
 *
 * @note  Erase on an address will erase all data on a sector that the
 *        address is belonged to, this function does not save data that
 *        beyond the address area but in the affected sector, the data
 *        will be lost.
 *
 * @param[in]  p_dev         The target flash logical partition which should be erased
 * @param[in]  off_set       Start address of the erased flash area
 * @param[in]  size          Size of the erased flash area
 *
 * @return
 *  - 0 On success
 *  - otherwise is error
 */
int hosal_flash_erase(hosal_flash_dev_t *p_dev, uint32_t off_set, uint32_t size);

/**
 * @brief Write data to an area on a flash logical partition without erase
 *
 * @param[in]  p_dev           The target flash logical partition which should be read which should be written
 * @param[in/out]  off_set     Point to the start address that the data is written to, and
 *                             point to the last unwritten address after this function is
 *                             returned, so you can call this function serval times without
 *                             update this start address.
 * @param[in]  in_buf          point to the data buffer that will be written to flash
 * @param[in]  in_buf_size     The size of the buffer
 *
 * @return
 *  - 0 On success
 *  - otherwise is error
 */
int hosal_flash_write(hosal_flash_dev_t *p_dev, uint32_t *off_set,
                    const void *in_buf, uint32_t in_buf_size);

/**
 * @brief Write data to an area on a flash logical partition with erase first
 *
 * @param[in]  p_dev           The target flash logical partition which should be read which should be written
 * @param[in/out]  off_set     Point to the start address that the data is written to, and
 *                             point to the last unwritten address after this function is
 *                             returned, so you can call this function serval times without
 *                             update this start address.
 * @param[in]  in_buf          point to the data buffer that will be written to flash
 * @param[in]  in_buf_size     The length of the buffer
 *
 * @return
 *  - 0 On success
 *  - otherwise is error
 */
int hosal_flash_erase_write(hosal_flash_dev_t *p_dev, uint32_t *off_set,
                          const void *in_buf, uint32_t in_buf_size);

/**
 * @brief Read data from an area on a Flash to data buffer in RAM
 *
 * @param[in]  p_dev           The target flash logical partition which should be read
 * @param[in/out]  off_set     Point to the start address that the data is read, and
 *                             point to the last unread address after this function is
 *                             returned, so you can call this function serval times without
 *                             update this start address.
 * @param[in]  out_buf         Point to the data buffer that stores the data read from flash
 * @param[in]  out_buf_size    The length of the buffer
 *
 * @return
 *  - 0 On success
 *  - otherwise is error
 */
int hosal_flash_read(hosal_flash_dev_t *p_dev, uint32_t *off_set,
                   void *out_buf, uint32_t out_buf_size);

/**
 * @brief Close a flash partition device
 *
 * @param[in]  p_dev     flash partition device
 *
 * @return
 *  - 0 On success
 *  - otherwise is error
 */
int hosal_flash_close(hosal_flash_dev_t *p_dev);

/**
 * @brief Read data from a row address on a Flash to data buffer in RAM
 *
 * @param[in]  buffer          Point to the data buffer that stores the data read from flash
 * @param[in]  address         Address on flash to read from
 * @param[in]  length          Length (in bytes) of data to read
 *
 * @return
 *  - 0 On success
 *  - otherwise is error
 */
int hosal_flash_raw_read(void *buffer, uint32_t address, uint32_t length);

/**
 * @brief Write data to a row address on a Flash
 *
 * @param[in]  buffer          Point to the data buffer that will be written to flash
 * @param[in]  address         Address on flash to write to
 * @param[in]  length          Length (in bytes) of data to write
 *
 * @return
 *  - 0 On success
 *  - otherwise is error
 */
int hosal_flash_raw_write(void *buffer, uint32_t address, uint32_t length);

/**
 * @brief Erase a region of the flash
 *
 * @param[in]  start_addr      Address to start erasing flash.
 * @param[in]  length          Length of region to erase.
 *
 * @return
 *  - 0 On success
 *  - otherwise is error
 */
int hosal_flash_raw_erase(uint32_t start_addr, uint32_t length); 

/** @} */

```


## Troubleshooting

For any technical queries, please open an [issue](https://github.com/Ai-Thinker-Open/Ai-Thinker-WB2/issues) on GitHub. We will get back to you soon.
