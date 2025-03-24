# ADC API指南

## 概述

模数转换器（analog-to-digital  converter，通常称为ADC）是一种模拟与数字转换器，支持12路外部模拟输入和若干内部模拟信号选择。  ADC支持以下四种模式：单次单通道转换、连续单通道转换、单次多通道转换和连续多通道转换模式。  转换结果为12/14/16bits左对齐模式。ADC拥有深度为32的FIFO，支持多种中断和DMA操作。  ADC除了用于普通模拟信号测量外，还可以用于测量供电电压， 此外ADC还可以通过测量内/外部二极管电压用于温度检测。

### API参考

#### 头文件

- components/platform/hosal/include/hosal_adc.h

#### 函数

```c
int hosal_adc_init(hosal_adc_dev_t *adc)
```

> 初始化ADC接口准备用于采样的 ADC 硬件接口

`返回值`

- 0 成功

- EIO（如果任何步骤发生错误）

`参数`

- adc:  adc设备块



```c
int hosal_adc_add_channel(hosal_adc_dev_t *adc, uint32_t channel)
```

> 添加向ADC设备添加ADC通道

`返回值`

- 0 成功

- EIO（如果任何步骤发生错误）

`参数`

- adc:  adc设备块

- channel: adc采集的通道



```c
int hosal_adc_remove_channel(hosal_adc_dev_t *adc, uint32_t channel)
```

> 移除ADC通道

`返回值`

- 0 成功

- EIO（如果任何步骤发生错误）

`参数`

- adc:  adc设备块

- channel: adc要移除的通道



```c
hosal_adc_dev_t *hosal_adc_device_get(void)
```

> 获取ADC句柄

`参数`

- other 获取ADC设备成功
- NULL 失败



```c
int hosal_adc_value_get(hosal_adc_dev_t *adc, uint32_t channel, uint32_t timeout)
```

>  取单个ADC采样结果

`返回值`

- other 获取ADC数据成功

- -1 失败

`参数`

- adc: ADC设备句柄

- channel:  ADC通道

- timeout: 超时时间



```c
int hosal_adc_tsen_value_get(hosal_adc_dev_t *adc)
```

> 采集WB2设备温度

`返回值`

- other 获取ADC数据成功

- -1 失败

`参数`

- adc: ADC设备句柄



```c
int hosal_adc_sample_cb_reg(hosal_adc_dev_t *adc, hosal_adc_cb_t cb)
```

> 注册ADC回调函数

`返回值`

- 0 成功

- EIO失败

`参数`

- adc: ADC设备句柄

- cb: 非零指针是示例回调处理程序 cb 中用于发送取消注册作的 NULL 指针 adc 必须与传递给驱动程序的 adc 指针相同hosal_adc_sample_cb_reg如果 ADC 数据在硬件或内存 （DMA） 中准备就绪，则必须通过调用 cb 通知上层



```c
int hosal_adc_start(hosal_adc_dev_t *adc, void *data, uint32_t size)
```

>  ADC 采样开始。

`返回值`

- 0 成功

- EIO失败

`参数`

- adc: ADC设备句柄

- data: ADC数据缓冲区 

- size: ADC数据缓冲区大小



```c
int hosal_adc_stop(hosal_adc_dev_t *adc)
```

> 停止adc采样

`返回值`

- 0 成功

- EIO 失败

`参数`

- adc: ADC设备句柄



```c
int hosal_adc_finalize(hosal_adc_dev_t *adc)
```

> 取消初始化 ADC 接口，关闭 ADC 硬件接口。

`返回值`

- 0 成功

- EIO 失败

`参数`

- adc: ADC设备句柄





### 结构体

```c
struct hosal_adc_data_t
```

> adc 数据类型

- `uint32_t size`

  采样数据的大小

- `void *data`

  采样数据



```c
struct hosal_adc_config_t
```

>  ADC 配置 参数

- `uint32_t sampling_freq`

​	采样频率（以 Hz 为单位）

- `uint32_t pin`

​	ADC 引脚

- `hosal_adc_sample_mode_t mode`

​	ADC 采样模式

- `uint8_t sample_resolution`

​	ADC 采样分辨率



```c
struct hosal_adc_dev_t
```

> ADC设备句柄结构体

公共成员

`uint8_t port`

ADC 端口

`hosal_adc_config_t config`

ADC 配置

`hosal_dma_chan_t dma_chan`

ADC DMA 通道

`hosal_adc_irq_t cb`

ADC 回调

`void *p_arg`

回调参数

`void *priv`

用户参数



#### 宏

```c
HOSAL_WAIT_FOREVER
```

等待采集超时.

```c
TIMER_RELOAD_ONCE
```

计时器重新加载一次，需要手动重新加载



#### 类型定义

```c
typedef enum __ADC_INT_EVENTS__ hosal_adc_event_t
```

ADC 中断事件

```c
typedef void (*hosal_adc_irq_t)(void *parg)
```

ADC 中断函数.

- `参数`

  parg: 设置指定的自定义参数

```c
typedef void (*hosal_adc_cb_t)(hosal_adc_event_t event, void *data, uint32_t size)
```

ADC 中断回调

- `Parameters`

  parg: 设置回调函数时指定的自定义参数



#### 枚举

```c
enum __ADC_INT_EVENTS__
```

ADC 中断事件.

Values:

- `HOSAL_ADC_INT_OV`

  溢出错误

- `HOSAL_ADC_INT_EOS`

  采样完成.

- `HOSAL_ADC_INT_DMA_TRH`

  DMA传输半完成

- `HOSAL_ADC_INT_DMA_TRC`

  DMA传输完成

- `HOSAL_ADC_INT_DMA_TRE`

  DMA中断传输故障



```c
enum hosal_adc_sample_mode_t
```

ADC采样模式

Values:

- `HOSAL_ADC_ONE_SHOT`

  单次采样模式

- `HOSAL_ADC_CONTINUE`

  连续采样模式