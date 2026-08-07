<div align="center">

# Code Entry

</div>

[![中文](https://img.shields.io/badge/中文-README-blue)](CODE_ENTRY.zh.md)

## Application entry model

Ai-Thinker-WB2 is a multi-application SDK, so there is no single product-level `main()` for the whole repository. Each project selects an application component whose source supplies `main()`. The representative getting-started entry is:

```text
applications/get-started/helloworld/helloworld/main.c:main
```

Its project Makefile sets `PROJECT_NAME := helloworld`, adds `helloworld` to `INCLUDE_COMPONENTS`, and includes `make_scripts_riscv/project.mk`. The application's `bouffalo.mk` then makes `main.c` part of `libhelloworld.a`, which is linked into `helloworld.elf`.

## Platform-to-application call path

The BL602 startup and application-entry sequence is:

1. `components/platform/soc/bl602/bl602/evb/src/boot/gcc/start.S` calls `bfl_main`;
2. `components/platform/soc/bl602/bl602/bfl_main.c:bfl_main` performs early platform setup, creates the event-loop task, and starts FreeRTOS;
3. `aos_loop_proc` initializes enabled shared services and creates `app_main_entry`;
4. `app_main_entry` calls the application-provided `main()`;
5. The `helloworld` implementation prints its message, delays through a restart countdown, and requests a power-on reset.

Configuration macros in `applications/get-started/helloworld/proj_config.mk` control the application task stack, priority, VFS, logging, Wi-Fi/BLE options, and other selected services.

## Representative application code

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

Other examples define their own entry and configuration. When selecting a different application, review that application's Makefile, `proj_config.mk`, component `bouffalo.mk`, and `main.c` together.

## Build-linked evidence

After building `helloworld`, run:

```bash
toolchain/riscv/Linux/bin/riscv64-unknown-elf-nm \
  applications/get-started/helloworld/build_out/helloworld.elf \
  | grep -E ' app_main_entry$| main$| vTaskStartScheduler$'
```

The verified ELF contains:

```text
23000c50 t app_main_entry
23000c00 T main
2300365c T vTaskStartScheduler
```

This proves that the platform task bridge, application entry, and scheduler were linked into the final representative firmware. Exact commits and output hashes are recorded in [Build Validation](BUILD_VALIDATION.md).
