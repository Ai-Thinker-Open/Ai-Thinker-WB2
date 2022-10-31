	.file	"test_crypto-bl.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.rodata.wpa_crypto_tc_cmac_1.str1.4,"aMS",@progbits,1
	.align	2
.LC1:
	.string	"%s: LN %d failed\r\n"
	.align	2
.LC2:
	.string	"%s: succeed\r\n"
	.align	2
.LC0:
	.string	"\204\357\257\366\037g\343\334C\342\346\352\221\026d\037"
	.section	.text.wpa_crypto_tc_cmac_1,"ax",@progbits
	.align	1
	.globl	wpa_crypto_tc_cmac_1
	.type	wpa_crypto_tc_cmac_1, @function
wpa_crypto_tc_cmac_1:
.LFB46:
	.file 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/test/test_crypto-bl.c"
	.loc 1 9 1
	.cfi_startproc
	.loc 1 10 5
	.loc 1 9 1 is_stmt 0
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	.loc 1 13 19
	lui	a1,%hi(.LC0)
	.loc 1 11 13
	li	a5,171
	.loc 1 13 19
	li	a2,16
	addi	a1,a1,%lo(.LC0)
	addi	a0,sp,32
	.loc 1 9 1
	sw	ra,76(sp)
	sw	s0,72(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.loc 1 11 13
	sw	a5,16(sp)
	.loc 1 10 13
	sw	zero,0(sp)
	sw	zero,4(sp)
	sw	zero,8(sp)
	sw	zero,12(sp)
	.loc 1 11 5 is_stmt 1
	.loc 1 11 13 is_stmt 0
	sw	zero,20(sp)
	sw	zero,24(sp)
	sw	zero,28(sp)
	.loc 1 13 5 is_stmt 1
	.loc 1 13 19 is_stmt 0
	call	memcpy
.LVL0:
	.loc 1 14 5 is_stmt 1
	.loc 1 16 9 is_stmt 0
	li	a2,16
	addi	a3,sp,48
	addi	a1,sp,16
	mv	a0,sp
	.loc 1 14 13
	sw	zero,48(sp)
	sw	zero,52(sp)
	sw	zero,56(sp)
	sw	zero,60(sp)
	.loc 1 16 5 is_stmt 1
	.loc 1 16 9 is_stmt 0
	call	omac1_aes_128
.LVL1:
	lui	s0,%hi(.LANCHOR0)
	.loc 1 17 14
	li	a2,17
	.loc 1 16 8
	bne	a0,zero,.L7
	.loc 1 21 5 is_stmt 1
	.loc 1 21 14 is_stmt 0
	li	a2,16
	addi	a1,sp,32
	addi	a0,sp,48
	call	memcmp
.LVL2:
	.loc 1 21 8
	bne	a0,zero,.L4
	.loc 1 22 9 is_stmt 1
	.loc 1 22 14
	lui	a0,%hi(.LC2)
	addi	a1,s0,%lo(.LANCHOR0)
	addi	a0,a0,%lo(.LC2)
	call	printf
.LVL3:
	.loc 1 22 59
.L1:
	.loc 1 26 1 is_stmt 0
	lw	ra,76(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,72(sp)
	.cfi_restore 8
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
.L4:
	.cfi_restore_state
	.loc 1 24 9 is_stmt 1
	.loc 1 24 14
	li	a2,24
.L7:
	lui	a0,%hi(.LC1)
	addi	a1,s0,%lo(.LANCHOR0)
	addi	a0,a0,%lo(.LC1)
	call	printf
.LVL4:
	.loc 1 24 68
	j	.L1
	.cfi_endproc
.LFE46:
	.size	wpa_crypto_tc_cmac_1, .-wpa_crypto_tc_cmac_1
	.section	.text.wpa_crypto_test,"ax",@progbits
	.align	1
	.globl	wpa_crypto_test
	.type	wpa_crypto_test, @function
wpa_crypto_test:
.LFB47:
	.loc 1 29 1
	.cfi_startproc
	.loc 1 30 5
	tail	wpa_crypto_tc_cmac_1
.LVL5:
	.cfi_endproc
.LFE47:
	.size	wpa_crypto_test, .-wpa_crypto_test
	.section	.rodata.__func__.0,"a"
	.align	2
	.set	.LANCHOR0,. + 0
	.type	__func__.0, @object
	.size	__func__.0, 21
__func__.0:
	.string	"wpa_crypto_tc_cmac_1"
	.text
.Letext0:
	.file 2 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/crypto/aes.h"
	.file 3 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h"
	.file 4 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h"
	.file 5 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.file 6 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x213
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF15
	.byte	0xc
	.4byte	.LASF16
	.4byte	.LASF17
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.byte	0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF1
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF2
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF3
	.byte	0x3
	.4byte	.LASF18
	.byte	0x5
	.byte	0x2e
	.byte	0x17
	.4byte	0x52
	.byte	0x4
	.4byte	0x41
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF4
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF6
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF7
	.byte	0x5
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF9
	.byte	0x4
	.4byte	0x7c
	.byte	0x6
	.4byte	.LASF19
	.byte	0x1
	.byte	0x1c
	.byte	0x6
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.byte	0x1
	.byte	0x9c
	.4byte	0xa8
	.byte	0x7
	.4byte	.LVL5
	.4byte	0xa8
	.byte	0
	.byte	0x8
	.4byte	.LASF20
	.byte	0x1
	.byte	0x8
	.byte	0x6
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.byte	0x1
	.byte	0x9c
	.4byte	0x1ad
	.byte	0x9
	.string	"key"
	.byte	0x1
	.byte	0xa
	.byte	0xd
	.4byte	0x1ad
	.byte	0x3
	.byte	0x91
	.byte	0xb0,0x7f
	.byte	0xa
	.4byte	.LASF10
	.byte	0x1
	.byte	0xb
	.byte	0xd
	.4byte	0x1ad
	.byte	0x2
	.byte	0x91
	.byte	0x40
	.byte	0xa
	.4byte	.LASF11
	.byte	0x1
	.byte	0xd
	.byte	0x13
	.4byte	0x1cd
	.byte	0x2
	.byte	0x91
	.byte	0x50
	.byte	0x9
	.string	"mic"
	.byte	0x1
	.byte	0xe
	.byte	0xd
	.4byte	0x1ad
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0xb
	.4byte	.LASF21
	.4byte	0x1e2
	.byte	0x5
	.byte	0x3
	.4byte	__func__.0
	.byte	0xc
	.4byte	.LVL0
	.4byte	0x1e7
	.4byte	0x12c
	.byte	0xd
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x50
	.byte	0xd
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0xd
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x40
	.byte	0
	.byte	0xc
	.4byte	.LVL1
	.4byte	0x1f2
	.4byte	0x151
	.byte	0xd
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0xd
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x40
	.byte	0xd
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x40
	.byte	0xd
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0
	.byte	0xc
	.4byte	.LVL2
	.4byte	0x1fe
	.4byte	0x170
	.byte	0xd
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0xd
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x50
	.byte	0xd
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x40
	.byte	0
	.byte	0xc
	.4byte	.LVL3
	.4byte	0x20a
	.4byte	0x190
	.byte	0xd
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0xd
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0
	.byte	0xe
	.4byte	.LVL4
	.4byte	0x20a
	.byte	0xd
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0xd
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0
	.byte	0
	.byte	0xf
	.4byte	0x41
	.4byte	0x1bd
	.byte	0x10
	.4byte	0x75
	.byte	0xf
	.byte	0
	.byte	0xf
	.4byte	0x4d
	.4byte	0x1cd
	.byte	0x10
	.4byte	0x75
	.byte	0xf
	.byte	0
	.byte	0x4
	.4byte	0x1bd
	.byte	0xf
	.4byte	0x83
	.4byte	0x1e2
	.byte	0x10
	.4byte	0x75
	.byte	0x14
	.byte	0
	.byte	0x4
	.4byte	0x1d2
	.byte	0x11
	.4byte	.LASF22
	.4byte	.LASF23
	.byte	0x6
	.byte	0
	.byte	0x12
	.4byte	.LASF12
	.4byte	.LASF12
	.byte	0x2
	.byte	0x1e
	.byte	0x5
	.byte	0x12
	.4byte	.LASF13
	.4byte	.LASF13
	.byte	0x3
	.byte	0x1e
	.byte	0x5
	.byte	0x12
	.4byte	.LASF14
	.4byte	.LASF14
	.byte	0x4
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
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
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
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x95,0x42
	.byte	0x19
	.byte	0x31
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
	.byte	0xa
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
	.byte	0xb
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x49
	.byte	0x13
	.byte	0x34
	.byte	0x19
	.byte	0x2
	.byte	0x18
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
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xf
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x10
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
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
	.byte	0
	.byte	0
	.byte	0x12
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
	.section	.debug_aranges,"",@progbits
	.4byte	0x24
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB46
	.4byte	.LFE46
	.4byte	.LFB47
	.4byte	.LFE47
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF3:
	.string	"long long int"
.LASF23:
	.string	"__builtin_memcpy"
.LASF8:
	.string	"unsigned int"
.LASF4:
	.string	"unsigned char"
.LASF21:
	.string	"__func__"
.LASF13:
	.string	"memcmp"
.LASF20:
	.string	"wpa_crypto_tc_cmac_1"
.LASF6:
	.string	"long unsigned int"
.LASF7:
	.string	"long long unsigned int"
.LASF9:
	.string	"char"
.LASF18:
	.string	"uint8_t"
.LASF19:
	.string	"wpa_crypto_test"
.LASF10:
	.string	"data"
.LASF2:
	.string	"long int"
.LASF12:
	.string	"omac1_aes_128"
.LASF22:
	.string	"memcpy"
.LASF17:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/wpa_supplicant"
.LASF5:
	.string	"short unsigned int"
.LASF14:
	.string	"printf"
.LASF16:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/test/test_crypto-bl.c"
.LASF1:
	.string	"short int"
.LASF11:
	.string	"mic_expected"
.LASF15:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
.LASF0:
	.string	"signed char"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
