	.file	"sha256-prf.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.sha256_prf_bits,"ax",@progbits
	.align	1
	.globl	sha256_prf_bits
	.type	sha256_prf_bits, @function
sha256_prf_bits:
.LFB70:
	.file 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/crypto/sha256-prf.c"
	.loc 1 57 1
	.cfi_startproc
.LVL0:
	.loc 1 58 2
	.loc 1 59 2
	.loc 1 60 2
	.loc 1 61 2
	.loc 1 62 2
	.loc 1 63 2
	.loc 1 64 2
	.loc 1 57 1 is_stmt 0
	addi	sp,sp,-128
	.cfi_def_cfa_offset 128
	sw	s1,116(sp)
	sw	s5,100(sp)
	sw	s7,92(sp)
	.cfi_offset 9, -12
	.cfi_offset 21, -28
	.cfi_offset 23, -36
	mv	s5,a0
	.loc 1 67 9
	li	s7,2
	.loc 1 57 1
	mv	a0,a2
.LVL1:
	mv	s1,a5
	.loc 1 66 10
	addi	a5,sp,8
.LVL2:
	.loc 1 57 1
	sw	s0,120(sp)
	sw	s2,112(sp)
	.cfi_offset 8, -8
	.cfi_offset 18, -16
	mv	s0,a4
	sw	s3,108(sp)
	sw	s4,104(sp)
	sw	s6,96(sp)
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 22, -32
	mv	s4,a3
	mv	s2,a6
	.loc 1 64 33
	addi	s3,a6,7
	.loc 1 66 10
	sw	a5,16(sp)
	.loc 1 67 9
	sw	s7,32(sp)
	.loc 1 57 1
	sw	ra,124(sp)
	sw	s8,88(sp)
	.cfi_offset 1, -4
	.cfi_offset 24, -40
	.loc 1 57 1
	mv	s6,a1
	.loc 1 68 10
	sw	a2,20(sp)
	.loc 1 69 11
	call	strlen
.LVL3:
	.loc 1 64 9
	srli	s3,s3,3
.LVL4:
	.loc 1 66 2 is_stmt 1
	.loc 1 67 2
	.loc 1 68 2
	.loc 1 69 2
	.loc 1 72 10 is_stmt 0
	addi	a5,sp,12
	.loc 1 70 10
	sw	s4,24(sp)
	.loc 1 71 9
	sw	s0,40(sp)
	.loc 1 73 9
	sw	s7,44(sp)
	.loc 1 69 9
	sw	a0,36(sp)
	.loc 1 70 2 is_stmt 1
	.loc 1 71 2
	.loc 1 72 2
	.loc 1 72 10 is_stmt 0
	sw	a5,28(sp)
	.loc 1 73 2 is_stmt 1
	.loc 1 75 2
.LVL5:
.LBB7:
.LBB8:
	.file 2 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/utils/common.h"
	.loc 2 143 2
	.loc 2 144 2
	.loc 2 144 7 is_stmt 0
	sh	s2,12(sp)
.LVL6:
.LBE8:
.LBE7:
	.loc 1 76 2 is_stmt 1
	.loc 1 77 2
	andi	s7,s3,-32
	.loc 1 76 6 is_stmt 0
	li	s0,0
.LVL7:
	.loc 1 58 6
	li	s4,1
.LVL8:
.L2:
	.loc 1 77 8 is_stmt 1
	bgeu	s0,s3,.L7
	.loc 1 78 3
.LBB9:
.LBB10:
	.loc 2 144 7 is_stmt 0
	sh	s4,8(sp)
	sub	s8,s3,s0
.LVL9:
.LBE10:
.LBE9:
	.loc 1 79 3 is_stmt 1
.LBB12:
.LBB11:
	.loc 2 143 2
	.loc 2 144 2
.LBE11:
.LBE12:
	.loc 1 80 3
	.loc 1 80 6 is_stmt 0
	beq	s0,s7,.L3
	.loc 1 81 4 is_stmt 1
	.loc 1 81 8 is_stmt 0
	add	a5,s1,s0
	addi	a4,sp,32
	addi	a3,sp,16
	li	a2,4
	mv	a1,s6
	mv	a0,s5
	call	hmac_sha256_vector
.LVL10:
	.loc 1 81 7
	bge	a0,zero,.L4
.L6:
	.loc 1 83 12
	li	a0,-1
.LVL11:
.L1:
	.loc 1 108 1
	lw	ra,124(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,120(sp)
	.cfi_restore 8
	lw	s1,116(sp)
	.cfi_restore 9
.LVL12:
	lw	s2,112(sp)
	.cfi_restore 18
	lw	s3,108(sp)
	.cfi_restore 19
.LVL13:
	lw	s4,104(sp)
	.cfi_restore 20
.LVL14:
	lw	s5,100(sp)
	.cfi_restore 21
.LVL15:
	lw	s6,96(sp)
	.cfi_restore 22
.LVL16:
	lw	s7,92(sp)
	.cfi_restore 23
	lw	s8,88(sp)
	.cfi_restore 24
	addi	sp,sp,128
	.cfi_def_cfa_offset 0
	jr	ra
.LVL17:
.L4:
	.cfi_restore_state
	.loc 1 84 4 is_stmt 1
	.loc 1 93 10 is_stmt 0
	addi	s4,s4,1
.LVL18:
	slli	s4,s4,16
	.loc 1 84 8
	addi	s0,s0,32
.LVL19:
	.loc 1 93 3 is_stmt 1
	.loc 1 93 10 is_stmt 0
	srli	s4,s4,16
.LVL20:
	j	.L2
.L3:
	.loc 1 86 4 is_stmt 1
	.loc 1 86 8 is_stmt 0
	addi	a5,sp,48
	addi	a4,sp,32
	addi	a3,sp,16
	li	a2,4
	mv	a1,s6
	mv	a0,s5
	call	hmac_sha256_vector
.LVL21:
	.loc 1 86 7
	blt	a0,zero,.L6
	.loc 1 89 4 is_stmt 1
	add	a0,s1,s0
	mv	a2,s8
	addi	a1,sp,48
	call	memcpy
.LVL22:
	.loc 1 90 4
	.loc 1 91 4
	mv	s0,s3
.LVL23:
.L7:
	.loc 1 100 2
	.loc 1 100 19 is_stmt 0
	andi	s2,s2,7
.LVL24:
	.loc 1 100 5
	beq	s2,zero,.L9
.LBB13:
	.loc 1 101 3 is_stmt 1
.LVL25:
	.loc 1 102 3
	.loc 1 102 16 is_stmt 0
	addi	s0,s0,-1
.LVL26:
	add	s0,s1,s0
.LVL27:
	lbu	a5,0(s0)
	.loc 1 101 24
	li	a6,8
	sub	a6,a6,s2
	.loc 1 101 18
	li	s2,255
.LVL28:
	sll	s2,s2,a6
	.loc 1 102 16
	and	s2,s2,a5
	sb	s2,0(s0)
.LVL29:
.L9:
.LBE13:
	.loc 1 105 2 is_stmt 1
	li	a2,32
	li	a1,0
	addi	a0,sp,48
	call	memset
.LVL30:
	.loc 1 107 2
	.loc 1 107 9 is_stmt 0
	li	a0,0
	j	.L1
	.cfi_endproc
.LFE70:
	.size	sha256_prf_bits, .-sha256_prf_bits
	.section	.text.sha256_prf,"ax",@progbits
	.align	1
	.globl	sha256_prf
	.type	sha256_prf, @function
sha256_prf:
.LFB69:
	.loc 1 32 1 is_stmt 1
	.cfi_startproc
.LVL31:
	.loc 1 33 2
	.loc 1 33 9 is_stmt 0
	slli	a6,a6,3
.LVL32:
	tail	sha256_prf_bits
.LVL33:
	.cfi_endproc
.LFE69:
	.size	sha256_prf, .-sha256_prf
	.text
.Letext0:
	.file 3 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h"
	.file 4 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 5 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 6 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h"
	.file 7 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/crypto/sha256.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x478
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF34
	.byte	0xc
	.4byte	.LASF35
	.4byte	.LASF36
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.4byte	.LASF2
	.byte	0x3
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
	.byte	0x4
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
	.byte	0x2
	.4byte	.LASF6
	.byte	0x4
	.byte	0x39
	.byte	0x1c
	.4byte	0x6c
	.byte	0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF7
	.byte	0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF8
	.byte	0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.byte	0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF10
	.byte	0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.byte	0x5
	.4byte	0x8f
	.byte	0x6
	.byte	0x4
	.4byte	0x96
	.byte	0x2
	.4byte	.LASF13
	.byte	0x5
	.byte	0x18
	.byte	0x13
	.4byte	0x46
	.byte	0x2
	.4byte	.LASF14
	.byte	0x5
	.byte	0x24
	.byte	0x14
	.4byte	0x60
	.byte	0x7
	.string	"u16"
	.byte	0x2
	.byte	0x15
	.byte	0x12
	.4byte	0xad
	.byte	0x7
	.string	"u8"
	.byte	0x2
	.byte	0x16
	.byte	0x11
	.4byte	0xa1
	.byte	0x5
	.4byte	0xc5
	.byte	0x8
	.4byte	0xc5
	.4byte	0xe5
	.byte	0x9
	.4byte	0x31
	.byte	0x1f
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0xc5
	.byte	0xa
	.4byte	.LASF28
	.byte	0x1
	.byte	0x36
	.byte	0x5
	.4byte	0x38
	.4byte	.LFB70
	.4byte	.LFE70-.LFB70
	.byte	0x1
	.byte	0x9c
	.4byte	0x329
	.byte	0xb
	.string	"key"
	.byte	0x1
	.byte	0x36
	.byte	0x1f
	.4byte	0x329
	.4byte	.LLST0
	.byte	0xc
	.4byte	.LASF15
	.byte	0x1
	.byte	0x36
	.byte	0x2b
	.4byte	0x25
	.4byte	.LLST1
	.byte	0xc
	.4byte	.LASF16
	.byte	0x1
	.byte	0x36
	.byte	0x40
	.4byte	0x9b
	.4byte	.LLST2
	.byte	0xc
	.4byte	.LASF17
	.byte	0x1
	.byte	0x37
	.byte	0x11
	.4byte	0x329
	.4byte	.LLST3
	.byte	0xc
	.4byte	.LASF18
	.byte	0x1
	.byte	0x37
	.byte	0x1e
	.4byte	0x25
	.4byte	.LLST4
	.byte	0xb
	.string	"buf"
	.byte	0x1
	.byte	0x37
	.byte	0x2c
	.4byte	0xe5
	.4byte	.LLST5
	.byte	0xc
	.4byte	.LASF19
	.byte	0x1
	.byte	0x38
	.byte	0xe
	.4byte	0x25
	.4byte	.LLST6
	.byte	0xd
	.4byte	.LASF20
	.byte	0x1
	.byte	0x3a
	.byte	0x6
	.4byte	0xb9
	.4byte	.LLST7
	.byte	0xe
	.string	"pos"
	.byte	0x1
	.byte	0x3b
	.byte	0x9
	.4byte	0x25
	.4byte	.LLST8
	.byte	0xd
	.4byte	.LASF21
	.byte	0x1
	.byte	0x3b
	.byte	0xe
	.4byte	0x25
	.4byte	.LLST9
	.byte	0xf
	.4byte	.LASF22
	.byte	0x1
	.byte	0x3c
	.byte	0x5
	.4byte	0xd5
	.byte	0x3
	.byte	0x91
	.byte	0xb0,0x7f
	.byte	0xf
	.4byte	.LASF23
	.byte	0x1
	.byte	0x3d
	.byte	0xc
	.4byte	0x32f
	.byte	0x3
	.byte	0x91
	.byte	0x90,0x7f
	.byte	0x10
	.string	"len"
	.byte	0x1
	.byte	0x3e
	.byte	0x9
	.4byte	0x33f
	.byte	0x3
	.byte	0x91
	.byte	0xa0,0x7f
	.byte	0xf
	.4byte	.LASF24
	.byte	0x1
	.byte	0x3f
	.byte	0x5
	.4byte	0x34f
	.byte	0x3
	.byte	0x91
	.byte	0x88,0x7f
	.byte	0xf
	.4byte	.LASF25
	.byte	0x1
	.byte	0x3f
	.byte	0x14
	.4byte	0x34f
	.byte	0x3
	.byte	0x91
	.byte	0x8c,0x7f
	.byte	0xd
	.4byte	.LASF26
	.byte	0x1
	.byte	0x40
	.byte	0x9
	.4byte	0x25
	.4byte	.LLST10
	.byte	0x11
	.4byte	.LBB13
	.4byte	.LBE13-.LBB13
	.4byte	0x223
	.byte	0xd
	.4byte	.LASF27
	.byte	0x1
	.byte	0x65
	.byte	0x6
	.4byte	0xc5
	.4byte	.LLST13
	.byte	0
	.byte	0x12
	.4byte	0x427
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.byte	0x1
	.byte	0x4b
	.byte	0x2
	.4byte	0x24a
	.byte	0x13
	.4byte	0x43e
	.4byte	.LLST11
	.byte	0x13
	.4byte	0x434
	.4byte	.LLST12
	.byte	0
	.byte	0x14
	.4byte	0x427
	.4byte	.LBB9
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x4f
	.byte	0x3
	.4byte	0x269
	.byte	0x15
	.4byte	0x43e
	.byte	0x15
	.4byte	0x434
	.byte	0
	.byte	0x16
	.4byte	.LVL3
	.4byte	0x44b
	.4byte	0x27e
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0
	.byte	0x16
	.4byte	.LVL10
	.4byte	0x457
	.4byte	0x2b4
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0x17
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x86
	.byte	0
	.byte	0x17
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x34
	.byte	0x17
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0x91
	.byte	0x90,0x7f
	.byte	0x17
	.byte	0x1
	.byte	0x5e
	.byte	0x3
	.byte	0x91
	.byte	0xa0,0x7f
	.byte	0x17
	.byte	0x1
	.byte	0x5f
	.byte	0x5
	.byte	0x79
	.byte	0
	.byte	0x78
	.byte	0
	.byte	0x22
	.byte	0
	.byte	0x16
	.4byte	.LVL21
	.4byte	0x457
	.4byte	0x2e8
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0x17
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x86
	.byte	0
	.byte	0x17
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x34
	.byte	0x17
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0x91
	.byte	0x90,0x7f
	.byte	0x17
	.byte	0x1
	.byte	0x5e
	.byte	0x3
	.byte	0x91
	.byte	0xa0,0x7f
	.byte	0x17
	.byte	0x1
	.byte	0x5f
	.byte	0x3
	.byte	0x91
	.byte	0xb0,0x7f
	.byte	0
	.byte	0x16
	.4byte	.LVL22
	.4byte	0x463
	.4byte	0x30c
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x79
	.byte	0
	.byte	0x78
	.byte	0
	.byte	0x22
	.byte	0x17
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0xb0,0x7f
	.byte	0x17
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x88
	.byte	0
	.byte	0
	.byte	0x18
	.4byte	.LVL30
	.4byte	0x46f
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xb0,0x7f
	.byte	0x17
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x17
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0xd0
	.byte	0x8
	.4byte	0x329
	.4byte	0x33f
	.byte	0x9
	.4byte	0x31
	.byte	0x3
	.byte	0
	.byte	0x8
	.4byte	0x25
	.4byte	0x34f
	.byte	0x9
	.4byte	0x31
	.byte	0x3
	.byte	0
	.byte	0x8
	.4byte	0xc5
	.4byte	0x35f
	.byte	0x9
	.4byte	0x31
	.byte	0x1
	.byte	0
	.byte	0xa
	.4byte	.LASF29
	.byte	0x1
	.byte	0x1e
	.byte	0x5
	.4byte	0x38
	.4byte	.LFB69
	.4byte	.LFE69-.LFB69
	.byte	0x1
	.byte	0x9c
	.4byte	0x427
	.byte	0xb
	.string	"key"
	.byte	0x1
	.byte	0x1e
	.byte	0x1a
	.4byte	0x329
	.4byte	.LLST14
	.byte	0xc
	.4byte	.LASF15
	.byte	0x1
	.byte	0x1e
	.byte	0x26
	.4byte	0x25
	.4byte	.LLST15
	.byte	0xc
	.4byte	.LASF16
	.byte	0x1
	.byte	0x1e
	.byte	0x3b
	.4byte	0x9b
	.4byte	.LLST16
	.byte	0xc
	.4byte	.LASF17
	.byte	0x1
	.byte	0x1f
	.byte	0xd
	.4byte	0x329
	.4byte	.LLST17
	.byte	0xc
	.4byte	.LASF18
	.byte	0x1
	.byte	0x1f
	.byte	0x1a
	.4byte	0x25
	.4byte	.LLST18
	.byte	0xb
	.string	"buf"
	.byte	0x1
	.byte	0x1f
	.byte	0x28
	.4byte	0xe5
	.4byte	.LLST19
	.byte	0xc
	.4byte	.LASF26
	.byte	0x1
	.byte	0x1f
	.byte	0x34
	.4byte	0x25
	.4byte	.LLST20
	.byte	0x19
	.4byte	.LVL33
	.4byte	0xeb
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x17
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x17
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x17
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x17
	.byte	0x1
	.byte	0x5e
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x17
	.byte	0x1
	.byte	0x5f
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5f
	.byte	0x17
	.byte	0x1
	.byte	0x60
	.byte	0x5
	.byte	0xf3
	.byte	0x1
	.byte	0x60
	.byte	0x33
	.byte	0x24
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LASF37
	.byte	0x2
	.byte	0x8d
	.byte	0x14
	.byte	0x3
	.4byte	0x44b
	.byte	0x1b
	.string	"a"
	.byte	0x2
	.byte	0x8d
	.byte	0x25
	.4byte	0xe5
	.byte	0x1b
	.string	"val"
	.byte	0x2
	.byte	0x8d
	.byte	0x2c
	.4byte	0xb9
	.byte	0
	.byte	0x1c
	.4byte	.LASF30
	.4byte	.LASF30
	.byte	0x6
	.byte	0x29
	.byte	0x8
	.byte	0x1c
	.4byte	.LASF31
	.4byte	.LASF31
	.byte	0x7
	.byte	0x14
	.byte	0x5
	.byte	0x1c
	.4byte	.LASF32
	.4byte	.LASF32
	.byte	0x6
	.byte	0x1f
	.byte	0x8
	.byte	0x1c
	.4byte	.LASF33
	.4byte	.LASF33
	.byte	0x6
	.byte	0x21
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
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x7
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
	.byte	0x8
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x9
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xa
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
	.byte	0xf
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
	.byte	0x10
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
	.byte	0x11
	.byte	0xb
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x12
	.byte	0x1d
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x58
	.byte	0xb
	.byte	0x59
	.byte	0xb
	.byte	0x57
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x13
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x14
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
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x15
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x16
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
	.byte	0x1
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
	.byte	0x95,0x42
	.byte	0x19
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1a
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
	.byte	0x20
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1b
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL15
	.4byte	.LVL17
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LFE70
	.2byte	0x1
	.byte	0x65
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL3-1
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LFE70
	.2byte	0x1
	.byte	0x66
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL3-1
	.4byte	.LFE70
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL0
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL3-1
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL8
	.4byte	.LFE70
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL0
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL3-1
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x3
	.byte	0x91
	.byte	0xa8,0x7f
	.4byte	.LVL8
	.4byte	.LFE70
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL2
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL12
	.4byte	.LVL17
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5f
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LFE70
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL0
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL3-1
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL11
	.4byte	.LVL17
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x60
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL24
	.4byte	.LFE70
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x60
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL0
	.4byte	.LVL8
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL20
	.4byte	.LFE70
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL6
	.4byte	.LVL8
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL17
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL23
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x3
	.byte	0x78
	.byte	0x1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL9
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL17
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x68
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL4
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL13
	.4byte	.LVL17
	.2byte	0x8
	.byte	0xf3
	.byte	0x1
	.byte	0x60
	.byte	0x23
	.byte	0x7
	.byte	0x33
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LFE70
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL25
	.4byte	.LVL28
	.2byte	0x8
	.byte	0x9
	.byte	0xff
	.byte	0x38
	.byte	0x82
	.byte	0
	.byte	0x1c
	.byte	0x24
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0xb
	.byte	0x9
	.byte	0xff
	.byte	0x38
	.byte	0xf3
	.byte	0x1
	.byte	0x60
	.byte	0x37
	.byte	0x1a
	.byte	0x1c
	.byte	0x24
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL31
	.4byte	.LVL33-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL33-1
	.4byte	.LFE69
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL31
	.4byte	.LVL33-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL33-1
	.4byte	.LFE69
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL31
	.4byte	.LVL33-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL33-1
	.4byte	.LFE69
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL31
	.4byte	.LVL33-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL33-1
	.4byte	.LFE69
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL31
	.4byte	.LVL33-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL33-1
	.4byte	.LFE69
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL31
	.4byte	.LVL33-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL33-1
	.4byte	.LFE69
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL32
	.4byte	.LFE69
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x60
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
	.4byte	.LFB70
	.4byte	.LFE70-.LFB70
	.4byte	.LFB69
	.4byte	.LFE69-.LFB69
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB9
	.4byte	.LBE9
	.4byte	.LBB12
	.4byte	.LBE12
	.4byte	0
	.4byte	0
	.4byte	.LFB70
	.4byte	.LFE70
	.4byte	.LFB69
	.4byte	.LFE69
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF19:
	.string	"buf_len_bits"
.LASF2:
	.string	"size_t"
.LASF3:
	.string	"__uint8_t"
.LASF17:
	.string	"data"
.LASF21:
	.string	"plen"
.LASF25:
	.string	"length_le"
.LASF27:
	.string	"mask"
.LASF7:
	.string	"short unsigned int"
.LASF0:
	.string	"unsigned int"
.LASF28:
	.string	"sha256_prf_bits"
.LASF18:
	.string	"data_len"
.LASF20:
	.string	"counter"
.LASF37:
	.string	"WPA_PUT_LE16"
.LASF4:
	.string	"unsigned char"
.LASF9:
	.string	"long unsigned int"
.LASF23:
	.string	"addr"
.LASF36:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/wpa_supplicant"
.LASF26:
	.string	"buf_len"
.LASF33:
	.string	"memset"
.LASF6:
	.string	"__uint16_t"
.LASF24:
	.string	"counter_le"
.LASF30:
	.string	"strlen"
.LASF11:
	.string	"long long unsigned int"
.LASF13:
	.string	"uint8_t"
.LASF35:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/crypto/sha256-prf.c"
.LASF22:
	.string	"hash"
.LASF10:
	.string	"long long int"
.LASF34:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
.LASF12:
	.string	"char"
.LASF32:
	.string	"memcpy"
.LASF5:
	.string	"short int"
.LASF14:
	.string	"uint16_t"
.LASF31:
	.string	"hmac_sha256_vector"
.LASF15:
	.string	"key_len"
.LASF8:
	.string	"long int"
.LASF1:
	.string	"signed char"
.LASF29:
	.string	"sha256_prf"
.LASF16:
	.string	"label"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
