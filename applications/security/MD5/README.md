# MD5 Example
This routine shows the MD5 verification process and the overall verification results,used to verify the correctness of process verification and overall verification.
## Example Output
```shell
Starting bl602 now....
Booting Ai-WB2 Modules...
RISC-V Core Feature:RV32-ACFIMX
Build Version: release_bl_iot_sdk_1.6.38
Build Date: Nov 17 2022
Build Time: 09:36:26

blog init set power on level 2, 2, 2.
[IRQ] Clearing and Disable all the pending IRQ...
INFO (0)[hal_boot2.c: 251] [HAL] [BOOT2] Active Partition[0] consumed 596 Bytes
INFO (0)[hal_boot2.c:  53] ======= PtTable_Config @0x4200d17c=======
INFO (0)[hal_boot2.c:  54] magicCode 0x54504642; version 0x0000; entryCnt 7; age 0; crc32 0x12DF9A26
INFO (0)[hal_boot2.c:  59] idx  type device activeIndex     name   Address[0]  Address[1]  Length[0]   Length[1]   age
INFO (0)[hal_boot2.c:  61] [00]  00     0         0            FW  0x00010000  0x000e8000  0x000d8000  0x00088000  0
INFO (0)[hal_boot2.c:  61] [01]  02     0         0           mfg  0x00170000  0x00000000  0x00032000  0x00000000  0
INFO (0)[hal_boot2.c:  61] [02]  03     0         0         media  0x001a2000  0x00000000  0x00047000  0x00000000  0
INFO (0)[hal_boot2.c:  61] [03]  04     0         0           PSM  0x001e9000  0x00000000  0x00008000  0x00000000  0
INFO (0)[hal_boot2.c:  61] [04]  05     0         0           KEY  0x001f1000  0x00000000  0x00002000  0x00000000  0
INFO (0)[hal_boot2.c:  61] [05]  06     0         0          DATA  0x001f3000  0x00000000  0x00005000  0x00000000  0
INFO (0)[hal_boot2.c:  61] [06]  07     0         0       factory  0x001f8000  0x00000000  0x00007000  0x00000000  0
INFO (0)[bl_flash.c: 363] ======= FlashCfg magiccode @0x42049c18=======
INFO (0)[bl_flash.c: 364] mid           0xC8
INFO (0)[bl_flash.c: 365] clkDelay      0x1
INFO (0)[bl_flash.c: 366] clkInvert     0x1
INFO (0)[bl_flash.c: 367] sector size   4KBytes
INFO (0)[bl_flash.c: 368] page size     256Bytes
INFO (0)[bl_flash.c: 369] ---------------------------------------------------------------
INFO (0)[hal_board.c:1271] [MAIN] [BOARD] [FLASH] addr from partition is 001f8000, ret is 0
INFO (0)[hal_board.c:1279] [MAIN] [BOARD] [XIP] addr from partition is 231e7000, ret is 0
[OS] Starting aos_loop_proc task...
[OS] Starting OS Scheduler...
INFO (5)[main.c:  40] Update process:hello
INFO (7)[main.c:  43] Update process:-
INFO (11)[main.c:  46] Update process:Ai-WB2-Kit
INFO:(        17)[main.c:  49] MD5:0000-000F: 6A A2 56 18 28 A0 45 F7  4E DB A1 7E A2 ED 96 65    j.V.(.E.N..~...e
INFO (28)[main.c:  55] Update process:hello-Ai-WB2-Kit
INFO:(        34)[main.c:  56] MD5:0000-000F: 6A A2 56 18 28 A0 45 F7  4E DB A1 7E A2 ED 96 65    j.V.(.E.N..~...e
```
## Troubleshooting

For any technical queries, please open an [issue](https://github.com/Ai-Thinker-Open/Ai-Thinker-WB2/issues) on GitHub. We will get back to you soon.