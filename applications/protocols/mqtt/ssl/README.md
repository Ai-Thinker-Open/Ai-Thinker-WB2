# mqtt_ssl 示例（中文版）

本示例演示如何使用存储在 ROMFS 中的证书，通过双向 TLS（mTLS）连接到 AWS IoT。

## 1. 配置说明

### WiFi 配置

在 `main.c` 中配置需要连接的 WiFi SSID 和密码：

```c
#define ROUTER_SSID "your ssid"
#define ROUTER_PWD "your password"
```

### MQTT 与证书配置

证书在运行时从 ROMFS 加载。默认路径在 `demo.c` 中定义：

```c
#define ROOTCERT_PATH "/romfs/rootcert.pem"
#define CLI_CERT_PATH "/romfs/ccert.crt"
#define CLI_KEY_PATH "/romfs/ckey.key"
```

- `rootcert.pem`：CA 根证书（用于验证服务器）
- `ccert.crt`：客户端证书（用于双向认证）
- `ckey.key`：客户端私钥

请在编译前将证书文件放入 `cert/` 目录中。

### MQTT 连接参数

完整的 MQTT 客户端配置定义在 `demo.c` 的 `mqtt_start()` 函数中（约第 151-160 行）：

```c
axk_mqtt_client_config_t mqtt_cfg = {
    .uri = "mqtts://hostname.com:8883",
    .cert_pem = ca_buf,
    .cert_len = 0,
    .client_cert_pem = cli_buf,     // 双向认证：客户端证书
    .client_cert_len = 0,
    .client_key_pem = key_buf,      // 双向认证：客户端私钥
    .client_key_len = 0,
    .username = "123",
    .password = "12345678",
    .client_id = "11111111",
    .event_handle = event_cb,
};
```

#### 参数说明

| 字段 | 说明 | 推荐值 |
|------|------|--------|
| `.uri` | MQTTS 服务器地址（必须以 `mqtts://` 开头） | AWS IoT 终端节点 + 端口 8883 |
| `.cert_pem` + `.cert_len` | CA 证书缓冲区。建议将 `cert_len` 设为 0，由库自动计算长度 | ROMFS 加载的缓冲区 |
| `.client_cert_pem` + `.client_cert_len` | 用于双向 TLS 认证的客户端证书。长度建议设为 0 | ROMFS 加载的缓冲区 |
| `.client_key_pem` + `.client_key_len` | 客户端私钥。长度建议设为 0 | ROMFS 加载的缓冲区 |
| `.username` / `.password` | MQTT 用户名和密码 | 您的凭证 |
| `.client_id` | MQTT 客户端唯一标识符 | 设备序列号或 Thing 名称 |
| `.event_handle` | MQTT 事件回调函数 | `event_cb` |

### 主题配置

发布和订阅的主题在 `demo.c` 文件顶部定义：

```c
#define PUB_TOPIC "test/echo"
#define SUB_TOPIC "test/echo"
```

修改这两个宏即可更改主题。对于 AWS IoT Shadow 场景，常用主题如下：

- 订阅：`$aws/things/{thingName}/shadow/update/accepted` 和 `/delta`
- 发布：`$aws/things/{thingName}/shadow/update`

---

## 2. 编译

在工程目录下执行以下命令：

```bash
make -j
```

构建系统会自动将 `romfs_pack/` 目录下的文件打包进固件的 ROMFS 区域。

---

## 3. 烧录

### 下载烧录工具

请从以下链接下载烧录工具：

https://aithinker-static.oss-cn-shenzhen.aliyuncs.com/docs/_media_old/bl602_flash_download_tool.zip

### 烧录教程

烧录方法请参考官方教程：

https://aithinker.blog.csdn.net/article/details/125781602

### ROMFS 证书烧录

除了烧录普通固件外，还必须将包含证书的 ROMFS 分区一并烧录。

烧录配置界面如下（点击图片可放大）：

![MQTT SSL Flash Configuration](https://aithinker-static.oss-cn-shenzhen.aliyuncs.com/docs/media/WiFi/WB2/IMAGE/mqtt_ssl_flash_config.png)

**烧录时的重要步骤：**

1. 根据需要取消勾选默认下载选项中的 "Enable"。
2. 导入分区表（`partition_cfg_*.toml`）。
3. 导入编译好的固件（`build_out/ssl.bin`）。
4. 导入 ROMFS 镜像（通常在编译过程中生成或单独提供）。
5. 如果证书未打包进 ROMFS，请单独导入证书文件。
6. 导入 `boot2` 镜像。
7. 点击 **Create & Download** 开始烧录。

烧录完成后，设备将自动从 ROMFS 加载证书，并建立双向认证的 MQTTS 连接。

---

## 4. 预期行为

连接成功后，您应该能看到类似以下的日志：

- `MQTT_EVENT_CONNECTED`
- `MQTT_EVENT_SUBSCRIBED`
- `MQTT_EVENT_PUBLISHED`
- `MQTT_EVENT_DATA`（当收到订阅主题的消息时）

---

## 5. 故障排查

- 如果证书文件 `aos_open` 失败 → 请检查 `CONFIG_SYS_USER_VFS_ROMFS_ENABLE=1`，且 `romfs_pack/` 目录中存在对应文件。
- 如果 `mbedtls_x509_crt_parse` 失败 → 请确保 PEM 文件正确以 `\0` 结尾，且配置中的长度字段已设为 0。
- 证书路径可通过 `demo.c` 顶部的三个宏进行修改。

如有任何技术问题，请在 GitHub 上提交 [issue](https://github.com/Ai-Thinker-Open/Ai-Thinker-WB2/issues)。我们会尽快回复您。

---

# mqtt_ssl Example (English Version)

This example demonstrates mutual TLS (mTLS) connection to AWS IoT using certificates stored in ROMFS.

## 1. Configuration

### WiFi Configuration

Configure the WiFi SSID and password in `main.c`:

```c
#define ROUTER_SSID "your ssid"
#define ROUTER_PWD "your password"
```

### MQTT & Certificate Configuration

Certificates are loaded from ROMFS at runtime. The default paths are defined in `demo.c`:

```c
#define ROOTCERT_PATH "/romfs/rootcert.pem"
#define CLI_CERT_PATH "/romfs/ccert.crt"
#define CLI_KEY_PATH "/romfs/ckey.key"
```

- `rootcert.pem`: CA certificate (server verification)
- `ccert.crt`: Client certificate (mutual authentication)
- `ckey.key`: Client private key

Place your certificate files in the `romfs_pack/` directory before building.

### MQTT Connection Parameters

The full MQTT client configuration is defined in `demo.c` inside the `mqtt_start()` function (lines 151-160):

```c
axk_mqtt_client_config_t mqtt_cfg = {
    .uri = "mqtts://hostname:8883",
    .cert_pem = ca_buf,
    .cert_len = 0,
    .client_cert_pem = cli_buf,     // 双向认证：客户端证书
    .client_cert_len = 0,
    .client_key_pem = key_buf,      // 双向认证：客户端私钥
    .client_key_len = 0,
    .username = "123",
    .password = "12345678",
    .client_id = "11111111",
    .event_handle = event_cb,
};
```

#### Parameter Description

| Field | Description | Recommended Value |
|-------|-------------|-------------------|
| `.uri` | MQTTS broker URI (must start with `mqtts://`) | AWS IoT endpoint + port 8883 |
| `.cert_pem` + `.cert_len` | CA certificate buffer. Set `cert_len = 0` to let the library calculate length automatically. | ROMFS loaded buffer |
| `.client_cert_pem` + `.client_cert_len` | Client certificate for mutual TLS authentication. Length should be 0. | ROMFS loaded buffer |
| `.client_key_pem` + `.client_key_len` | Client private key. Length should be 0. | ROMFS loaded buffer |
| `.username` / `.password` | MQTT username and password | Your credentials |
| `.client_id` | Unique MQTT client identifier | Device serial or Thing name |
| `.event_handle` | Callback function to handle MQTT events | `event_cb` |

### Topics

Publish and subscribe topics are defined at the top of `demo.c`:

```c
#define PUB_TOPIC "test/echo"
#define SUB_TOPIC "test/echo"
```

Modify these two macros to change the topics. For AWS IoT Shadow usage, typical topics are:

- Subscribe: `$aws/things/{thingName}/shadow/update/accepted` and `/delta`
- Publish: `$aws/things/{thingName}/shadow/update`

---

## 2. Building

Run the following command in the project directory:

```bash
make -j
```

The build system will automatically package files under `romfs_pack/` into the ROMFS region of the firmware.

---

## 3. Flashing

### Download Flashing Tool

Download the flashing tool from:

https://aithinker-static.oss-cn-shenzhen.aliyuncs.com/docs/_media_old/bl602_flash_download_tool.zip

### Flashing Guide

Please refer to the official flashing tutorial:

https://aithinker.blog.csdn.net/article/details/125781602

### ROMFS Certificate Flashing

In addition to the normal firmware image, you must also flash the ROMFS partition containing the certificates.

Use the configuration shown below (click the image to enlarge):

![MQTT SSL Flash Configuration](https://aithinker-static.oss-cn-shenzhen.aliyuncs.com/docs/media/WiFi/WB2/IMAGE/mqtt_ssl_flash_config.png)

**Important steps during flashing:**

1. Uncheck "Enable" for the default download options if needed.
2. Import the partition table (`partition_cfg_*.toml`).
3. Import the compiled firmware (`build_out/ssl.bin`).
4. Import the ROMFS image (usually generated as part of the build or separately).
5. Import the certificate files if they are not already packaged in ROMFS.
6. Import `boot2` image.
7. Click **Create & Download** to start flashing.

After flashing is complete, the device will automatically load certificates from ROMFS and establish an MQTTS connection with mutual authentication.

---

## 4. Expected Behavior

After successful connection you should see logs similar to:

- `MQTT_EVENT_CONNECTED`
- `MQTT_EVENT_SUBSCRIBED`
- `MQTT_EVENT_PUBLISHED`
- `MQTT_EVENT_DATA` (when messages are received on the subscribed topic)

---

## 5. Troubleshooting

- If `aos_open` fails for certificate files → check that `CONFIG_SYS_USER_VFS_ROMFS_ENABLE=1` and files exist in `romfs_pack/`.
- If `mbedtls_x509_crt_parse` fails → ensure PEM files are properly null-terminated and lengths are set to 0 in config.
- Certificate paths can be changed via the three macros at the top of `demo.c`.

For any technical queries, please open an [issue](https://github.com/Ai-Thinker-Open/Ai-Thinker-WB2/issues) on GitHub. We will get back to you soon.