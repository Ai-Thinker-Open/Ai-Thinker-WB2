	.file	"aes-wrap.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.aes_wrap,"ax",@progbits
	.align	1
	.globl	aes_wrap
	.type	aes_wrap, @function
aes_wrap:
.LFB69:
	.file 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/crypto/aes-wrap.c"
	.loc 1 41 1
	.cfi_startproc
.LVL0:
	.loc 1 42 2
	.loc 1 43 2
	.loc 1 44 2
	.loc 1 46 2
	.loc 1 47 2
	.loc 1 50 2
	.loc 1 41 1 is_stmt 0
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	s1,52(sp)
	sw	s2,48(sp)
	sw	s4,40(sp)
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 20, -24
	mv	s1,a0
	mv	s4,a1
	mv	s2,a2
	.loc 1 50 2
	li	a1,166
.LVL1:
	li	a2,8
.LVL2:
	mv	a0,a3
.LVL3:
	.loc 1 41 1
	sw	ra,60(sp)
	sw	s0,56(sp)
	sw	s3,44(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 19, -20
	mv	s0,a3
	sw	s5,36(sp)
	sw	s6,32(sp)
	sw	s7,28(sp)
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 23, -36
	.loc 1 50 2
	call	memset
.LVL4:
	.loc 1 51 2 is_stmt 1
	mv	a1,s2
	slli	a2,s4,3
	addi	a0,s0,8
.LVL5:
	call	memcpy
.LVL6:
	.loc 1 53 2
	.loc 1 53 8 is_stmt 0
	li	a1,16
	mv	a0,s1
	call	wpa_aes_encrypt_init
.LVL7:
	.loc 1 54 2 is_stmt 1
	.loc 1 54 5 is_stmt 0
	beq	a0,zero,.L7
	mv	s1,a0
.LVL8:
	andi	s7,s4,0xff
	li	s3,0
	li	s6,6
.LVL9:
.L3:
	.loc 1 66 10
	li	s2,1
	j	.L6
.LVL10:
.L4:
	.loc 1 67 4 is_stmt 1 discriminator 3
	li	a2,8
	mv	a1,s0
	mv	a0,sp
	call	memcpy
.LVL11:
	.loc 1 68 4 discriminator 3
	li	a2,8
	mv	a1,s5
	addi	a0,sp,8
	call	memcpy
.LVL12:
	.loc 1 69 4 discriminator 3
	mv	a2,sp
	mv	a1,sp
	mv	a0,s1
	call	wpa_aes_encrypt
.LVL13:
	.loc 1 70 4 discriminator 3
	li	a2,8
	mv	a1,sp
	mv	a0,s0
	call	memcpy
.LVL14:
	.loc 1 71 4 discriminator 3
	.loc 1 71 9 is_stmt 0 discriminator 3
	lbu	a4,7(s0)
	add	a5,s3,s2
	.loc 1 72 4 discriminator 3
	li	a2,8
	.loc 1 71 9 discriminator 3
	xor	a5,a5,a4
	sb	a5,7(s0)
	.loc 1 72 4 is_stmt 1 discriminator 3
	addi	a1,sp,8
	mv	a0,s5
	call	memcpy
.LVL15:
	.loc 1 73 4 discriminator 3
	.loc 1 66 23 discriminator 3
	.loc 1 66 24 is_stmt 0 discriminator 3
	addi	s2,s2,1
.LVL16:
.L6:
	slli	s5,s2,3
	add	s5,s0,s5
.LVL17:
	.loc 1 66 15 is_stmt 1 discriminator 1
	.loc 1 66 3 is_stmt 0 discriminator 1
	ble	s2,s4,.L4
	.loc 1 64 22 is_stmt 1 discriminator 2
.LVL18:
	.loc 1 64 14 discriminator 2
	.loc 1 64 2 is_stmt 0 discriminator 2
	add	s3,s3,s7
	addi	s6,s6,-1
.LVL19:
	andi	s3,s3,0xff
	bne	s6,zero,.L3
	.loc 1 76 2 is_stmt 1
	mv	a0,s1
	call	wpa_aes_encrypt_deinit
.LVL20:
	.loc 1 84 2
	.loc 1 84 9 is_stmt 0
	li	a0,0
.LVL21:
.L1:
	.loc 1 85 1
	lw	ra,60(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
.LVL22:
	lw	s1,52(sp)
	.cfi_restore 9
	lw	s2,48(sp)
	.cfi_restore 18
	lw	s3,44(sp)
	.cfi_restore 19
	lw	s4,40(sp)
	.cfi_restore 20
.LVL23:
	lw	s5,36(sp)
	.cfi_restore 21
	lw	s6,32(sp)
	.cfi_restore 22
	lw	s7,28(sp)
	.cfi_restore 23
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
.LVL24:
.L7:
	.cfi_restore_state
	.loc 1 55 10
	li	a0,-1
.LVL25:
	j	.L1
	.cfi_endproc
.LFE69:
	.size	aes_wrap, .-aes_wrap
	.text
.Letext0:
	.file 2 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 3 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 4 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h"
	.file 5 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/crypto/aes.h"
	.file 6 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/utils/common.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x2a5
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF19
	.byte	0xc
	.4byte	.LASF20
	.4byte	.LASF21
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
	.4byte	.LASF22
	.byte	0x1
	.byte	0x28
	.byte	0x5
	.4byte	0x2c
	.4byte	.LFB69
	.4byte	.LFE69-.LFB69
	.byte	0x1
	.byte	0x9c
	.4byte	0x256
	.byte	0xa
	.string	"kek"
	.byte	0x1
	.byte	0x28
	.byte	0x18
	.4byte	0x256
	.4byte	.LLST0
	.byte	0xa
	.string	"n"
	.byte	0x1
	.byte	0x28
	.byte	0x21
	.4byte	0x2c
	.4byte	.LLST1
	.byte	0xb
	.4byte	.LASF12
	.byte	0x1
	.byte	0x28
	.byte	0x2e
	.4byte	0x256
	.4byte	.LLST2
	.byte	0xb
	.4byte	.LASF13
	.byte	0x1
	.byte	0x28
	.byte	0x39
	.4byte	0x9c
	.4byte	.LLST3
	.byte	0xc
	.string	"a"
	.byte	0x1
	.byte	0x2a
	.byte	0x6
	.4byte	0x9c
	.4byte	.LLST4
	.byte	0xc
	.string	"r"
	.byte	0x1
	.byte	0x2a
	.byte	0xa
	.4byte	0x9c
	.4byte	.LLST5
	.byte	0xd
	.string	"b"
	.byte	0x1
	.byte	0x2a
	.byte	0xd
	.4byte	0x25c
	.byte	0x2
	.byte	0x91
	.byte	0x40
	.byte	0xc
	.string	"i"
	.byte	0x1
	.byte	0x2b
	.byte	0x6
	.4byte	0x2c
	.4byte	.LLST6
	.byte	0xc
	.string	"j"
	.byte	0x1
	.byte	0x2b
	.byte	0x9
	.4byte	0x2c
	.4byte	.LLST7
	.byte	0xc
	.string	"ctx"
	.byte	0x1
	.byte	0x2c
	.byte	0x8
	.4byte	0x77
	.4byte	.LLST8
	.byte	0xe
	.4byte	.LVL4
	.4byte	0x26c
	.4byte	0x16e
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
	.byte	0x8
	.byte	0xa6
	.byte	0xf
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x38
	.byte	0
	.byte	0xe
	.4byte	.LVL6
	.4byte	0x278
	.4byte	0x190
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x8
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0xf
	.byte	0x1
	.byte	0x5c
	.byte	0x4
	.byte	0x84
	.byte	0
	.byte	0x33
	.byte	0x24
	.byte	0
	.byte	0xe
	.4byte	.LVL7
	.4byte	0x284
	.4byte	0x1a9
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x40
	.byte	0
	.byte	0xe
	.4byte	.LVL11
	.4byte	0x278
	.4byte	0x1c8
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0xf
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x38
	.byte	0
	.byte	0xe
	.4byte	.LVL12
	.4byte	0x278
	.4byte	0x1e7
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
	.4byte	.LVL13
	.4byte	0x290
	.4byte	0x207
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0xf
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0
	.byte	0xe
	.4byte	.LVL14
	.4byte	0x278
	.4byte	0x226
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
	.byte	0x72
	.byte	0
	.byte	0xf
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x38
	.byte	0
	.byte	0xe
	.4byte	.LVL15
	.4byte	0x278
	.4byte	0x245
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
	.byte	0x10
	.4byte	.LVL20
	.4byte	0x29c
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0x4
	.4byte	0x97
	.byte	0x11
	.4byte	0x8c
	.4byte	0x26c
	.byte	0x12
	.4byte	0x25
	.byte	0xf
	.byte	0
	.byte	0x13
	.4byte	.LASF14
	.4byte	.LASF14
	.byte	0x4
	.byte	0x21
	.byte	0x8
	.byte	0x13
	.4byte	.LASF15
	.4byte	.LASF15
	.byte	0x4
	.byte	0x1f
	.byte	0x8
	.byte	0x13
	.4byte	.LASF16
	.4byte	.LASF16
	.byte	0x5
	.byte	0x17
	.byte	0x8
	.byte	0x13
	.4byte	.LASF17
	.4byte	.LASF17
	.byte	0x5
	.byte	0x18
	.byte	0x6
	.byte	0x13
	.4byte	.LASF18
	.4byte	.LASF18
	.byte	0x5
	.byte	0x19
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
	.byte	0x18
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
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL8
	.4byte	.LVL24
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LFE69
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL1
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LFE69
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL2
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL9
	.4byte	.LVL24
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LFE69
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL0
	.4byte	.LVL4-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL4-1
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL22
	.4byte	.LVL24
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LFE69
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL0
	.4byte	.LVL4-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL4-1
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL22
	.4byte	.LVL24
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LFE69
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL0
	.4byte	.LVL4-1
	.2byte	0x3
	.byte	0x7d
	.byte	0x8
	.byte	0x9f
	.4byte	.LVL4-1
	.4byte	.LVL5
	.2byte	0x3
	.byte	0x78
	.byte	0x8
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL6-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL6-1
	.4byte	.LVL9
	.2byte	0x3
	.byte	0x78
	.byte	0x8
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0xa
	.byte	0x82
	.byte	0
	.byte	0x33
	.byte	0x24
	.byte	0x78
	.byte	0
	.byte	0x22
	.byte	0x23
	.byte	0x8
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL24
	.4byte	.LFE69
	.2byte	0x3
	.byte	0x78
	.byte	0x8
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL10
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL17
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL9
	.4byte	.LVL18
	.2byte	0x5
	.byte	0x36
	.byte	0x86
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x5
	.byte	0x37
	.byte	0x86
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LVL21
	.2byte	0x5
	.byte	0x36
	.byte	0x86
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL7
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL9
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x5a
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
.LASF12:
	.string	"plain"
.LASF10:
	.string	"__uint8_t"
.LASF14:
	.string	"memset"
.LASF1:
	.string	"signed char"
.LASF2:
	.string	"unsigned char"
.LASF6:
	.string	"long unsigned int"
.LASF4:
	.string	"short unsigned int"
.LASF21:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/wpa_supplicant"
.LASF13:
	.string	"cipher"
.LASF22:
	.string	"aes_wrap"
.LASF17:
	.string	"wpa_aes_encrypt"
.LASF0:
	.string	"unsigned int"
.LASF8:
	.string	"long long unsigned int"
.LASF11:
	.string	"uint8_t"
.LASF16:
	.string	"wpa_aes_encrypt_init"
.LASF7:
	.string	"long long int"
.LASF19:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
.LASF9:
	.string	"char"
.LASF15:
	.string	"memcpy"
.LASF3:
	.string	"short int"
.LASF20:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/crypto/aes-wrap.c"
.LASF5:
	.string	"long int"
.LASF18:
	.string	"wpa_aes_encrypt_deinit"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
