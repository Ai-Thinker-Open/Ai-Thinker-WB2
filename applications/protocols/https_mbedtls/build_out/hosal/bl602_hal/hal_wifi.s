	.file	"hal_wifi.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.rodata.hal_wifi_start_firmware_task.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"fw"
	.section	.text.hal_wifi_start_firmware_task,"ax",@progbits
	.align	1
	.globl	hal_wifi_start_firmware_task
	.type	hal_wifi_start_firmware_task, @function
hal_wifi_start_firmware_task:
.LFB22:
	.file 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/bl602_hal/hal_wifi.c"
	.loc 1 13 1
	.cfi_startproc
	.loc 1 14 5
	.loc 1 15 5
	.loc 1 17 5
	.loc 1 13 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 17 5
	call	bl_pm_init
.LVL0:
	.loc 1 18 5 is_stmt 1
	lui	a6,%hi(.LANCHOR0)
	lui	a5,%hi(wifi_fw_stack.1)
	lui	a1,%hi(.LC0)
	lui	a0,%hi(wifi_main)
	addi	a6,a6,%lo(.LANCHOR0)
	addi	a5,a5,%lo(wifi_fw_stack.1)
	li	a4,30
	li	a3,0
	li	a2,1536
	addi	a1,a1,%lo(.LC0)
	addi	a0,a0,%lo(wifi_main)
	call	xTaskCreateStatic
.LVL1:
	.loc 1 20 5
	.loc 1 21 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE22:
	.size	hal_wifi_start_firmware_task, .-hal_wifi_start_firmware_task
	.section	.bss.wifi_fw_stack.1,"aw",@nobits
	.align	2
	.type	wifi_fw_stack.1, @object
	.size	wifi_fw_stack.1, 6144
wifi_fw_stack.1:
	.zero	6144
	.section	.bss.wifi_fw_task.0,"aw",@nobits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	wifi_fw_task.0, @object
	.size	wifi_fw_task.0, 96
wifi_fw_task.0:
	.zero	96
	.text
.Letext0:
	.file 2 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.file 3 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h"
	.file 4 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/FreeRTOS.h"
	.file 5 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/bl602_hal/bl_pm.h"
	.file 6 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x283
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF36
	.byte	0xc
	.4byte	.LASF37
	.4byte	.LASF38
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.byte	0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1
	.byte	0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.byte	0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF3
	.byte	0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF4
	.byte	0x4
	.4byte	.LASF7
	.byte	0x2
	.byte	0x2e
	.byte	0x17
	.4byte	0x5b
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.byte	0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF6
	.byte	0x4
	.4byte	.LASF8
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0x75
	.byte	0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.byte	0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.byte	0x5
	.byte	0x4
	.byte	0x4
	.4byte	.LASF11
	.byte	0x3
	.byte	0x3e
	.byte	0x12
	.4byte	0x69
	.byte	0x4
	.4byte	.LASF12
	.byte	0x3
	.byte	0x40
	.byte	0x12
	.4byte	0x69
	.byte	0x4
	.4byte	.LASF13
	.byte	0x3
	.byte	0x41
	.byte	0x12
	.4byte	0x69
	.byte	0x6
	.4byte	.LASF17
	.byte	0x14
	.byte	0x4
	.2byte	0x414
	.byte	0x8
	.4byte	0xd4
	.byte	0x7
	.4byte	.LASF14
	.byte	0x4
	.2byte	0x419
	.byte	0xd
	.4byte	0x9d
	.byte	0
	.byte	0x7
	.4byte	.LASF15
	.byte	0x4
	.2byte	0x41a
	.byte	0x8
	.4byte	0xd4
	.byte	0x4
	.byte	0
	.byte	0x8
	.4byte	0x83
	.4byte	0xe4
	.byte	0x9
	.4byte	0x2c
	.byte	0x3
	.byte	0
	.byte	0xa
	.4byte	.LASF16
	.byte	0x4
	.2byte	0x41f
	.byte	0x22
	.4byte	0xa9
	.byte	0x6
	.4byte	.LASF18
	.byte	0x60
	.byte	0x4
	.2byte	0x447
	.byte	0x10
	.4byte	0x19a
	.byte	0x7
	.4byte	.LASF19
	.byte	0x4
	.2byte	0x449
	.byte	0x8
	.4byte	0x83
	.byte	0
	.byte	0x7
	.4byte	.LASF20
	.byte	0x4
	.2byte	0x44d
	.byte	0x13
	.4byte	0x19a
	.byte	0x4
	.byte	0x7
	.4byte	.LASF21
	.byte	0x4
	.2byte	0x44e
	.byte	0xe
	.4byte	0x91
	.byte	0x2c
	.byte	0x7
	.4byte	.LASF22
	.byte	0x4
	.2byte	0x44f
	.byte	0x8
	.4byte	0x83
	.byte	0x30
	.byte	0x7
	.4byte	.LASF23
	.byte	0x4
	.2byte	0x450
	.byte	0xa
	.4byte	0x1aa
	.byte	0x34
	.byte	0x7
	.4byte	.LASF24
	.byte	0x4
	.2byte	0x455
	.byte	0xf
	.4byte	0x91
	.byte	0x44
	.byte	0x7
	.4byte	.LASF25
	.byte	0x4
	.2byte	0x458
	.byte	0xf
	.4byte	0x1ba
	.byte	0x48
	.byte	0x7
	.4byte	.LASF26
	.byte	0x4
	.2byte	0x45b
	.byte	0xf
	.4byte	0x1ba
	.byte	0x50
	.byte	0x7
	.4byte	.LASF27
	.byte	0x4
	.2byte	0x46a
	.byte	0xc
	.4byte	0x69
	.byte	0x58
	.byte	0x7
	.4byte	.LASF28
	.byte	0x4
	.2byte	0x46b
	.byte	0xb
	.4byte	0x4f
	.byte	0x5c
	.byte	0x7
	.4byte	.LASF29
	.byte	0x4
	.2byte	0x46e
	.byte	0xb
	.4byte	0x4f
	.byte	0x5d
	.byte	0
	.byte	0x8
	.4byte	0xe4
	.4byte	0x1aa
	.byte	0x9
	.4byte	0x2c
	.byte	0x1
	.byte	0
	.byte	0x8
	.4byte	0x4f
	.4byte	0x1ba
	.byte	0x9
	.4byte	0x2c
	.byte	0xf
	.byte	0
	.byte	0x8
	.4byte	0x91
	.4byte	0x1ca
	.byte	0x9
	.4byte	0x2c
	.byte	0x1
	.byte	0
	.byte	0xa
	.4byte	.LASF30
	.byte	0x4
	.2byte	0x477
	.byte	0x3
	.4byte	0xf1
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF31
	.byte	0xb
	.4byte	.LASF39
	.byte	0x1
	.byte	0xc
	.byte	0x5
	.4byte	0x25
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x1
	.byte	0x9c
	.4byte	0x25c
	.byte	0xc
	.4byte	.LASF32
	.byte	0x1
	.byte	0xe
	.byte	0x18
	.4byte	0x25c
	.byte	0x5
	.byte	0x3
	.4byte	wifi_fw_stack.1
	.byte	0xc
	.4byte	.LASF33
	.byte	0x1
	.byte	0xf
	.byte	0x19
	.4byte	0x1ca
	.byte	0x5
	.byte	0x3
	.4byte	wifi_fw_task.0
	.byte	0xd
	.4byte	.LVL0
	.4byte	0x26d
	.byte	0xe
	.4byte	.LVL1
	.4byte	0x279
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0xf
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xa
	.2byte	0x600
	.byte	0xf
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0xf
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x4e
	.byte	0xf
	.byte	0x1
	.byte	0x5f
	.byte	0x5
	.byte	0x3
	.4byte	wifi_fw_stack.1
	.byte	0xf
	.byte	0x1
	.byte	0x60
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0
	.byte	0
	.byte	0x8
	.4byte	0x85
	.4byte	0x26d
	.byte	0x10
	.4byte	0x2c
	.2byte	0x5ff
	.byte	0
	.byte	0x11
	.4byte	.LASF34
	.4byte	.LASF34
	.byte	0x5
	.byte	0x4b
	.byte	0x5
	.byte	0x12
	.4byte	.LASF35
	.4byte	.LASF35
	.byte	0x6
	.2byte	0x1be
	.byte	0xf
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x25
	.byte	0xe
	.byte	0x13
	.byte	0xb
	.byte	0x3
	.byte	0xe
	.byte	0x1b
	.byte	0xe
	.byte	0x55
	.byte	0x17
	.byte	0x11
	.byte	0x1
	.byte	0x10
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x2
	.byte	0x24
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x3e
	.byte	0xb
	.byte	0x3
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0x3
	.byte	0x24
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x3e
	.byte	0xb
	.byte	0x3
	.byte	0xe
	.byte	0
	.byte	0
	.byte	0x4
	.byte	0x16
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x5
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x13
	.byte	0x1
	.byte	0x3
	.byte	0xe
	.byte	0xb
	.byte	0xb
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0xd
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x38
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x9
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x16
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xb
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x27
	.byte	0x19
	.byte	0x49
	.byte	0x13
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x40
	.byte	0x18
	.byte	0x97,0x42
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xc
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0xd
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xe
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xf
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x10
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0x11
	.byte	0x2e
	.byte	0
	.byte	0x3f
	.byte	0x19
	.byte	0x3c
	.byte	0x19
	.byte	0x6e
	.byte	0xe
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x12
	.byte	0x2e
	.byte	0
	.byte	0x3f
	.byte	0x19
	.byte	0x3c
	.byte	0x19
	.byte	0x6e
	.byte	0xe
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF13:
	.string	"TickType_t"
.LASF18:
	.string	"xSTATIC_TCB"
.LASF19:
	.string	"pxDummy1"
.LASF3:
	.string	"long int"
.LASF22:
	.string	"pxDummy6"
.LASF38:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/hosal"
.LASF37:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/bl602_hal/hal_wifi.c"
.LASF32:
	.string	"wifi_fw_stack"
.LASF24:
	.string	"uxDummy9"
.LASF21:
	.string	"uxDummy5"
.LASF25:
	.string	"uxDummy10"
.LASF26:
	.string	"uxDummy12"
.LASF9:
	.string	"long unsigned int"
.LASF30:
	.string	"StaticTask_t"
.LASF6:
	.string	"short unsigned int"
.LASF28:
	.string	"ucDummy19"
.LASF23:
	.string	"ucDummy7"
.LASF20:
	.string	"xDummy3"
.LASF5:
	.string	"unsigned char"
.LASF0:
	.string	"unsigned int"
.LASF39:
	.string	"hal_wifi_start_firmware_task"
.LASF10:
	.string	"long long unsigned int"
.LASF7:
	.string	"uint8_t"
.LASF33:
	.string	"wifi_fw_task"
.LASF27:
	.string	"ulDummy18"
.LASF35:
	.string	"xTaskCreateStatic"
.LASF4:
	.string	"long long int"
.LASF36:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
.LASF31:
	.string	"char"
.LASF11:
	.string	"StackType_t"
.LASF2:
	.string	"short int"
.LASF29:
	.string	"uxDummy20"
.LASF8:
	.string	"uint32_t"
.LASF16:
	.string	"StaticListItem_t"
.LASF17:
	.string	"xSTATIC_LIST_ITEM"
.LASF1:
	.string	"signed char"
.LASF15:
	.string	"pvDummy3"
.LASF14:
	.string	"xDummy2"
.LASF12:
	.string	"UBaseType_t"
.LASF34:
	.string	"bl_pm_init"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
