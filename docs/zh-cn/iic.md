# I2C API指南

------

## I2C API

### 概述

I2C (Inter-Intergrated Circuit)是一种串行通讯总线，使用多主从架构，用来连接低速外围装置。  每个器件都有一个唯一的识别地址，并且都可以作为一个发送器或接收器。  如果有两个或多个主机同时初始化，数据传输可以通过冲突检测和仲裁防止数据被破坏。  BL602/BL604包含一个I2C控制器主机，可灵活配置slaveAddr、subAddr以及传输数据，方便与从设备通信，提供2个word深度的fifo，提供中断功能，可搭配DMA使用提高效率，可灵活调整时钟频率。

### API参考

#### 头文件

- components/platform/hosal/include/hosal_i2c.h

#### 函数

```c
int hosal_i2c_init(hosal_i2c_dev_t *i2c)
```

> 初始化i2c设备

`返回值`

- 0  成功

- EIO 失败

`参数`

- i2c: i2c设备句柄



```c
int hosal_i2c_master_send(hosal_i2c_dev_t *i2c, uint16_t dev_addr, const uint8_t *data, uint16_t size, uint32_t timeout)
```

> Master模式下发送数据

`返回值`

- 0  成功

- EIO 失败

`参数`

- i2c: i2c设备句柄

- dev_addr: 从机设备地址

- data: 要发送的数据

- size: 要发送的数据的长度

- timeout: 超时，以毫秒为单位的超时，如果你想无限期等待，请将此值设置为 `HAL_WAIT_FOREVER`



```c
int hosal_i2c_master_recv(hosal_i2c_dev_t *i2c, uint16_t dev_addr, uint8_t *data, uint16_t size, uint32_t timeout)
```

> ​	Master模式下接收数据

`返回值`

- 0  成功

- EIO 失败

`参数`

- i2c: i2c设备句柄

- dev_addr: 从机设备地址

- data: 接收从机发送的数据

- size:接收的数据长度

- timeout: 超时，以毫秒为单位的超时，如果你想无限期等待，请将此值设置为 `HAL_WAIT_FOREVER`



```c
int hosal_i2c_slave_send(hosal_i2c_dev_t *i2c, const uint8_t *data, uint16_t size, uint32_t timeout)
```

> Slave模式下发送数据

`返回值`

- 0  成功

- EIO 失败

`参数`

- i2c: i2c设备句柄

- data: 作为从机发送的数据

- size:数据长度

- timeout: 超时，以毫秒为单位的超时，如果你想无限期等待，请将此值设置为 `HAL_WAIT_FOREVER`



```c
int hosal_i2c_slave_recv(hosal_i2c_dev_t *i2c, uint8_t *data, uint16_t size, uint32_t timeout)
```

> Slave模式下接受数据

`返回值`

- 0  成功

- EIO 失败

`参数`

- i2c: i2c设备句柄

- data: 作为从机要接受的数据

- size:数据长度

- timeout: 超时，以毫秒为单位的超时，如果你想无限期等待，请将此值设置为 `HAL_WAIT_FOREVER`



```c
int hosal_i2c_mem_write(hosal_i2c_dev_t *i2c, uint16_t dev_addr, uint32_t mem_addr, uint16_t mem_addr_size, const uint8_t *data, uint16_t size, uint32_t timeout)
```

> 向从机指定寄存器的写入数据

`返回值`

- 0  成功

- EIO 失败

`参数`

- i2c: i2c设备句柄

- dev_addr: 从机设备地址

- mem_addr: 从机指定寄存器的地址

- mem_addr_size: 指定寄存器往后偏移的长度

- data: 主机向这些寄存器写入的数据

- size: 主机发送数据的长度

- timeout: 超时，以毫秒为单位的超时，如果你想无限期等待，请将此值设置为 `HAL_WAIT_FOREVER`



```c
int hosal_i2c_mem_read(hosal_i2c_dev_t *i2c, uint16_t dev_addr, uint32_t mem_addr, uint16_t mem_addr_size, uint8_t *data, uint16_t size, uint32_t timeout)
```

> 向指定的从机寄存器读取数据

`返回值`

- 0  成功

- EIO 失败

`参数`

- i2c: i2c设备句柄

- dev_addr: 从机设备地址

- mem_addr: 从机指定寄存器的地址

- mem_addr_size: 指定寄存器往后偏移的长度

- data: 主机接收这些寄存器的数据

- size: 主机接收数据的长度

- timeout: 超时，以毫秒为单位的超时，如果你想无限期等待，请将此值设置为 `HAL_WAIT_FOREVER`



```c
int hosal_i2c_finalize(hosal_i2c_dev_t *i2c)
```

> 销毁l2C设备实例，释放相关资源

`返回值`

- 0  成功

- EIO 失败

`参数`

- i2c: i2c设备句柄





#### 结构体

```c
struct hosal_i2c_config_t
```

> IIC外设配置文件

- `uint32_t address_width`

​		地址模式 :7BIT 或10BIT

- `uint32_t freq`

​		时钟频率

- `uint8_t scl`

​		CLK引脚

- `uint8_t sda`

​		SDA 引脚

- `uint8_t mode`

​		主机或从机模式





```c
structhosal_i2c_dev_t
```

>  IIC句柄配置

- `uint8_t port`

​		IIC端口

- `hosal_i2c_config_t config`

​		I2c 配置结构体

- `void *priv`

​		自定义数据





#### 宏

```c
HOSAL_WAIT_FOREVER
```

​	无限等待超时宏。

```c
HOSAL_I2C_MODE_MASTER
```

​	I2C 通信是主模式

```c
HOSAL_I2C_MODE_SLAVE
```

​	I2C 通信是从模式

```c
HOSAL_I2C_MEM_ADDR_SIZE_8BIT
```

​	i2c 内存地址大小 8 位

```c
HOSAL_I2C_MEM_ADDR_SIZE_16BIT
```

​	i2c 内存地址大小 16位

```c
HOSAL_I2C_MEM_ADDR_SIZE_24BIT
```

​	I2C 内存地址大小 24 位

```c
HOSAL_I2C_MEM_ADDR_SIZE_32BIT
```

​	I2C 内存地址大小 32 位

```c
HOSAL_I2C_ADDRESS_WIDTH_7BIT
```

​	7 位模式

```c
HOSAL_I2C_ADDRESS_WIDTH_10BIT
```

​	10 位模式