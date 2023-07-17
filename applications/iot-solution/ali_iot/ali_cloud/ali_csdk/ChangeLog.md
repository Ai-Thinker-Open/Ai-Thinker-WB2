# 文件说明

记录`Link SDK-4.x`的更新历史

# 更新内容

+ 2020-05-06: SDK 4.0.0版本正式发布
+ 2021-04-20: SDK 4.1.0版本正式发布
  +  新增安全隧道和远程调试功能
  +  新增AT模组驱动框架,支持模组快速适配
  +  mbedtls安全层抽象
  +  支持单报文多url的OTA
  +  新增基于mqtt的动态注册功能
  +  支持MQTT 5.0协议
+ 2022-10-28:
  +  支持coap协议接入及动态注册
  +  mbedtls版本升级至2.13.1
+ 2023-01-17:
  +  支持数据压缩的功能
  +  DTLS支持裁剪

# 模块状态


| 模块名                              | 更新时间    | Commit ID
|-------------------------------------|-------------|---------------------------------------------
| 核心模块(core)                      | 2023-03-10  | b64f8b645f0c09390ad8a1ff69036666c6fab36c
| 引导服务模块(components/bootstrap)  | 2020-07-30  | 566135cde8a63c2b5944877ea8c8189c0712b4f7
| 时间同步模块(components/ntp)        | 2021-09-16  | cb96f929c231ad8ee8c48dcf82167f3f6eb66dad
| 设备诊断模块(components/diag)       | 2021-10-18  | 18897e1421952e4eda11e82a61f573654f2bcc69
| 子设备管理模块(components/subdev)   | 2022-09-14  | 249918abbee3a52f31de1d3de7c5144a10ebc929
| 设备标签模块(components/devinfo)    | xicai.cxc   | 6dad770bc8ff1762fd21c006ade17747a6f1982e
| 固件升级模块(components/ota)        | xicai.cxc   | 98afe07e9b330015f62f067cf3599d82a0d9de3f
| 设备日志模块(components/logpost)    | 2021-09-15  | d0e41935909d0c7f593f9225e119f7698db67b2d
| 物模型模块(components/data-model)   | 2021-09-06  | 1d9270de816f7ff0f60c0b2a53d08ca4da8bab66
| 设备影子模块(components/shadow)     | 2021-09-22  | 8e36b636c72b38817382a5ca6f4ea80483b398b6
| (components/mqtt_upload)            | 2022-03-15  | 0947d5ecbe5d8fccbdc22374f24cfe44abd58aae
| (components/compress)               | 2023-03-15  | 8d299680d08c08894f3e9d7a3c6eee43b76d4da3
| 任务管理模块(components/task)       | 2021-10-14  | 1fe061f31ad0e6b1616472335cad7e2f67761915



