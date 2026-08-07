<div align="center">

# Ai-Thinker Ai-WB2 Development Framework

</div>

[![中文](https://img.shields.io/badge/中文-README-blue)](README.zh.md)

## Project overview

Ai-Thinker Ai-WB2 Development Framework is an embedded SDK for Ai-WB2 wireless modules based on Bouffalo Lab's BL IoT SDK. It targets the BL602 Wi-Fi/BLE RISC-V platform and also contains BL70x platform components and examples. The repository provides chip support, FreeRTOS, peripheral and network components, a Make-based build system, fixed cross-toolchains, flashing tools, and application examples.

> This repository contains firmware source code rather than a desktop application. Compilation can be performed on Linux or WSL2. Flashing and functional acceptance require a compatible Ai-WB2 board and correct wiring.

## Supported scope

- Primary module: Ai-Thinker Ai-WB2;
- Primary chip: BL602, with BL70x-related platform content also present;
- CPU architecture: RISC-V;
- Operating system: FreeRTOS;
- Interfaces and middleware: GPIO, UART, I²C, SPI, PWM, ADC, Wi-Fi, BLE, TCP/IP, file systems, cryptography, and other components selected by each application;
- Build system: GNU Make with repository-pinned RISC-V toolchains for Linux, macOS, and MSYS.

The repository contains 241 application Makefiles under `applications/`, grouped into getting-started, peripheral, Wi-Fi, Bluetooth, protocol, security, storage, system, and IoT-solution examples. They are independent projects; building `helloworld` validates the common BL602 build path, not every example or hardware feature.

See [Code Entry](docs/CODE_ENTRY.md), [Architecture](docs/ARCHITECTURE.md), and [Build Validation](docs/BUILD_VALIDATION.md) for source-backed technical evidence.

## Quick start

On Ubuntu or WSL2:

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

The main outputs are written to `applications/get-started/helloworld/build_out/`.

## Prerequisites

Install these packages on Debian or Ubuntu:

```bash
sudo apt install build-essential git python3 python3-pip
```

On Arch Linux:

```bash
sudo pacman -S base-devel git python python-pip
```

Use a case-sensitive Linux file system for the fastest and most predictable builds. WSL2 users can build directly from a Windows drive, but a WSL2-native directory avoids Windows timestamp and file-mode differences.

## Get the source

Clone all fixed toolchain and flashing-tool submodules:

```bash
git clone --recurse-submodules https://github.com/Ai-Thinker-Open/Ai-Thinker-WB2.git
cd Ai-Thinker-WB2
git submodule status --recursive
```

If the repository was cloned without submodules:

```bash
git submodule update --init --recursive
```

Do not switch a submodule to an arbitrary branch when a reproducible build is required. The superproject records the expected commit for each toolchain and flashing-tool dependency.

## Prepare the toolchain

Git checkouts on Windows-mounted disks may not preserve Unix execute permissions. On Linux or WSL2, run:

```bash
find toolchain/riscv/Linux/bin toolchain/riscv/Linux/libexec \
  -type f -exec chmod u+x {} +
```

This command changes only local execute permissions. It does not edit source files or move the pinned toolchain commit.

## Build an application

Each application directory contains its own `Makefile`, `proj_config.mk`, application component, and optional local components. Build the official `helloworld` example with:

```bash
cd applications/get-started/helloworld
make clean
make -j8
```

Useful targets include:

```bash
make help
make list-components
make clean
```

The `helloworld` outputs are:

- `build_out/helloworld.elf`: linked firmware with symbols;
- `build_out/helloworld.bin`: application binary;
- `build_out/helloworld.flash.bin`: flashing binary;
- `build_out/helloworld.map`: linker map.

## Use an example as a starting point

The application entry for `helloworld` is `applications/get-started/helloworld/helloworld/main.c`:

```c
void main(void)
{
    printf("Hello World.\r\n");
    /* Application tasks and logic start here. */
}
```

For a new product, copy the closest application example, give it a unique `PROJECT_NAME`, update `proj_config.mk`, and keep product-specific sources in the application's own component directory. Avoid editing common platform components unless the change is intended for every application.

## Flashing

After connecting the correct board and serial port, run from the selected application directory:

```bash
make flash p=/dev/ttyUSB0 b=921600
```

Erase and flash only when the target board, port, and power state have been confirmed:

```bash
make eflash p=/dev/ttyUSB0 b=921600
```

Flashing accesses physical hardware and is not part of the automated build validation recorded in this repository.

## Troubleshooting

### The compiler reports `Permission denied`

Run the `find ... chmod` command in [Prepare the toolchain](#prepare-the-toolchain). If the repository is on a Windows-mounted WSL2 drive and permissions still do not persist, copy it into the WSL2 Linux file system.

### A toolchain or flashing-tool directory is empty

Initialize the submodules:

```bash
git submodule update --init --recursive
```

### Make reports an invalid `BL60X_SDK_PATH`

Run `make` from an application directory. If overriding `BL60X_SDK_PATH`, pass an absolute Unix-style path without a Windows drive colon.

### The build succeeds but the board does not boot

A successful link does not validate hardware. Confirm the exact module variant, power supply, boot straps, serial wiring, baud rate, Flash layout, and boot log before changing SDK code.

## Known limitations

- The verified `helloworld` clean build currently emits 11 compiler warnings; see the build-validation record;
- The validation covers compilation and linking only, not flashing, RF behavior, Wi-Fi/BLE interoperability, peripheral wiring, or every application example;
- Toolchains and the flashing tool are pinned submodules hosted separately and must be available during a fresh recursive clone;
- Some applications may require additional hardware, credentials, or service configuration. Never commit private keys, Wi-Fi passwords, tokens, or production endpoints.

## Contributing

Before opening a pull request:

- Identify the application and module variant affected;
- Run at least one clean build and include the command, host environment, toolchain version, warning/error count, and output names;
- For shared-component changes, build more than one representative application when practical;
- For hardware changes, include wiring, board revision, serial logs, and reproducible test steps;
- Do not commit `build_out/`, credentials, generated secrets, or local IDE settings.

## License

The repository is distributed under the [Apache License 2.0](LICENSE). Third-party components and submodules may contain their own license terms; review those terms when redistributing a product.
