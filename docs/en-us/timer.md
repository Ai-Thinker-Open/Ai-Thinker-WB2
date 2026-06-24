# TIMER API指南

## 概述

通用定时器，用于定时，当时间到达我们所设置的定时时间会产生定时中断，可以用来完成定时任务。

### API参考

#### Header File

- components/platform/hosal/include/hosal_timer.h

#### Functions

```c
int hosal_timer_init(hosal_timer_dev_t *tim)
```

init a hardware timer

`return`

- 0 : on success
- other :error

`Parameters`

- tim: timer device



```c
int hosal_timer_start(hosal_timer_dev_t *tim)
```

start a hardware timer

`return`

- 0 : on success
- other : error

`Parameters`

- tim: timer device



```c
void hosal_timer_stop(hosal_timer_dev_t *tim)
```

stop a hardware timer

`return`

- none

`Parameters`

- tim: timer device



```c
int hosal_timer_finalize(hosal_timer_dev_t *tim)
```

De-initialises an TIMER interface, Turns off an TIMER hardware interface

`return`

- 0 : success
- other : error

`Parameters`

- tim: timer device

#### Structures

```c
struct hosal_timer_config_t
```

Define timer config args

> Public Members
>
> - `uint32_t period`
>
>   timer period, us
>
> - `uint8_t reload_mode`
>
>   auto reload or not
>
> - `hosal_timer_cb_t cb`
>
>   timer handle when expired
>
> - `void *arg`
>
>   timer handle args



```c
struct hosal_timer_dev_t
```

Define timer dev handle

> Public Members
>
> - `int8_t port`
>
>   timer port
>
> - `hosal_timer_config_t config`
>
>   timer config
>
> - `void *priv`
>
>   priv data



#### Macros

```c
TIMER_RELOAD_PERIODIC
```

timer reload automatic

```c
TIMER_RELOAD_ONCE
```

timer reload once and need to reload manually



#### Type Definitions

```c
typedef void (*hosal_timer_cb_t)(void *arg)
```

Define timer handle function type