# WDG API指南

## 概述

看门狗（Watchdog），又叫看门狗计时器（Watchdog timer），是一种硬件的计时设备，当系统的主程序发生某些错误时，导致未及时清除看门狗计时器的计时值，这时看门狗计时器就会对系统发出复位信号，使系统从悬停状态恢复到正常运作状态

### API参考

#### Header File

- components/platform/hosal/include/hosal_wdg.h

#### Functions

```c
int hosal_wdg_init(hosal_wdg_dev_t *wdg)
```

> 初始化看门狗定时器

`返回值`

- 0 : 成功
- other: 失败

`参数`

- wdg: 看门狗设备块

```c
void hosal_wdg_reload(hosal_wdg_dev_t *wdg)
```

> 喂狗

`参数`

- wdg: 看门狗设备块



```c
int hosal_wdg_finalize(hosal_wdg_dev_t *wdg)
```

销毁看门狗定时器

`返回值`

- 0 : 成功
- other: 失败

`参数`

- wdg: 看门狗设备块



#### 结构体

```c
struct hosal_wdg_config_t
```

> 看门狗配置结构体

- `uint32_t timeout`

​		看门狗超时时间(以ms为单位)



```c
struct hosal_wdg_dev_t
```

> 看门狗设备块结构体

公共成员

- `uint8_t port`

​		端口

- `hosal_wdg_config_t config`

​		看门狗配置文件

- `void *priv`

​		用户自定义数据