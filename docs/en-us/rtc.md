------

# RTC API指南

------

## RTC API

## 概述

RTC(real-time clock)为操作系统中的实时时钟设备，为操作系统提供精准的实时时间和定时报警功能。当设备下电后，通过外置电池供电，RTC继续记录操作系统时间；设备上电后，RTC提供实时时钟给操作系统，确保断电后系统时间的连续性。

### API参考

#### Header File

- components/platform/hosal/include/hosal_rtc.h

#### Functions

```c
int hosal_rtc_init(hosal_rtc_dev_t *rtc)
```

This function will initialize the on board CPU real time clock.

> `return`
>
> - 0 : success
> - other : fail
>
> `Parameters`
>
> - rtc: rtc device



```c
int hosal_rtc_set_time(hosal_rtc_dev_t *rtc, const hosal_rtc_time_t *time)
```

This function will set MCU RTC time to a new value.

> `return`
>
> - 0 : success
> - other : fail
>
> `Parameters`
>
> - rtc: rtc device
> - time: pointer to a time structure



```c
int hosal_rtc_get_time(hosal_rtc_dev_t *rtc, hosal_rtc_time_t *time)
```

This function will return the value of time read from the on board CPU real time clock.

> `return`
>
> - 0 : success
> - other : fail
>
> `Parameters`
>
> - rtc: rtc device
> - time: pointer to a time structure



```c
int hosal_rtc_set_count(hosal_rtc_dev_t *rtc, uint64_t *time_stamp)
```

This function will set MCU RTC time to a new value.

> `return`
>
> - 0 : success
> - other : fail
>
> `Parameters`
>
> - rtc: rtc device
> - time_stamp: new time value



```c
int hosal_rtc_get_count(hosal_rtc_dev_t *rtc, uint64_t *time_stamp)
```

This function will return the value of time read from the on board CPU real time clock.

> `return`
>
> - 0 : success
> - other : fail
>
> `Parameters`
>
> - rtc: rtc device
> - time_stamp: new time value



```c
int hosal_rtc_finalize(hosal_rtc_dev_t *rtc)
```

De-initialises an RTC interface, Turns off an RTC hardware interface.

> `return`
>
> - 0 : success
> - other : fail
>
> `Parameters`
>
> - RTC: the interface which should be de-initialised



#### Structures

```c
struct hosal_rtc_config_t
```

rtc config struct

> Public Members
>
> - `uint8_t format`
>
>   time formart DEC or BCD

```c
struct hosal_rtc_dev_t
```

rtc dev struct

> Public Members
>
> - `uint8_t port`
>
>   rtc port
>
> - `hosal_rtc_config_t config`
>
>   rtc config
>
> - `void *priv`
>
>   priv data

```c
struct hosal_rtc_time_t
```

- RTC time struct.

  Public Members 

  ​	 `uint8_t sec`

  ​		DEC format:value range from 0 to 59, BCD format:value range from 0x00 to 0x59 

  ​	`uint8_t min`

  ​		DEC format:value range from 0 to 59, BCD format:value range from 0x00 to 0x59

  ​	 `uint8_t hr`

  ​		DEC format:value range from 0 to 23, BCD format:value range from 0x00 to 0x23 

  ​	`uint8_t date`

  ​		DEC format:value range from 1 to 31, BCD format:value range from 0x01 to 0x31

    `uint8_t month`

  ​		DEC format:value range from 1 to 12, BCD format:value range from 0x01 to 0x12 

  `uint16_t year`

  ​		DEC format:value range from 0 to 9999, BCD format:value range from 0x0000 to 0x9999



#### Macros

```c
HOSAL_RTC_FORMAT_DEC
```

RTC DEC format

```c
HOSAL_RTC_FORMAT_BCD
```

RTC BCD format