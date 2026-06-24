# GPIO API指南

## 概述

通用型之输入输出（General-purpose  input/output，通常称为GPIO），GPIO管理功能提供GPIO控制寄存器，实现软件对 GPIO 属性的配置，使用户能够方便地操作  GPIO。每个GPIO可以配置为输入、输出和可选功能三种模式。在每个模式下(除模拟可选功能)，提供设置上拉，下拉，浮空三种端口状态，此外GPIO还提供中断功能，可以配置为上升沿触发，下降沿触发或者高电平/低电平触发。

### API参考

#### Header File

- components/platform/hosal/include/hosal_gpio.h

#### Functions

```c
int hosal_gpio_init(hosal_gpio_dev_t *gpio)
```

Initialises a GPIO pin.

Prepares a GPIO pin for use.

> `return`
>
> - 0 on success
> - EIO if an error occurred with any step
>
> `Parameters`
>
> gpio: the gpio pin which should be initialised



```c
int hosal_gpio_output_set(hosal_gpio_dev_t *gpio, uint8_t value)
```

Set GPIO output high or low.

> `Note`
>
> > Using this function on a gpio pin which is set to input mode is undefined.
>
> `return`
>
> - 0 on success
> - EIO if an error occurred with any step
>
> `Parameters`
>
> - gpio: the gpio pin which should be set
> - value: 0 : output low | >0 : output high



```c
int hosal_gpio_input_get(hosal_gpio_dev_t *gpio, uint8_t *value)
```

Get the state of an input GPIO pin. Using this function on a gpio pin which is set to output mode will return an undefined value.

> `return`
>
> - 0 on success
> - EIO if an error occurred with any step
>
> `Parameters`
>
> - gpio: the gpio pin which should be read
> - value: gpio value



```c
int hosal_gpio_irq_set(hosal_gpio_dev_t *gpio, hosal_gpio_irq_trigger_t trigger_type, hosal_gpio_irq_handler_t handler, void *arg)
```

Enables an interrupt trigger for an input GPIO pin. Using this function on a gpio pin which is set to output mode is undefined.

> `return`
>
> - 0 on success
> - EIO if an error occurred with any step
>
> `Parameters`
>
> - gpio: the gpio pin which will provide the interrupt trigger
> - trigger: the type of trigger (rising/falling edge or both)
> - handler: a function pointer to the interrupt handler
> - arg: an argument that will be passed to the interrupt handler



```c
int hosal_gpio_irq_mask(hosal_gpio_dev_t *gpio, uint8_t mask)
```

Clear an interrupt status for an input GPIO pin. Using this function on a gpio pin which has generated a interrupt.

> `return`
>
> - 0 on success
> - EIO if an error occurred with any step
>
> `Parameters`
>
> - gpio: the gpio pin which provided the interrupt trigger
> - mask: 0 : mask | 1 : umask



```c
int hosal_gpio_finalize(hosal_gpio_dev_t *gpio)
```

Set a GPIO pin in default state.

​	`return`

> - 0 on success
> - EIO if an error occurred with any step
>
> `Parameters`
>
> - gpio: the gpio pin which should be deinitialised



#### Structures

```c
struct hosal_gpio_ctx
```

hosal gpio ctx, use for multi gpio irq

```c
struct hosal_gpio_dev_t
```

GPIO dev struct.

> Public Members
>
> - `uint8_t port`
>
>   gpio port
>
> - `hosal_gpio_config_t config`
>
>   gpio config
>
> - `void *priv`
>
>   priv data



#### Type Definitions

```c
typedef void (*hosal_gpio_irq_handler_t)(void *arg)
```

GPIO interrupt callback handler.

> `Parameters`
>
> - parg: ：Set the custom parameters specified



```c
typedef struct hosal_gpio_ctx hosal_gpio_ctx_t
```

hosal gpio ctx, use for multi gpio irq



#### Enumerations

```c
enum hosal_gpio_config_t
```

gpio config struct

Values:

> `ANALOG_MODE`

Used as a function pin, input and output analog.

> `INPUT_PULL_UP`

Input with an internal pull-up resistor - use with devices that actively drive the signal low - e.g. button connected to ground.

> `INPUT_PULL_DOWN`

Input with an internal pull-down resistor - use with devices that  actively drive the signal high - e.g. button connected to a power rail.

> `INPUT_HIGH_IMPEDANCE`

Input - must always be driven, either actively or by an external pullup resistor.

> `OUTPUT_PUSH_PULL`

Output actively driven high and actively driven low - must not be connected to other active outputs - e.g. LED output.

`OUTPUT_OPEN_DRAIN_NO_PULL`

Output actively driven low but is high-impedance when set high - can  be connected to other open-drain/open-collector outputs. Needs an  external pull-up resistor.

> `OUTPUT_OPEN_DRAIN_PULL_UP`

Output actively driven low and is pulled high with an internal  resistor when set high - can be connected to other  open-drain/open-collector outputs.

> `OUTPUT_OPEN_DRAIN_AF`

Alternate Function Open Drain Mode.

> `OUTPUT_PUSH_PULL_AF`

Alternate Function Push Pull Mode.



```c
enum hosal_gpio_irq_trigger_t
```

GPIO interrupt trigger.

Values:

> `HOSAL_IRQ_TRIG_NEG_PULSE`
>
> GPIO negedge pulse trigger interrupt.
>
> `HOSAL_IRQ_TRIG_POS_PULSE`
>
> GPIO posedge pulse trigger interrupt.
>
> `HOSAL_IRQ_TRIG_NEG_LEVEL`
>
> GPIO negedge level trigger interrupt (32k 3T)
>
> `HOSAL_IRQ_TRIG_POS_LEVEL`
>
> GPIO posedge level trigger interrupt (32k 3T)
