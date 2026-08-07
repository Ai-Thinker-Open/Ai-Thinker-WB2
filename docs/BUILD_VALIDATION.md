<div align="center">

# Build Validation

</div>

[![中文](https://img.shields.io/badge/中文-README-blue)](BUILD_VALIDATION.zh.md)

## Validation target

The repository is a multi-application SDK. The recorded build validates the official BL602 getting-started project:

```text
applications/get-started/helloworld
```

This target exercises the common Make framework, pinned Linux RISC-V toolchain, BL602 platform, FreeRTOS, HOSAL, mbedTLS, lwIP, VFS, logging, CLI, utilities, and the application component. It does not claim that all 241 application Makefiles or their hardware dependencies were tested.

## Reproducible commands

```bash
git submodule update --init --recursive
find toolchain/riscv/Linux/bin toolchain/riscv/Linux/libexec \
  -type f -exec chmod u+x {} +

cd applications/get-started/helloworld
make clean
make -j8
```

Run `make clean` before each recorded build and preserve the complete output. For WSL2, a native Linux path is recommended to avoid Windows timestamp and file-mode differences.

## Success criteria

- The build command exits with status 0;
- The compiler reports no errors;
- `helloworld.elf`, `helloworld.bin`, `helloworld.flash.bin`, and `helloworld.map` exist and are non-empty;
- The final ELF contains `main`, `app_main_entry`, and `vTaskStartScheduler`;
- The source commit, source tree, toolchain Gitlink, environment, warning count, output sizes, and SHA-256 hashes are recorded.

## Verified results

- Source commit: `2420da77a4e8b03df06f3d747224a62e54113a20`;
- Source tree: `ca6e3323287ca6e69a63313b8c40e8ba5e7f7ea6`;
- Local rollback tag: `audit-baseline-before-health-improvements`;
- Linux toolchain Gitlink: `fbff0015ed1657fd5677283b02eab250ab49d43a`;
- Build command: `cd applications/get-started/helloworld && make clean && make -j8`;
- Environment: Ubuntu 22.04.5 LTS on WSL2, Linux `6.18.33.2-microsoft-standard-WSL2`;
- Build tools: GNU Make 4.3, SiFive GCC-Metal 10.2.0-2020.12.8;
- First clean build: passed in 5.37 seconds, 11 compiler warnings, 0 errors;
- Second clean build: passed in 5.18 seconds, 11 compiler warnings, 0 errors;
- Logs: [first clean build](build-logs/Ai-Thinker-WB2-helloworld-clean-build-1.log), [second clean build](build-logs/Ai-Thinker-WB2-helloworld-clean-build-2.log).

The warning count was identical in both runs:

- 5 `-Woverflow` warnings in `components/stage/blog_testc/blog_testc2_full.c`;
- 5 `-Warray-bounds` warnings in `components/platform/hosal/bl602_hal/hal_sys.c`;
- 1 `-Wunused-but-set-variable` warning in `components/platform/hosal/bl602_hal/hosal_uart.c`.

The validation records these existing warnings rather than suppressing or changing shared platform code without a separate regression review.

## Second-build outputs

| Output | Size in bytes | SHA-256 |
| --- | ---: | --- |
| `applications/get-started/helloworld/build_out/helloworld.elf` | 1,103,168 | `a7a448b516362cbbb6db32636f57669dd998314c75e2cd388adb1e1e9a961eb0` |
| `applications/get-started/helloworld/build_out/helloworld.bin` | 68,056 | `0328029d45c97ce638a494d80f48ac3605eb1d6aa9bd3d1bee2d9c5c55fd364a` |
| `applications/get-started/helloworld/build_out/helloworld.flash.bin` | 68,056 | `0328029d45c97ce638a494d80f48ac3605eb1d6aa9bd3d1bee2d9c5c55fd364a` |
| `applications/get-started/helloworld/build_out/helloworld.map` | 1,027,560 | `e485615fc6c9d6db9874b65ac7e7a4f91729b773d6fe3c22e17d09a1ee531737` |

The firmware embeds compile date and time, so ELF or binary hashes from a later clean build may legitimately differ. Hashes above identify the recorded second-run outputs, not a reproducible-build guarantee.

## ELF entry symbols

```text
23000c50 t app_main_entry
23000c00 T main
2300365c T vTaskStartScheduler
```

## Current validation boundary

The results cover compilation and linking of one representative BL602 application only. They do not include:

- `make flash` or physical Flash erase/programming;
- Ai-WB2 boot logs or long-duration operation;
- GPIO, UART, I²C, SPI, PWM, ADC, Wi-Fi, BLE, or network interoperability tests;
- BL70x application builds;
- A full matrix build of every application;
- Security review of third-party components or separately hosted submodules.
