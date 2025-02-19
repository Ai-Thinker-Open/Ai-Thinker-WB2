# SPI API指南

------

## SPI API

### 概述

串行外设接口（Serial Peripheral Interface Bus,  SPI）是一种用于短程通信的同步串行通信接口规范，装置之间使用全双工模式通信，是一个主机和一个或多个从机的主从模式。需要至  少4根线，事实上3根也可以（单向传输时）,包括SDI（数据输入）、SDO（数据输出）、SCLK（时钟）、CS（片选）

### API参考

#### Header File

- components/platform/hosal/include/hosal_spi.h

#### Functions

```c
int hosal_spi_init(hosal_spi_dev_t *spi)
```

Initialises the SPI interface for a given SPI device.

> `return`
>
> - 0 : on success
> - other : error
>
> `Parameters`
>
> - spi: the spi device



```c
int hosal_spi_send(hosal_spi_dev_t *spi, const uint8_t *data, uint16_t size, uint32_t timeout)
```

Spi send.

> `return`
>
> - 0 : on success
> - other : error
>
> `Parameters`
>
> - spi: the spi device
> - data: spi send data
> - size: spi send data size
> - timeout: timeout in milisecond, set this value to HAL_WAIT_FOREVER if you want to wait forever

```c
int hosal_spi_recv(hosal_spi_dev_t *spi, uint8_t *data, uint16_t size, uint32_t timeout)
```

Spi recv.

> `return`
>
> - 0 : success
> - other : error
>
> `Parameters`
>
> - spi: the spi device
> - data: spi recv data
> - size: spi recv data size
> - timeout: timeout in milisecond, set this value to HAL_WAIT_FOREVER if you want to wait forever

```c
int hosal_spi_send_recv(hosal_spi_dev_t *spi, uint8_t *tx_data, uint8_t *rx_data, uint16_t size, uint32_t timeout)
```

spi send data and recv

> `return`
>
> - 0 : success
> - other : error
>
> `Parameters`
>
> - spi: the spi device
> - tx_data: spi send data
> - rx_data: spi recv data
> - size: spi data to be sent and recived
> - timeout: timeout in milisecond, set this value to HAL_WAIT_FOREVER if you want to wait forever



```c
int hosal_spi_irq_callback_set(hosal_spi_dev_t *spi, hosal_spi_irq_t pfn, void *p_arg)
int hosal_spi_set_cs(uint8_t pin, uint8_t value)
```

spi software set cs pin high/low only for master device

> `return`
>
> - 0 : success
> - other : error
>
> `Parameters`
>
> - pin: cs pin
> - value: 0 or 1



```c
int hosal_spi_finalize(hosal_spi_dev_t *spi)
```

De-initialises a SPI interface.

> `return`
>
> - 0 : success
> - other : error
>
> `Parameters`
>
> - spi: the SPI device to be de-initialised



#### Structures

```c
struct hosal_spi_config_t
```

Define spi config args.

> Public Members
>
> - `uint8_t mode`
>
>   spi communication mode
>
> - `uint8_t dma_enable`
>
>   enable dma tansmission or not
>
> - `uint8_t polar_phase`
>
>   spi polar and phase
>
> - `uint32_t freq`
>
>   communication frequency Hz
>
> - `uint8_t pin_clk`
>
>   spi clk pin
>
> - `uint8_t pin_mosi`
>
>   spi mosi pin
>
> - `uint8_t pin_miso`
>
>   spi miso pin

```c
struct hosal_spi_dev_t
```

Define spi dev handle.

> Public Members
>
> - `uint8_t port`
>
>   spi port
>
> - `hosal_spi_config_t config`
>
>   spi config
>
> - `hosal_spi_irq_t cb`
>
>   spi interrupt callback
>
> - `void *p_arg`
>
>   arg pass to callback
>
> - `void *priv`
>
>   priv data

#### Macros

```c
HOSAL_SPI_MODE_MASTER
```

spi communication is master mode

```c
HOSAL_SPI_MODE_SLAVE
```

spi communication is slave mode

```c
HOSAL_WAIT_FOREVER
```

Define the wait forever timeout macro.



#### Type Definitions

```c
typedef void (*hosal_spi_irq_t)(void *parg)
```

spi irq callback function