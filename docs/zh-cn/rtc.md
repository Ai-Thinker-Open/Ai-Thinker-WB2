------

# RTC API指南

------

## 概述

RTC(real-time clock)为操作系统中的实时时钟设备，为操作系统提供精准的实时时间和定时报警功能。当设备下电后，通过外置电池供电，RTC继续记录操作系统时间；设备上电后，RTC提供实时时钟给操作系统，确保断电后系统时间的连续性。

**但是**BL602芯片*没有*内置~~RTC模块~~，也没有提供外置电池供电.但是提供的软件RTC功能可以在带电情况下使用。

### API参考

#### 头文件路径

- components/platform/hosal/include/hosal_rtc.h

#### 函数

```c
int hosal_rtc_init(hosal_rtc_dev_t *rtc)
```

> 初始化RTC设备

`返回值`

- 0 : 成功
- fail :  失败

`参数`

- RTC设备块



```c
int hosal_rtc_set_time(hosal_rtc_dev_t *rtc, const hosal_rtc_time_t *time)
```

> 设置RTC 时间和日期

`返回值`

- 0 : 成功
- fail :  失败

`参数`

- RTC设备块

- time: 需要设置的时间结构体



```c
int hosal_rtc_get_time(hosal_rtc_dev_t *rtc, hosal_rtc_time_t *time)
```

> 查询RTC当前时间

`返回值`

- 0 : 成功
- fail :  失败

`参数`

- RTC设备块

- time: 获取当前时间结构体



```c
int hosal_rtc_set_count(hosal_rtc_dev_t *rtc, uint64_t *time_stamp)
```

> 设置RTC新的计数值

`返回值`

- 0 : 成功
- fail :  失败

`参数`

- RTC设备块

- time_stamp: 需要设置的新计数值



```c
int hosal_rtc_get_count(hosal_rtc_dev_t *rtc, uint64_t *time_stamp)
```

> 获取当前RTC的时间计数值

`返回值`

- 0 : 成功
- fail :  失败

`参数`

- RTC设备块

- time_stamp: 返回当前的时间计数值



```c
int hosal_rtc_finalize(hosal_rtc_dev_t *rtc)
```

>  销毁当前RTC设备实例,释放资源

`返回值`

- 0 : 成功
- fail :  失败

`参数`

- RTC设备块



#### 结构体

```c
struct hosal_rtc_config_t
```

> RTC配置文件

- `uint8_t format`

​	时间格式 DEC或BCD

```c
struct hosal_rtc_dev_t
```

> RTC设备块

- `uint8_t port`

​		RTC端口

- `hosal_rtc_config_t config`

​		RTC配置文件

- `void *priv`

​		用户自定义参数



```c
struct hosal_rtc_time_t
```

> 时间结构体

成员变量 

​	 `uint8_t sec`

​		秒; DEC :格式为0 到 59, BCD :格式为0x00 到 0x59 

​	`uint8_t min`

​		分钟; DEC :格式为0 到 59, BCD :格式为0x00 到 0x59 

​	 `uint8_t hr`

​		小时; DEC :格式为0 到 23, BCD :格式为0x00 到 0x23 

​	`uint8_t date`

​		天; DEC :格式为01到 31, BCD :格式为0x01 到 0x31 

  `uint8_t month`

​		月; DEC :格式为1 到 12, BCD :格式为0x01 到 0x12 

`uint16_t year`

​		年; DEC :格式为0 到 9999, BCD :格式为0x0000 到 0x9999 



#### 宏

```c
HOSAL_RTC_FORMAT_DEC
```

​	RTC DEC格式

```c
HOSAL_RTC_FORMAT_BCD
```

​	RTC BCD格式