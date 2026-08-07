<div align="center">

# 构建验证

</div>

[![English](https://img.shields.io/badge/English-README-blue)](BUILD_VALIDATION.md)

## 验证目标

本仓库是多应用 SDK。本次构建验证选择官方 BL602 入门工程：

```text
applications/get-started/helloworld
```

该目标会经过公共 Make 框架、固定 Linux RISC-V 工具链、BL602 平台、FreeRTOS、HOSAL、mbedTLS、lwIP、VFS、日志、CLI、工具组件和应用组件。它不代表 241 个应用 Makefile 及其硬件依赖已全部测试。

## 可复现命令

```bash
git submodule update --init --recursive
find toolchain/riscv/Linux/bin toolchain/riscv/Linux/libexec \
  -type f -exec chmod u+x {} +

cd applications/get-started/helloworld
make clean
make -j8
```

每次记录构建前执行 `make clean`，并保存完整输出。WSL2 建议使用 Linux 原生路径，以避免 Windows 时间戳和文件权限差异。

## 成功判定

- 构建命令退出码为 0；
- 编译器没有报告 error；
- `helloworld.elf`、`helloworld.bin`、`helloworld.flash.bin` 和 `helloworld.map` 存在且非空；
- 最终 ELF 包含 `main`、`app_main_entry` 和 `vTaskStartScheduler`；
- 记录源码 Commit、源码 Tree、工具链 Gitlink、环境、告警数量、产物大小和 SHA-256。

## 已验证结果

- 源码 Commit：`2420da77a4e8b03df06f3d747224a62e54113a20`；
- 源码 Tree：`ca6e3323287ca6e69a63313b8c40e8ba5e7f7ea6`；
- 本地回退标签：`audit-baseline-before-health-improvements`；
- Linux 工具链 Gitlink：`fbff0015ed1657fd5677283b02eab250ab49d43a`；
- 构建命令：`cd applications/get-started/helloworld && make clean && make -j8`；
- 环境：Ubuntu 22.04.5 LTS on WSL2，Linux `6.18.33.2-microsoft-standard-WSL2`；
- 构建工具：GNU Make 4.3，SiFive GCC-Metal 10.2.0-2020.12.8；
- 第一次干净构建：通过，5.37 秒，11 条编译告警，0 errors；
- 第二次干净构建：通过，5.18 秒，11 条编译告警，0 errors；
- 日志：[第一次干净构建](build-logs/Ai-Thinker-WB2-helloworld-clean-build-1.log)、[第二次干净构建](build-logs/Ai-Thinker-WB2-helloworld-clean-build-2.log)。

两次构建的告警数量一致：

- `components/stage/blog_testc/blog_testc2_full.c` 中 5 条 `-Woverflow`；
- `components/platform/hosal/bl602_hal/hal_sys.c` 中 5 条 `-Warray-bounds`；
- `components/platform/hosal/bl602_hal/hosal_uart.c` 中 1 条 `-Wunused-but-set-variable`。

本次只记录这些既有告警，没有在缺少单独回归审核的情况下通过抑制告警或修改公共平台代码来提高分数。

## 第二次构建产物

| 产物 | 字节数 | SHA-256 |
| --- | ---: | --- |
| `applications/get-started/helloworld/build_out/helloworld.elf` | 1,103,168 | `a7a448b516362cbbb6db32636f57669dd998314c75e2cd388adb1e1e9a961eb0` |
| `applications/get-started/helloworld/build_out/helloworld.bin` | 68,056 | `0328029d45c97ce638a494d80f48ac3605eb1d6aa9bd3d1bee2d9c5c55fd364a` |
| `applications/get-started/helloworld/build_out/helloworld.flash.bin` | 68,056 | `0328029d45c97ce638a494d80f48ac3605eb1d6aa9bd3d1bee2d9c5c55fd364a` |
| `applications/get-started/helloworld/build_out/helloworld.map` | 1,027,560 | `e485615fc6c9d6db9874b65ac7e7a4f91729b773d6fe3c22e17d09a1ee531737` |

固件会写入编译日期和时间，因此以后再次干净构建得到的 ELF 或二进制哈希可能合理地不同。上表哈希只用于标识第二次记录的产物，不表示已经实现可复现二进制构建。

## ELF 入口符号

```text
23000c50 t app_main_entry
23000c00 T main
2300365c T vTaskStartScheduler
```

## 当前验证边界

结果只覆盖一个代表性 BL602 应用的编译和链接，不包含：

- `make flash` 或物理 Flash 擦除、烧录；
- Ai-WB2 启动日志或长时间运行；
- GPIO、UART、I²C、SPI、PWM、ADC、Wi-Fi、BLE 或网络互操作测试；
- BL70x 应用构建；
- 所有应用的完整矩阵构建；
- 第三方组件或单独托管子模块的安全审查。
