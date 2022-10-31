	.file	"bl_hbn.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.rodata.bl_hbn_enter.str1.4,"aMS",@progbits,1
	.align	2
.LC1:
	.string	"invalid arg.\r\n"
	.align	2
.LC2:
	.string	"hbn"
	.align	2
.LC3:
	.string	" gpio%d"
	.align	2
.LC4:
	.string	".\r\n"
	.section	.text.bl_hbn_enter,"ax",@progbits
	.align	1
	.globl	bl_hbn_enter
	.type	bl_hbn_enter, @function
bl_hbn_enter:
.LFB8:
	.file 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/bl602_hal/bl_hbn.c"
	.loc 1 15 1
	.cfi_startproc
.LVL0:
	.loc 1 115 5
	.loc 1 15 1 is_stmt 0
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s1,36(sp)
	.cfi_offset 9, -12
	mv	s1,a1
	.loc 1 115 22
	lui	a1,%hi(.LANCHOR0)
.LVL1:
	.loc 1 15 1
	sw	s0,40(sp)
	.loc 1 115 22
	li	a2,28
	.cfi_offset 8, -8
	.loc 1 15 1
	mv	s0,a0
	.loc 1 115 22
	addi	a1,a1,%lo(.LANCHOR0)
	addi	a0,sp,4
.LVL2:
	.loc 1 15 1
	sw	ra,44(sp)
	sw	s2,32(sp)
	.cfi_offset 1, -4
	.cfi_offset 18, -16
	.loc 1 115 22
	call	memcpy
.LVL3:
	.loc 1 131 5 is_stmt 1
	.loc 1 131 28 is_stmt 0
	lw	a5,0(s1)
	.loc 1 131 35
	li	a4,1000
	.loc 1 138 20
	lbu	a6,0(s0)
	.loc 1 131 28
	addi	a5,a5,999
	.loc 1 131 35
	divu	a5,a5,a4
	.loc 1 138 5
	li	a2,0
	li	a3,4
	li	a1,0
	li	a4,0
	.loc 1 138 11
	li	a0,0
	.loc 1 139 12
	li	t1,7
	.loc 1 143 19
	li	t3,8
	.loc 1 147 19
	li	t4,255
	.loc 1 131 19
	sw	a5,8(sp)
	.loc 1 137 5 is_stmt 1
	.loc 1 138 5
.LVL4:
.L2:
	.loc 1 138 15 discriminator 1
	.loc 1 138 5 is_stmt 0 discriminator 1
	bgt	a6,a0,.L9
	beq	a1,zero,.L10
	sb	a4,12(sp)
.L10:
	beq	a2,zero,.L11
	sw	a3,16(sp)
.L11:
	.loc 1 155 5 is_stmt 1
	.loc 1 155 8 is_stmt 0
	beq	a6,zero,.L12
	.loc 1 156 9 is_stmt 1
	lui	a0,%hi(.LC2)
.LVL5:
	addi	a0,a0,%lo(.LC2)
	call	printf
.LVL6:
	.loc 1 157 9
	.loc 1 157 15 is_stmt 0
	li	s1,0
.LVL7:
	.loc 1 158 13
	lui	s2,%hi(.LC3)
.LVL8:
.L13:
	.loc 1 157 19 is_stmt 1 discriminator 1
	.loc 1 157 24 is_stmt 0 discriminator 1
	lbu	a5,0(s0)
	.loc 1 157 9 discriminator 1
	bgt	a5,s1,.L14
	.loc 1 160 9 is_stmt 1
	lui	a0,%hi(.LC4)
	addi	a0,a0,%lo(.LC4)
	call	printf
.LVL9:
.L12:
	.loc 1 163 5
	.loc 1 163 20 is_stmt 0
	call	bl_flash_get_flashCfg
.LVL10:
	.loc 1 163 18
	sw	a0,20(sp)
	.loc 1 165 5 is_stmt 1
	li	a0,0
	call	HBN_Clear_IRQ
.LVL11:
	.loc 1 166 5
	li	a0,1
	call	HBN_Clear_IRQ
.LVL12:
	.loc 1 168 5
	addi	a0,sp,4
	call	HBN_Mode_Enter
.LVL13:
	.loc 1 169 5
	.loc 1 169 12 is_stmt 0
	j	.L8
.LVL14:
.L9:
	.loc 1 139 9 is_stmt 1
	.loc 1 139 22 is_stmt 0
	add	a5,s0,a0
	lbu	a5,2(a5)
	andi	a7,a5,127
	.loc 1 139 12
	bne	a7,t1,.L3
	.loc 1 140 13 is_stmt 1
	.loc 1 140 31 is_stmt 0
	ori	a4,a4,1
	.loc 1 141 13 is_stmt 1
.L35:
	.loc 1 145 13
	.loc 1 145 16 is_stmt 0
	slli	a5,a5,24
	srai	a5,a5,24
	li	a1,1
	bge	a5,zero,.L4
	li	a2,1
	.loc 1 146 33
	li	a3,5
.L4:
	.loc 1 138 30 is_stmt 1 discriminator 2
	.loc 1 138 31 is_stmt 0 discriminator 2
	addi	a0,a0,1
.LVL15:
	j	.L2
.L3:
	.loc 1 143 16 is_stmt 1
	.loc 1 143 19 is_stmt 0
	bne	a7,t3,.L5
	.loc 1 144 13 is_stmt 1
	.loc 1 144 31 is_stmt 0
	ori	a4,a4,2
	j	.L35
.L5:
	.loc 1 147 16 is_stmt 1
	.loc 1 147 19 is_stmt 0
	beq	a5,t4,.L4
	beq	a1,zero,.L6
	sb	a4,12(sp)
.L6:
	beq	a2,zero,.L7
	sw	a3,16(sp)
.L7:
	.loc 1 150 13 is_stmt 1
	lui	a0,%hi(.LC1)
.LVL16:
	addi	a0,a0,%lo(.LC1)
	call	printf
.LVL17:
	.loc 1 151 13
.L8:
	.loc 1 170 1 is_stmt 0
	lw	ra,44(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
.LVL18:
	lw	s1,36(sp)
	.cfi_restore 9
	lw	s2,32(sp)
	.cfi_restore 18
	li	a0,-1
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
.LVL19:
.L14:
	.cfi_restore_state
	.loc 1 158 13 is_stmt 1 discriminator 3
	.loc 1 158 39 is_stmt 0 discriminator 3
	add	a5,s0,s1
	.loc 1 158 13 discriminator 3
	lbu	a1,2(a5)
	addi	a0,s2,%lo(.LC3)
	.loc 1 157 35 discriminator 3
	addi	s1,s1,1
.LVL20:
	.loc 1 158 13 discriminator 3
	call	printf
.LVL21:
	.loc 1 157 34 is_stmt 1 discriminator 3
	j	.L13
	.cfi_endproc
.LFE8:
	.size	bl_hbn_enter, .-bl_hbn_enter
	.globl	_fsymf_info_hosalbl_hbn
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	2
.LC5:
	.string	"hosal.bl_hbn"
	.comm	_fsymf_level_hosalbl_hbn,4,4
	.align	2
.LC6:
	.string	"hosal"
	.weak	_fsymc_level_hosal
	.section	.rodata
	.align	2
	.set	.LANCHOR0,. + 0
.LC0:
	.byte	0
	.zero	3
	.word	0
	.byte	0
	.zero	3
	.word	4
	.word	0
	.word	0
	.word	10
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
	.word	.LC6
	.section	.static_blogfile_code.hosalbl_hbn,"a"
	.align	2
	.type	_fsymf_info_hosalbl_hbn, @object
	.size	_fsymf_info_hosalbl_hbn, 8
_fsymf_info_hosalbl_hbn:
	.word	_fsymf_level_hosalbl_hbn
	.word	.LC5
	.text
.Letext0:
	.file 2 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 3 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 4 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_sflash.h"
	.file 5 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_hbn.h"
	.file 6 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/bl602_hal/bl_hbn.h"
	.file 7 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/blog/blog_type.h"
	.file 8 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/blog/blog.h"
	.file 9 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h"
	.file 10 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/bl602_hal/bl_flash.h"
	.file 11 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x8ca
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF160
	.byte	0xc
	.4byte	.LASF161
	.4byte	.LASF162
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.byte	0x3
	.4byte	.LASF3
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
	.byte	0x3
	.4byte	.LASF4
	.byte	0x2
	.byte	0x39
	.byte	0x1c
	.4byte	0x52
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.byte	0x3
	.4byte	.LASF7
	.byte	0x2
	.byte	0x4f
	.byte	0x1b
	.4byte	0x6c
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF9
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.byte	0x5
	.byte	0x4
	.4byte	0x95
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.byte	0x3
	.4byte	.LASF13
	.byte	0x3
	.byte	0x18
	.byte	0x13
	.4byte	0x2c
	.byte	0x3
	.4byte	.LASF14
	.byte	0x3
	.byte	0x24
	.byte	0x14
	.4byte	0x46
	.byte	0x3
	.4byte	.LASF15
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x60
	.byte	0x6
	.4byte	0xb4
	.byte	0x7
	.4byte	0x9c
	.4byte	0xd5
	.byte	0x8
	.4byte	0x88
	.byte	0x3
	.byte	0
	.byte	0x7
	.4byte	0x9c
	.4byte	0xe5
	.byte	0x8
	.4byte	0x88
	.byte	0
	.byte	0
	.byte	0x9
	.byte	0x54
	.byte	0x4
	.byte	0x39
	.byte	0x9
	.4byte	0x497
	.byte	0xa
	.4byte	.LASF16
	.byte	0x4
	.byte	0x3a
	.byte	0xd
	.4byte	0x9c
	.byte	0
	.byte	0xa
	.4byte	.LASF17
	.byte	0x4
	.byte	0x3b
	.byte	0xd
	.4byte	0x9c
	.byte	0x1
	.byte	0xa
	.4byte	.LASF18
	.byte	0x4
	.byte	0x3c
	.byte	0xd
	.4byte	0x9c
	.byte	0x2
	.byte	0xa
	.4byte	.LASF19
	.byte	0x4
	.byte	0x3d
	.byte	0xd
	.4byte	0x9c
	.byte	0x3
	.byte	0xa
	.4byte	.LASF20
	.byte	0x4
	.byte	0x3e
	.byte	0xd
	.4byte	0x9c
	.byte	0x4
	.byte	0xa
	.4byte	.LASF21
	.byte	0x4
	.byte	0x3f
	.byte	0xd
	.4byte	0x9c
	.byte	0x5
	.byte	0xa
	.4byte	.LASF22
	.byte	0x4
	.byte	0x40
	.byte	0xd
	.4byte	0x9c
	.byte	0x6
	.byte	0xa
	.4byte	.LASF23
	.byte	0x4
	.byte	0x41
	.byte	0xd
	.4byte	0x9c
	.byte	0x7
	.byte	0xa
	.4byte	.LASF24
	.byte	0x4
	.byte	0x42
	.byte	0xd
	.4byte	0x9c
	.byte	0x8
	.byte	0xa
	.4byte	.LASF25
	.byte	0x4
	.byte	0x43
	.byte	0xd
	.4byte	0x9c
	.byte	0x9
	.byte	0xa
	.4byte	.LASF26
	.byte	0x4
	.byte	0x44
	.byte	0xd
	.4byte	0x9c
	.byte	0xa
	.byte	0xa
	.4byte	.LASF27
	.byte	0x4
	.byte	0x45
	.byte	0xd
	.4byte	0x9c
	.byte	0xb
	.byte	0xa
	.4byte	.LASF28
	.byte	0x4
	.byte	0x46
	.byte	0xd
	.4byte	0x9c
	.byte	0xc
	.byte	0xb
	.string	"mid"
	.byte	0x4
	.byte	0x47
	.byte	0xd
	.4byte	0x9c
	.byte	0xd
	.byte	0xa
	.4byte	.LASF29
	.byte	0x4
	.byte	0x48
	.byte	0xe
	.4byte	0xa8
	.byte	0xe
	.byte	0xa
	.4byte	.LASF30
	.byte	0x4
	.byte	0x49
	.byte	0xd
	.4byte	0x9c
	.byte	0x10
	.byte	0xa
	.4byte	.LASF31
	.byte	0x4
	.byte	0x4a
	.byte	0xd
	.4byte	0x9c
	.byte	0x11
	.byte	0xa
	.4byte	.LASF32
	.byte	0x4
	.byte	0x4b
	.byte	0xd
	.4byte	0x9c
	.byte	0x12
	.byte	0xa
	.4byte	.LASF33
	.byte	0x4
	.byte	0x4c
	.byte	0xd
	.4byte	0x9c
	.byte	0x13
	.byte	0xa
	.4byte	.LASF34
	.byte	0x4
	.byte	0x4d
	.byte	0xd
	.4byte	0x9c
	.byte	0x14
	.byte	0xa
	.4byte	.LASF35
	.byte	0x4
	.byte	0x4e
	.byte	0xd
	.4byte	0x9c
	.byte	0x15
	.byte	0xa
	.4byte	.LASF36
	.byte	0x4
	.byte	0x4f
	.byte	0xd
	.4byte	0x9c
	.byte	0x16
	.byte	0xa
	.4byte	.LASF37
	.byte	0x4
	.byte	0x50
	.byte	0xd
	.4byte	0x9c
	.byte	0x17
	.byte	0xa
	.4byte	.LASF38
	.byte	0x4
	.byte	0x51
	.byte	0xd
	.4byte	0x9c
	.byte	0x18
	.byte	0xa
	.4byte	.LASF39
	.byte	0x4
	.byte	0x52
	.byte	0xd
	.4byte	0x9c
	.byte	0x19
	.byte	0xa
	.4byte	.LASF40
	.byte	0x4
	.byte	0x53
	.byte	0xd
	.4byte	0x9c
	.byte	0x1a
	.byte	0xa
	.4byte	.LASF41
	.byte	0x4
	.byte	0x54
	.byte	0xd
	.4byte	0x9c
	.byte	0x1b
	.byte	0xa
	.4byte	.LASF42
	.byte	0x4
	.byte	0x55
	.byte	0xd
	.4byte	0x9c
	.byte	0x1c
	.byte	0xa
	.4byte	.LASF43
	.byte	0x4
	.byte	0x56
	.byte	0xd
	.4byte	0x9c
	.byte	0x1d
	.byte	0xa
	.4byte	.LASF44
	.byte	0x4
	.byte	0x57
	.byte	0xd
	.4byte	0x9c
	.byte	0x1e
	.byte	0xa
	.4byte	.LASF45
	.byte	0x4
	.byte	0x58
	.byte	0xd
	.4byte	0x9c
	.byte	0x1f
	.byte	0xa
	.4byte	.LASF46
	.byte	0x4
	.byte	0x59
	.byte	0xd
	.4byte	0x9c
	.byte	0x20
	.byte	0xa
	.4byte	.LASF47
	.byte	0x4
	.byte	0x5a
	.byte	0xd
	.4byte	0x9c
	.byte	0x21
	.byte	0xa
	.4byte	.LASF48
	.byte	0x4
	.byte	0x5b
	.byte	0xd
	.4byte	0x9c
	.byte	0x22
	.byte	0xa
	.4byte	.LASF49
	.byte	0x4
	.byte	0x5c
	.byte	0xd
	.4byte	0x9c
	.byte	0x23
	.byte	0xa
	.4byte	.LASF50
	.byte	0x4
	.byte	0x5d
	.byte	0xd
	.4byte	0x9c
	.byte	0x24
	.byte	0xa
	.4byte	.LASF51
	.byte	0x4
	.byte	0x5e
	.byte	0xd
	.4byte	0x9c
	.byte	0x25
	.byte	0xa
	.4byte	.LASF52
	.byte	0x4
	.byte	0x5f
	.byte	0xd
	.4byte	0x9c
	.byte	0x26
	.byte	0xa
	.4byte	.LASF53
	.byte	0x4
	.byte	0x60
	.byte	0xd
	.4byte	0x9c
	.byte	0x27
	.byte	0xa
	.4byte	.LASF54
	.byte	0x4
	.byte	0x61
	.byte	0xd
	.4byte	0x9c
	.byte	0x28
	.byte	0xa
	.4byte	.LASF55
	.byte	0x4
	.byte	0x62
	.byte	0xd
	.4byte	0x9c
	.byte	0x29
	.byte	0xa
	.4byte	.LASF56
	.byte	0x4
	.byte	0x63
	.byte	0xd
	.4byte	0x9c
	.byte	0x2a
	.byte	0xa
	.4byte	.LASF57
	.byte	0x4
	.byte	0x64
	.byte	0xd
	.4byte	0x9c
	.byte	0x2b
	.byte	0xa
	.4byte	.LASF58
	.byte	0x4
	.byte	0x65
	.byte	0xd
	.4byte	0x9c
	.byte	0x2c
	.byte	0xa
	.4byte	.LASF59
	.byte	0x4
	.byte	0x66
	.byte	0xd
	.4byte	0x9c
	.byte	0x2d
	.byte	0xa
	.4byte	.LASF60
	.byte	0x4
	.byte	0x67
	.byte	0xd
	.4byte	0x9c
	.byte	0x2e
	.byte	0xa
	.4byte	.LASF61
	.byte	0x4
	.byte	0x68
	.byte	0xd
	.4byte	0x9c
	.byte	0x2f
	.byte	0xa
	.4byte	.LASF62
	.byte	0x4
	.byte	0x69
	.byte	0xd
	.4byte	0x9c
	.byte	0x30
	.byte	0xa
	.4byte	.LASF63
	.byte	0x4
	.byte	0x6a
	.byte	0xd
	.4byte	0x9c
	.byte	0x31
	.byte	0xa
	.4byte	.LASF64
	.byte	0x4
	.byte	0x6b
	.byte	0xd
	.4byte	0x9c
	.byte	0x32
	.byte	0xa
	.4byte	.LASF65
	.byte	0x4
	.byte	0x6c
	.byte	0xd
	.4byte	0x9c
	.byte	0x33
	.byte	0xa
	.4byte	.LASF66
	.byte	0x4
	.byte	0x6d
	.byte	0xd
	.4byte	0xc5
	.byte	0x34
	.byte	0xa
	.4byte	.LASF67
	.byte	0x4
	.byte	0x6e
	.byte	0xd
	.4byte	0xc5
	.byte	0x38
	.byte	0xa
	.4byte	.LASF68
	.byte	0x4
	.byte	0x6f
	.byte	0xd
	.4byte	0x9c
	.byte	0x3c
	.byte	0xa
	.4byte	.LASF69
	.byte	0x4
	.byte	0x70
	.byte	0xd
	.4byte	0x9c
	.byte	0x3d
	.byte	0xa
	.4byte	.LASF70
	.byte	0x4
	.byte	0x71
	.byte	0xd
	.4byte	0x9c
	.byte	0x3e
	.byte	0xa
	.4byte	.LASF71
	.byte	0x4
	.byte	0x72
	.byte	0xd
	.4byte	0x9c
	.byte	0x3f
	.byte	0xa
	.4byte	.LASF72
	.byte	0x4
	.byte	0x73
	.byte	0xd
	.4byte	0x9c
	.byte	0x40
	.byte	0xa
	.4byte	.LASF73
	.byte	0x4
	.byte	0x74
	.byte	0xd
	.4byte	0x9c
	.byte	0x41
	.byte	0xa
	.4byte	.LASF74
	.byte	0x4
	.byte	0x75
	.byte	0xd
	.4byte	0x9c
	.byte	0x42
	.byte	0xa
	.4byte	.LASF75
	.byte	0x4
	.byte	0x76
	.byte	0xd
	.4byte	0x9c
	.byte	0x43
	.byte	0xa
	.4byte	.LASF76
	.byte	0x4
	.byte	0x77
	.byte	0xd
	.4byte	0x9c
	.byte	0x44
	.byte	0xa
	.4byte	.LASF77
	.byte	0x4
	.byte	0x78
	.byte	0xd
	.4byte	0x9c
	.byte	0x45
	.byte	0xa
	.4byte	.LASF78
	.byte	0x4
	.byte	0x79
	.byte	0xd
	.4byte	0x9c
	.byte	0x46
	.byte	0xa
	.4byte	.LASF79
	.byte	0x4
	.byte	0x7a
	.byte	0xd
	.4byte	0x9c
	.byte	0x47
	.byte	0xa
	.4byte	.LASF80
	.byte	0x4
	.byte	0x7b
	.byte	0xe
	.4byte	0xa8
	.byte	0x48
	.byte	0xa
	.4byte	.LASF81
	.byte	0x4
	.byte	0x7c
	.byte	0xe
	.4byte	0xa8
	.byte	0x4a
	.byte	0xa
	.4byte	.LASF82
	.byte	0x4
	.byte	0x7d
	.byte	0xe
	.4byte	0xa8
	.byte	0x4c
	.byte	0xa
	.4byte	.LASF83
	.byte	0x4
	.byte	0x7e
	.byte	0xe
	.4byte	0xa8
	.byte	0x4e
	.byte	0xa
	.4byte	.LASF84
	.byte	0x4
	.byte	0x7f
	.byte	0xe
	.4byte	0xa8
	.byte	0x50
	.byte	0xa
	.4byte	.LASF85
	.byte	0x4
	.byte	0x80
	.byte	0xd
	.4byte	0x9c
	.byte	0x52
	.byte	0xa
	.4byte	.LASF86
	.byte	0x4
	.byte	0x81
	.byte	0xd
	.4byte	0x9c
	.byte	0x53
	.byte	0
	.byte	0x3
	.4byte	.LASF87
	.byte	0x4
	.byte	0x82
	.byte	0x1b
	.4byte	0xe5
	.byte	0xc
	.byte	0x7
	.byte	0x4
	.4byte	0x88
	.byte	0x5
	.byte	0x8e
	.byte	0xe
	.4byte	0x4dc
	.byte	0xd
	.4byte	.LASF88
	.byte	0
	.byte	0xd
	.4byte	.LASF89
	.byte	0x1
	.byte	0xd
	.4byte	.LASF90
	.byte	0x10
	.byte	0xd
	.4byte	.LASF91
	.byte	0x11
	.byte	0xd
	.4byte	.LASF92
	.byte	0x12
	.byte	0xd
	.4byte	.LASF93
	.byte	0x14
	.byte	0xd
	.4byte	.LASF94
	.byte	0x16
	.byte	0
	.byte	0xc
	.byte	0x7
	.byte	0x4
	.4byte	0x88
	.byte	0x5
	.byte	0xa3
	.byte	0xe
	.4byte	0x51b
	.byte	0xd
	.4byte	.LASF95
	.byte	0
	.byte	0xd
	.4byte	.LASF96
	.byte	0x1
	.byte	0xd
	.4byte	.LASF97
	.byte	0x2
	.byte	0xd
	.4byte	.LASF98
	.byte	0x3
	.byte	0xd
	.4byte	.LASF99
	.byte	0x4
	.byte	0xd
	.4byte	.LASF100
	.byte	0x5
	.byte	0xd
	.4byte	.LASF101
	.byte	0x6
	.byte	0xd
	.4byte	.LASF102
	.byte	0x7
	.byte	0
	.byte	0x3
	.4byte	.LASF103
	.byte	0x5
	.byte	0xac
	.byte	0x2
	.4byte	0x4dc
	.byte	0xc
	.byte	0x7
	.byte	0x4
	.4byte	0x88
	.byte	0x5
	.byte	0xc4
	.byte	0xe
	.4byte	0x596
	.byte	0xd
	.4byte	.LASF104
	.byte	0
	.byte	0xd
	.4byte	.LASF105
	.byte	0x1
	.byte	0xd
	.4byte	.LASF106
	.byte	0x2
	.byte	0xd
	.4byte	.LASF107
	.byte	0x3
	.byte	0xd
	.4byte	.LASF108
	.byte	0x4
	.byte	0xd
	.4byte	.LASF109
	.byte	0x5
	.byte	0xd
	.4byte	.LASF110
	.byte	0x6
	.byte	0xd
	.4byte	.LASF111
	.byte	0x7
	.byte	0xd
	.4byte	.LASF112
	.byte	0x8
	.byte	0xd
	.4byte	.LASF113
	.byte	0x9
	.byte	0xd
	.4byte	.LASF114
	.byte	0xa
	.byte	0xd
	.4byte	.LASF115
	.byte	0xb
	.byte	0xd
	.4byte	.LASF116
	.byte	0xc
	.byte	0xd
	.4byte	.LASF117
	.byte	0xd
	.byte	0xd
	.4byte	.LASF118
	.byte	0xe
	.byte	0xd
	.4byte	.LASF119
	.byte	0xf
	.byte	0
	.byte	0x3
	.4byte	.LASF120
	.byte	0x5
	.byte	0xd5
	.byte	0x2
	.4byte	0x527
	.byte	0xc
	.byte	0x7
	.byte	0x4
	.4byte	0x88
	.byte	0x5
	.byte	0xda
	.byte	0xe
	.4byte	0x5c9
	.byte	0xd
	.4byte	.LASF121
	.byte	0
	.byte	0xd
	.4byte	.LASF122
	.byte	0x1
	.byte	0xd
	.4byte	.LASF123
	.byte	0x2
	.byte	0xd
	.4byte	.LASF124
	.byte	0x3
	.byte	0
	.byte	0x3
	.4byte	.LASF125
	.byte	0x5
	.byte	0xdf
	.byte	0x2
	.4byte	0x5a2
	.byte	0x9
	.byte	0x1c
	.byte	0x5
	.byte	0xee
	.byte	0x9
	.4byte	0x63a
	.byte	0xa
	.4byte	.LASF126
	.byte	0x5
	.byte	0xef
	.byte	0xd
	.4byte	0x9c
	.byte	0
	.byte	0xa
	.4byte	.LASF127
	.byte	0x5
	.byte	0xf0
	.byte	0xe
	.4byte	0xb4
	.byte	0x4
	.byte	0xa
	.4byte	.LASF128
	.byte	0x5
	.byte	0xf1
	.byte	0xd
	.4byte	0x9c
	.byte	0x8
	.byte	0xa
	.4byte	.LASF129
	.byte	0x5
	.byte	0xf2
	.byte	0x1f
	.4byte	0x51b
	.byte	0xc
	.byte	0xa
	.4byte	.LASF130
	.byte	0x5
	.byte	0xf3
	.byte	0x19
	.4byte	0x63a
	.byte	0x10
	.byte	0xa
	.4byte	.LASF131
	.byte	0x5
	.byte	0xf4
	.byte	0x14
	.4byte	0x5c9
	.byte	0x14
	.byte	0xa
	.4byte	.LASF132
	.byte	0x5
	.byte	0xf5
	.byte	0x18
	.4byte	0x596
	.byte	0x18
	.byte	0
	.byte	0x5
	.byte	0x4
	.4byte	0x497
	.byte	0x3
	.4byte	.LASF133
	.byte	0x5
	.byte	0xf6
	.byte	0x2
	.4byte	0x5d5
	.byte	0xe
	.4byte	.LASF145
	.byte	0x3
	.byte	0x6
	.byte	0x5
	.byte	0x10
	.4byte	0x681
	.byte	0xa
	.4byte	.LASF134
	.byte	0x6
	.byte	0x6
	.byte	0xd
	.4byte	0x9c
	.byte	0
	.byte	0xa
	.4byte	.LASF135
	.byte	0x6
	.byte	0x7
	.byte	0xd
	.4byte	0x9c
	.byte	0x1
	.byte	0xb
	.string	"buf"
	.byte	0x6
	.byte	0x8
	.byte	0xd
	.4byte	0xd5
	.byte	0x2
	.byte	0
	.byte	0x3
	.4byte	.LASF136
	.byte	0x6
	.byte	0x9
	.byte	0x3
	.4byte	0x64c
	.byte	0xf
	.4byte	.LASF163
	.byte	0x7
	.byte	0x4
	.4byte	0x88
	.byte	0x7
	.byte	0x22
	.byte	0xe
	.4byte	0x6ca
	.byte	0xd
	.4byte	.LASF137
	.byte	0
	.byte	0xd
	.4byte	.LASF138
	.byte	0x1
	.byte	0xd
	.4byte	.LASF139
	.byte	0x2
	.byte	0xd
	.4byte	.LASF140
	.byte	0x3
	.byte	0xd
	.4byte	.LASF141
	.byte	0x4
	.byte	0xd
	.4byte	.LASF142
	.byte	0x5
	.byte	0xd
	.4byte	.LASF143
	.byte	0x6
	.byte	0
	.byte	0x3
	.4byte	.LASF144
	.byte	0x7
	.byte	0x2a
	.byte	0x3
	.4byte	0x68d
	.byte	0xe
	.4byte	.LASF146
	.byte	0x8
	.byte	0x7
	.byte	0x2c
	.byte	0x10
	.4byte	0x6fe
	.byte	0xa
	.4byte	.LASF147
	.byte	0x7
	.byte	0x2d
	.byte	0x13
	.4byte	0x6fe
	.byte	0
	.byte	0xa
	.4byte	.LASF148
	.byte	0x7
	.byte	0x2e
	.byte	0xb
	.4byte	0x8f
	.byte	0x4
	.byte	0
	.byte	0x5
	.byte	0x4
	.4byte	0x6ca
	.byte	0x3
	.4byte	.LASF149
	.byte	0x7
	.byte	0x2f
	.byte	0x3
	.4byte	0x6d6
	.byte	0x6
	.4byte	0x704
	.byte	0x10
	.4byte	.LASF150
	.byte	0x8
	.byte	0x38
	.byte	0x1b
	.4byte	0xc0
	.byte	0x5
	.byte	0x3
	.4byte	BLOG_HARD_DECLARE_DISABLE
	.byte	0x11
	.4byte	.LASF152
	.byte	0x8
	.byte	0x45
	.byte	0x12
	.4byte	0x6ca
	.byte	0x5
	.byte	0x3
	.4byte	_fsymc_level_hosal
	.byte	0x10
	.4byte	.LASF151
	.byte	0x8
	.byte	0x46
	.byte	0x1e
	.4byte	0x710
	.byte	0x5
	.byte	0x3
	.4byte	_fsymc_info_hosal
	.byte	0x11
	.4byte	.LASF153
	.byte	0x8
	.byte	0x53
	.byte	0x12
	.4byte	0x6ca
	.byte	0x5
	.byte	0x3
	.4byte	_fsymf_level_hosalbl_hbn
	.byte	0x11
	.4byte	.LASF154
	.byte	0x8
	.byte	0x54
	.byte	0x17
	.4byte	0x710
	.byte	0x5
	.byte	0x3
	.4byte	_fsymf_info_hosalbl_hbn
	.byte	0x12
	.4byte	.LASF164
	.byte	0x1
	.byte	0xe
	.byte	0x5
	.4byte	0x81
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0x884
	.byte	0x13
	.string	"hbn"
	.byte	0x1
	.byte	0xe
	.byte	0x1e
	.4byte	0x884
	.4byte	.LLST0
	.byte	0x14
	.4byte	.LASF155
	.byte	0x1
	.byte	0xe
	.byte	0x2d
	.4byte	0x88a
	.4byte	.LLST1
	.byte	0x15
	.string	"cfg"
	.byte	0x1
	.byte	0x73
	.byte	0x16
	.4byte	0x640
	.byte	0x2
	.byte	0x91
	.byte	0x54
	.byte	0x16
	.string	"i"
	.byte	0x1
	.byte	0x89
	.byte	0x9
	.4byte	0x81
	.4byte	.LLST2
	.byte	0x17
	.4byte	.LVL3
	.4byte	0x890
	.4byte	0x7e8
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x54
	.byte	0x18
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0x18
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x4c
	.byte	0
	.byte	0x17
	.4byte	.LVL6
	.4byte	0x89b
	.4byte	0x7ff
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0x17
	.4byte	.LVL9
	.4byte	0x89b
	.4byte	0x816
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.byte	0x19
	.4byte	.LVL10
	.4byte	0x8a7
	.byte	0x17
	.4byte	.LVL11
	.4byte	0x8b3
	.4byte	0x832
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x17
	.4byte	.LVL12
	.4byte	0x8b3
	.4byte	0x845
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x17
	.4byte	.LVL13
	.4byte	0x8c0
	.4byte	0x859
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x54
	.byte	0
	.byte	0x17
	.4byte	.LVL17
	.4byte	0x89b
	.4byte	0x870
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.byte	0x1a
	.4byte	.LVL21
	.4byte	0x89b
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0
	.byte	0x5
	.byte	0x4
	.4byte	0x681
	.byte	0x5
	.byte	0x4
	.4byte	0xb4
	.byte	0x1b
	.4byte	.LASF165
	.4byte	.LASF166
	.byte	0xb
	.byte	0
	.byte	0x1c
	.4byte	.LASF156
	.4byte	.LASF156
	.byte	0x9
	.byte	0xc8
	.byte	0x5
	.byte	0x1c
	.4byte	.LASF157
	.4byte	.LASF157
	.byte	0xa
	.byte	0x9
	.byte	0x7
	.byte	0x1d
	.4byte	.LASF158
	.4byte	.LASF158
	.byte	0x5
	.2byte	0x1cd
	.byte	0xd
	.byte	0x1d
	.4byte	.LASF159
	.4byte	.LASF159
	.byte	0x5
	.2byte	0x19a
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
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x9
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
	.byte	0xc
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
	.byte	0xd
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xe
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
	.byte	0x3f
	.byte	0x19
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x12
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
	.byte	0x16
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
	.byte	0x17
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
	.byte	0x18
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x19
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1a
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1b
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
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL2
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL1
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL7
	.4byte	.LVL14
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL17
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL6
	.4byte	.LVL8
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL14
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x3
	.byte	0x79
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF156:
	.string	"printf"
.LASF76:
	.string	"deBurstWrapCmd"
.LASF33:
	.string	"blk64EraseCmd"
.LASF96:
	.string	"HBN_GPIO_INT_TRIGGER_SYNC_RISING_EDGE"
.LASF41:
	.string	"qpiFrDmyClk"
.LASF149:
	.string	"blog_info_t"
.LASF53:
	.string	"writeVregEnableCmd"
.LASF3:
	.string	"__uint8_t"
.LASF61:
	.string	"wrEnableReadRegLen"
.LASF44:
	.string	"fastReadDioCmd"
.LASF85:
	.string	"pdDelay"
.LASF57:
	.string	"wrEnableBit"
.LASF81:
	.string	"timeE32k"
.LASF28:
	.string	"sectorSize"
.LASF163:
	.string	"_blog_leve"
.LASF10:
	.string	"long long unsigned int"
.LASF42:
	.string	"fastReadDoCmd"
.LASF19:
	.string	"clkInvert"
.LASF17:
	.string	"cReadSupport"
.LASF154:
	.string	"_fsymf_info_hosalbl_hbn"
.LASF142:
	.string	"BLOG_LEVEL_ASSERT"
.LASF88:
	.string	"HBN_INT_GPIO7"
.LASF89:
	.string	"HBN_INT_GPIO8"
.LASF56:
	.string	"busyIndex"
.LASF68:
	.string	"enterQpi"
.LASF9:
	.string	"long long int"
.LASF0:
	.string	"signed char"
.LASF99:
	.string	"HBN_GPIO_INT_TRIGGER_ASYNC_FALLING_EDGE"
.LASF157:
	.string	"bl_flash_get_flashCfg"
.LASF24:
	.string	"jedecIdCmd"
.LASF27:
	.string	"qpiJedecIdCmdDmyClk"
.LASF72:
	.string	"burstWrapCmd"
.LASF106:
	.string	"HBN_LDO_LEVEL_0P70V"
.LASF119:
	.string	"HBN_LDO_LEVEL_1P35V"
.LASF135:
	.string	"active"
.LASF6:
	.string	"long int"
.LASF138:
	.string	"BLOG_LEVEL_DEBUG"
.LASF29:
	.string	"pageSize"
.LASF120:
	.string	"HBN_LDO_LEVEL_Type"
.LASF77:
	.string	"deBurstWrapCmdDmyClk"
.LASF87:
	.string	"SPI_Flash_Cfg_Type"
.LASF50:
	.string	"qpiFastReadQioCmd"
.LASF64:
	.string	"releasePowerDown"
.LASF165:
	.string	"memcpy"
.LASF20:
	.string	"resetEnCmd"
.LASF14:
	.string	"uint16_t"
.LASF132:
	.string	"ldoLevel"
.LASF105:
	.string	"HBN_LDO_LEVEL_0P65V"
.LASF69:
	.string	"exitQpi"
.LASF18:
	.string	"clkDelay"
.LASF46:
	.string	"fastReadQoCmd"
.LASF141:
	.string	"BLOG_LEVEL_ERROR"
.LASF7:
	.string	"__uint32_t"
.LASF74:
	.string	"burstWrapDataMode"
.LASF112:
	.string	"HBN_LDO_LEVEL_1P00V"
.LASF100:
	.string	"HBN_GPIO_INT_TRIGGER_ASYNC_RISING_EDGE"
.LASF11:
	.string	"unsigned int"
.LASF152:
	.string	"_fsymc_level_hosal"
.LASF79:
	.string	"deBurstWrapData"
.LASF104:
	.string	"HBN_LDO_LEVEL_0P60V"
.LASF21:
	.string	"resetCmd"
.LASF8:
	.string	"long unsigned int"
.LASF117:
	.string	"HBN_LDO_LEVEL_1P25V"
.LASF86:
	.string	"qeData"
.LASF39:
	.string	"frDmyClk"
.LASF148:
	.string	"name"
.LASF103:
	.string	"HBN_GPIO_INT_Trigger_Type"
.LASF147:
	.string	"level"
.LASF26:
	.string	"qpiJedecIdCmd"
.LASF5:
	.string	"short unsigned int"
.LASF35:
	.string	"pageProgramCmd"
.LASF60:
	.string	"wrEnableWriteRegLen"
.LASF32:
	.string	"blk32EraseCmd"
.LASF160:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
.LASF67:
	.string	"writeRegCmd"
.LASF166:
	.string	"__builtin_memcpy"
.LASF2:
	.string	"short int"
.LASF16:
	.string	"ioMode"
.LASF52:
	.string	"qpiPageProgramCmd"
.LASF37:
	.string	"qppAddrMode"
.LASF111:
	.string	"HBN_LDO_LEVEL_0P95V"
.LASF58:
	.string	"qeBit"
.LASF40:
	.string	"qpiFastReadCmd"
.LASF51:
	.string	"qpiFrQioDmyClk"
.LASF162:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/hosal"
.LASF145:
	.string	"_hbn_type"
.LASF128:
	.string	"gpioWakeupSrc"
.LASF23:
	.string	"resetCreadCmdSize"
.LASF63:
	.string	"qeReadRegLen"
.LASF65:
	.string	"busyReadRegLen"
.LASF118:
	.string	"HBN_LDO_LEVEL_1P30V"
.LASF80:
	.string	"timeEsector"
.LASF115:
	.string	"HBN_LDO_LEVEL_1P15V"
.LASF125:
	.string	"HBN_LEVEL_Type"
.LASF70:
	.string	"cReadMode"
.LASF155:
	.string	"time"
.LASF139:
	.string	"BLOG_LEVEL_INFO"
.LASF75:
	.string	"burstWrapData"
.LASF109:
	.string	"HBN_LDO_LEVEL_0P85V"
.LASF137:
	.string	"BLOG_LEVEL_ALL"
.LASF59:
	.string	"busyBit"
.LASF62:
	.string	"qeWriteRegLen"
.LASF151:
	.string	"_fsymc_info_hosal"
.LASF91:
	.string	"HBN_INT_PIR"
.LASF1:
	.string	"unsigned char"
.LASF55:
	.string	"qeIndex"
.LASF95:
	.string	"HBN_GPIO_INT_TRIGGER_SYNC_FALLING_EDGE"
.LASF93:
	.string	"HBN_INT_ACOMP0"
.LASF94:
	.string	"HBN_INT_ACOMP1"
.LASF136:
	.string	"hbn_type_t"
.LASF144:
	.string	"blog_level_t"
.LASF150:
	.string	"BLOG_HARD_DECLARE_DISABLE"
.LASF38:
	.string	"fastReadCmd"
.LASF90:
	.string	"HBN_INT_RTC"
.LASF116:
	.string	"HBN_LDO_LEVEL_1P20V"
.LASF146:
	.string	"_blog_info"
.LASF134:
	.string	"buflen"
.LASF34:
	.string	"writeEnableCmd"
.LASF49:
	.string	"frQioDmyClk"
.LASF43:
	.string	"frDoDmyClk"
.LASF113:
	.string	"HBN_LDO_LEVEL_1P05V"
.LASF97:
	.string	"HBN_GPIO_INT_TRIGGER_SYNC_LOW_LEVEL"
.LASF123:
	.string	"HBN_LEVEL_2"
.LASF36:
	.string	"qpageProgramCmd"
.LASF15:
	.string	"uint32_t"
.LASF153:
	.string	"_fsymf_level_hosalbl_hbn"
.LASF22:
	.string	"resetCreadCmd"
.LASF12:
	.string	"char"
.LASF54:
	.string	"wrEnableIndex"
.LASF45:
	.string	"frDioDmyClk"
.LASF133:
	.string	"HBN_APP_CFG_Type"
.LASF4:
	.string	"__uint16_t"
.LASF130:
	.string	"flashCfg"
.LASF143:
	.string	"BLOG_LEVEL_NEVER"
.LASF158:
	.string	"HBN_Clear_IRQ"
.LASF98:
	.string	"HBN_GPIO_INT_TRIGGER_SYNC_HIGH_LEVEL"
.LASF82:
	.string	"timeE64k"
.LASF25:
	.string	"jedecIdCmdDmyClk"
.LASF110:
	.string	"HBN_LDO_LEVEL_0P90V"
.LASF102:
	.string	"HBN_GPIO_INT_TRIGGER_ASYNC_HIGH_LEVEL"
.LASF127:
	.string	"sleepTime"
.LASF164:
	.string	"bl_hbn_enter"
.LASF71:
	.string	"cRExit"
.LASF107:
	.string	"HBN_LDO_LEVEL_0P75V"
.LASF161:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/bl602_hal/bl_hbn.c"
.LASF159:
	.string	"HBN_Mode_Enter"
.LASF121:
	.string	"HBN_LEVEL_0"
.LASF122:
	.string	"HBN_LEVEL_1"
.LASF48:
	.string	"fastReadQioCmd"
.LASF124:
	.string	"HBN_LEVEL_3"
.LASF30:
	.string	"chipEraseCmd"
.LASF84:
	.string	"timeCe"
.LASF78:
	.string	"deBurstWrapDataMode"
.LASF101:
	.string	"HBN_GPIO_INT_TRIGGER_ASYNC_LOW_LEVEL"
.LASF73:
	.string	"burstWrapCmdDmyClk"
.LASF114:
	.string	"HBN_LDO_LEVEL_1P10V"
.LASF13:
	.string	"uint8_t"
.LASF126:
	.string	"useXtal32k"
.LASF140:
	.string	"BLOG_LEVEL_WARN"
.LASF92:
	.string	"HBN_INT_BOR"
.LASF83:
	.string	"timePagePgm"
.LASF66:
	.string	"readRegCmd"
.LASF129:
	.string	"gpioTrigType"
.LASF31:
	.string	"sectorEraseCmd"
.LASF108:
	.string	"HBN_LDO_LEVEL_0P80V"
.LASF131:
	.string	"hbnLevel"
.LASF47:
	.string	"frQoDmyClk"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
