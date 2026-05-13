# web_WIFI_config — Web 配网与 UART↔TCP 透传

通过手机或电脑连接模组 **SoftAP**，在网页中配置路由器 **STA** 与 **TCP 服务器**，模组联网后启用 **UART1 中断接收 + RingBuffer**，将串口数据经 WiFi **TCP Client** 上送（下行同理回串口）。

---

## 1. 工程目录说明

| 路径 | 说明 |
|------|------|
| `main/` | 应用入口：`main.c`、`bouffalo.mk`（`PROJECT_NAME` 指向 `main`） |
| `components/netconfig/` | SoftAP、STA、HTTP、`captive portal` DNS、EasyFlash 配置读写、`Web_Config.html` 业务 |
| `components/uart_tcp/` | TCP 客户端桥接、环形缓冲、UART1 中断收数 |
| `romfs_pack/` | 打包进固件的 ROMFS：`Web_Config.html`（构建时会复制到 `romfs_pack/Web_Config.html`） |
| `img_conf/` | 本工程分区、工厂参数等镜像配置（烧录时用） |
| `proj_config.mk` | SDK menuconfig / 功能开关导出 |
| `Makefile` | 工程主 Makefile：`PROJECT_NAME := main`，固件产出为 **`main.bin`** |

编译前请确保源码中的 `Web_Config.html` 就位：优先使用 `romfs_pack/web/Web_Config.html`，若无则可用工程根下的 `Web_Config.html`（由 Makefile 自动拷贝到 ROMFS 目录）。

---

## 2. 环境要求与编译

- 已就绪的 **Ai-Thinker-WB2**（或等价 BL602 SDK）源码树。
- Shell 中能定位到 SDK 根目录，并 **`export BL60X_SDK_PATH=<SDK 绝对路径>`**（若未设置，Makefile 会尝试 `applications/wifi/web_WIFI_config/../../..`）。

在 **`applications/wifi/web_WIFI_config`** 目录执行：

```bash
export BL60X_SDK_PATH=/path/to/Ai-Thinker-WB2   # 按实际路径修改
make clean                                      # 可选
make -j4
```

成功后生成：

- `build_out/main.elf`
- **`build_out/main.bin`** ← 量产/烧录用

---

## 3. 烧录

在项目目录执行 **`make flash`**（若 SDK/环境已对接串口参数），或使用 SDK 自带的 **flash_tool**；`make all` 结束时的终端提示中会给出一条参考命令示例（芯片 **BL602**、分区、`img_conf` 等请以本仓库 `img_conf/` 为准）。

烧录时注意：

- **`SDK_APP_BIN`** 指向 **`build_out/main.bin`**
- 分区与 DTS 与本工程 **`img_conf/`** 一致，避免与其它应用混用配置文件。

---

## 4. 使用流程（Web 配网）

### 4.1 连接模组 SoftAP

| 项目 | 内容 |
|------|------|
| SSID | `Ai-Thinker-Config` |
| 密码 | `12345678` |

### 4.2 打开配置页

- 手机连接上述 Wi‑Fi 后，浏览器访问：**`http://192.168.169.1/`**
- 若系统弹出「需登录 Wi‑Fi」，通常也会通过 **Captive Portal** 跳到配置页。

### 4.3 网页中配置

- **选择路由器 Wi‑Fi**、输入密码，保存后可连接 **STA**（与 SoftAP **并存**，用于上网）。
- 配置 **TCP 服务器地址**：支持域名或 IPv4（如 `example.com`、`192.168.1.100`），并可带端口或由页面单独端口字段指定。

配置会写入 **EasyFlash**，键名为（仅作开发与排障参考）：

- `wc_net_ssid` / `wc_net_pass` — 路由器账号
- `wc_tcp_url` / `wc_tcp_port` — TCP 服务器

STA 拿到 IP 后即启动 TCP 桥接任务（见 `wc_tcp_bridge_on_sta_got_ip`）。

---

## 5. UART 与 TCP 透传说明

### 5.1 两路串口分工（请勿混接）

| 用途 | UART | 典型引脚 | 说明 |
|------|------|-----------|------|
| **blog / SDK 调试 log** | **UART0** | TX **GPIO16**、RX **GPIO7** | 与 BSP 默认 `uart_stdio` 一致 |
| **透传数据** | **UART1** | TX **GPIO4**、RX **GPIO3** | 115200、8N1、无流控，`HOSAL_UART_MODE_INT` |

透传必须使用 **UART1**，不要将透传再接在 UART0 上，否则会与 blog 争抢同一 UART MUX。

### 5.2 串口交互提示字符串

- **`TCP CONNECT DONE`** — TCP 已成功连接服务端（透传口输出）。
- **`SENT OK`** — 本轮由「串口空闲定界」推上 TCP 的数据已排空且无致命发送错误时的确认（仍为应用策略，不改变 TCP 字节流语义）。

### 5.3 上行组包策略（与服务器观测相关）

源码中（`wc_tcp_bridge.c`）要点：

- **空闲定界**：串口若在 ≥ `WC_PT_UART_IDLE_MS`（默认 3 ms，受 FreeRTOS tick 量化）内无新字节，则将当前环形缓冲视作一帧发往 TCP。
- **软水位**：环内积压 ≥ **`WC_PT_RING_SOFT_WATERMARK`**（默认 3200 B）时会提前唤醒发送，防止长期占线永远等不到静默。
- **TCP**：已设 **TCP_NODELAY**（关闭 Nagle）。对端 **`recv`** 仍可多次、长度任意，若要严格帧边界须在 **设备与服务器双侧** 约定 **长度前缀** 或 **结束符** 等应用层协议。

可调宏位于：`components/uart_tcp/wc_tcp_bridge.c` 顶部 `#define`。

### 5.4 下行 TCP → 串口

任务内对 TCP `read` 有周期唤醒（默认 **`WC_PT_SOCK_POLL_MS`** 量级），读后通过 `hosal_uart_send` 发往 **UART1**。

---

## 6. 修改网页前端

静态页最终进 ROMFS 路径 **`/romfs/Web_Config.html`**。建议在本工程修改：

1. **`romfs_pack/web/Web_Config.html`**（优先），  
2. 或根目录 **`Web_Config.html`**，  

保存后 **`make`** 会自动拷贝到 **`romfs_pack/Web_Config.html`** 再打进固件。

---

## 7. 常见问题
1. **STA 已连但仍想改 TCP 参数**  
   SoftAP 仍应保持开启，在手机连 **Ai-Thinker-Config** 时访问 **`http://192.168.169.1/`**（STA 连通后仍可继续用该 Wi‑Fi 进页面，具体取决于现场信道切换与手机兼容性）。

2. **串口只看到乱码或非透传接口**  
   确认：**log 连 UART0(16/7)**，**业务透传连 UART1(4/3)，115200**。

---

## 8. 相关参考

- ROMFS：`CONFIG_ENABLE_VFS_ROMFS` 等在 `proj_config.mk` / menuconfig 中维护。
