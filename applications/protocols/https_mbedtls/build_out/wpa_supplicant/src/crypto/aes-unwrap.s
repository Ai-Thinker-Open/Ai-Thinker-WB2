	.file	"aes-unwrap.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.aes_unwrap,"ax",@progbits
	.align	1
	.globl	aes_unwrap
	.type	aes_unwrap, @function
aes_unwrap:
.LFB69:
	.file 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/crypto/aes-unwrap.c"
	.loc 1 48 1
	.cfi_startproc
.LVL0:
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sw	s2,64(sp)
	.cfi_offset 18, -16
	mv	s2,a2
	.loc 1 49 2
	.loc 1 50 2
	.loc 1 51 2
	.loc 1 54 2
	.loc 1 48 1 is_stmt 0
	sw	s3,60(sp)
	sw	s4,56(sp)
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	mv	s3,a1
	mv	s4,a0
	.loc 1 54 2
	li	a2,8
.LVL1:
	mv	a1,s2
.LVL2:
	addi	a0,sp,8
.LVL3:
	.loc 1 48 1
	sw	ra,76(sp)
	sw	s0,72(sp)
	sw	s1,68(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	mv	s0,a3
	sw	s5,52(sp)
	sw	s6,48(sp)
	sw	s7,44(sp)
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 23, -36
	.loc 1 56 31
	slli	s1,s3,3
	.loc 1 54 2
	call	memcpy
.LVL4:
	.loc 1 55 2 is_stmt 1
	.loc 1 56 2
	addi	a1,s2,8
	mv	a2,s1
	mv	a0,s0
	call	memcpy
.LVL5:
	.loc 1 58 2
	.loc 1 58 8 is_stmt 0
	li	a1,16
	mv	a0,s4
	call	wpa_aes_decrypt_init
.LVL6:
	.loc 1 59 2 is_stmt 1
	.loc 1 59 5 is_stmt 0
	beq	a0,zero,.L2
	.loc 1 70 23
	addi	s1,s1,-8
	.loc 1 70 5
	add	s1,s0,s1
	andi	s7,s3,0xff
	li	s0,5
.LVL7:
	mul	s0,s7,s0
	mv	s2,a0
.LVL8:
	li	s6,6
	andi	s0,s0,0xff
.LVL9:
.L5:
	.loc 1 70 3 is_stmt 1
	.loc 1 71 3
	.loc 1 71 10 is_stmt 0
	mv	s4,s3
	.loc 1 70 5
	mv	s5,s1
.LVL10:
.L3:
	.loc 1 71 15 is_stmt 1 discriminator 1
	.loc 1 71 3 is_stmt 0 discriminator 1
	bgt	s4,zero,.L4
	.loc 1 69 22 is_stmt 1 discriminator 2
.LVL11:
	.loc 1 69 14 discriminator 2
	.loc 1 69 2 is_stmt 0 discriminator 2
	sub	s0,s0,s7
	addi	s6,s6,-1
.LVL12:
	andi	s0,s0,0xff
	bne	s6,zero,.L5
	.loc 1 82 2 is_stmt 1
	mv	a0,s2
	call	wpa_aes_decrypt_deinit
.LVL13:
	.loc 1 89 2
	.loc 1 89 14
	.loc 1 89 9 is_stmt 0
	li	a5,0
	.loc 1 90 6
	li	a3,166
	.loc 1 89 2
	li	a4,8
.LVL14:
.L6:
	.loc 1 90 3 is_stmt 1
	.loc 1 90 8 is_stmt 0
	addi	a2,sp,8
	add	a2,a2,a5
	.loc 1 90 6
	lbu	a2,0(a2)
	bne	a2,a3,.L2
	.loc 1 89 21 is_stmt 1 discriminator 2
	.loc 1 89 22 is_stmt 0 discriminator 2
	addi	a5,a5,1
.LVL15:
	.loc 1 89 14 is_stmt 1 discriminator 2
	.loc 1 89 2 is_stmt 0 discriminator 2
	bne	a5,a4,.L6
	.loc 1 94 9
	li	a0,0
.LVL16:
.L1:
	.loc 1 95 1
	lw	ra,76(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,72(sp)
	.cfi_restore 8
	lw	s1,68(sp)
	.cfi_restore 9
	lw	s2,64(sp)
	.cfi_restore 18
	lw	s3,60(sp)
	.cfi_restore 19
.LVL17:
	lw	s4,56(sp)
	.cfi_restore 20
	lw	s5,52(sp)
	.cfi_restore 21
	lw	s6,48(sp)
	.cfi_restore 22
	lw	s7,44(sp)
	.cfi_restore 23
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
.LVL18:
.L4:
	.cfi_restore_state
	.loc 1 72 4 is_stmt 1 discriminator 3
	li	a2,8
	addi	a1,sp,8
	addi	a0,sp,16
	call	memcpy
.LVL19:
	.loc 1 73 4 discriminator 3
	.loc 1 73 9 is_stmt 0 discriminator 3
	lbu	a4,23(sp)
	add	a5,s0,s4
	.loc 1 75 4 discriminator 3
	mv	a1,s5
	.loc 1 73 9 discriminator 3
	xor	a5,a5,a4
	.loc 1 75 4 discriminator 3
	li	a2,8
	addi	a0,sp,24
	.loc 1 73 9 discriminator 3
	sb	a5,23(sp)
	.loc 1 75 4 is_stmt 1 discriminator 3
	call	memcpy
.LVL20:
	.loc 1 76 4 discriminator 3
	addi	a2,sp,16
	mv	a1,a2
	mv	a0,s2
	call	wpa_aes_decrypt
.LVL21:
	.loc 1 77 4 discriminator 3
	li	a2,8
	addi	a1,sp,16
	addi	a0,sp,8
	call	memcpy
.LVL22:
	.loc 1 78 4 discriminator 3
	mv	a0,s5
	li	a2,8
	addi	a1,sp,24
	call	memcpy
.LVL23:
	.loc 1 79 4 discriminator 3
	.loc 1 79 6 is_stmt 0 discriminator 3
	addi	s5,s5,-8
.LVL24:
	.loc 1 71 23 is_stmt 1 discriminator 3
	.loc 1 71 24 is_stmt 0 discriminator 3
	addi	s4,s4,-1
.LVL25:
	j	.L3
.LVL26:
.L2:
	.loc 1 60 10
	li	a0,-1
	j	.L1
	.cfi_endproc
.LFE69:
	.size	aes_unwrap, .-aes_unwrap
	.text
.Letext0:
	.file 2 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 3 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 4 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h"
	.file 5 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/crypto/aes.h"
	.file 6 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/utils/common.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x2aa
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF18
	.byte	0xc
	.4byte	.LASF19
	.4byte	.LASF20
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
	.byte	0x4
	.4byte	.LASF10
	.byte	0x2
	.byte	0x2b
	.byte	0x17
	.4byte	0x46
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
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF9
	.byte	0x4
	.4byte	.LASF11
	.byte	0x3
	.byte	0x18
	.byte	0x13
	.4byte	0x3a
	.byte	0x6
	.string	"u8"
	.byte	0x6
	.byte	0x16
	.byte	0x11
	.4byte	0x80
	.byte	0x7
	.4byte	0x8c
	.byte	0x8
	.byte	0x4
	.4byte	0x8c
	.byte	0x9
	.4byte	.LASF21
	.byte	0x1
	.byte	0x2f
	.byte	0x1
	.4byte	0x2c
	.4byte	.LFB69
	.4byte	.LFE69-.LFB69
	.byte	0x1
	.byte	0x9c
	.4byte	0x257
	.byte	0xa
	.string	"kek"
	.byte	0x1
	.byte	0x2f
	.byte	0x16
	.4byte	0x257
	.4byte	.LLST0
	.byte	0xa
	.string	"n"
	.byte	0x1
	.byte	0x2f
	.byte	0x1f
	.4byte	0x2c
	.4byte	.LLST1
	.byte	0xb
	.4byte	.LASF12
	.byte	0x1
	.byte	0x2f
	.byte	0x2c
	.4byte	0x257
	.4byte	.LLST2
	.byte	0xb
	.4byte	.LASF13
	.byte	0x1
	.byte	0x2f
	.byte	0x38
	.4byte	0x9c
	.4byte	.LLST3
	.byte	0xc
	.string	"a"
	.byte	0x1
	.byte	0x31
	.byte	0x5
	.4byte	0x25d
	.byte	0x3
	.byte	0x91
	.byte	0xb8,0x7f
	.byte	0xd
	.string	"r"
	.byte	0x1
	.byte	0x31
	.byte	0xc
	.4byte	0x9c
	.4byte	.LLST4
	.byte	0xc
	.string	"b"
	.byte	0x1
	.byte	0x31
	.byte	0xf
	.4byte	0x26d
	.byte	0x2
	.byte	0x91
	.byte	0x40
	.byte	0xd
	.string	"i"
	.byte	0x1
	.byte	0x32
	.byte	0x6
	.4byte	0x2c
	.4byte	.LLST5
	.byte	0xd
	.string	"j"
	.byte	0x1
	.byte	0x32
	.byte	0x9
	.4byte	0x2c
	.4byte	.LLST6
	.byte	0xd
	.string	"ctx"
	.byte	0x1
	.byte	0x33
	.byte	0x8
	.4byte	0x77
	.4byte	.LLST7
	.byte	0xe
	.4byte	.LVL4
	.4byte	0x27d
	.4byte	0x16f
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xb8,0x7f
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0xf
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x38
	.byte	0
	.byte	0xe
	.4byte	.LVL5
	.4byte	0x27d
	.4byte	0x18f
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0x8
	.byte	0xf
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0xe
	.4byte	.LVL6
	.4byte	0x289
	.4byte	0x1a8
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x40
	.byte	0
	.byte	0xe
	.4byte	.LVL13
	.4byte	0x295
	.4byte	0x1bc
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0xe
	.4byte	.LVL19
	.4byte	0x27d
	.4byte	0x1dc
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x40
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0xb8,0x7f
	.byte	0xf
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x38
	.byte	0
	.byte	0xe
	.4byte	.LVL20
	.4byte	0x27d
	.4byte	0x1fb
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x48
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0xf
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x38
	.byte	0
	.byte	0xe
	.4byte	.LVL21
	.4byte	0x2a1
	.4byte	0x21b
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x40
	.byte	0xf
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x40
	.byte	0
	.byte	0xe
	.4byte	.LVL22
	.4byte	0x27d
	.4byte	0x23b
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xb8,0x7f
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x40
	.byte	0xf
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x38
	.byte	0
	.byte	0x10
	.4byte	.LVL23
	.4byte	0x27d
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x48
	.byte	0xf
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x38
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0x4
	.4byte	0x97
	.byte	0x11
	.4byte	0x8c
	.4byte	0x26d
	.byte	0x12
	.4byte	0x25
	.byte	0x7
	.byte	0
	.byte	0x11
	.4byte	0x8c
	.4byte	0x27d
	.byte	0x12
	.4byte	0x25
	.byte	0xf
	.byte	0
	.byte	0x13
	.4byte	.LASF14
	.4byte	.LASF14
	.byte	0x4
	.byte	0x1f
	.byte	0x8
	.byte	0x13
	.4byte	.LASF15
	.4byte	.LASF15
	.byte	0x5
	.byte	0x1a
	.byte	0x8
	.byte	0x13
	.4byte	.LASF16
	.4byte	.LASF16
	.byte	0x5
	.byte	0x1c
	.byte	0x6
	.byte	0x13
	.4byte	.LASF17
	.4byte	.LASF17
	.byte	0x5
	.byte	0x1b
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
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x16
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
	.byte	0x7
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0xf
	.byte	0
	.byte	0xb
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
	.byte	0x18
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
	.byte	0xf
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x10
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x12
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x13
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
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL3
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL9
	.4byte	.LFE69
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
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LFE69
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL1
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL8
	.4byte	.LFE69
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL0
	.4byte	.LVL4-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL4-1
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL7
	.4byte	.LFE69
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL4
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL7
	.4byte	.LVL9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL18
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x65
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL10
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL18
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL9
	.4byte	.LVL11
	.2byte	0x3
	.byte	0x86
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x3
	.byte	0x86
	.byte	0x7e
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL16
	.2byte	0x3
	.byte	0x86
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LVL26
	.2byte	0x3
	.byte	0x86
	.byte	0x7f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL6
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL9
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL18
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x62
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
	.4byte	.LFB69
	.4byte	.LFE69-.LFB69
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB69
	.4byte	.LFE69
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF13:
	.string	"plain"
.LASF10:
	.string	"__uint8_t"
.LASF15:
	.string	"wpa_aes_decrypt_init"
.LASF1:
	.string	"signed char"
.LASF16:
	.string	"wpa_aes_decrypt_deinit"
.LASF2:
	.string	"unsigned char"
.LASF6:
	.string	"long unsigned int"
.LASF4:
	.string	"short unsigned int"
.LASF20:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/wpa_supplicant"
.LASF12:
	.string	"cipher"
.LASF21:
	.string	"aes_unwrap"
.LASF19:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/crypto/aes-unwrap.c"
.LASF0:
	.string	"unsigned int"
.LASF8:
	.string	"long long unsigned int"
.LASF11:
	.string	"uint8_t"
.LASF17:
	.string	"wpa_aes_decrypt"
.LASF7:
	.string	"long long int"
.LASF18:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
.LASF9:
	.string	"char"
.LASF14:
	.string	"memcpy"
.LASF3:
	.string	"short int"
.LASF5:
	.string	"long int"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
