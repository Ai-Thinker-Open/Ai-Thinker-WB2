Ai-Thinker Ai-WB2 Wireless Modules Development Framework
=========

Base on th Bouffalolab bl_iot_sdk. Support BL602 Wi-Fi/BLE Combo RISC-V based Chip and BL70X Zigbee/BLE RISC-V based Chip.

# Linux Users

## Step 1. Install Prerequisites

In order to use Ai-WB2 Development Framework with the Ai-WB2, you need to install some software packages based on your Operating System. This setup guide will help you on getting everything installed on Linux and macOS based systems.

- One liner for Debian or Ubuntu :

`sudo apt install build-essential python3 python3-pip git screen`

- One liner for Arch:

`sudo pacman -S base-devel python python-pip git screen`

- Next, clone the SDK repository:

`git clone --recursive https://github.com/Ai-Thinker-Open/Ai-Thinker-WB2.git` 

if you are coding in the China , recommend you to clone the repository :

`git clone --recursive https://gitee.com/Ai-Thinker-Open/Ai-Thinker-WB2` 
## Step 2. Modify Permission
Modify the permissions of the compilation tool chain to enable executable functions.
- Darwin
```shell
 cd toolchain/riscv/Darwin/
 . chmod755.sh 
```
- Linux
```shell
 cd toolchain/riscv/Linux/
 . chmod755.sh 
```
- MSYS
```shell
 cd toolchain/riscv/MSYS/
 . chmod755.sh 
```
## Step 3. Compiling

For example, run the cd applications/get-started/helloworld project to compile :

```
cd applications/get-started/helloworld
make -j8
```

## Step 4. download

Please connect your Ai-WB2 Serial Development board , and always press the BURN button , then press the EN button . Next , Release all keys.

```
make flash p=/dev/ttyUSB0 b=921600
```