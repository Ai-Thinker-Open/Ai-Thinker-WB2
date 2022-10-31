	.file	"sha256.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.hmac_sha256_vector,"ax",@progbits
	.align	1
	.globl	hmac_sha256_vector
	.type	hmac_sha256_vector, @function
hmac_sha256_vector:
.LFB69:
	.file 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/crypto/sha256.c"
	.loc 1 49 1
	.cfi_startproc
.LVL0:
	.loc 1 50 2
	.loc 1 51 2
	.loc 1 52 2
	.loc 1 53 2
	.loc 1 55 2
	.loc 1 49 1 is_stmt 0
	addi	sp,sp,-240
	.cfi_def_cfa_offset 240
	sw	s0,232(sp)
	sw	ra,236(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	mv	s0,a5
	sw	s1,228(sp)
	sw	s2,224(sp)
	sw	s3,220(sp)
	sw	s4,216(sp)
	sw	s5,212(sp)
	sw	s6,208(sp)
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.loc 1 49 1
	sw	a0,12(sp)
	sw	a1,8(sp)
	.loc 1 55 5
	li	a5,5
.LVL1:
	bleu	a2,a5,.L2
.LVL2:
.L5:
	.loc 1 60 10
	li	a0,-1
.L1:
	.loc 1 109 1
	lw	ra,236(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,232(sp)
	.cfi_restore 8
.LVL3:
	lw	s1,228(sp)
	.cfi_restore 9
	lw	s2,224(sp)
	.cfi_restore 18
	lw	s3,220(sp)
	.cfi_restore 19
	lw	s4,216(sp)
	.cfi_restore 20
	lw	s5,212(sp)
	.cfi_restore 21
	lw	s6,208(sp)
	.cfi_restore 22
	addi	sp,sp,240
	.cfi_def_cfa_offset 0
	jr	ra
.LVL4:
.L2:
	.cfi_restore_state
	.loc 1 64 12
	li	a5,64
	mv	s2,a2
	mv	s3,a3
	mv	s4,a4
	.loc 1 64 9 is_stmt 1
	.loc 1 64 12 is_stmt 0
	bleu	a1,a5,.L4
	.loc 1 65 3 is_stmt 1
	.loc 1 65 7 is_stmt 0
	addi	s1,sp,24
	mv	a3,s1
.LVL5:
	addi	a2,sp,8
.LVL6:
	addi	a1,sp,12
.LVL7:
	li	a0,1
.LVL8:
	call	sha256_vector
.LVL9:
	.loc 1 65 6
	blt	a0,zero,.L5
	.loc 1 67 3 is_stmt 1
	.loc 1 68 11 is_stmt 0
	li	a5,32
	.loc 1 67 7
	sw	s1,12(sp)
	.loc 1 68 3 is_stmt 1
	.loc 1 68 11 is_stmt 0
	sw	a5,8(sp)
.L4:
	.loc 1 81 2 is_stmt 1
	li	a2,64
	li	a1,0
	addi	a0,sp,144
	call	memset
.LVL10:
	.loc 1 82 2
	lw	a2,8(sp)
	lw	a1,12(sp)
	addi	a0,sp,144
	addi	s1,sp,144
	call	memcpy
.LVL11:
	.loc 1 84 2
	.loc 1 84 14
	.loc 1 82 2 is_stmt 0
	mv	a5,s1
.LVL12:
.L6:
	.loc 1 85 3 is_stmt 1 discriminator 3
	.loc 1 85 12 is_stmt 0 discriminator 3
	lbu	a4,0(a5)
	.loc 1 84 2 discriminator 3
	addi	a5,a5,1
.LVL13:
	.loc 1 85 12 discriminator 3
	xori	a4,a4,54
	sb	a4,-1(a5)
	.loc 1 84 22 is_stmt 1 discriminator 3
.LVL14:
	.loc 1 84 14 discriminator 3
	.loc 1 84 2 is_stmt 0 discriminator 3
	addi	a4,sp,208
	bne	a5,a4,.L6
	.loc 1 88 2 is_stmt 1
	.loc 1 88 11 is_stmt 0
	addi	a5,sp,144
	sw	a5,56(sp)
	.loc 1 89 2 is_stmt 1
	addi	a1,sp,56
	.loc 1 89 10 is_stmt 0
	li	a5,64
	addi	a2,sp,100
	sw	a5,100(sp)
	.loc 1 90 2 is_stmt 1
.LVL15:
	slli	a4,s2,2
	li	a5,0
	mv	s5,a1
	mv	s6,a2
.LVL16:
.L7:
	.loc 1 90 14 discriminator 1
	.loc 1 90 2 is_stmt 0 discriminator 1
	addi	a1,a1,4
	addi	a2,a2,4
	bne	a5,a4,.L8
	.loc 1 94 2 is_stmt 1
	.loc 1 94 6 is_stmt 0
	mv	a3,s0
	mv	a2,s6
	mv	a1,s5
	addi	a0,s2,1
	call	sha256_vector
.LVL17:
	.loc 1 94 5
	blt	a0,zero,.L5
	.loc 1 97 2 is_stmt 1
	li	a2,64
	li	a1,0
	addi	a0,sp,144
	call	memset
.LVL18:
	.loc 1 98 2
	lw	a2,8(sp)
	lw	a1,12(sp)
	addi	a0,sp,144
	call	memcpy
.LVL19:
	.loc 1 100 2
	.loc 1 100 14
.L9:
	.loc 1 101 3 discriminator 3
	.loc 1 101 12 is_stmt 0 discriminator 3
	lbu	a5,0(s1)
	.loc 1 100 2 discriminator 3
	addi	s1,s1,1
.LVL20:
	.loc 1 101 12 discriminator 3
	xori	a5,a5,92
	sb	a5,-1(s1)
	.loc 1 100 22 is_stmt 1 discriminator 3
.LVL21:
	.loc 1 100 14 discriminator 3
	.loc 1 100 2 is_stmt 0 discriminator 3
	addi	a5,sp,208
	bne	s1,a5,.L9
	.loc 1 104 2 is_stmt 1
	.loc 1 104 11 is_stmt 0
	addi	a5,sp,144
	sw	a5,56(sp)
	.loc 1 105 2 is_stmt 1
	.loc 1 105 10 is_stmt 0
	li	a5,64
	sw	a5,100(sp)
	.loc 1 106 2 is_stmt 1
	.loc 1 108 9 is_stmt 0
	mv	a3,s0
	.loc 1 107 10
	li	a5,32
	.loc 1 108 9
	mv	a2,s6
	mv	a1,s5
	li	a0,2
	.loc 1 106 11
	sw	s0,60(sp)
	.loc 1 107 2 is_stmt 1
	.loc 1 107 10 is_stmt 0
	sw	a5,104(sp)
	.loc 1 108 2 is_stmt 1
	.loc 1 108 9 is_stmt 0
	call	sha256_vector
.LVL22:
	j	.L1
.L8:
	.loc 1 91 3 is_stmt 1 discriminator 3
	.loc 1 91 22 is_stmt 0 discriminator 3
	add	a3,s3,a5
	.loc 1 91 16 discriminator 3
	lw	a3,0(a3)
	sw	a3,0(a1)
	.loc 1 92 3 is_stmt 1 discriminator 3
	.loc 1 92 20 is_stmt 0 discriminator 3
	add	a3,s4,a5
	.loc 1 92 15 discriminator 3
	lw	a3,0(a3)
	addi	a5,a5,4
	sw	a3,0(a2)
	.loc 1 90 28 is_stmt 1 discriminator 3
	j	.L7
	.cfi_endproc
.LFE69:
	.size	hmac_sha256_vector, .-hmac_sha256_vector
	.section	.text.hmac_sha256,"ax",@progbits
	.align	1
	.globl	hmac_sha256
	.type	hmac_sha256, @function
hmac_sha256:
.LFB70:
	.loc 1 122 1
	.cfi_startproc
.LVL23:
	.loc 1 123 2
	.loc 1 122 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	a2,12(sp)
	sw	a3,8(sp)
	mv	a5,a4
	.loc 1 123 9
	addi	a3,sp,12
.LVL24:
	addi	a4,sp,8
.LVL25:
	li	a2,1
.LVL26:
	.loc 1 122 1
	sw	ra,28(sp)
	.cfi_offset 1, -4
	.loc 1 123 9
	call	hmac_sha256_vector
.LVL27:
	.loc 1 124 1
	lw	ra,28(sp)
	.cfi_restore 1
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE70:
	.size	hmac_sha256, .-hmac_sha256
	.text
.Letext0:
	.file 2 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h"
	.file 3 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 4 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 5 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/crypto/crypto.h"
	.file 6 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h"
	.file 7 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/utils/common.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x35c
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF26
	.byte	0xc
	.4byte	.LASF27
	.4byte	.LASF28
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.4byte	.LASF2
	.byte	0x2
	.byte	0xd1
	.byte	0x16
	.4byte	0x36
	.byte	0x3
	.4byte	0x25
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.byte	0x5
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1
	.byte	0x2
	.4byte	.LASF3
	.byte	0x3
	.byte	0x2b
	.byte	0x17
	.4byte	0x57
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF4
	.byte	0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF5
	.byte	0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF6
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.byte	0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF9
	.byte	0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF11
	.byte	0x2
	.4byte	.LASF12
	.byte	0x4
	.byte	0x18
	.byte	0x13
	.4byte	0x4b
	.byte	0x6
	.string	"u8"
	.byte	0x7
	.byte	0x16
	.byte	0x11
	.4byte	0x8f
	.byte	0x3
	.4byte	0x9b
	.byte	0x7
	.byte	0x4
	.4byte	0x9b
	.byte	0x8
	.4byte	.LASF16
	.byte	0x1
	.byte	0x78
	.byte	0x5
	.4byte	0x3d
	.4byte	.LFB70
	.4byte	.LFE70-.LFB70
	.byte	0x1
	.byte	0x9c
	.4byte	0x14c
	.byte	0x9
	.string	"key"
	.byte	0x1
	.byte	0x78
	.byte	0x1b
	.4byte	0x14c
	.4byte	.LLST7
	.byte	0xa
	.4byte	.LASF13
	.byte	0x1
	.byte	0x78
	.byte	0x27
	.4byte	0x25
	.4byte	.LLST8
	.byte	0xa
	.4byte	.LASF14
	.byte	0x1
	.byte	0x78
	.byte	0x3a
	.4byte	0x14c
	.4byte	.LLST9
	.byte	0xa
	.4byte	.LASF15
	.byte	0x1
	.byte	0x79
	.byte	0xa
	.4byte	0x25
	.4byte	.LLST10
	.byte	0x9
	.string	"mac"
	.byte	0x1
	.byte	0x79
	.byte	0x18
	.4byte	0xab
	.4byte	.LLST11
	.byte	0xb
	.4byte	.LVL27
	.4byte	0x152
	.byte	0xc
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0xc
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0xc
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x31
	.byte	0xc
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0xc
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0xc
	.byte	0x1
	.byte	0x5f
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0xa6
	.byte	0x8
	.4byte	.LASF17
	.byte	0x1
	.byte	0x2f
	.byte	0x5
	.4byte	0x3d
	.4byte	.LFB69
	.4byte	.LFE69-.LFB69
	.byte	0x1
	.byte	0x9c
	.4byte	0x2ef
	.byte	0x9
	.string	"key"
	.byte	0x1
	.byte	0x2f
	.byte	0x22
	.4byte	0x14c
	.4byte	.LLST0
	.byte	0xa
	.4byte	.LASF13
	.byte	0x1
	.byte	0x2f
	.byte	0x2e
	.4byte	0x25
	.4byte	.LLST1
	.byte	0xa
	.4byte	.LASF18
	.byte	0x1
	.byte	0x2f
	.byte	0x3e
	.4byte	0x25
	.4byte	.LLST2
	.byte	0xa
	.4byte	.LASF19
	.byte	0x1
	.byte	0x30
	.byte	0x14
	.4byte	0x2ef
	.4byte	.LLST3
	.byte	0x9
	.string	"len"
	.byte	0x1
	.byte	0x30
	.byte	0x2a
	.4byte	0x2f5
	.4byte	.LLST4
	.byte	0x9
	.string	"mac"
	.byte	0x1
	.byte	0x30
	.byte	0x33
	.4byte	0xab
	.4byte	.LLST5
	.byte	0xd
	.4byte	.LASF20
	.byte	0x1
	.byte	0x32
	.byte	0x10
	.4byte	0x2fb
	.byte	0x3
	.byte	0x91
	.byte	0xa0,0x7f
	.byte	0xe
	.string	"tk"
	.byte	0x1
	.byte	0x33
	.byte	0x10
	.4byte	0x30b
	.byte	0x3
	.byte	0x91
	.byte	0xa8,0x7e
	.byte	0xd
	.4byte	.LASF21
	.byte	0x1
	.byte	0x34
	.byte	0xc
	.4byte	0x31b
	.byte	0x3
	.byte	0x91
	.byte	0xc8,0x7e
	.byte	0xd
	.4byte	.LASF22
	.byte	0x1
	.byte	0x35
	.byte	0x9
	.4byte	0x32b
	.byte	0x3
	.byte	0x91
	.byte	0xf4,0x7e
	.byte	0xf
	.string	"i"
	.byte	0x1
	.byte	0x35
	.byte	0x13
	.4byte	0x25
	.4byte	.LLST6
	.byte	0x10
	.4byte	.LVL9
	.4byte	0x33b
	.4byte	0x240
	.byte	0xc
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0xc
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0x9c,0x7e
	.byte	0xc
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0x91
	.byte	0x98,0x7e
	.byte	0xc
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x10
	.4byte	.LVL10
	.4byte	0x347
	.4byte	0x260
	.byte	0xc
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xa0,0x7f
	.byte	0xc
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0xc
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.byte	0x10
	.4byte	.LVL11
	.4byte	0x353
	.4byte	0x274
	.byte	0xc
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x10
	.4byte	.LVL17
	.4byte	0x33b
	.4byte	0x29a
	.byte	0xc
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0x1
	.byte	0xc
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0xc
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x86
	.byte	0
	.byte	0xc
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x10
	.4byte	.LVL18
	.4byte	0x347
	.4byte	0x2b9
	.byte	0xc
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0xc
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0xc
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.byte	0x10
	.4byte	.LVL19
	.4byte	0x353
	.4byte	0x2cd
	.byte	0xc
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0xb
	.4byte	.LVL22
	.4byte	0x33b
	.byte	0xc
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x32
	.byte	0xc
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0xc
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x86
	.byte	0
	.byte	0xc
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x14c
	.byte	0x7
	.byte	0x4
	.4byte	0x31
	.byte	0x11
	.4byte	0x57
	.4byte	0x30b
	.byte	0x12
	.4byte	0x36
	.byte	0x3f
	.byte	0
	.byte	0x11
	.4byte	0x57
	.4byte	0x31b
	.byte	0x12
	.4byte	0x36
	.byte	0x1f
	.byte	0
	.byte	0x11
	.4byte	0x14c
	.4byte	0x32b
	.byte	0x12
	.4byte	0x36
	.byte	0xa
	.byte	0
	.byte	0x11
	.4byte	0x25
	.4byte	0x33b
	.byte	0x12
	.4byte	0x36
	.byte	0xa
	.byte	0
	.byte	0x13
	.4byte	.LASF23
	.4byte	.LASF23
	.byte	0x5
	.byte	0x66
	.byte	0x5
	.byte	0x13
	.4byte	.LASF24
	.4byte	.LASF24
	.byte	0x6
	.byte	0x21
	.byte	0x8
	.byte	0x13
	.4byte	.LASF25
	.4byte	.LASF25
	.byte	0x6
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
	.byte	0x3
	.byte	0x26
	.byte	0
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
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x8
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
	.byte	0x9
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
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xc
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
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
	.byte	0xf
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
	.byte	0x10
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
.LLST7:
	.4byte	.LVL23
	.4byte	.LVL27-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL27-1
	.4byte	.LFE70
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL23
	.4byte	.LVL27-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL27-1
	.4byte	.LFE70
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL23
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL26
	.4byte	.LVL27-1
	.2byte	0x2
	.byte	0x7d
	.byte	0
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x2
	.byte	0x91
	.byte	0x68
	.4byte	.LVL25
	.4byte	.LVL27-1
	.2byte	0x2
	.byte	0x7e
	.byte	0
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL23
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL25
	.4byte	.LVL27-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL27-1
	.4byte	.LFE70
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL4
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL8
	.4byte	.LVL9-1
	.2byte	0x2
	.byte	0x7b
	.byte	0
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL4
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL7
	.4byte	.LVL9-1
	.2byte	0x2
	.byte	0x7c
	.byte	0
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL2
	.4byte	.LVL4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL6
	.4byte	.LFE69
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL2
	.4byte	.LVL4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL5
	.4byte	.LFE69
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL2
	.4byte	.LVL4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL9-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL9-1
	.4byte	.LFE69
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5f
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LFE69
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x8
	.byte	0x7f
	.byte	0
	.byte	0x91
	.byte	0
	.byte	0x1c
	.byte	0x23
	.byte	0x60
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x8
	.byte	0x7f
	.byte	0
	.byte	0x91
	.byte	0
	.byte	0x1c
	.byte	0x23
	.byte	0x5f
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x8
	.byte	0x79
	.byte	0
	.byte	0x91
	.byte	0
	.byte	0x1c
	.byte	0x23
	.byte	0x60
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x8
	.byte	0x79
	.byte	0
	.byte	0x91
	.byte	0
	.byte	0x1c
	.byte	0x23
	.byte	0x5f
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
	.4byte	.LFB69
	.4byte	.LFE69-.LFB69
	.4byte	.LFB70
	.4byte	.LFE70-.LFB70
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB69
	.4byte	.LFE69
	.4byte	.LFB70
	.4byte	.LFE70
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF3:
	.string	"__uint8_t"
.LASF2:
	.string	"size_t"
.LASF23:
	.string	"sha256_vector"
.LASF6:
	.string	"short unsigned int"
.LASF22:
	.string	"_len"
.LASF15:
	.string	"data_len"
.LASF14:
	.string	"data"
.LASF4:
	.string	"unsigned char"
.LASF27:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/crypto/sha256.c"
.LASF16:
	.string	"hmac_sha256"
.LASF19:
	.string	"addr"
.LASF28:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/wpa_supplicant"
.LASF24:
	.string	"memset"
.LASF8:
	.string	"long unsigned int"
.LASF0:
	.string	"unsigned int"
.LASF10:
	.string	"long long unsigned int"
.LASF12:
	.string	"uint8_t"
.LASF18:
	.string	"num_elem"
.LASF9:
	.string	"long long int"
.LASF26:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
.LASF11:
	.string	"char"
.LASF25:
	.string	"memcpy"
.LASF5:
	.string	"short int"
.LASF17:
	.string	"hmac_sha256_vector"
.LASF13:
	.string	"key_len"
.LASF7:
	.string	"long int"
.LASF1:
	.string	"signed char"
.LASF20:
	.string	"k_pad"
.LASF21:
	.string	"_addr"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
