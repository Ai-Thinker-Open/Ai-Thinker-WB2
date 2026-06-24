# SPI API指南

------

## SPI API

### 概述

串行外设接口（Serial Peripheral Interface Bus,  SPI）是一种用于短程通信的同步串行通信接口规范，装置之间使用全双工模式通信，是一个主机和一个或多个从机的主从模式。需要至  少4根线，事实上3根也可以（单向传输时）,包括SDI（数据输入）、SDO（数据输出）、SCLK（时钟）、CS（片选）

### API参考

#### 头文件

- components/platform/hosal/include/hosal_spi.h

#### 函数

```c
int hosal_spi_init(hosal_spi_dev_t *spi)
```

> 初始化指定 SPI 设备的 SPI 接口

`返回值`

- 0 :  成功

- other : 失败

`参数`

- spi: SPI设备句柄



```c
int hosal_spi_send(hosal_spi_dev_t *spi, const uint8_t *data, uint16_t size, uint32_t timeout)
```

> SPI 发送数据

`返回值`

- 0 :  成功

- other : 失败

`参数`

- spi: SPI设备句柄

- data: spi发送的数据

- size:  发送数据的大小

- timeout: 以毫秒为单位的超时，如果你想无限期等待，请将此值设置为 `HAL_WAIT_FOREVER`



```c
int hosal_spi_recv(hosal_spi_dev_t *spi, uint8_t *data, uint16_t size, uint32_t timeout)
```

> SPI接受数据

`返回值`

- 0 :  成功

- other : 失败

`参数`

- spi: SPI设备句柄

- data: spi接收数据

- size:  接收数据的大小

- timeout: 以毫秒为单位的超时，如果你想无限期等待，请将此值设置为 `HAL_WAIT_FOREVER`



```c
int hosal_spi_send_recv(hosal_spi_dev_t *spi, uint8_t *tx_data, uint8_t *rx_data, uint16_t size, uint32_t timeout)
```

> SPI交换数据（同时发送和接收）

`返回值`

- 0 :  成功

- other : 失败

`参数`

- spi: SPI设备句柄

- tx_data: 发送的数据

- rx_data: 接收的数据

- size: 发送和接收的数据大小是相等的

- timeout: 以毫秒为单位的超时，如果你想无限期等待，请将此值设置为 `HAL_WAIT_FOREVER`





```C
int hosal_spi_irq_callback_set(hosal_spi_dev_t *spi, hosal_spi_irq_t pfn, void *p_arg)
```

> spi中断回调函数设置

`返回值`

- 0 :  成功

- other : 失败

`参数`

- spi: SPI设备句柄
- pfn: 具体的回调函数实现
- p_arg: 回调函数的参数



```c

int hosal_spi_set_cs(uint8_t pin, uint8_t value)
```

>  SPI 软件仅对主设备设置 CS 引脚高/低

`返回值`

- 0 :  成功

- other : 失败

`参数`

- pin: 片选引脚

- value: 0 或 1



```c
int hosal_spi_finalize(hosal_spi_dev_t *spi)
```

> 销毁SPI 释放资源

`返回值`

- 0 :  成功

- other : 失败

`参数`

- spi: SPI设备句柄



#### 结构体

```c
struct hosal_spi_config_t
```

> SPI的配置文件

- `uint8_t mode`

​		spi通讯模式

- `uint8_t dma_enable`

​		是否启动DMA

- `uint8_t polar_phase`

​		SPI 极性和相位

- `uint32_t freq`

​		通信频率

- `uint8_t pin_clk`

​		SPI CLK 引脚

- `uint8_t pin_mosi`

​		SPI MOSI 引脚

- `uint8_t pin_miso`

​		SPI MISO 引脚





```c
struct hosal_spi_dev_t
```

> 设备句柄结构体

- `uint8_t port`

​		SPI 端口

- `hosal_spi_config_t config`

​		SPI 配置

- `hosal_spi_irq_t cb`

​		SPI 中断回调

- `void *p_arg`

​		SPI 中断回调函数所需的参数

- `void *priv`

​		用户自定义数据





#### 宏

```c
HOSAL_SPI_MODE_MASTER
```

​	SPI通讯主机模式

```c
HOSAL_SPI_MODE_SLAVE
```

​	SPI通讯从机模式

```c
HOSAL_WAIT_FOREVER
```

​	定义无限等待超时宏。



#### 类型定义

```c
typedef void (*hosal_spi_irq_t)(void *parg)
```

​	SPI回调函数的定义