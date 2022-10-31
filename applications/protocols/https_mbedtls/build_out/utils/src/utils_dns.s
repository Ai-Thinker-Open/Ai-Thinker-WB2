	.file	"utils_dns.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.utils_dns_domain_get,"ax",@progbits
	.align	1
	.globl	utils_dns_domain_get
	.type	utils_dns_domain_get, @function
utils_dns_domain_get:
.LFB0:
	.file 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/utils/src/utils_dns.c"
	.loc 1 4 1
	.cfi_startproc
.LVL0:
	.loc 1 5 5
	.loc 1 7 5
	.loc 1 7 14 is_stmt 0
	lw	a7,0(a2)
.LVL1:
	.loc 1 9 5 is_stmt 1
	.loc 1 10 5
	.loc 1 11 5
	.loc 1 11 7 is_stmt 0
	lbu	a4,0(a0)
.LVL2:
	.loc 1 12 5 is_stmt 1
	.loc 1 10 13 is_stmt 0
	li	a5,0
	.loc 1 11 23
	li	t1,1
	.loc 1 19 28
	li	t3,46
.LVL3:
.L2:
	.loc 1 12 11 is_stmt 1
	beq	a4,zero,.L4
	.loc 1 12 18 is_stmt 0 discriminator 1
	bgt	a7,zero,.L5
.L4:
	.loc 1 23 5 is_stmt 1
	.loc 1 23 10 is_stmt 0
	sw	a5,0(a2)
	.loc 1 25 5 is_stmt 1
	.loc 1 26 1 is_stmt 0
	li	a0,0
.LVL4:
	ret
.LVL5:
.L5:
	.loc 1 13 9 is_stmt 1
	.loc 1 13 33 is_stmt 0
	add	t4,a0,t1
	lbu	t5,0(t4)
	.loc 1 13 24
	add	t4,a1,a5
	.loc 1 14 10
	addi	a4,a4,-1
.LVL6:
	.loc 1 13 24
	sb	t5,0(t4)
	.loc 1 13 40
	addi	a3,t1,1
.LVL7:
	.loc 1 13 20
	addi	a6,a5,1
.LVL8:
	.loc 1 14 9 is_stmt 1
	.loc 1 15 9
	.loc 1 15 17 is_stmt 0
	addi	a7,a7,-1
.LVL9:
	.loc 1 17 9 is_stmt 1
	.loc 1 17 12 is_stmt 0
	bne	a4,zero,.L3
	.loc 1 17 20 discriminator 1
	beq	a7,zero,.L3
	.loc 1 19 13 is_stmt 1
.LVL10:
	.loc 1 19 28 is_stmt 0
	add	a6,a1,a6
	sb	t3,0(a6)
	.loc 1 20 13 is_stmt 1
.LVL11:
	.loc 1 20 24 is_stmt 0
	add	a3,a0,a3
	.loc 1 20 15
	lbu	a4,0(a3)
.LVL12:
	.loc 1 19 24
	addi	a6,a5,2
.LVL13:
	.loc 1 20 31
	addi	a3,t1,2
.LVL14:
.L3:
	.loc 1 14 10
	mv	a5,a6
	mv	t1,a3
	j	.L2
	.cfi_endproc
.LFE0:
	.size	utils_dns_domain_get, .-utils_dns_domain_get
	.text
.Letext0:
	.file 2 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x103
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF13
	.byte	0xc
	.4byte	.LASF14
	.4byte	.LASF15
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
	.4byte	.LASF16
	.byte	0x2
	.byte	0x2e
	.byte	0x17
	.4byte	0x4d
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
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.byte	0x5
	.4byte	.LASF17
	.byte	0x1
	.byte	0x3
	.byte	0x5
	.4byte	0x69
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.byte	0x1
	.byte	0x9c
	.4byte	0xfa
	.byte	0x6
	.4byte	.LASF9
	.byte	0x1
	.byte	0x3
	.byte	0x23
	.4byte	0xfa
	.4byte	.LLST0
	.byte	0x7
	.string	"buf"
	.byte	0x1
	.byte	0x3
	.byte	0x35
	.4byte	0xfa
	.byte	0x1
	.byte	0x5b
	.byte	0x7
	.string	"len"
	.byte	0x1
	.byte	0x3
	.byte	0x3f
	.4byte	0x100
	.byte	0x1
	.byte	0x5c
	.byte	0x8
	.string	"i"
	.byte	0x1
	.byte	0x5
	.byte	0x9
	.4byte	0x69
	.4byte	.LLST1
	.byte	0x9
	.4byte	.LASF10
	.byte	0x1
	.byte	0x5
	.byte	0xc
	.4byte	0x69
	.4byte	.LLST2
	.byte	0x9
	.4byte	.LASF11
	.byte	0x1
	.byte	0x5
	.byte	0x14
	.4byte	0x69
	.4byte	.LLST3
	.byte	0xa
	.4byte	.LASF12
	.byte	0x1
	.byte	0x5
	.byte	0x1d
	.4byte	0x69
	.byte	0x1
	.byte	0x61
	.byte	0
	.byte	0xb
	.byte	0x4
	.4byte	0x41
	.byte	0xb
	.byte	0x4
	.4byte	0x69
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
	.byte	0x6
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
	.byte	0x7
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
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x8
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
	.byte	0x9
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
	.byte	0xf
	.byte	0
	.byte	0xb
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
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LFE0
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL2
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL6
	.4byte	.LVL8
	.2byte	0x3
	.byte	0x7e
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LFE0
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL7
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL11
	.4byte	.LVL14
	.2byte	0x3
	.byte	0x76
	.byte	0x2
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LFE0
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL8
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL10
	.4byte	.LVL13
	.2byte	0x3
	.byte	0x7f
	.byte	0x2
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LFE0
	.2byte	0x1
	.byte	0x60
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
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF9:
	.string	"records"
.LASF17:
	.string	"utils_dns_domain_get"
.LASF15:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/utils"
.LASF10:
	.string	"pos_in"
.LASF4:
	.string	"unsigned char"
.LASF6:
	.string	"long unsigned int"
.LASF5:
	.string	"short unsigned int"
.LASF11:
	.string	"pos_out"
.LASF8:
	.string	"unsigned int"
.LASF7:
	.string	"long long unsigned int"
.LASF16:
	.string	"uint8_t"
.LASF3:
	.string	"long long int"
.LASF13:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
.LASF14:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/utils/src/utils_dns.c"
.LASF1:
	.string	"short int"
.LASF2:
	.string	"long int"
.LASF12:
	.string	"size_buf"
.LASF0:
	.string	"signed char"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
