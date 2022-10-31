	.file	"platform_gpio.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.bflb_platform_init_uart_debug_gpio,"ax",@progbits
	.align	1
	.weak	bflb_platform_init_uart_debug_gpio
	.type	bflb_platform_init_uart_debug_gpio, @function
bflb_platform_init_uart_debug_gpio:
.LFB8:
	.file 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/Common/platform_print/platform_gpio.c"
	.loc 1 9 1
	.cfi_startproc
	.loc 1 10 5
	.loc 1 12 5
	.loc 1 13 5
	.loc 1 16 5
	.loc 1 17 5
	.loc 1 18 5
	.loc 1 19 5
	.loc 1 16 16 is_stmt 0
	li	a5,65536
	.loc 1 9 1
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	.loc 1 16 16
	addi	a5,a5,1808
	sw	a5,8(sp)
	.loc 1 20 5
	addi	a0,sp,8
	.loc 1 12 14
	li	a5,256
	.loc 1 9 1
	sw	ra,28(sp)
	.cfi_offset 1, -4
	.loc 1 12 14
	sh	a5,12(sp)
	.loc 1 20 5 is_stmt 1
	call	GLB_GPIO_Init
.LVL0:
	.loc 1 25 5
	li	a1,2
	li	a0,0
	call	GLB_UART_Fun_Sel
.LVL1:
	.loc 1 29 5
	.loc 1 30 5
	.loc 1 31 5
	.loc 1 32 5
	.loc 1 29 16 is_stmt 0
	li	a5,1799
	.loc 1 33 5
	addi	a0,sp,8
	.loc 1 29 16
	sw	a5,8(sp)
	.loc 1 33 5 is_stmt 1
	call	GLB_GPIO_Init
.LVL2:
	.loc 1 35 5
	li	a1,3
	li	a0,7
	call	GLB_UART_Fun_Sel
.LVL3:
	.loc 1 37 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_restore 1
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE8:
	.size	bflb_platform_init_uart_debug_gpio, .-bflb_platform_init_uart_debug_gpio
	.section	.text.bflb_platform_deinit_uart_debug_gpio,"ax",@progbits
	.align	1
	.weak	bflb_platform_deinit_uart_debug_gpio
	.type	bflb_platform_deinit_uart_debug_gpio, @function
bflb_platform_deinit_uart_debug_gpio:
.LFB9:
	.loc 1 41 1 is_stmt 1
	.cfi_startproc
	.loc 1 42 5
	.loc 1 44 5
	.loc 1 45 5
	.loc 1 46 5
	.loc 1 47 5
	.loc 1 50 5
	.loc 1 51 5
	.loc 1 50 16 is_stmt 0
	li	a5,33558528
	.loc 1 41 1
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	.loc 1 50 16
	addi	a5,a5,-1264
	sw	a5,8(sp)
	.loc 1 52 5
	addi	a0,sp,8
	.loc 1 46 14
	li	a5,256
	.loc 1 41 1
	sw	ra,28(sp)
	.cfi_offset 1, -4
	.loc 1 46 14
	sh	a5,12(sp)
	.loc 1 52 5 is_stmt 1
	call	GLB_GPIO_Init
.LVL4:
	.loc 1 54 5
	li	a0,0
	call	GLB_UART_Sig_Swap_Set
.LVL5:
	.loc 1 57 5
	li	a1,0
	li	a0,0
	call	GLB_UART_Fun_Sel
.LVL6:
	.loc 1 61 5
	.loc 1 62 5
	.loc 1 61 16 is_stmt 0
	li	a5,4096
	addi	a5,a5,-1273
	.loc 1 63 5
	addi	a0,sp,8
	.loc 1 61 16
	sh	a5,8(sp)
	.loc 1 63 5 is_stmt 1
	call	GLB_GPIO_Init
.LVL7:
	.loc 1 66 5
	li	a1,7
	li	a0,7
	call	GLB_UART_Fun_Sel
.LVL8:
	.loc 1 68 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_restore 1
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE9:
	.size	bflb_platform_deinit_uart_debug_gpio, .-bflb_platform_deinit_uart_debug_gpio
	.text
.Letext0:
	.file 2 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 3 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 4 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_gpio.h"
	.file 5 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_glb.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x35a
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF67
	.byte	0xc
	.4byte	.LASF68
	.4byte	.LASF69
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.byte	0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0x2b
	.byte	0x17
	.4byte	0x38
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.byte	0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF4
	.byte	0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0x4f
	.byte	0x1b
	.4byte	0x60
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF11
	.byte	0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x18
	.byte	0x13
	.4byte	0x2c
	.byte	0x3
	.4byte	.LASF13
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x54
	.byte	0x5
	.byte	0x7
	.byte	0x4
	.4byte	0x7c
	.byte	0x4
	.byte	0x4c
	.byte	0x1
	.4byte	0x141
	.byte	0x6
	.4byte	.LASF14
	.byte	0
	.byte	0x6
	.4byte	.LASF15
	.byte	0x1
	.byte	0x6
	.4byte	.LASF16
	.byte	0x2
	.byte	0x6
	.4byte	.LASF17
	.byte	0x3
	.byte	0x6
	.4byte	.LASF18
	.byte	0x4
	.byte	0x6
	.4byte	.LASF19
	.byte	0x5
	.byte	0x6
	.4byte	.LASF20
	.byte	0x6
	.byte	0x6
	.4byte	.LASF21
	.byte	0x7
	.byte	0x6
	.4byte	.LASF22
	.byte	0x8
	.byte	0x6
	.4byte	.LASF23
	.byte	0x9
	.byte	0x6
	.4byte	.LASF24
	.byte	0xa
	.byte	0x6
	.4byte	.LASF25
	.byte	0xb
	.byte	0x6
	.4byte	.LASF26
	.byte	0xc
	.byte	0x6
	.4byte	.LASF27
	.byte	0xd
	.byte	0x6
	.4byte	.LASF28
	.byte	0xe
	.byte	0x6
	.4byte	.LASF29
	.byte	0xf
	.byte	0x6
	.4byte	.LASF30
	.byte	0x10
	.byte	0x6
	.4byte	.LASF31
	.byte	0x11
	.byte	0x6
	.4byte	.LASF32
	.byte	0x12
	.byte	0x6
	.4byte	.LASF33
	.byte	0x13
	.byte	0x6
	.4byte	.LASF34
	.byte	0x14
	.byte	0x6
	.4byte	.LASF35
	.byte	0x15
	.byte	0x6
	.4byte	.LASF36
	.byte	0x16
	.byte	0x6
	.4byte	.LASF37
	.byte	0x17
	.byte	0
	.byte	0x7
	.byte	0x6
	.byte	0x4
	.byte	0x7e
	.byte	0x9
	.4byte	0x199
	.byte	0x8
	.4byte	.LASF38
	.byte	0x4
	.byte	0x80
	.byte	0xd
	.4byte	0x8a
	.byte	0
	.byte	0x8
	.4byte	.LASF39
	.byte	0x4
	.byte	0x81
	.byte	0xd
	.4byte	0x8a
	.byte	0x1
	.byte	0x8
	.4byte	.LASF40
	.byte	0x4
	.byte	0x82
	.byte	0xd
	.4byte	0x8a
	.byte	0x2
	.byte	0x8
	.4byte	.LASF41
	.byte	0x4
	.byte	0x83
	.byte	0xd
	.4byte	0x8a
	.byte	0x3
	.byte	0x8
	.4byte	.LASF42
	.byte	0x4
	.byte	0x84
	.byte	0xd
	.4byte	0x8a
	.byte	0x4
	.byte	0x8
	.4byte	.LASF43
	.byte	0x4
	.byte	0x85
	.byte	0xd
	.4byte	0x8a
	.byte	0x5
	.byte	0
	.byte	0x3
	.4byte	.LASF44
	.byte	0x4
	.byte	0x86
	.byte	0x2
	.4byte	0x141
	.byte	0x5
	.byte	0x7
	.byte	0x4
	.4byte	0x7c
	.byte	0x5
	.byte	0xe8
	.byte	0xe
	.4byte	0x1e4
	.byte	0x6
	.4byte	.LASF45
	.byte	0
	.byte	0x6
	.4byte	.LASF46
	.byte	0x1
	.byte	0x6
	.4byte	.LASF47
	.byte	0x2
	.byte	0x6
	.4byte	.LASF48
	.byte	0x3
	.byte	0x6
	.4byte	.LASF49
	.byte	0x4
	.byte	0x6
	.4byte	.LASF50
	.byte	0x5
	.byte	0x6
	.4byte	.LASF51
	.byte	0x6
	.byte	0x6
	.4byte	.LASF52
	.byte	0x7
	.byte	0
	.byte	0x5
	.byte	0x7
	.byte	0x4
	.4byte	0x7c
	.byte	0x5
	.byte	0xf6
	.byte	0xe
	.4byte	0x223
	.byte	0x6
	.4byte	.LASF53
	.byte	0
	.byte	0x6
	.4byte	.LASF54
	.byte	0x1
	.byte	0x6
	.4byte	.LASF55
	.byte	0x2
	.byte	0x6
	.4byte	.LASF56
	.byte	0x3
	.byte	0x6
	.4byte	.LASF57
	.byte	0x4
	.byte	0x6
	.4byte	.LASF58
	.byte	0x5
	.byte	0x6
	.4byte	.LASF59
	.byte	0x6
	.byte	0x6
	.4byte	.LASF60
	.byte	0x7
	.byte	0
	.byte	0x3
	.4byte	.LASF61
	.byte	0x5
	.byte	0xff
	.byte	0x2
	.4byte	0x1e4
	.byte	0x9
	.4byte	.LASF62
	.byte	0x1
	.byte	0x28
	.byte	0x6
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0x2bc
	.byte	0xa
	.string	"cfg"
	.byte	0x1
	.byte	0x2a
	.byte	0x17
	.4byte	0x199
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0xb
	.4byte	.LVL4
	.4byte	0x336
	.4byte	0x268
	.byte	0xc
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0
	.byte	0xb
	.4byte	.LVL5
	.4byte	0x343
	.4byte	0x27b
	.byte	0xc
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0xb
	.4byte	.LVL6
	.4byte	0x350
	.4byte	0x293
	.byte	0xc
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0xc
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0xb
	.4byte	.LVL7
	.4byte	0x336
	.4byte	0x2a7
	.byte	0xc
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0
	.byte	0xd
	.4byte	.LVL8
	.4byte	0x350
	.byte	0xc
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x37
	.byte	0xc
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x37
	.byte	0
	.byte	0
	.byte	0x9
	.4byte	.LASF63
	.byte	0x1
	.byte	0x8
	.byte	0x6
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0x336
	.byte	0xa
	.string	"cfg"
	.byte	0x1
	.byte	0xa
	.byte	0x17
	.4byte	0x199
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0xb
	.4byte	.LVL0
	.4byte	0x336
	.4byte	0x2f5
	.byte	0xc
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0
	.byte	0xb
	.4byte	.LVL1
	.4byte	0x350
	.4byte	0x30d
	.byte	0xc
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0xc
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0xb
	.4byte	.LVL2
	.4byte	0x336
	.4byte	0x321
	.byte	0xc
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0
	.byte	0xd
	.4byte	.LVL3
	.4byte	0x350
	.byte	0xc
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x37
	.byte	0xc
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0
	.byte	0xe
	.4byte	.LASF64
	.4byte	.LASF64
	.byte	0x5
	.2byte	0x276
	.byte	0xd
	.byte	0xe
	.4byte	.LASF65
	.4byte	.LASF65
	.byte	0x5
	.2byte	0x257
	.byte	0xd
	.byte	0xe
	.4byte	.LASF66
	.4byte	.LASF66
	.byte	0x5
	.2byte	0x26f
	.byte	0xd
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
	.byte	0xe
	.byte	0
	.byte	0
	.byte	0x3
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
	.byte	0x4
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
	.byte	0x5
	.byte	0x4
	.byte	0x1
	.byte	0x3e
	.byte	0xb
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x13
	.byte	0x1
	.byte	0xb
	.byte	0xb
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0xd
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
	.byte	0x38
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x9
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
	.byte	0xa
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0x8
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
	.byte	0xb
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xc
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0xd
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xe
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
	.4byte	0x24
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF55:
	.string	"GLB_UART_SIG_FUN_UART0_TXD"
.LASF45:
	.string	"GLB_UART_SIG_0"
.LASF46:
	.string	"GLB_UART_SIG_1"
.LASF68:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/Common/platform_print/platform_gpio.c"
.LASF48:
	.string	"GLB_UART_SIG_3"
.LASF62:
	.string	"bflb_platform_deinit_uart_debug_gpio"
.LASF50:
	.string	"GLB_UART_SIG_5"
.LASF64:
	.string	"GLB_GPIO_Init"
.LASF52:
	.string	"GLB_UART_SIG_7"
.LASF43:
	.string	"smtCtrl"
.LASF65:
	.string	"GLB_UART_Sig_Swap_Set"
.LASF8:
	.string	"long long int"
.LASF6:
	.string	"__uint32_t"
.LASF25:
	.string	"GLB_GPIO_PIN_11"
.LASF2:
	.string	"short int"
.LASF12:
	.string	"uint8_t"
.LASF53:
	.string	"GLB_UART_SIG_FUN_UART0_RTS"
.LASF56:
	.string	"GLB_UART_SIG_FUN_UART0_RXD"
.LASF39:
	.string	"gpioFun"
.LASF37:
	.string	"GLB_GPIO_PIN_MAX"
.LASF24:
	.string	"GLB_GPIO_PIN_10"
.LASF58:
	.string	"GLB_UART_SIG_FUN_UART1_CTS"
.LASF26:
	.string	"GLB_GPIO_PIN_12"
.LASF27:
	.string	"GLB_GPIO_PIN_13"
.LASF28:
	.string	"GLB_GPIO_PIN_14"
.LASF29:
	.string	"GLB_GPIO_PIN_15"
.LASF30:
	.string	"GLB_GPIO_PIN_16"
.LASF31:
	.string	"GLB_GPIO_PIN_17"
.LASF32:
	.string	"GLB_GPIO_PIN_18"
.LASF33:
	.string	"GLB_GPIO_PIN_19"
.LASF23:
	.string	"GLB_GPIO_PIN_9"
.LASF59:
	.string	"GLB_UART_SIG_FUN_UART1_TXD"
.LASF5:
	.string	"__uint8_t"
.LASF44:
	.string	"GLB_GPIO_Cfg_Type"
.LASF42:
	.string	"drive"
.LASF1:
	.string	"unsigned char"
.LASF0:
	.string	"signed char"
.LASF9:
	.string	"long long unsigned int"
.LASF13:
	.string	"uint32_t"
.LASF14:
	.string	"GLB_GPIO_PIN_0"
.LASF69:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/bl602_std"
.LASF15:
	.string	"GLB_GPIO_PIN_1"
.LASF16:
	.string	"GLB_GPIO_PIN_2"
.LASF17:
	.string	"GLB_GPIO_PIN_3"
.LASF18:
	.string	"GLB_GPIO_PIN_4"
.LASF34:
	.string	"GLB_GPIO_PIN_20"
.LASF35:
	.string	"GLB_GPIO_PIN_21"
.LASF36:
	.string	"GLB_GPIO_PIN_22"
.LASF20:
	.string	"GLB_GPIO_PIN_6"
.LASF21:
	.string	"GLB_GPIO_PIN_7"
.LASF3:
	.string	"short unsigned int"
.LASF22:
	.string	"GLB_GPIO_PIN_8"
.LASF11:
	.string	"char"
.LASF4:
	.string	"long int"
.LASF7:
	.string	"long unsigned int"
.LASF40:
	.string	"gpioMode"
.LASF47:
	.string	"GLB_UART_SIG_2"
.LASF61:
	.string	"GLB_UART_SIG_FUN_Type"
.LASF49:
	.string	"GLB_UART_SIG_4"
.LASF51:
	.string	"GLB_UART_SIG_6"
.LASF19:
	.string	"GLB_GPIO_PIN_5"
.LASF41:
	.string	"pullType"
.LASF63:
	.string	"bflb_platform_init_uart_debug_gpio"
.LASF57:
	.string	"GLB_UART_SIG_FUN_UART1_RTS"
.LASF60:
	.string	"GLB_UART_SIG_FUN_UART1_RXD"
.LASF38:
	.string	"gpioPin"
.LASF10:
	.string	"unsigned int"
.LASF54:
	.string	"GLB_UART_SIG_FUN_UART0_CTS"
.LASF66:
	.string	"GLB_UART_Fun_Sel"
.LASF67:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
