# bl_serial_program_origin 离线驱动库移植到指定主机 MCU

把本目录协议源码拷进目标工程，只换平台接口。不要改命令状态机。目标芯片按 **BL602** 配。

## 必要文件

| 文件 | 处理 |
|------|------|
| `bootrom_cmd.h` | 原样拷贝 |
| `bootrom_isp.h` | 拷贝；把 `UART_RTS_PIN` / `UART_DTR_PIN` 改成目标脚 |
| `bootrom_isp.c` | 拷贝；按下表替换接口，并按下一节固定为 BL602 |

不要拷：`main.c`、`CMakeLists.txt`、`bl616_para.h`。

## 烧录 BL602 时怎么配

origin 里 `bootrom_isp_task()` 已含 BL602 路径，移植时固定走这条，不要进 BL702 / BL616 分支。

1. `bootrom_isp_chip_config(0x602)`。`g_isp.clock_para` / `flash_para` 保持 `NULL`，不要调 `bootrom_isp_clock_pll_set`。
2. 走 `if (g_isp.eflash_loader_addr)` 分支：装 loader → **`bootrom_isp_runimage()`** → `bootrom_isp_shakehand55` → 擦写校验。
3. **不要**调用 `bootrom_isp_bl702_runimage()`（origin 主流程里现成调用要改掉）。
4. `flash_read(g_isp.eflash_loader_addr, …)` 改成从存储读 BL602 的 `eflash_loader.bin`（可用本目录 `bl602_eflash_loader_40m.bin`；不要用主机 Flash `0x32000`）。
5. `g_isp.bin_path`（默认 `bl602_whole_img.bin`）改成用户指定的应用 `.bin` 路径。
6. 接线：**RTS→模块 EN，DTR→模块 BOOT**。进 ISP 用 `bootrom_isp_enter()` 的时序，GPIO 改成目标脚。

卡上放两个文件：`eflash_loader.bin`（或文件名含 `eflash_loader`）+ 应用 `.bin`。

## 需要适配的接口

| origin | 换成目标 MCU |
|--------|----------------|
| `bootrom_isp_uart_init` / `device_write` / UART RX 回调 | ISP UART：TX、RX。收发可同时进行。8N1、无流控。波特率 **≤ 2Mbps**（115200 / 921600 / 2Mbps 均可）；按 MCU 能稳定分频的值和可接受的烧录时间自选，全程保持不变 |
| `gpio_write` / `gpio_set_mode`（RTS=EN，DTR=BOOT） | 两路推挽 GPIO |
| `vTaskDelay` / `xTaskGetTickCount` / 信号量 / `xTaskCreate` | 毫秒延时与 tick；可不保留 FreeRTOS |
| `flash_read(eflash_loader_addr, …)` | 从存储读 BL602 `eflash_loader.bin` |
| `f_mount` / `f_open` / `f_read`（`ROOT_PATH`） | 从存储读应用 `.bin` |
| `MSG` / `bflb_platform_dump` / `bflb_platform_get_time_ms` | 独立于 ISP 的日志口与计时 |
| `csi_dcache_clean_range` / `cpu_global_irq_disable` | 无 cache / 非 RTOS 可删 |
| `bootrom_isp_init` + shell `bootrom_isp` | 目标工程自己的入口，存储就绪后执行 `bootrom_isp_task` 里的 BL602 流程 |

## 所需引脚

主机 MCU 接到 BL602 下载口。脚号由用户指定。

| 主机脚 | 接到 | 作用 |
|--------|------|------|
| ISP UART TX | BL602 RX | 发命令和镜像数据 |
| ISP UART RX | BL602 TX | 收应答 |
| RTS（`UART_RTS_PIN`） | 模块 EN / CHIP_EN | 复位 BL602，拉低再拉高进下载 |
| DTR（`UART_DTR_PIN`） | 模块 BOOT | 高电平启动进入烧录模式；低电平启动运行 APP 程序 |
| GND | 共地 | 必须共地 |
| 日志 UART TX | 调试器 RX | 打印进度，**不要**和 ISP 共用同一串口，可不用 |
| 存储（SD/USB 等） | 卡或 U 盘 | 读 `eflash_loader.bin` 和应用 `.bin` |

RTS/DTR 只当普通 GPIO，不要开 UART 硬件流控。有三极管反相时电平自测。

