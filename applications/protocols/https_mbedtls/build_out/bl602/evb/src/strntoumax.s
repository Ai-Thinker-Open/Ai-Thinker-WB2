	.file	"strntoumax.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.strntoumax,"ax",@progbits
	.align	1
	.globl	strntoumax
	.type	strntoumax, @function
strntoumax:
.LFB2:
	.file 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602/evb/src/strntoumax.c"
	.loc 1 30 1
	.cfi_startproc
.LVL0:
	.loc 1 30 1 is_stmt 0
	mv	a5,a0
	.loc 1 35 16
	lui	a0,%hi(_ctype_+1)
.LVL1:
	.loc 1 30 1
	mv	a7,a1
	.loc 1 31 2 is_stmt 1
.LVL2:
	.loc 1 32 2
	.loc 1 33 2
	.loc 1 35 2
	.loc 1 35 16 is_stmt 0
	addi	a0,a0,%lo(_ctype_+1)
.LVL3:
.L2:
	.loc 1 35 8 is_stmt 1
	beq	a3,zero,.L3
	.loc 1 35 28 is_stmt 0 discriminator 1
	lbu	a4,0(a5)
	.loc 1 35 16 discriminator 1
	add	a1,a4,a0
	.loc 1 35 11 discriminator 1
	lbu	a1,0(a1)
	andi	a1,a1,8
	bne	a1,zero,.L4
	.loc 1 41 2 is_stmt 1 discriminator 1
.LBB5:
	.loc 1 42 3 discriminator 1
.LVL4:
	.loc 1 43 3 discriminator 1
	.loc 1 43 16 is_stmt 0 discriminator 1
	addi	a1,a4,-43
	andi	a1,a1,253
.LBE5:
	.loc 1 31 6 discriminator 1
	li	t4,0
.LBB6:
	.loc 1 43 16 discriminator 1
	bne	a1,zero,.L5
	.loc 1 44 4 is_stmt 1
	.loc 1 44 15 is_stmt 0
	addi	a4,a4,-45
.LVL5:
	seqz	t4,a4
.LVL6:
	.loc 1 45 4 is_stmt 1
	.loc 1 45 8 is_stmt 0
	addi	a5,a5,1
.LVL7:
	.loc 1 46 4 is_stmt 1
	.loc 1 46 5 is_stmt 0
	addi	a3,a3,-1
.LVL8:
.L5:
.LBE6:
	.loc 1 50 2 is_stmt 1
	.loc 1 50 5 is_stmt 0
	bne	a2,zero,.L6
	.loc 1 51 3 is_stmt 1
	.loc 1 51 6 is_stmt 0
	li	a4,1
	bleu	a3,a4,.L7
	.loc 1 51 14 discriminator 1
	lbu	a1,0(a5)
	li	a4,48
	.loc 1 61 9 discriminator 1
	li	a2,10
.LVL9:
	.loc 1 51 14 discriminator 1
	bne	a1,a4,.L8
	.loc 1 52 23 discriminator 2
	lbu	a2,1(a5)
	li	a4,88
	andi	a2,a2,223
	bne	a2,a4,.L9
	.loc 1 53 4 is_stmt 1
.LVL10:
	.loc 1 53 6 is_stmt 0
	addi	a3,a3,-2
.LVL11:
	.loc 1 54 4 is_stmt 1
	.loc 1 54 9 is_stmt 0
	addi	a5,a5,2
.LVL12:
	.loc 1 55 4 is_stmt 1
.L22:
	.loc 1 31 6 is_stmt 0
	li	a2,16
	j	.L8
.LVL13:
.L4:
	.loc 1 36 3 is_stmt 1
	.loc 1 36 7 is_stmt 0
	addi	a5,a5,1
.LVL14:
	.loc 1 37 3 is_stmt 1
	.loc 1 37 4 is_stmt 0
	addi	a3,a3,-1
.LVL15:
	j	.L2
.LVL16:
.L7:
	.loc 1 56 10 is_stmt 1
	li	a0,0
	li	a1,0
	.loc 1 56 13 is_stmt 0
	beq	a3,zero,.L10
	.loc 1 56 21 discriminator 1
	lbu	a2,0(a5)
.LVL17:
	li	a4,48
	bne	a2,a4,.L26
.L9:
	.loc 1 57 4 is_stmt 1
.LVL18:
	.loc 1 57 5 is_stmt 0
	addi	a3,a3,-1
.LVL19:
	.loc 1 58 4 is_stmt 1
	.loc 1 58 8 is_stmt 0
	addi	a5,a5,1
.LVL20:
	.loc 1 59 4 is_stmt 1
	.loc 1 59 9 is_stmt 0
	li	a2,8
.LVL21:
.L8:
	add	a3,a5,a3
	.loc 1 61 9
	li	a0,0
	li	a1,0
.LBB7:
.LBB8:
	.loc 1 18 5
	li	t5,9
	.loc 1 20 12
	li	t3,25
.LBE8:
.LBE7:
	.loc 1 72 9
	srai	t6,a2,31
	j	.L13
.LVL22:
.L6:
	.loc 1 63 9 is_stmt 1
	.loc 1 63 12 is_stmt 0
	li	a4,16
	bne	a2,a4,.L8
	.loc 1 64 3 is_stmt 1
	.loc 1 64 6 is_stmt 0
	li	a4,1
	bleu	a3,a4,.L22
	.loc 1 64 14 discriminator 1
	lbu	a1,0(a5)
	li	a4,48
	bne	a1,a4,.L8
	.loc 1 65 23 discriminator 2
	lbu	a1,1(a5)
	li	a4,88
	andi	a1,a1,223
	bne	a1,a4,.L8
	.loc 1 66 4 is_stmt 1
.LVL23:
	.loc 1 66 6 is_stmt 0
	addi	a3,a3,-2
.LVL24:
	.loc 1 67 4 is_stmt 1
	.loc 1 67 9 is_stmt 0
	addi	a5,a5,2
.LVL25:
	j	.L8
.LVL26:
.L19:
	.loc 1 72 3 is_stmt 1
	.loc 1 72 9 is_stmt 0
	mul	t1,t6,a0
	.loc 1 74 7
	addi	a5,a5,1
.LVL27:
	.loc 1 72 9
	mul	a4,a1,a2
	add	a1,t1,a4
.LVL28:
	mul	t1,a2,a0
	.loc 1 72 16
	srai	a4,a6,31
	.loc 1 72 9
	mulhu	a0,a2,a0
	add	a1,a1,a0
	.loc 1 72 5
	add	a0,a6,t1
	sltu	a6,a0,a6
.LVL29:
	add	a4,a4,a1
	add	a1,a6,a4
.LVL30:
	.loc 1 73 3 is_stmt 1
	.loc 1 74 3
.L13:
	.loc 1 71 8
	beq	a5,a3,.L10
	.loc 1 71 28 is_stmt 0 discriminator 1
	lbu	a4,0(a5)
.LVL31:
.LBB11:
.LBB9:
	.loc 1 18 2 is_stmt 1 discriminator 1
	.loc 1 18 16 is_stmt 0 discriminator 1
	addi	a6,a4,-48
	.loc 1 18 5 discriminator 1
	bleu	a6,t5,.L15
	.loc 1 20 9 is_stmt 1
	.loc 1 20 23 is_stmt 0
	addi	a6,a4,-65
	.loc 1 20 12
	bgtu	a6,t3,.L16
	.loc 1 21 3 is_stmt 1
	.loc 1 21 19 is_stmt 0
	addi	a6,a4,-55
.L15:
.LVL32:
.LBE9:
.LBE11:
	.loc 1 71 41
	bgt	a2,a6,.L19
.LVL33:
.L10:
	.loc 1 77 2 is_stmt 1
	.loc 1 77 5 is_stmt 0
	bne	a7,zero,.L21
.L17:
	.loc 1 80 2 is_stmt 1
	.loc 1 80 20 is_stmt 0
	beq	t4,zero,.L1
	.loc 1 80 20 discriminator 1
	snez	a5,a0
	neg	a1,a1
	sub	a1,a1,a5
	neg	a0,a0
	ret
.LVL34:
.L26:
	li	a3,1
	.loc 1 61 9
	li	a2,10
	j	.L8
.LVL35:
.L16:
.LBB12:
.LBB10:
	.loc 1 22 9 is_stmt 1
	.loc 1 22 23 is_stmt 0
	addi	a6,a4,-97
	.loc 1 22 12
	bgtu	a6,t3,.L10
	.loc 1 23 3 is_stmt 1
	.loc 1 23 19 is_stmt 0
	addi	a6,a4,-87
	j	.L15
.LVL36:
.L28:
.LBE10:
.LBE12:
	.loc 1 31 6
	li	t4,0
	.loc 1 77 5
	li	a0,0
	li	a1,0
.LVL37:
.L21:
	.loc 1 78 3 is_stmt 1
	.loc 1 78 11 is_stmt 0
	sw	a5,0(a7)
	j	.L17
.LVL38:
.L3:
	.loc 1 41 2 is_stmt 1
	.loc 1 50 2
	.loc 1 50 5 is_stmt 0
	bne	a2,zero,.L20
.LVL39:
	.loc 1 77 2 is_stmt 1
	.loc 1 77 5 is_stmt 0
	bne	a7,zero,.L28
	li	a0,0
	li	a1,0
	ret
.LVL40:
.L20:
	.loc 1 63 9 is_stmt 1
	.loc 1 63 12 is_stmt 0
	li	a4,16
	.loc 1 31 6
	li	t4,0
	.loc 1 63 12
	bne	a2,a4,.L8
	j	.L22
.LVL41:
.L1:
	.loc 1 81 1
	ret
	.cfi_endproc
.LFE2:
	.size	strntoumax, .-strntoumax
	.text
.Letext0:
	.file 2 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h"
	.file 3 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.file 4 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/ctype.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x18a
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF16
	.byte	0xc
	.4byte	.LASF17
	.4byte	.LASF18
	.4byte	.Ldebug_ranges0+0x38
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x3
	.4byte	.LASF9
	.byte	0x2
	.byte	0xd1
	.byte	0x16
	.4byte	0x38
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1
	.byte	0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF3
	.byte	0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF4
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.byte	0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF6
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.byte	0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF8
	.byte	0x3
	.4byte	.LASF10
	.byte	0x3
	.byte	0x5c
	.byte	0x20
	.4byte	0x70
	.byte	0x5
	.4byte	0x9a
	.4byte	0x8e
	.byte	0x6
	.byte	0
	.byte	0x7
	.4byte	0x83
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF11
	.byte	0x7
	.4byte	0x93
	.byte	0x8
	.4byte	.LASF19
	.byte	0x4
	.byte	0x46
	.byte	0x13
	.4byte	0x8e
	.byte	0x9
	.4byte	.LASF20
	.byte	0x1
	.byte	0x1d
	.byte	0xb
	.4byte	0x77
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x1
	.byte	0x9c
	.4byte	0x162
	.byte	0xa
	.4byte	.LASF12
	.byte	0x1
	.byte	0x1d
	.byte	0x22
	.4byte	0x162
	.4byte	.LLST0
	.byte	0xa
	.4byte	.LASF13
	.byte	0x1
	.byte	0x1d
	.byte	0x2f
	.4byte	0x168
	.4byte	.LLST1
	.byte	0xa
	.4byte	.LASF14
	.byte	0x1
	.byte	0x1d
	.byte	0x3b
	.4byte	0x25
	.4byte	.LLST2
	.byte	0xb
	.string	"n"
	.byte	0x1
	.byte	0x1d
	.byte	0x48
	.4byte	0x2c
	.4byte	.LLST3
	.byte	0xc
	.4byte	.LASF15
	.byte	0x1
	.byte	0x1f
	.byte	0x6
	.4byte	0x25
	.4byte	.LLST4
	.byte	0xd
	.string	"v"
	.byte	0x1
	.byte	0x20
	.byte	0xc
	.4byte	0x77
	.4byte	.LLST5
	.byte	0xd
	.string	"d"
	.byte	0x1
	.byte	0x21
	.byte	0x6
	.4byte	0x25
	.4byte	.LLST6
	.byte	0xe
	.4byte	.Ldebug_ranges0+0
	.4byte	0x147
	.byte	0xd
	.string	"c"
	.byte	0x1
	.byte	0x2a
	.byte	0x8
	.4byte	0x93
	.4byte	.LLST7
	.byte	0
	.byte	0xf
	.4byte	0x174
	.4byte	.LBB7
	.4byte	.Ldebug_ranges0+0x18
	.byte	0x1
	.byte	0x47
	.byte	0x13
	.byte	0x10
	.4byte	0x181
	.4byte	.LLST8
	.byte	0
	.byte	0
	.byte	0x11
	.byte	0x4
	.4byte	0x9a
	.byte	0x11
	.byte	0x4
	.4byte	0x16e
	.byte	0x11
	.byte	0x4
	.4byte	0x93
	.byte	0x12
	.4byte	.LASF21
	.byte	0x1
	.byte	0x10
	.byte	0x15
	.4byte	0x25
	.byte	0x3
	.byte	0x13
	.string	"ch"
	.byte	0x1
	.byte	0x10
	.byte	0x22
	.4byte	0x25
	.byte	0
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
	.byte	0x8
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
	.byte	0xe
	.byte	0
	.byte	0
	.byte	0x5
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x21
	.byte	0
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
	.byte	0xb
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
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0xd
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
	.byte	0xe
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xf
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
	.byte	0
	.byte	0
	.byte	0x10
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x11
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
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
	.byte	0x49
	.byte	0x13
	.byte	0x20
	.byte	0xb
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
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL27
	.4byte	.LVL30
	.2byte	0x3
	.byte	0x7f
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL34
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL3
	.4byte	.LFE2
	.2byte	0x1
	.byte	0x61
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL9
	.4byte	.LVL12
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL17
	.4byte	.LVL20
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x2
	.byte	0x38
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL0
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL3
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x3
	.byte	0x7d
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x3
	.byte	0x7d
	.byte	0x7e
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x3
	.byte	0x7d
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x3
	.byte	0x7d
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x3
	.byte	0x7d
	.byte	0x7e
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL2
	.4byte	.LVL6
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL13
	.4byte	.LVL16
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL22
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL38
	.4byte	.LVL41
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL2
	.4byte	.LVL26
	.2byte	0xa
	.byte	0x9e
	.byte	0x8
	.8byte	0
	.4byte	.LVL26
	.4byte	.LVL28
	.2byte	0x6
	.byte	0x5a
	.byte	0x93
	.byte	0x4
	.byte	0x5b
	.byte	0x93
	.byte	0x4
	.4byte	.LVL30
	.4byte	.LVL33
	.2byte	0x6
	.byte	0x5a
	.byte	0x93
	.byte	0x4
	.byte	0x5b
	.byte	0x93
	.byte	0x4
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0xa
	.byte	0x9e
	.byte	0x8
	.8byte	0
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x6
	.byte	0x5a
	.byte	0x93
	.byte	0x4
	.byte	0x5b
	.byte	0x93
	.byte	0x4
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0xa
	.byte	0x9e
	.byte	0x8
	.8byte	0
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0xa
	.byte	0x9e
	.byte	0x8
	.8byte	0
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL26
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x60
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL5
	.4byte	.LVL8
	.2byte	0x3
	.byte	0x7e
	.byte	0x2d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x5e
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
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB5
	.4byte	.LBE5
	.4byte	.LBB6
	.4byte	.LBE6
	.4byte	0
	.4byte	0
	.4byte	.LBB7
	.4byte	.LBE7
	.4byte	.LBB11
	.4byte	.LBE11
	.4byte	.LBB12
	.4byte	.LBE12
	.4byte	0
	.4byte	0
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF13:
	.string	"endptr"
.LASF18:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/bl602"
.LASF9:
	.string	"size_t"
.LASF20:
	.string	"strntoumax"
.LASF5:
	.string	"unsigned char"
.LASF7:
	.string	"long unsigned int"
.LASF6:
	.string	"short unsigned int"
.LASF10:
	.string	"uintmax_t"
.LASF12:
	.string	"nptr"
.LASF15:
	.string	"minus"
.LASF17:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602/evb/src/strntoumax.c"
.LASF14:
	.string	"base"
.LASF0:
	.string	"unsigned int"
.LASF8:
	.string	"long long unsigned int"
.LASF21:
	.string	"digitval"
.LASF19:
	.string	"_ctype_"
.LASF4:
	.string	"long long int"
.LASF16:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
.LASF11:
	.string	"char"
.LASF2:
	.string	"short int"
.LASF3:
	.string	"long int"
.LASF1:
	.string	"signed char"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
