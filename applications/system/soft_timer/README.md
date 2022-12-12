# soft timer Example

## Example Output

As you run the example, you will see the log :

```
Starting bl602 now....
Booting Ai-WB2 Modules...
RISC-V Core Feature:RV32-ACFIMX
Build Version: release_bl_iot_sdk_1.6.38
Build Date: Dec 12 2022
Build Time: 13:54:49

blog init set power on level 2, 2, 2.
[IRQ] Clearing and Disable all the pending IRQ...
INFO (0)[hal_boot2.c: 251] [HAL] [BOOT2] Active Partition[0] consumed 596 Bytes
INFO (0)[hal_boot2.c:  53] ======= PtTable_Config @0x4200d170=======
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
INFO (0)[bl_flash.c: 364] mid           0x5E
INFO (0)[bl_flash.c: 365] clkDelay      0x1
INFO (0)[bl_flash.c: 366] clkInvert     0x1
INFO (0)[bl_flash.c: 367] sector size   4KBytes
INFO (0)[bl_flash.c: 368] page size     256Bytes
INFO (0)[bl_flash.c: 369] ---------------------------------------------------------------
INFO (0)[hal_board.c:1279] [MAIN] [BOARD] [FLASH] addr from partition is 001f8000, ret is 0
INFO (0)[hal_board.c:1287] [MAIN] [BOARD] [XIP] addr from partition is 231e7000, ret is 0
[OS] Starting aos_loop_proc task...
[OS] Starting OS Scheduler...
INFO (105)[main.c:  21] timer1_cb:1

INFO (205)[main.c:  21] timer1_cb:2

INFO (305)[main.c:  21] timer1_cb:3

INFO (405)[main.c:  21] timer1_cb:4

INFO (505)[main.c:  21] timer1_cb:5

INFO (605)[main.c:  21] timer1_cb:6

INFO (705)[main.c:  21] timer1_cb:7

INFO (805)[main.c:  21] timer1_cb:8

INFO (905)[main.c:  21] timer1_cb:9

INFO (1005)[main.c:  26] timer2_cb:delete timer2 and stop timer1

INFO (3006)[main.c:  33] timer3_cb:start timer1 again and change timer cycle

INFO (4011)[main.c:  21] timer1_cb:10

INFO (5011)[main.c:  21] timer1_cb:11

INFO (6011)[main.c:  21] timer1_cb:12

INFO (7011)[main.c:  21] timer1_cb:13

INFO (8011)[main.c:  21] timer1_cb:14

INFO (9011)[main.c:  21] timer1_cb:15

INFO (10011)[main.c:  21] timer1_cb:16

INFO (11011)[main.c:  21] timer1_cb:17
```

## Troubleshooting

For any technical queries, please open an [issue](https://github.com/Ai-Thinker-Open/Ai-Thinker-WB2/issues) on GitHub. We will get back to you soon.