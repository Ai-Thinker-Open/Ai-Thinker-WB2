	.file	"xz_port.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.simple_malloc_init,"ax",@progbits
	.align	1
	.globl	simple_malloc_init
	.type	simple_malloc_init, @function
simple_malloc_init:
.LFB4:
	.file 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/Common/xz/xz_port.c"
	.loc 1 6 1
	.cfi_startproc
	.loc 1 7 5
	.loc 1 7 13 is_stmt 0
	lui	a5,%hi(.LANCHOR0)
	sw	zero,%lo(.LANCHOR0)(a5)
	.loc 1 8 1
	ret
	.cfi_endproc
.LFE4:
	.size	simple_malloc_init, .-simple_malloc_init
	.section	.rodata.simple_malloc.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"Simple Malloc %d\r\n"
	.section	.text.simple_malloc,"ax",@progbits
	.align	1
	.globl	simple_malloc
	.type	simple_malloc, @function
simple_malloc:
.LFB5:
	.loc 1 10 1 is_stmt 1
	.cfi_startproc
.LVL0:
	.loc 1 11 5
	.loc 1 12 5
	.loc 1 10 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	.loc 1 12 5
	mv	a1,a0
	.cfi_offset 8, -8
	.loc 1 10 1
	mv	s0,a0
	.loc 1 12 5
	lui	a0,%hi(.LC0)
.LVL1:
	addi	a0,a0,%lo(.LC0)
	.loc 1 10 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 12 5
	call	bflb_platform_printf
.LVL2:
	.loc 1 13 5 is_stmt 1
	.loc 1 13 16 is_stmt 0
	lui	a5,%hi(.LANCHOR0)
	addi	a5,a5,%lo(.LANCHOR0)
	lw	a0,0(a5)
	.loc 1 13 7
	li	a4,65536
	.loc 1 13 16
	add	s0,a0,s0
.LVL3:
	.loc 1 13 7
	bgeu	s0,a4,.L4
	.loc 1 14 9 is_stmt 1
	.loc 1 14 10 is_stmt 0
	lui	a4,%hi(mallocBuf)
	addi	a4,a4,%lo(mallocBuf)
	add	a0,a0,a4
.LVL4:
	.loc 1 15 9 is_stmt 1
	.loc 1 15 17 is_stmt 0
	sw	s0,0(a5)
	.loc 1 16 9 is_stmt 1
.LVL5:
.L2:
	.loc 1 19 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.L4:
	.cfi_restore_state
	.loc 1 18 11
	li	a0,0
	j	.L2
	.cfi_endproc
.LFE5:
	.size	simple_malloc, .-simple_malloc
	.section	.rodata.simple_free.str1.4,"aMS",@progbits,1
	.align	2
.LC1:
	.string	"Simple Free %08x\r\n"
	.section	.text.simple_free,"ax",@progbits
	.align	1
	.globl	simple_free
	.type	simple_free, @function
simple_free:
.LFB6:
	.loc 1 22 1 is_stmt 1
	.cfi_startproc
.LVL6:
	.loc 1 23 5
	.loc 1 22 1 is_stmt 0
	mv	a1,a0
	.loc 1 23 5
	lui	a0,%hi(.LC1)
.LVL7:
	addi	a0,a0,%lo(.LC1)
	tail	bflb_platform_printf
.LVL8:
	.cfi_endproc
.LFE6:
	.size	simple_free, .-simple_free
	.section	.noinit_data,"aw"
	.align	2
	.type	mallocBuf, @object
	.size	mallocBuf, 65536
mallocBuf:
	.zero	65536
	.section	.sbss.malloced,"aw",@nobits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	malloced, @object
	.size	malloced, 4
malloced:
	.zero	4
	.text
.Letext0:
	.file 2 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 3 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 4 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/Common/platform_print/bflb_platform.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x18b
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF17
	.byte	0xc
	.4byte	.LASF18
	.4byte	.LASF19
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
	.byte	0x5
	.byte	0x4
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF11
	.byte	0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x18
	.byte	0x13
	.4byte	0x2c
	.byte	0x3
	.4byte	.LASF13
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x54
	.byte	0x6
	.4byte	0x8c
	.4byte	0xb5
	.byte	0x7
	.4byte	0x7c
	.2byte	0xffff
	.byte	0
	.byte	0x8
	.4byte	.LASF14
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.4byte	0xa4
	.byte	0x5
	.byte	0x3
	.4byte	mallocBuf
	.byte	0x8
	.4byte	.LASF15
	.byte	0x1
	.byte	0x3
	.byte	0x11
	.4byte	0x98
	.byte	0x5
	.byte	0x3
	.4byte	malloced
	.byte	0x9
	.4byte	.LASF20
	.byte	0x1
	.byte	0x15
	.byte	0x6
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0x118
	.byte	0xa
	.string	"p"
	.byte	0x1
	.byte	0x15
	.byte	0x18
	.4byte	0x83
	.4byte	.LLST2
	.byte	0xb
	.4byte	.LVL8
	.4byte	0x182
	.byte	0xc
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0xc
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0
	.byte	0xd
	.4byte	.LASF21
	.byte	0x1
	.byte	0x9
	.byte	0x8
	.4byte	0x83
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0x16a
	.byte	0xe
	.4byte	.LASF16
	.byte	0x1
	.byte	0x9
	.byte	0x1f
	.4byte	0x98
	.4byte	.LLST0
	.byte	0xf
	.string	"p"
	.byte	0x1
	.byte	0xb
	.byte	0xe
	.4byte	0x16a
	.4byte	.LLST1
	.byte	0x10
	.4byte	.LVL2
	.4byte	0x182
	.byte	0xc
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0xc
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0
	.byte	0x11
	.byte	0x4
	.4byte	0x8c
	.byte	0x12
	.4byte	.LASF22
	.byte	0x1
	.byte	0x5
	.byte	0x6
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.byte	0x13
	.4byte	.LASF23
	.4byte	.LASF23
	.byte	0x4
	.byte	0x18
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
	.byte	0x5
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
	.byte	0xe
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
	.byte	0
	.byte	0
	.byte	0x11
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x12
	.byte	0x2e
	.byte	0
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
.LLST2:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL7
	.4byte	.LVL8-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL8-1
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL3
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x5a
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
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF8:
	.string	"long long int"
.LASF23:
	.string	"bflb_platform_printf"
.LASF10:
	.string	"unsigned int"
.LASF22:
	.string	"simple_malloc_init"
.LASF6:
	.string	"__uint32_t"
.LASF15:
	.string	"malloced"
.LASF7:
	.string	"long unsigned int"
.LASF9:
	.string	"long long unsigned int"
.LASF5:
	.string	"__uint8_t"
.LASF12:
	.string	"uint8_t"
.LASF1:
	.string	"unsigned char"
.LASF11:
	.string	"char"
.LASF19:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/bl602_std"
.LASF13:
	.string	"uint32_t"
.LASF4:
	.string	"long int"
.LASF20:
	.string	"simple_free"
.LASF21:
	.string	"simple_malloc"
.LASF18:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/Common/xz/xz_port.c"
.LASF3:
	.string	"short unsigned int"
.LASF0:
	.string	"signed char"
.LASF16:
	.string	"size"
.LASF2:
	.string	"short int"
.LASF17:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
.LASF14:
	.string	"mallocBuf"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
