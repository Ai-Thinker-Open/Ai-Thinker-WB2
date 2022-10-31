	.file	"sha256-internal.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.sha256_vector,"ax",@progbits
	.align	1
	.globl	sha256_vector
	.type	sha256_vector, @function
sha256_vector:
.LFB69:
	.file 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/crypto/sha256-internal.c"
	.loc 1 56 1
	.cfi_startproc
.LVL0:
	.loc 1 57 5
	.loc 1 59 5
	.loc 1 56 1 is_stmt 0
	addi	sp,sp,-192
	.cfi_def_cfa_offset 192
	sw	ra,188(sp)
	sw	s0,184(sp)
	sw	s1,180(sp)
	sw	s2,176(sp)
	sw	s3,172(sp)
	sw	s4,168(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.loc 1 56 1
	mv	s3,a1
	mv	s4,a2
	mv	s1,a3
	mv	s2,a0
	.loc 1 59 5
	call	bl_sha_mutex_take
.LVL1:
	.loc 1 60 5 is_stmt 1
	li	a1,0
	addi	a0,sp,12
	call	bl_sha_init
.LVL2:
	.loc 1 61 5
.LBB2:
	.loc 1 61 10
	.loc 1 61 17 is_stmt 0
	li	s0,0
.LVL3:
.L2:
	.loc 1 61 24 is_stmt 1 discriminator 1
	.loc 1 61 5 is_stmt 0 discriminator 1
	bne	s0,s2,.L3
.LBE2:
	.loc 1 64 5 is_stmt 1
	mv	a1,s1
	addi	a0,sp,12
	call	bl_sha_finish
.LVL4:
	.loc 1 65 5
	call	bl_sha_mutex_give
.LVL5:
	.loc 1 66 5
	.loc 1 67 1 is_stmt 0
	lw	ra,188(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,184(sp)
	.cfi_restore 8
.LVL6:
	lw	s1,180(sp)
	.cfi_restore 9
.LVL7:
	lw	s2,176(sp)
	.cfi_restore 18
.LVL8:
	lw	s3,172(sp)
	.cfi_restore 19
.LVL9:
	lw	s4,168(sp)
	.cfi_restore 20
.LVL10:
	li	a0,0
	addi	sp,sp,192
	.cfi_def_cfa_offset 0
	jr	ra
.LVL11:
.L3:
	.cfi_restore_state
.LBB3:
	.loc 1 62 9 is_stmt 1 discriminator 3
	slli	a5,s0,2
	add	a4,s4,a5
	add	a5,s3,a5
	lw	a2,0(a4)
	lw	a1,0(a5)
	addi	a0,sp,12
	.loc 1 61 39 is_stmt 0 discriminator 3
	addi	s0,s0,1
.LVL12:
	.loc 1 62 9 discriminator 3
	call	bl_sha_update
.LVL13:
	.loc 1 61 38 is_stmt 1 discriminator 3
	j	.L2
.LBE3:
	.cfi_endproc
.LFE69:
	.size	sha256_vector, .-sha256_vector
	.text
.Letext0:
	.file 2 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h"
	.file 3 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 4 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 5 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/bl602_hal/bl_sec.h"
	.file 6 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/utils/common.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x2c1
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF32
	.byte	0xc
	.4byte	.LASF33
	.4byte	.LASF34
	.4byte	.Ldebug_ranges0+0x18
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
	.byte	0x2
	.4byte	.LASF8
	.byte	0x3
	.byte	0x4f
	.byte	0x1b
	.4byte	0x7f
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.byte	0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF10
	.byte	0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.byte	0x2
	.4byte	.LASF13
	.byte	0x4
	.byte	0x18
	.byte	0x13
	.4byte	0x4b
	.byte	0x2
	.4byte	.LASF14
	.byte	0x4
	.byte	0x30
	.byte	0x14
	.4byte	0x73
	.byte	0x6
	.string	"u8"
	.byte	0x6
	.byte	0x16
	.byte	0x11
	.4byte	0x9b
	.byte	0x3
	.4byte	0xb3
	.byte	0x7
	.byte	0x4
	.4byte	0xb3
	.byte	0x8
	.byte	0x14
	.byte	0x5
	.byte	0xb
	.byte	0x9
	.4byte	0x107
	.byte	0x9
	.4byte	.LASF15
	.byte	0x5
	.byte	0xc
	.byte	0xe
	.4byte	0x107
	.byte	0
	.byte	0x9
	.4byte	.LASF16
	.byte	0x5
	.byte	0xd
	.byte	0xf
	.4byte	0x117
	.byte	0x8
	.byte	0x9
	.4byte	.LASF17
	.byte	0x5
	.byte	0xe
	.byte	0xf
	.4byte	0x117
	.byte	0xc
	.byte	0x9
	.4byte	.LASF18
	.byte	0x5
	.byte	0xf
	.byte	0xd
	.4byte	0x9b
	.byte	0x10
	.byte	0
	.byte	0xa
	.4byte	0xa7
	.4byte	0x117
	.byte	0xb
	.4byte	0x36
	.byte	0x1
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0xa7
	.byte	0x2
	.4byte	.LASF19
	.byte	0x5
	.byte	0x10
	.byte	0x3
	.4byte	0xc9
	.byte	0xc
	.byte	0x7
	.byte	0x4
	.4byte	0x36
	.byte	0x5
	.byte	0x13
	.byte	0xe
	.4byte	0x14a
	.byte	0xd
	.4byte	.LASF20
	.byte	0
	.byte	0xd
	.4byte	.LASF21
	.byte	0x1
	.byte	0xd
	.4byte	.LASF22
	.byte	0x2
	.byte	0
	.byte	0xe
	.4byte	.LASF35
	.byte	0x94
	.byte	0x5
	.byte	0x19
	.byte	0x10
	.4byte	0x17f
	.byte	0x9
	.4byte	.LASF23
	.byte	0x5
	.byte	0x1a
	.byte	0x22
	.4byte	0x11d
	.byte	0
	.byte	0xf
	.string	"tmp"
	.byte	0x5
	.byte	0x1b
	.byte	0xe
	.4byte	0x17f
	.byte	0x14
	.byte	0xf
	.string	"pad"
	.byte	0x5
	.byte	0x1c
	.byte	0xe
	.4byte	0x17f
	.byte	0x54
	.byte	0
	.byte	0xa
	.4byte	0xa7
	.4byte	0x18f
	.byte	0xb
	.4byte	0x36
	.byte	0xf
	.byte	0
	.byte	0x2
	.4byte	.LASF24
	.byte	0x5
	.byte	0x1d
	.byte	0x3
	.4byte	0x14a
	.byte	0x10
	.4byte	.LASF36
	.byte	0x1
	.byte	0x37
	.byte	0x5
	.4byte	0x3d
	.4byte	.LFB69
	.4byte	.LFE69-.LFB69
	.byte	0x1
	.byte	0x9c
	.4byte	0x276
	.byte	0x11
	.4byte	.LASF25
	.byte	0x1
	.byte	0x37
	.byte	0x1a
	.4byte	0x25
	.4byte	.LLST0
	.byte	0x11
	.4byte	.LASF26
	.byte	0x1
	.byte	0x37
	.byte	0x2e
	.4byte	0x276
	.4byte	.LLST1
	.byte	0x12
	.string	"len"
	.byte	0x1
	.byte	0x37
	.byte	0x44
	.4byte	0x282
	.4byte	.LLST2
	.byte	0x12
	.string	"mac"
	.byte	0x1
	.byte	0x37
	.byte	0x4d
	.4byte	0xc3
	.4byte	.LLST3
	.byte	0x13
	.string	"sha"
	.byte	0x1
	.byte	0x39
	.byte	0x12
	.4byte	0x18f
	.byte	0x3
	.byte	0x91
	.byte	0xcc,0x7e
	.byte	0x14
	.4byte	.Ldebug_ranges0+0
	.4byte	0x22e
	.byte	0x15
	.string	"i"
	.byte	0x1
	.byte	0x3d
	.byte	0x11
	.4byte	0x25
	.4byte	.LLST4
	.byte	0x16
	.4byte	.LVL13
	.4byte	0x288
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xcc,0x7e
	.byte	0
	.byte	0
	.byte	0x18
	.4byte	.LVL1
	.4byte	0x294
	.byte	0x19
	.4byte	.LVL2
	.4byte	0x2a0
	.4byte	0x251
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xcc,0x7e
	.byte	0x17
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x19
	.4byte	.LVL4
	.4byte	0x2ac
	.4byte	0x26c
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xcc,0x7e
	.byte	0x17
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x18
	.4byte	.LVL5
	.4byte	0x2b8
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x27c
	.byte	0x7
	.byte	0x4
	.4byte	0xbe
	.byte	0x7
	.byte	0x4
	.4byte	0x31
	.byte	0x1a
	.4byte	.LASF27
	.4byte	.LASF27
	.byte	0x5
	.byte	0x30
	.byte	0x5
	.byte	0x1a
	.4byte	.LASF28
	.4byte	.LASF28
	.byte	0x5
	.byte	0x2d
	.byte	0x5
	.byte	0x1a
	.4byte	.LASF29
	.4byte	.LASF29
	.byte	0x5
	.byte	0x2f
	.byte	0x6
	.byte	0x1a
	.4byte	.LASF30
	.4byte	.LASF30
	.byte	0x5
	.byte	0x31
	.byte	0x5
	.byte	0x1a
	.4byte	.LASF31
	.4byte	.LASF31
	.byte	0x5
	.byte	0x2e
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
	.byte	0x10
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
	.byte	0x11
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
	.byte	0x12
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
	.byte	0x13
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
	.byte	0x14
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0x1
	.byte	0x13
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
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x16
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
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
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x19
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
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL8
	.4byte	.LVL11
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LFE69
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL1-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL1-1
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL9
	.4byte	.LVL11
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LFE69
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL1-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL1-1
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LFE69
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL0
	.4byte	.LVL1-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL1-1
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL7
	.4byte	.LVL11
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LFE69
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x3
	.byte	0x78
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LFE69
	.2byte	0x1
	.byte	0x58
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
	.4byte	.LBB2
	.4byte	.LBE2
	.4byte	.LBB3
	.4byte	.LBE3
	.4byte	0
	.4byte	0
	.4byte	.LFB69
	.4byte	.LFE69
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF24:
	.string	"bl_sha_ctx_t"
.LASF27:
	.string	"bl_sha_update"
.LASF2:
	.string	"size_t"
.LASF3:
	.string	"__uint8_t"
.LASF17:
	.string	"shaPadding"
.LASF36:
	.string	"sha256_vector"
.LASF6:
	.string	"short unsigned int"
.LASF21:
	.string	"BL_SHA224"
.LASF31:
	.string	"bl_sha_mutex_give"
.LASF19:
	.string	"_bl_sha_SEC_Eng_SHA256_Ctx_t"
.LASF4:
	.string	"unsigned char"
.LASF9:
	.string	"long unsigned int"
.LASF26:
	.string	"addr"
.LASF34:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/wpa_supplicant"
.LASF28:
	.string	"bl_sha_mutex_take"
.LASF8:
	.string	"__uint32_t"
.LASF30:
	.string	"bl_sha_finish"
.LASF5:
	.string	"short int"
.LASF33:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/crypto/sha256-internal.c"
.LASF22:
	.string	"BL_SHA1"
.LASF0:
	.string	"unsigned int"
.LASF11:
	.string	"long long unsigned int"
.LASF13:
	.string	"uint8_t"
.LASF23:
	.string	"sha_ctx"
.LASF15:
	.string	"total"
.LASF25:
	.string	"num_elem"
.LASF10:
	.string	"long long int"
.LASF32:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
.LASF12:
	.string	"char"
.LASF20:
	.string	"BL_SHA256"
.LASF16:
	.string	"shaBuf"
.LASF14:
	.string	"uint32_t"
.LASF7:
	.string	"long int"
.LASF29:
	.string	"bl_sha_init"
.LASF1:
	.string	"signed char"
.LASF18:
	.string	"shaFeed"
.LASF35:
	.string	"bl_sha_ctx"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
