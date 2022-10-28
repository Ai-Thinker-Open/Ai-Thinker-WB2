# Wi-Fi Station Static IP Setting Example

## Introduction

This example shows how to use the Wi-Fi Station functionality of the Wi-Fi driver of WB2 serial development board and set custom IP address.


本例程主要介绍如何实现WB2系列开发板STA模式下设置静态IP地址。


## How to use example

Open the project,set WIFI_SSID,WIFI_PASSWORD and custom IP address at line 3,line 4 and line 7.
For example : 

```
#define AP_SSID "Ai-WB2"
#define AP_PASSWORD "12345678"
#define AP_IP "192.168.100.1"
```
Finally,running command below to compile project.
```
make -j8
```



打开项目，在第3、4以及第7行设置WIFI_SSID、WIFI_PASSWORD以及自定义IP地址
如下：

```
#define AP_SSID "Ai-WB2"
#define AP_PASSWORD "12345678"
#define AP_IP "192.168.100.1"
```
最后，运行以下指令编译工程。
```
make -j8
```



## Burn firmware

Running command below to burn firmware after connecting WB2 serial development board to PC.
```
make flash p=/dev/ttyUSB0 b=921600
```


将WB2开发板连接PC机之后，运行以下指令烧录固件。
```
make flash p=/dev/ttyUSB0 b=921600
```

## Debug

Open the serial port debugging assistant software,select the COM port of the development board,and press the reset button on development board to run the program finally.


打开“串口调试助手软件”，选择并打开开发板的COM口，最后按下复位键启动程序。


## Troubleshooting

For any technical queries, please open an [issue](https://github.com/Ai-Thinker-Open/Ai-Thinker-WB2/issues) on GitHub. We will get back to you soon.


若有任何问题，请在github中提交一个[issue](https://github.com/Ai-Thinker-Open/Ai-Thinker-WB2/issues)，我们会尽快回复。
