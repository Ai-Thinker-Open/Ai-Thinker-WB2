	.file	"bflb_hash.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.rodata.bflb_hash_init.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"unsupported type\r\n"
	.section	.text.bflb_hash_init,"ax",@progbits
	.align	1
	.globl	bflb_hash_init
	.type	bflb_hash_init, @function
bflb_hash_init:
.LFB8:
	.file 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/Common/cipher_suite/src/bflb_hash.c"
	.loc 1 28 1
	.cfi_startproc
.LVL0:
	.loc 1 29 5
	.loc 1 32 5
	.loc 1 28 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	s1,4(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 1, -4
	.loc 1 32 5
	li	a5,1
	.loc 1 28 1
	mv	s0,a0
	mv	s1,a1
	.loc 1 32 5
	beq	a1,a5,.L2
	li	a5,2
	beq	a1,a5,.L3
	.loc 1 35 10 is_stmt 1
.LVL1:
	.loc 1 36 10
	lui	a0,%hi(.LC0)
.LVL2:
	addi	a0,a0,%lo(.LC0)
	call	bflb_platform_printf
.LVL3:
	.loc 1 37 13
	.loc 1 57 5
	.loc 1 35 13 is_stmt 0
	li	a0,-1
.LVL4:
.L1:
	.loc 1 61 1
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
.LVL5:
	lw	s1,4(sp)
	.cfi_restore 9
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL6:
.L2:
	.cfi_restore_state
	.loc 1 39 13 is_stmt 1
	addi	a4,a0,64
	mv	a3,a0
	li	a2,1
.L7:
	.loc 1 43 13 is_stmt 0
	lui	a0,%hi(.LANCHOR0)
	addi	a0,a0,%lo(.LANCHOR0)
	li	a1,0
.LVL7:
	call	Sec_Eng_SHA256_Init
.LVL8:
	.loc 1 45 13 is_stmt 1
	.loc 1 57 5
	.loc 1 58 9
	.loc 1 58 26 is_stmt 0
	li	a0,0
	.loc 1 60 5 is_stmt 1
	.loc 1 58 26 is_stmt 0
	sb	s1,128(s0)
	.loc 1 60 12
	j	.L1
.LVL9:
.L3:
	.loc 1 43 13 is_stmt 1
	addi	a4,a0,64
	mv	a3,a0
	li	a2,0
	j	.L7
	.cfi_endproc
.LFE8:
	.size	bflb_hash_init, .-bflb_hash_init
	.section	.text.bflb_hash_start,"ax",@progbits
	.align	1
	.globl	bflb_hash_start
	.type	bflb_hash_start, @function
bflb_hash_start:
.LFB9:
	.loc 1 64 1
	.cfi_startproc
.LVL10:
	.loc 1 65 5
	.loc 1 69 5
	.loc 1 64 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 69 23
	lbu	a5,128(a0)
	.loc 1 69 5
	li	a4,2
	bgtu	a5,a4,.L9
	li	a0,0
.LVL11:
	bne	a5,zero,.L10
.LVL12:
.L8:
	.loc 1 93 1
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL13:
.L9:
	.cfi_restore_state
	.loc 1 69 5
	addi	a5,a5,-3
	andi	a5,a5,0xff
	li	a4,1
	bgtu	a5,a4,.L12
.LVL14:
.L14:
	.loc 1 75 13 is_stmt 1
	.loc 1 92 12 is_stmt 0
	li	a0,0
	.loc 1 75 13
	j	.L8
.L10:
	.loc 1 74 11 is_stmt 1
	call	Sec_Eng_SHA_Start
.LVL15:
	j	.L14
.LVL16:
.L12:
	.loc 1 84 13
	lui	a0,%hi(.LC0)
.LVL17:
	addi	a0,a0,%lo(.LC0)
	call	bflb_platform_printf
.LVL18:
	.loc 1 85 13
	.loc 1 85 20 is_stmt 0
	li	a0,-1
.LVL19:
	j	.L8
	.cfi_endproc
.LFE9:
	.size	bflb_hash_start, .-bflb_hash_start
	.section	.text.bflb_hash_update,"ax",@progbits
	.align	1
	.globl	bflb_hash_update
	.type	bflb_hash_update, @function
bflb_hash_update:
.LFB10:
	.loc 1 96 1 is_stmt 1
	.cfi_startproc
.LVL20:
	.loc 1 97 5
	.loc 1 99 5
	.loc 1 96 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 99 23
	lbu	a5,128(a0)
	.loc 1 99 5
	li	a4,2
	bgtu	a5,a4,.L16
	bne	a5,zero,.L17
.LVL21:
.L21:
	.loc 1 105 7 is_stmt 1
	.loc 1 123 12 is_stmt 0
	li	a0,0
.LVL22:
.L15:
	.loc 1 124 1
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL23:
.L16:
	.cfi_restore_state
	.loc 1 99 5
	addi	a5,a5,-3
	andi	a5,a5,0xff
	li	a4,1
	bleu	a5,a4,.L21
	.loc 1 114 13 is_stmt 1
	lui	a0,%hi(.LC0)
.LVL24:
	addi	a0,a0,%lo(.LC0)
	call	bflb_platform_printf
.LVL25:
	.loc 1 115 13
	.loc 1 115 20 is_stmt 0
	li	a0,-1
.LVL26:
	j	.L15
.LVL27:
.L17:
	.loc 1 104 7
	lui	a0,%hi(.LANCHOR0)
.LVL28:
	mv	a3,a2
	.loc 1 104 7 is_stmt 1
	addi	a0,a0,%lo(.LANCHOR0)
	mv	a2,a1
.LVL29:
	li	a1,0
.LVL30:
	call	Sec_Eng_SHA256_Update
.LVL31:
	j	.L21
	.cfi_endproc
.LFE10:
	.size	bflb_hash_update, .-bflb_hash_update
	.section	.text.bflb_hash_finish,"ax",@progbits
	.align	1
	.globl	bflb_hash_finish
	.type	bflb_hash_finish, @function
bflb_hash_finish:
.LFB11:
	.loc 1 127 1
	.cfi_startproc
.LVL32:
	.loc 1 128 5
	.loc 1 130 5
	.loc 1 127 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 130 23
	lbu	a5,128(a0)
	.loc 1 130 5
	li	a4,2
	bgtu	a5,a4,.L23
	bne	a5,zero,.L24
.LVL33:
.L28:
	.loc 1 136 10 is_stmt 1
	.loc 1 154 12 is_stmt 0
	li	a0,0
.LVL34:
.L22:
	.loc 1 155 1
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL35:
.L23:
	.cfi_restore_state
	.loc 1 130 5
	addi	a5,a5,-3
	andi	a5,a5,0xff
	li	a4,1
	bleu	a5,a4,.L28
	.loc 1 145 13 is_stmt 1
	lui	a0,%hi(.LC0)
.LVL36:
	addi	a0,a0,%lo(.LC0)
	call	bflb_platform_printf
.LVL37:
	.loc 1 146 13
	.loc 1 146 20 is_stmt 0
	li	a0,-1
.LVL38:
	j	.L22
.LVL39:
.L24:
	.loc 1 135 10
	lui	a0,%hi(.LANCHOR0)
.LVL40:
	mv	a2,a1
	.loc 1 135 10 is_stmt 1
	addi	a0,a0,%lo(.LANCHOR0)
	li	a1,0
.LVL41:
	call	Sec_Eng_SHA256_Finish
.LVL42:
	j	.L28
	.cfi_endproc
.LFE11:
	.size	bflb_hash_finish, .-bflb_hash_finish
	.section	.text.bflb_hash_deinit,"ax",@progbits
	.align	1
	.globl	bflb_hash_deinit
	.type	bflb_hash_deinit, @function
bflb_hash_deinit:
.LFB12:
	.loc 1 158 1
	.cfi_startproc
.LVL43:
	.loc 1 159 5
	.loc 1 158 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 159 5
	lbu	a4,128(a0)
	li	a5,4
	bleu	a4,a5,.L30
	.loc 1 172 13 is_stmt 1
	lui	a0,%hi(.LC0)
.LVL44:
	addi	a0,a0,%lo(.LC0)
	call	bflb_platform_printf
.LVL45:
	.loc 1 173 13
	.loc 1 173 20 is_stmt 0
	li	a0,-1
.L29:
	.loc 1 179 1
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL46:
.L30:
	.cfi_restore_state
	.loc 1 176 5 is_stmt 1
	li	a2,132
	li	a1,0
	call	memset
.LVL47:
	.loc 1 178 5
	.loc 1 178 12 is_stmt 0
	li	a0,0
	j	.L29
	.cfi_endproc
.LFE12:
	.size	bflb_hash_deinit, .-bflb_hash_deinit
	.section	.bss.shaCtx,"aw",@nobits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	shaCtx, @object
	.size	shaCtx, 20
shaCtx:
	.zero	20
	.text
.Letext0:
	.file 2 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 3 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 4 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_sec_eng.h"
	.file 5 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/Common/cipher_suite/inc/bflb_hash_port.h"
	.file 6 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/Common/cipher_suite/inc/bflb_hash.h"
	.file 7 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/Common/platform_print/bflb_platform.h"
	.file 8 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x47f
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF44
	.byte	0xc
	.4byte	.LASF45
	.4byte	.LASF46
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.byte	0x3
	.4byte	.LASF4
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
	.byte	0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0x4d
	.byte	0x12
	.4byte	0x59
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
	.byte	0x5
	.4byte	0x96
	.byte	0x3
	.4byte	.LASF14
	.byte	0x3
	.byte	0x2c
	.byte	0x13
	.4byte	0x4d
	.byte	0x3
	.4byte	.LASF15
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x60
	.byte	0x6
	.byte	0x7
	.byte	0x4
	.4byte	0x88
	.byte	0x4
	.byte	0x40
	.byte	0xe
	.4byte	0xd4
	.byte	0x7
	.4byte	.LASF16
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x7
	.byte	0x4
	.4byte	0x88
	.byte	0x4
	.byte	0x47
	.byte	0xe
	.4byte	0xfb
	.byte	0x7
	.4byte	.LASF17
	.byte	0
	.byte	0x7
	.4byte	.LASF18
	.byte	0x1
	.byte	0x7
	.4byte	.LASF19
	.byte	0x2
	.byte	0x7
	.4byte	.LASF20
	.byte	0x3
	.byte	0
	.byte	0x8
	.byte	0x14
	.byte	0x4
	.byte	0xc4
	.byte	0x9
	.4byte	0x139
	.byte	0x9
	.4byte	.LASF21
	.byte	0x4
	.byte	0xc5
	.byte	0xe
	.4byte	0x139
	.byte	0
	.byte	0x9
	.4byte	.LASF22
	.byte	0x4
	.byte	0xc6
	.byte	0xf
	.4byte	0x149
	.byte	0x8
	.byte	0x9
	.4byte	.LASF23
	.byte	0x4
	.byte	0xc7
	.byte	0xf
	.4byte	0x149
	.byte	0xc
	.byte	0x9
	.4byte	.LASF24
	.byte	0x4
	.byte	0xc8
	.byte	0xd
	.4byte	0x96
	.byte	0x10
	.byte	0
	.byte	0xa
	.4byte	0xb3
	.4byte	0x149
	.byte	0xb
	.4byte	0x88
	.byte	0x1
	.byte	0
	.byte	0xc
	.byte	0x4
	.4byte	0xb3
	.byte	0x3
	.4byte	.LASF25
	.byte	0x4
	.byte	0xc9
	.byte	0x2
	.4byte	0xfb
	.byte	0xd
	.4byte	.LASF47
	.byte	0x40
	.byte	0x5
	.byte	0x11
	.byte	0xf
	.4byte	0x175
	.byte	0xe
	.4byte	.LASF48
	.byte	0x5
	.byte	0x18
	.byte	0xe
	.4byte	0x175
	.byte	0
	.byte	0xa
	.4byte	0xb3
	.4byte	0x185
	.byte	0xb
	.4byte	0x88
	.byte	0xf
	.byte	0
	.byte	0x3
	.4byte	.LASF26
	.byte	0x5
	.byte	0x1a
	.byte	0x2
	.4byte	0x15b
	.byte	0xf
	.4byte	.LASF49
	.byte	0x84
	.byte	0x6
	.byte	0x19
	.byte	0x10
	.4byte	0x1c6
	.byte	0x9
	.4byte	.LASF27
	.byte	0x6
	.byte	0x1b
	.byte	0x15
	.4byte	0x185
	.byte	0
	.byte	0x9
	.4byte	.LASF28
	.byte	0x6
	.byte	0x1d
	.byte	0xe
	.4byte	0x175
	.byte	0x40
	.byte	0x9
	.4byte	.LASF29
	.byte	0x6
	.byte	0x1f
	.byte	0xd
	.4byte	0x96
	.byte	0x80
	.byte	0
	.byte	0x3
	.4byte	.LASF30
	.byte	0x6
	.byte	0x20
	.byte	0x2
	.4byte	0x191
	.byte	0x10
	.4byte	.LASF34
	.byte	0x1
	.byte	0x1a
	.byte	0x1b
	.4byte	0x14f
	.byte	0x5
	.byte	0x3
	.4byte	shaCtx
	.byte	0x11
	.4byte	.LASF31
	.byte	0x1
	.byte	0x9d
	.byte	0x9
	.4byte	0xa7
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x1
	.byte	0x9c
	.4byte	0x23b
	.byte	0x12
	.4byte	.LASF33
	.byte	0x1
	.byte	0x9d
	.byte	0x2e
	.4byte	0x23b
	.4byte	.LLST12
	.byte	0x13
	.4byte	.LVL45
	.4byte	0x436
	.4byte	0x225
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0x15
	.4byte	.LVL47
	.4byte	0x442
	.byte	0x14
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x14
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x84
	.byte	0
	.byte	0
	.byte	0xc
	.byte	0x4
	.4byte	0x1c6
	.byte	0x11
	.4byte	.LASF32
	.byte	0x1
	.byte	0x7e
	.byte	0x9
	.4byte	0xa7
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x1
	.byte	0x9c
	.4byte	0x2c2
	.byte	0x12
	.4byte	.LASF33
	.byte	0x1
	.byte	0x7e
	.byte	0x2e
	.4byte	0x23b
	.4byte	.LLST9
	.byte	0x16
	.string	"out"
	.byte	0x1
	.byte	0x7e
	.byte	0x43
	.4byte	0x2c2
	.4byte	.LLST10
	.byte	0x17
	.string	"ret"
	.byte	0x1
	.byte	0x80
	.byte	0xd
	.4byte	0xa7
	.4byte	.LLST11
	.byte	0x13
	.4byte	.LVL37
	.4byte	0x436
	.4byte	0x2a2
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0x15
	.4byte	.LVL42
	.4byte	0x44e
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0x14
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x14
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0
	.byte	0
	.byte	0xc
	.byte	0x4
	.4byte	0x96
	.byte	0x11
	.4byte	.LASF35
	.byte	0x1
	.byte	0x5f
	.byte	0x9
	.4byte	0xa7
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x1
	.byte	0x9c
	.4byte	0x35f
	.byte	0x12
	.4byte	.LASF33
	.byte	0x1
	.byte	0x5f
	.byte	0x2e
	.4byte	0x23b
	.4byte	.LLST5
	.byte	0x16
	.string	"in"
	.byte	0x1
	.byte	0x5f
	.byte	0x49
	.4byte	0x35f
	.4byte	.LLST6
	.byte	0x16
	.string	"len"
	.byte	0x1
	.byte	0x5f
	.byte	0x55
	.4byte	0xb3
	.4byte	.LLST7
	.byte	0x17
	.string	"ret"
	.byte	0x1
	.byte	0x61
	.byte	0xd
	.4byte	0xa7
	.4byte	.LLST8
	.byte	0x13
	.4byte	.LVL25
	.4byte	0x436
	.4byte	0x338
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0x15
	.4byte	.LVL31
	.4byte	0x45b
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0x14
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x14
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x14
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0
	.byte	0
	.byte	0xc
	.byte	0x4
	.4byte	0xa2
	.byte	0x11
	.4byte	.LASF36
	.byte	0x1
	.byte	0x3f
	.byte	0x9
	.4byte	0xa7
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0x3bc
	.byte	0x12
	.4byte	.LASF33
	.byte	0x1
	.byte	0x3f
	.byte	0x2d
	.4byte	0x23b
	.4byte	.LLST3
	.byte	0x17
	.string	"ret"
	.byte	0x1
	.byte	0x41
	.byte	0xd
	.4byte	0xa7
	.4byte	.LLST4
	.byte	0x18
	.4byte	.LVL15
	.4byte	0x468
	.byte	0x15
	.4byte	.LVL18
	.4byte	0x436
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0
	.byte	0x11
	.4byte	.LASF37
	.byte	0x1
	.byte	0x1b
	.byte	0x9
	.4byte	0xa7
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0x436
	.byte	0x12
	.4byte	.LASF33
	.byte	0x1
	.byte	0x1b
	.byte	0x2c
	.4byte	0x23b
	.4byte	.LLST0
	.byte	0x12
	.4byte	.LASF29
	.byte	0x1
	.byte	0x1b
	.byte	0x40
	.4byte	0x96
	.4byte	.LLST1
	.byte	0x17
	.string	"ret"
	.byte	0x1
	.byte	0x1d
	.byte	0xd
	.4byte	0xa7
	.4byte	.LLST2
	.byte	0x13
	.4byte	.LVL3
	.4byte	0x436
	.4byte	0x41d
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0x15
	.4byte	.LVL8
	.4byte	0x475
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0x14
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x19
	.4byte	.LASF38
	.4byte	.LASF38
	.byte	0x7
	.byte	0x18
	.byte	0x6
	.byte	0x19
	.4byte	.LASF39
	.4byte	.LASF39
	.byte	0x8
	.byte	0x21
	.byte	0x8
	.byte	0x1a
	.4byte	.LASF40
	.4byte	.LASF40
	.byte	0x4
	.2byte	0x1b4
	.byte	0xd
	.byte	0x1a
	.4byte	.LASF41
	.4byte	.LASF41
	.byte	0x4
	.2byte	0x1b2
	.byte	0xd
	.byte	0x1a
	.4byte	.LASF42
	.4byte	.LASF42
	.byte	0x4
	.2byte	0x1b1
	.byte	0x6
	.byte	0x1a
	.4byte	.LASF43
	.4byte	.LASF43
	.byte	0x4
	.2byte	0x1ae
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
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x6
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
	.byte	0x7
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x8
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
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xb
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xc
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xd
	.byte	0x17
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
	.byte	0xe
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
	.byte	0
	.byte	0
	.byte	0xf
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
	.byte	0x12
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
	.byte	0x13
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
	.byte	0x14
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
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
	.byte	0x1a
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
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL44
	.4byte	.LVL46
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LVL47-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL47-1
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL33
	.4byte	.LVL35
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL36
	.4byte	.LVL39
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL40
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL33
	.4byte	.LVL35
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LVL37-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL37-1
	.4byte	.LVL39
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL39
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL41
	.4byte	.LVL42-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL42-1
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL32
	.4byte	.LVL34
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LVL38
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL39
	.4byte	.LFE11
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL21
	.4byte	.LVL23
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL24
	.4byte	.LVL27
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL28
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL21
	.4byte	.LVL23
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LVL25-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL25-1
	.4byte	.LVL27
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL30
	.4byte	.LVL31-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL31-1
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL21
	.4byte	.LVL23
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LVL25-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL25-1
	.4byte	.LVL27
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL29
	.4byte	.LVL31-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL31-1
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL20
	.4byte	.LVL22
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LVL26
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LFE10
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL11
	.4byte	.LVL13
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL14
	.4byte	.LVL16
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL17
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL10
	.4byte	.LVL12
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL19
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL2
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL3-1
	.4byte	.LVL6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL7
	.4byte	.LVL9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL1
	.4byte	.LVL4
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LFE8
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
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
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF26:
	.string	"bflb_hash_ctx_t"
.LASF4:
	.string	"__uint8_t"
.LASF23:
	.string	"shaPadding"
.LASF5:
	.string	"__int32_t"
.LASF45:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/Common/cipher_suite/src/bflb_hash.c"
.LASF11:
	.string	"unsigned int"
.LASF41:
	.string	"Sec_Eng_SHA256_Update"
.LASF42:
	.string	"Sec_Eng_SHA_Start"
.LASF38:
	.string	"bflb_platform_printf"
.LASF1:
	.string	"unsigned char"
.LASF25:
	.string	"SEC_Eng_SHA256_Ctx"
.LASF33:
	.string	"hash_handle"
.LASF8:
	.string	"long unsigned int"
.LASF3:
	.string	"short unsigned int"
.LASF28:
	.string	"sha_padding"
.LASF43:
	.string	"Sec_Eng_SHA256_Init"
.LASF15:
	.string	"uint32_t"
.LASF39:
	.string	"memset"
.LASF16:
	.string	"SEC_ENG_SHA_ID0"
.LASF48:
	.string	"sha_buf"
.LASF7:
	.string	"__uint32_t"
.LASF17:
	.string	"SEC_ENG_SHA256"
.LASF40:
	.string	"Sec_Eng_SHA256_Finish"
.LASF30:
	.string	"bflb_hash_handle_t"
.LASF31:
	.string	"bflb_hash_deinit"
.LASF12:
	.string	"char"
.LASF13:
	.string	"uint8_t"
.LASF35:
	.string	"bflb_hash_update"
.LASF14:
	.string	"int32_t"
.LASF47:
	.string	"tag_bflb_hash_ctx_t"
.LASF9:
	.string	"long long int"
.LASF44:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
.LASF24:
	.string	"shaFeed"
.LASF46:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/bl602_std"
.LASF32:
	.string	"bflb_hash_finish"
.LASF27:
	.string	"hash_ctx"
.LASF29:
	.string	"type"
.LASF2:
	.string	"short int"
.LASF34:
	.string	"shaCtx"
.LASF20:
	.string	"SEC_ENG_SHA1_RSVD"
.LASF22:
	.string	"shaBuf"
.LASF21:
	.string	"total"
.LASF6:
	.string	"long int"
.LASF36:
	.string	"bflb_hash_start"
.LASF0:
	.string	"signed char"
.LASF18:
	.string	"SEC_ENG_SHA224"
.LASF37:
	.string	"bflb_hash_init"
.LASF10:
	.string	"long long unsigned int"
.LASF19:
	.string	"SEC_ENG_SHA1"
.LASF49:
	.string	"tag_bflb_hash_handle_t"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
