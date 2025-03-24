Ai-Thinker Ai-WB2 Wireless Modules Development Framework
=========



Base on th Bouffalolab bl_iot_sdk. Support BL602 Wi-Fi/BLE Combo RISC-V based Chip and BL70X Zigbee/BLE RISC-V based Chip.



# Linux Users



## Step 1. Install Prerequisites

In order to use Ai-WB2 Development Framework with the Ai-WB2, you need to install some software packages based on your Operating System. This setup guide will help you on getting everything installed on Linux and macOS based systems.

- One liner for Debian or Ubuntu :

`sudo apt install build-essential python3 python3-pip git screen`

- One liner for Arch:

`paru -S aithinkerwb2 ` or `yay -S aithinkerwb2`

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

```bash
cd applications/get-started/helloworld
make -j8
```



## Step 4. download

Please connect your Ai-WB2 Serial Development board , and press the EN button according to the prompts.

```bash
make flash p=/dev/ttyUSB0 b=921600
```


## Step 5. Other

In addition, you can use this command to view help.
```bash
make help
```
> Your configuration chipname is Ai-Thinker Ai-WB2 Wi-Fi&BLE Module
> 
>Welcome to Ai-WB2 SDK build system. make targets:
>
> - "make all" - Build app, components
> - "make clean" - Remove all app components output
> - "make flash" - Build and download firmware 
> - "make flash-only" - Only download firmware
> - "make eflash" - Use the flash after erasing it
> - "make erase_flash" - Erase all internal contents of flash
> - "make list-components" - List all components in the project
> - "make [component name]" - build a component as a library


Note: After erasing the flash, you need to use this command to download it,but always press the BURN button,then press the EN button.next,release all keys.
```bash
make eflash
```





# API Guide

---

Read the documentation located in the `docs` directory under `en-us`.

To visualize and load a document locally, you can start an HTTP server in the `docs` directory. Here’s how you can do it:

1. **Using Python** (if you have Python installed):

   - Navigate to the docs directory:

     ```bash
     cd /path/to/docs
     ```

   - Start a simple HTTP server

     - for Python3.x:

     ```bash
     python3 -m http.server 8000
     ```

     - for Python2.x:

     ```bash
     python -m SimpleHTTPServer 8000
     ```

2. **Using Node.js**: If you prefer using Node.js, you can use a package like `http-server`:

   - Install `http-server` globally:

     ```bash
     npm install -g http-server
     ```

   - Navigate to the `docs` directory and run the server:

     ```bash
     cd /path/to/docs
     http-server -p 8000
     ```

   Once the server is running, you can access the documents in your browser by going to `http://localhost:8000`.
