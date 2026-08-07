<div align="center">

# Architecture

</div>

[![中文](https://img.shields.io/badge/中文-README-blue)](ARCHITECTURE.zh.md)

## Repository layers

| Layer | Path | Responsibility |
| --- | --- | --- |
| Application projects | `applications/` | Independent firmware projects with a project Makefile, configuration, application component, and optional local components |
| Build orchestration | `make_scripts_riscv/` | Component discovery, per-component compilation, static-library creation, linking, binary conversion, clean, help, and flashing targets |
| SoC and board platform | `components/platform/` | BL602/BL70x startup, standard drivers, hardware abstraction, board configuration, and platform entry code |
| Operating system | `components/os/` | FreeRTOS and OS adaptation layers selected by each project |
| Networking | `components/network/` | Wi-Fi, BLE, TCP/IP, HTTP, MQTT, provisioning, and related protocol components |
| Services and middleware | `components/stage/`, `components/sys/`, `components/utils/` | Logging, CLI, event loops, storage helpers, OTA, diagnostics, and reusable utilities |
| File systems and security | `components/fs/`, `components/security/` | VFS/file-system components and cryptographic libraries or adapters |
| Fixed toolchains | `toolchain/riscv/` | Gitlink-pinned RISC-V compiler suites for Linux, macOS, and MSYS |
| Development tools | `tools/` | Flashing, debugging, CI, image, and support utilities |

The exact component set is application-specific. A project declares `INCLUDE_COMPONENTS` in its Makefile; `make_scripts_riscv/project.mk` finds matching `bouffalo.mk` files and builds only the selected component graph.

## Build relationships

```text
application/Makefile
  ├─ proj_config.mk (feature and board configuration)
  ├─ application component/bouffalo.mk
  └─ make_scripts_riscv/project.mk
       ├─ discover selected component bouffalo.mk files
       ├─ compile each component into lib<component>.a
       ├─ link <project>.elf and generate <project>.map
       └─ objcopy <project>.bin / <project>.flash.bin
```

For `applications/get-started/helloworld`, the project selects the BL602 platform, FreeRTOS, newlibc, HOSAL, mbedTLS, lwIP, VFS, event-loop, logging, CLI, core-dump, and application components. This is the representative common path used for the recorded build validation.

## BL602 runtime flow

```text
components/platform/soc/bl602/bl602/evb/src/boot/gcc/start.S
  → bfl_main()
  → early chip, UART, heap, security, boot, and board initialization
  → create aos_loop_proc task
  → vTaskStartScheduler()
  → initialize VFS / event-loop services selected by proj_config.mk
  → create app_main_entry task
  → call the application's main()
```

The application-defined `main()` is not the reset handler. BL602 startup assembly calls the platform `bfl_main()`, which initializes shared services and starts FreeRTOS. The internal `app_main_entry()` task then invokes the `main()` supplied by the selected application component.

## Extension boundaries

- Product logic belongs in an application component under `applications/`;
- Feature selection belongs in the application's `proj_config.mk` and Makefile;
- Reusable drivers or middleware can be implemented as components with their own `bouffalo.mk`;
- Common platform changes under `components/platform/` affect many applications and require broader regression builds;
- Toolchain and flashing-tool Gitlinks should remain pinned unless a separately reviewed dependency upgrade is intended.

## Verification boundary

- Makefiles, component archives, the linker map, and ELF symbols demonstrate component selection and linking;
- A `helloworld` build does not prove that every one of the 241 application Makefiles builds successfully;
- Static compilation cannot validate board wiring, RF behavior, serial timing, Flash programming, or Wi-Fi/BLE interoperability;
- Third-party component behavior and separately hosted submodules remain subject to their own source and license review.
