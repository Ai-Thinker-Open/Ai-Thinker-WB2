# TIMER API指南

## 概述

通用定时器，用于定时，当时间到达我们所设置的定时时间会产生定时中断，可以用来完成定时任务。

### API参考

#### 头文件

- components/platform/hosal/include/hosal_timer.h

#### 函数

```c
int hosal_timer_init(hosal_timer_dev_t *tim)
```

> 初始化定时器

`返回值`

- 0 : 成功
- other :失败

`参数`

- tim: 定时器设备块



```c
int hosal_timer_start(hosal_timer_dev_t *tim)
```

> 启动定时器

`返回值`

- 0 : 成功
- other :失败

`参数`

- tim: 定时器设备块



```c
void hosal_timer_stop(hosal_timer_dev_t *tim)
```

> 停止定时器

- `返回值`

  - 无

  `参数`

  - tim: 定时器设备块



```c
int hosal_timer_finalize(hosal_timer_dev_t *tim)
```

> 销毁定时器，并释放资源

`返回值`

- 0 : 成功
- other :失败

`参数`

- tim: 定时器设备块



#### 结构体

```c
struct hosal_timer_config_t
```

>  定时器配置

- `uint32_t period`

​		定时周期，以US为单位

- `uint8_t reload_mode`

​		是否自动重装载

- `hosal_timer_cb_t cb`

​	定时中断回调函数

- `void *arg`

​		回调函数的参数



```c
struct hosal_timer_dev_t
```

> 定时器句柄

- `int8_t port`

​		定时器端口

- `hosal_timer_config_t config`

​		定时器配置

- `void *priv`

​		用户自定义数据



#### 宏

```c
TIMER_RELOAD_PERIODIC
```

计时器自动重载

```c
TIMER_RELOAD_ONCE
```

计时器重载一次，需要手动重载 ，（若不重载溢出后就停止了）



#### 类型定义

```c
typedef void (*hosal_timer_cb_t)(void *arg)
```

定义回调函数的类型