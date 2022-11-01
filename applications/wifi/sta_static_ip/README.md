# Wi-Fi Station Static IP Setting Example

## Introduction

This example shows how to use the Wi-Fi Station functionality of the Wi-Fi driver of WB2 serial development board and set custom IP address.

## How to use example

Open the project,set WIFI_SSID,WIFI_PASSWORD and target IP address at line 3,line 4 and line 7.
For example : 
```
#define STA_SSID "Ai-WB2-x"
#define STA_PASSWORD "12345678"
#define STA_STATIC_IP "192.168.43.133"
```

Finally,running command below to compile project on ubuntu.
```
make -j8
```

Notice! The network segment of designated AP should be known before setting the IP address.


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


# Wi-Fi STA模式下静态IP设置例程

## 简介

本例程主要介绍如何实现WB2系列开发板STA模式下设置静态IP地址。

## 如何使用该例程

打开项目，在第3、4以及第7行设置WIFI_SSID、WIFI_PASSWORD以及静态IP地址
如下：
```
#define STA_SSID "Ai-WB2-x"
#define STA_PASSWORD "12345678"
#define STA_STATIC_IP "192.168.43.133"
```
最后，在ubuntu下运行以下指令编译工程。
```
make -j8
```

注意：在设置IP地址之前，需要确定指定连接的WIFI AP的网段。

## 烧录固件

将WB2开发板连接ubuntu之后，运行以下指令烧录固件。
```
make flash p=/dev/ttyUSB0 b=921600
```


## 调试

打开“串口调试助手软件”，选择并打开开发板的COM口，最后按下复位键启动程序。

## 问题排除

若有任何问题，请在github中提交一个[issue](https://github.com/Ai-Thinker-Open/Ai-Thinker-WB2/issues)，我们会尽快回复。
