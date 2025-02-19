# UART API指南

## 概述

通用异步收发传输器（Universal Asynchronous  Receiver/Transmitter，通常称为UART）是一种异步收发传输器，提供了与外部设备进行全双工数据交换的灵活方式。  BL602共有2组UART口（UART0和UART1），通过配合DMA使用，可以实现高效的数据通信。



>  需要注意的是gpio的pin脚作为uart功能使用时，选取的gpio pin脚对8取余不能相等，如gpio0和gpio8不能同时做为uart的引脚。

### API参考

#### Header File

- components/platform/hosal/include/hosal_uart.h

#### Functions

```c
int hosal_uart_abr_get(hosal_uart_dev_t *uart, uint8_t mode)
```

Get auto baudrate on a UART interface.

> > return
>
> - 0 : on success
> - EIO if an error occurred with any step
>
> > Parameters
>
> - uart: the UART interface
> - mode: auto baudrate detection mode(codeword 0x55 or start bit)



```c
int hosal_uart_init(hosal_uart_dev_t *uart)
```

Initialises a UART interface.

> > return
>
> - 0 : on success
> - EIO if an error occurred with any step
>
> > Parameters
>
> - uart: the interface which should be initialised



```c
int hosal_uart_send(hosal_uart_dev_t *uart, const void *txbuf, uint32_t size)
```

Poll transmit data on a UART interface.

> > return
>
> - 0 : success
> - EIO if an error occurred with any step
>
> > Parameters
>
> - uart: the UART interface
> - txbuf: pointer to the start of data
> - size: number of bytes to transmit



```c
int hosal_uart_receive(hosal_uart_dev_t *uart, void *data, uint32_t expect_size)
```

Poll receive data on a UART interface.

> > return
>
> - 0 number of bytes to receive
> - EIO if an error occurred with any step
>
> > Parameters
>
> - uart: the UART interface
> - rxbuf: pointer to the buffer which will store incoming data
> - expect_size: expect number of bytes to receive



```c
int hosal_uart_ioctl(hosal_uart_dev_t *uart, int ctl, void *p_arg)
```

hal uart ioctl

> > return
>
> - 0 on success
> - EIO if an error occurred with any step
>
> > Parameters
>
> - uart: the UART interface
> - ctl: Control request
>   - HOSAL_UART_BAUD_SET : baud set, p_arg is baud 
>   - HOSAL_UART_BAUD_GET : baud get, p_arg is baud’s pointer 
>   - HOSAL_UART_DATA_WIDTH_SET : set data width，p_arg is hosal_uart_data_width_t 
>   - HOSAL_UART_DATA_WIDTH_GET : get data width，p_arg is hosal_uart_data_width_t’s pointer 
>   - HOSAL_UART_STOP_BITS_SET : set stop bits, p_arg is hosal_uart_stop_bits_t 
>   - HOSAL_UART_STOP_BITS_GET : get stop bits, p_arg is hosal_uart_stop_bits_t’s pointer 
>   - HOSAL_UART_PARITY_SET : set parity, p_arg is hosal_uart_parity_t 
>   - HOSAL_UART_PARITY_GET : get parity, p_arg is hosal_uart_parity_t’s pointer 
>   - HOSAL_UART_MODE_SET : UART mode set, p_arg is hosal_uart_mode_t 
>   - HOSAL_UART_MODE_GET : UART mode get, p_arg is hosal_uart_mode_t’s pointer 
>   - HOSAL_UART_FLOWMODE_SET : UART flow mode set, p_arg is hosal_uart_flow_control_t 
>   - HOSAL_UART_FLOWSTAT_GET : UART flow state get, p_arg is hosal_uart_flow_control_t’s pointer 
>   - HOSAL_UART_FREE_TXFIFO_GET : get uart free tx fifo size (bytes) 
>   - HOSAL_UART_FREE_RXFIFO_GET : get uart free rx fifo size (bytes) 
>   - HOSAL_UART_FLUSH : Wait for the send to complete 
>   - HOSAL_UART_TX_TRIGGER_ON : UART TX trigger on 
>   - HOSAL_UART_TX_TRIGGER_OFF : UART TX trigger off 
>   - HOSAL_UART_DMA_CONFIG : p_arg is hosal_uart_dma_cfg_t’s pointer 
>   - HOSAL_UART_DMA_TX_START : UART DMA TX start trans p_arg is hosal_uart_dma_cfg_t’s pointer 
>   - HOSAL_UART_DMA_RX_START : UART DMA RX start trans p_arg is hosal_uart_dma_cfg_t’s pointer
> - p_arg: parameter

```c
int hosal_uart_callback_set(hosal_uart_dev_t *uart, int callback_type, hosal_uart_callback_t pfn_callback, void *arg)
```

hal uart callback set

> > return
>
> - 0 on success
> - EIO if an error occurred with any step
>
> > Parameters
>
> - uart: the UART interface
>
> - callback_type: callback type
>
>   > - HOSAL_UART_TX_CALLBACK
>   > - HOSAL_UART_RX_CALLBACK
>   > - HOSAL_UART_TX_DMA_CALLBACK
>   > - HOSAL_UART_RX_DMA_CALLBACK
>
> - pfn_callback: callback function
>
> - arg: callback function parameter



```c
int hosal_uart_finalize(hosal_uart_dev_t *uart)
```

Deinitialises a UART interface.

>  	`return`
>
> - 0 on success
>
> - EIO if an error occurred with any step
>
>   `Parameters`
>
> - uart: the interface which should be deinitialised



#### Structures

```c
struct hosal_uart_dma_cfg_t
```

UART DMA configuration.

> Public Members
>
> - `uint8_t *dma_buf`
>
>   UART DMA trans buffer When the transmission is TX, the address is the src  address When the transmission is RX, the address is the dest address.
>
> - `uint32_t dma_buf_size`
>
>   UART DMA trans buffer size.

```c
struct hosal_uart_config_t
```

UART configuration.

> Public Members
>
> - `uint8_t uart_id`
>
>   UART id.
>
> - `uint8_t tx_pin`
>
>   UART tx pin.
>
> - `uint8_t rx_pin`
>
>   UART rx pin.
>
> - `uint8_t cts_pin`
>
>   UART cts pin.
>
> - `uint8_t rts_pin`
>
>   UART rts pin.
>
> - `uint32_t baud_rate`
>
>   UART baud rate.
>
> - `hosal_uart_data_width_t data_width`
>
>   UART data width.
>
> - `hosal_uart_parity_t parity`
>
>   UART parity bit.
>
> - `hosal_uart_stop_bits_t stop_bits`
>
>   UART stop btis.
>
> - `hosal_uart_flow_control_t flow_control`
>
>   UART flow control.
>
> - `hosal_uart_mode_t mode`
>
>   UART int or pull mode.

```c
struct hosal_uart_dev_t
```

UART device type.

> Public Members
>
> - `uint8_t port`
>
>   UART port.
>
> - `hosal_uart_config_t config`
>
>   UART config.
>
> - `hosal_uart_callback_t tx_cb`
>
>   UART tx callback.
>
> - `void *p_txarg`
>
>   UART tx callback arg.
>
> - `hosal_uart_callback_t rx_cb`
>
>   UART rx callback.
>
> - `void *p_rxarg`
>
>   UART rx callback arg.
>
> - `void *p_txdma_arg`
>
>   UART tx dma callback.
>
> - `hosal_uart_callback_t rxdma_cb`
>
>   UART rx dma callback.
>
> - `void *p_rxdma_arg`
>
>   UART rx dma callback arg.
>
> - `hosal_dma_chan_t dma_tx_chan`
>
>   UART dma rx channel.
>
> - `hosal_uart_callback_t rx_cb`
>
>   UART rx callback.
>
> - `void *priv`
>
>   UART private data.

#### Macros

```c
HOSAL_UART_AUTOBAUD_0X55
```

UART auto baudrate detection using codeword 0x55.

```c
HOSAL_UART_AUTOBAUD_STARTBIT
```

UART auto baudrate detection using start bit.

```c
HOSAL_UART_TX_CALLBACK
```

UART tx idle interrupt callback.

```c
HOSAL_UART_RX_CALLBACK
```

UART rx complete callback.

```c
HOSAL_UART_TX_DMA_CALLBACK
```

UART tx DMA trans complete callback.

```c
HOSAL_UART_RX_DMA_CALLBACK
```

UART rx DMA trans complete callback.

```c
HOSAL_UART_BAUD_SET
```

UART baud set.

```c
HOSAL_UART_BAUD_GET
```

UART baud get.

```c
HOSAL_UART_DATA_WIDTH_SET
```

UART data width set.

```c
HOSAL_UART_DATA_WIDTH_GET
```

UART data width get.

```c
HOSAL_UART_STOP_BITS_SET
```

UART stop bits set.

```c
HOSAL_UART_STOP_BITS_GET
```

UART stop bits get.

```c
HOSAL_UART_FLOWMODE_SET
```

UART flow mode set.

```c
HOSAL_UART_FLOWSTAT_GET
```

UART flow state get.

```c
HOSAL_UART_PARITY_SET
```

UART flow mode set.

```c
HOSAL_UART_PARITY_GET
```

UART flow state get.

```c
HOSAL_UART_MODE_SET
```

UART mode set.

```c
HOSAL_UART_MODE_GET
```

UART mode get.

```c
HOSAL_UART_FREE_TXFIFO_GET
```

UART free tx fifo get.

```c
HOSAL_UART_FREE_RXFIFO_GET
```

UART free rx fifo get.

```c
HOSAL_UART_FLUSH
```

Wait for the send to complete.

```c
HOSAL_UART_TX_TRIGGER_ON
```

UART TX trigger on.

```c
HOSAL_UART_TX_TRIGGER_OFF
```

UART TX trigger off.

```c
HOSAL_UART_DMA_TX_START
```

UART DMA TX start trans.

```c
HOSAL_UART_DMA_RX_START
```

UART DMA RX start trans.

```c
HOSAL_UART_CFG_DECL(cfg, id, tx, rx, baud)
```

define a UART default config

> `Parameters`
>
> - cfg: config define
> - id: uart id
> - tx: uart tx pin
> - rx: uart rx pin
> - baud: uart baud

#### Type Definitions

```c
typedef int (*hosal_uart_callback_t)(void *p_arg)
```

hosal uart callback

> > `return`
>
> - 0 on success
>
> - EIO if an error occurred with any step
>
>   `Parameters`
>
> - p_arg: Set the custom parameters specified when the callback function is set

#### Enumerations

```c
enum hosal_uart_data_width_t
```

UART data width.

Values:

> ```c
> HOSAL_DATA_WIDTH_5BIT
> 
> HOSAL_DATA_WIDTH_6BIT
> 
> HOSAL_DATA_WIDTH_7BIT
> 
> HOSAL_DATA_WIDTH_8BIT
> 
> HOSAL_DATA_WIDTH_9BIT
>     
> ```

```c
enum hosal_uart_stop_bits_t
```

UART stop bits.

Values:

> ```c
> HOSAL_STOP_BITS_1 = 1
>     
> HOSAL_STOP_BITS_2 = 3
> ```

```c
enum hosal_uart_flow_control_t
```

UART flow control.

Values:

> ```c
> HOSAL_FLOW_CONTROL_DISABLED
>     
> HOSAL_FLOW_CONTROL_RTS
>     
> HOSAL_FLOW_CONTROL_CTS
>     
> HOSAL_FLOW_CONTROL_CTS_RTS
> 
> ```

```c
enum hosal_uart_parity_t
```

UART parity.

Values:

> ```c
> HOSAL_NO_PARITY
>     
> HOSAL_ODD_PARITY
>     
> HOSAL_EVEN_PARITY
> ```

```c
enum hosal_uart_mode_t
```

UART mode.

> Values:
>
> ​	`HOSAL_UART_MODE_POLL`
>
> - UART poll mode (default mode)
>
>   `HOSAL_UART_MODE_INT_TX`
>
> - UART TX int mode.
>
>   `HOSAL_UART_MODE_INT_RX`
>
> - UART RX int mode.
>
>   `HOSAL_UART_MODE_INT`
>
> UART TX and RX int mode.