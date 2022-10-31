	.file	"hal_hbn.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.rodata.hal_hbn_init.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"hal_hbn.c"
	.align	2
.LC1:
	.string	"\033[31mERROR\033[0m"
	.align	2
.LC2:
	.string	"%s (%d)[%s:%4d] arg error.\r\n\r\n"
	.align	2
.LC3:
	.string	"%s (%d)[%s:%4d] mem error\r\n"
	.align	2
.LC4:
	.string	"%s (%d)[%s:%4d] malloc error.\r\n\r\n"
	.align	2
.LC5:
	.string	"%s (%d)[%s:%4d] ntfgpio not init.\r\n\r\n"
	.section	.text.hal_hbn_init,"ax",@progbits
	.align	1
	.globl	hal_hbn_init
	.type	hal_hbn_init, @function
hal_hbn_init:
.LFB28:
	.file 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/bl602_hal/hal_hbn.c"
	.loc 1 49 1
	.cfi_startproc
.LVL0:
	.loc 1 50 5
	.loc 1 52 5
	.loc 1 52 28 is_stmt 0
	addi	a5,a1,-1
	.loc 1 49 1
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	.loc 1 52 8
	slli	a5,a5,24
	.loc 1 49 1
	sw	ra,28(sp)
	sw	s0,24(sp)
	sw	s1,20(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.loc 1 52 8
	srai	a5,a5,24
	bge	a5,zero,.L2
	.loc 1 53 9 is_stmt 1 discriminator 1
	.loc 1 53 47 discriminator 1
	.loc 1 53 52 discriminator 1
	.loc 1 53 74 is_stmt 0 discriminator 1
	lui	a5,%hi(_fsymc_level_hosal)
	.loc 1 53 55 discriminator 1
	lw	a4,%lo(_fsymc_level_hosal)(a5)
	li	a5,4
	bleu	a4,a5,.L3
.LVL1:
.L32:
	.loc 1 59 16 discriminator 10
	li	a0,-1
.L1:
	.loc 1 73 1
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
.LVL2:
.L3:
	.cfi_restore_state
	.loc 1 53 118 discriminator 3
	lui	a4,%hi(_fsymf_level_hosalhal_hbn)
	.loc 1 53 97 discriminator 3
	lw	a4,%lo(_fsymf_level_hosalhal_hbn)(a4)
	bgtu	a4,a5,.L32
	.loc 1 53 151 is_stmt 1 discriminator 5
	.loc 1 53 230 is_stmt 0 discriminator 5
	call	xPortIsInsideInterrupt
.LVL3:
	.loc 1 53 151 discriminator 5
	beq	a0,zero,.L6
	.loc 1 53 259 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL4:
.L26:
	.loc 1 53 290 discriminator 8
	mv	a2,a0
	.loc 1 53 151 discriminator 8
	lui	a3,%hi(.LC0)
	lui	a1,%hi(.LC1)
	lui	a0,%hi(.LC2)
	li	a4,53
	addi	a3,a3,%lo(.LC0)
	addi	a1,a1,%lo(.LC1)
	addi	a0,a0,%lo(.LC2)
.LVL5:
.L33:
	.loc 1 58 151 discriminator 10
	call	bl_printk
.LVL6:
	j	.L32
.LVL7:
.L6:
	.loc 1 53 290 discriminator 8
	call	xTaskGetTickCount
.LVL8:
	j	.L26
.LVL9:
.L2:
	mv	s1,a0
	.loc 1 56 5 is_stmt 1
	.loc 1 56 11 is_stmt 0
	addi	a0,a1,3
.LVL10:
	sw	a1,12(sp)
	call	pvPortMalloc
.LVL11:
	.loc 1 57 8
	lw	a2,12(sp)
	.loc 1 56 11
	mv	s0,a0
.LVL12:
	.loc 1 57 5 is_stmt 1
	.loc 1 57 8 is_stmt 0
	bne	a0,zero,.L8
	.loc 1 58 9 is_stmt 1 discriminator 1
	.loc 1 58 47 discriminator 1
	.loc 1 58 52 discriminator 1
	.loc 1 58 74 is_stmt 0 discriminator 1
	lui	a5,%hi(_fsymc_level_hosal)
	.loc 1 58 55 discriminator 1
	lw	a4,%lo(_fsymc_level_hosal)(a5)
	li	a5,4
	bgtu	a4,a5,.L32
	.loc 1 58 118 discriminator 3
	lui	a4,%hi(_fsymf_level_hosalhal_hbn)
	.loc 1 58 97 discriminator 3
	lw	a4,%lo(_fsymf_level_hosalhal_hbn)(a4)
	bgtu	a4,a5,.L32
	.loc 1 58 151 is_stmt 1 discriminator 5
	.loc 1 58 225 is_stmt 0 discriminator 5
	call	xPortIsInsideInterrupt
.LVL13:
	.loc 1 58 151 discriminator 5
	beq	a0,zero,.L9
	.loc 1 58 254 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL14:
.L27:
	.loc 1 58 285 discriminator 8
	mv	a2,a0
	.loc 1 58 151 discriminator 8
	lui	a3,%hi(.LC0)
	lui	a1,%hi(.LC1)
	lui	a0,%hi(.LC3)
	li	a4,58
	addi	a3,a3,%lo(.LC0)
	addi	a1,a1,%lo(.LC1)
	addi	a0,a0,%lo(.LC3)
	j	.L33
.L9:
	.loc 1 58 285 discriminator 8
	call	xTaskGetTickCount
.LVL15:
	j	.L27
.L8:
	.loc 1 62 5 is_stmt 1
	.loc 1 62 17 is_stmt 0
	li	a5,1
	sb	a5,1(a0)
	.loc 1 63 5 is_stmt 1
	.loc 1 63 17 is_stmt 0
	sb	a2,0(a0)
	.loc 1 64 5 is_stmt 1
	mv	a1,s1
	addi	a0,a0,2
	.loc 1 66 9 is_stmt 0
	lui	s1,%hi(.LANCHOR0)
.LVL16:
	.loc 1 64 5
	call	memcpy
.LVL17:
	.loc 1 66 5 is_stmt 1
	.loc 1 66 8 is_stmt 0
	lw	a5,%lo(.LANCHOR0)(s1)
	addi	s1,s1,%lo(.LANCHOR0)
	bne	a5,zero,.L11
	.loc 1 67 9 is_stmt 1
.LBB6:
.LBB7:
	.loc 1 18 5
	.loc 1 18 16 is_stmt 0
	li	a0,8
	call	pvPortMalloc
.LVL18:
	.loc 1 18 14
	sw	a0,0(s1)
	.loc 1 19 5 is_stmt 1
	.loc 1 19 8 is_stmt 0
	bne	a0,zero,.L12
	.loc 1 20 9 is_stmt 1
	.loc 1 20 47
	.loc 1 20 52
	.loc 1 20 74 is_stmt 0
	lui	a5,%hi(_fsymc_level_hosal)
	.loc 1 20 55
	lw	a4,%lo(_fsymc_level_hosal)(a5)
	li	a5,4
	bleu	a4,a5,.L13
.L31:
.LBE7:
.LBE6:
.LBB10:
.LBB11:
	.loc 1 45 5 is_stmt 1
.LBE11:
.LBE10:
	.loc 1 72 12 is_stmt 0
	li	a0,0
.LBB15:
.LBB12:
	.loc 1 45 12
	j	.L1
.L13:
.LBE12:
.LBE15:
.LBB16:
.LBB8:
	.loc 1 20 118
	lui	a4,%hi(_fsymf_level_hosalhal_hbn)
	.loc 1 20 97
	lw	a4,%lo(_fsymf_level_hosalhal_hbn)(a4)
	bgtu	a4,a5,.L15
	.loc 1 20 151 is_stmt 1
	.loc 1 20 233 is_stmt 0
	call	xPortIsInsideInterrupt
.LVL19:
	.loc 1 20 151
	beq	a0,zero,.L16
	.loc 1 20 262
	call	xTaskGetTickCountFromISR
.LVL20:
.L28:
	.loc 1 20 293
	mv	a2,a0
	.loc 1 20 151
	lui	a3,%hi(.LC0)
	lui	a1,%hi(.LC1)
	lui	a0,%hi(.LC4)
	li	a4,20
	addi	a3,a3,%lo(.LC0)
	addi	a1,a1,%lo(.LC1)
	addi	a0,a0,%lo(.LC4)
	call	bl_printk
.LVL21:
.L18:
.LBE8:
.LBE16:
	.loc 1 70 5 is_stmt 1
.LBB17:
.LBB13:
	.loc 1 29 5
	.loc 1 31 5
	.loc 1 31 8 is_stmt 0
	lw	a5,0(s1)
	bne	a5,zero,.L11
	.loc 1 32 9 is_stmt 1
	.loc 1 32 47
	.loc 1 32 52
	.loc 1 32 74 is_stmt 0
	lui	a5,%hi(_fsymc_level_hosal)
	.loc 1 32 55
	lw	a4,%lo(_fsymc_level_hosal)(a5)
	li	a5,4
	bgtu	a4,a5,.L31
.LVL22:
.L15:
	.loc 1 32 118
	lui	a5,%hi(_fsymf_level_hosalhal_hbn)
	.loc 1 32 97
	lw	a4,%lo(_fsymf_level_hosalhal_hbn)(a5)
	li	a5,4
	bgtu	a4,a5,.L31
	.loc 1 32 151 is_stmt 1
	.loc 1 32 237 is_stmt 0
	call	xPortIsInsideInterrupt
.LVL23:
	.loc 1 32 151
	beq	a0,zero,.L20
	.loc 1 32 266
	call	xTaskGetTickCountFromISR
.LVL24:
.L29:
	.loc 1 32 297
	mv	a2,a0
	.loc 1 32 151
	lui	a3,%hi(.LC0)
	lui	a1,%hi(.LC1)
	lui	a0,%hi(.LC5)
	li	a4,32
	addi	a3,a3,%lo(.LC0)
	addi	a1,a1,%lo(.LC1)
	addi	a0,a0,%lo(.LC5)
.LVL25:
.L34:
	.loc 1 37 151
	call	bl_printk
.LVL26:
	j	.L31
.LVL27:
.L16:
.LBE13:
.LBE17:
.LBB18:
.LBB9:
	.loc 1 20 293
	call	xTaskGetTickCount
.LVL28:
	j	.L28
.L12:
	.loc 1 23 5 is_stmt 1
	call	utils_notifier_chain_init
.LVL29:
	.loc 1 24 5
	.loc 1 24 12 is_stmt 0
	j	.L18
.LVL30:
.L20:
.LBE9:
.LBE18:
.LBB19:
.LBB14:
	.loc 1 32 297
	call	xTaskGetTickCount
.LVL31:
	j	.L29
.LVL32:
.L11:
	.loc 1 35 5 is_stmt 1
	.loc 1 35 16 is_stmt 0
	li	a0,16
	call	pvPortMalloc
.LVL33:
	mv	a1,a0
.LVL34:
	.loc 1 36 5 is_stmt 1
	.loc 1 36 8 is_stmt 0
	bne	a0,zero,.L22
	.loc 1 37 9 is_stmt 1
	.loc 1 37 47
	.loc 1 37 52
	.loc 1 37 74 is_stmt 0
	lui	a5,%hi(_fsymc_level_hosal)
	.loc 1 37 55
	lw	a4,%lo(_fsymc_level_hosal)(a5)
	li	a5,4
	bgtu	a4,a5,.L31
	.loc 1 37 118
	lui	a4,%hi(_fsymf_level_hosalhal_hbn)
	.loc 1 37 97
	lw	a4,%lo(_fsymf_level_hosalhal_hbn)(a4)
	bgtu	a4,a5,.L31
	.loc 1 37 151 is_stmt 1
	.loc 1 37 233 is_stmt 0
	call	xPortIsInsideInterrupt
.LVL35:
	.loc 1 37 151
	beq	a0,zero,.L23
	.loc 1 37 262
	call	xTaskGetTickCountFromISR
.LVL36:
.L30:
	.loc 1 37 293
	mv	a2,a0
	.loc 1 37 151
	lui	a3,%hi(.LC0)
	lui	a1,%hi(.LC1)
	lui	a0,%hi(.LC4)
	li	a4,37
	addi	a3,a3,%lo(.LC0)
	addi	a1,a1,%lo(.LC1)
	addi	a0,a0,%lo(.LC4)
	j	.L34
.L23:
	.loc 1 37 293
	call	xTaskGetTickCount
.LVL37:
	j	.L30
.LVL38:
.L22:
	.loc 1 40 5 is_stmt 1
	.loc 1 40 18 is_stmt 0
	lui	a5,%hi(bl_hbn_enter)
	addi	a5,a5,%lo(bl_hbn_enter)
	sw	a5,4(a0)
	.loc 1 41 5 is_stmt 1
	.loc 1 41 22 is_stmt 0
	sw	s0,8(a0)
	.loc 1 43 5 is_stmt 1
	lw	a0,0(s1)
.LVL39:
	call	utils_notifier_chain_register
.LVL40:
	j	.L31
.LBE14:
.LBE19:
	.cfi_endproc
.LFE28:
	.size	hal_hbn_init, .-hal_hbn_init
	.section	.text.hal_hbn_enter,"ax",@progbits
	.align	1
	.globl	hal_hbn_enter
	.type	hal_hbn_enter, @function
hal_hbn_enter:
.LFB29:
	.loc 1 76 1
	.cfi_startproc
.LVL41:
	.loc 1 77 5
	.loc 1 76 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	.loc 1 77 5
	lui	a5,%hi(.LANCHOR0)
	.loc 1 76 1
	sw	a0,12(sp)
	.loc 1 77 5
	lw	a0,%lo(.LANCHOR0)(a5)
.LVL42:
	addi	a1,sp,12
.LVL43:
	.loc 1 76 1
	sw	ra,28(sp)
	.cfi_offset 1, -4
	.loc 1 77 5
	call	utils_notifier_chain_call
.LVL44:
	.loc 1 79 5 is_stmt 1
	.loc 1 80 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_restore 1
	li	a0,-1
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE29:
	.size	hal_hbn_enter, .-hal_hbn_enter
	.globl	_fsymf_info_hosalhal_hbn
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	2
.LC6:
	.string	"hosal.hal_hbn"
	.comm	_fsymf_level_hosalhal_hbn,4,4
	.align	2
.LC7:
	.string	"hosal"
	.weak	_fsymc_level_hosal
	.section	.sbss._fsymc_level_hosal,"aw",@nobits
	.align	2
	.type	_fsymc_level_hosal, @object
	.size	_fsymc_level_hosal, 4
_fsymc_level_hosal:
	.zero	4
	.section	.sbss.hbn_list,"aw",@nobits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	hbn_list, @object
	.size	hbn_list, 4
hbn_list:
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
	.word	.LC7
	.section	.static_blogfile_code.hosalhal_hbn,"a"
	.align	2
	.type	_fsymf_info_hosalhal_hbn, @object
	.size	_fsymf_info_hosalhal_hbn, 8
_fsymf_info_hosalhal_hbn:
	.word	_fsymf_level_hosalhal_hbn
	.word	.LC6
	.text
.Letext0:
	.file 2 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 3 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 4 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/bl602_hal/bl_hbn.h"
	.file 5 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/utils/include/utils_list.h"
	.file 6 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/utils/include/utils_notifier.h"
	.file 7 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/blog/blog_type.h"
	.file 8 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/blog/blog.h"
	.file 9 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/portable.h"
	.file 10 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h"
	.file 11 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
	.file 12 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/utils/include/utils_log.h"
	.file 13 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x57b
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF62
	.byte	0xc
	.4byte	.LASF63
	.4byte	.LASF64
	.4byte	.Ldebug_ranges0+0x48
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
	.byte	0x5
	.byte	0x4
	.byte	0x6
	.byte	0x4
	.4byte	0x8b
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
	.byte	0x7
	.4byte	0x9e
	.byte	0x8
	.4byte	.LASF17
	.byte	0x3
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.4byte	0xe4
	.byte	0x9
	.4byte	.LASF14
	.byte	0x4
	.byte	0x6
	.byte	0xd
	.4byte	0x92
	.byte	0
	.byte	0x9
	.4byte	.LASF15
	.byte	0x4
	.byte	0x7
	.byte	0xd
	.4byte	0x92
	.byte	0x1
	.byte	0xa
	.string	"buf"
	.byte	0x4
	.byte	0x8
	.byte	0xd
	.4byte	0xe4
	.byte	0x2
	.byte	0
	.byte	0xb
	.4byte	0x92
	.4byte	0xf4
	.byte	0xc
	.4byte	0x7c
	.byte	0
	.byte	0
	.byte	0x3
	.4byte	.LASF16
	.byte	0x4
	.byte	0x9
	.byte	0x3
	.4byte	0xaf
	.byte	0x6
	.byte	0x4
	.4byte	0x92
	.byte	0x8
	.4byte	.LASF18
	.byte	0x4
	.byte	0x5
	.byte	0x11
	.byte	0x8
	.4byte	0x121
	.byte	0x9
	.4byte	.LASF19
	.byte	0x5
	.byte	0x13
	.byte	0x1c
	.4byte	0x121
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x106
	.byte	0x8
	.4byte	.LASF20
	.byte	0x8
	.byte	0x5
	.byte	0x16
	.byte	0x8
	.4byte	0x14f
	.byte	0x9
	.4byte	.LASF21
	.byte	0x5
	.byte	0x19
	.byte	0x1c
	.4byte	0x121
	.byte	0
	.byte	0x9
	.4byte	.LASF22
	.byte	0x5
	.byte	0x1b
	.byte	0x1c
	.4byte	0x121
	.byte	0x4
	.byte	0
	.byte	0x3
	.4byte	.LASF23
	.byte	0x6
	.byte	0x7
	.byte	0x1b
	.4byte	0x127
	.byte	0x3
	.4byte	.LASF24
	.byte	0x6
	.byte	0x8
	.byte	0xf
	.4byte	0x167
	.byte	0x6
	.byte	0x4
	.4byte	0x16d
	.byte	0xd
	.4byte	0x75
	.4byte	0x181
	.byte	0xe
	.4byte	0x83
	.byte	0xe
	.4byte	0x83
	.byte	0
	.byte	0x8
	.4byte	.LASF25
	.byte	0x10
	.byte	0x6
	.byte	0xa
	.byte	0x10
	.4byte	0x1c2
	.byte	0x9
	.4byte	.LASF26
	.byte	0x6
	.byte	0xb
	.byte	0x1b
	.4byte	0x106
	.byte	0
	.byte	0xa
	.string	"cb"
	.byte	0x6
	.byte	0xc
	.byte	0x19
	.4byte	0x15b
	.byte	0x4
	.byte	0x9
	.4byte	.LASF27
	.byte	0x6
	.byte	0xd
	.byte	0xb
	.4byte	0x83
	.byte	0x8
	.byte	0x9
	.4byte	.LASF28
	.byte	0x6
	.byte	0xe
	.byte	0x9
	.4byte	0x75
	.byte	0xc
	.byte	0
	.byte	0x3
	.4byte	.LASF29
	.byte	0x6
	.byte	0xf
	.byte	0x3
	.4byte	0x181
	.byte	0xf
	.4byte	.LASF65
	.byte	0x7
	.byte	0x4
	.4byte	0x7c
	.byte	0x7
	.byte	0x22
	.byte	0xe
	.4byte	0x20b
	.byte	0x10
	.4byte	.LASF30
	.byte	0
	.byte	0x10
	.4byte	.LASF31
	.byte	0x1
	.byte	0x10
	.4byte	.LASF32
	.byte	0x2
	.byte	0x10
	.4byte	.LASF33
	.byte	0x3
	.byte	0x10
	.4byte	.LASF34
	.byte	0x4
	.byte	0x10
	.4byte	.LASF35
	.byte	0x5
	.byte	0x10
	.4byte	.LASF36
	.byte	0x6
	.byte	0
	.byte	0x3
	.4byte	.LASF37
	.byte	0x7
	.byte	0x2a
	.byte	0x3
	.4byte	0x1ce
	.byte	0x8
	.4byte	.LASF38
	.byte	0x8
	.byte	0x7
	.byte	0x2c
	.byte	0x10
	.4byte	0x23f
	.byte	0x9
	.4byte	.LASF39
	.byte	0x7
	.byte	0x2d
	.byte	0x13
	.4byte	0x23f
	.byte	0
	.byte	0x9
	.4byte	.LASF40
	.byte	0x7
	.byte	0x2e
	.byte	0xb
	.4byte	0x85
	.byte	0x4
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x20b
	.byte	0x3
	.4byte	.LASF41
	.byte	0x7
	.byte	0x2f
	.byte	0x3
	.4byte	0x217
	.byte	0x7
	.4byte	0x245
	.byte	0x11
	.4byte	.LASF42
	.byte	0x8
	.byte	0x38
	.byte	0x1b
	.4byte	0xaa
	.byte	0x5
	.byte	0x3
	.4byte	BLOG_HARD_DECLARE_DISABLE
	.byte	0x12
	.4byte	.LASF44
	.byte	0x8
	.byte	0x45
	.byte	0x12
	.4byte	0x20b
	.byte	0x5
	.byte	0x3
	.4byte	_fsymc_level_hosal
	.byte	0x11
	.4byte	.LASF43
	.byte	0x8
	.byte	0x46
	.byte	0x1e
	.4byte	0x251
	.byte	0x5
	.byte	0x3
	.4byte	_fsymc_info_hosal
	.byte	0x12
	.4byte	.LASF45
	.byte	0x8
	.byte	0x53
	.byte	0x12
	.4byte	0x20b
	.byte	0x5
	.byte	0x3
	.4byte	_fsymf_level_hosalhal_hbn
	.byte	0x12
	.4byte	.LASF46
	.byte	0x8
	.byte	0x54
	.byte	0x17
	.4byte	0x251
	.byte	0x5
	.byte	0x3
	.4byte	_fsymf_info_hosalhal_hbn
	.byte	0x11
	.4byte	.LASF47
	.byte	0x1
	.byte	0xe
	.byte	0x14
	.4byte	0x2c2
	.byte	0x5
	.byte	0x3
	.4byte	hbn_list
	.byte	0x6
	.byte	0x4
	.4byte	0x14f
	.byte	0x13
	.4byte	.LASF48
	.byte	0x1
	.byte	0x4b
	.byte	0x5
	.4byte	0x75
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x1
	.byte	0x9c
	.4byte	0x303
	.byte	0x14
	.4byte	.LASF50
	.byte	0x1
	.byte	0x4b
	.byte	0x1c
	.4byte	0x9e
	.4byte	.LLST5
	.byte	0x15
	.4byte	.LVL44
	.4byte	0x510
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0
	.byte	0x13
	.4byte	.LASF49
	.byte	0x1
	.byte	0x30
	.byte	0x5
	.4byte	0x75
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x1
	.byte	0x9c
	.4byte	0x4c2
	.byte	0x14
	.4byte	.LASF51
	.byte	0x1
	.byte	0x30
	.byte	0x1b
	.4byte	0x100
	.4byte	.LLST0
	.byte	0x14
	.4byte	.LASF52
	.byte	0x1
	.byte	0x30
	.byte	0x2b
	.4byte	0x92
	.4byte	.LLST1
	.byte	0x17
	.string	"hbn"
	.byte	0x1
	.byte	0x32
	.byte	0x11
	.4byte	0x4c2
	.4byte	.LLST2
	.byte	0x18
	.4byte	0x503
	.4byte	.LBB6
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x43
	.byte	0x9
	.4byte	0x3c7
	.byte	0x19
	.4byte	.LVL18
	.4byte	0x51c
	.4byte	0x374
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x38
	.byte	0
	.byte	0x1a
	.4byte	.LVL19
	.4byte	0x528
	.byte	0x1a
	.4byte	.LVL20
	.4byte	0x534
	.byte	0x19
	.4byte	.LVL21
	.4byte	0x541
	.4byte	0x3b4
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x16
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x16
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x44
	.byte	0
	.byte	0x1a
	.4byte	.LVL28
	.4byte	0x54d
	.byte	0x1a
	.4byte	.LVL29
	.4byte	0x55a
	.byte	0
	.byte	0x18
	.4byte	0x4c8
	.4byte	.LBB10
	.4byte	.Ldebug_ranges0+0x20
	.byte	0x1
	.byte	0x46
	.byte	0x5
	.4byte	0x454
	.byte	0x1b
	.4byte	0x4d9
	.byte	0x1c
	.4byte	0x4e4
	.4byte	.LLST3
	.byte	0x1d
	.4byte	.Ldebug_ranges0+0x20
	.byte	0x1e
	.4byte	0x4f0
	.4byte	.LLST4
	.byte	0x1a
	.4byte	.LVL23
	.4byte	0x528
	.byte	0x1a
	.4byte	.LVL24
	.4byte	0x534
	.byte	0x1a
	.4byte	.LVL26
	.4byte	0x541
	.byte	0x1a
	.4byte	.LVL31
	.4byte	0x54d
	.byte	0x19
	.4byte	.LVL33
	.4byte	0x51c
	.4byte	0x42e
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x40
	.byte	0
	.byte	0x1a
	.4byte	.LVL35
	.4byte	0x528
	.byte	0x1a
	.4byte	.LVL36
	.4byte	0x534
	.byte	0x1a
	.4byte	.LVL37
	.4byte	0x54d
	.byte	0x1a
	.4byte	.LVL40
	.4byte	0x566
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LVL3
	.4byte	0x528
	.byte	0x1a
	.4byte	.LVL4
	.4byte	0x534
	.byte	0x1a
	.4byte	.LVL6
	.4byte	0x541
	.byte	0x1a
	.4byte	.LVL8
	.4byte	0x54d
	.byte	0x19
	.4byte	.LVL11
	.4byte	0x51c
	.4byte	0x48f
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x91
	.byte	0x6c
	.byte	0x6
	.byte	0x23
	.byte	0x3
	.byte	0
	.byte	0x1a
	.4byte	.LVL13
	.4byte	0x528
	.byte	0x1a
	.4byte	.LVL14
	.4byte	0x534
	.byte	0x1a
	.4byte	.LVL15
	.4byte	0x54d
	.byte	0x15
	.4byte	.LVL17
	.4byte	0x572
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x2
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0xf4
	.byte	0x1f
	.4byte	.LASF66
	.byte	0x1
	.byte	0x1b
	.byte	0xc
	.4byte	0x75
	.byte	0x1
	.4byte	0x4fd
	.byte	0x20
	.string	"cb"
	.byte	0x1
	.byte	0x1b
	.byte	0x28
	.4byte	0x15b
	.byte	0x20
	.string	"arg"
	.byte	0x1
	.byte	0x1b
	.byte	0x32
	.4byte	0x83
	.byte	0x21
	.4byte	.LASF67
	.byte	0x1
	.byte	0x1d
	.byte	0x17
	.4byte	0x4fd
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x1c2
	.byte	0x22
	.4byte	.LASF68
	.byte	0x1
	.byte	0x10
	.byte	0xc
	.4byte	0x75
	.byte	0x1
	.byte	0x23
	.4byte	.LASF53
	.4byte	.LASF53
	.byte	0x6
	.byte	0x13
	.byte	0x5
	.byte	0x23
	.4byte	.LASF54
	.4byte	.LASF54
	.byte	0x9
	.byte	0x91
	.byte	0x7
	.byte	0x23
	.4byte	.LASF55
	.4byte	.LASF55
	.byte	0xa
	.byte	0x98
	.byte	0xc
	.byte	0x24
	.4byte	.LASF56
	.4byte	.LASF56
	.byte	0xb
	.2byte	0x558
	.byte	0xc
	.byte	0x23
	.4byte	.LASF57
	.4byte	.LASF57
	.byte	0xc
	.byte	0x81
	.byte	0x6
	.byte	0x24
	.4byte	.LASF58
	.4byte	.LASF58
	.byte	0xb
	.2byte	0x547
	.byte	0xc
	.byte	0x23
	.4byte	.LASF59
	.4byte	.LASF59
	.byte	0x6
	.byte	0x11
	.byte	0x5
	.byte	0x23
	.4byte	.LASF60
	.4byte	.LASF60
	.byte	0x6
	.byte	0x12
	.byte	0x5
	.byte	0x23
	.4byte	.LASF61
	.4byte	.LASF61
	.byte	0xd
	.byte	0x1f
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
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
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
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x8
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
	.byte	0x9
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
	.byte	0xa
	.byte	0xd
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
	.byte	0x38
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xb
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xc
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xd
	.byte	0x15
	.byte	0x1
	.byte	0x27
	.byte	0x19
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xe
	.byte	0x5
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xf
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
	.byte	0x10
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x11
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
	.byte	0x12
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
	.byte	0x13
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
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x16
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
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
	.byte	0x1d
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0x52
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0x58
	.byte	0xb
	.byte	0x59
	.byte	0xb
	.byte	0x57
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x19
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
	.byte	0x1a
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1b
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1c
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x1d
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x1e
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x1f
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
	.byte	0x49
	.byte	0x13
	.byte	0x20
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x20
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
	.byte	0x21
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
	.byte	0
	.byte	0
	.byte	0x22
	.byte	0x2e
	.byte	0
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
	.byte	0x20
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x23
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
	.byte	0x24
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
.LLST5:
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x2
	.byte	0x91
	.byte	0x6c
	.4byte	.LVL43
	.4byte	.LVL44-1
	.2byte	0x2
	.byte	0x7b
	.byte	0
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL3-1
	.4byte	.LVL9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL10
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL16
	.4byte	.LVL17-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL17-1
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL3-1
	.4byte	.LVL9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL11-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL11-1
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL5
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL12
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LFE28
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL21
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL30
	.4byte	.LFE28
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL21
	.4byte	.LVL25
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LVL34
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LVL35-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL39
	.4byte	.LVL40-1
	.2byte	0x1
	.byte	0x5b
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
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB6
	.4byte	.LBE6
	.4byte	.LBB16
	.4byte	.LBE16
	.4byte	.LBB18
	.4byte	.LBE18
	.4byte	0
	.4byte	0
	.4byte	.LBB10
	.4byte	.LBE10
	.4byte	.LBB15
	.4byte	.LBE15
	.4byte	.LBB17
	.4byte	.LBE17
	.4byte	.LBB19
	.4byte	.LBE19
	.4byte	0
	.4byte	0
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF68:
	.string	"ntf_init"
.LASF38:
	.string	"_blog_info"
.LASF14:
	.string	"buflen"
.LASF65:
	.string	"_blog_leve"
.LASF28:
	.string	"priority"
.LASF44:
	.string	"_fsymc_level_hosal"
.LASF20:
	.string	"utils_list"
.LASF2:
	.string	"short int"
.LASF47:
	.string	"hbn_list"
.LASF25:
	.string	"utils_notifier"
.LASF6:
	.string	"__uint32_t"
.LASF51:
	.string	"pinbuf"
.LASF15:
	.string	"active"
.LASF43:
	.string	"_fsymc_info_hosal"
.LASF45:
	.string	"_fsymf_level_hosalhal_hbn"
.LASF61:
	.string	"memcpy"
.LASF12:
	.string	"uint8_t"
.LASF34:
	.string	"BLOG_LEVEL_ERROR"
.LASF55:
	.string	"xPortIsInsideInterrupt"
.LASF8:
	.string	"long long int"
.LASF63:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/bl602_hal/hal_hbn.c"
.LASF42:
	.string	"BLOG_HARD_DECLARE_DISABLE"
.LASF52:
	.string	"pinbuf_size"
.LASF53:
	.string	"utils_notifier_chain_call"
.LASF5:
	.string	"__uint8_t"
.LASF58:
	.string	"xTaskGetTickCount"
.LASF29:
	.string	"utils_notifier_t"
.LASF40:
	.string	"name"
.LASF23:
	.string	"ntf_list_t"
.LASF24:
	.string	"utils_notifier_fn_t"
.LASF1:
	.string	"unsigned char"
.LASF35:
	.string	"BLOG_LEVEL_ASSERT"
.LASF0:
	.string	"signed char"
.LASF9:
	.string	"long long unsigned int"
.LASF13:
	.string	"uint32_t"
.LASF10:
	.string	"unsigned int"
.LASF32:
	.string	"BLOG_LEVEL_INFO"
.LASF46:
	.string	"_fsymf_info_hosalhal_hbn"
.LASF50:
	.string	"time"
.LASF22:
	.string	"last"
.LASF3:
	.string	"short unsigned int"
.LASF11:
	.string	"char"
.LASF4:
	.string	"long int"
.LASF16:
	.string	"hbn_type_t"
.LASF59:
	.string	"utils_notifier_chain_init"
.LASF60:
	.string	"utils_notifier_chain_register"
.LASF49:
	.string	"hal_hbn_init"
.LASF30:
	.string	"BLOG_LEVEL_ALL"
.LASF27:
	.string	"cb_arg"
.LASF41:
	.string	"blog_info_t"
.LASF7:
	.string	"long unsigned int"
.LASF64:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/hosal"
.LASF48:
	.string	"hal_hbn_enter"
.LASF26:
	.string	"node"
.LASF56:
	.string	"xTaskGetTickCountFromISR"
.LASF39:
	.string	"level"
.LASF17:
	.string	"_hbn_type"
.LASF57:
	.string	"bl_printk"
.LASF33:
	.string	"BLOG_LEVEL_WARN"
.LASF36:
	.string	"BLOG_LEVEL_NEVER"
.LASF67:
	.string	"hbn_node"
.LASF37:
	.string	"blog_level_t"
.LASF31:
	.string	"BLOG_LEVEL_DEBUG"
.LASF54:
	.string	"pvPortMalloc"
.LASF66:
	.string	"ntf_reg"
.LASF18:
	.string	"utils_list_hdr"
.LASF19:
	.string	"next"
.LASF21:
	.string	"first"
.LASF62:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
