## DAC

### 概述

数模转换器（digital-to-analog converter，通常称为DAC）是一种数字与模拟转换器，，FIFO深度为1，支持2路DAC调制输出。 可用于音频播放，常规的模拟信号调制。

### API参考

#### Header File

components/platform/hosal/include/hosal_dac.h

#### Functions

```c
int hosal_dac_init(hosal_dac_dev_t *dac)
```

Initialises an dac interface.

> `return`
>
> - 0 on success
> - EIO if an error occurred with any step
>
> `Parameters`
>
> - dac: the interface which should be initialised



```c
int hosal_dac_finalize(hosal_dac_dev_t *dac)
```

De-initialises an dac interface, Turns off an dac hardware interface.

> `return`
>
> - 0 on success
> - EIO if an error occurred with any step
>
> `Parameters`
>
> - dac: the interface which should be de-initialised



```c
int hosal_dac_start(hosal_dac_dev_t *dac)
```

Start output dac （no DMA mode）

> `return`
>
> - 0 on success
> - EIO if an error occurred with any step
>
> `Parameters`
>
> - dac: the interface which should be started



```c
int hosal_dac_stop(hosal_dac_dev_t *dac)
```

Stop output dac.

> `return`
>
> - 0 on success
> - EIO if an error occurred with any step
>
> `Parameters`
>
> - dac: the interface which should be stopped



```c
int hosal_dac_set_value(hosal_dac_dev_t *dac, uint32_t data)
```

Output a value to an dac interface.

> `return`
>
> - 0 on success
> - EIO if an error occurred with any step
>
> `Parameters`
>
> - dac: the interface to set value
> - data: the value to output, output unit: μV



```c
int hosal_dac_get_value(hosal_dac_dev_t *dac)
```

Returns the last data output value of the selected dac channel.

> `return`
>
> - dac output value, output unit: μV
>
> `Parameters`
>
> - dac: the interface to get value



```c
int hosal_dac_dma_cb_reg(hosal_dac_dev_t *dac, hosal_dac_cb_t callback, void *arg)
```

DAC cb register.

> `return`
>
> - 0 on success
> - EIO if an error occurred with any step
>
> `Parameters`
>
> - dac: the DAC interface
> - callback: callback handler
> - arg: callback arg



```c
int hosal_dac_dma_start(hosal_dac_dev_t *dac, uint32_t *data, uint32_t size)
```

DAC use DMA mode.

> `return`
>
> - 0 on success
> - EIO if an error occurred with any step
>
> `Parameters`
>
> - adc: the DAC interface
> - data: dac data buffer
> - size: data buffer size



```c
int hosal_dac_dma_stop(hosal_dac_dev_t *dac)
```

Stop output dac.

> `return`
>
> - 0 on success
> - EIO if an error occurred with any step
>
> `Parameters`
>
> - dac: the interface which should be stopped



#### Structures

```c
struct hosal_dac_config_t
```

This struct define dac config args.

> Public Members
>
> - `uint8_t dma_enable`
>
>   1: use dma, 0: no dma
>
> - `uint32_t pin`
>
>   dac pin
>
> - `uint32_t freq`
>
>   dac freq



```c
struct hosal_dac_dev_t
```

This struct define dac device type.

> Public Members
>
> - `uint8_t port`
>
>   dac id
>
> - `hosal_dac_config_t config`
>
>   dac config
>
> - `hosal_dac_cb_t cb`
>
>   dma callback
>
> - `hosal_dma_chan_t dma_chan`
>
>   dac dma channel
>
> - `void *arg`
>
>   arg data
>
> - `void *priv`
>
>   priv data



#### Type Definitions

```c
typedef void (*hosal_dac_cb_t)(void *arg)
```

hosal dac callback

> - `Parameters`
>
>   arg: Set the custom parameters specified when the callback function is set