## DAC

### 概述

数模转换器（digital-to-analog converter，通常称为DAC）是一种数字与模拟转换器，，FIFO深度为1，支持2路DAC调制输出。 可用于音频播放，常规的模拟信号调制。

### API参考

#### 头文件

components/platform/hosal/include/hosal_dac.h

#### 函数

```c
int hosal_dac_init(hosal_dac_dev_t *dac)
```

> 初始化

`返回值`

- 0 成功

- EIO 失败

`参数`

- dac: DAC设备句柄



```c
int hosal_dac_finalize(hosal_dac_dev_t *dac)
```

> 销毁DAC实例并释放相关资源

`返回值`

- 0 成功

- EIO 失败

`参数`

- dac: DAC设备句柄



```c
int hosal_dac_start(hosal_dac_dev_t *dac)
```

> 启动DAC

`返回值`

- 0 成功

- EIO 失败

`参数`

- dac: DAC设备句柄



```c
int hosal_dac_stop(hosal_dac_dev_t *dac)
```

> 停止DAC

`返回值`

- 0 成功

- EIO 失败

`参数`

- dac: DAC设备句柄



```c
int hosal_dac_set_value(hosal_dac_dev_t *dac, uint32_t data)
```

> 设置DAC输出电压，单位为UV。

`返回值`

- 0 成功

- EIO 失败

`参数`

- dac: DAC设备句柄
- data: 输出电压的大小。单位为uV  1V=1000000



```c
int hosal_dac_get_value(hosal_dac_dev_t *dac)
```

> 查询最新的DAC端口输出电压值

`返回值`

- 返回当前电压（以uV 为单位）

`参数`

- dac: DAC设备句柄



```c
int hosal_dac_dma_cb_reg(hosal_dac_dev_t *dac, hosal_dac_cb_t callback, void *arg)
```

> 注册DMA模式下的回调函数。

`返回值`

- 0 成功

- EIO 失败

`参数`

- dac: DAC设备句柄

- callback: 回调函数

- arg: 回调函数所需的参数



```c
int hosal_dac_dma_start(hosal_dac_dev_t *dac, uint32_t *data, uint32_t size)
```

> 启动DMA方式输出。

`返回值`

- 0 成功

- EIO 失败

`参数`

- dac: DAC设备句柄

- data: 需要传输的数据缓冲区

- size: buff大小



```c
int hosal_dac_dma_stop(hosal_dac_dev_t *dac)
```

> 停止DMA传输

`返回值`

- 0 成功

- EIO 失败

`参数`

- dac: DAC设备句柄



#### 结构体

```c
struct hosal_dac_config_t
```

> hosal_dac_config_t为DAC配置



- `uint8_t dma_enable`

​		1: 使用DMA  0: 不使用DMA

- `uint32_t pin`

​		dac引脚

- `uint32_t freq`

​		dac频率



```c
struct hosal_dac_dev_t
```

> DAC设备实例



- `uint8_t port`

​		dac id号

- `hosal_dac_config_t config`

​		dac 配置结构体

- `hosal_dac_cb_t cb`

​		dac 回调函数

- `hosal_dma_chan_t dma_chan`

​		dac DMA 通道

- `void *arg`

​		回调函数参数

- `void *priv`

​		自定义参数



#### 类型定义

```c
typedef void (*hosal_dac_cb_t)(void *arg)
```

>  回调函数

- `参数`

​		arg: 设置在设置回调函数时指定的自定义参数