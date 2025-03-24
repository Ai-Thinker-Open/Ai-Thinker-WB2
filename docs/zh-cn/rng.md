# RNG API指南

------

## RNG API

### 概述

随机数生成器(Random number generation),可以生成指定长度的随机数。

### API参考

#### 头文件

- components/platform/hosal/include/hosal_rng.h

#### 函数

```c
int hosal_rng_init(void)
```

> 初始化RNG随机数

`返回值`

- 0 : 成功
- 其他：失败





```c
int hosal_random_num_read(void *buf, uint32_t bytes)
```

> 生成随机数到指定buf

`返回值`

- 0 : 成功
- 其他：失败

`参数`

- buf: 向一个有效的内存缓冲区，该函数执行后会用随机数填充该内存

- bytes: 内存缓冲区的长度 （bytes）
