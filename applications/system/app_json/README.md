# app_json Example
This project uses the cjson component in the components component.
It is located in`components`-->`stage`-->`cjson`
When using, reference this component in the Makefile, and then reference the header file in the source file.
**Use of Makefile**
```makefile
COMPONENTS_VFS     := romfs cjson
```
**References to source files**
```c
#include <cJSON.h>
```
This project takes the following json data as an example to create and parse the data.
```json
{
 "name": "aithinker",
 "age": 22,
 "address": {
  "country": "China",
  "zip-code": 111111
 },
 "skill": ["C", "Java", "Python"],
 "KOL": false
}
```
## Example Output
```shell
Booting Ai-WB2 Modules...
------------------------------------------------------------
RISC-V Core Feature:RV32-ACFIMX
Build Version: release_bl_iot_sdk_1.6.38
Build Date: Oct 21 2022
Build Time: 22:03:06
------------------------------------------------------------

blog init set power on level 2, 2, 2.
[IRQ] Clearing and Disable all the pending IRQ...
INFO (0)[hal_boot2.c: 285] [HAL] [BOOT2] Active Partition[0] consumed 596 Bytes
INFO (0)[hal_boot2.c:  82] ======= PtTable_Config @0x4200d380=======
INFO (0)[hal_boot2.c:  83] magicCode 0x54504642; version 0x0000; entryCnt 7; age 0; crc32 0x12DF9A26
INFO (0)[hal_boot2.c:  91] idx  type device activeIndex     name   Address[0]  Address[1]  Length[0]   Length[1]   age
INFO (0)[hal_boot2.c:  93] [00]  00     0         0            FW  0x00010000  0x000e8000  0x000d8000  0x00088000  0
INFO (0)[hal_boot2.c:  93] [01]  02     0         0           mfg  0x00170000  0x00000000  0x00032000  0x00000000  0
INFO (0)[hal_boot2.c:  93] [02]  03     0         0         media  0x001a2000  0x00000000  0x00047000  0x00000000  0
INFO (0)[hal_boot2.c:  93] [03]  04     0         0           PSM  0x001e9000  0x00000000  0x00008000  0x00000000  0
INFO (0)[hal_boot2.c:  93] [04]  05     0         0           KEY  0x001f1000  0x00000000  0x00002000  0x00000000  0
INFO (0)[hal_boot2.c:  93] [05]  06     0         0          DATA  0x001f3000  0x00000000  0x00005000  0x00000000  0
INFO (0)[hal_boot2.c:  93] [06]  07     0         0       factory  0x001f8000  0x00000000  0x00007000  0x00000000  0
INFO (0)[bl_flash.c: 392] ======= FlashCfg magiccode @0x42049c18=======
INFO (0)[bl_flash.c: 393] mid           0x5E
INFO (0)[bl_flash.c: 394] clkDelay      0x1
INFO (0)[bl_flash.c: 395] clkInvert     0x1
INFO (0)[bl_flash.c: 396] sector size   4KBytes
INFO (0)[bl_flash.c: 397] page size     256Bytes
INFO (0)[bl_flash.c: 398] ---------------------------------------------------------------
INFO (0)[hal_board.c:1289] [MAIN] [BOARD] [FLASH] addr from partition is 001f8000, ret is 0
INFO (0)[hal_board.c:1297] [MAIN] [BOARD] [XIP] addr from partition is 231e7000, ret is 0
INFO (5)[main.c: 121] json demo Start
INFO (8)[main.c:  57] {
 "name": "aithinker",
 "age": 22,
 "address": {
  "country": "China",
  "zip-code": 111111
 },
 "skill": ["C", "Java", "Python"],
 "KOL": false
}
INFO (22)[main.c:  58] {"name":"aithinker","age":22,"address":{"country":"China","zip-code":111111},"skill":["C","Java","Python"],"KOL":false}
INFO (1007)[main.c:  81] name=aithinker
INFO (1009)[main.c:  84] age=22
INFO (1012)[main.c:  87] p_kol=0
INFO (1016)[main.c:  91] country=China
INFO (1020)[main.c:  94] zip_code=111111
INFO (1025)[main.c: 101] stu_arr_size: 3
INFO (1029)[main.c: 106] id:0, skills=C
INFO (1033)[main.c: 106] id:1, skills=Java
INFO (1038)[main.c: 106] id:2, skills=Python
```
## Troubleshooting

For any technical queries, please open an [issue](https://github.com/Ai-Thinker-Open/Ai-Thinker-WB2/issues) on GitHub. We will get back to you soon.
