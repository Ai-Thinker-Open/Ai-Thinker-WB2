/**
 * Copyright (c) 2016-2021 Bouffalolab Co., Ltd.
 *
 * Contact information:
 * web site:    https://www.bouffalolab.com/
 */

#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <hosal_flash.h>
#include <bl_mtd.h>
#include <bl_flash.h>
#include <blog.h>

/**
 * @brief Open a flash partition device
 *
 * @param[in]  name     flash partition name
 * @param[in]  flags    flash flags
 *               - HOSAL_MTD_OPEN_FLAG_NONE
 *               - HOSAL_MTD_OPEN_FLAG_BACKUP
 *               - HOSAL_MTD_OPEN_FLAG_BUSADDR
 *
 * @return  NULL: flash open error, otherwise is flash partition device
 */
hosal_flash_dev_t *hosal_flash_open(const char *name, unsigned int flags)
{
	int ret;
	bl_mtd_handle_t mtd;
	hosal_flash_dev_t *p_dev;

	ret = bl_mtd_open(name, &mtd, flags);
	if (ret != 0) {
		return NULL;
	}
	p_dev = calloc(sizeof(hosal_flash_dev_t), 1);
	if (p_dev == NULL) {
		blog_error("no memory !!!\r\n");
	}
	p_dev->flash_dev = mtd;
	return p_dev;
}

/**
 * @brief Get the information of the specified flash area
 *
 * @param[in]  p_dev     The target flash logical partition device
 * @param[out] partition The buffer to store partition info
 *
 * @return  0: On success,  otherwise is error
 */
int hosal_flash_info_get(hosal_flash_dev_t *p_dev, hosal_logic_partition_t *partition)
{
	bl_mtd_info_t info;

	bl_mtd_info(p_dev->flash_dev, &info);

	partition->partition_description = info.name;
	partition->partition_start_addr = (uint32_t)info.xip_addr + info.offset;
	partition->partition_length = info.size;

	return 0;
}

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
 * @return  0 : On success,  otherwise is error
 */
int hosal_flash_erase(hosal_flash_dev_t *p_dev, uint32_t off_set, uint32_t size)
{
	int ret;

	ret = bl_mtd_erase(p_dev->flash_dev, off_set, size);

	return ret;
}

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
 * @return  0 : On success,  otherwise is error
 */
int hosal_flash_write(hosal_flash_dev_t *p_dev, uint32_t *off_set,
                    const void *in_buf, uint32_t in_buf_size)
{
    uint32_t addr = *off_set;

    char *wbuf = (char *)in_buf;
    uint32_t wlen = in_buf_size;

    if (in_buf == NULL) {
        return -1;
    }

    bl_mtd_write(p_dev->flash_dev, addr, wlen, (const uint8_t *)wbuf);

    if (off_set) {
        *off_set += in_buf_size;
    }

    return 0;
}

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
 * @return  0 : On success,  otherwise is error
 */
int hosal_flash_erase_write(hosal_flash_dev_t *p_dev, uint32_t *off_set,
                          const void *in_buf, uint32_t in_buf_size)
{
    int ret;

    ret = hosal_flash_erase(p_dev, *off_set, in_buf_size);
    if (ret != 0) {
        return ret;
    }
    return hosal_flash_write(p_dev, off_set, in_buf, in_buf_size);
}

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
 * @return  0 : On success,  otherwise is error
 */
int hosal_flash_read(hosal_flash_dev_t *p_dev, uint32_t *off_set,
                   void *out_buf, uint32_t out_buf_size)
{
    int ret;
    uint32_t addr = *off_set;

    if (NULL == p_dev) {
        return -1;
    }
    if ((ret = bl_mtd_read(p_dev->flash_dev, addr, out_buf_size, out_buf)) == 0) {
        *off_set += out_buf_size;
    }
    return ret;
}

/**
 * @brief Close a flash partition device
 *
 * @param[in]  p_dev     flash partition device
 *
 * @return  0 : On success,  otherwise is error
 */
int hosal_flash_close(hosal_flash_dev_t *p_dev)
{
	bl_mtd_close(p_dev->flash_dev);
	free(p_dev);
	return 0;
}

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
int hosal_flash_raw_read(void *buffer, uint32_t address, uint32_t length)
{
    if (NULL == buffer) {
        return -1;
    }
    
    bl_flash_read(address, (uint8_t *)buffer, length);

    return 0;
}

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
int hosal_flash_raw_write(void *buffer, uint32_t address, uint32_t length)
{
    if (NULL == buffer) {
        return -1;
    }
    
    bl_flash_write(address, (uint8_t *)buffer, length);

    return 0;
}

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
int hosal_flash_raw_erase(uint32_t start_addr, uint32_t length)
{
    return bl_flash_erase(start_addr, length);    
}

#ifdef __cplusplus
}
#endif

/* end of file */
