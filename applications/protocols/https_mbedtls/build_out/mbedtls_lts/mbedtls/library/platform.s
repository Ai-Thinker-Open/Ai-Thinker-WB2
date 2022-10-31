	.file	"platform.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.mbedtls_calloc,"ax",@progbits
	.align	1
	.globl	mbedtls_calloc
	.type	mbedtls_calloc, @function
mbedtls_calloc:
.LFB4:
	.file 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/mbedtls_lts/mbedtls/library/platform.c"
	.loc 1 90 1
	.cfi_startproc
.LVL0:
	.loc 1 91 5
	.loc 1 91 13 is_stmt 0
	lui	a5,%hi(.LANCHOR0)
	lw	a5,%lo(.LANCHOR0)(a5)
	jr	a5
.LVL1:
	.cfi_endproc
.LFE4:
	.size	mbedtls_calloc, .-mbedtls_calloc
	.section	.text.mbedtls_free,"ax",@progbits
	.align	1
	.globl	mbedtls_free
	.type	mbedtls_free, @function
mbedtls_free:
.LFB5:
	.loc 1 95 1 is_stmt 1
	.cfi_startproc
.LVL2:
	.loc 1 96 5
	.loc 1 96 6 is_stmt 0
	lui	a5,%hi(.LANCHOR1)
	lw	a5,%lo(.LANCHOR1)(a5)
	jr	a5
.LVL3:
	.cfi_endproc
.LFE5:
	.size	mbedtls_free, .-mbedtls_free
	.section	.text.mbedtls_platform_set_calloc_free,"ax",@progbits
	.align	1
	.globl	mbedtls_platform_set_calloc_free
	.type	mbedtls_platform_set_calloc_free, @function
mbedtls_platform_set_calloc_free:
.LFB6:
	.loc 1 101 1 is_stmt 1
	.cfi_startproc
.LVL4:
	.loc 1 102 5
	.loc 1 102 25 is_stmt 0
	lui	a5,%hi(.LANCHOR0)
	sw	a0,%lo(.LANCHOR0)(a5)
	.loc 1 103 5 is_stmt 1
	.loc 1 103 23 is_stmt 0
	lui	a5,%hi(.LANCHOR1)
	sw	a1,%lo(.LANCHOR1)(a5)
	.loc 1 104 5 is_stmt 1
	.loc 1 105 1 is_stmt 0
	li	a0,0
.LVL5:
	ret
	.cfi_endproc
.LFE6:
	.size	mbedtls_platform_set_calloc_free, .-mbedtls_platform_set_calloc_free
	.section	.text.mbedtls_platform_setup,"ax",@progbits
	.align	1
	.globl	mbedtls_platform_setup
	.type	mbedtls_platform_setup, @function
mbedtls_platform_setup:
.LFB7:
	.loc 1 358 1 is_stmt 1
	.cfi_startproc
.LVL6:
	.loc 1 359 5
	.loc 1 361 5
	.loc 1 362 1 is_stmt 0
	li	a0,0
.LVL7:
	ret
	.cfi_endproc
.LFE7:
	.size	mbedtls_platform_setup, .-mbedtls_platform_setup
	.section	.text.mbedtls_platform_teardown,"ax",@progbits
	.align	1
	.globl	mbedtls_platform_teardown
	.type	mbedtls_platform_teardown, @function
mbedtls_platform_teardown:
.LFB8:
	.loc 1 368 1 is_stmt 1
	.cfi_startproc
.LVL8:
	.loc 1 369 5
	.loc 1 370 1 is_stmt 0
	ret
	.cfi_endproc
.LFE8:
	.size	mbedtls_platform_teardown, .-mbedtls_platform_teardown
	.section	.sdata.mbedtls_calloc_func,"aw"
	.align	2
	.set	.LANCHOR0,. + 0
	.type	mbedtls_calloc_func, @object
	.size	mbedtls_calloc_func, 4
mbedtls_calloc_func:
	.word	mbedtls_port_calloc
	.section	.sdata.mbedtls_free_func,"aw"
	.align	2
	.set	.LANCHOR1,. + 0
	.type	mbedtls_free_func, @object
	.size	mbedtls_free_func, 4
mbedtls_free_func:
	.word	vPortFree
	.text
.Letext0:
	.file 2 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h"
	.file 3 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/mbedtls_lts/mbedtls/include/mbedtls/platform.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x208
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF23
	.byte	0xc
	.4byte	.LASF24
	.4byte	.LASF25
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
	.byte	0x4
	.4byte	.LASF10
	.byte	0x2
	.byte	0xd1
	.byte	0x16
	.4byte	0x64
	.byte	0x5
	.byte	0x4
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF9
	.byte	0x6
	.byte	0x4
	.4byte	0x86
	.byte	0x7
	.4byte	0x91
	.byte	0x8
	.4byte	0x77
	.byte	0
	.byte	0x9
	.4byte	.LASF11
	.byte	0x1
	.byte	0x3
	.2byte	0x15a
	.byte	0x10
	.4byte	0xae
	.byte	0xa
	.4byte	.LASF26
	.byte	0x3
	.2byte	0x15c
	.byte	0xa
	.4byte	0x79
	.byte	0
	.byte	0
	.byte	0xb
	.4byte	.LASF11
	.byte	0x3
	.2byte	0x15e
	.byte	0x1
	.4byte	0x91
	.byte	0xc
	.4byte	0x77
	.4byte	0xcf
	.byte	0x8
	.4byte	0x6b
	.byte	0x8
	.4byte	0x6b
	.byte	0
	.byte	0xd
	.4byte	.LASF12
	.byte	0x1
	.byte	0x56
	.byte	0x11
	.4byte	0xe1
	.byte	0x5
	.byte	0x3
	.4byte	mbedtls_calloc_func
	.byte	0x6
	.byte	0x4
	.4byte	0xbb
	.byte	0xd
	.4byte	.LASF13
	.byte	0x1
	.byte	0x57
	.byte	0xf
	.4byte	0x80
	.byte	0x5
	.byte	0x3
	.4byte	mbedtls_free_func
	.byte	0xe
	.4byte	.LASF18
	.byte	0x1
	.2byte	0x16f
	.byte	0x6
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0x120
	.byte	0xf
	.string	"ctx"
	.byte	0x1
	.2byte	0x16f
	.byte	0x3b
	.4byte	0x120
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0xae
	.byte	0x10
	.4byte	.LASF14
	.byte	0x1
	.2byte	0x165
	.byte	0x5
	.4byte	0x5d
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.4byte	0x153
	.byte	0x11
	.string	"ctx"
	.byte	0x1
	.2byte	0x165
	.byte	0x37
	.4byte	0x120
	.4byte	.LLST4
	.byte	0
	.byte	0x12
	.4byte	.LASF15
	.byte	0x1
	.byte	0x63
	.byte	0x5
	.4byte	0x5d
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0x18c
	.byte	0x13
	.4byte	.LASF16
	.byte	0x1
	.byte	0x63
	.byte	0x30
	.4byte	0xe1
	.4byte	.LLST3
	.byte	0x14
	.4byte	.LASF17
	.byte	0x1
	.byte	0x64
	.byte	0x26
	.4byte	0x80
	.byte	0x1
	.byte	0x5b
	.byte	0
	.byte	0x15
	.4byte	.LASF19
	.byte	0x1
	.byte	0x5e
	.byte	0x6
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0x1c0
	.byte	0x16
	.string	"ptr"
	.byte	0x1
	.byte	0x5e
	.byte	0x1b
	.4byte	0x77
	.4byte	.LLST2
	.byte	0x17
	.4byte	.LVL3
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0
	.byte	0x19
	.4byte	.LASF20
	.byte	0x1
	.byte	0x59
	.byte	0x8
	.4byte	0x77
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.byte	0x13
	.4byte	.LASF21
	.byte	0x1
	.byte	0x59
	.byte	0x1f
	.4byte	0x6b
	.4byte	.LLST0
	.byte	0x13
	.4byte	.LASF22
	.byte	0x1
	.byte	0x59
	.byte	0x2d
	.4byte	0x6b
	.4byte	.LLST1
	.byte	0x17
	.4byte	.LVL1
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x18
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0
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
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x15
	.byte	0x1
	.byte	0x27
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0x5
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x9
	.byte	0x13
	.byte	0x1
	.byte	0x3
	.byte	0xe
	.byte	0xb
	.byte	0xb
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0xd
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x38
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xb
	.byte	0x16
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xc
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
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0xe
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
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
	.byte	0xf
	.byte	0x5
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x18
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
	.byte	0x5
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
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x12
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
	.byte	0x13
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
	.byte	0x14
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
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x15
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
	.byte	0x16
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
	.byte	0x17
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x95,0x42
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x18
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x19
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST4:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL7
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL5
	.4byte	.LFE6
	.2byte	0x5
	.byte	0x3
	.4byte	mbedtls_calloc_func
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL2
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL3-1
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1-1
	.4byte	.LFE4
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
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x3c
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
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
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
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF6:
	.string	"long long int"
.LASF15:
	.string	"mbedtls_platform_set_calloc_free"
.LASF10:
	.string	"size_t"
.LASF14:
	.string	"mbedtls_platform_setup"
.LASF16:
	.string	"calloc_func"
.LASF19:
	.string	"mbedtls_free"
.LASF24:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/mbedtls_lts/mbedtls/library/platform.c"
.LASF5:
	.string	"long unsigned int"
.LASF26:
	.string	"dummy"
.LASF7:
	.string	"long long unsigned int"
.LASF21:
	.string	"nmemb"
.LASF13:
	.string	"mbedtls_free_func"
.LASF20:
	.string	"mbedtls_calloc"
.LASF22:
	.string	"size"
.LASF1:
	.string	"unsigned char"
.LASF17:
	.string	"free_func"
.LASF23:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
.LASF12:
	.string	"mbedtls_calloc_func"
.LASF25:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/mbedtls_lts"
.LASF3:
	.string	"short unsigned int"
.LASF0:
	.string	"signed char"
.LASF4:
	.string	"long int"
.LASF18:
	.string	"mbedtls_platform_teardown"
.LASF2:
	.string	"short int"
.LASF8:
	.string	"unsigned int"
.LASF11:
	.string	"mbedtls_platform_context"
.LASF9:
	.string	"char"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
