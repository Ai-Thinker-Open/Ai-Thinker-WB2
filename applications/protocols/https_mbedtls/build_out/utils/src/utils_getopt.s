	.file	"utils_getopt.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.utils_getopt_init,"ax",@progbits
	.align	1
	.globl	utils_getopt_init
	.type	utils_getopt_init, @function
utils_getopt_init:
.LFB3:
	.file 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/utils/src/utils_getopt.c"
	.loc 1 34 1
	.cfi_startproc
.LVL0:
	.loc 1 35 5
	.loc 1 35 8 is_stmt 0
	beq	a0,zero,.L3
	.loc 1 38 5 is_stmt 1
	.loc 1 39 17 is_stmt 0
	li	a5,1
	.loc 1 38 17
	sw	zero,0(a0)
	.loc 1 39 5 is_stmt 1
	.loc 1 39 17 is_stmt 0
	sw	a5,4(a0)
	.loc 1 40 5 is_stmt 1
	.loc 1 40 17 is_stmt 0
	sw	a1,8(a0)
	.loc 1 41 5 is_stmt 1
	.loc 1 41 17 is_stmt 0
	sw	zero,12(a0)
	.loc 1 42 5 is_stmt 1
	.loc 1 42 19 is_stmt 0
	sw	zero,16(a0)
	.loc 1 43 5 is_stmt 1
	.loc 1 43 12 is_stmt 0
	li	a0,0
.LVL1:
	ret
.LVL2:
.L3:
	.loc 1 36 16
	li	a0,-1
.LVL3:
	.loc 1 44 1
	ret
	.cfi_endproc
.LFE3:
	.size	utils_getopt_init, .-utils_getopt_init
	.section	.rodata.utils_getopt.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"%s: unrecognized option: %c\r\n"
	.align	2
.LC1:
	.string	"%s: option requires an argument: %c\r\n"
	.section	.text.utils_getopt,"ax",@progbits
	.align	1
	.globl	utils_getopt
	.type	utils_getopt, @function
utils_getopt:
.LFB4:
	.loc 1 49 1 is_stmt 1
	.cfi_startproc
.LVL4:
	.loc 1 50 5
	.loc 1 51 5
	.loc 1 52 5
	.loc 1 54 5
	.loc 1 54 8 is_stmt 0
	beq	a0,zero,.L21
	.loc 1 58 12
	lw	a4,4(a0)
	mv	a5,a0
	.loc 1 58 5 is_stmt 1
	.loc 1 55 16 is_stmt 0
	li	a0,-1
.LVL5:
	.loc 1 58 8
	bge	a4,a1,.L39
	mv	a6,a2
	.loc 1 58 37 discriminator 1
	slli	a2,a4,2
.LVL6:
	add	a2,a6,a2
	lw	a7,0(a2)
	.loc 1 58 29 discriminator 1
	beq	a7,zero,.L39
	.loc 1 61 5 is_stmt 1
	.loc 1 61 8 is_stmt 0
	lbu	t1,0(a7)
	li	t3,45
	beq	t1,t3,.L6
	.loc 1 62 9 is_stmt 1
	.loc 1 62 12 is_stmt 0
	lbu	a3,0(a3)
.LVL7:
	bne	a3,t3,.L39
	.loc 1 63 13 is_stmt 1
	.loc 1 63 43 is_stmt 0
	addi	a4,a4,1
	sw	a4,4(a5)
	.loc 1 63 31
	lw	a4,0(a2)
	.loc 1 64 20
	li	a0,1
	.loc 1 63 25
	sw	a4,0(a5)
	.loc 1 64 13 is_stmt 1
	.loc 1 64 20 is_stmt 0
	ret
.LVL8:
.L6:
	.loc 1 69 5 is_stmt 1
	.loc 1 69 27 is_stmt 0
	lbu	t3,1(a7)
	.loc 1 55 16
	li	a0,-1
	.loc 1 69 8
	beq	t3,zero,.L39
	.loc 1 72 5 is_stmt 1
	.loc 1 72 8 is_stmt 0
	bne	t3,t1,.L7
	.loc 1 72 37 discriminator 1
	lbu	a0,2(a7)
	bne	a0,zero,.L7
	.loc 1 73 9 is_stmt 1
	.loc 1 73 27 is_stmt 0
	addi	a4,a4,1
	sw	a4,4(a5)
.LVL9:
.L21:
	.loc 1 55 16
	li	a0,-1
	ret
.LVL10:
.L7:
	.loc 1 75 5 is_stmt 1
	.loc 1 49 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 75 8
	lw	a0,16(a5)
	bne	a0,zero,.L8
	.loc 1 75 25 is_stmt 1 discriminator 1
	.loc 1 75 38 is_stmt 0 discriminator 1
	li	a0,1
	sw	a0,16(a5)
.L8:
	.loc 1 76 5 is_stmt 1
	.loc 1 76 30 is_stmt 0
	lw	t3,16(a5)
	.loc 1 76 26
	lw	a7,0(a2)
	add	a7,a7,t3
	.loc 1 76 7
	lbu	a0,0(a7)
.LVL11:
	.loc 1 77 5 is_stmt 1
	.loc 1 78 5
	.loc 1 78 22 is_stmt 0
	snez	t1,a0
	.loc 1 78 19
	add	t1,t1,t3
	sw	t1,16(a5)
	.loc 1 80 5 is_stmt 1
	.loc 1 80 27 is_stmt 0
	lw	a2,0(a2)
	add	t1,a2,t1
	.loc 1 80 8
	lbu	a2,0(t1)
	bne	a2,zero,.L9
	.loc 1 81 9 is_stmt 1
	.loc 1 81 20 is_stmt 0
	addi	a4,a4,1
	sw	a4,4(a5)
	.loc 1 82 9 is_stmt 1
	.loc 1 82 23 is_stmt 0
	sw	zero,16(a5)
.L9:
	.loc 1 85 5 is_stmt 1
	.loc 1 85 29 is_stmt 0
	lbu	a4,0(a3)
	addi	a4,a4,-43
	andi	a4,a4,253
	bne	a4,zero,.L10
	.loc 1 86 9 is_stmt 1
	.loc 1 86 18 is_stmt 0
	addi	a3,a3,1
.LVL12:
.L10:
	.loc 1 88 5 is_stmt 1
	.loc 1 49 1 is_stmt 0
	li	a2,0
.LVL13:
.L12:
	.loc 1 89 5 is_stmt 1 discriminator 2
	.loc 1 89 8 discriminator 2
	.loc 1 89 10 is_stmt 0 discriminator 2
	add	a4,a3,a2
	lbu	t1,0(a4)
.LVL14:
	.loc 1 89 34 is_stmt 1 discriminator 2
	.loc 1 89 10 is_stmt 0 discriminator 2
	addi	a2,a2,1
.LVL15:
	.loc 1 89 5 discriminator 2
	beq	t1,zero,.L11
	.loc 1 89 37 discriminator 1
	bne	a0,t1,.L12
	.loc 1 91 16 discriminator 1
	li	t1,58
.LVL16:
	bne	a0,t1,.L15
.L14:
	.loc 1 92 9 is_stmt 1
	.loc 1 92 21 is_stmt 0
	sw	a0,12(a5)
.LVL17:
	.loc 1 93 9 is_stmt 1
	.loc 1 93 12 is_stmt 0
	lbu	a3,0(a3)
.LVL18:
	li	a4,58
	bne	a3,a4,.L16
.LVL19:
.L41:
	.loc 1 109 20
	li	a0,63
.L4:
	.loc 1 113 1
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL20:
.L11:
	.cfi_restore_state
	.loc 1 91 5 is_stmt 1
	.loc 1 91 8 is_stmt 0
	bne	a0,zero,.L14
.LVL21:
.L15:
	.loc 1 97 5 is_stmt 1
	.loc 1 97 18 is_stmt 0
	add	a2,a3,a2
.LVL22:
	.loc 1 97 8
	lbu	t1,0(a2)
	li	a2,58
	bne	t1,a2,.L4
	.loc 1 98 9 is_stmt 1
	.loc 1 98 21 is_stmt 0
	sw	zero,0(a5)
.LVL23:
	.loc 1 99 9 is_stmt 1
	.loc 1 99 12 is_stmt 0
	lbu	a4,2(a4)
	.loc 1 99 41
	lw	a2,16(a5)
	.loc 1 99 12
	bne	a4,t1,.L19
	.loc 1 99 35 discriminator 1
	beq	a2,zero,.L20
.L19:
	.loc 1 100 13 is_stmt 1
	.loc 1 100 35 is_stmt 0
	lw	a4,4(a5)
	.loc 1 100 43
	addi	t1,a4,1
	.loc 1 100 31
	slli	a4,a4,2
	.loc 1 100 43
	sw	t1,4(a5)
	.loc 1 100 31
	add	a4,a6,a4
	.loc 1 100 47
	lw	a4,0(a4)
	.loc 1 101 27
	sw	zero,16(a5)
	.loc 1 100 47
	add	a4,a4,a2
	.loc 1 100 25
	sw	a4,0(a5)
	.loc 1 101 13 is_stmt 1
.L20:
	.loc 1 103 9
	.loc 1 103 12 is_stmt 0
	lw	a4,4(a5)
	ble	a4,a1,.L4
	.loc 1 104 13 is_stmt 1
	.loc 1 92 21 is_stmt 0
	sw	a0,12(a5)
	.loc 1 105 13 is_stmt 1
	.loc 1 105 16 is_stmt 0
	lbu	a3,0(a3)
.LVL24:
	li	a4,58
	.loc 1 105 45
	li	a0,58
.LVL25:
	.loc 1 105 16
	beq	a3,a4,.L4
	.loc 1 106 13 is_stmt 1
	.loc 1 106 16 is_stmt 0
	lw	a5,8(a5)
.LVL26:
	beq	a5,zero,.L41
	.loc 1 107 17 is_stmt 1
	lui	a0,%hi(.LC1)
	lbu	a2,0(a7)
	lw	a1,0(a6)
.LVL27:
	addi	a0,a0,%lo(.LC1)
	j	.L42
.LVL28:
.L16:
	.loc 1 93 33 is_stmt 0 discriminator 1
	lw	a5,8(a5)
.LVL29:
	beq	a5,zero,.L41
	.loc 1 94 13 is_stmt 1
	lbu	a2,0(a7)
.LVL30:
	lw	a1,0(a6)
.LVL31:
	lui	a0,%hi(.LC0)
.LVL32:
	addi	a0,a0,%lo(.LC0)
.LVL33:
.L42:
	.loc 1 107 17 is_stmt 0
	call	printf
.LVL34:
	j	.L41
.LVL35:
.L39:
	.cfi_def_cfa_offset 0
	.cfi_restore 1
	.loc 1 113 1
	ret
	.cfi_endproc
.LFE4:
	.size	utils_getopt, .-utils_getopt
	.text
.Letext0:
	.file 2 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/utils/include/utils_getopt.h"
	.file 3 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1cf
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF21
	.byte	0xc
	.4byte	.LASF22
	.4byte	.LASF23
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
	.4byte	0x76
	.byte	0x5
	.4byte	0x6b
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF9
	.byte	0x5
	.4byte	0x76
	.byte	0x4
	.byte	0x4
	.4byte	0x7d
	.byte	0x6
	.4byte	.LASF24
	.byte	0x14
	.byte	0x2
	.byte	0x7
	.byte	0x10
	.4byte	0xd7
	.byte	0x7
	.4byte	.LASF10
	.byte	0x2
	.byte	0x8
	.byte	0xb
	.4byte	0x6b
	.byte	0
	.byte	0x7
	.4byte	.LASF11
	.byte	0x2
	.byte	0x9
	.byte	0x9
	.4byte	0x5d
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.byte	0x2
	.byte	0xa
	.byte	0x9
	.4byte	0x5d
	.byte	0x8
	.byte	0x7
	.4byte	.LASF13
	.byte	0x2
	.byte	0xb
	.byte	0x9
	.4byte	0x5d
	.byte	0xc
	.byte	0x7
	.4byte	.LASF14
	.byte	0x2
	.byte	0xc
	.byte	0x9
	.4byte	0x5d
	.byte	0x10
	.byte	0
	.byte	0x8
	.4byte	.LASF25
	.byte	0x2
	.byte	0xd
	.byte	0x3
	.4byte	0x88
	.byte	0x9
	.4byte	.LASF19
	.byte	0x1
	.byte	0x30
	.byte	0x5
	.4byte	0x5d
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0x181
	.byte	0xa
	.string	"env"
	.byte	0x1
	.byte	0x30
	.byte	0x20
	.4byte	0x181
	.4byte	.LLST1
	.byte	0xb
	.4byte	.LASF15
	.byte	0x1
	.byte	0x30
	.byte	0x29
	.4byte	0x5d
	.4byte	.LLST2
	.byte	0xb
	.4byte	.LASF16
	.byte	0x1
	.byte	0x30
	.byte	0x3c
	.4byte	0x187
	.4byte	.LLST3
	.byte	0xb
	.4byte	.LASF17
	.byte	0x1
	.byte	0x30
	.byte	0x50
	.4byte	0x82
	.4byte	.LLST4
	.byte	0xc
	.string	"i"
	.byte	0x1
	.byte	0x32
	.byte	0x9
	.4byte	0x5d
	.4byte	.LLST5
	.byte	0xc
	.string	"c"
	.byte	0x1
	.byte	0x33
	.byte	0xa
	.4byte	0x76
	.4byte	.LLST6
	.byte	0xc
	.string	"d"
	.byte	0x1
	.byte	0x33
	.byte	0xd
	.4byte	0x76
	.4byte	.LLST7
	.byte	0xd
	.4byte	.LASF18
	.byte	0x1
	.byte	0x34
	.byte	0xb
	.4byte	0x6b
	.4byte	.LLST8
	.byte	0xe
	.4byte	.LVL34
	.4byte	0x1c6
	.byte	0
	.byte	0x4
	.byte	0x4
	.4byte	0xd7
	.byte	0x4
	.byte	0x4
	.4byte	0x71
	.byte	0x9
	.4byte	.LASF20
	.byte	0x1
	.byte	0x21
	.byte	0x5
	.4byte	0x5d
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x1
	.byte	0x9c
	.4byte	0x1c6
	.byte	0xa
	.string	"env"
	.byte	0x1
	.byte	0x21
	.byte	0x25
	.4byte	0x181
	.4byte	.LLST0
	.byte	0xf
	.4byte	.LASF12
	.byte	0x1
	.byte	0x21
	.byte	0x2e
	.4byte	0x5d
	.byte	0x1
	.byte	0x5b
	.byte	0
	.byte	0x10
	.4byte	.LASF26
	.4byte	.LASF26
	.byte	0x3
	.byte	0xc8
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
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
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
	.byte	0xc
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
	.byte	0x17
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
	.byte	0x10
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
.LLST1:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL5
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL26
	.4byte	.LVL28
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL29
	.4byte	.LVL35
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL4
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL31
	.4byte	.LVL35
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL4
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL6
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL34-1
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL34-1
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL4
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL20
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL35
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL15
	.4byte	.LVL19
	.2byte	0x3
	.byte	0x7c
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL22
	.2byte	0x3
	.byte	0x7c
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LVL30
	.2byte	0x3
	.byte	0x7c
	.byte	0x7f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL11
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL20
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x2
	.byte	0x7f
	.byte	0xc
	.4byte	.LVL26
	.4byte	.LVL28
	.2byte	0x5
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x23
	.byte	0xc
	.4byte	.LVL28
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x5
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x23
	.byte	0xc
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL14
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x2
	.byte	0x7e
	.byte	0
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL21
	.4byte	.LVL23
	.2byte	0x2
	.byte	0x7e
	.byte	0
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL11
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x61
	.4byte	.LVL20
	.4byte	.LVL34-1
	.2byte	0x1
	.byte	0x61
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
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL3
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
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
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF24:
	.string	"getopt_env"
.LASF12:
	.string	"opterr"
.LASF23:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/utils"
.LASF14:
	.string	"__optpos"
.LASF25:
	.string	"getopt_env_t"
.LASF1:
	.string	"unsigned char"
.LASF11:
	.string	"optind"
.LASF5:
	.string	"long unsigned int"
.LASF3:
	.string	"short unsigned int"
.LASF19:
	.string	"utils_getopt"
.LASF8:
	.string	"unsigned int"
.LASF10:
	.string	"optarg"
.LASF7:
	.string	"long long unsigned int"
.LASF13:
	.string	"optopt"
.LASF15:
	.string	"argc"
.LASF6:
	.string	"long long int"
.LASF21:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
.LASF9:
	.string	"char"
.LASF26:
	.string	"printf"
.LASF18:
	.string	"optchar"
.LASF2:
	.string	"short int"
.LASF16:
	.string	"argv"
.LASF4:
	.string	"long int"
.LASF20:
	.string	"utils_getopt_init"
.LASF17:
	.string	"optstring"
.LASF0:
	.string	"signed char"
.LASF22:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/utils/src/utils_getopt.c"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
