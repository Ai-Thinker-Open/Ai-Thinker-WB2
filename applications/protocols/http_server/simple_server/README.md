# HTTP Simple server Example

## Introduction
```
This example shows how setup a simple http server.


本例程主要介绍如何搭建一个简单的HTTP服务器。
```

## How to use example
```
Open the project,set WIFI_SSID,WIFI_PASSWORD in "wifi_execute.c" file at line 3,line 4 and set listen port in "http_server.c" file at line 3.
For example : 
#define STA_SSID "Ai-WB2-x"
#define STA_PASSWORD "12345678"
#define SERVER_PORT 80

Finally,running command below to compile project.
make -j8

打开项目，在“wifi_execute.c”文件第3、4行设置WIFI_SSID、WIFI_PASSWORD以及在“http_server.c”文件中设置服务器监听端口号
如下：
#define STA_SSID "Ai-WB2-x"
#define STA_PASSWORD "12345678"
#define SERVER_PORT 80
最后，运行以下指令编译工程。
make -j8

```

## Burn firmware
```
Running command below to burn firmware after connecting WB2 serial development board to PC.
make flash p=/dev/ttyUSB0 b=921600


将WB2开发板连接PC机之后，运行以下指令烧录固件。
make flash p=/dev/ttyUSB0 b=921600
```



## Debug
```
Open the serial port debugging assistant software,select the COM port of the development board,and press the reset button on development board to run the program finally.
Access the IP address of the module through the browser of the PC or other devices, and you can get the web page responded by the server, as shown in the following figure:(Notic:the device which access the IP address of the module should be in the same LAN with module.In other words,connect to the same AP.)

打开“串口调试助手软件”，选择并打开开发板的COM口，最后按下复位键启动程序。
打开浏览器，访问模组的IP地址，模组将响应该请求，回复一个网页过来，效果如附件：（注意：访问该IP的设备需与模组在同一局域网下，即：连接同一个AP热点）
```

![image-20221028111958357](C:\Users\Rita\AppData\Roaming\Typora\typora-user-images\image-20221028111958357.png?x-oss-process=image/watermark,type_ZHJvaWRzYW5zZmFsbGJhY2s,shadow_50,text_Q1NETiBA5a6J5L-h5Y-v56eR5oqA,size_10#pic_center)
