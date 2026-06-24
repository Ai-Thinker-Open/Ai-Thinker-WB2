### PWM API指南

概述

脉冲宽度调制（Pulse width modulation，简称PWM）是一种模拟控制方式，根据相应载荷的变化来调制晶体管基极或MOS管栅极的偏置，来实现晶体管或MOS管导通时间的改变，从而实现开关稳定电源输出的改变。这种方式能使电源的输出电压在工作条件变化时保持恒定，是利用微处理器的数字信号对模拟电路进行控制的一种非常有效的技术，广泛应用在从测量、通信到功率控制与变换的许多领域中。

API参考

#### 头文件

```shel
components/platform/hosal/include/hosal_pwm.h
```

#### 函数

```c
int hosal_pwm_init(hosal_pwm_dev_t *pwm)
```

> 初始化PWM

`返回值`

- 0 成功

- other: 失败

`参数`

- pwm: pwm句柄



```c
int hosal_pwm_start(hosal_pwm_dev_t *pwm)
```

>  启动 PWM 引脚上的脉冲宽度调制信号输出

`返回值`

- 0 成功

- other: 失败

`参数`

- pwm: pwm句柄



```c
int hosal_pwm_stop(hosal_pwm_dev_t *pwm)
```

> 停止PWM输出

`返回值`

- 0 成功

- other: 失败

`参数`

- pwm: pwm句柄



```c
int hosal_pwm_para_chg(hosal_pwm_dev_t *pwm, hosal_pwm_config_t para)
```

> PWM配置更新

`返回值`

- 0 成功

- other: 失败

`参数`

- pwm: pwm句柄

- para: 新的PWM配置



```c
int hosal_pwm_freq_set(hosal_pwm_dev_t *pwm, uint32_t freq)
```

> 设置PWM频率

`返回值`

- 0 成功

- other: 失败

`参数`

- pwm: pwm句柄

- freq: 新的PWM频率 （0=40MHz）



```c
int hosal_pwm_freq_get(hosal_pwm_dev_t *pwm, uint32_t *p_freq)
```

> 获取pwm频率

`返回值`

- 0 成功

- other: 失败

`参数`

- pwm: pwm句柄

- p_freq: 用于返回当前PWM频率



```c
int hosal_pwm_duty_set(hosal_pwm_dev_t *pwm, uint32_t duty)
```

> 设置PWM的占空比

`返回值`

- 0 成功

- other: 失败

`参数`

- pwm: pwm句柄

- duty: PWM 占空比（原始占空比 * 100）



```c
int hosal_pwm_duty_get(hosal_pwm_dev_t *pwm, uint32_t *p_duty)
```

> 获取 PWM 占空比

`返回值`

- 0 成功

- other: 失败

`参数`

- pwm: pwm句柄

- p_duty:获取的占空比指针 



```c
int hosal_pwm_finalize(hosal_pwm_dev_t *pwm)
```

> 关闭PWM 释放资源

`返回值`

- 0 成功

- other: 失败

`参数`

- pwm: pwm句柄



#### 结构体

```c
struct hosal_pwm_config_t
```

> 配置结构体

- `uint8_t pin`

​		PWM引脚

- `uint32_t duty_cycle`

​		占空比 0 ~ 10000(0 ~ 100%)

- `uint32_t freq`

​		PWM 频率范围在 0 到 40MHz 之间



```c
struct hosal_pwm_dev_t
```

> PWM设备结构体（句柄）

- `uint8_t port`

  PWM端口

- `hosal_pwm_config_t config`

  PWM 配置

- `void *priv`

  用户自定义数据