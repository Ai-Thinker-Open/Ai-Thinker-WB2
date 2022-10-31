	.file	"utils_hexdump.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.rodata.utils_hexdump.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"0x%06x: "
	.align	2
.LC1:
	.string	"%02x "
	.align	2
.LC2:
	.string	"   "
	.align	2
.LC3:
	.string	"\r\n"
	.section	.text.utils_hexdump,"ax",@progbits
	.align	1
	.globl	utils_hexdump
	.type	utils_hexdump, @function
utils_hexdump:
.LFB4:
	.file 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/utils/src/utils_hexdump.c"
	.loc 1 13 1
	.cfi_startproc
.LVL0:
	.loc 1 14 5
	.loc 1 16 5
	.loc 1 13 1 is_stmt 0
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	s1,52(sp)
	sw	s2,48(sp)
	sw	s3,44(sp)
	sw	ra,60(sp)
	sw	s0,56(sp)
	sw	s4,40(sp)
	sw	s5,36(sp)
	sw	s6,32(sp)
	sw	s7,28(sp)
	sw	s8,24(sp)
	sw	s9,20(sp)
	sw	s10,16(sp)
	sw	s11,12(sp)
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 23, -36
	.cfi_offset 24, -40
	.cfi_offset 25, -44
	.cfi_offset 26, -48
	.cfi_offset 27, -52
	.loc 1 16 33
	andi	a5,a1,15
	.loc 1 13 1
	mv	s3,a0
	mv	s2,a1
	li	s1,0
	.loc 1 16 25
	beq	a5,zero,.L3
	.loc 1 16 57
	li	s1,16
	sub	s1,s1,a5
.L3:
	.loc 1 36 29
	lui	s4,%hi(_ctype_+1)
	.loc 1 16 25
	add	s1,s1,s2
	.loc 1 16 12
	li	s0,0
	.loc 1 19 13
	lui	s6,%hi(.LC0)
	.loc 1 27 13
	lui	s7,%hi(.LC2)
	.loc 1 24 13
	lui	s8,%hi(.LC1)
	.loc 1 31 12
	li	s9,15
	.loc 1 36 29
	addi	s4,s4,%lo(_ctype_+1)
	.loc 1 44 13
	lui	s10,%hi(.LC3)
.LVL1:
.L4:
	.loc 1 16 17 is_stmt 1 discriminator 1
	.loc 1 16 5 is_stmt 0 discriminator 1
	bne	s1,s0,.L16
	.loc 1 47 1
	lw	ra,60(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
.LVL2:
	lw	s1,52(sp)
	.cfi_restore 9
	lw	s2,48(sp)
	.cfi_restore 18
.LVL3:
	lw	s3,44(sp)
	.cfi_restore 19
.LVL4:
	lw	s4,40(sp)
	.cfi_restore 20
	lw	s5,36(sp)
	.cfi_restore 21
	lw	s6,32(sp)
	.cfi_restore 22
	lw	s7,28(sp)
	.cfi_restore 23
	lw	s8,24(sp)
	.cfi_restore 24
	lw	s9,20(sp)
	.cfi_restore 25
	lw	s10,16(sp)
	.cfi_restore 26
	lw	s11,12(sp)
	.cfi_restore 27
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
.LVL5:
.L16:
	.cfi_restore_state
	.loc 1 18 9 is_stmt 1
	.loc 1 18 15 is_stmt 0
	andi	s11,s0,15
	.loc 1 18 12
	bne	s11,zero,.L5
	.loc 1 19 13 is_stmt 1
	mv	a1,s0
	addi	a0,s6,%lo(.LC0)
	call	printf
.LVL6:
.L5:
	.loc 1 23 9
	.loc 1 23 12 is_stmt 0
	bgeu	s0,s2,.L6
	.loc 1 24 13 is_stmt 1
	.loc 1 24 48 is_stmt 0
	add	a5,s3,s0
	.loc 1 24 13
	lbu	a1,0(a5)
	addi	a0,s8,%lo(.LC1)
	call	printf
.LVL7:
.L7:
	.loc 1 31 9 is_stmt 1
	addi	s5,s0,1
	.loc 1 31 12 is_stmt 0
	bne	s11,s9,.L8
	.loc 1 32 13 is_stmt 1
	.loc 1 32 20 is_stmt 0
	addi	s11,s0,-15
.LVL8:
	li	a5,17
	bleu	s11,s5,.L10
	li	a5,1
.L10:
	addi	s0,s0,-16
.LVL9:
	add	s0,a5,s0
.LVL10:
.L11:
	.loc 1 32 36 is_stmt 1 discriminator 1
	.loc 1 32 13 is_stmt 0 discriminator 1
	bne	s11,s0,.L15
	.loc 1 44 13 is_stmt 1
	addi	a0,s10,%lo(.LC3)
	call	puts
.LVL11:
.L8:
	.loc 1 16 63 discriminator 2
	.loc 1 16 64 is_stmt 0 discriminator 2
	mv	s0,s5
.LVL12:
	j	.L4
.LVL13:
.L6:
	.loc 1 27 13 is_stmt 1
	addi	a0,s7,%lo(.LC2)
	call	printf
.LVL14:
	j	.L7
.LVL15:
.L15:
	.loc 1 33 17
	.loc 1 35 21 is_stmt 0
	li	a0,32
	.loc 1 33 20
	bgeu	s11,s2,.L20
	.loc 1 36 24 is_stmt 1
	.loc 1 36 43 is_stmt 0
	add	a5,s3,s11
	lbu	a0,0(a5)
	.loc 1 36 29
	add	a5,a0,s4
	.loc 1 36 26
	lbu	a5,0(a5)
	andi	a5,a5,151
	beq	a5,zero,.L14
.L20:
	.loc 1 41 21
	call	bl_putchar
.LVL16:
	.loc 1 32 44 is_stmt 1
	.loc 1 32 45 is_stmt 0
	addi	s11,s11,1
.LVL17:
	j	.L11
.L14:
	.loc 1 41 21 is_stmt 1
	li	a0,46
	j	.L20
	.cfi_endproc
.LFE4:
	.size	utils_hexdump, .-utils_hexdump
	.text
.Letext0:
	.file 2 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h"
	.file 3 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/ctype.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x174
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF13
	.byte	0xc
	.4byte	.LASF14
	.4byte	.LASF15
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
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
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF5
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF6
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF7
	.byte	0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.byte	0x4
	.byte	0x4
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF9
	.byte	0x5
	.4byte	0x6d
	.byte	0x6
	.4byte	0x74
	.4byte	0x84
	.byte	0x7
	.byte	0
	.byte	0x5
	.4byte	0x79
	.byte	0x8
	.4byte	.LASF16
	.byte	0x3
	.byte	0x46
	.byte	0x13
	.4byte	0x84
	.byte	0x9
	.4byte	.LASF17
	.byte	0x1
	.byte	0xc
	.byte	0x6
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0x153
	.byte	0xa
	.string	"mem"
	.byte	0x1
	.byte	0xc
	.byte	0x1a
	.4byte	0x6b
	.4byte	.LLST0
	.byte	0xa
	.string	"len"
	.byte	0x1
	.byte	0xc
	.byte	0x2c
	.4byte	0x64
	.4byte	.LLST1
	.byte	0xb
	.string	"i"
	.byte	0x1
	.byte	0xe
	.byte	0x12
	.4byte	0x64
	.4byte	.LLST2
	.byte	0xb
	.string	"j"
	.byte	0x1
	.byte	0xe
	.byte	0x15
	.4byte	0x64
	.4byte	.LLST3
	.byte	0xc
	.4byte	.LVL6
	.4byte	0x153
	.4byte	0x104
	.byte	0xd
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0xd
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0xc
	.4byte	.LVL7
	.4byte	0x153
	.4byte	0x11b
	.byte	0xd
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.byte	0xc
	.4byte	.LVL11
	.4byte	0x15f
	.4byte	0x132
	.byte	0xd
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0xc
	.4byte	.LVL14
	.4byte	0x153
	.4byte	0x149
	.byte	0xd
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0xe
	.4byte	.LVL16
	.4byte	0x16b
	.byte	0
	.byte	0xf
	.4byte	.LASF10
	.4byte	.LASF10
	.byte	0x2
	.byte	0xc8
	.byte	0x5
	.byte	0xf
	.4byte	.LASF11
	.4byte	.LASF11
	.byte	0x2
	.byte	0xdd
	.byte	0x5
	.byte	0xf
	.4byte	.LASF12
	.4byte	.LASF12
	.byte	0x1
	.byte	0xa
	.byte	0xc
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
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
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
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x21
	.byte	0
	.byte	0
	.byte	0
	.byte	0x8
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
	.byte	0x3c
	.byte	0x19
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
	.byte	0xb
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
	.byte	0xc
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
	.byte	0xd
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0xe
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xf
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
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL3
	.4byte	.LVL5
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL5
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x3
	.byte	0x8b
	.byte	0xf
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL12
	.2byte	0x3
	.byte	0x85
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL13
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL15
	.4byte	.LFE4
	.2byte	0x3
	.byte	0x85
	.byte	0x7f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL8
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL15
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x6b
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
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF6:
	.string	"long long int"
.LASF11:
	.string	"puts"
.LASF8:
	.string	"unsigned int"
.LASF14:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/utils/src/utils_hexdump.c"
.LASF17:
	.string	"utils_hexdump"
.LASF12:
	.string	"bl_putchar"
.LASF15:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/utils"
.LASF5:
	.string	"long unsigned int"
.LASF7:
	.string	"long long unsigned int"
.LASF1:
	.string	"unsigned char"
.LASF9:
	.string	"char"
.LASF4:
	.string	"long int"
.LASF3:
	.string	"short unsigned int"
.LASF10:
	.string	"printf"
.LASF16:
	.string	"_ctype_"
.LASF2:
	.string	"short int"
.LASF13:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
.LASF0:
	.string	"signed char"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
