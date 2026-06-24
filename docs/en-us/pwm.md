### PWM API指南

概述

脉冲宽度调制（Pulse width modulation，简称PWM）是一种模拟控制方式，根据相应载荷的变化来调制晶体管基极或MOS管栅极的偏置，来实现晶体管或MOS管导通时间的改变，从而实现开关稳定电源输出的改变。这种方式能使电源的输出电压在工作条件变化时保持恒定，是利用微处理器的数字信号对模拟电路进行控制的一种非常有效的技术，广泛应用在从测量、通信到功率控制与变换的许多领域中。

API参考

#### Header File

```shel
components/platform/hosal/include/hosal_pwm.h
```

#### Functions

```c
int hosal_pwm_init(hosal_pwm_dev_t *pwm)
```

Initialises a PWM pin.

> `return`
>
> - success
> - other: fail
>
> `Parameters`
>
> - pwm: the PWM device



```c
int hosal_pwm_start(hosal_pwm_dev_t *pwm)
```

Starts Pulse-Width Modulation signal output on a PWM pin.



> `return`
>
> - success
> - other: fail
>
> `Parameters`
>
> - pwm: the PWM device





```c
int hosal_pwm_stop(hosal_pwm_dev_t *pwm)
```

Stops output on a PWM pin.

> `return`
>
> - success
> - other: fail
>
> `Parameters`
>
> - pwm: the PWM device





```c
int hosal_pwm_para_chg(hosal_pwm_dev_t *pwm, hosal_pwm_config_t para)
```

@change the para of pwm

> `return`
>
> - success
> - other: fail
>
> `Parameters`
>
> - pwm: the PWM device
> - para: the para of pwm



```c
int hosal_pwm_freq_set(hosal_pwm_dev_t *pwm, uint32_t freq)
```

update PWM frequency

> `return`
>
> - success
> - other: fail
>
> `Parameters`
>
> - pwm: the PWM device
> - freq: the PWM frequency (0~40M under limited duty)



```c
int hosal_pwm_freq_get(hosal_pwm_dev_t *pwm, uint32_t *p_freq)
```

get PWM frequency

> `return`
>
> - success
> - other: fail
>
> `Parameters`
>
> - pwm: the PWM device
> - p_freq: the pointer to memory frequency



```c
int hosal_pwm_duty_set(hosal_pwm_dev_t *pwm, uint32_t duty)
```

set PWM duty

> `return`
>
> - success
> - other: fail
>
> `Parameters`
>
> - pwm: the PWM device
> - duty: the PWM duty (original duty * 100)



```c
int hosal_pwm_duty_get(hosal_pwm_dev_t *pwm, uint32_t *p_duty)
```

get PWM duty

> `return`
>
> - success
> - other: fail
>
> `Parameters`
>
> - pwm: the PWM device
> - p_duty: the pointer to memory duty(original duty * 100)



```c
int hosal_pwm_finalize(hosal_pwm_dev_t *pwm)
```

De-initialises an PWM interface, Turns off an PWM hardware interface.

> > ```
> > return
> > ```
>
> - success
> - other: fail
>
> > ```
> > Parameters
> > ```
>
> - pwm: the PWM device
> - pwm: the interface which should be de-initialised

#### Structures

```c
struct hosal_pwm_config_t
```

pwm config struct

> Public Members
>
> - `uint8_t pin`
>
>   pwm pin
>
> - `uint32_t duty_cycle`
>
>   the pwm duty_cycle 0 ~ 10000(0 ~ 100%)
>
> - `uint32_t freq`
>
>   the pwm freq,range is between 0 and 40M



```c
struct hosal_pwm_dev_t
```

pwm dev struct

- `uint8_t port`

  pwm port

- `hosal_pwm_config_t config`

  pwm config

- `void *priv`

  priv data