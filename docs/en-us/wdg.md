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

> This function will initialize the on board CPU hardware watch dog.

`return`

- 0 : success
- other: fail

`Parameters`

- wdg: the watch dog device



```c
void hosal_wdg_reload(hosal_wdg_dev_t *wdg)
```

> Reload watchdog counter.

`Parameters`

- wdg: the watch dog device



```c
int hosal_wdg_finalize(hosal_wdg_dev_t *wdg)
```

> This function performs any platform-specific cleanup needed for hardware watch dog.

`return`

- 0 : success
- other: fail

`Parameters`

- wdg: the watch dog device



#### Structures

```c
struct hosal_wdg_config_t
```

>  wdg config struct

Public Members

- `uint32_t timeout`

​		Watchdag timeout in ms

```c
struct hosal_wdg_dev_t
```

>  wdg dev struct

Public Members

- `uint8_t port`

​		wdg port

-  `hosal_wdg_config_t config`

​		wdg config

- `void *priv`

​		priv data