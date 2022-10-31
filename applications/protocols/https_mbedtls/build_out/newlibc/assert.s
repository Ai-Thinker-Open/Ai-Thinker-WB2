	.file	"assert.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.rodata.__assert.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"Assertion Failed: %s, in %s:%d\r\n"
	.section	.text.__assert,"ax",@progbits
	.align	1
	.globl	__assert
	.type	__assert, @function
__assert:
.LFB3:
	.file 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/libc/newlibc/assert.c"
	.loc 1 10 1
	.cfi_startproc
.LVL0:
	.loc 1 11 5
	.loc 1 10 1 is_stmt 0
	mv	a3,a1
	mv	a1,a2
.LVL1:
	.loc 1 11 5
	mv	a2,a0
.LVL2:
	lui	a0,%hi(.LC0)
.LVL3:
	.loc 1 10 1
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 11 5
	addi	a0,a0,%lo(.LC0)
	.loc 1 10 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 11 5
	call	printf
.LVL4:
	.loc 1 12 5 is_stmt 1
	.loc 1 12 22
	li	a0,2
	call	vEnvironmentCall
.LVL5:
.L2:
	.loc 1 13 5 discriminator 1
	.loc 1 13 13 discriminator 1
	.loc 1 13 10 discriminator 1
	j	.L2
	.cfi_endproc
.LFE3:
	.size	__assert, .-__assert
	.section	.rodata.__assert_func.str1.4,"aMS",@progbits,1
	.align	2
.LC1:
	.string	"Assertion Failed: %s, in %s %s:%d\r\n"
	.section	.text.__assert_func,"ax",@progbits
	.align	1
	.globl	__assert_func
	.type	__assert_func, @function
__assert_func:
.LFB4:
	.loc 1 18 1
	.cfi_startproc
.LVL6:
	.loc 1 19 5
	.loc 1 18 1 is_stmt 0
	mv	a4,a1
	mv	a1,a3
.LVL7:
	.loc 1 19 5
	mv	a3,a0
.LVL8:
	lui	a0,%hi(.LC1)
.LVL9:
	.loc 1 18 1
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 19 5
	addi	a0,a0,%lo(.LC1)
	.loc 1 18 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 19 5
	call	printf
.LVL10:
	.loc 1 20 5 is_stmt 1
	.loc 1 20 22
	li	a0,2
	call	vEnvironmentCall
.LVL11:
.L5:
	.loc 1 21 5 discriminator 1
	.loc 1 21 13 discriminator 1
	.loc 1 21 10 discriminator 1
	j	.L5
	.cfi_endproc
.LFE4:
	.size	__assert_func, .-__assert_func
	.section	.text.abort,"ax",@progbits
	.align	1
	.globl	abort
	.type	abort, @function
abort:
.LFB5:
	.loc 1 25 13
	.cfi_startproc
	.loc 1 26 5
	.loc 1 26 22
	.loc 1 25 13 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 26 22
	li	a0,2
	.loc 1 25 13
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 26 22
	call	vEnvironmentCall
.LVL12:
.L8:
	.loc 1 27 5 is_stmt 1 discriminator 1
	.loc 1 27 13 discriminator 1
	.loc 1 27 10 discriminator 1
	j	.L8
	.cfi_endproc
.LFE5:
	.size	abort, .-abort
	.text
.Letext0:
	.file 2 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/assert.h"
	.file 3 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h"
	.file 4 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1d3
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
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
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
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF5
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF6
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF7
	.byte	0x3
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
	.4byte	0x6b
	.byte	0x5
	.byte	0x4
	.4byte	0x72
	.byte	0x6
	.4byte	.LASF10
	.byte	0x1
	.byte	0x19
	.byte	0x1
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0xa3
	.byte	0x7
	.4byte	.LVL12
	.4byte	0x1be
	.byte	0x8
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.byte	0x6
	.4byte	.LASF11
	.byte	0x2
	.byte	0x29
	.byte	0x6
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0x13c
	.byte	0x9
	.4byte	.LASF12
	.byte	0x1
	.byte	0x11
	.byte	0x1c
	.4byte	0x77
	.4byte	.LLST3
	.byte	0x9
	.4byte	.LASF13
	.byte	0x1
	.byte	0x11
	.byte	0x26
	.4byte	0x5d
	.4byte	.LLST4
	.byte	0x9
	.4byte	.LASF14
	.byte	0x1
	.byte	0x11
	.byte	0x38
	.4byte	0x77
	.4byte	.LLST5
	.byte	0x9
	.4byte	.LASF15
	.byte	0x1
	.byte	0x11
	.byte	0x4a
	.4byte	0x77
	.4byte	.LLST6
	.byte	0xa
	.4byte	.LVL10
	.4byte	0x1ca
	.4byte	0x12c
	.byte	0x8
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x8
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x8
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x8
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x8
	.byte	0x1
	.byte	0x5e
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0
	.byte	0x7
	.4byte	.LVL11
	.4byte	0x1be
	.byte	0x8
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.byte	0x6
	.4byte	.LASF16
	.byte	0x2
	.byte	0x27
	.byte	0x6
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x1
	.byte	0x9c
	.4byte	0x1be
	.byte	0x9
	.4byte	.LASF12
	.byte	0x1
	.byte	0x9
	.byte	0x17
	.4byte	0x77
	.4byte	.LLST0
	.byte	0x9
	.4byte	.LASF13
	.byte	0x1
	.byte	0x9
	.byte	0x21
	.4byte	0x5d
	.4byte	.LLST1
	.byte	0x9
	.4byte	.LASF15
	.byte	0x1
	.byte	0x9
	.byte	0x33
	.4byte	0x77
	.4byte	.LLST2
	.byte	0xa
	.4byte	.LVL4
	.4byte	0x1ca
	.4byte	0x1ae
	.byte	0x8
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x8
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x8
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x8
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0
	.byte	0x7
	.4byte	.LVL5
	.4byte	0x1be
	.byte	0x8
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.byte	0xb
	.4byte	.LASF17
	.4byte	.LASF17
	.byte	0x3
	.byte	0x55
	.byte	0xd
	.byte	0xb
	.4byte	.LASF18
	.4byte	.LASF18
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
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x5
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
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
	.byte	0x87,0x1
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
	.byte	0x7
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x9
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
	.byte	0xa
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
	.byte	0xb
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
.LLST3:
	.4byte	.LVL6
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL9
	.4byte	.LVL10-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL10-1
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL7
	.4byte	.LVL10-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL10-1
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL6
	.4byte	.LVL10-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL10-1
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL6
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL8
	.4byte	.LVL10-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL10-1
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL3
	.4byte	.LVL4-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL4-1
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
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL1
	.4byte	.LVL4-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL4-1
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL2
	.4byte	.LVL4-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL4-1
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x2c
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
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF6:
	.string	"long long int"
.LASF13:
	.string	"line"
.LASF8:
	.string	"unsigned int"
.LASF0:
	.string	"signed char"
.LASF20:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/libc/newlibc/assert.c"
.LASF5:
	.string	"long unsigned int"
.LASF7:
	.string	"long long unsigned int"
.LASF11:
	.string	"__assert_func"
.LASF1:
	.string	"unsigned char"
.LASF9:
	.string	"char"
.LASF4:
	.string	"long int"
.LASF12:
	.string	"file"
.LASF15:
	.string	"cond"
.LASF17:
	.string	"vEnvironmentCall"
.LASF3:
	.string	"short unsigned int"
.LASF18:
	.string	"printf"
.LASF16:
	.string	"__assert"
.LASF14:
	.string	"func"
.LASF10:
	.string	"abort"
.LASF2:
	.string	"short int"
.LASF19:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
.LASF21:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/newlibc"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
