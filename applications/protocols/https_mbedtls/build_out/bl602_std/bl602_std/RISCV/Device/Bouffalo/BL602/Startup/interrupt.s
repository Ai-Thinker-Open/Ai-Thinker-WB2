	.file	"interrupt.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.clic_enable_interrupt,"ax",@progbits
	.align	1
	.globl	clic_enable_interrupt
	.type	clic_enable_interrupt, @function
clic_enable_interrupt:
.LFB4:
	.file 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/RISCV/Device/Bouffalo/BL602/Startup/interrupt.c"
	.loc 1 150 46
	.cfi_startproc
.LVL0:
	.loc 1 151 5
	.loc 1 151 46 is_stmt 0
	li	a5,41943040
	addi	a5,a5,1024
	add	a0,a0,a5
.LVL1:
	.loc 1 151 55
	li	a5,1
	sb	a5,0(a0)
	.loc 1 152 1
	ret
	.cfi_endproc
.LFE4:
	.size	clic_enable_interrupt, .-clic_enable_interrupt
	.section	.text.clic_disable_interrupt,"ax",@progbits
	.align	1
	.globl	clic_disable_interrupt
	.type	clic_disable_interrupt, @function
clic_disable_interrupt:
.LFB5:
	.loc 1 154 47 is_stmt 1
	.cfi_startproc
.LVL2:
	.loc 1 155 3
	.loc 1 155 44 is_stmt 0
	li	a5,41943040
	addi	a5,a5,1024
	add	a0,a0,a5
.LVL3:
	.loc 1 155 53
	sb	zero,0(a0)
	.loc 1 156 1
	ret
	.cfi_endproc
.LFE5:
	.size	clic_disable_interrupt, .-clic_disable_interrupt
	.section	.text.clic_set_pending,"ax",@progbits
	.align	1
	.globl	clic_set_pending
	.type	clic_set_pending, @function
clic_set_pending:
.LFB6:
	.loc 1 158 39 is_stmt 1
	.cfi_startproc
.LVL4:
	.loc 1 159 3
	.loc 1 159 44 is_stmt 0
	li	a5,41943040
	add	a0,a0,a5
.LVL5:
	.loc 1 159 53
	li	a5,1
	sb	a5,0(a0)
	.loc 1 160 1
	ret
	.cfi_endproc
.LFE6:
	.size	clic_set_pending, .-clic_set_pending
	.section	.text.clic_clear_pending,"ax",@progbits
	.align	1
	.globl	clic_clear_pending
	.type	clic_clear_pending, @function
clic_clear_pending:
.LFB7:
	.loc 1 162 41 is_stmt 1
	.cfi_startproc
.LVL6:
	.loc 1 163 3
	.loc 1 163 44 is_stmt 0
	li	a5,41943040
	add	a0,a0,a5
.LVL7:
	.loc 1 163 53
	sb	zero,0(a0)
	.loc 1 164 1
	ret
	.cfi_endproc
.LFE7:
	.size	clic_clear_pending, .-clic_clear_pending
	.section	.text.clic_set_intcfg,"ax",@progbits
	.align	1
	.globl	clic_set_intcfg
	.type	clic_set_intcfg, @function
clic_set_intcfg:
.LFB8:
	.loc 1 166 56 is_stmt 1
	.cfi_startproc
.LVL8:
	.loc 1 167 3
	.loc 1 167 44 is_stmt 0
	li	a5,41947136
	addi	a5,a5,-2048
	add	a0,a0,a5
.LVL9:
	.loc 1 167 53
	andi	a1,a1,0xff
.LVL10:
	sb	a1,0(a0)
	.loc 1 168 1
	ret
	.cfi_endproc
.LFE8:
	.size	clic_set_intcfg, .-clic_set_intcfg
	.section	.text.clic_get_intcfg,"ax",@progbits
	.align	1
	.globl	clic_get_intcfg
	.type	clic_get_intcfg, @function
clic_get_intcfg:
.LFB9:
	.loc 1 170 43 is_stmt 1
	.cfi_startproc
.LVL11:
	.loc 1 171 3
	.loc 1 171 51 is_stmt 0
	li	a5,41947136
	addi	a5,a5,-2048
	add	a0,a0,a5
.LVL12:
	.loc 1 171 10
	lbu	a0,0(a0)
.LVL13:
	.loc 1 172 1
	andi	a0,a0,0xff
	ret
	.cfi_endproc
.LFE9:
	.size	clic_get_intcfg, .-clic_get_intcfg
	.section	.text.clic_set_cliccfg,"ax",@progbits
	.align	1
	.globl	clic_set_cliccfg
	.type	clic_set_cliccfg, @function
clic_set_cliccfg:
.LFB10:
	.loc 1 174 38 is_stmt 1
	.cfi_startproc
.LVL14:
	.loc 1 175 3
	.loc 1 175 45 is_stmt 0
	andi	a0,a0,0xff
.LVL15:
	li	a5,41947136
	sb	a0,-1024(a5)
	.loc 1 176 1
	ret
	.cfi_endproc
.LFE10:
	.size	clic_set_cliccfg, .-clic_set_cliccfg
	.section	.text.clic_get_cliccfg,"ax",@progbits
	.align	1
	.globl	clic_get_cliccfg
	.type	clic_get_cliccfg, @function
clic_get_cliccfg:
.LFB11:
	.loc 1 178 32 is_stmt 1
	.cfi_startproc
	.loc 1 179 3
	.loc 1 179 10 is_stmt 0
	li	a5,41947136
	lbu	a0,-1024(a5)
	.loc 1 180 1
	andi	a0,a0,0xff
	ret
	.cfi_endproc
.LFE11:
	.size	clic_get_cliccfg, .-clic_get_cliccfg
	.text
.Letext0:
	.file 2 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1b7
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF18
	.byte	0xc
	.4byte	.LASF19
	.4byte	.LASF20
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
	.4byte	.LASF6
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
	.byte	0x3
	.4byte	.LASF7
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0x67
	.byte	0x2
	.byte	0x4
	.byte	0x7
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
	.4byte	.LASF21
	.byte	0x1
	.byte	0xb2
	.byte	0x9
	.4byte	0x41
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x1
	.byte	0x9c
	.byte	0x6
	.4byte	.LASF12
	.byte	0x1
	.byte	0xae
	.byte	0x6
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x1
	.byte	0x9c
	.4byte	0xc0
	.byte	0x7
	.string	"cfg"
	.byte	0x1
	.byte	0xae
	.byte	0x22
	.4byte	0x5b
	.4byte	.LLST7
	.byte	0
	.byte	0x8
	.4byte	.LASF22
	.byte	0x1
	.byte	0xaa
	.byte	0x9
	.4byte	0x41
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0xeb
	.byte	0x9
	.4byte	.LASF11
	.byte	0x1
	.byte	0xaa
	.byte	0x24
	.4byte	0x5b
	.4byte	.LLST6
	.byte	0
	.byte	0x6
	.4byte	.LASF13
	.byte	0x1
	.byte	0xa6
	.byte	0x6
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0x122
	.byte	0x9
	.4byte	.LASF11
	.byte	0x1
	.byte	0xa6
	.byte	0x20
	.4byte	0x5b
	.4byte	.LLST4
	.byte	0x9
	.4byte	.LASF14
	.byte	0x1
	.byte	0xa6
	.byte	0x31
	.4byte	0x5b
	.4byte	.LLST5
	.byte	0
	.byte	0x6
	.4byte	.LASF15
	.byte	0x1
	.byte	0xa2
	.byte	0x6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.4byte	0x149
	.byte	0x9
	.4byte	.LASF11
	.byte	0x1
	.byte	0xa2
	.byte	0x22
	.4byte	0x5b
	.4byte	.LLST3
	.byte	0
	.byte	0x6
	.4byte	.LASF16
	.byte	0x1
	.byte	0x9e
	.byte	0x6
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0x170
	.byte	0x9
	.4byte	.LASF11
	.byte	0x1
	.byte	0x9e
	.byte	0x20
	.4byte	0x5b
	.4byte	.LLST2
	.byte	0
	.byte	0x6
	.4byte	.LASF17
	.byte	0x1
	.byte	0x9a
	.byte	0x6
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0x197
	.byte	0x9
	.4byte	.LASF11
	.byte	0x1
	.byte	0x9a
	.byte	0x28
	.4byte	0x5b
	.4byte	.LLST1
	.byte	0
	.byte	0xa
	.4byte	.LASF23
	.byte	0x1
	.byte	0x96
	.byte	0x6
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.byte	0x9
	.4byte	.LASF11
	.byte	0x1
	.byte	0x96
	.byte	0x26
	.4byte	0x5b
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST7:
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL15
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x6
	.byte	0x7a
	.byte	0x80,0xf0,0xff,0x6b
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL9
	.4byte	.LFE8
	.2byte	0x6
	.byte	0x7a
	.byte	0x80,0xf0,0xff,0x6b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL8
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL10
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL7
	.4byte	.LFE7
	.2byte	0x6
	.byte	0x7a
	.byte	0x80,0x80,0x80,0x6c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL5
	.4byte	.LFE6
	.2byte	0x6
	.byte	0x7a
	.byte	0x80,0x80,0x80,0x6c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL3
	.4byte	.LFE5
	.2byte	0x6
	.byte	0x7a
	.byte	0x80,0xf8,0xff,0x6b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1
	.4byte	.LFE4
	.2byte	0x6
	.byte	0x7a
	.byte	0x80,0xf8,0xff,0x6b
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x54
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
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
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
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF19:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/RISCV/Device/Bouffalo/BL602/Startup/interrupt.c"
.LASF17:
	.string	"clic_disable_interrupt"
.LASF12:
	.string	"clic_set_cliccfg"
.LASF16:
	.string	"clic_set_pending"
.LASF15:
	.string	"clic_clear_pending"
.LASF23:
	.string	"clic_enable_interrupt"
.LASF4:
	.string	"unsigned char"
.LASF8:
	.string	"long unsigned int"
.LASF5:
	.string	"short unsigned int"
.LASF22:
	.string	"clic_get_intcfg"
.LASF13:
	.string	"clic_set_intcfg"
.LASF10:
	.string	"unsigned int"
.LASF9:
	.string	"long long unsigned int"
.LASF6:
	.string	"uint8_t"
.LASF14:
	.string	"intcfg"
.LASF3:
	.string	"long long int"
.LASF18:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
.LASF21:
	.string	"clic_get_cliccfg"
.LASF20:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/bl602_std"
.LASF1:
	.string	"short int"
.LASF7:
	.string	"uint32_t"
.LASF2:
	.string	"long int"
.LASF0:
	.string	"signed char"
.LASF11:
	.string	"source"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
