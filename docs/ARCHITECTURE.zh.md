<div align="center">

# 架构说明

</div>

[![English](https://img.shields.io/badge/English-README-blue)](ARCHITECTURE.md)

## 仓库分层

| 层级 | 路径 | 职责 |
| --- | --- | --- |
| 应用工程 | `applications/` | 相互独立的固件工程，包含项目 Makefile、配置、应用组件和可选本地组件 |
| 构建编排 | `make_scripts_riscv/` | 组件发现、逐组件编译、静态库生成、链接、二进制转换、清理、帮助和烧录目标 |
| SoC 与开发板平台 | `components/platform/` | BL602/BL70x 启动、标准驱动、硬件抽象、开发板配置和平台入口代码 |
| 操作系统 | `components/os/` | 各项目按需选择的 FreeRTOS 和操作系统适配层 |
| 网络 | `components/network/` | Wi-Fi、BLE、TCP/IP、HTTP、MQTT、配网及相关协议组件 |
| 服务与中间件 | `components/stage/`、`components/sys/`、`components/utils/` | 日志、CLI、事件循环、存储辅助、OTA、诊断和通用工具 |
| 文件系统与安全 | `components/fs/`、`components/security/` | VFS/文件系统组件，以及密码学库或适配层 |
| 固定工具链 | `toolchain/riscv/` | 通过 Gitlink 固定版本的 Linux、macOS、MSYS RISC-V 编译器套件 |
| 开发工具 | `tools/` | 烧录、调试、CI、镜像和辅助工具 |

实际使用的组件集合由应用决定。项目 Makefile 通过 `INCLUDE_COMPONENTS` 声明组件，`make_scripts_riscv/project.mk` 查找匹配的 `bouffalo.mk`，并只构建被选中的组件图。

## 构建关系

```text
application/Makefile
  ├─ proj_config.mk（功能与开发板配置）
  ├─ 应用组件/bouffalo.mk
  └─ make_scripts_riscv/project.mk
       ├─ 查找所选组件的 bouffalo.mk
       ├─ 把每个组件编译为 lib<component>.a
       ├─ 链接 <project>.elf 并生成 <project>.map
       └─ 转换 <project>.bin / <project>.flash.bin
```

`applications/get-started/helloworld` 选择 BL602 平台、FreeRTOS、newlibc、HOSAL、mbedTLS、lwIP、VFS、事件循环、日志、CLI、Core Dump 和应用组件。本次构建验证以它作为公共构建路径的代表。

## BL602 运行时流程

```text
components/platform/soc/bl602/bl602/evb/src/boot/gcc/start.S
  → bfl_main()
  → 芯片、UART、堆、安全、Boot 与开发板早期初始化
  → 创建 aos_loop_proc 任务
  → vTaskStartScheduler()
  → 初始化 proj_config.mk 选择的 VFS / 事件循环服务
  → 创建 app_main_entry 任务
  → 调用应用自己的 main()
```

应用定义的 `main()` 不是复位入口。BL602 启动汇编先调用平台 `bfl_main()`，完成公共服务初始化并启动 FreeRTOS；内部 `app_main_entry()` 任务随后调用所选应用组件提供的 `main()`。

## 扩展边界

- 产品逻辑应放在 `applications/` 下的应用组件中；
- 功能开关应放在应用的 `proj_config.mk` 和 Makefile 中；
- 可复用驱动或中间件可以实现为带独立 `bouffalo.mk` 的组件；
- `components/platform/` 下的公共平台修改会影响多个应用，需要更广泛的回归构建；
- 除非要进行单独审核的依赖升级，否则工具链和烧录工具 Gitlink 应保持固定。

## 验证边界

- Makefile、组件静态库、链接 Map 和 ELF 符号可以证明组件被选择并链接；
- 构建 `helloworld` 不能证明 241 个应用 Makefile 全部构建成功；
- 静态编译不能验证开发板接线、射频效果、串口时序、Flash 烧录或 Wi-Fi/BLE 互操作；
- 第三方组件及单独托管的子模块仍需依据其自身源码和许可证进行审核。
