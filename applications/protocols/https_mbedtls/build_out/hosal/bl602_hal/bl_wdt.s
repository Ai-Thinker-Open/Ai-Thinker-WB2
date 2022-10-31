	.file	"bl_wdt.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.bl_wdt_feed,"ax",@progbits
	.align	1
	.globl	bl_wdt_feed
	.type	bl_wdt_feed, @function
bl_wdt_feed:
.LFB9:
	.file 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/bl602_hal/bl_wdt.c"
	.loc 1 27 1
	.cfi_startproc
	.loc 1 28 5
	tail	WDT_ResetCounterValue
.LVL0:
	.cfi_endproc
.LFE9:
	.size	bl_wdt_feed, .-bl_wdt_feed
	.section	.text.bl_wdt_disable,"ax",@progbits
	.align	1
	.globl	bl_wdt_disable
	.type	bl_wdt_disable, @function
bl_wdt_disable:
.LFB10:
	.loc 1 32 1
	.cfi_startproc
	.loc 1 33 5
	tail	WDT_Disable
.LVL1:
	.cfi_endproc
.LFE10:
	.size	bl_wdt_disable, .-bl_wdt_disable
	.section	.text.bl_wdt_init,"ax",@progbits
	.align	1
	.globl	bl_wdt_init
	.type	bl_wdt_init, @function
bl_wdt_init:
.LFB11:
	.loc 1 37 1
	.cfi_startproc
.LVL2:
	.loc 1 38 5
	.loc 1 38 8 is_stmt 0
	li	a5,65536
	addi	a5,a5,-2
	bgt	a0,a5,.L5
	.loc 1 37 1
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	mv	s0,a0
	.loc 1 41 5 is_stmt 1
.LVL3:
.LBB4:
.LBB5:
	.loc 1 16 5
	call	WDT_Disable
.LVL4:
	.loc 1 17 5
	li	a1,31
	li	a0,1
	call	WDT_Set_Clock
.LVL5:
	.loc 1 18 5
	slli	a0,s0,16
	srli	a0,a0,16
	call	WDT_SetCompValue
.LVL6:
	.loc 1 20 5
	call	WDT_ResetCounterValue
.LVL7:
	.loc 1 21 5
	li	a0,0
	li	a1,1
	call	WDT_IntMask
.LVL8:
	.loc 1 23 5
	call	WDT_Enable
.LVL9:
.LBE5:
.LBE4:
	.loc 1 43 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
.LVL10:
	.loc 1 42 12
	li	a0,0
	.loc 1 43 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL11:
.L5:
	.loc 1 39 16
	li	a0,-1
.LVL12:
	.loc 1 43 1
	ret
	.cfi_endproc
.LFE11:
	.size	bl_wdt_init, .-bl_wdt_init
	.text
.Letext0:
	.file 2 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_common.h"
	.file 3 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_timer.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x214
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF26
	.byte	0xc
	.4byte	.LASF27
	.4byte	.LASF28
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1
	.byte	0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF3
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF4
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF6
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF8
	.byte	0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF9
	.byte	0x4
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x2
	.byte	0x33
	.byte	0x1
	.4byte	0x8d
	.byte	0x5
	.4byte	.LASF10
	.byte	0
	.byte	0x5
	.4byte	.LASF11
	.byte	0x1
	.byte	0
	.byte	0x4
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x3
	.byte	0x42
	.byte	0xe
	.4byte	0xb4
	.byte	0x5
	.4byte	.LASF12
	.byte	0
	.byte	0x5
	.4byte	.LASF13
	.byte	0x1
	.byte	0x5
	.4byte	.LASF14
	.byte	0x2
	.byte	0x5
	.4byte	.LASF15
	.byte	0x3
	.byte	0
	.byte	0x4
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x3
	.byte	0x71
	.byte	0xe
	.4byte	0xcf
	.byte	0x5
	.4byte	.LASF16
	.byte	0
	.byte	0x5
	.4byte	.LASF17
	.byte	0x1
	.byte	0
	.byte	0x6
	.4byte	.LASF29
	.byte	0x1
	.byte	0x24
	.byte	0x5
	.4byte	0x64
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x1
	.byte	0x9c
	.4byte	0x176
	.byte	0x7
	.string	"ms"
	.byte	0x1
	.byte	0x24
	.byte	0x15
	.4byte	0x64
	.4byte	.LLST0
	.byte	0x8
	.4byte	0x1b6
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.byte	0x1
	.byte	0x29
	.byte	0x5
	.byte	0x9
	.4byte	0x1c3
	.4byte	.LLST1
	.byte	0xa
	.4byte	.LVL4
	.4byte	0x1cf
	.byte	0xb
	.4byte	.LVL5
	.4byte	0x1db
	.4byte	0x132
	.byte	0xc
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0xc
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x4f
	.byte	0
	.byte	0xb
	.4byte	.LVL6
	.4byte	0x1e7
	.4byte	0x14a
	.byte	0xc
	.byte	0x1
	.byte	0x5a
	.byte	0x6
	.byte	0x78
	.byte	0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x25
	.byte	0
	.byte	0xa
	.4byte	.LVL7
	.4byte	0x1f3
	.byte	0xb
	.4byte	.LVL8
	.4byte	0x1ff
	.4byte	0x16b
	.byte	0xc
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0xc
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0xa
	.4byte	.LVL9
	.4byte	0x20b
	.byte	0
	.byte	0
	.byte	0xd
	.4byte	.LASF18
	.byte	0x1
	.byte	0x1f
	.byte	0x6
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x1
	.byte	0x9c
	.4byte	0x196
	.byte	0xe
	.4byte	.LVL1
	.4byte	0x1cf
	.byte	0
	.byte	0xd
	.4byte	.LASF19
	.byte	0x1
	.byte	0x1a
	.byte	0x6
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0x1b6
	.byte	0xe
	.4byte	.LVL0
	.4byte	0x1f3
	.byte	0
	.byte	0xf
	.4byte	.LASF30
	.byte	0x1
	.byte	0xe
	.byte	0xd
	.byte	0x1
	.4byte	0x1cf
	.byte	0x10
	.string	"ms"
	.byte	0x1
	.byte	0xe
	.byte	0x25
	.4byte	0x64
	.byte	0
	.byte	0x11
	.4byte	.LASF20
	.4byte	.LASF20
	.byte	0x3
	.byte	0xe8
	.byte	0x6
	.byte	0x11
	.4byte	.LASF21
	.4byte	.LASF21
	.byte	0x3
	.byte	0xe0
	.byte	0x6
	.byte	0x11
	.4byte	.LASF22
	.4byte	.LASF22
	.byte	0x3
	.byte	0xe2
	.byte	0x6
	.byte	0x11
	.4byte	.LASF23
	.4byte	.LASF23
	.byte	0x3
	.byte	0xe4
	.byte	0x6
	.byte	0x11
	.4byte	.LASF24
	.4byte	.LASF24
	.byte	0x3
	.byte	0xe9
	.byte	0x6
	.byte	0x11
	.4byte	.LASF25
	.4byte	.LASF25
	.byte	0x3
	.byte	0xe7
	.byte	0x6
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
	.byte	0x4
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
	.byte	0x5
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x6
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
	.byte	0x7
	.byte	0x5
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
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0x1d
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x58
	.byte	0xb
	.byte	0x59
	.byte	0xb
	.byte	0x57
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x9
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
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
	.byte	0xe
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x95,0x42
	.byte	0x19
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xf
	.byte	0x2e
	.byte	0x1
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
	.byte	0x20
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x10
	.byte	0x5
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL2
	.4byte	.LVL4-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL4-1
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL12
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL3
	.4byte	.LVL4-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL4-1
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x2c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF4:
	.string	"long long int"
.LASF16:
	.string	"WDT_INT"
.LASF20:
	.string	"WDT_Disable"
.LASF22:
	.string	"WDT_SetCompValue"
.LASF10:
	.string	"UNMASK"
.LASF27:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/bl602_hal/bl_wdt.c"
.LASF23:
	.string	"WDT_ResetCounterValue"
.LASF14:
	.string	"TIMER_CLKSRC_1K"
.LASF25:
	.string	"WDT_Enable"
.LASF7:
	.string	"long unsigned int"
.LASF6:
	.string	"short unsigned int"
.LASF15:
	.string	"TIMER_CLKSRC_XTAL"
.LASF5:
	.string	"unsigned char"
.LASF12:
	.string	"TIMER_CLKSRC_FCLK"
.LASF13:
	.string	"TIMER_CLKSRC_32K"
.LASF0:
	.string	"unsigned int"
.LASF28:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/hosal"
.LASF24:
	.string	"WDT_IntMask"
.LASF8:
	.string	"long long unsigned int"
.LASF17:
	.string	"WDT_INT_ALL"
.LASF18:
	.string	"bl_wdt_disable"
.LASF30:
	.string	"Timer_Watchdog_Case"
.LASF11:
	.string	"MASK"
.LASF21:
	.string	"WDT_Set_Clock"
.LASF26:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
.LASF9:
	.string	"char"
.LASF29:
	.string	"bl_wdt_init"
.LASF19:
	.string	"bl_wdt_feed"
.LASF2:
	.string	"short int"
.LASF3:
	.string	"long int"
.LASF1:
	.string	"signed char"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
