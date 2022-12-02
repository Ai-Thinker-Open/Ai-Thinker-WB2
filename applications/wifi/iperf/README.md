# Iperf Example

## 1 Introduction

This example shows how to test Ai-WB2 serial module's network throughput using Iperf.

## 2 How to use example

Open the project,set WIFI_SSID,WIFI_PASSWORD at line 3,line 4 in wifi_execute.c file.
For example : 

```
#define STA_SSID "Ai-WB2-x"
#define STA_PASSWORD "12345678"
```

Finally,running command below to compile project on ubuntu.
```
make -j8
```


## 3 Burn firmware

Running command below to burn firmware after connecting WB2 serial development board to ubuntu.
```
make flash p=/dev/ttyUSB0 b=921600
```

## 4 Debug

### 4.1 Preparation of iperf tool

Get the installation package of the iperf tool (version: 2.0.9) from [iperf download link](https://iperf.fr/iperf-download.php#windows).

Get the "iperf-2.0.9-win32" folder by unzipping the " iperf-2.0.9-win32.zip " compressed package. Go to this folder directory and run " cmd " command to open the command line window.

### 4.2 Preparation of serial tool

Get the serial tool from [Serial tool download link](https://docs.ai-thinker.com/_media/tools/aithinker_serial_tool_v1.2.3.7z).

Unzip the serial tool compressed package. Open the serial port debugging assistant software,select the COM port of the development board,and press the reset button on development board to run the program.

### 4.3 Debug

running "wifi_sta_connect SSID PASSWORD" command on module through serial tool to connect to WiFi, as below:（PC need to connect to the same WiFi）

![WB2 WIFI](img/WB2_WIFI.png?x-oss-process=image/watermark,type_ZHJvaWRzYW5zZmFsbGJhY2s,shadow_50,text_Q1NETiBA5a6J5L-h5Y-v56eR5oqA,size_10#pic_center)

1）setting module as UDP client and PC as server

running "iperf.exe -s -u -i 1" command on PC to setup UDP server, as below: 

![pc udp server](img/PC_UDP_SERVER.png?x-oss-process=image/watermark,type_ZHJvaWRzYW5zZmFsbGJhY2s,shadow_50,text_Q1NETiBA5a6J5L-h5Y-v56eR5oqA,size_10#pic_center)

 running "ipu 192.168.43.8" command on module through serial tool to connect to UDP server, as below: (“192.168.43.8” is server IP)

​	![wb2 udp client](img/WB2_UDP_CLIENT.png?x-oss-process=image/watermark,type_ZHJvaWRzYW5zZmFsbGJhY2s,shadow_50,text_Q1NETiBA5a6J5L-h5Y-v56eR5oqA,size_10#pic_center)

2）setting module as TCP client and PC as server

running "iperf.exe -s -i 1" command on PC to setup TCP server, as below: 

![PC tcp server](img/PC_TCP_SERVER.png?x-oss-process=image/watermark,type_ZHJvaWRzYW5zZmFsbGJhY2s,shadow_50,text_Q1NETiBA5a6J5L-h5Y-v56eR5oqA,size_10#pic_center)

 running "ipc 192.168.43.8" command on module through serial tool to connect to TCP server, as below:  (“192.168.43.8” is server IP)

![WB2 TCP SERVER](img/WB2_TCP_CLIENT.png?x-oss-process=image/watermark,type_ZHJvaWRzYW5zZmFsbGJhY2s,shadow_50,text_Q1NETiBA5a6J5L-h5Y-v56eR5oqA,size_10#pic_center)

3）setting module as UDP server and PC as client

 running "ipus" command on module through serial tool to setup UDP server, as below: 

![WB2 UDP SERVER](img/WB2_UDP_SERVER.png?x-oss-process=image/watermark,type_ZHJvaWRzYW5zZmFsbGJhY2s,shadow_50,text_Q1NETiBA5a6J5L-h5Y-v56eR5oqA,size_10#pic_center)

running "iperf.exe -u -c 192.168.43.27 -t 360 -i 1" command on PC to connect to UDP server, as below:  (“192.168.43.27” is server IP)

![PC UDP CLIENT](img/PC_UDP_CLIENT.png?x-oss-process=image/watermark,type_ZHJvaWRzYW5zZmFsbGJhY2s,shadow_50,text_Q1NETiBA5a6J5L-h5Y-v56eR5oqA,size_10#pic_center)



4）setting module as TCP server and PC as client

 running "ips" command on module through serial tool to setup TCP server, as below: 

![WB2 TCP SERVER](img/WB2_TCP_SERVER.png?x-oss-process=image/watermark,type_ZHJvaWRzYW5zZmFsbGJhY2s,shadow_50,text_Q1NETiBA5a6J5L-h5Y-v56eR5oqA,size_10#pic_center)

running "iperf.exe -c 192.168.43.27 -t 360 -i 1" command on PC to connect to TCP server, as below:  (“192.168.43.27” is server IP)

![PC TCP CLIENT](img/PC_TCP_CLIENT.png?x-oss-process=image/watermark,type_ZHJvaWRzYW5zZmFsbGJhY2s,shadow_50,text_Q1NETiBA5a6J5L-h5Y-v56eR5oqA,size_10#pic_center)

## 5 Troubleshooting

For any technical queries, please open an [issue](https://github.com/Ai-Thinker-Open/Ai-Thinker-WB2/issues) on GitHub. We will get back to you soon.



----------------------------------


# iperf 吞吐量测试例程

## 1 简介

本例程主要介绍如何通过iperf测试Ai-WB2系列模组的吞吐量。

## 2 如何使用该例程

打开项目，在 “wifi_execute.c” 文件第3行以及第4行设置指定wifi的账号和密码，STA_SSID、STA_PASSWORD，如下：

```
#define STA_SSID "Ai-WB2-x"
#define STA_PASSWORD "12345678"
```
最后，在ubuntu下运行以下指令编译工程。
```
make -j8
```

## 3 烧录固件

将WB2开发板连接ubuntu之后，运行以下指令烧录固件。
```
make flash p=/dev/ttyUSB0 b=921600
```


## 4 调试

### 4.1 iperf工具的准备

从[iperf下载链接](https://iperf.fr/iperf-download.php#windows)中获取iperf（2.0.9版本）工具；

解压“iperf-2.0.9-win32.zip”压缩包，获取“iperf-2.0.9-win32”文件夹，进入该文件夹下运行cmd指令，打开指令运行窗口；

### 4.2 串口工具的准备

从[串口工具下载链接](https://docs.ai-thinker.com/_media/tools/aithinker_serial_tool_v1.2.3.7z)中获取串口工具；

解压串口工具包，打开“串口调试助手软件”，选择并打开开发板的COM口，按下复位键启动程序；

### 4.3 联调

通过运行指令“wifi_sta_connect SSID PASSWORD”连接指定wifi。（调试用PC机需连接同一个WIFI）

![WB2 WIFI](img/WB2_WIFI.png?x-oss-process=image/watermark,type_ZHJvaWRzYW5zZmFsbGJhY2s,shadow_50,text_Q1NETiBA5a6J5L-h5Y-v56eR5oqA,size_10#pic_center)

1) 在指令运行终端运行“iperf.exe -s -u -i 1”指令创建UDP服务器，如下：

   ![pc udp server](img/PC_UDP_SERVER.png?x-oss-process=image/watermark,type_ZHJvaWRzYW5zZmFsbGJhY2s,shadow_50,text_Q1NETiBA5a6J5L-h5Y-v56eR5oqA,size_10#pic_center)

   在串口助手中，运行“ipu 192.168.43.8”指令连接UDP服务器，如下：（其中“192.168.43.8”为服务器的IP地址）

   ![wb2 udp client](img/WB2_UDP_CLIENT.png?x-oss-process=image/watermark,type_ZHJvaWRzYW5zZmFsbGJhY2s,shadow_50,text_Q1NETiBA5a6J5L-h5Y-v56eR5oqA,size_10#pic_center)

2) 在指令运行终端中运行“iperf.exe -s -i 1”指令创建TCP服务器，如下：

   ![PC tcp server](img/PC_TCP_SERVER.png?x-oss-process=image/watermark,type_ZHJvaWRzYW5zZmFsbGJhY2s,shadow_50,text_Q1NETiBA5a6J5L-h5Y-v56eR5oqA,size_10#pic_center)

   在串口助手中，运行“ipc 192.168.43.8”指令连接TCP服务器，如下：（其中“192.168.43.8”为服务器的IP地址）

   ![WB2 TCP SERVER](img/WB2_TCP_CLIENT.png?x-oss-process=image/watermark,type_ZHJvaWRzYW5zZmFsbGJhY2s,shadow_50,text_Q1NETiBA5a6J5L-h5Y-v56eR5oqA,size_10#pic_center)

3) 在串口助手中，运行“ipus”指令创建UDP服务器，如下：

   ![WB2 UDP SERVER](img/WB2_UDP_SERVER.png?x-oss-process=image/watermark,type_ZHJvaWRzYW5zZmFsbGJhY2s,shadow_50,text_Q1NETiBA5a6J5L-h5Y-v56eR5oqA,size_10#pic_center)

   在指令运行终端运行“iperf.exe -u -c 192.168.43.27 -t 360 -i 1”指令连接UDP服务器，如下：（其中“192.168.43.27”为服务器的IP地址）

   ![PC UDP CLIENT](img/PC_UDP_CLIENT.png?x-oss-process=image/watermark,type_ZHJvaWRzYW5zZmFsbGJhY2s,shadow_50,text_Q1NETiBA5a6J5L-h5Y-v56eR5oqA,size_10#pic_center)

4) 在串口助手中，运行“ips”指令创建TCP服务器，如下：

   ![WB2 TCP SERVER](img/WB2_TCP_SERVER.png?x-oss-process=image/watermark,type_ZHJvaWRzYW5zZmFsbGJhY2s,shadow_50,text_Q1NETiBA5a6J5L-h5Y-v56eR5oqA,size_10#pic_center)

   在指令运行终端运行“iperf.exe -c 192.168.43.27 -t 360 -i 1”指令连接TCP服务器，如下：（其中“192.168.43.27”为服务器的IP地址）

   ![PC TCP CLIENT](img/PC_TCP_CLIENT.png?x-oss-process=image/watermark,type_ZHJvaWRzYW5zZmFsbGJhY2s,shadow_50,text_Q1NETiBA5a6J5L-h5Y-v56eR5oqA,size_10#pic_center)

## 5 问题排除

若有任何问题，请在github中提交一个[issue](https://github.com/Ai-Thinker-Open/Ai-Thinker-WB2/issues)，我们会尽快回复。
