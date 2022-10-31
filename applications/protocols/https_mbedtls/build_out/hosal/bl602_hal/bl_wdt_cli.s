	.file	"bl_wdt_cli.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.cmd_timer_start,"ax",@progbits
	.align	1
	.type	cmd_timer_start, @function
cmd_timer_start:
.LFB7:
	.file 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/bl602_hal/bl_wdt_cli.c"
	.loc 1 35 1
	.cfi_startproc
.LVL0:
	.loc 1 36 1
	.loc 1 37 5
	tail	bl_timer_tick_enable
.LVL1:
	.cfi_endproc
.LFE7:
	.size	cmd_timer_start, .-cmd_timer_start
	.section	.text.cmd_wdt_disable,"ax",@progbits
	.align	1
	.type	cmd_wdt_disable, @function
cmd_wdt_disable:
.LFB6:
	.loc 1 30 1
	.cfi_startproc
.LVL2:
	.loc 1 31 5
	tail	bl_wdt_disable
.LVL3:
	.cfi_endproc
.LFE6:
	.size	cmd_wdt_disable, .-cmd_wdt_disable
	.section	.text.cmd_wdt_feed,"ax",@progbits
	.align	1
	.type	cmd_wdt_feed, @function
cmd_wdt_feed:
.LFB5:
	.loc 1 25 1
	.cfi_startproc
.LVL4:
	.loc 1 26 5
	tail	bl_wdt_feed
.LVL5:
	.cfi_endproc
.LFE5:
	.size	cmd_wdt_feed, .-cmd_wdt_feed
	.section	.rodata.cmd_wdt_init.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"bl_wdt_cli.c"
	.align	2
.LC1:
	.string	"\033[31mERROR\033[0m"
	.align	2
.LC2:
	.string	"%s (%d)[%s:%4d] Usage: %s ms\r\n\r\n"
	.align	2
.LC3:
	.string	"\033[32mINFO\033[0m"
	.align	2
.LC4:
	.string	"%s (%d)[%s:%4d] Init WDT with %dms\r\n\r\n"
	.section	.text.cmd_wdt_init,"ax",@progbits
	.align	1
	.type	cmd_wdt_init, @function
cmd_wdt_init:
.LFB4:
	.loc 1 9 1
	.cfi_startproc
.LVL6:
	.loc 1 10 5
	.loc 1 12 5
	.loc 1 9 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	s2,0(sp)
	sw	ra,12(sp)
	sw	s1,4(sp)
	.cfi_offset 8, -8
	.cfi_offset 18, -16
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	.loc 1 12 8
	li	a5,2
	.loc 1 9 1
	mv	s0,a3
	lui	s2,%hi(_fsymc_level_hosal)
	.loc 1 12 8
	beq	a2,a5,.L5
	.loc 1 13 9 is_stmt 1 discriminator 1
	.loc 1 13 47 discriminator 1
	.loc 1 13 52 discriminator 1
	.loc 1 13 55 is_stmt 0 discriminator 1
	lw	a4,%lo(_fsymc_level_hosal)(s2)
	li	a5,4
	bgtu	a4,a5,.L4
	.loc 1 13 118 discriminator 3
	lui	a4,%hi(_fsymf_level_hosalbl_wdt_cli)
	.loc 1 13 97 discriminator 3
	lw	a4,%lo(_fsymf_level_hosalbl_wdt_cli)(a4)
	bgtu	a4,a5,.L4
	.loc 1 13 154 is_stmt 1 discriminator 5
	.loc 1 13 235 is_stmt 0 discriminator 5
	call	xPortIsInsideInterrupt
.LVL7:
	.loc 1 13 154 discriminator 5
	beq	a0,zero,.L9
	.loc 1 13 264 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL8:
.L15:
	.loc 1 13 154 discriminator 8
	lw	a5,0(s0)
	.loc 1 22 1 discriminator 8
	lw	s0,8(sp)
	.cfi_remember_state
	.cfi_restore 8
.LVL9:
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s1,4(sp)
	.cfi_restore 9
	lw	s2,0(sp)
	.cfi_restore 18
	.loc 1 13 295 discriminator 8
	mv	a2,a0
	.loc 1 13 154 discriminator 8
	lui	a3,%hi(.LC0)
	lui	a1,%hi(.LC1)
	lui	a0,%hi(.LC2)
	.loc 1 22 1 discriminator 8
	.loc 1 13 154 discriminator 8
	li	a4,13
	addi	a3,a3,%lo(.LC0)
	addi	a1,a1,%lo(.LC1)
	addi	a0,a0,%lo(.LC2)
	.loc 1 22 1 discriminator 8
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 13 154 discriminator 8
	tail	bl_printk
.LVL10:
.L9:
	.cfi_restore_state
	.loc 1 13 295 discriminator 8
	call	xTaskGetTickCount
.LVL11:
	j	.L15
.LVL12:
.L5:
	.loc 1 16 10
	lw	a0,4(a3)
.LVL13:
	mv	s1,a2
	.loc 1 16 5 is_stmt 1
	.loc 1 16 10 is_stmt 0
	call	atoi
.LVL14:
	.loc 1 17 51
	lw	a5,%lo(_fsymc_level_hosal)(s2)
	.loc 1 16 10
	mv	s0,a0
.LVL15:
	.loc 1 17 5 is_stmt 1
	.loc 1 17 43
	.loc 1 17 48
	.loc 1 17 51 is_stmt 0
	bgtu	a5,s1,.L11
	.loc 1 17 112 discriminator 3
	lui	a5,%hi(_fsymf_level_hosalbl_wdt_cli)
	.loc 1 17 92 discriminator 3
	lw	a5,%lo(_fsymf_level_hosalbl_wdt_cli)(a5)
	bgtu	a5,s1,.L11
	.loc 1 17 148 is_stmt 1 discriminator 5
	.loc 1 17 234 is_stmt 0 discriminator 5
	call	xPortIsInsideInterrupt
.LVL16:
	.loc 1 17 148 discriminator 5
	beq	a0,zero,.L12
	.loc 1 17 263 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL17:
.L16:
	.loc 1 17 294 discriminator 8
	mv	a2,a0
	.loc 1 17 148 discriminator 8
	lui	a3,%hi(.LC0)
	lui	a1,%hi(.LC3)
	lui	a0,%hi(.LC4)
	mv	a5,s0
	li	a4,17
	addi	a3,a3,%lo(.LC0)
	addi	a1,a1,%lo(.LC3)
	addi	a0,a0,%lo(.LC4)
	call	bl_printk
.LVL18:
.L11:
	.loc 1 17 351 is_stmt 1 discriminator 11
	.loc 1 17 362 discriminator 11
	.loc 1 18 5 discriminator 11
	.loc 1 18 8 is_stmt 0 discriminator 11
	ble	s0,zero,.L4
	.loc 1 21 5 is_stmt 1
	mv	a0,s0
	.loc 1 22 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_remember_state
	.cfi_restore 8
.LVL19:
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s1,4(sp)
	.cfi_restore 9
.LVL20:
	lw	s2,0(sp)
	.cfi_restore 18
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 21 5
	tail	bl_wdt_init
.LVL21:
.L12:
	.cfi_restore_state
	.loc 1 17 294 discriminator 8
	call	xTaskGetTickCount
.LVL22:
	j	.L16
.LVL23:
.L4:
	.loc 1 22 1
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	lw	s1,4(sp)
	.cfi_restore 9
	lw	s2,0(sp)
	.cfi_restore 18
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE4:
	.size	cmd_wdt_init, .-cmd_wdt_init
	.section	.text.bl_wdt_cli_init,"ax",@progbits
	.align	1
	.globl	bl_wdt_cli_init
	.type	bl_wdt_cli_init, @function
bl_wdt_cli_init:
.LFB8:
	.loc 1 48 1 is_stmt 1
	.cfi_startproc
	.loc 1 53 5
	.loc 1 54 1 is_stmt 0
	li	a0,0
	ret
	.cfi_endproc
.LFE8:
	.size	bl_wdt_cli_init, .-bl_wdt_cli_init
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	2
.LC5:
	.string	"wdt-init"
	.align	2
.LC6:
	.string	"wdt-init ms"
	.align	2
.LC7:
	.string	"wdt-feed"
	.align	2
.LC8:
	.string	"wdt-disable"
	.align	2
.LC9:
	.string	"timer-start"
	.globl	_fsymf_info_hosalbl_wdt_cli
	.align	2
.LC10:
	.string	"hosal.bl_wdt_cli"
	.comm	_fsymf_level_hosalbl_wdt_cli,4,4
	.align	2
.LC11:
	.string	"hosal"
	.weak	_fsymc_level_hosal
	.section	.sbss._fsymc_level_hosal,"aw",@nobits
	.align	2
	.type	_fsymc_level_hosal, @object
	.size	_fsymc_level_hosal, 4
_fsymc_level_hosal:
	.zero	4
	.section	.srodata.BLOG_HARD_DECLARE_DISABLE,"a"
	.align	2
	.type	BLOG_HARD_DECLARE_DISABLE, @object
	.size	BLOG_HARD_DECLARE_DISABLE, 4
BLOG_HARD_DECLARE_DISABLE:
	.zero	4
	.section	.static_blogcomponent_code.hosal,"a"
	.align	2
	.type	_fsymc_info_hosal, @object
	.size	_fsymc_info_hosal, 8
_fsymc_info_hosal:
	.word	_fsymc_level_hosal
	.word	.LC11
	.section	.static_blogfile_code.hosalbl_wdt_cli,"a"
	.align	2
	.type	_fsymf_info_hosalbl_wdt_cli, @object
	.size	_fsymf_info_hosalbl_wdt_cli, 8
_fsymf_info_hosalbl_wdt_cli:
	.word	_fsymf_level_hosalbl_wdt_cli
	.word	.LC10
	.section	.static_cli_cmds,"a"
	.align	2
	.type	cmds_user, @object
	.size	cmds_user, 48
cmds_user:
	.word	.LC5
	.word	.LC6
	.word	cmd_wdt_init
	.word	.LC7
	.word	.LC7
	.word	cmd_wdt_feed
	.word	.LC8
	.word	.LC8
	.word	cmd_wdt_disable
	.word	.LC9
	.word	.LC9
	.word	cmd_timer_start
	.text
.Letext0:
	.file 2 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 3 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 4 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/cli/cli/include/cli.h"
	.file 5 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/blog/blog_type.h"
	.file 6 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/blog/blog.h"
	.file 7 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/bl602_hal/bl_wdt.h"
	.file 8 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h"
	.file 9 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
	.file 10 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/utils/include/utils_log.h"
	.file 11 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdlib.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x4c6
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF48
	.byte	0xc
	.4byte	.LASF49
	.4byte	.LASF50
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.byte	0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF2
	.byte	0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF3
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF4
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF5
	.byte	0x4
	.4byte	.LASF10
	.byte	0x2
	.byte	0x4f
	.byte	0x1b
	.4byte	0x62
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF6
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF8
	.byte	0x5
	.byte	0x4
	.4byte	0x7d
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF9
	.byte	0x6
	.4byte	0x7d
	.byte	0x5
	.byte	0x4
	.4byte	0x84
	.byte	0x4
	.4byte	.LASF11
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x56
	.byte	0x6
	.4byte	0x8f
	.byte	0x7
	.4byte	.LASF23
	.byte	0xc
	.byte	0x4
	.byte	0x32
	.byte	0x8
	.4byte	0xd5
	.byte	0x8
	.4byte	.LASF12
	.byte	0x4
	.byte	0x33
	.byte	0x11
	.4byte	0x89
	.byte	0
	.byte	0x8
	.4byte	.LASF13
	.byte	0x4
	.byte	0x34
	.byte	0x11
	.4byte	0x89
	.byte	0x4
	.byte	0x8
	.4byte	.LASF14
	.byte	0x4
	.byte	0x36
	.byte	0xc
	.4byte	0xfa
	.byte	0x8
	.byte	0
	.byte	0x6
	.4byte	0xa0
	.byte	0x9
	.4byte	0xf4
	.byte	0xa
	.4byte	0x77
	.byte	0xa
	.4byte	0x2c
	.byte	0xa
	.4byte	0x2c
	.byte	0xa
	.4byte	0xf4
	.byte	0
	.byte	0x5
	.byte	0x4
	.4byte	0x77
	.byte	0x5
	.byte	0x4
	.4byte	0xda
	.byte	0xb
	.4byte	.LASF51
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x5
	.byte	0x22
	.byte	0xe
	.4byte	0x13d
	.byte	0xc
	.4byte	.LASF15
	.byte	0
	.byte	0xc
	.4byte	.LASF16
	.byte	0x1
	.byte	0xc
	.4byte	.LASF17
	.byte	0x2
	.byte	0xc
	.4byte	.LASF18
	.byte	0x3
	.byte	0xc
	.4byte	.LASF19
	.byte	0x4
	.byte	0xc
	.4byte	.LASF20
	.byte	0x5
	.byte	0xc
	.4byte	.LASF21
	.byte	0x6
	.byte	0
	.byte	0x4
	.4byte	.LASF22
	.byte	0x5
	.byte	0x2a
	.byte	0x3
	.4byte	0x100
	.byte	0x7
	.4byte	.LASF24
	.byte	0x8
	.byte	0x5
	.byte	0x2c
	.byte	0x10
	.4byte	0x171
	.byte	0x8
	.4byte	.LASF25
	.byte	0x5
	.byte	0x2d
	.byte	0x13
	.4byte	0x171
	.byte	0
	.byte	0x8
	.4byte	.LASF12
	.byte	0x5
	.byte	0x2e
	.byte	0xb
	.4byte	0x77
	.byte	0x4
	.byte	0
	.byte	0x5
	.byte	0x4
	.4byte	0x13d
	.byte	0x4
	.4byte	.LASF26
	.byte	0x5
	.byte	0x2f
	.byte	0x3
	.4byte	0x149
	.byte	0x6
	.4byte	0x177
	.byte	0xd
	.4byte	.LASF27
	.byte	0x6
	.byte	0x38
	.byte	0x1b
	.4byte	0x9b
	.byte	0x5
	.byte	0x3
	.4byte	BLOG_HARD_DECLARE_DISABLE
	.byte	0xe
	.4byte	.LASF29
	.byte	0x6
	.byte	0x45
	.byte	0x12
	.4byte	0x13d
	.byte	0x5
	.byte	0x3
	.4byte	_fsymc_level_hosal
	.byte	0xd
	.4byte	.LASF28
	.byte	0x6
	.byte	0x46
	.byte	0x1e
	.4byte	0x183
	.byte	0x5
	.byte	0x3
	.4byte	_fsymc_info_hosal
	.byte	0xe
	.4byte	.LASF30
	.byte	0x6
	.byte	0x53
	.byte	0x12
	.4byte	0x13d
	.byte	0x5
	.byte	0x3
	.4byte	_fsymf_level_hosalbl_wdt_cli
	.byte	0xe
	.4byte	.LASF31
	.byte	0x6
	.byte	0x54
	.byte	0x17
	.4byte	0x183
	.byte	0x5
	.byte	0x3
	.4byte	_fsymf_info_hosalbl_wdt_cli
	.byte	0xf
	.4byte	0xd5
	.4byte	0x1f2
	.byte	0x10
	.4byte	0x25
	.byte	0x3
	.byte	0
	.byte	0x6
	.4byte	0x1e2
	.byte	0xd
	.4byte	.LASF32
	.byte	0x1
	.byte	0x28
	.byte	0x21
	.4byte	0x1f2
	.byte	0x5
	.byte	0x3
	.4byte	cmds_user
	.byte	0x11
	.4byte	.LASF52
	.byte	0x1
	.byte	0x2f
	.byte	0x5
	.4byte	0x2c
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.byte	0x12
	.4byte	.LASF35
	.byte	0x1
	.byte	0x22
	.byte	0xd
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.4byte	0x28b
	.byte	0x13
	.string	"buf"
	.byte	0x1
	.byte	0x22
	.byte	0x23
	.4byte	0x77
	.4byte	.LLST0
	.byte	0x13
	.string	"len"
	.byte	0x1
	.byte	0x22
	.byte	0x2c
	.4byte	0x2c
	.4byte	.LLST1
	.byte	0x14
	.4byte	.LASF33
	.byte	0x1
	.byte	0x22
	.byte	0x35
	.4byte	0x2c
	.4byte	.LLST2
	.byte	0x14
	.4byte	.LASF34
	.byte	0x1
	.byte	0x22
	.byte	0x42
	.4byte	0xf4
	.4byte	.LLST3
	.byte	0x15
	.4byte	.LASF39
	.byte	0x1
	.byte	0x24
	.byte	0x5
	.4byte	0x2c
	.byte	0x16
	.4byte	.LVL1
	.4byte	0x45b
	.byte	0
	.byte	0x12
	.4byte	.LASF36
	.byte	0x1
	.byte	0x1d
	.byte	0xd
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0x2eb
	.byte	0x13
	.string	"buf"
	.byte	0x1
	.byte	0x1d
	.byte	0x23
	.4byte	0x77
	.4byte	.LLST4
	.byte	0x13
	.string	"len"
	.byte	0x1
	.byte	0x1d
	.byte	0x2c
	.4byte	0x2c
	.4byte	.LLST5
	.byte	0x14
	.4byte	.LASF33
	.byte	0x1
	.byte	0x1d
	.byte	0x35
	.4byte	0x2c
	.4byte	.LLST6
	.byte	0x14
	.4byte	.LASF34
	.byte	0x1
	.byte	0x1d
	.byte	0x42
	.4byte	0xf4
	.4byte	.LLST7
	.byte	0x16
	.4byte	.LVL3
	.4byte	0x467
	.byte	0
	.byte	0x12
	.4byte	.LASF37
	.byte	0x1
	.byte	0x18
	.byte	0xd
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0x34b
	.byte	0x13
	.string	"buf"
	.byte	0x1
	.byte	0x18
	.byte	0x20
	.4byte	0x77
	.4byte	.LLST8
	.byte	0x13
	.string	"len"
	.byte	0x1
	.byte	0x18
	.byte	0x29
	.4byte	0x2c
	.4byte	.LLST9
	.byte	0x14
	.4byte	.LASF33
	.byte	0x1
	.byte	0x18
	.byte	0x32
	.4byte	0x2c
	.4byte	.LLST10
	.byte	0x14
	.4byte	.LASF34
	.byte	0x1
	.byte	0x18
	.byte	0x3f
	.4byte	0xf4
	.4byte	.LLST11
	.byte	0x16
	.4byte	.LVL5
	.4byte	0x473
	.byte	0
	.byte	0x12
	.4byte	.LASF38
	.byte	0x1
	.byte	0x8
	.byte	0xd
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0x45b
	.byte	0x13
	.string	"buf"
	.byte	0x1
	.byte	0x8
	.byte	0x20
	.4byte	0x77
	.4byte	.LLST12
	.byte	0x13
	.string	"len"
	.byte	0x1
	.byte	0x8
	.byte	0x29
	.4byte	0x2c
	.4byte	.LLST13
	.byte	0x14
	.4byte	.LASF33
	.byte	0x1
	.byte	0x8
	.byte	0x32
	.4byte	0x2c
	.4byte	.LLST14
	.byte	0x14
	.4byte	.LASF34
	.byte	0x1
	.byte	0x8
	.byte	0x3f
	.4byte	0xf4
	.4byte	.LLST15
	.byte	0x17
	.string	"ms"
	.byte	0x1
	.byte	0xa
	.byte	0x9
	.4byte	0x2c
	.4byte	.LLST16
	.byte	0x18
	.4byte	.LVL7
	.4byte	0x47f
	.byte	0x18
	.4byte	.LVL8
	.4byte	0x48b
	.byte	0x19
	.4byte	.LVL10
	.4byte	0x498
	.4byte	0x3f0
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0x1a
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x1a
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x1a
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x3d
	.byte	0
	.byte	0x18
	.4byte	.LVL11
	.4byte	0x4a4
	.byte	0x18
	.4byte	.LVL14
	.4byte	0x4b1
	.byte	0x18
	.4byte	.LVL16
	.4byte	0x47f
	.byte	0x18
	.4byte	.LVL17
	.4byte	0x48b
	.byte	0x1b
	.4byte	.LVL18
	.4byte	0x498
	.4byte	0x448
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0x1a
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0x1a
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x1a
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x41
	.byte	0x1a
	.byte	0x1
	.byte	0x5f
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x16
	.4byte	.LVL21
	.4byte	0x4bd
	.byte	0x18
	.4byte	.LVL22
	.4byte	0x4a4
	.byte	0
	.byte	0x1c
	.4byte	.LASF39
	.4byte	.LASF39
	.byte	0x1
	.byte	0x24
	.byte	0x5
	.byte	0x1c
	.4byte	.LASF40
	.4byte	.LASF40
	.byte	0x7
	.byte	0x5
	.byte	0x6
	.byte	0x1c
	.4byte	.LASF41
	.4byte	.LASF41
	.byte	0x7
	.byte	0x4
	.byte	0x6
	.byte	0x1c
	.4byte	.LASF42
	.4byte	.LASF42
	.byte	0x8
	.byte	0x98
	.byte	0xc
	.byte	0x1d
	.4byte	.LASF43
	.4byte	.LASF43
	.byte	0x9
	.2byte	0x558
	.byte	0xc
	.byte	0x1c
	.4byte	.LASF44
	.4byte	.LASF44
	.byte	0xa
	.byte	0x81
	.byte	0x6
	.byte	0x1d
	.4byte	.LASF45
	.4byte	.LASF45
	.byte	0x9
	.2byte	0x547
	.byte	0xc
	.byte	0x1c
	.4byte	.LASF46
	.4byte	.LASF46
	.byte	0xb
	.byte	0x51
	.byte	0x5
	.byte	0x1c
	.4byte	.LASF47
	.4byte	.LASF47
	.byte	0x7
	.byte	0x3
	.byte	0x5
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
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x13
	.byte	0x1
	.byte	0x3
	.byte	0xe
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
	.byte	0x15
	.byte	0x1
	.byte	0x27
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x5
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xb
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0xe
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
	.byte	0xc
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xd
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
	.byte	0xe
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
	.byte	0x3f
	.byte	0x19
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0xf
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x10
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x11
	.byte	0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.byte	0x12
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
	.byte	0x13
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
	.byte	0x14
	.byte	0x5
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
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x15
	.byte	0x2e
	.byte	0
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
	.byte	0x3c
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x16
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
	.byte	0x17
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
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x18
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x19
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x95,0x42
	.byte	0x19
	.byte	0x31
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1a
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x1b
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
	.byte	0x1c
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
	.byte	0x1d
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
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1-1
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL1-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL1-1
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL1-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL1-1
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL0
	.4byte	.LVL1-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL1-1
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL2
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL3-1
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL2
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL3-1
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL2
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL3-1
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL2
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL3-1
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL4
	.4byte	.LVL5-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL5-1
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL4
	.4byte	.LVL5-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL5-1
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL4
	.4byte	.LVL5-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL5-1
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL4
	.4byte	.LVL5-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL5-1
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL6
	.4byte	.LVL7-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL7-1
	.4byte	.LVL12
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL13
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL6
	.4byte	.LVL7-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL7-1
	.4byte	.LVL12
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL14-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL14-1
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL6
	.4byte	.LVL7-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL7-1
	.4byte	.LVL12
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL14-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL14-1
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL23
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL6
	.4byte	.LVL7-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL7-1
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL15
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL6
	.4byte	.LVL15
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL19
	.4byte	.LVL21-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL21
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x3c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF7:
	.string	"long long int"
.LASF22:
	.string	"blog_level_t"
.LASF20:
	.string	"BLOG_LEVEL_ASSERT"
.LASF36:
	.string	"cmd_wdt_disable"
.LASF50:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/hosal"
.LASF26:
	.string	"blog_info_t"
.LASF28:
	.string	"_fsymc_info_hosal"
.LASF46:
	.string	"atoi"
.LASF2:
	.string	"unsigned char"
.LASF44:
	.string	"bl_printk"
.LASF37:
	.string	"cmd_wdt_feed"
.LASF51:
	.string	"_blog_leve"
.LASF38:
	.string	"cmd_wdt_init"
.LASF4:
	.string	"short unsigned int"
.LASF49:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/bl602_hal/bl_wdt_cli.c"
.LASF13:
	.string	"help"
.LASF19:
	.string	"BLOG_LEVEL_ERROR"
.LASF23:
	.string	"cli_command"
.LASF18:
	.string	"BLOG_LEVEL_WARN"
.LASF24:
	.string	"_blog_info"
.LASF10:
	.string	"__uint32_t"
.LASF39:
	.string	"bl_timer_tick_enable"
.LASF52:
	.string	"bl_wdt_cli_init"
.LASF35:
	.string	"cmd_timer_start"
.LASF6:
	.string	"long unsigned int"
.LASF0:
	.string	"unsigned int"
.LASF15:
	.string	"BLOG_LEVEL_ALL"
.LASF8:
	.string	"long long unsigned int"
.LASF42:
	.string	"xPortIsInsideInterrupt"
.LASF40:
	.string	"bl_wdt_disable"
.LASF27:
	.string	"BLOG_HARD_DECLARE_DISABLE"
.LASF17:
	.string	"BLOG_LEVEL_INFO"
.LASF14:
	.string	"function"
.LASF30:
	.string	"_fsymf_level_hosalbl_wdt_cli"
.LASF33:
	.string	"argc"
.LASF25:
	.string	"level"
.LASF32:
	.string	"cmds_user"
.LASF48:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
.LASF9:
	.string	"char"
.LASF43:
	.string	"xTaskGetTickCountFromISR"
.LASF45:
	.string	"xTaskGetTickCount"
.LASF47:
	.string	"bl_wdt_init"
.LASF41:
	.string	"bl_wdt_feed"
.LASF3:
	.string	"short int"
.LASF34:
	.string	"argv"
.LASF29:
	.string	"_fsymc_level_hosal"
.LASF11:
	.string	"uint32_t"
.LASF5:
	.string	"long int"
.LASF1:
	.string	"signed char"
.LASF31:
	.string	"_fsymf_info_hosalbl_wdt_cli"
.LASF16:
	.string	"BLOG_LEVEL_DEBUG"
.LASF12:
	.string	"name"
.LASF21:
	.string	"BLOG_LEVEL_NEVER"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
