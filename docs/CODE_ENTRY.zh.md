<div align="center">

# 代码入口

</div>

[![English](https://img.shields.io/badge/English-README-blue)](CODE_ENTRY.md)

## 应用入口模型

Ai-Thinker-WB2 是多应用 SDK，因此整个仓库不存在唯一的产品级 `main()`。每个工程会选择一个提供 `main()` 的应用组件。代表性的入门入口为：

```text
applications/get-started/helloworld/helloworld/main.c:main
```

项目 Makefile 设置 `PROJECT_NAME := helloworld`，把 `helloworld` 加入 `INCLUDE_COMPONENTS`，并包含 `make_scripts_riscv/project.mk`。应用的 `bouffalo.mk` 随后使 `main.c` 参与 `libhelloworld.a` 构建，并最终链接进 `helloworld.elf`。

## 平台到应用的调用路径

BL602 启动与应用入口顺序为：

1. `components/platform/soc/bl602/bl602/evb/src/boot/gcc/start.S` 调用 `bfl_main`；
2. `components/platform/soc/bl602/bl602/bfl_main.c:bfl_main` 完成平台早期初始化，创建事件循环任务并启动 FreeRTOS；
3. `aos_loop_proc` 初始化已启用的公共服务，并创建 `app_main_entry`；
4. `app_main_entry` 调用应用提供的 `main()`；
5. `helloworld` 实现打印信息，执行重启倒计时，并请求上电复位。

`applications/get-started/helloworld/proj_config.mk` 中的宏控制应用任务栈、优先级、VFS、日志、Wi-Fi/BLE 选项及其他被选服务。

## 代表性应用代码

```c
void main(void)
{
    printf("Hello World.\r\n");
    for (int i = 10; i >= 0; i--)
    {
        printf("Restarting in %d seconds...\r\n", i);
        vTaskDelay(1000 / portTICK_PERIOD_MS);
    }
    bl_sys_reset_por();
}
```

其他示例有各自的入口和配置。切换应用时，应同时检查该应用的 Makefile、`proj_config.mk`、组件 `bouffalo.mk` 和 `main.c`。

## 构建链接证据

构建 `helloworld` 后执行：

```bash
toolchain/riscv/Linux/bin/riscv64-unknown-elf-nm \
  applications/get-started/helloworld/build_out/helloworld.elf \
  | grep -E ' app_main_entry$| main$| vTaskStartScheduler$'
```

已验证 ELF 包含：

```text
23000c50 t app_main_entry
23000c00 T main
2300365c T vTaskStartScheduler
```

这证明平台任务桥、应用入口和调度器已链接进最终代表性固件。具体 Commit 和产物哈希见[构建验证](BUILD_VALIDATION.zh.md)。
