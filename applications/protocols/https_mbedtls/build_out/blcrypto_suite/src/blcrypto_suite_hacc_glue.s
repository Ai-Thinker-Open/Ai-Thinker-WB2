	.file	"blcrypto_suite_hacc_glue.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.blcrypto_suite_hacc_ecp_mul,"ax",@progbits
	.align	1
	.globl	blcrypto_suite_hacc_ecp_mul
	.type	blcrypto_suite_hacc_ecp_mul, @function
blcrypto_suite_hacc_ecp_mul:
.LFB3:
	.file 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/blcrypto_suite/src/blcrypto_suite_hacc_glue.c"
	.loc 1 9 1
	.cfi_startproc
.LVL0:
	.loc 1 10 5
	.loc 1 11 5
	.loc 1 13 5
	.loc 1 14 5
	.loc 1 15 5
	.loc 1 17 5
	.loc 1 19 5
	.loc 1 9 1 is_stmt 0
	addi	sp,sp,-208
	.cfi_def_cfa_offset 208
	sw	ra,204(sp)
	sw	s0,200(sp)
	sw	s1,196(sp)
	sw	s2,192(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.loc 1 19 8
	lw	a4,0(a0)
.LVL1:
	li	a5,3
.LVL2:
	beq	a4,a5,.L2
.LVL3:
.L4:
	.loc 1 21 16
	li	s0,-1
.L1:
	.loc 1 57 1
	lw	ra,204(sp)
	.cfi_remember_state
	.cfi_restore 1
	mv	a0,s0
	lw	s0,200(sp)
	.cfi_restore 8
	lw	s1,196(sp)
	.cfi_restore 9
	lw	s2,192(sp)
	.cfi_restore 18
	addi	sp,sp,208
	.cfi_def_cfa_offset 0
	jr	ra
.LVL4:
.L2:
	.cfi_restore_state
	mv	s1,a1
	mv	s2,a2
	.loc 1 25 16
	addi	a1,sp,64
.LVL5:
	li	a2,32
.LVL6:
	addi	a0,a0,4
.LVL7:
	mv	s0,a3
	.loc 1 24 5 is_stmt 1
	.loc 1 25 5
	.loc 1 25 16 is_stmt 0
	call	blcrypto_suite_mpi_write_binary
.LVL8:
	.loc 1 25 8
	bne	a0,zero,.L4
	.loc 1 30 5 is_stmt 1
	call	blcrypto_suite_hacc_reset
.LVL9:
	.loc 1 32 5
	.loc 1 32 16 is_stmt 0
	li	a2,32
	addi	a1,sp,96
	mv	a0,s0
	call	blcrypto_suite_mpi_write_binary
.LVL10:
	.loc 1 32 8
	bne	a0,zero,.L4
	.loc 1 36 5 is_stmt 1
	addi	a2,sp,64
	addi	a1,sp,96
	mv	a0,sp
.LVL11:
	call	blcrypto_suite_hacc_gf2mont_256_bin
.LVL12:
	.loc 1 38 5
	.loc 1 38 16 is_stmt 0
	li	a2,32
	addi	a1,sp,96
	addi	a0,s0,12
	call	blcrypto_suite_mpi_write_binary
.LVL13:
	.loc 1 38 8
	bne	a0,zero,.L4
	.loc 1 42 5 is_stmt 1
	addi	a2,sp,64
	addi	a1,sp,96
	addi	a0,sp,32
.LVL14:
	call	blcrypto_suite_hacc_gf2mont_256_bin
.LVL15:
	.loc 1 44 5
	.loc 1 44 16 is_stmt 0
	li	a2,32
	addi	a1,sp,96
	mv	a0,s2
	call	blcrypto_suite_mpi_write_binary
.LVL16:
	mv	s0,a0
.LVL17:
	.loc 1 44 8
	bne	a0,zero,.L4
	.loc 1 49 5 is_stmt 1
	call	blcrypto_suite_hacc_reset
.LVL18:
	.loc 1 50 5
	addi	a5,sp,160
	addi	a4,sp,128
	addi	a3,sp,32
	mv	a2,sp
	addi	a1,sp,96
	li	a0,0
	call	blcrypto_suite_hacc_secp256r1_mul_bin
.LVL19:
	.loc 1 52 5
	addi	a1,sp,128
	li	a2,32
	mv	a0,s1
	call	blcrypto_suite_mpi_read_binary
.LVL20:
	.loc 1 53 5
	addi	a1,sp,160
	li	a2,32
	addi	a0,s1,12
	call	blcrypto_suite_mpi_read_binary
.LVL21:
	.loc 1 54 5
	li	a1,1
	addi	a0,s1,24
	call	blcrypto_suite_mpi_lset
.LVL22:
	.loc 1 56 5
	.loc 1 56 12 is_stmt 0
	j	.L1
	.cfi_endproc
.LFE3:
	.size	blcrypto_suite_hacc_ecp_mul, .-blcrypto_suite_hacc_ecp_mul
	.section	.text.blcrypto_suite_hacc_mpi_exp_mod_secp256r1,"ax",@progbits
	.align	1
	.globl	blcrypto_suite_hacc_mpi_exp_mod_secp256r1
	.type	blcrypto_suite_hacc_mpi_exp_mod_secp256r1, @function
blcrypto_suite_hacc_mpi_exp_mod_secp256r1:
.LFB4:
	.loc 1 60 1 is_stmt 1
	.cfi_startproc
.LVL23:
	.loc 1 61 5
	.loc 1 62 5
	.loc 1 63 5
	.loc 1 65 5
	.loc 1 60 1 is_stmt 0
	addi	sp,sp,-112
	.cfi_def_cfa_offset 112
	sw	s0,104(sp)
	sw	s1,100(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	mv	s0,a2
	mv	s1,a0
	.loc 1 65 16
	li	a2,32
.LVL24:
	.loc 1 60 1
	mv	a0,a1
.LVL25:
	.loc 1 65 16
	addi	a1,sp,32
.LVL26:
	.loc 1 60 1
	sw	ra,108(sp)
	.cfi_offset 1, -4
	.loc 1 65 16
	call	blcrypto_suite_mpi_write_binary
.LVL27:
	.loc 1 65 8
	beq	a0,zero,.L7
.LVL28:
.L9:
	.loc 1 67 16
	li	s0,-1
.LVL29:
.L6:
	.loc 1 80 1
	lw	ra,108(sp)
	.cfi_remember_state
	.cfi_restore 1
	mv	a0,s0
	lw	s0,104(sp)
	.cfi_restore 8
	lw	s1,100(sp)
	.cfi_restore 9
.LVL30:
	addi	sp,sp,112
	.cfi_def_cfa_offset 0
	jr	ra
.LVL31:
.L7:
	.cfi_restore_state
	.loc 1 69 5 is_stmt 1
	.loc 1 69 16 is_stmt 0
	mv	a0,s0
.LVL32:
	li	a2,32
	addi	a1,sp,64
	call	blcrypto_suite_mpi_write_binary
.LVL33:
	mv	s0,a0
.LVL34:
	.loc 1 69 8
	bne	a0,zero,.L9
	.loc 1 74 5 is_stmt 1
	call	blcrypto_suite_hacc_reset
.LVL35:
	.loc 1 75 5
	addi	a2,sp,64
	addi	a1,sp,32
	mv	a0,sp
	call	blcrypto_suite_hacc_secp256r1_exp_mod
.LVL36:
	.loc 1 77 5
	li	a2,32
	mv	a1,sp
	mv	a0,s1
	call	blcrypto_suite_mpi_read_binary
.LVL37:
	.loc 1 79 5
	.loc 1 79 12 is_stmt 0
	j	.L6
	.cfi_endproc
.LFE4:
	.size	blcrypto_suite_hacc_mpi_exp_mod_secp256r1, .-blcrypto_suite_hacc_mpi_exp_mod_secp256r1
	.text
.Letext0:
	.file 2 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 3 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h"
	.file 4 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 5 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/blcrypto_suite/inc/blcrypto_suite/blcrypto_suite_bignum.h"
	.file 6 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/blcrypto_suite/inc/blcrypto_suite/blcrypto_suite_ecp.h"
	.file 7 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/blcrypto_suite/inc/blcrypto_suite/blcrypto_suite_hacc.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x6b7
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF58
	.byte	0xc
	.4byte	.LASF59
	.4byte	.LASF60
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.byte	0x3
	.4byte	.LASF5
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
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF4
	.byte	0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0x4f
	.byte	0x1b
	.4byte	0x60
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.byte	0x3
	.4byte	.LASF11
	.byte	0x3
	.byte	0xd1
	.byte	0x16
	.4byte	0x7c
	.byte	0x5
	.byte	0x4
	.byte	0x6
	.byte	0x4
	.4byte	0x38
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.byte	0x3
	.4byte	.LASF13
	.byte	0x4
	.byte	0x18
	.byte	0x13
	.4byte	0x2c
	.byte	0x3
	.4byte	.LASF14
	.byte	0x4
	.byte	0x30
	.byte	0x14
	.4byte	0x54
	.byte	0x3
	.4byte	.LASF15
	.byte	0x5
	.byte	0xc4
	.byte	0x16
	.4byte	0xaa
	.byte	0x7
	.4byte	.LASF16
	.byte	0xc
	.byte	0x5
	.byte	0xd2
	.byte	0x10
	.4byte	0xf1
	.byte	0x8
	.string	"s"
	.byte	0x5
	.byte	0xd4
	.byte	0x9
	.4byte	0x75
	.byte	0
	.byte	0x8
	.string	"n"
	.byte	0x5
	.byte	0xd5
	.byte	0xc
	.4byte	0x83
	.byte	0x4
	.byte	0x8
	.string	"p"
	.byte	0x5
	.byte	0xd6
	.byte	0x1e
	.4byte	0xf1
	.byte	0x8
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0xb6
	.byte	0x3
	.4byte	.LASF16
	.byte	0x5
	.byte	0xd8
	.byte	0x1
	.4byte	0xc2
	.byte	0x9
	.4byte	0xf7
	.byte	0xa
	.byte	0x7
	.byte	0x4
	.4byte	0x7c
	.byte	0x6
	.byte	0x67
	.byte	0x1
	.4byte	0x16b
	.byte	0xb
	.4byte	.LASF17
	.byte	0
	.byte	0xb
	.4byte	.LASF18
	.byte	0x1
	.byte	0xb
	.4byte	.LASF19
	.byte	0x2
	.byte	0xb
	.4byte	.LASF20
	.byte	0x3
	.byte	0xb
	.4byte	.LASF21
	.byte	0x4
	.byte	0xb
	.4byte	.LASF22
	.byte	0x5
	.byte	0xb
	.4byte	.LASF23
	.byte	0x6
	.byte	0xb
	.4byte	.LASF24
	.byte	0x7
	.byte	0xb
	.4byte	.LASF25
	.byte	0x8
	.byte	0xb
	.4byte	.LASF26
	.byte	0x9
	.byte	0xb
	.4byte	.LASF27
	.byte	0xa
	.byte	0xb
	.4byte	.LASF28
	.byte	0xb
	.byte	0xb
	.4byte	.LASF29
	.byte	0xc
	.byte	0xb
	.4byte	.LASF30
	.byte	0xd
	.byte	0
	.byte	0x3
	.4byte	.LASF31
	.byte	0x6
	.byte	0x76
	.byte	0x3
	.4byte	0x108
	.byte	0x7
	.4byte	.LASF32
	.byte	0x24
	.byte	0x6
	.byte	0x95
	.byte	0x10
	.4byte	0x1a6
	.byte	0x8
	.string	"X"
	.byte	0x6
	.byte	0x97
	.byte	0x18
	.4byte	0xf7
	.byte	0
	.byte	0x8
	.string	"Y"
	.byte	0x6
	.byte	0x98
	.byte	0x18
	.4byte	0xf7
	.byte	0xc
	.byte	0x8
	.string	"Z"
	.byte	0x6
	.byte	0x99
	.byte	0x18
	.4byte	0xf7
	.byte	0x18
	.byte	0
	.byte	0x3
	.4byte	.LASF32
	.byte	0x6
	.byte	0x9b
	.byte	0x1
	.4byte	0x177
	.byte	0x9
	.4byte	0x1a6
	.byte	0x7
	.4byte	.LASF33
	.byte	0x7c
	.byte	0x6
	.byte	0xe8
	.byte	0x10
	.4byte	0x279
	.byte	0x8
	.string	"id"
	.byte	0x6
	.byte	0xea
	.byte	0x21
	.4byte	0x16b
	.byte	0
	.byte	0x8
	.string	"P"
	.byte	0x6
	.byte	0xeb
	.byte	0x18
	.4byte	0xf7
	.byte	0x4
	.byte	0x8
	.string	"A"
	.byte	0x6
	.byte	0xec
	.byte	0x18
	.4byte	0xf7
	.byte	0x10
	.byte	0x8
	.string	"B"
	.byte	0x6
	.byte	0xee
	.byte	0x18
	.4byte	0xf7
	.byte	0x1c
	.byte	0x8
	.string	"G"
	.byte	0x6
	.byte	0xf0
	.byte	0x1e
	.4byte	0x1a6
	.byte	0x28
	.byte	0x8
	.string	"N"
	.byte	0x6
	.byte	0xf1
	.byte	0x18
	.4byte	0xf7
	.byte	0x4c
	.byte	0xc
	.4byte	.LASF34
	.byte	0x6
	.byte	0xf2
	.byte	0xc
	.4byte	0x83
	.byte	0x58
	.byte	0xc
	.4byte	.LASF35
	.byte	0x6
	.byte	0xf3
	.byte	0xc
	.4byte	0x83
	.byte	0x5c
	.byte	0x8
	.string	"h"
	.byte	0x6
	.byte	0xf6
	.byte	0x12
	.4byte	0x7c
	.byte	0x60
	.byte	0xc
	.4byte	.LASF36
	.byte	0x6
	.byte	0xf7
	.byte	0xb
	.4byte	0x28e
	.byte	0x64
	.byte	0xc
	.4byte	.LASF37
	.byte	0x6
	.byte	0xf9
	.byte	0xb
	.4byte	0x2ae
	.byte	0x68
	.byte	0xc
	.4byte	.LASF38
	.byte	0x6
	.byte	0xfa
	.byte	0xb
	.4byte	0x2ae
	.byte	0x6c
	.byte	0xc
	.4byte	.LASF39
	.byte	0x6
	.byte	0xfb
	.byte	0xb
	.4byte	0x8f
	.byte	0x70
	.byte	0x8
	.string	"T"
	.byte	0x6
	.byte	0xfc
	.byte	0x1f
	.4byte	0x2a8
	.byte	0x74
	.byte	0xc
	.4byte	.LASF40
	.byte	0x6
	.byte	0xfd
	.byte	0xc
	.4byte	0x83
	.byte	0x78
	.byte	0
	.byte	0xd
	.4byte	0x75
	.4byte	0x288
	.byte	0xe
	.4byte	0x288
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0xf7
	.byte	0x6
	.byte	0x4
	.4byte	0x279
	.byte	0xd
	.4byte	0x75
	.4byte	0x2a8
	.byte	0xe
	.4byte	0x2a8
	.byte	0xe
	.4byte	0x8f
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x1a6
	.byte	0x6
	.byte	0x4
	.4byte	0x294
	.byte	0x3
	.4byte	.LASF33
	.byte	0x6
	.byte	0xff
	.byte	0x1
	.4byte	0x1b7
	.byte	0xf
	.4byte	.LASF44
	.byte	0x1
	.byte	0x3b
	.byte	0x5
	.4byte	0x75
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0x3cc
	.byte	0x10
	.string	"X"
	.byte	0x1
	.byte	0x3b
	.byte	0x43
	.4byte	0x288
	.4byte	.LLST7
	.byte	0x10
	.string	"A"
	.byte	0x1
	.byte	0x3b
	.byte	0x60
	.4byte	0x3cc
	.4byte	.LLST8
	.byte	0x10
	.string	"E"
	.byte	0x1
	.byte	0x3b
	.byte	0x7d
	.4byte	0x3cc
	.4byte	.LLST9
	.byte	0x11
	.string	"ret"
	.byte	0x1
	.byte	0x3d
	.byte	0x9
	.4byte	0x75
	.4byte	.LLST10
	.byte	0x12
	.4byte	.LASF41
	.byte	0x1
	.byte	0x3e
	.byte	0xe
	.4byte	0x3d2
	.byte	0x3
	.byte	0x91
	.byte	0x90,0x7f
	.byte	0x12
	.4byte	.LASF42
	.byte	0x1
	.byte	0x3f
	.byte	0xe
	.4byte	0x3d2
	.byte	0x3
	.byte	0x91
	.byte	0xb0,0x7f
	.byte	0x12
	.4byte	.LASF43
	.byte	0x1
	.byte	0x3f
	.byte	0x18
	.4byte	0x3d2
	.byte	0x2
	.byte	0x91
	.byte	0x50
	.byte	0x13
	.4byte	.LVL27
	.4byte	0x663
	.4byte	0x365
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x14
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0xb0,0x7f
	.byte	0x14
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0x13
	.4byte	.LVL33
	.4byte	0x663
	.4byte	0x385
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x14
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x50
	.byte	0x14
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0x15
	.4byte	.LVL35
	.4byte	0x670
	.byte	0x13
	.4byte	.LVL36
	.4byte	0x67c
	.4byte	0x3af
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0x14
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0xb0,0x7f
	.byte	0x14
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x50
	.byte	0
	.byte	0x16
	.4byte	.LVL37
	.4byte	0x688
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x14
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0x14
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x103
	.byte	0x17
	.4byte	0xaa
	.4byte	0x3e2
	.byte	0x18
	.4byte	0x7c
	.byte	0x7
	.byte	0
	.byte	0xf
	.4byte	.LASF45
	.byte	0x1
	.byte	0x8
	.byte	0x5
	.4byte	0x75
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x1
	.byte	0x9c
	.4byte	0x638
	.byte	0x10
	.string	"grp"
	.byte	0x1
	.byte	0x8
	.byte	0x3b
	.4byte	0x638
	.4byte	.LLST0
	.byte	0x10
	.string	"R"
	.byte	0x1
	.byte	0x8
	.byte	0x5a
	.4byte	0x2a8
	.4byte	.LLST1
	.byte	0x10
	.string	"m"
	.byte	0x1
	.byte	0x8
	.byte	0x77
	.4byte	0x3cc
	.4byte	.LLST2
	.byte	0x10
	.string	"P"
	.byte	0x1
	.byte	0x8
	.byte	0x9a
	.4byte	0x63e
	.4byte	.LLST3
	.byte	0x19
	.4byte	.LASF46
	.byte	0x1
	.byte	0x8
	.byte	0xa3
	.4byte	0x65d
	.4byte	.LLST4
	.byte	0x19
	.4byte	.LASF47
	.byte	0x1
	.byte	0x8
	.byte	0xd2
	.4byte	0x8f
	.4byte	.LLST5
	.byte	0x11
	.string	"ret"
	.byte	0x1
	.byte	0xa
	.byte	0x9
	.4byte	0x75
	.4byte	.LLST6
	.byte	0x12
	.4byte	.LASF48
	.byte	0x1
	.byte	0xb
	.byte	0xe
	.4byte	0x3d2
	.byte	0x3
	.byte	0x91
	.byte	0xb0,0x7e
	.byte	0x12
	.4byte	.LASF49
	.byte	0x1
	.byte	0xb
	.byte	0x19
	.4byte	0x3d2
	.byte	0x3
	.byte	0x91
	.byte	0xd0,0x7e
	.byte	0x1a
	.4byte	.LASF61
	.byte	0x1
	.byte	0xd
	.byte	0x19
	.4byte	0x288
	.byte	0x12
	.4byte	.LASF50
	.byte	0x1
	.byte	0xe
	.byte	0xe
	.4byte	0x3d2
	.byte	0x3
	.byte	0x91
	.byte	0xf0,0x7e
	.byte	0x1b
	.string	"tmp"
	.byte	0x1
	.byte	0xf
	.byte	0xe
	.4byte	0x3d2
	.byte	0x3
	.byte	0x91
	.byte	0x90,0x7f
	.byte	0x1b
	.string	"Rx"
	.byte	0x1
	.byte	0x11
	.byte	0xe
	.4byte	0x3d2
	.byte	0x3
	.byte	0x91
	.byte	0xb0,0x7f
	.byte	0x1b
	.string	"Ry"
	.byte	0x1
	.byte	0x11
	.byte	0x15
	.4byte	0x3d2
	.byte	0x2
	.byte	0x91
	.byte	0x50
	.byte	0x13
	.4byte	.LVL8
	.4byte	0x663
	.4byte	0x4f3
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x23
	.byte	0x4
	.byte	0x14
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0xf0,0x7e
	.byte	0x14
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0x15
	.4byte	.LVL9
	.4byte	0x670
	.byte	0x13
	.4byte	.LVL10
	.4byte	0x663
	.4byte	0x51d
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x14
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0x90,0x7f
	.byte	0x14
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0x13
	.4byte	.LVL12
	.4byte	0x695
	.4byte	0x53f
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0x14
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0x90,0x7f
	.byte	0x14
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0x91
	.byte	0xf0,0x7e
	.byte	0
	.byte	0x13
	.4byte	.LVL13
	.4byte	0x663
	.4byte	0x560
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0xc
	.byte	0x14
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0x90,0x7f
	.byte	0x14
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0x13
	.4byte	.LVL15
	.4byte	0x695
	.4byte	0x583
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xd0,0x7e
	.byte	0x14
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0x90,0x7f
	.byte	0x14
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0x91
	.byte	0xf0,0x7e
	.byte	0
	.byte	0x13
	.4byte	.LVL16
	.4byte	0x663
	.4byte	0x5a4
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x14
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0x90,0x7f
	.byte	0x14
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0x15
	.4byte	.LVL18
	.4byte	0x670
	.byte	0x13
	.4byte	.LVL19
	.4byte	0x6a1
	.4byte	0x5e1
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0x14
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0x90,0x7f
	.byte	0x14
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0x14
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0x91
	.byte	0xd0,0x7e
	.byte	0x14
	.byte	0x1
	.byte	0x5e
	.byte	0x3
	.byte	0x91
	.byte	0xb0,0x7f
	.byte	0x14
	.byte	0x1
	.byte	0x5f
	.byte	0x2
	.byte	0x91
	.byte	0x50
	.byte	0
	.byte	0x13
	.4byte	.LVL20
	.4byte	0x688
	.4byte	0x602
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x14
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0xb0,0x7f
	.byte	0x14
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0x13
	.4byte	.LVL21
	.4byte	0x688
	.4byte	0x622
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0xc
	.byte	0x14
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x50
	.byte	0x14
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0x16
	.4byte	.LVL22
	.4byte	0x6ad
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0x18
	.byte	0x14
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x2b4
	.byte	0x6
	.byte	0x4
	.4byte	0x1b2
	.byte	0xd
	.4byte	0x75
	.4byte	0x65d
	.byte	0xe
	.4byte	0x8f
	.byte	0xe
	.4byte	0x91
	.byte	0xe
	.4byte	0x83
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x644
	.byte	0x1c
	.4byte	.LASF51
	.4byte	.LASF51
	.byte	0x5
	.2byte	0x218
	.byte	0x5
	.byte	0x1d
	.4byte	.LASF52
	.4byte	.LASF52
	.byte	0x7
	.byte	0x6
	.byte	0x5
	.byte	0x1d
	.4byte	.LASF53
	.4byte	.LASF53
	.byte	0x7
	.byte	0xa
	.byte	0x5
	.byte	0x1c
	.4byte	.LASF54
	.4byte	.LASF54
	.byte	0x5
	.2byte	0x207
	.byte	0x5
	.byte	0x1d
	.4byte	.LASF55
	.4byte	.LASF55
	.byte	0x7
	.byte	0x7
	.byte	0x5
	.byte	0x1d
	.4byte	.LASF56
	.4byte	.LASF56
	.byte	0x7
	.byte	0x9
	.byte	0x5
	.byte	0x1c
	.4byte	.LASF57
	.4byte	.LASF57
	.byte	0x5
	.2byte	0x161
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
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
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
	.byte	0x8
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
	.byte	0x9
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xa
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
	.byte	0xb
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xc
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
	.byte	0xd
	.byte	0x15
	.byte	0x1
	.byte	0x27
	.byte	0x19
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xe
	.byte	0x5
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xf
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
	.byte	0x10
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
	.byte	0x11
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
	.byte	0x12
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
	.byte	0
	.byte	0x11
	.byte	0x1
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
	.byte	0
	.byte	0
	.byte	0x17
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x18
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x19
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
	.byte	0x1a
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
	.byte	0
	.byte	0
	.byte	0x1b
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
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x1d
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
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL25
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL23
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL26
	.4byte	.LVL27-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL27-1
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL24
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL28
	.4byte	.LVL31
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL34
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL27
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL34
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL7
	.4byte	.LVL8-1
	.2byte	0x3
	.byte	0x7a
	.byte	0x7c
	.byte	0x9f
	.4byte	.LVL8-1
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL5
	.4byte	.LFE3
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL3
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
	.4byte	.LFE3
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL0
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL8-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL8-1
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL17
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL1
	.4byte	.LFE3
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
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL8
	.4byte	.LVL9-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL17
	.4byte	.LFE3
	.2byte	0x1
	.byte	0x58
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
.LASF11:
	.string	"size_t"
.LASF5:
	.string	"__uint8_t"
.LASF9:
	.string	"long long unsigned int"
.LASF39:
	.string	"t_data"
.LASF60:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/blcrypto_suite"
.LASF50:
	.string	"modulo"
.LASF8:
	.string	"long long int"
.LASF0:
	.string	"signed char"
.LASF42:
	.string	"A_bin"
.LASF37:
	.string	"t_pre"
.LASF59:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/blcrypto_suite/src/blcrypto_suite_hacc_glue.c"
.LASF46:
	.string	"f_rng"
.LASF56:
	.string	"blcrypto_suite_hacc_secp256r1_mul_bin"
.LASF17:
	.string	"BLCRYPTO_SUITE_ECP_DP_NONE"
.LASF4:
	.string	"long int"
.LASF49:
	.string	"PyMont"
.LASF6:
	.string	"__uint32_t"
.LASF35:
	.string	"nbits"
.LASF10:
	.string	"unsigned int"
.LASF54:
	.string	"blcrypto_suite_mpi_read_binary"
.LASF7:
	.string	"long unsigned int"
.LASF3:
	.string	"short unsigned int"
.LASF58:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
.LASF47:
	.string	"p_rng"
.LASF55:
	.string	"blcrypto_suite_hacc_gf2mont_256_bin"
.LASF18:
	.string	"BLCRYPTO_SUITE_ECP_DP_SECP192R1"
.LASF21:
	.string	"BLCRYPTO_SUITE_ECP_DP_SECP384R1"
.LASF45:
	.string	"blcrypto_suite_hacc_ecp_mul"
.LASF31:
	.string	"blcrypto_suite_ecp_group_id"
.LASF40:
	.string	"T_size"
.LASF52:
	.string	"blcrypto_suite_hacc_reset"
.LASF19:
	.string	"BLCRYPTO_SUITE_ECP_DP_SECP224R1"
.LASF24:
	.string	"BLCRYPTO_SUITE_ECP_DP_BP384R1"
.LASF34:
	.string	"pbits"
.LASF27:
	.string	"BLCRYPTO_SUITE_ECP_DP_SECP192K1"
.LASF44:
	.string	"blcrypto_suite_hacc_mpi_exp_mod_secp256r1"
.LASF28:
	.string	"BLCRYPTO_SUITE_ECP_DP_SECP224K1"
.LASF1:
	.string	"unsigned char"
.LASF2:
	.string	"short int"
.LASF43:
	.string	"E_bin"
.LASF33:
	.string	"blcrypto_suite_ecp_group"
.LASF30:
	.string	"BLCRYPTO_SUITE_ECP_DP_CURVE448"
.LASF53:
	.string	"blcrypto_suite_hacc_secp256r1_exp_mod"
.LASF16:
	.string	"blcrypto_suite_mpi"
.LASF14:
	.string	"uint32_t"
.LASF12:
	.string	"char"
.LASF51:
	.string	"blcrypto_suite_mpi_write_binary"
.LASF36:
	.string	"modp"
.LASF38:
	.string	"t_post"
.LASF57:
	.string	"blcrypto_suite_mpi_lset"
.LASF15:
	.string	"blcrypto_suite_mpi_uint"
.LASF20:
	.string	"BLCRYPTO_SUITE_ECP_DP_SECP256R1"
.LASF32:
	.string	"blcrypto_suite_ecp_point"
.LASF26:
	.string	"BLCRYPTO_SUITE_ECP_DP_CURVE25519"
.LASF23:
	.string	"BLCRYPTO_SUITE_ECP_DP_BP256R1"
.LASF13:
	.string	"uint8_t"
.LASF61:
	.string	"mpi_mod"
.LASF29:
	.string	"BLCRYPTO_SUITE_ECP_DP_SECP256K1"
.LASF25:
	.string	"BLCRYPTO_SUITE_ECP_DP_BP512R1"
.LASF22:
	.string	"BLCRYPTO_SUITE_ECP_DP_SECP521R1"
.LASF41:
	.string	"result"
.LASF48:
	.string	"PxMont"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
