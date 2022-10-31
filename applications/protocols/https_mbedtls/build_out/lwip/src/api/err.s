	.file	"err.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.err_to_errno,"ax",@progbits
	.align	1
	.globl	err_to_errno
	.type	err_to_errno, @function
err_to_errno:
.LFB4:
	.file 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/api/err.c"
	.loc 1 70 1
	.cfi_startproc
.LVL0:
	.loc 1 71 3
	.loc 1 71 17 is_stmt 0
	addi	a5,a0,16
	.loc 1 71 6
	andi	a5,a5,0xff
	li	a4,16
	bgtu	a5,a4,.L3
	.loc 1 74 3 is_stmt 1
	.loc 1 74 28 is_stmt 0
	lui	a5,%hi(.LANCHOR0)
	addi	a5,a5,%lo(.LANCHOR0)
	slli	a0,a0,2
.LVL1:
	sub	a0,a5,a0
	lw	a0,0(a0)
	ret
.LVL2:
.L3:
	.loc 1 72 12
	li	a0,5
.LVL3:
	.loc 1 75 1
	ret
	.cfi_endproc
.LFE4:
	.size	err_to_errno, .-err_to_errno
	.section	.rodata.err_to_errno_table,"a"
	.align	2
	.set	.LANCHOR0,. + 0
	.type	err_to_errno_table, @object
	.size	err_to_errno_table, 68
err_to_errno_table:
	.word	0
	.word	12
	.word	105
	.word	11
	.word	113
	.word	115
	.word	22
	.word	11
	.word	98
	.word	114
	.word	106
	.word	107
	.word	-1
	.word	103
	.word	104
	.word	107
	.word	5
	.text
.Letext0:
	.file 2 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 3 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 4 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/arch.h"
	.file 5 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/err.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xf2
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF14
	.byte	0xc
	.4byte	.LASF15
	.4byte	.LASF16
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x3
	.4byte	0x25
	.byte	0x4
	.4byte	.LASF10
	.byte	0x2
	.byte	0x29
	.byte	0x15
	.4byte	0x3d
	.byte	0x5
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.byte	0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.byte	0x5
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.byte	0x5
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.byte	0x5
	.byte	0x4
	.byte	0x5
	.4byte	.LASF4
	.byte	0x5
	.byte	0x4
	.byte	0x7
	.4byte	.LASF5
	.byte	0x5
	.byte	0x8
	.byte	0x5
	.4byte	.LASF6
	.byte	0x5
	.byte	0x8
	.byte	0x7
	.4byte	.LASF7
	.byte	0x5
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.byte	0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF9
	.byte	0x4
	.4byte	.LASF11
	.byte	0x3
	.byte	0x14
	.byte	0x12
	.4byte	0x31
	.byte	0x4
	.4byte	.LASF12
	.byte	0x4
	.byte	0x7e
	.byte	0x10
	.4byte	0x83
	.byte	0x4
	.4byte	.LASF13
	.byte	0x5
	.byte	0x60
	.byte	0xe
	.4byte	0x8f
	.byte	0x6
	.4byte	0x2c
	.4byte	0xb7
	.byte	0x7
	.4byte	0x75
	.byte	0x10
	.byte	0
	.byte	0x3
	.4byte	0xa7
	.byte	0x8
	.4byte	.LASF17
	.byte	0x1
	.byte	0x30
	.byte	0x12
	.4byte	0xb7
	.byte	0x5
	.byte	0x3
	.4byte	err_to_errno_table
	.byte	0x9
	.4byte	.LASF18
	.byte	0x1
	.byte	0x45
	.byte	0x1
	.4byte	0x25
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.byte	0xa
	.string	"err"
	.byte	0x1
	.byte	0x45
	.byte	0x14
	.4byte	0x9b
	.4byte	.LLST0
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
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
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
	.byte	0x6
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
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
	.byte	0x18
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL3
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
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
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF6:
	.string	"long long int"
.LASF8:
	.string	"unsigned int"
.LASF1:
	.string	"unsigned char"
.LASF5:
	.string	"long unsigned int"
.LASF7:
	.string	"long long unsigned int"
.LASF13:
	.string	"err_t"
.LASF17:
	.string	"err_to_errno_table"
.LASF9:
	.string	"char"
.LASF11:
	.string	"int8_t"
.LASF4:
	.string	"long int"
.LASF15:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/api/err.c"
.LASF16:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/lwip"
.LASF10:
	.string	"__int8_t"
.LASF3:
	.string	"short unsigned int"
.LASF12:
	.string	"s8_t"
.LASF18:
	.string	"err_to_errno"
.LASF2:
	.string	"short int"
.LASF14:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
.LASF0:
	.string	"signed char"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
