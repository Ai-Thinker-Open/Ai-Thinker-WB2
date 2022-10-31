	.file	"hosal_efuse.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.rodata.hosal_efuse_read.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"hosal_efuse.c"
	.align	2
.LC1:
	.string	"\033[31mERROR\033[0m"
	.align	2
.LC2:
	.string	"%s (%d)[%s:%4d] parameter error!\r\n\r\n"
	.section	.text.hosal_efuse_read,"ax",@progbits
	.align	1
	.globl	hosal_efuse_read
	.type	hosal_efuse_read, @function
hosal_efuse_read:
.LFB4:
	.file 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/bl602_hal/hosal_efuse.c"
	.loc 1 7 1
	.cfi_startproc
.LVL0:
	.loc 1 9 5
	.loc 1 7 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	.loc 1 9 18
	or	a5,a1,a0
	.loc 1 7 1
	sw	ra,28(sp)
	sw	s0,24(sp)
	sw	s1,20(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.loc 1 9 18
	andi	a5,a5,3
	beq	a5,zero,.L2
	.loc 1 10 9 is_stmt 1 discriminator 1
	.loc 1 10 47 discriminator 1
	.loc 1 10 52 discriminator 1
	.loc 1 10 74 is_stmt 0 discriminator 1
	lui	a5,%hi(_fsymc_level_hosal)
	.loc 1 10 55 discriminator 1
	lw	a4,%lo(_fsymc_level_hosal)(a5)
	li	a5,4
	.loc 1 11 16 discriminator 1
	li	a0,-1
.LVL1:
	.loc 1 10 55 discriminator 1
	bgtu	a4,a5,.L1
	.loc 1 10 118 discriminator 3
	lui	a4,%hi(_fsymf_level_hosalhosal_efuse)
	.loc 1 10 97 discriminator 3
	lw	a4,%lo(_fsymf_level_hosalhosal_efuse)(a4)
	bgtu	a4,a5,.L1
	.loc 1 10 155 is_stmt 1 discriminator 5
	.loc 1 10 240 is_stmt 0 discriminator 5
	call	xPortIsInsideInterrupt
.LVL2:
	.loc 1 10 155 discriminator 5
	beq	a0,zero,.L4
	.loc 1 10 269 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL3:
.L9:
	.loc 1 10 300 discriminator 8
	mv	a2,a0
	.loc 1 10 155 discriminator 8
	lui	a3,%hi(.LC0)
	lui	a1,%hi(.LC1)
	lui	a0,%hi(.LC2)
	addi	a0,a0,%lo(.LC2)
	li	a4,10
	addi	a3,a3,%lo(.LC0)
	addi	a1,a1,%lo(.LC1)
	call	bl_printk
.LVL4:
	.loc 1 11 16 discriminator 8
	li	a0,-1
.L1:
	.loc 1 19 1
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	lw	s1,20(sp)
	.cfi_restore 9
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.L4:
	.cfi_restore_state
	.loc 1 10 300 discriminator 8
	call	xTaskGetTickCount
.LVL5:
	j	.L9
.LVL6:
.L2:
	mv	s0,a0
	sw	a2,12(sp)
	sw	a1,8(sp)
	.loc 1 14 5 is_stmt 1 discriminator 1
.LBB2:
	.loc 1 14 14 discriminator 1
	.loc 1 14 48 is_stmt 0 discriminator 1
	call	bl_irq_save
.LVL7:
	.loc 1 15 5 discriminator 1
	lw	a2,12(sp)
	lw	a1,8(sp)
	.loc 1 14 48 discriminator 1
	mv	s1,a0
.LVL8:
	.loc 1 14 62 is_stmt 1 discriminator 1
	.loc 1 15 5 discriminator 1
	li	a3,1
	mv	a0,s0
	call	mfg_efuse_read
.LVL9:
	.loc 1 16 5 discriminator 1
	mv	a0,s1
	call	bl_irq_restore
.LVL10:
.LBE2:
	.loc 1 16 52 discriminator 1
	.loc 1 18 5 discriminator 1
	.loc 1 18 12 is_stmt 0 discriminator 1
	li	a0,0
	j	.L1
	.cfi_endproc
.LFE4:
	.size	hosal_efuse_read, .-hosal_efuse_read
	.section	.text.hosal_efuse_write,"ax",@progbits
	.align	1
	.globl	hosal_efuse_write
	.type	hosal_efuse_write, @function
hosal_efuse_write:
.LFB5:
	.loc 1 22 1 is_stmt 1
	.cfi_startproc
.LVL11:
	.loc 1 24 5
	.loc 1 22 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	.loc 1 24 18
	or	a5,a1,a0
	.loc 1 22 1
	sw	ra,28(sp)
	sw	s0,24(sp)
	sw	s1,20(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.loc 1 24 18
	andi	a5,a5,3
	beq	a5,zero,.L11
	.loc 1 25 9 is_stmt 1 discriminator 1
	.loc 1 25 47 discriminator 1
	.loc 1 25 52 discriminator 1
	.loc 1 25 74 is_stmt 0 discriminator 1
	lui	a5,%hi(_fsymc_level_hosal)
	.loc 1 25 55 discriminator 1
	lw	a4,%lo(_fsymc_level_hosal)(a5)
	li	a5,4
	.loc 1 26 16 discriminator 1
	li	a0,-1
.LVL12:
	.loc 1 25 55 discriminator 1
	bgtu	a4,a5,.L10
	.loc 1 25 118 discriminator 3
	lui	a4,%hi(_fsymf_level_hosalhosal_efuse)
	.loc 1 25 97 discriminator 3
	lw	a4,%lo(_fsymf_level_hosalhosal_efuse)(a4)
	bgtu	a4,a5,.L10
	.loc 1 25 155 is_stmt 1 discriminator 5
	.loc 1 25 240 is_stmt 0 discriminator 5
	call	xPortIsInsideInterrupt
.LVL13:
	.loc 1 25 155 discriminator 5
	beq	a0,zero,.L13
	.loc 1 25 269 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL14:
.L18:
	.loc 1 25 300 discriminator 8
	mv	a2,a0
	.loc 1 25 155 discriminator 8
	lui	a3,%hi(.LC0)
	lui	a1,%hi(.LC1)
	lui	a0,%hi(.LC2)
	addi	a0,a0,%lo(.LC2)
	li	a4,25
	addi	a3,a3,%lo(.LC0)
	addi	a1,a1,%lo(.LC1)
	call	bl_printk
.LVL15:
	.loc 1 26 16 discriminator 8
	li	a0,-1
.L10:
	.loc 1 35 1
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	lw	s1,20(sp)
	.cfi_restore 9
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.L13:
	.cfi_restore_state
	.loc 1 25 300 discriminator 8
	call	xTaskGetTickCount
.LVL16:
	j	.L18
.LVL17:
.L11:
	mv	s0,a0
	sw	a2,12(sp)
	sw	a1,8(sp)
	.loc 1 29 5 is_stmt 1 discriminator 1
.LBB3:
	.loc 1 29 14 discriminator 1
	.loc 1 29 48 is_stmt 0 discriminator 1
	call	bl_irq_save
.LVL18:
	.loc 1 30 5 discriminator 1
	lw	a2,12(sp)
	lw	a1,8(sp)
	.loc 1 29 48 discriminator 1
	mv	s1,a0
.LVL19:
	.loc 1 29 62 is_stmt 1 discriminator 1
	.loc 1 30 5 discriminator 1
	mv	a0,s0
	call	mfg_efuse_write_pre
.LVL20:
	.loc 1 31 5 discriminator 1
	call	mfg_efuse_program
.LVL21:
	.loc 1 32 5 discriminator 1
	mv	a0,s1
	call	bl_irq_restore
.LVL22:
.LBE3:
	.loc 1 32 52 discriminator 1
	.loc 1 34 5 discriminator 1
	.loc 1 34 12 is_stmt 0 discriminator 1
	li	a0,0
	j	.L10
	.cfi_endproc
.LFE5:
	.size	hosal_efuse_write, .-hosal_efuse_write
	.globl	_fsymf_info_hosalhosal_efuse
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	2
.LC3:
	.string	"hosal.hosal_efuse"
	.comm	_fsymf_level_hosalhosal_efuse,4,4
	.align	2
.LC4:
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
	.word	.LC4
	.section	.static_blogfile_code.hosalhosal_efuse,"a"
	.align	2
	.type	_fsymf_info_hosalhosal_efuse, @object
	.size	_fsymf_info_hosalhosal_efuse, 8
_fsymf_info_hosalhosal_efuse:
	.word	_fsymf_level_hosalhosal_efuse
	.word	.LC3
	.text
.Letext0:
	.file 2 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.file 3 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/blog/blog_type.h"
	.file 4 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/blog/blog.h"
	.file 5 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/bl602_hal/bl_irq.h"
	.file 6 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_mfg_efuse.h"
	.file 7 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h"
	.file 8 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
	.file 9 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/utils/include/utils_log.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x3c0
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF41
	.byte	0xc
	.4byte	.LASF42
	.4byte	.LASF43
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.byte	0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF1
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF2
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF3
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF4
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.byte	0x3
	.4byte	.LASF17
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0x60
	.byte	0x4
	.4byte	0x4f
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF6
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF7
	.byte	0x5
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.byte	0x6
	.byte	0x4
	.4byte	0x82
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF9
	.byte	0x7
	.4byte	.LASF44
	.byte	0x7
	.byte	0x4
	.4byte	0x75
	.byte	0x3
	.byte	0x22
	.byte	0xe
	.4byte	0xc6
	.byte	0x8
	.4byte	.LASF10
	.byte	0
	.byte	0x8
	.4byte	.LASF11
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.byte	0x2
	.byte	0x8
	.4byte	.LASF13
	.byte	0x3
	.byte	0x8
	.4byte	.LASF14
	.byte	0x4
	.byte	0x8
	.4byte	.LASF15
	.byte	0x5
	.byte	0x8
	.4byte	.LASF16
	.byte	0x6
	.byte	0
	.byte	0x3
	.4byte	.LASF18
	.byte	0x3
	.byte	0x2a
	.byte	0x3
	.4byte	0x89
	.byte	0x9
	.4byte	.LASF45
	.byte	0x8
	.byte	0x3
	.byte	0x2c
	.byte	0x10
	.4byte	0xfa
	.byte	0xa
	.4byte	.LASF19
	.byte	0x3
	.byte	0x2d
	.byte	0x13
	.4byte	0xfa
	.byte	0
	.byte	0xa
	.4byte	.LASF20
	.byte	0x3
	.byte	0x2e
	.byte	0xb
	.4byte	0x7c
	.byte	0x4
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0xc6
	.byte	0x3
	.4byte	.LASF21
	.byte	0x3
	.byte	0x2f
	.byte	0x3
	.4byte	0xd2
	.byte	0x4
	.4byte	0x100
	.byte	0xb
	.4byte	.LASF22
	.byte	0x4
	.byte	0x38
	.byte	0x1b
	.4byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	BLOG_HARD_DECLARE_DISABLE
	.byte	0xc
	.4byte	.LASF24
	.byte	0x4
	.byte	0x45
	.byte	0x12
	.4byte	0xc6
	.byte	0x5
	.byte	0x3
	.4byte	_fsymc_level_hosal
	.byte	0xb
	.4byte	.LASF23
	.byte	0x4
	.byte	0x46
	.byte	0x1e
	.4byte	0x10c
	.byte	0x5
	.byte	0x3
	.4byte	_fsymc_info_hosal
	.byte	0xc
	.4byte	.LASF25
	.byte	0x4
	.byte	0x53
	.byte	0x12
	.4byte	0xc6
	.byte	0x5
	.byte	0x3
	.4byte	_fsymf_level_hosalhosal_efuse
	.byte	0xc
	.4byte	.LASF26
	.byte	0x4
	.byte	0x54
	.byte	0x17
	.4byte	0x10c
	.byte	0x5
	.byte	0x3
	.4byte	_fsymf_info_hosalhosal_efuse
	.byte	0xd
	.4byte	.LASF30
	.byte	0x1
	.byte	0x15
	.byte	0x5
	.4byte	0x6e
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0x25f
	.byte	0xe
	.4byte	.LASF27
	.byte	0x1
	.byte	0x15
	.byte	0x20
	.4byte	0x4f
	.4byte	.LLST3
	.byte	0xe
	.4byte	.LASF28
	.byte	0x1
	.byte	0x15
	.byte	0x30
	.4byte	0x25f
	.4byte	.LLST4
	.byte	0xf
	.string	"len"
	.byte	0x1
	.byte	0x15
	.byte	0x3f
	.4byte	0x4f
	.4byte	.LLST5
	.byte	0x10
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.4byte	0x215
	.byte	0xb
	.4byte	.LASF29
	.byte	0x1
	.byte	0x1d
	.byte	0x12
	.4byte	0x6e
	.byte	0x1
	.byte	0x59
	.byte	0x11
	.4byte	.LVL18
	.4byte	0x355
	.byte	0x12
	.4byte	.LVL20
	.4byte	0x361
	.4byte	0x1fb
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x13
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0x68
	.byte	0x6
	.byte	0x13
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0x91
	.byte	0x6c
	.byte	0x6
	.byte	0
	.byte	0x11
	.4byte	.LVL21
	.4byte	0x36d
	.byte	0x14
	.4byte	.LVL22
	.4byte	0x379
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0
	.byte	0x11
	.4byte	.LVL13
	.4byte	0x385
	.byte	0x11
	.4byte	.LVL14
	.4byte	0x391
	.byte	0x12
	.4byte	.LVL15
	.4byte	0x39e
	.4byte	0x255
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0x13
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x13
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x13
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x49
	.byte	0
	.byte	0x11
	.4byte	.LVL16
	.4byte	0x3aa
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x4f
	.byte	0xd
	.4byte	.LASF31
	.byte	0x1
	.byte	0x6
	.byte	0x5
	.4byte	0x6e
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0x355
	.byte	0xe
	.4byte	.LASF27
	.byte	0x1
	.byte	0x6
	.byte	0x1f
	.4byte	0x4f
	.4byte	.LLST0
	.byte	0xe
	.4byte	.LASF28
	.byte	0x1
	.byte	0x6
	.byte	0x2f
	.4byte	0x25f
	.4byte	.LLST1
	.byte	0xf
	.string	"len"
	.byte	0x1
	.byte	0x6
	.byte	0x3e
	.4byte	0x4f
	.4byte	.LLST2
	.byte	0x10
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.4byte	0x30b
	.byte	0xb
	.4byte	.LASF29
	.byte	0x1
	.byte	0xe
	.byte	0x12
	.4byte	0x6e
	.byte	0x1
	.byte	0x59
	.byte	0x11
	.4byte	.LVL7
	.4byte	0x355
	.byte	0x12
	.4byte	.LVL9
	.4byte	0x3b7
	.4byte	0x2fa
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x13
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0x68
	.byte	0x6
	.byte	0x13
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0x91
	.byte	0x6c
	.byte	0x6
	.byte	0x13
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x14
	.4byte	.LVL10
	.4byte	0x379
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0
	.byte	0x11
	.4byte	.LVL2
	.4byte	0x385
	.byte	0x11
	.4byte	.LVL3
	.4byte	0x391
	.byte	0x12
	.4byte	.LVL4
	.4byte	0x39e
	.4byte	0x34b
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0x13
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x13
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x13
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x3a
	.byte	0
	.byte	0x11
	.4byte	.LVL5
	.4byte	0x3aa
	.byte	0
	.byte	0x15
	.4byte	.LASF32
	.4byte	.LASF32
	.byte	0x5
	.byte	0x1a
	.byte	0x5
	.byte	0x15
	.4byte	.LASF33
	.4byte	.LASF33
	.byte	0x6
	.byte	0x16
	.byte	0x8
	.byte	0x15
	.4byte	.LASF34
	.4byte	.LASF34
	.byte	0x6
	.byte	0x15
	.byte	0x8
	.byte	0x15
	.4byte	.LASF35
	.4byte	.LASF35
	.byte	0x5
	.byte	0x1b
	.byte	0x6
	.byte	0x15
	.4byte	.LASF36
	.4byte	.LASF36
	.byte	0x7
	.byte	0x98
	.byte	0xc
	.byte	0x16
	.4byte	.LASF37
	.4byte	.LASF37
	.byte	0x8
	.2byte	0x558
	.byte	0xc
	.byte	0x15
	.4byte	.LASF38
	.4byte	.LASF38
	.byte	0x9
	.byte	0x81
	.byte	0x6
	.byte	0x16
	.4byte	.LASF39
	.4byte	.LASF39
	.byte	0x8
	.2byte	0x547
	.byte	0xc
	.byte	0x15
	.4byte	.LASF40
	.4byte	.LASF40
	.byte	0x6
	.byte	0x14
	.byte	0x8
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
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x5
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
	.byte	0x6
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x7
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
	.byte	0x8
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x9
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
	.byte	0xa
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
	.byte	0xb
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
	.byte	0x3f
	.byte	0x19
	.byte	0x2
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
	.byte	0xe
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
	.byte	0xf
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
	.byte	0x10
	.byte	0xb
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x11
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x12
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
	.byte	0x13
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x14
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x15
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
	.byte	0x16
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
.LLST3:
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL12
	.4byte	.LVL17
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LVL18-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL18-1
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL11
	.4byte	.LVL13-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL13-1
	.4byte	.LVL17
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LVL18-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL18-1
	.4byte	.LFE5
	.2byte	0x2
	.byte	0x91
	.byte	0x68
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL11
	.4byte	.LVL13-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL13-1
	.4byte	.LVL17
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LVL18-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL18-1
	.4byte	.LFE5
	.2byte	0x2
	.byte	0x91
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1
	.4byte	.LVL6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LVL7-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL7-1
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL2-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL2-1
	.4byte	.LVL6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LVL7-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL7-1
	.4byte	.LFE4
	.2byte	0x2
	.byte	0x91
	.byte	0x68
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL2-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL2-1
	.4byte	.LVL6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LVL7-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL7-1
	.4byte	.LFE4
	.2byte	0x2
	.byte	0x91
	.byte	0x6c
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x24
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF3:
	.string	"long long int"
.LASF18:
	.string	"blog_level_t"
.LASF15:
	.string	"BLOG_LEVEL_ASSERT"
.LASF32:
	.string	"bl_irq_save"
.LASF5:
	.string	"short unsigned int"
.LASF43:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/hosal"
.LASF35:
	.string	"bl_irq_restore"
.LASF21:
	.string	"blog_info_t"
.LASF23:
	.string	"_fsymc_info_hosal"
.LASF24:
	.string	"_fsymc_level_hosal"
.LASF28:
	.string	"data"
.LASF4:
	.string	"unsigned char"
.LASF38:
	.string	"bl_printk"
.LASF44:
	.string	"_blog_leve"
.LASF6:
	.string	"long unsigned int"
.LASF27:
	.string	"addr"
.LASF14:
	.string	"BLOG_LEVEL_ERROR"
.LASF13:
	.string	"BLOG_LEVEL_WARN"
.LASF45:
	.string	"_blog_info"
.LASF33:
	.string	"mfg_efuse_write_pre"
.LASF42:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/bl602_hal/hosal_efuse.c"
.LASF8:
	.string	"unsigned int"
.LASF10:
	.string	"BLOG_LEVEL_ALL"
.LASF30:
	.string	"hosal_efuse_write"
.LASF7:
	.string	"long long unsigned int"
.LASF31:
	.string	"hosal_efuse_read"
.LASF36:
	.string	"xPortIsInsideInterrupt"
.LASF22:
	.string	"BLOG_HARD_DECLARE_DISABLE"
.LASF12:
	.string	"BLOG_LEVEL_INFO"
.LASF40:
	.string	"mfg_efuse_read"
.LASF19:
	.string	"level"
.LASF41:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
.LASF9:
	.string	"char"
.LASF37:
	.string	"xTaskGetTickCountFromISR"
.LASF29:
	.string	"____global_prev_mie_irq____"
.LASF1:
	.string	"short int"
.LASF34:
	.string	"mfg_efuse_program"
.LASF25:
	.string	"_fsymf_level_hosalhosal_efuse"
.LASF17:
	.string	"uint32_t"
.LASF2:
	.string	"long int"
.LASF0:
	.string	"signed char"
.LASF39:
	.string	"xTaskGetTickCount"
.LASF11:
	.string	"BLOG_LEVEL_DEBUG"
.LASF20:
	.string	"name"
.LASF16:
	.string	"BLOG_LEVEL_NEVER"
.LASF26:
	.string	"_fsymf_info_hosalhosal_efuse"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
