# aliIOT linking  Example

## Introduction

This example mainly introduces how to implement WB2 series development board into Ali IOT platform.

## How to use example

open project, confid WiFi ssid and password of your WiFi in main.c file at main path : ROUTER_SSID、ROUTER_PWD, for example:

```
#define ROUTER_SSID "WIFI SSID
#define ROUTER_PWD "WIFI PWS"
```

open project, config triple parameters for ali IOT connection in ali_mqtt_init.c file at path  "ali_iot/ali_cloud/ali_mqtt" : product_key、device_name、device_secret, for example:

```
char *product_key = "a1Rq1D1yQnu";
char *device_name = "bl602-test";
char *device_secret = "64b4f96c8083630db426e0a4c5b075d1";
```

this demo also include OTA function. you just need to config your project version in ali_ota_init.h file at "ali_ota" path, for example:

```
#define PRJ_VERSION "1.0.0"
```

Finally,running command below to compile project on ubuntu.
```
make -j8
```

## Burn firmware

Running command below to burn firmware after connecting WB2 serial development board to ubuntu.
```
make flash p=/dev/ttyUSB0 b=921600
```

## Debug

Open the serial port debugging assistant software,select the COM port of the development board,and press the reset button on development board to run the program finally.


## Troubleshooting

For any technical queries, please open an [issue](https://github.com/Ai-Thinker-Open/Ai-Thinker-WB2/issues) on GitHub. We will get back to you soon.



----------------------------------


# 入网阿里物联网平台例程

## 简介

本例程主要介绍如何实现WB2系列开发板入网阿里物联网平台。

## 如何使用该例程

打开项目，在main文件夹下的main.c文件中配置好需连接的室内WiFi账号与密码：ROUTER_SSID、ROUTER_PWD
如下：

```
#define ROUTER_SSID "WIFI SSID
#define ROUTER_PWD "WIFI PWS"
```
打开项目，在路径：ali_iot/ali_cloud/ali_mqtt下的ali_mqtt_init.c文件中配置好入网阿里物联网平台所需的三元组：product_key、device_name、device_secret
如下：

```
char *product_key = "a1Rq1D1yQnu";
char *device_name = "bl602-test";
char *device_secret = "64b4f96c8083630db426e0a4c5b075d1";
```

该项目还包括OTA升级功能，可在文件ali_ota_init.h中配置项目版本号；
如下：

```
#define PRJ_VERSION "1.0.0"
```

最后，在ubuntu下运行以下指令编译工程。

```
make -j8
```

## 烧录固件

将WB2开发板连接ubuntu之后，运行以下指令烧录固件。
```
make flash p=/dev/ttyUSB0 b=921600
```

## 调试

打开“串口调试助手软件”，选择并打开开发板的COM口，最后按下复位键启动程序。

## 问题排除

若有任何问题，请在github中提交一个[issue](https://github.com/Ai-Thinker-Open/Ai-Thinker-WB2/issues)，我们会尽快回复。