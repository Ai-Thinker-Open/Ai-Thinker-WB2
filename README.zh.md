<div align="center">

# Ai-Thinker Ai-WB2 开发框架

</div>

[![English](https://img.shields.io/badge/English-README-blue)](README.md)

## 项目介绍

Ai-Thinker Ai-WB2 开发框架是面向 Ai-WB2 无线模组的嵌入式 SDK，基于博流智能 BL IoT SDK。仓库主要支持 BL602 Wi-Fi/BLE RISC-V 平台，同时包含 BL70x 相关平台组件和示例，并提供芯片支持、FreeRTOS、外设与网络组件、Make 构建系统、固定版本的交叉工具链、烧录工具和应用示例。

> 本仓库是固件源码，不是桌面应用程序。可在 Linux 或 WSL2 中编译；烧录和功能验收需要兼容的 Ai-WB2 开发板及正确接线。

## 支持范围

- 主要模组：Ai-Thinker Ai-WB2；
- 主要芯片：BL602，仓库中也包含 BL70x 相关平台内容；
- CPU 架构：RISC-V；
- 操作系统：FreeRTOS；
- 接口与中间件：GPIO、UART、I²C、SPI、PWM、ADC、Wi-Fi、BLE、TCP/IP、文件系统、密码学及各应用按需选择的其他组件；
- 构建系统：GNU Make，以及仓库固定版本的 Linux、macOS、MSYS RISC-V 工具链。

`applications/` 下共有 241 个应用 Makefile，按入门、外设、Wi-Fi、蓝牙、协议、安全、存储、系统和 IoT 方案分类。它们是相互独立的工程；构建 `helloworld` 可以验证公共 BL602 构建路径，但不能代表所有示例和硬件功能都已验证。

源码证据详见 [代码入口](docs/CODE_ENTRY.zh.md)、[架构说明](docs/ARCHITECTURE.zh.md) 和 [构建验证](docs/BUILD_VALIDATION.zh.md)。

## 快速开始

在 Ubuntu 或 WSL2 中执行：

```bash
sudo apt update
sudo apt install build-essential git python3 python3-pip

git clone --recurse-submodules https://github.com/Ai-Thinker-Open/Ai-Thinker-WB2.git
cd Ai-Thinker-WB2

find toolchain/riscv/Linux/bin toolchain/riscv/Linux/libexec \
  -type f -exec chmod u+x {} +

cd applications/get-started/helloworld
make -j8
```

主要产物位于 `applications/get-started/helloworld/build_out/`。

## 环境准备

Debian 或 Ubuntu 安装：

```bash
sudo apt install build-essential git python3 python3-pip
```

Arch Linux 安装：

```bash
sudo pacman -S base-devel git python python-pip
```

使用区分大小写的 Linux 文件系统可以获得最快且更稳定的构建。WSL2 也可以直接从 Windows 盘构建，但放在 WSL2 原生目录中可避免 Windows 时间戳和文件权限差异。

## 获取源码

拉取所有固定版本的工具链与烧录工具子模块：

```bash
git clone --recurse-submodules https://github.com/Ai-Thinker-Open/Ai-Thinker-WB2.git
cd Ai-Thinker-WB2
git submodule status --recursive
```

如果普通 clone 时未包含子模块：

```bash
git submodule update --init --recursive
```

需要可复现构建时，不要随意把子模块切到其他分支。主仓库记录了每个工具链和烧录工具依赖应使用的 Commit。

## 准备工具链

Windows 挂载盘中的 Git 工作树可能不会保存 Unix 执行权限。在 Linux 或 WSL2 中执行：

```bash
find toolchain/riscv/Linux/bin toolchain/riscv/Linux/libexec \
  -type f -exec chmod u+x {} +
```

该命令只修改本地执行权限，不会修改源码内容，也不会改变工具链固定 Commit。

## 编译应用

每个应用目录都有自己的 `Makefile`、`proj_config.mk`、应用组件和可选本地组件。官方 `helloworld` 示例的构建命令为：

```bash
cd applications/get-started/helloworld
make clean
make -j8
```

常用目标：

```bash
make help
make list-components
make clean
```

`helloworld` 主要产物：

- `build_out/helloworld.elf`：包含符号的链接固件；
- `build_out/helloworld.bin`：应用二进制；
- `build_out/helloworld.flash.bin`：烧录二进制；
- `build_out/helloworld.map`：链接 Map。

## 从示例开始开发

`helloworld` 的应用入口位于 `applications/get-started/helloworld/helloworld/main.c`：

```c
void main(void)
{
    printf("Hello World.\r\n");
    /* 在这里启动应用任务和业务逻辑。 */
}
```

新产品可以复制最接近需求的应用示例，设置唯一的 `PROJECT_NAME`，更新 `proj_config.mk`，并把产品源码放在应用自己的组件目录中。除非改动确实需要影响所有应用，否则应避免直接修改公共平台组件。

## 烧录

连接并确认正确的开发板和串口后，在所选应用目录执行：

```bash
make flash p=/dev/ttyUSB0 b=921600
```

只有在确认目标板、串口和供电状态后才执行擦除烧录：

```bash
make eflash p=/dev/ttyUSB0 b=921600
```

烧录会访问物理硬件，不属于本仓库自动构建验证的范围。

## 常见问题

### 编译器提示 `Permission denied`

重新执行[准备工具链](#准备工具链)中的 `find ... chmod` 命令。如果仓库位于 WSL2 的 Windows 挂载盘且权限仍无法保存，请复制到 WSL2 Linux 文件系统中构建。

### 工具链或烧录工具目录为空

初始化子模块：

```bash
git submodule update --init --recursive
```

### Make 提示 `BL60X_SDK_PATH` 无效

请从具体应用目录运行 `make`。如果手动覆盖 `BL60X_SDK_PATH`，应使用不带 Windows 盘符冒号的 Unix 绝对路径。

### 编译成功但开发板不能启动

链接成功不能验证硬件。修改 SDK 前请先确认模组型号、供电、启动脚、串口接线、波特率、Flash 布局和启动日志。

## 已知限制

- 已验证的 `helloworld` 干净构建当前存在 11 条编译告警，详见构建验证；
- 验证只覆盖编译和链接，不包含烧录、射频效果、Wi-Fi/BLE 互操作、外设接线或所有应用示例；
- 工具链和烧录工具是托管在其他服务上的固定子模块，全新递归 clone 时必须能够访问这些地址；
- 部分应用需要额外硬件、凭据或服务配置。不要提交私钥、Wi-Fi 密码、Token 或生产环境地址。

## 贡献说明

提交 Pull Request 前：

- 说明受影响的应用和模组版本；
- 至少执行一次干净构建，并提供命令、主机环境、工具链版本、warning/error 数量和产物名称；
- 修改公共组件时，应尽量构建多个代表性应用；
- 涉及硬件时，提供接线、板卡版本、串口日志和可复现步骤；
- 不要提交 `build_out/`、凭据、生成的密钥或本地 IDE 配置。

## 许可证

本仓库采用 [Apache License 2.0](LICENSE)。第三方组件和子模块可能有自己的许可证，产品再分发前应同时检查相应条款。
