# UART API指南

## 概述

通用异步收发传输器（Universal Asynchronous  Receiver/Transmitter，通常称为UART）是一种异步收发传输器，提供了与外部设备进行全双工数据交换的灵活方式。  BL602共有2组UART口（UART0和UART1），通过配合DMA使用，可以实现高效的数据通信。



>  需要注意的是gpio的pin脚作为uart功能使用时，选取的gpio pin脚对8取余不能相等，如gpio0和gpio8不能同时做为uart的引脚。

### API参考

#### 参考头文件

- components/platform/hosal/include/hosal_uart.h

#### 函数

```c
int hosal_uart_abr_get(hosal_uart_dev_t *uart, uint8_t mode)
```

> 自动获取UART接囗的波特率。

`返回值`

- 0 : 成功

- EIO： 如果有任何步骤错误返回值为EIO

`参数`

- uart: UART块设备

- mode: 自动波特率检测模式 (代码字 0x55 或开始位)



```c
int hosal_uart_init(hosal_uart_dev_t *uart)
```

初始化UART

`返回值`

- 0 : 成功
- EIO： 如果有任何步骤错误返回值为EIO

`参数`

- uart: 将被初始化的uart块设备



```c
int hosal_uart_send(hosal_uart_dev_t *uart, const void *txbuf, uint32_t size)
```

> 串口轮询的方式发送数据

`返回值`

- 0 : 成功

- EIO： 如果有任何步骤错误返回值为EIO

`参数`

- uart: UART块设备

- txbuf: 将要发送数据缓冲区的指针

- size: 将要发送数据的长度，一般就是缓冲区的大小



```c
int hosal_uart_receive(hosal_uart_dev_t *uart, void *data, uint32_t expect_size)
```

> 串口轮询的方式接受数据

`返回值`

- 0 : 成功

- EIO： 如果有任何步骤错误返回值为EIO

`参数`

- uart: UART块设备
- rxbuf: 将要存入那个缓冲区的指针
- expect_size: 期望要接收多少字节数据



```c
int hosal_uart_ioctl(hosal_uart_dev_t *uart, int ctl, void *p_arg)
```

> 串口IO控制函数

`返回值`

- 0 : 成功

- EIO： 如果有任何步骤错误返回值为EIO

`参数`

- uart: UART块设备

- ctl:  控制命令
- p_arg: 控制命令所需的参数

| 控制命令字（ctl）          | 说明                                | 备注                                   |
| -------------------------- | ----------------------------------- | -------------------------------------- |
| HOSAL_UART_BAUD_SET        | 波特率设置                          | p_arg 为波特率                         |
| HOSAL_UART_BAUD_GET        | 波特率获取                          | p_arg 是获取波特率存放位置的指针       |
| HOSAL_UART_DATA_WIDTH_SET  | 设置数据宽度                        | p_arg 为 hosal_uart_data_width_t       |
| HOSAL_UART_DATA_WIDTH_GET  | 获取数据宽度                        | p_arg为hosal_uart_data_width_t的指针   |
| HOSAL_UART_STOP_BITS_SET   | 设置停止位                          | p_arg为hosal_uart_stop_bits_t          |
| HOSAL_UART_STOP_BITS_GET   | 获取停止位                          | p_arg是hosal_uart_stop_bits_t的指针    |
| HOSAL_UART_PARITY_SET      | 设置奇偶校验                        | p_arg为hosal_uart_parity_t             |
| HOSAL_UART_PARITY_GET      | 获取奇偶校验，                      | p_arg是hosal_uart_parity_t的指针       |
| HOSAL_UART_MODE_SET        | UART模式设置                        | p_arg为hosal_uart_mode_t               |
| HOSAL_UART_MODE_GET        | UART模式获取                        | p_arg是hosal_uart_mode_t的指针         |
| HOSAL_UART_FLOWMODE_SET    | UART流模式设置                      | p_arg为hosal_uart_flow_control_t       |
| HOSAL_UART_FLOWSTAT_GET    | UART流状态获取                      | p_arg是hosal_uart_flow_control_t的指针 |
| HOSAL_UART_FREE_TXFIFO_GET | 获取 uart 空闲 tx fifo 大小（字节） |                                        |
| HOSAL_UART_FREE_RXFIFO_GET | 获取 uart 空闲 rx fifo 大小（字节） |                                        |
| HOSAL_UART_FLUSH           | 等待发送完成                        |                                        |
| HOSAL_UART_TX_TRIGGER_ON   | UART TX 中断打开                    |                                        |
| HOSAL_UART_TX_TRIGGER_OFF  | UART TX 中断关闭                    |                                        |
| HOSAL_UART_DMA_CONFIG      | UART的DMA配置                       | p_arg 是 hosal_uart_dma_cfg_t 的指针   |
| HOSAL_UART_DMA_TX_START    | 开启UART DMA 发送                   | p_arg 是 hosal_uart_dma_cfg_t 的指针   |
| HOSAL_UART_DMA_RX_START ： | 开启UART DMA RX 接收                | p_arg 是 hosal_uart_dma_cfg_t 的指针   |



```c
int hosal_uart_callback_set(hosal_uart_dev_t *uart, int callback_type, hosal_uart_callback_t pfn_callback, void *arg)
```

`返回值`

- 0 : 成功

- EIO： 如果有任何步骤错误返回值为EIO

`参数`

- uart: UART块设备

- callback_type: 回调类型
- pfn_callback: 具体的回调函数
- arg: 回调函数所需要的参数

| callback_type/回调类型     |                                 |
| -------------------------- | ------------------------------- |
| HOSAL_UART_TX_CALLBACK     | 发送完成中断回调函数            |
| HOSAL_UART_RX_CALLBACK     | 接受完成中断回调函数            |
| HOSAL_UART_TX_DMA_CALLBACK | 串口DMA发送发送完成中断回调函数 |
| HOSAL_UART_RX_DMA_CALLBACK | 串口DMA接受完成中断回调函数     |



```c
int hosal_uart_finalize(hosal_uart_dev_t *uart)
```

`返回值`

- 0 : 成功

- EIO： 如果有任何步骤错误返回值为EIO

`参数`

- uart: UART块设备



#### 结构体

```c
struct hosal_uart_dma_cfg_t
```

> 串口DMA配置

共有成员

​	`uint8_t *dma_buf`

​	串口DMA所需的缓冲区（TX模式：发送缓冲区      RX模式：接受缓冲区）

- `uint32_t dma_buf_size`

​	缓冲区大小



```c
struct hosal_uart_config_t
```

> 串口配置

共有成员

- `uint8_t uart_id`

​		串口ID号

- `uint8_t tx_pin`

​		发送引脚

- `uint8_t rx_pin`

​		接收引脚

- `uint8_t rts_pin`

​		发送请求引脚（Request to Send）

- `uint8_t cts_pin`

​		接收方响应引脚（Clear to Send）,由接收方控制，当接收方准备好接数据时候，将cts置低电平，表示可以发送数据，若接收方没有准备好，就为高电平。

- `uint32_t baud_rate`

​		串口波特率

- `hosal_uart_data_width_t data_width`

 		串口数据宽度

- `hosal_uart_parity_t parity`

​		奇偶校验位

- `hosal_uart_stop_bits_t stop_bits`

​		停止位

- `hosal_uart_flow_control_t flow_control`

​		流控

- `hosal_uart_mode_t mode`

​		串口模式：中断或轮询





```c
struct hosal_uart_dev_t
```

> 串口设备块配置

- `uint8_t port`

​		UART端口 （bl602中分贝为UART0和UART1）

- `hosal_uart_config_t config`

​		UART 配置 (上一个结构体的内容)

- `hosal_uart_callback_t tx_cb`

​		UART 发送完成中断回调函数

- `void *p_txarg`

​		UART 发送完成回调函数的参数

- `hosal_uart_callback_t rx_cb`

​		UART 接收完成中断回调函数

- `void *p_rxarg`

​		UART rx 接收完成中断回调函数函数

- `hosal_uart_callback_t txdma_cb`

  UART DMA方式发送完成中断回调函数 

- `void *p_txdma_arg`

​		DMA方式发送完成中断回调函数所需参数

- `hosal_uart_callback_t rxdma_cb`

​		UART DMA方式接收完成中断回调函数

- `void *p_rxdma_arg`

​		UART DMA方式接收完成中断回调函数

- `hosal_dma_chan_t dma_tx_chan`

​		UART DMA发送通道

- `hosal_uart_callback_t rx_cb`

​		UART DMA接收通道

- `void *priv`

​		UART 用户自定义数据		





#### 宏

```c
HOSAL_UART_AUTOBAUD_0X55
```

使用代码字 0x55 的 UART 自动波特率检测

```c
HOSAL_UART_AUTOBAUD_STARTBIT
```

使用起始位进行 UART 自动波特率检测

```c
HOSAL_UART_TX_CALLBACK
```

UART tx 完成中断回调

```c
HOSAL_UART_RX_CALLBACK
```

UART rx 完成中断回调

```c
HOSAL_UART_TX_DMA_CALLBACK
```

UART tx DMA 发送完成中断回调

```c
HOSAL_UART_RX_DMA_CALLBACK
```

UART rx DMA 接收完成中断回调

```c
HOSAL_UART_BAUD_SET
```

波特率设置

```c
HOSAL_UART_BAUD_GET
```

波特率获取.

```c
HOSAL_UART_DATA_WIDTH_SET
```

数据宽度设置

```c
HOSAL_UART_DATA_WIDTH_GET
```

数据宽度获取

```c
HOSAL_UART_STOP_BITS_SET
```

停止位设置

```c
HOSAL_UART_STOP_BITS_GET
```

停止位获取

```c
HOSAL_UART_FLOWMODE_SET
```

流模式设置

```c
HOSAL_UART_FLOWSTAT_GET
```

流状态获取

```c
HOSAL_UART_PARITY_SET
```

奇偶校验设置

```c
HOSAL_UART_PARITY_GET
```

奇偶校验位获取

```c
HOSAL_UART_MODE_SET
```

模式设置

```c
HOSAL_UART_MODE_GET
```

获取模式

```c
HOSAL_UART_FREE_TXFIFO_GET
```

发送fifo剩余空间获取

```c
HOSAL_UART_FREE_RXFIFO_GET
```

接收fifo剩余空间获取

```c
HOSAL_UART_FLUSH
```

等待发送完成

```c
HOSAL_UART_TX_TRIGGER_ON
```

开中断

```c
HOSAL_UART_TX_TRIGGER_OFF
```

关中断

```c
HOSAL_UART_DMA_TX_START
```

启动DMA发送

```c
HOSAL_UART_DMA_RX_START
```

启动DMA接受

```c
HOSAL_UART_CFG_DECL(cfg, id, tx, rx, baud)
```

设置 UART 默认配置

`Parameters`

- cfg: 配置

- id: id 号

- tx: 发送引脚

- rx: 接收引脚

- baud: 波特率



#### 类型定义

```c
typedef int (*hosal_uart_callback_t)(void *p_arg)
```

串口回调函数编写

`返回值`

- 0 : 成功

- EIO： 如果有任何步骤错误返回值为EIO

`参数`

- p_arg: 设置设置回调函数时指定的自定义参数





#### 枚举

```c
enum hosal_uart_data_width_t
```

> 串口数据位宽

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

> 串口停止位

Values:

> ```c
> HOSAL_STOP_BITS_1 = 1
> 
> HOSAL_STOP_BITS_2 = 2
> ```



```c
enum hosal_uart_flow_control_t
```

> 串口流控位

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

> 奇偶校验位

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

> 串口模式选择

Values:

> ​	`HOSAL_UART_MODE_POLL`
>
> - 轮询 (默认模式)
>
>   `HOSAL_UART_MODE_INT_TX`
>
> - 发送中断模式.
>
>   `HOSAL_UART_MODE_INT_RX`
>
> - 接受中断模式.
>
>   `HOSAL_UART_MODE_INT`
>
> - 双中断都开启