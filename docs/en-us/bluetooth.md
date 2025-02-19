# 蓝牙 API指南

------

## API参考

### Functions

controller层初始化

```c
void ble_controller_init(uint8_t task_priority)
```

- `Parameters`

  - task_priority 任务优先级  

- `return` 

  ​	无

HCI接口驱动初始化

```c
int hci_driver_init(void)
```

- `Parameters`
-  `return` 

ble使能

```c
int bt_enable(bt_ready_cb_t cb)
```

- `Parameters`
  - cb：如果成功调用回调函数 
- `return`
  -  0:成功， != 0:失败

开启BLE扫描

```c
int bt_le_scan_start(const struct bt_le_scan_param *param, bt_le_scan_cb_t cb)
```

- `Parameters`

  - param: 指向广播配置参数指针 cb: 扫描回调函数 

- `return` 

  - 0:成功， != 0:失败

  

停止BLE扫描

```c
int bt_le_scan_stop(void)
```

- `Parameters`
- `return`
  -  0:成功， != 0:失败



设置连接安全等级

```c
int bt_conn_set_security(struct bt_conn *conn, bt_security_t sec)
```

- `Parameters`
  - conn:指向连接对象的指针 sec:安全等级
- `return`
  -  0:成功， != 0:失败



注册连接回调函数

```c
void bt_conn_cb_register(struct bt_conn_cb *cb)
```

- `Parameters`
  - conn:指向连接对象的指针 
- `return` 无



注册认证回调函数

```c
int bt_conn_auth_cb_register(const struct bt_conn_auth_cb *cb)
```

- `Parameters`
  - cb：回调函数指针 
- `return`
  -  0:成功， != 0:失败



设置/清除SMP配对请求/响应数据认证需求中的绑定标志

```c
void bt_set_bondable(bool enable)
```

- `Parameters`
  - enable：  1，使能，0：不使能  
- `return`  无