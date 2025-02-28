# Flash API指南

## 概述

SDK中使用分区表保存flash各区的信息，包括引导程序、各种应用程序二进制文件、数据及文件系统等。

### API参考

#### 头文件

- components/platform/hosal/include/hosal_flash.h

#### 函数

```c
hosal_flash_dev_t *hosal_flash_open(const char *name, unsigned int flags)
```

> 打开flash闪存分区设备

`返回值`

- NULL  打开失败
- otherwise  获取到闪存设备句柄

`参数`

- name: 闪存分区名称
- flags: 设置标志 - HOSAL_FLASH_FLAG_ADDR_0 - HOSAL_FLASH_FLAG_ADDR_1 - HOSAL_FLASH_FLAG_BUSADDR



```c
int hosal_flash_info_get(hosal_flash_dev_t *p_dev, hosal_logic_partition_t *partition)
```

> 获取指定闪存区的信息

`返回值`

- 0  成功
- otherwise 失败

`参数`

- p_dev: 目标闪存逻辑分区设备
- partition: 存储分区信息的缓冲区



```c
int hosal_flash_erase(hosal_flash_dev_t *p_dev, uint32_t off_set, uint32_t size)
```

> 擦除 Flash 逻辑分区上的一个区域

`Note`

地址擦除将擦除地址所属扇区上的所有数据

`返回值`

- 0  成功
- otherwise 失败

`参数`

- p_dev: 目标闪存逻辑分区设备

- off_set: 擦除的闪存区域起始地址

- size: 擦除的闪存区域大小



```c
int hosal_flash_write(hosal_flash_dev_t *p_dev, uint32_t *off_set, const void *in_buf, uint32_t in_buf_size)
```

> 将数据写入闪存逻辑分区上的一个区域，无需擦除。

`返回值`

- 0  成功
- otherwise 失败

`参数`

- p_dev: 目标闪存逻辑分区设备

- off_set: 指向数据写入的起始地址
- in_buf: 指向将要写入闪存的缓冲区数据
- in_buf_size: 缓冲区大小



```c
int hosal_flash_erase_write(hosal_flash_dev_t *p_dev, uint32_t *off_set, const void *in_buf, uint32_t in_buf_size)
```

> 将数据写入一个带有先擦除的闪存逻辑分区区域。

`返回值`

- 0  成功
- otherwise 失败

`参数`

- p_dev: 目标闪存逻辑分区设备

- off_set: 指向数据写入的起始地址
- in_buf: 指向将要写入闪存的缓冲区数据
- in_buf_size: 缓冲区大小



```c
int hosal_flash_read(hosal_flash_dev_t *p_dev, uint32_t *off_set, void *out_buf, uint32_t out_buf_size)
```

> 从 Flash 区域读取数据到 RAM 中的数据缓冲区。

`返回值`

- 0  成功
- otherwise 失败

`参数`

- p_dev: 目标闪存逻辑分区设备

- off_set: 指向数据写入的起始地址

- out_buf: 向存储从闪存读取的数据的数据缓冲区指针
- out_buf_size: 读取缓冲区大小



```c
int hosal_flash_close(hosal_flash_dev_t *p_dev)
```

> 关闭闪分区设备。

`返回值`

- 0  成功
- otherwise 失败

`参数`

- p_dev: 目标闪存逻辑分区设备



```c
int hosal_flash_raw_read(void *buffer, uint32_t address, uint32_t length)
```

> 从闪存行地址读取数据到 RAM 中的数据缓冲区。

`返回值`

- 0  成功
- otherwise 失败

`参数`

- buffer: 指向存储从闪存读取的数据的数据缓冲区
- address: 从闪存读取的地址
- length: 要读取的数据长度（以字节为单位）



```c
int hosal_flash_raw_write(void *buffer, uint32_t address, uint32_t length)
```

> 将数据写入闪存的行地址

`返回值`

- 0  成功
- otherwise 失败

`参数`

- buffer: 指向将要写入闪存的缓冲区
- address: 要写入的闪存地址
- length: 要写入的数据长度（以字节为单位）



```c
int hosal_flash_raw_erase(uint32_t start_addr, uint32_t length)
```

> 擦除闪存区域。

`返回值`

- 0  成功
- otherwise 失败

`参数`

- start_addr: 开始擦除闪存的地址。

- length: 要擦出的长度



#### 结构体

```c
struct hosal_flash_dev
```

> 闪存分区设备

- `void *flash_dev`

​		闪存设备



```c
struct hosal_logic_partition_t
```

>  闪分区管理结构

- `const char *partition_description`

  分区描述

- `uint32_t partition_start_addr`

  分区起始地址

- `uint32_t partition_length`

  分区长度

- `uint32_t partition_options`

  选项



#### 宏

```c
HOSAL_FLASH_FLAG_ADDR_0
```

​	打开分区表中地址 0 的闪存分区

```c
HOSAL_FLASH_FLAG_ADDR_1
```

​	打开分区表中的第一个闪存分区地址。

```c
HOSAL_FLASH_FLAG_BUSADD
```

打开分区表并使用闪存的物理总线地址。（如果没有设置，则默认使用分区表中设置的偏移地址。



#### 类型定义

```c
typedef struct hosal_flash_dev hosal_flash_dev_t
```

​	闪存分区设备