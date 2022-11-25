# hello world Example

## Example Output

Starts a FreeRTOS task to print "Hello World". As you run the example, you will see the log :

```
Booting Ai-WB2 Modules...
------------------------------------------------------------
RISC-V Core Feature:RV32-ACFIMX
Build Version: release_bl_iot_sdk_1.6.38
Build Date: Oct  8 2022
Build Time: 14:51:34
------------------------------------------------------------

blog init set power on level 2, 2, 2.
[IRQ] Clearing and Disable all the pending IRQ...
[         0][INFO: hal_boot2.c: 282] [HAL] [BOOT2] Active Partition[0] consumed 596 Bytes
[         0][INFO: hal_boot2.c:  82] ======= PtTable_Config @0x4200d168=======
[         0][INFO: hal_boot2.c:  83] magicCode 0x54504642; version 0x0000; entryCnt 7; age 0; crc32 0x12DF9A26
[         0][INFO: hal_boot2.c:  89] idx  type device activeIndex     name   Address[0]  Address[1]  Length[0]   Length[1]   age
[         0][INFO: hal_boot2.c:  91] [00]  00     0         0            FW  0x00010000  0x000e8000  0x000d8000  0x00088000  0
[         0][INFO: hal_boot2.c:  91] [01]  02     0         0           mfg  0x00170000  0x00000000  0x00032000  0x00000000  0
[         0][INFO: hal_boot2.c:  91] [02]  03     0         0         media  0x001a2000  0x00000000  0x00047000  0x00000000  0
[         0][INFO: hal_boot2.c:  91] [03]  04     0         0           PSM  0x001e9000  0x00000000  0x00008000  0x00000000  0
[         0][INFO: hal_boot2.c:  91] [04]  05     0         0           KEY  0x001f1000  0x00000000  0x00002000  0x00000000  0
[         0][INFO: hal_boot2.c:  91] [05]  06     0         0          DATA  0x001f3000  0x00000000  0x00005000  0x00000000  0
[         0][INFO: hal_boot2.c:  91] [06]  07     0         0       factory  0x001f8000  0x00000000  0x00007000  0x00000000  0
[         0][INFO: bl_flash.c: 391] ======= FlashCfg magiccode @0x42049c18=======
[         0][INFO: bl_flash.c: 392] mid 		0x5E
[         0][INFO: bl_flash.c: 393] clkDelay 	0x1
[         0][INFO: bl_flash.c: 394] clkInvert 	0x1
[         0][INFO: bl_flash.c: 395] sector size	4KBytes
[         0][INFO: bl_flash.c: 396] page size	256Bytes
[         0][INFO: bl_flash.c: 397] ---------------------------------------------------------------
[         0][INFO: hal_board.c:1249] [MAIN] [BOARD] [FLASH] addr from partition is 001f8000, ret is 0
[         0][INFO: hal_board.c:1257] [MAIN] [BOARD] [XIP] addr from partition is 231e7000, ret is 0
Hello World.
Restarting in 10 seconds...
Restarting in 9 seconds...
Restarting in 8 seconds...
Restarting in 7 seconds...
Restarting in 6 seconds...
Restarting in 5 seconds...
Restarting in 4 seconds...
Restarting in 3 seconds...
Restarting in 2 seconds...
Restarting in 1 seconds...
Restarting in 0 seconds...
```

## Troubleshooting

For any technical queries, please open an [issue](https://github.com/Ai-Thinker-Open/Ai-Thinker-WB2/issues) on GitHub. We will get back to you soon.