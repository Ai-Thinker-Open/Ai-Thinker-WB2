	.file	"crypto_internal-modexp.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.crypto_mod_exp,"ax",@progbits
	.align	1
	.globl	crypto_mod_exp
	.type	crypto_mod_exp, @function
crypto_mod_exp:
.LFB69:
	.file 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/crypto/crypto_internal-modexp.c"
	.loc 1 40 1
	.cfi_startproc
.LVL0:
	.loc 1 41 2
	.loc 1 42 2
	.loc 1 43 5
	.loc 1 40 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	s1,20(sp)
	sw	s2,16(sp)
	sw	s3,12(sp)
	sw	s4,8(sp)
	sw	s5,4(sp)
	sw	s6,0(sp)
	sw	ra,28(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 1, -4
	.loc 1 40 1
	mv	s2,a2
	mv	s3,a3
	mv	s0,a4
	mv	s1,a5
	mv	s5,a6
	mv	s6,a7
	.loc 1 43 20
	call	crypto_bignum_init_set
.LVL1:
	mv	s4,a0
.LVL2:
	.loc 1 43 8
	bne	a0,zero,.L2
.LVL3:
.L4:
	.loc 1 47 13
	li	s0,-1
.LVL4:
	.loc 1 41 76
	li	s1,0
.LVL5:
	.loc 1 41 56
	li	s2,0
.LVL6:
	.loc 1 41 40
	li	s3,0
.LVL7:
.L3:
	.loc 1 58 5 is_stmt 1
	mv	a0,s4
	li	a1,0
	call	crypto_bignum_deinit
.LVL8:
	.loc 1 59 5
	mv	a0,s3
	li	a1,0
	call	crypto_bignum_deinit
.LVL9:
	.loc 1 60 5
	mv	a0,s2
	li	a1,0
	call	crypto_bignum_deinit
.LVL10:
	.loc 1 61 5
	mv	a0,s1
	li	a1,0
	call	crypto_bignum_deinit
.LVL11:
	.loc 1 63 2
	.loc 1 64 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	mv	a0,s0
	lw	s0,24(sp)
	.cfi_restore 8
.LVL12:
	lw	s1,20(sp)
	.cfi_restore 9
.LVL13:
	lw	s2,16(sp)
	.cfi_restore 18
.LVL14:
	lw	s3,12(sp)
	.cfi_restore 19
.LVL15:
	lw	s4,8(sp)
	.cfi_restore 20
.LVL16:
	lw	s5,4(sp)
	.cfi_restore 21
.LVL17:
	lw	s6,0(sp)
	.cfi_restore 22
.LVL18:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL19:
.L2:
	.cfi_restore_state
	.loc 1 44 23 discriminator 1
	mv	a1,s3
	mv	a0,s2
.LVL20:
	call	crypto_bignum_init_set
.LVL21:
	mv	s3,a0
.LVL22:
	.loc 1 43 67 discriminator 1
	beq	a0,zero,.L4
	.loc 1 45 27
	mv	a1,s1
	mv	a0,s0
.LVL23:
	call	crypto_bignum_init_set
.LVL24:
	mv	s2,a0
.LVL25:
	.loc 1 44 72
	beq	a0,zero,.L5
	.loc 1 46 26
	call	crypto_bignum_init
.LVL26:
	mv	s1,a0
.LVL27:
	.loc 1 47 13
	li	s0,-1
.LVL28:
	.loc 1 45 80
	beq	a0,zero,.L3
	.loc 1 51 5 is_stmt 1
	.loc 1 51 16 is_stmt 0
	mv	a3,a0
	mv	a2,s2
	mv	a1,s3
	mv	a0,s4
	call	crypto_bignum_exptmod
.LVL29:
	mv	s0,a0
.LVL30:
	.loc 1 51 8
	bne	a0,zero,.L3
	.loc 1 55 2 is_stmt 1
	.loc 1 55 8 is_stmt 0
	lw	a2,0(s6)
	mv	a1,s5
	mv	a0,s1
	call	crypto_bignum_write_binary
.LVL31:
	mv	s0,a0
.LVL32:
	j	.L3
.LVL33:
.L5:
	.loc 1 41 76
	li	s1,0
.LVL34:
	.loc 1 47 13
	li	s0,-1
.LVL35:
	j	.L3
	.cfi_endproc
.LFE69:
	.size	crypto_mod_exp, .-crypto_mod_exp
	.text
.Letext0:
	.file 2 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h"
	.file 3 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 4 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 5 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/blcrypto_suite/inc/blcrypto_suite/blcrypto_suite_supplicant_api.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x2e1
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF30
	.byte	0xc
	.4byte	.LASF31
	.4byte	.LASF32
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.4byte	.LASF2
	.byte	0x2
	.byte	0xd1
	.byte	0x16
	.4byte	0x31
	.byte	0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1
	.byte	0x2
	.4byte	.LASF3
	.byte	0x3
	.byte	0x2b
	.byte	0x17
	.4byte	0x52
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF4
	.byte	0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF5
	.byte	0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF6
	.byte	0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.byte	0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.byte	0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF9
	.byte	0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF11
	.byte	0x2
	.4byte	.LASF12
	.byte	0x4
	.byte	0x18
	.byte	0x13
	.4byte	0x46
	.byte	0x5
	.4byte	0x8a
	.byte	0x6
	.4byte	.LASF33
	.byte	0x1
	.byte	0x24
	.byte	0x5
	.4byte	0x38
	.4byte	.LFB69
	.4byte	.LFE69-.LFB69
	.byte	0x1
	.byte	0x9c
	.4byte	0x28b
	.byte	0x7
	.4byte	.LASF13
	.byte	0x1
	.byte	0x24
	.byte	0x23
	.4byte	0x28b
	.4byte	.LLST0
	.byte	0x7
	.4byte	.LASF14
	.byte	0x1
	.byte	0x24
	.byte	0x30
	.4byte	0x25
	.4byte	.LLST1
	.byte	0x7
	.4byte	.LASF15
	.byte	0x1
	.byte	0x25
	.byte	0x18
	.4byte	0x28b
	.4byte	.LLST2
	.byte	0x7
	.4byte	.LASF16
	.byte	0x1
	.byte	0x25
	.byte	0x26
	.4byte	0x25
	.4byte	.LLST3
	.byte	0x7
	.4byte	.LASF17
	.byte	0x1
	.byte	0x26
	.byte	0x18
	.4byte	0x28b
	.4byte	.LLST4
	.byte	0x7
	.4byte	.LASF18
	.byte	0x1
	.byte	0x26
	.byte	0x28
	.4byte	0x25
	.4byte	.LLST5
	.byte	0x7
	.4byte	.LASF19
	.byte	0x1
	.byte	0x27
	.byte	0x12
	.4byte	0x291
	.4byte	.LLST6
	.byte	0x7
	.4byte	.LASF20
	.byte	0x1
	.byte	0x27
	.byte	0x22
	.4byte	0x297
	.4byte	.LLST7
	.byte	0x8
	.4byte	.LASF21
	.byte	0x1
	.byte	0x29
	.byte	0x18
	.4byte	0x2a2
	.4byte	.LLST8
	.byte	0x8
	.4byte	.LASF22
	.byte	0x1
	.byte	0x29
	.byte	0x28
	.4byte	0x2a2
	.4byte	.LLST9
	.byte	0x8
	.4byte	.LASF23
	.byte	0x1
	.byte	0x29
	.byte	0x38
	.4byte	0x2a2
	.4byte	.LLST10
	.byte	0x8
	.4byte	.LASF24
	.byte	0x1
	.byte	0x29
	.byte	0x4c
	.4byte	0x2a2
	.4byte	.LLST11
	.byte	0x9
	.string	"ret"
	.byte	0x1
	.byte	0x2a
	.byte	0x6
	.4byte	0x38
	.4byte	.LLST12
	.byte	0xa
	.4byte	.LASF34
	.byte	0x1
	.byte	0x39
	.byte	0x1
	.4byte	.L3
	.byte	0xb
	.4byte	.LVL1
	.4byte	0x2a8
	.4byte	0x1ad
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
	.byte	0
	.byte	0xb
	.4byte	.LVL8
	.4byte	0x2b4
	.4byte	0x1c6
	.byte	0xc
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0xc
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0xb
	.4byte	.LVL9
	.4byte	0x2b4
	.4byte	0x1df
	.byte	0xc
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0xc
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0xb
	.4byte	.LVL10
	.4byte	0x2b4
	.4byte	0x1f8
	.byte	0xc
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0xc
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0xb
	.4byte	.LVL11
	.4byte	0x2b4
	.4byte	0x211
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
	.byte	0
	.byte	0xb
	.4byte	.LVL21
	.4byte	0x2a8
	.4byte	0x22b
	.byte	0xc
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0xc
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0
	.byte	0xb
	.4byte	.LVL24
	.4byte	0x2a8
	.4byte	0x245
	.byte	0xc
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0xc
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0xd
	.4byte	.LVL26
	.4byte	0x2c0
	.byte	0xb
	.4byte	.LVL29
	.4byte	0x2cc
	.4byte	0x274
	.byte	0xc
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0xc
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0xc
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0xc
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0xe
	.4byte	.LVL31
	.4byte	0x2d8
	.byte	0xc
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0xc
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x96
	.byte	0xf
	.byte	0x4
	.4byte	0x8a
	.byte	0xf
	.byte	0x4
	.4byte	0x25
	.byte	0x10
	.4byte	.LASF35
	.byte	0xf
	.byte	0x4
	.4byte	0x29d
	.byte	0x11
	.4byte	.LASF25
	.4byte	.LASF25
	.byte	0x5
	.byte	0x1c
	.byte	0x18
	.byte	0x11
	.4byte	.LASF26
	.4byte	.LASF26
	.byte	0x5
	.byte	0x23
	.byte	0x6
	.byte	0x11
	.4byte	.LASF27
	.4byte	.LASF27
	.byte	0x5
	.byte	0x14
	.byte	0x18
	.byte	0x11
	.4byte	.LASF28
	.4byte	.LASF28
	.byte	0x5
	.byte	0x51
	.byte	0x5
	.byte	0x11
	.4byte	.LASF29
	.4byte	.LASF29
	.byte	0x5
	.byte	0x26
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
	.byte	0x7
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
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x9
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
	.byte	0xa
	.byte	0xa
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x11
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0xb
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
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xe
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xf
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x10
	.byte	0x13
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3c
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x11
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
	.4byte	.LVL1-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1-1
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
	.4byte	.LVL1-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL1-1
	.4byte	.LFE69
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL1-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL1-1
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL6
	.4byte	.LVL19
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL25
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
	.4byte	.LVL1-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL1-1
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL3
	.4byte	.LVL19
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL22
	.4byte	.LFE69
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL0
	.4byte	.LVL1-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL1-1
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL4
	.4byte	.LVL19
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL28
	.4byte	.LVL33
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL35
	.4byte	.LFE69
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL0
	.4byte	.LVL1-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL1-1
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL5
	.4byte	.LVL19
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5f
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL27
	.4byte	.LVL33
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5f
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL34
	.4byte	.LFE69
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL0
	.4byte	.LVL1-1
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL1-1
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL17
	.4byte	.LVL19
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x60
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LFE69
	.2byte	0x1
	.byte	0x65
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL0
	.4byte	.LVL1-1
	.2byte	0x1
	.byte	0x61
	.4byte	.LVL1-1
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x61
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LFE69
	.2byte	0x1
	.byte	0x66
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL3
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL20
	.4byte	.LFE69
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL0
	.4byte	.LVL3
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL19
	.4byte	.LVL22
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL23
	.4byte	.LFE69
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL0
	.4byte	.LVL7
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL19
	.4byte	.LVL25
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LVL26-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL26-1
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL33
	.4byte	.LFE69
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL0
	.4byte	.LVL7
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL19
	.4byte	.LVL27
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL33
	.4byte	.LFE69
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL0
	.4byte	.LVL7
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL12
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL19
	.4byte	.LVL30
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL33
	.4byte	.LFE69
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
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
.LASF27:
	.string	"crypto_bignum_init"
.LASF3:
	.string	"__uint8_t"
.LASF31:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/crypto/crypto_internal-modexp.c"
.LASF16:
	.string	"power_len"
.LASF12:
	.string	"uint8_t"
.LASF25:
	.string	"crypto_bignum_init_set"
.LASF18:
	.string	"modulus_len"
.LASF15:
	.string	"power"
.LASF26:
	.string	"crypto_bignum_deinit"
.LASF22:
	.string	"bn_exp"
.LASF4:
	.string	"unsigned char"
.LASF14:
	.string	"base_len"
.LASF13:
	.string	"base"
.LASF6:
	.string	"short unsigned int"
.LASF2:
	.string	"size_t"
.LASF32:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/wpa_supplicant"
.LASF23:
	.string	"bn_modulus"
.LASF8:
	.string	"long unsigned int"
.LASF20:
	.string	"result_len"
.LASF0:
	.string	"unsigned int"
.LASF10:
	.string	"long long unsigned int"
.LASF21:
	.string	"bn_base"
.LASF19:
	.string	"result"
.LASF17:
	.string	"modulus"
.LASF9:
	.string	"long long int"
.LASF30:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
.LASF11:
	.string	"char"
.LASF28:
	.string	"crypto_bignum_exptmod"
.LASF34:
	.string	"clean"
.LASF5:
	.string	"short int"
.LASF35:
	.string	"crypto_bignum"
.LASF7:
	.string	"long int"
.LASF33:
	.string	"crypto_mod_exp"
.LASF24:
	.string	"bn_result"
.LASF1:
	.string	"signed char"
.LASF29:
	.string	"crypto_bignum_write_binary"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
