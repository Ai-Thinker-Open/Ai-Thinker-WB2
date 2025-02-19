# Flash API指南

## 概述

SDK中使用分区表保存flash各区的信息，包括引导程序、各种应用程序二进制文件、数据及文件系统等。

### API参考

#### Header File

- components/platform/hosal/include/hosal_flash.h

#### Functions

```c
hosal_flash_dev_t *hosal_flash_open(const char *name, unsigned int flags)
```

Open a flash partition device.

`return`

- NULL flash open error
- otherwise is flash partition device

`Parameters`

- name: flash partition name
- flags: flash flags - HOSAL_FLASH_FLAG_ADDR_0 - HOSAL_FLASH_FLAG_ADDR_1 - HOSAL_FLASH_FLAG_BUSADDR



```c
int hosal_flash_info_get(hosal_flash_dev_t *p_dev, hosal_logic_partition_t *partition)
```

Get the information of the specified flash area.

`Return`

- 0 On success
- otherwise is error

`Parameters`

- p_dev: The target flash logical partition device
- partition: The buffer to store partition info



```c
int hosal_flash_erase(hosal_flash_dev_t *p_dev, uint32_t off_set, uint32_t size)
```

Erase an area on a Flash logical partition.

`Note`

Erase on an address will erase all data on a sector that the address  is belonged to, this function does not save data that beyond the address area but in the affected sector, the data will be lost.

`return`

- 0 On success

- otherwise is error

`Parameters`

- p_dev: The target flash logical partition which should be erased
- off_set: Start address of the erased flash area
- size: Size of the erased flash area



```c
int hosal_flash_write(hosal_flash_dev_t *p_dev, uint32_t *off_set, const void *in_buf, uint32_t in_buf_size)
```

Write data to an area on a flash logical partition without erase.

`return`

- 0 On success
- otherwise is error

`Parameters`

- p_dev: The target flash logical partition which should be read which should be written
- [in/out]: off_set Point to the start address that the data is  written to, and point to the last unwritten address after this function  is returned, so you can call this function serval times without update  this start address.
- in_buf: point to the data buffer that will be written to flash
- in_buf_size: The size of the buffer



```c
int hosal_flash_erase_write(hosal_flash_dev_t *p_dev, uint32_t *off_set, const void *in_buf, uint32_t in_buf_size)
```

Write data to an area on a flash logical partition with erase first.

`return`

- 0 On success
- otherwise is error

`Parameters`

- p_dev: The target flash logical partition which should be read which should be written
- [in/out]: off_set Point to the start address that the data is  written to, and point to the last unwritten address after this function  is returned, so you can call this function serval times without update  this start address.
- in_buf: point to the data buffer that will be written to flash
- in_buf_size: The length of the buffer



```c
int hosal_flash_read(hosal_flash_dev_t *p_dev, uint32_t *off_set, void *out_buf, uint32_t out_buf_size)
```

Read data from an area on a Flash to data buffer in RAM.

`return`

- 0 On success
- otherwise is error

`Parameters`

- p_dev: The target flash logical partition which should be read
- [in/out]: off_set Point to the start address that the data is  read, and point to the last unread address after this function is  returned, so you can call this function serval times without update this start address.
- out_buf: Point to the data buffer that stores the data read from flash
- out_buf_size: The length of the buffer



```c
int hosal_flash_close(hosal_flash_dev_t *p_dev)
```

Close a flash partition device.

`return`

- 0 On success
- otherwise is error

`Parameters`

- p_dev: flash partition device



```c
int hosal_flash_raw_read(void *buffer, uint32_t address, uint32_t length)
```

Read data from a row address on a Flash to data buffer in RAM.

`return`

- 0 On success
- otherwise is error

`Parameters`

- buffer: Point to the data buffer that stores the data read from flash
- address: Address on flash to read from
- length: Length (in bytes) of data to read



```c
int hosal_flash_raw_write(void *buffer, uint32_t address, uint32_t length)
```

Write data to a row address on a Flash.

`return`

- 0 On success
- otherwise is error

`Parameters`

- buffer: Point to the data buffer that will be written to flash
- address: Address on flash to write to
- length: Length (in bytes) of data to write



```c
int hosal_flash_raw_erase(uint32_t start_addr, uint32_t length)
```

Erase a region of the flash.

`return`

- 0 On success
- otherwise is error

`Parameters`

- start_addr: Address to start erasing flash.
- length: Length of region to erase.

#### Structures

```c
struct hosal_flash_dev
```

Hal flash partition device.

> Public Members
>
> - `void *flash_dev`
>
>   flash device

```c
struct hosal_logic_partition_t
```

Hal flash partition manage struct.

​	Public Members

- `const char *partition_description`

  name

- `uint32_t partition_start_addr`

  start addr

- `uint32_t partition_length`

  length

- `uint32_t partition_options`

  options

#### Macros

```c
HOSAL_FLASH_FLAG_ADDR_0
```

Open flash prtition address 0 in prtition table.

```c
HOSAL_FLASH_FLAG_ADDR_1
```

Open flash prtition address 1 in prtition table.

```c
HOSAL_FLASH_FLAG_BUSADD
```

Open the partition table and use the bus physical address of flash.  (If it is not set, the offset address set in the partition table is used by default.)



#### Type Definitions

```c
typedef struct hosal_flash_dev hosal_flash_dev_t
```

Hal flash partition device.