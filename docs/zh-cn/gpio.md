# GPIO API指南

## 概述

通用型之输入输出（General-purpose  input/output，通常称为GPIO），GPIO管理功能提供GPIO控制寄存器，实现软件对 GPIO 属性的配置，使用户能够方便地操作  GPIO。每个GPIO可以配置为输入、输出和可选功能三种模式。在每个模式下(除模拟可选功能)，提供设置上拉，下拉，浮空三种端口状态，此外GPIO还提供中断功能，可以配置为上升沿触发，下降沿触发或者高电平/低电平触发。

### API参考

#### 头文件

- components/platform/hosal/include/hosal_gpio.h

#### 函数

```c
int hosal_gpio_init(hosal_gpio_dev_t *gpio)
```

> 初始化GPIO外设

`返回值`

- 0 ：成功

- EIO ：如果任何步骤发生错误

`参数`

- gpio :  要被初始化的gpio设备块



```c
int hosal_gpio_output_set(hosal_gpio_dev_t *gpio, uint8_t value)
```

> 设置GPIO高低电平

**注意：**

> > 在设置为 input 模式的 gpio 引脚上使用此功能是未定义的
>

`返回值`

- 0 ：成功

- EIO ：如果任何步骤发生错误

`参数`

- gpio :  要被设置的gpio引脚

- value: 0 : 输出低电平 | >0 : 输出高电平 



```c
int hosal_gpio_input_get(hosal_gpio_dev_t *gpio, uint8_t *value)
```

> 获取输入 GPIO 引脚的状态。在设置为输出模式的 gpio 引脚上使用此功能将返回一个未定义的值。

`返回值`

- 0 ：成功

- EIO ：如果任何步骤发生错误

`参数`

- gpio :  要读取的gpio引脚

- value: 读取gpio引脚上的电平值



```c
int hosal_gpio_irq_set(hosal_gpio_dev_t *gpio, hosal_gpio_irq_trigger_t trigger_type, hosal_gpio_irq_handler_t handler, void *arg)
```

> 使能输入 GPIO 引脚的中断触发器。在设置为输出模式的 gpio 引脚上使用此功能是未定义的

`返回值`

- 0 ：成功

- EIO ：如果任何步骤发生错误

`参数`

- gpio :  提供中断触发的gpio引脚

- trigger: 触发器的类型（上升沿/下降沿或两者兼而有之）

- handler: 中断回调函数

- arg: 回调函数所需的参数



```c
int hosal_gpio_irq_mask(hosal_gpio_dev_t *gpio, uint8_t mask)
```

> 清除输入 GPIO 引脚的中断状态。在已产生中断的 gpio 引脚上使用此功能。

`返回值`

- 0 ：成功

- EIO ：如果任何步骤发生错误

`参数`

- gpio :  提供中断触发的gpio引脚

- mask:  0  屏蔽中断 |  1 不屏蔽中断（即中断还有效）



```c
int hosal_gpio_finalize(hosal_gpio_dev_t *gpio)
```

> 释放gpio块设备：

`返回值`

- 0 ：成功

- EIO ：如果任何步骤发生错误

`参数`

- gpio :  被初始化的GPIO块设备



#### 结构体

```c
struct hosal_gpio_ctx
```

>  Hosal GPIO 上下文，用于多 GPIO IRQ



```c
struct hosal_gpio_dev_t
```

> GPIO设备块结构



- `uint8_t port`

​		端口

- `hosal_gpio_config_t config`

​		GPIO配置文件

- `void *priv`

​		用户参数



#### 类型定义

```c
typedef void (*hosal_gpio_irq_handler_t)(void *arg)
```

> 中断回调函数

参数

- parg: 设置指定的自定义参数



```c
typedef struct hosal_gpio_ctx hosal_gpio_ctx_t
```

> Hosal GPIO 上下文结构体，用于多 GPIO IRQ





#### 枚举

```c
enum hosal_gpio_config_t
```

> GPIO配置



`ANALOG_MODE`

模拟输出输出

`INPUT_PULL_UP`

带内部上拉电阻的输入 - 与主动将信号驱动为低电平的设备一起使用 - 例如，按钮接地

`INPUT_PULL_DOWN`

带内部下拉电阻的输入 - 与主动将信号驱动为高电平的设备一起使用 - 例如连接到电源轨的按钮

`INPUT_HIGH_IMPEDANCE`

高阻输入 - 必须始终由主动或外部上拉电阻器驱动

`OUTPUT_PUSH_PULL`

推挽输出

`OUTPUT_OPEN_DRAIN_NO_PULL`

开漏不拉，输出有源驱动为低电平，但设置为高电平时为高阻抗 - 可连接到其他开漏/集电极开路输出。需要一个外部上拉电阻器。

`OUTPUT_OPEN_DRAIN_PULL_UP`

开漏内部上拉，输出有源驱动为低电平，当设置为高电平时通过内部电阻器拉高 - 可以连接到其他开漏/集电极开路输出。

`OUTPUT_OPEN_DRAIN_AF`

复用开漏模式

`OUTPUT_PUSH_PULL_AF`

复用推挽模式



```c
enum hosal_gpio_irq_trigger_t
```

> 中断触发器



`HOSAL_IRQ_TRIG_NEG_PULSE`

下降沿触发中断

`HOSAL_IRQ_TRIG_POS_PULSE`

上升沿触发中断

`HOSAL_IRQ_TRIG_NEG_LEVEL`

低电平触发中断

`HOSAL_IRQ_TRIG_POS_LEVEL`

高电平触发中断
