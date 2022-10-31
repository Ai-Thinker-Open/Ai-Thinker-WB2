	.file	"bl_i2c.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.i2c_set_freq,"ax",@progbits
	.align	1
	.globl	i2c_set_freq
	.type	i2c_set_freq, @function
i2c_set_freq:
.LFB8:
	.file 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/bl602_hal/bl_i2c.c"
	.loc 1 17 1
	.cfi_startproc
.LVL0:
	.loc 1 18 5
	.loc 1 17 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	.cfi_offset 8, -8
	mv	s0,a0
	mv	a0,a1
.LVL1:
	.loc 1 18 5
	li	a1,0
.LVL2:
	.loc 1 17 1
	sw	ra,28(sp)
	.cfi_offset 1, -4
	.loc 1 18 5
	sw	a0,12(sp)
	call	I2C_SetSclSync
.LVL3:
	.loc 1 19 5 is_stmt 1
	mv	a1,s0
	.loc 1 21 1 is_stmt 0
	lw	s0,24(sp)
	.cfi_restore 8
.LVL4:
	.loc 1 19 5
	lw	a0,12(sp)
	.loc 1 21 1
	lw	ra,28(sp)
	.cfi_restore 1
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
.LVL5:
	.loc 1 19 5
	tail	I2C_ClockSet
.LVL6:
	.cfi_endproc
.LFE8:
	.size	i2c_set_freq, .-i2c_set_freq
	.section	.text.i2c_gpio_init,"ax",@progbits
	.align	1
	.globl	i2c_gpio_init
	.type	i2c_gpio_init, @function
i2c_gpio_init:
.LFB9:
	.loc 1 24 1 is_stmt 1
	.cfi_startproc
.LVL7:
	.loc 1 25 5
	.loc 1 26 5
	.loc 1 24 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	.cfi_offset 1, -4
	.loc 1 26 8
	bne	a0,zero,.L4
	.loc 1 27 9 is_stmt 1
	.loc 1 27 21 is_stmt 0
	li	a5,4
	sw	a5,8(sp)
	.loc 1 28 9 is_stmt 1
	.loc 1 28 21 is_stmt 0
	li	a5,3
	sw	a5,12(sp)
.L4:
	.loc 1 30 5 is_stmt 1
	.loc 1 32 5
	addi	a1,sp,8
	li	a2,2
	li	a0,6
.LVL8:
	call	GLB_GPIO_Func_Init
.LVL9:
	.loc 1 33 5
	.loc 1 34 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_restore 1
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE9:
	.size	i2c_gpio_init, .-i2c_gpio_init
	.section	.text.i2c_clear_status,"ax",@progbits
	.align	1
	.globl	i2c_clear_status
	.type	i2c_clear_status, @function
i2c_clear_status:
.LFB10:
	.loc 1 37 1 is_stmt 1
	.cfi_startproc
.LVL10:
	.loc 1 38 5
	.loc 1 40 5
	.loc 1 40 8 is_stmt 0
	bne	a0,zero,.L6
.LVL11:
.LBB4:
.LBB5:
	.loc 1 41 9 is_stmt 1
	.loc 1 41 16 is_stmt 0
	li	a4,1073782784
	lw	a5,772(a4)
.LVL12:
	.loc 1 42 9 is_stmt 1
	.loc 1 43 9
	.loc 1 44 9
	.loc 1 44 16 is_stmt 0
	li	a3,1638400
	or	a5,a5,a3
.LVL13:
	.loc 1 45 9 is_stmt 1
	.loc 1 45 63 is_stmt 0
	sw	a5,772(a4)
	.loc 1 47 5 is_stmt 1
	.loc 1 49 9
.LVL14:
.LBE5:
.LBE4:
	.loc 1 47 5
	.loc 1 49 9
.L6:
	.loc 1 50 1 is_stmt 0
	ret
	.cfi_endproc
.LFE10:
	.size	i2c_clear_status, .-i2c_clear_status
	.section	.text.do_write_data,"ax",@progbits
	.align	1
	.globl	do_write_data
	.type	do_write_data, @function
do_write_data:
.LFB11:
	.loc 1 53 1 is_stmt 1
	.cfi_startproc
.LVL15:
	.loc 1 54 5
	.loc 1 55 5
	.loc 1 56 5
	.loc 1 57 5
	.loc 1 59 5
	.loc 1 59 33 is_stmt 0
	lw	a1,24(a0)
	.loc 1 59 25
	lw	a5,12(a0)
	li	a4,4
	sub	a5,a5,a1
	.loc 1 60 5 is_stmt 1
	ble	a5,a4,.L9
	li	a5,4
.L9:
.LVL16:
	.loc 1 64 5
	.loc 1 64 12 is_stmt 0
	li	a4,0
	.loc 1 54 14
	li	a2,0
.LVL17:
.L10:
	.loc 1 64 17 is_stmt 1 discriminator 1
	.loc 1 64 5 is_stmt 0 discriminator 1
	bgt	a5,a4,.L11
	.loc 1 68 5 is_stmt 1
	.loc 1 68 60 is_stmt 0
	li	a4,1073782784
.LVL18:
	sw	a2,904(a4)
	.loc 1 69 5 is_stmt 1
	.loc 1 69 33 is_stmt 0
	lw	a4,24(a0)
	add	a5,a4,a5
.LVL19:
	.loc 1 69 18
	sw	a5,24(a0)
	.loc 1 71 5 is_stmt 1
	.loc 1 72 1 is_stmt 0
	ret
.LVL20:
.L11:
	.loc 1 65 9 is_stmt 1 discriminator 3
	.loc 1 66 9 discriminator 3
	.loc 1 65 15 is_stmt 0 discriminator 3
	lw	a3,16(a0)
	.loc 1 66 26 discriminator 3
	slli	a6,a4,3
	.loc 1 65 15 discriminator 3
	add	a3,a3,a1
	add	a3,a3,a4
	.loc 1 65 13 discriminator 3
	lbu	a3,0(a3)
	.loc 1 64 29 discriminator 3
	addi	a4,a4,1
.LVL21:
	.loc 1 66 21 discriminator 3
	sll	a3,a3,a6
	.loc 1 66 14 discriminator 3
	add	a2,a2,a3
.LVL22:
	.loc 1 64 28 is_stmt 1 discriminator 3
	j	.L10
	.cfi_endproc
.LFE11:
	.size	do_write_data, .-do_write_data
	.section	.text.do_read_data,"ax",@progbits
	.align	1
	.globl	do_read_data
	.type	do_read_data, @function
do_read_data:
.LFB12:
	.loc 1 75 1
	.cfi_startproc
.LVL23:
	.loc 1 76 5
	.loc 1 77 5
	.loc 1 78 5
	.loc 1 80 5
	.loc 1 80 33 is_stmt 0
	lw	a3,24(a0)
	.loc 1 80 25
	lw	a4,12(a0)
	.loc 1 81 10
	li	a5,1073782784
	lw	a5,908(a5)
.LVL24:
	.loc 1 80 25
	sub	a4,a4,a3
.LVL25:
	.loc 1 81 5 is_stmt 1
	.loc 1 82 5
	.loc 1 82 8 is_stmt 0
	li	a2,3
	ble	a4,a2,.L16
	.loc 1 83 11 is_stmt 1
	.loc 1 83 42 is_stmt 0
	lw	a4,16(a0)
.LVL26:
	add	a4,a4,a3
	.loc 1 83 44
	sb	a5,0(a4)
.LVL27:
	.loc 1 83 66 is_stmt 1
	.loc 1 83 100 is_stmt 0
	lw	a3,24(a0)
	lw	a4,16(a0)
	add	a4,a4,a3
	.loc 1 83 121
	srli	a3,a5,8
	.loc 1 83 102
	sb	a3,1(a4)
	.loc 1 83 129 is_stmt 1
	.loc 1 83 163 is_stmt 0
	lw	a3,24(a0)
	lw	a4,16(a0)
	add	a4,a4,a3
	.loc 1 83 184
	srli	a3,a5,16
	.loc 1 83 165
	sb	a3,2(a4)
	.loc 1 83 193 is_stmt 1
	.loc 1 83 227 is_stmt 0
	lw	a4,16(a0)
	lw	a3,24(a0)
	.loc 1 83 248
	srli	a5,a5,24
.LVL28:
	.loc 1 83 227
	add	a4,a4,a3
	.loc 1 83 229
	sb	a5,3(a4)
	.loc 1 83 258 is_stmt 1
	.loc 1 84 9
.LVL29:
	.loc 1 84 15 is_stmt 0
	li	a4,4
.LVL30:
.L14:
	.loc 1 91 5 is_stmt 1
	.loc 1 91 33 is_stmt 0
	lw	a5,24(a0)
	add	a4,a5,a4
.LVL31:
	.loc 1 91 18
	sw	a4,24(a0)
	.loc 1 93 5 is_stmt 1
	.loc 1 94 1 is_stmt 0
	ret
.LVL32:
.L15:
	.loc 1 87 13 is_stmt 1 discriminator 3
	.loc 1 87 43 is_stmt 0 discriminator 3
	lw	a3,16(a0)
	lw	a1,24(a0)
	add	a3,a3,a2
	add	a3,a3,a1
	sb	a5,0(a3)
	.loc 1 88 13 is_stmt 1 discriminator 3
	.loc 1 86 33 is_stmt 0 discriminator 3
	addi	a2,a2,1
.LVL33:
	.loc 1 88 18 discriminator 3
	srli	a5,a5,8
.LVL34:
	.loc 1 86 32 is_stmt 1 discriminator 3
.L13:
	.loc 1 86 21 discriminator 1
	.loc 1 86 9 is_stmt 0 discriminator 1
	blt	a2,a4,.L15
	j	.L14
.LVL35:
.L16:
	.loc 1 86 16
	li	a2,0
	j	.L13
	.cfi_endproc
.LFE12:
	.size	do_read_data, .-do_read_data
	.section	.text.i2c_transfer_start,"ax",@progbits
	.align	1
	.globl	i2c_transfer_start
	.type	i2c_transfer_start, @function
i2c_transfer_start:
.LFB15:
	.loc 1 147 1 is_stmt 1
	.cfi_startproc
.LVL36:
	.loc 1 148 5
	.loc 1 147 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	.loc 1 147 1
	mv	s0,a0
	.loc 1 148 5
	lw	a0,40(a0)
.LVL37:
	call	i2c_clear_status
.LVL38:
	.loc 1 149 5 is_stmt 1
.LBB10:
.LBB11:
	.loc 1 116 5
	.loc 1 118 5
	.loc 1 118 8 is_stmt 0
	lw	a5,40(s0)
	bne	a5,zero,.L19
	.loc 1 119 9 is_stmt 1
	.loc 1 119 16 is_stmt 0
	li	a5,1073782784
	lw	a5,768(a5)
.LVL39:
	.loc 1 120 9 is_stmt 1
	.loc 1 120 11 is_stmt 0
	lbu	a3,2(s0)
	.loc 1 123 20
	ori	a4,a5,2
	.loc 1 120 11
	bne	a3,zero,.L21
	.loc 1 121 13 is_stmt 1
	.loc 1 121 20 is_stmt 0
	andi	a4,a5,-3
.LVL40:
.L21:
	.loc 1 126 9 is_stmt 1
	.loc 1 126 29 is_stmt 0
	li	a5,-32768
	addi	a5,a5,255
	and	a5,a4,a5
	.loc 1 126 66
	lhu	a4,0(s0)
.LVL41:
	.loc 1 127 11
	lbu	a3,3(s0)
	.loc 1 126 90
	slli	a4,a4,8
	.loc 1 126 16
	or	a4,a4,a5
.LVL42:
	.loc 1 127 9 is_stmt 1
	.loc 1 131 20 is_stmt 0
	andi	a5,a4,-17
	.loc 1 127 11
	beq	a3,zero,.L23
	.loc 1 128 13 is_stmt 1
.LVL43:
	.loc 1 129 13
	.loc 1 129 87 is_stmt 0
	lbu	a5,8(s0)
	andi	a4,a4,-97
.LVL44:
	.loc 1 129 95
	addi	a5,a5,-1
	.loc 1 129 98
	slli	a5,a5,5
	or	a5,a5,a4
	.loc 1 129 20
	ori	a5,a5,16
.LVL45:
.L23:
	.loc 1 134 9 is_stmt 1
	.loc 1 134 29 is_stmt 0
	li	a4,-16711680
	addi	a4,a4,-1
	and	a5,a5,a4
.LVL46:
	.loc 1 134 67
	lw	a4,12(s0)
	addi	a4,a4,-1
	.loc 1 134 92
	slli	a4,a4,16
	.loc 1 134 16
	or	a5,a4,a5
.LVL47:
	.loc 1 135 9 is_stmt 1
	.loc 1 135 63 is_stmt 0
	li	a4,1073782784
	sw	a5,768(a4)
	.loc 1 137 9 is_stmt 1
	.loc 1 137 11 is_stmt 0
	lbu	a5,3(s0)
.LVL48:
	beq	a5,zero,.L19
	.loc 1 138 13 is_stmt 1
	.loc 1 138 75 is_stmt 0
	lw	a5,4(s0)
	.loc 1 138 67
	sw	a5,776(a4)
.LVL49:
.L19:
	.loc 1 141 5 is_stmt 1
	.loc 1 143 5
.LBE11:
.LBE10:
	.loc 1 150 5
.LBB12:
.LBB13:
	.loc 1 98 5
	.loc 1 98 15 is_stmt 0
	lbu	a5,2(s0)
	.loc 1 99 9
	lw	a0,40(s0)
	.loc 1 98 8
	bne	a5,zero,.L25
	.loc 1 99 9 is_stmt 1
	li	a2,0
	li	a1,1
.L32:
	.loc 1 101 9 is_stmt 0
	call	I2C_IntMask
.LVL50:
.L26:
	.loc 1 104 5 is_stmt 1
	lw	a0,40(s0)
	li	a2,0
	li	a1,0
	call	I2C_IntMask
.LVL51:
	.loc 1 105 5
	lw	a0,40(s0)
	li	a2,0
	li	a1,5
	call	I2C_IntMask
.LVL52:
	.loc 1 106 5
	lw	a0,40(s0)
	li	a2,0
	li	a1,4
	call	I2C_IntMask
.LVL53:
	.loc 1 107 5
	lw	a0,40(s0)
	li	a2,0
	li	a1,3
	call	I2C_IntMask
.LVL54:
	.loc 1 109 5
	lw	a0,40(s0)
.LBE13:
.LBE12:
	.loc 1 153 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_remember_state
	.cfi_restore 8
.LVL55:
	lw	ra,12(sp)
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
.LBB15:
.LBB14:
	.loc 1 109 5
	tail	I2C_Enable
.LVL56:
.L25:
	.cfi_restore_state
	.loc 1 100 12 is_stmt 1
	.loc 1 100 15 is_stmt 0
	li	a4,1
	bne	a5,a4,.L26
	.loc 1 101 9 is_stmt 1
	li	a2,0
	li	a1,2
	j	.L32
.LBE14:
.LBE15:
	.cfi_endproc
.LFE15:
	.size	i2c_transfer_start, .-i2c_transfer_start
	.globl	_fsymf_info_hosalbl_i2c
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"hosal.bl_i2c"
	.comm	_fsymf_level_hosalbl_i2c,4,4
	.align	2
.LC1:
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
	.word	.LC1
	.section	.static_blogfile_code.hosalbl_i2c,"a"
	.align	2
	.type	_fsymf_info_hosalbl_i2c, @object
	.size	_fsymf_info_hosalbl_i2c, 8
_fsymf_info_hosalbl_i2c:
	.word	_fsymf_level_hosalbl_i2c
	.word	.LC0
	.text
.Letext0:
	.file 2 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.file 3 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/bl602_hal/bl_i2c.h"
	.file 4 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_common.h"
	.file 5 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_i2c.h"
	.file 6 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_gpio.h"
	.file 7 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/blog/blog_type.h"
	.file 8 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/blog/blog.h"
	.file 9 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_glb.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x700
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF107
	.byte	0xc
	.4byte	.LASF108
	.4byte	.LASF109
	.4byte	.Ldebug_ranges0+0x18
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
	.byte	0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0x2e
	.byte	0x17
	.4byte	0x54
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.byte	0x3
	.4byte	.LASF7
	.byte	0x2
	.byte	0x31
	.byte	0x1c
	.4byte	0x67
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF8
	.byte	0x3
	.4byte	.LASF9
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0x7f
	.byte	0x4
	.4byte	0x6e
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.byte	0x5
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x6
	.4byte	.LASF79
	.byte	0x2c
	.byte	0x3
	.byte	0xa
	.byte	0x10
	.4byte	0x14b
	.byte	0x7
	.4byte	.LASF12
	.byte	0x3
	.byte	0xb
	.byte	0xb
	.4byte	0x5b
	.byte	0
	.byte	0x7
	.4byte	.LASF13
	.byte	0x3
	.byte	0xc
	.byte	0xa
	.4byte	0x48
	.byte	0x2
	.byte	0x7
	.4byte	.LASF14
	.byte	0x3
	.byte	0xd
	.byte	0xd
	.4byte	0x48
	.byte	0x3
	.byte	0x7
	.4byte	.LASF15
	.byte	0x3
	.byte	0xe
	.byte	0xe
	.4byte	0x6e
	.byte	0x4
	.byte	0x7
	.4byte	.LASF16
	.byte	0x3
	.byte	0xf
	.byte	0xd
	.4byte	0x48
	.byte	0x8
	.byte	0x8
	.string	"len"
	.byte	0x3
	.byte	0x10
	.byte	0xb
	.4byte	0x6e
	.byte	0xc
	.byte	0x8
	.string	"buf"
	.byte	0x3
	.byte	0x11
	.byte	0xe
	.4byte	0x14b
	.byte	0x10
	.byte	0x7
	.4byte	.LASF17
	.byte	0x3
	.byte	0x12
	.byte	0x9
	.4byte	0x8d
	.byte	0x14
	.byte	0x7
	.4byte	.LASF18
	.byte	0x3
	.byte	0x13
	.byte	0x9
	.4byte	0x8d
	.byte	0x18
	.byte	0x7
	.4byte	.LASF19
	.byte	0x3
	.byte	0x14
	.byte	0x9
	.4byte	0x8d
	.byte	0x1c
	.byte	0x7
	.4byte	.LASF20
	.byte	0x3
	.byte	0x15
	.byte	0x9
	.4byte	0x8d
	.byte	0x20
	.byte	0x7
	.4byte	.LASF21
	.byte	0x3
	.byte	0x16
	.byte	0x9
	.4byte	0x8d
	.byte	0x24
	.byte	0x7
	.4byte	.LASF22
	.byte	0x3
	.byte	0x17
	.byte	0x9
	.4byte	0x8d
	.byte	0x28
	.byte	0
	.byte	0x9
	.byte	0x4
	.4byte	0x48
	.byte	0x3
	.4byte	.LASF23
	.byte	0x3
	.byte	0x18
	.byte	0x3
	.4byte	0x94
	.byte	0x9
	.byte	0x4
	.4byte	0x163
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF24
	.byte	0xa
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x4
	.byte	0x33
	.byte	0x1
	.4byte	0x185
	.byte	0xb
	.4byte	.LASF25
	.byte	0
	.byte	0xb
	.4byte	.LASF26
	.byte	0x1
	.byte	0
	.byte	0xa
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x5
	.byte	0x41
	.byte	0xe
	.4byte	0x1a0
	.byte	0xb
	.4byte	.LASF27
	.byte	0
	.byte	0xb
	.4byte	.LASF28
	.byte	0x1
	.byte	0
	.byte	0xa
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x5
	.byte	0x49
	.byte	0xe
	.4byte	0x1d9
	.byte	0xb
	.4byte	.LASF29
	.byte	0
	.byte	0xb
	.4byte	.LASF30
	.byte	0x1
	.byte	0xb
	.4byte	.LASF31
	.byte	0x2
	.byte	0xb
	.4byte	.LASF32
	.byte	0x3
	.byte	0xb
	.4byte	.LASF33
	.byte	0x4
	.byte	0xb
	.4byte	.LASF34
	.byte	0x5
	.byte	0xb
	.4byte	.LASF35
	.byte	0x6
	.byte	0
	.byte	0xa
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x6
	.byte	0x4c
	.byte	0x1
	.4byte	0x278
	.byte	0xb
	.4byte	.LASF36
	.byte	0
	.byte	0xb
	.4byte	.LASF37
	.byte	0x1
	.byte	0xb
	.4byte	.LASF38
	.byte	0x2
	.byte	0xb
	.4byte	.LASF39
	.byte	0x3
	.byte	0xb
	.4byte	.LASF40
	.byte	0x4
	.byte	0xb
	.4byte	.LASF41
	.byte	0x5
	.byte	0xb
	.4byte	.LASF42
	.byte	0x6
	.byte	0xb
	.4byte	.LASF43
	.byte	0x7
	.byte	0xb
	.4byte	.LASF44
	.byte	0x8
	.byte	0xb
	.4byte	.LASF45
	.byte	0x9
	.byte	0xb
	.4byte	.LASF46
	.byte	0xa
	.byte	0xb
	.4byte	.LASF47
	.byte	0xb
	.byte	0xb
	.4byte	.LASF48
	.byte	0xc
	.byte	0xb
	.4byte	.LASF49
	.byte	0xd
	.byte	0xb
	.4byte	.LASF50
	.byte	0xe
	.byte	0xb
	.4byte	.LASF51
	.byte	0xf
	.byte	0xb
	.4byte	.LASF52
	.byte	0x10
	.byte	0xb
	.4byte	.LASF53
	.byte	0x11
	.byte	0xb
	.4byte	.LASF54
	.byte	0x12
	.byte	0xb
	.4byte	.LASF55
	.byte	0x13
	.byte	0xb
	.4byte	.LASF56
	.byte	0x14
	.byte	0xb
	.4byte	.LASF57
	.byte	0x15
	.byte	0xb
	.4byte	.LASF58
	.byte	0x16
	.byte	0xb
	.4byte	.LASF59
	.byte	0x17
	.byte	0
	.byte	0x3
	.4byte	.LASF60
	.byte	0x6
	.byte	0x65
	.byte	0x2
	.4byte	0x1d9
	.byte	0xa
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x6
	.byte	0x71
	.byte	0x1
	.4byte	0x2cf
	.byte	0xb
	.4byte	.LASF61
	.byte	0x1
	.byte	0xb
	.4byte	.LASF62
	.byte	0x2
	.byte	0xb
	.4byte	.LASF63
	.byte	0x4
	.byte	0xb
	.4byte	.LASF64
	.byte	0x6
	.byte	0xb
	.4byte	.LASF65
	.byte	0x7
	.byte	0xb
	.4byte	.LASF66
	.byte	0x8
	.byte	0xb
	.4byte	.LASF67
	.byte	0x9
	.byte	0xb
	.4byte	.LASF68
	.byte	0xa
	.byte	0xb
	.4byte	.LASF69
	.byte	0xb
	.byte	0xb
	.4byte	.LASF70
	.byte	0xe
	.byte	0
	.byte	0xc
	.4byte	.LASF110
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x7
	.byte	0x22
	.byte	0xe
	.4byte	0x30c
	.byte	0xb
	.4byte	.LASF71
	.byte	0
	.byte	0xb
	.4byte	.LASF72
	.byte	0x1
	.byte	0xb
	.4byte	.LASF73
	.byte	0x2
	.byte	0xb
	.4byte	.LASF74
	.byte	0x3
	.byte	0xb
	.4byte	.LASF75
	.byte	0x4
	.byte	0xb
	.4byte	.LASF76
	.byte	0x5
	.byte	0xb
	.4byte	.LASF77
	.byte	0x6
	.byte	0
	.byte	0x3
	.4byte	.LASF78
	.byte	0x7
	.byte	0x2a
	.byte	0x3
	.4byte	0x2cf
	.byte	0x6
	.4byte	.LASF80
	.byte	0x8
	.byte	0x7
	.byte	0x2c
	.byte	0x10
	.4byte	0x340
	.byte	0x7
	.4byte	.LASF81
	.byte	0x7
	.byte	0x2d
	.byte	0x13
	.4byte	0x340
	.byte	0
	.byte	0x7
	.4byte	.LASF82
	.byte	0x7
	.byte	0x2e
	.byte	0xb
	.4byte	0x15d
	.byte	0x4
	.byte	0
	.byte	0x9
	.byte	0x4
	.4byte	0x30c
	.byte	0x3
	.4byte	.LASF83
	.byte	0x7
	.byte	0x2f
	.byte	0x3
	.4byte	0x318
	.byte	0x4
	.4byte	0x346
	.byte	0xd
	.4byte	.LASF84
	.byte	0x8
	.byte	0x38
	.byte	0x1b
	.4byte	0x7a
	.byte	0x5
	.byte	0x3
	.4byte	BLOG_HARD_DECLARE_DISABLE
	.byte	0xe
	.4byte	.LASF86
	.byte	0x8
	.byte	0x45
	.byte	0x12
	.4byte	0x30c
	.byte	0x5
	.byte	0x3
	.4byte	_fsymc_level_hosal
	.byte	0xd
	.4byte	.LASF85
	.byte	0x8
	.byte	0x46
	.byte	0x1e
	.4byte	0x352
	.byte	0x5
	.byte	0x3
	.4byte	_fsymc_info_hosal
	.byte	0xe
	.4byte	.LASF87
	.byte	0x8
	.byte	0x53
	.byte	0x12
	.4byte	0x30c
	.byte	0x5
	.byte	0x3
	.4byte	_fsymf_level_hosalbl_i2c
	.byte	0xe
	.4byte	.LASF88
	.byte	0x8
	.byte	0x54
	.byte	0x17
	.4byte	0x352
	.byte	0x5
	.byte	0x3
	.4byte	_fsymf_info_hosalbl_i2c
	.byte	0xf
	.4byte	.LASF92
	.byte	0x1
	.byte	0x92
	.byte	0x6
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x1
	.byte	0x9c
	.4byte	0x498
	.byte	0x10
	.4byte	.LASF91
	.byte	0x1
	.byte	0x92
	.byte	0x24
	.4byte	0x498
	.4byte	.LLST12
	.byte	0x11
	.4byte	0x49e
	.4byte	.LBB10
	.4byte	.LBE10-.LBB10
	.byte	0x1
	.byte	0x95
	.byte	0x5
	.4byte	0x3fe
	.byte	0x12
	.4byte	0x4ab
	.4byte	.LLST13
	.byte	0x13
	.4byte	0x4b7
	.4byte	.LLST14
	.byte	0
	.byte	0x14
	.4byte	0x4c4
	.4byte	.LBB12
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x96
	.byte	0x5
	.4byte	0x48e
	.byte	0x12
	.4byte	0x4d1
	.4byte	.LLST15
	.byte	0x15
	.4byte	.LVL50
	.4byte	0x6c6
	.byte	0x16
	.4byte	.LVL51
	.4byte	0x6c6
	.4byte	0x43c
	.byte	0x17
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x17
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x16
	.4byte	.LVL52
	.4byte	0x6c6
	.4byte	0x454
	.byte	0x17
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x35
	.byte	0x17
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x16
	.4byte	.LVL53
	.4byte	0x6c6
	.4byte	0x46c
	.byte	0x17
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x34
	.byte	0x17
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x16
	.4byte	.LVL54
	.4byte	0x6c6
	.4byte	0x484
	.byte	0x17
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x33
	.byte	0x17
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x18
	.4byte	.LVL56
	.4byte	0x6d2
	.byte	0
	.byte	0x15
	.4byte	.LVL38
	.4byte	0x594
	.byte	0
	.byte	0x9
	.byte	0x4
	.4byte	0x151
	.byte	0x19
	.4byte	.LASF89
	.byte	0x1
	.byte	0x72
	.byte	0xd
	.byte	0x1
	.4byte	0x4c4
	.byte	0x1a
	.4byte	.LASF91
	.byte	0x1
	.byte	0x72
	.byte	0x28
	.4byte	0x498
	.byte	0x1b
	.4byte	.LASF97
	.byte	0x1
	.byte	0x74
	.byte	0xe
	.4byte	0x6e
	.byte	0
	.byte	0x19
	.4byte	.LASF90
	.byte	0x1
	.byte	0x60
	.byte	0xd
	.byte	0x1
	.4byte	0x4de
	.byte	0x1a
	.4byte	.LASF91
	.byte	0x1
	.byte	0x60
	.byte	0x2c
	.4byte	0x498
	.byte	0
	.byte	0xf
	.4byte	.LASF93
	.byte	0x1
	.byte	0x4a
	.byte	0x6
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x1
	.byte	0x9c
	.4byte	0x531
	.byte	0x1c
	.4byte	.LASF91
	.byte	0x1
	.byte	0x4a
	.byte	0x1e
	.4byte	0x498
	.byte	0x1
	.byte	0x5a
	.byte	0x1d
	.4byte	.LASF94
	.byte	0x1
	.byte	0x4c
	.byte	0xe
	.4byte	0x6e
	.4byte	.LLST9
	.byte	0x1e
	.string	"i"
	.byte	0x1
	.byte	0x4d
	.byte	0x9
	.4byte	0x8d
	.4byte	.LLST10
	.byte	0x1d
	.4byte	.LASF95
	.byte	0x1
	.byte	0x4e
	.byte	0x9
	.4byte	0x8d
	.4byte	.LLST11
	.byte	0
	.byte	0xf
	.4byte	.LASF96
	.byte	0x1
	.byte	0x34
	.byte	0x6
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x1
	.byte	0x9c
	.4byte	0x594
	.byte	0x1c
	.4byte	.LASF91
	.byte	0x1
	.byte	0x34
	.byte	0x1f
	.4byte	0x498
	.byte	0x1
	.byte	0x5a
	.byte	0x1d
	.4byte	.LASF94
	.byte	0x1
	.byte	0x36
	.byte	0xe
	.4byte	0x6e
	.4byte	.LLST5
	.byte	0x1e
	.string	"val"
	.byte	0x1
	.byte	0x37
	.byte	0xe
	.4byte	0x6e
	.4byte	.LLST6
	.byte	0x1e
	.string	"i"
	.byte	0x1
	.byte	0x38
	.byte	0x9
	.4byte	0x8d
	.4byte	.LLST7
	.byte	0x1d
	.4byte	.LASF95
	.byte	0x1
	.byte	0x39
	.byte	0x9
	.4byte	0x8d
	.4byte	.LLST8
	.byte	0
	.byte	0x1f
	.4byte	.LASF111
	.byte	0x1
	.byte	0x24
	.byte	0x6
	.byte	0x1
	.4byte	0x5ba
	.byte	0x1a
	.4byte	.LASF22
	.byte	0x1
	.byte	0x24
	.byte	0x1b
	.4byte	0x8d
	.byte	0x1b
	.4byte	.LASF97
	.byte	0x1
	.byte	0x26
	.byte	0xe
	.4byte	0x6e
	.byte	0
	.byte	0xf
	.4byte	.LASF98
	.byte	0x1
	.byte	0x17
	.byte	0x6
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0x60a
	.byte	0x10
	.4byte	.LASF22
	.byte	0x1
	.byte	0x17
	.byte	0x18
	.4byte	0x8d
	.4byte	.LLST2
	.byte	0xd
	.4byte	.LASF99
	.byte	0x1
	.byte	0x19
	.byte	0x13
	.4byte	0x60a
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x20
	.4byte	.LVL9
	.4byte	0x6de
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x36
	.byte	0x17
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x17
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.byte	0x21
	.4byte	0x278
	.4byte	0x61a
	.byte	0x22
	.4byte	0x25
	.byte	0x1
	.byte	0
	.byte	0xf
	.4byte	.LASF100
	.byte	0x1
	.byte	0x10
	.byte	0x6
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0x683
	.byte	0x10
	.4byte	.LASF101
	.byte	0x1
	.byte	0x10
	.byte	0x17
	.4byte	0x8d
	.4byte	.LLST0
	.byte	0x10
	.4byte	.LASF22
	.byte	0x1
	.byte	0x10
	.byte	0x21
	.4byte	0x8d
	.4byte	.LLST1
	.byte	0x16
	.4byte	.LVL3
	.4byte	0x6eb
	.4byte	0x66a
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0x6c
	.byte	0x6
	.byte	0x17
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x23
	.4byte	.LVL6
	.4byte	0x6f7
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x72
	.byte	0x6c
	.byte	0x6
	.byte	0x17
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0
	.byte	0x24
	.4byte	0x594
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x1
	.byte	0x9c
	.4byte	0x6c6
	.byte	0x25
	.4byte	0x5a1
	.byte	0x1
	.byte	0x5a
	.byte	0x26
	.4byte	0x5ad
	.byte	0x27
	.4byte	0x594
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.byte	0x1
	.byte	0x24
	.byte	0x6
	.byte	0x12
	.4byte	0x5a1
	.4byte	.LLST3
	.byte	0x13
	.4byte	0x5ad
	.4byte	.LLST4
	.byte	0
	.byte	0
	.byte	0x28
	.4byte	.LASF102
	.4byte	.LASF102
	.byte	0x5
	.byte	0xbb
	.byte	0x6
	.byte	0x28
	.4byte	.LASF103
	.4byte	.LASF103
	.byte	0x5
	.byte	0xaf
	.byte	0x6
	.byte	0x29
	.4byte	.LASF104
	.4byte	.LASF104
	.byte	0x9
	.2byte	0x277
	.byte	0xd
	.byte	0x28
	.4byte	.LASF105
	.4byte	.LASF105
	.byte	0x5
	.byte	0xb5
	.byte	0x6
	.byte	0x28
	.4byte	.LASF106
	.4byte	.LASF106
	.byte	0x5
	.byte	0xb4
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
	.byte	0x7
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
	.byte	0x8
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
	.byte	0x9
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xa
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
	.byte	0xb
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xc
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
	.byte	0x10
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
	.byte	0x11
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
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x12
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x13
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x14
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
	.byte	0x15
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x16
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
	.byte	0x17
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x18
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
	.byte	0x19
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
	.byte	0x1a
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
	.byte	0
	.byte	0
	.byte	0x1b
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
	.byte	0x1c
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
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x1d
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
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x1e
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
	.byte	0x1f
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
	.byte	0x20
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x20
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x21
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x22
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x23
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x95,0x42
	.byte	0x19
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x24
	.byte	0x2e
	.byte	0x1
	.byte	0x31
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
	.byte	0x25
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x26
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x27
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
	.byte	0x28
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
	.byte	0x29
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
.LLST12:
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL37
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL55
	.4byte	.LVL56
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL56
	.4byte	.LFE15
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL38
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x5
	.byte	0x7e
	.byte	0
	.byte	0x40
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x3
	.byte	0x7e
	.byte	0x80,0x6
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL49
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL55
	.4byte	.LVL56
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL56
	.4byte	.LFE15
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL32
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL23
	.4byte	.LVL30
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x3
	.byte	0x7c
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL35
	.4byte	.LFE12
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x7
	.byte	0x7a
	.byte	0xc
	.byte	0x6
	.byte	0x7d
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL32
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL15
	.4byte	.LVL17
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LFE11
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL15
	.4byte	.LVL17
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0xf
	.byte	0x7a
	.byte	0x10
	.byte	0x6
	.byte	0x7b
	.byte	0
	.byte	0x22
	.byte	0x7e
	.byte	0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LFE11
	.2byte	0x11
	.byte	0x7a
	.byte	0x10
	.byte	0x6
	.byte	0x7b
	.byte	0
	.byte	0x22
	.byte	0x7e
	.byte	0
	.byte	0x22
	.byte	0x31
	.byte	0x1c
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x3
	.byte	0x7e
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LFE11
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL16
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL20
	.4byte	.LFE11
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL8
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL4
	.4byte	.LVL6-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL6-1
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL2
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL3-1
	.4byte	.LVL5
	.2byte	0x2
	.byte	0x91
	.byte	0x6c
	.4byte	.LVL5
	.4byte	.LFE8
	.2byte	0x2
	.byte	0x72
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL11
	.4byte	.LVL14
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x7
	.byte	0x7f
	.byte	0
	.byte	0x42
	.byte	0x3f
	.byte	0x24
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x44
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
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB12
	.4byte	.LBE12
	.4byte	.LBB15
	.4byte	.LBE15
	.4byte	0
	.4byte	0
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF80:
	.string	"_blog_info"
.LASF96:
	.string	"do_write_data"
.LASF103:
	.string	"I2C_Enable"
.LASF110:
	.string	"_blog_leve"
.LASF94:
	.string	"temp"
.LASF68:
	.string	"GPIO_FUN_ANALOG"
.LASF32:
	.string	"I2C_NACK_RECV_INT"
.LASF27:
	.string	"I2C_WRITE"
.LASF28:
	.string	"I2C_READ"
.LASF63:
	.string	"GPIO_FUN_SPI"
.LASF4:
	.string	"long long int"
.LASF98:
	.string	"i2c_gpio_init"
.LASF17:
	.string	"event"
.LASF85:
	.string	"_fsymc_info_hosal"
.LASF15:
	.string	"subaddr"
.LASF47:
	.string	"GLB_GPIO_PIN_11"
.LASF13:
	.string	"direct"
.LASF23:
	.string	"i2c_msg_t"
.LASF100:
	.string	"i2c_set_freq"
.LASF51:
	.string	"GLB_GPIO_PIN_15"
.LASF52:
	.string	"GLB_GPIO_PIN_16"
.LASF6:
	.string	"uint8_t"
.LASF93:
	.string	"do_read_data"
.LASF111:
	.string	"i2c_clear_status"
.LASF105:
	.string	"I2C_SetSclSync"
.LASF59:
	.string	"GLB_GPIO_PIN_MAX"
.LASF87:
	.string	"_fsymf_level_hosalbl_i2c"
.LASF46:
	.string	"GLB_GPIO_PIN_10"
.LASF101:
	.string	"freq"
.LASF48:
	.string	"GLB_GPIO_PIN_12"
.LASF49:
	.string	"GLB_GPIO_PIN_13"
.LASF50:
	.string	"GLB_GPIO_PIN_14"
.LASF64:
	.string	"GPIO_FUN_I2C"
.LASF84:
	.string	"BLOG_HARD_DECLARE_DISABLE"
.LASF53:
	.string	"GLB_GPIO_PIN_17"
.LASF54:
	.string	"GLB_GPIO_PIN_18"
.LASF55:
	.string	"GLB_GPIO_PIN_19"
.LASF45:
	.string	"GLB_GPIO_PIN_9"
.LASF3:
	.string	"long int"
.LASF12:
	.string	"addr"
.LASF2:
	.string	"short int"
.LASF60:
	.string	"GLB_GPIO_Type"
.LASF19:
	.string	"block"
.LASF34:
	.string	"I2C_FIFO_ERR_INT"
.LASF33:
	.string	"I2C_ARB_LOST_INT"
.LASF91:
	.string	"pstmsg"
.LASF66:
	.string	"GPIO_FUN_PWM"
.LASF108:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/bl602_hal/bl_i2c.c"
.LASF30:
	.string	"I2C_TX_FIFO_READY_INT"
.LASF79:
	.string	"i2c_msg"
.LASF25:
	.string	"UNMASK"
.LASF5:
	.string	"unsigned char"
.LASF29:
	.string	"I2C_TRANS_END_INT"
.LASF76:
	.string	"BLOG_LEVEL_ASSERT"
.LASF1:
	.string	"signed char"
.LASF11:
	.string	"long long unsigned int"
.LASF104:
	.string	"GLB_GPIO_Func_Init"
.LASF9:
	.string	"uint32_t"
.LASF67:
	.string	"GPIO_FUN_EXT_PA"
.LASF26:
	.string	"MASK"
.LASF7:
	.string	"uint16_t"
.LASF38:
	.string	"GLB_GPIO_PIN_2"
.LASF73:
	.string	"BLOG_LEVEL_INFO"
.LASF39:
	.string	"GLB_GPIO_PIN_3"
.LASF40:
	.string	"GLB_GPIO_PIN_4"
.LASF90:
	.string	"i2c_transfer_enable"
.LASF57:
	.string	"GLB_GPIO_PIN_21"
.LASF58:
	.string	"GLB_GPIO_PIN_22"
.LASF42:
	.string	"GLB_GPIO_PIN_6"
.LASF43:
	.string	"GLB_GPIO_PIN_7"
.LASF65:
	.string	"GPIO_FUN_UART"
.LASF21:
	.string	"ins_num"
.LASF20:
	.string	"stop"
.LASF24:
	.string	"char"
.LASF89:
	.string	"i2c_config_para"
.LASF102:
	.string	"I2C_IntMask"
.LASF69:
	.string	"GPIO_FUN_SWGPIO"
.LASF88:
	.string	"_fsymf_info_hosalbl_i2c"
.LASF8:
	.string	"short unsigned int"
.LASF62:
	.string	"GPIO_FUN_FLASH"
.LASF61:
	.string	"GPIO_FUN_SDIO"
.LASF14:
	.string	"subflag"
.LASF56:
	.string	"GLB_GPIO_PIN_20"
.LASF71:
	.string	"BLOG_LEVEL_ALL"
.LASF18:
	.string	"idex"
.LASF83:
	.string	"blog_info_t"
.LASF10:
	.string	"long unsigned int"
.LASF36:
	.string	"GLB_GPIO_PIN_0"
.LASF37:
	.string	"GLB_GPIO_PIN_1"
.LASF75:
	.string	"BLOG_LEVEL_ERROR"
.LASF95:
	.string	"count"
.LASF86:
	.string	"_fsymc_level_hosal"
.LASF81:
	.string	"level"
.LASF41:
	.string	"GLB_GPIO_PIN_5"
.LASF77:
	.string	"BLOG_LEVEL_NEVER"
.LASF16:
	.string	"sublen"
.LASF82:
	.string	"name"
.LASF44:
	.string	"GLB_GPIO_PIN_8"
.LASF31:
	.string	"I2C_RX_FIFO_READY_INT"
.LASF99:
	.string	"gpiopins"
.LASF109:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/hosal"
.LASF74:
	.string	"BLOG_LEVEL_WARN"
.LASF92:
	.string	"i2c_transfer_start"
.LASF106:
	.string	"I2C_ClockSet"
.LASF78:
	.string	"blog_level_t"
.LASF72:
	.string	"BLOG_LEVEL_DEBUG"
.LASF0:
	.string	"unsigned int"
.LASF97:
	.string	"tmpval"
.LASF35:
	.string	"I2C_INT_ALL"
.LASF70:
	.string	"GPIO_FUN_JTAG"
.LASF22:
	.string	"i2cx"
.LASF107:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
