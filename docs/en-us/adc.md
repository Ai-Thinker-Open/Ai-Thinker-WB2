# ADC API指南

## 概述

模数转换器（analog-to-digital  converter，通常称为ADC）是一种模拟与数字转换器，支持12路外部模拟输入和若干内部模拟信号选择。  ADC支持以下四种模式：单次单通道转换、连续单通道转换、单次多通道转换和连续多通道转换模式。  转换结果为12/14/16bits左对齐模式。ADC拥有深度为32的FIFO，支持多种中断和DMA操作。  ADC除了用于普通模拟信号测量外，还可以用于测量供电电压， 此外ADC还可以通过测量内/外部二极管电压用于温度检测。

### API参考

#### Header File

- components/platform/hosal/include/hosal_adc.h

#### Functions

```c
int hosal_adc_init(hosal_adc_dev_t *adc)
```

Initialises an ADC interface, Prepares an ADC hardware interface for sampling.

> `return`
>
> - 0 on success
> - EIO if an error occurred with any step
>
> `Parameters`
>
> - adc: the interface which should be initialised



```c
int hosal_adc_add_channel(hosal_adc_dev_t *adc, uint32_t channel)
```

Add a channel to an ADC interface.

> `return`
>
> - 0 on success
> - EIO if an error occurred with any step
>
> `Parameters`
>
> - adc: the interface which should be sampled
> - channel: adc channel



```c
int hosal_adc_remove_channel(hosal_adc_dev_t *adc, uint32_t channel)
```

Remove a channel to an ADC interface.

> `return`
>
> - 0 on success
> - EIO if an error occurred with any step
>
> `Parameters`
>
> - adc: the interface which should be sampled
> - channel: adc channel



```c
hosal_adc_dev_t *hosal_adc_device_get(void)
```

Takes adc device handle from an ADC interface.

> `return`
>
> - other get adc device success
> - NULL if an error occurred with any step



```c
int hosal_adc_value_get(hosal_adc_dev_t *adc, uint32_t channel, uint32_t timeout)
```

Takes a single sample from an ADC interface.

> `return`
>
> - other get adc data success
> - -1 if an error occurred with any step
>
> `Parameters`
>
> - adc: the interface which should be sampled
> - channel: adc channel
> - timeout: ms timeout



```c
int hosal_adc_tsen_value_get(hosal_adc_dev_t *adc)
```

Takes a tsen sample from an ADC interface.

> `return`
>
> - other get adc data success
> - -1 if an error occurred with any step
>
> `Parameters`
>
> - adc: the interface which should be sampled



```c
int hosal_adc_sample_cb_reg(hosal_adc_dev_t *adc, hosal_adc_cb_t cb)
```

ADC sampling cb register.

> `return`
>
> - 0 on success
> - EIO if an error occurred with any step
>
> `Parameters`
>
> - adc: the ADC interface
> - cb: Non-zero pointer is the sample callback handler NULL pointer  for send unregister operation adc in cb must be the same pointer with  adc pointer passed to hosal_adc_sample_cb_reg driver must notify upper  layer by calling cb if ADC data is ready in HW or memory(DMA)



```c
int hosal_adc_start(hosal_adc_dev_t *adc, void *data, uint32_t size)
```

ADC sampling start.

> `return`
>
> - 0 on success
> - EIO if an error occurred with any step
>
> `Parameters`
>
> - adc: the ADC interface
> - data: adc data buffer
> - size: data buffer size aligned with resolution (until the next power of two)



```c
int hosal_adc_stop(hosal_adc_dev_t *adc)
```

ADC sampling stop.

> `return`
>
> - 0 on success
> - EIO if an error occurred with any step
>
> `Parameters`
>
> - adc: the ADC interface



```c
int hosal_adc_finalize(hosal_adc_dev_t *adc)
```

De-initialises an ADC interface, Turns off an ADC hardware interface.

> `return`
>
> - 0 on success
> - EIO if an error occurred with any step
>
> `Parameters`
>
> - adc: the interface which should be de-initialised



#### Structures

```c
struct hosal_adc_data_t
```

ADC data type.

- `uint32_t size`

  sampled data size

- `void *data`

  sampled data, aligned with resolution (until the next power of two)

```c
struct hosal_adc_config_t
```

Define ADC config args.

> Public Members
>
> - `uint32_t sampling_freq`
>
>   sampling frequency in Hz
>
> - `uint32_t pin`
>
>   adc pin
>
> - `hosal_adc_sample_mode_t mode`
>
>   adc sampling mode
>
> - `uint8_t sample_resolution`
>
>   adc sampling resolution

```c
struct hosal_adc_dev_t
```

Define ADC dev hosal handle.

> Public Members
>
> - `uint8_t port`
>
>   adc port
>
> - `hosal_adc_config_t config`
>
>   adc config
>
> - `hosal_dma_chan_t dma_chan`
>
>   adc dma channel
>
> - `hosal_adc_irq_t cb`
>
>   adc callback
>
> - `void *p_arg`
>
>   p_arg data
>
> - `void *priv`
>
>   priv data

#### Macros

```c
HOSAL_WAIT_FOREVER
```

Define the wait forever timeout macro.

```c
TIMER_RELOAD_ONCE
```

timer reload once and need to reload manually

#### Type Definitions

```c
typedef enum __ADC_INT_EVENTS__ hosal_adc_event_t
```

ADC interrupt events.

```c
typedef void (*hosal_adc_irq_t)(void *parg)
```

ADC interrupt function.

- `Parameters`

  parg: Set the custom parameters specified

```c
typedef void (*hosal_adc_cb_t)(hosal_adc_event_t event, void *data, uint32_t size)
```

ADC interrupt callback.

- `Parameters`

  parg: Set the custom parameters specified when the callback function is set

#### Enumerations

```c
enum __ADC_INT_EVENTS__
```

ADC interrupt events.

Values:

- `HOSAL_ADC_INT_OV`

  Overrun error.

- `HOSAL_ADC_INT_EOS`

  End of sample.

- `HOSAL_ADC_INT_DMA_TRH`

  DMA transceive half.

- `HOSAL_ADC_INT_DMA_TRC`

  DMA transceive complete.

- `HOSAL_ADC_INT_DMA_TRE`

  @briefDMA transceive error

```c
enum hosal_adc_sample_mode_t
```

ADC MODE type.

Values:

- `HOSAL_ADC_ONE_SHOT`

  Single time sampling.

- `HOSAL_ADC_CONTINUE`

  Continuous sampling.