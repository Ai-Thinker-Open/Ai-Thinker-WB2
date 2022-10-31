	.file	"bl_sys_time_cli.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.rodata.cmd_sys_time_now.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"BL SYS TIME time is\r\n"
	.globl	__udivdi3
	.align	2
.LC1:
	.string	"Date & time is: %u-%02u-%02u %02u:%02u:%02u (Day %u of week, Day %u of Year)\r\n"
	.section	.text.cmd_sys_time_now,"ax",@progbits
	.align	1
	.type	cmd_sys_time_now, @function
cmd_sys_time_now:
.LFB8:
	.file 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/sys/bltime/bl_sys_time_cli.c"
	.loc 1 10 1
	.cfi_startproc
.LVL0:
	.loc 1 11 5
	.loc 1 15 5 is_stmt 0
	lui	a0,%hi(.LC0)
.LVL1:
	.loc 1 10 1
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	.loc 1 11 14
	li	a5,0
	li	a6,0
	.loc 1 15 5
	addi	a0,a0,%lo(.LC0)
	.loc 1 10 1
	sw	ra,60(sp)
	.cfi_offset 1, -4
	.loc 1 11 14
	sw	a5,16(sp)
	sw	a6,20(sp)
	.loc 1 12 5 is_stmt 1
	.loc 1 13 5
	.loc 1 15 5
	call	puts
.LVL2:
	.loc 1 16 5
	addi	a0,sp,16
	call	bl_sys_time_get
.LVL3:
	.loc 1 17 5
	.loc 1 18 5
	.loc 1 17 24 is_stmt 0
	lw	a0,16(sp)
	lw	a1,20(sp)
	li	a2,1000
	li	a3,0
	call	__udivdi3
.LVL4:
	.loc 1 18 5
	addi	a1,sp,28
	call	utils_time_date_from_epoch
.LVL5:
	.loc 1 19 5 is_stmt 1
	lw	a5,44(sp)
	lbu	a7,31(sp)
	lbu	a6,30(sp)
	sw	a5,0(sp)
	lbu	a4,28(sp)
	lbu	a5,29(sp)
	lbu	a3,32(sp)
	lbu	a2,33(sp)
	lw	a1,36(sp)
	lui	a0,%hi(.LC1)
	addi	a0,a0,%lo(.LC1)
	call	printf
.LVL6:
	.loc 1 29 1 is_stmt 0
	lw	ra,60(sp)
	.cfi_restore 1
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE8:
	.size	cmd_sys_time_now, .-cmd_sys_time_now
	.section	.rodata.cmd_sys_time_date.str1.4,"aMS",@progbits,1
	.align	2
.LC2:
	.string	"Epoch is %lu\r\n"
	.align	2
.LC3:
	.string	"Date & time is: %u-%02u-%02u %02u:%02u:%02u (Day %u of week, Day %u of Year, leap days %u, leap year status %u)\r\n"
	.section	.text.cmd_sys_time_date,"ax",@progbits
	.align	1
	.type	cmd_sys_time_date, @function
cmd_sys_time_date:
.LFB9:
	.loc 1 32 1 is_stmt 1
	.cfi_startproc
.LVL7:
	.loc 1 33 5
	.loc 1 34 5
	.loc 1 36 5
	.loc 1 36 8 is_stmt 0
	li	a5,2
	bne	a2,a5,.L6
.LVL8:
.LBB4:
.LBB5:
	.loc 1 40 5 is_stmt 1
.LBE5:
.LBE4:
	.loc 1 32 1 is_stmt 0
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	ra,60(sp)
	sw	s0,56(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
.LBB7:
.LBB6:
	.loc 1 40 15
	lw	a0,4(a3)
.LVL9:
	call	atoi
.LVL10:
	mv	s0,a0
.LVL11:
	.loc 1 41 5 is_stmt 1
	mv	a1,a0
	lui	a0,%hi(.LC2)
	addi	a0,a0,%lo(.LC2)
	call	printf
.LVL12:
	.loc 1 42 5
	addi	a1,sp,28
	mv	a0,s0
	call	utils_time_date_from_epoch
.LVL13:
	.loc 1 43 5
	lbu	a5,35(sp)
	lbu	a7,31(sp)
	lbu	a6,30(sp)
	sw	a5,8(sp)
	lbu	a5,34(sp)
	lbu	a4,28(sp)
	lbu	a3,32(sp)
	sw	a5,4(sp)
	lw	a5,44(sp)
	lbu	a2,33(sp)
	lw	a1,36(sp)
	sw	a5,0(sp)
	lbu	a5,29(sp)
	lui	a0,%hi(.LC3)
	addi	a0,a0,%lo(.LC3)
	call	printf
.LVL14:
.LBE6:
.LBE7:
	.loc 1 55 1 is_stmt 0
	lw	ra,60(sp)
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
.LVL15:
.L6:
	ret
	.cfi_endproc
.LFE9:
	.size	cmd_sys_time_date, .-cmd_sys_time_date
	.section	.text.bl_sys_time_cli_init,"ax",@progbits
	.align	1
	.globl	bl_sys_time_cli_init
	.type	bl_sys_time_cli_init, @function
bl_sys_time_cli_init:
.LFB10:
	.loc 1 64 1 is_stmt 1
	.cfi_startproc
	.loc 1 69 5
	.loc 1 70 1 is_stmt 0
	li	a0,0
	ret
	.cfi_endproc
.LFE10:
	.size	bl_sys_time_cli_init, .-bl_sys_time_cli_init
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	2
.LC4:
	.string	"bl_sys_time_now"
	.align	2
.LC5:
	.string	"sys time now"
	.align	2
.LC6:
	.string	"bl_sys_time_date"
	.section	.static_cli_cmds,"a"
	.align	2
	.type	cmds_user, @object
	.size	cmds_user, 24
cmds_user:
	.word	.LC4
	.word	.LC5
	.word	cmd_sys_time_now
	.word	.LC6
	.word	.LC5
	.word	cmd_sys_time_date
	.text
.Letext0:
	.file 2 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 3 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 4 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/cli/cli/include/cli.h"
	.file 5 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/utils/include/utils_time.h"
	.file 6 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h"
	.file 7 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/sys/bltime/include/bl_sys_time.h"
	.file 8 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdlib.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x44e
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF40
	.byte	0xc
	.4byte	.LASF41
	.4byte	.LASF42
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF0
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF1
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.byte	0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.byte	0x3
	.4byte	.LASF9
	.byte	0x2
	.byte	0x4f
	.byte	0x1b
	.4byte	0x62
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.byte	0x3
	.4byte	.LASF10
	.byte	0x2
	.byte	0x69
	.byte	0x20
	.4byte	0x25
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x5
	.byte	0x4
	.4byte	0x89
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF11
	.byte	0x6
	.4byte	0x89
	.byte	0x5
	.byte	0x4
	.4byte	0x90
	.byte	0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x56
	.byte	0x3
	.4byte	.LASF13
	.byte	0x3
	.byte	0x3c
	.byte	0x14
	.4byte	0x70
	.byte	0x7
	.4byte	.LASF43
	.byte	0xc
	.byte	0x4
	.byte	0x32
	.byte	0x8
	.4byte	0xe8
	.byte	0x8
	.4byte	.LASF14
	.byte	0x4
	.byte	0x33
	.byte	0x11
	.4byte	0x95
	.byte	0
	.byte	0x8
	.4byte	.LASF15
	.byte	0x4
	.byte	0x34
	.byte	0x11
	.4byte	0x95
	.byte	0x4
	.byte	0x8
	.4byte	.LASF16
	.byte	0x4
	.byte	0x36
	.byte	0xc
	.4byte	0x10d
	.byte	0x8
	.byte	0
	.byte	0x6
	.4byte	0xb3
	.byte	0x9
	.4byte	0x107
	.byte	0xa
	.4byte	0x83
	.byte	0xa
	.4byte	0x7c
	.byte	0xa
	.4byte	0x7c
	.byte	0xa
	.4byte	0x107
	.byte	0
	.byte	0x5
	.byte	0x4
	.4byte	0x83
	.byte	0x5
	.byte	0x4
	.4byte	0xed
	.byte	0xb
	.byte	0x14
	.byte	0x5
	.byte	0x3
	.byte	0x9
	.4byte	0x1ac
	.byte	0x8
	.4byte	.LASF17
	.byte	0x5
	.byte	0x4
	.byte	0x13
	.4byte	0x3a
	.byte	0
	.byte	0x8
	.4byte	.LASF18
	.byte	0x5
	.byte	0x5
	.byte	0x13
	.4byte	0x3a
	.byte	0x1
	.byte	0x8
	.4byte	.LASF19
	.byte	0x5
	.byte	0x6
	.byte	0x13
	.4byte	0x3a
	.byte	0x2
	.byte	0x8
	.4byte	.LASF20
	.byte	0x5
	.byte	0x7
	.byte	0x13
	.4byte	0x3a
	.byte	0x3
	.byte	0x8
	.4byte	.LASF21
	.byte	0x5
	.byte	0x8
	.byte	0x13
	.4byte	0x3a
	.byte	0x4
	.byte	0x8
	.4byte	.LASF22
	.byte	0x5
	.byte	0x9
	.byte	0x13
	.4byte	0x3a
	.byte	0x5
	.byte	0x8
	.4byte	.LASF23
	.byte	0x5
	.byte	0xa
	.byte	0x13
	.4byte	0x3a
	.byte	0x6
	.byte	0x8
	.4byte	.LASF24
	.byte	0x5
	.byte	0xb
	.byte	0x13
	.4byte	0x3a
	.byte	0x7
	.byte	0x8
	.4byte	.LASF25
	.byte	0x5
	.byte	0xc
	.byte	0x12
	.4byte	0x2c
	.byte	0x8
	.byte	0x8
	.4byte	.LASF26
	.byte	0x5
	.byte	0xd
	.byte	0x12
	.4byte	0x2c
	.byte	0xc
	.byte	0x8
	.4byte	.LASF27
	.byte	0x5
	.byte	0xe
	.byte	0x12
	.4byte	0x2c
	.byte	0x10
	.byte	0
	.byte	0x3
	.4byte	.LASF28
	.byte	0x5
	.byte	0xf
	.byte	0x3
	.4byte	0x113
	.byte	0xc
	.4byte	0xe8
	.4byte	0x1c8
	.byte	0xd
	.4byte	0x2c
	.byte	0x1
	.byte	0
	.byte	0x6
	.4byte	0x1b8
	.byte	0xe
	.4byte	.LASF33
	.byte	0x1
	.byte	0x3a
	.byte	0x21
	.4byte	0x1c8
	.byte	0x5
	.byte	0x3
	.4byte	cmds_user
	.byte	0xf
	.4byte	.LASF44
	.byte	0x1
	.byte	0x3f
	.byte	0x5
	.4byte	0x7c
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x1
	.byte	0x9c
	.byte	0x10
	.4byte	.LASF45
	.byte	0x1
	.byte	0x1f
	.byte	0xd
	.byte	0x1
	.4byte	0x24b
	.byte	0x11
	.string	"buf"
	.byte	0x1
	.byte	0x1f
	.byte	0x25
	.4byte	0x83
	.byte	0x11
	.string	"len"
	.byte	0x1
	.byte	0x1f
	.byte	0x2e
	.4byte	0x7c
	.byte	0x12
	.4byte	.LASF29
	.byte	0x1
	.byte	0x1f
	.byte	0x37
	.4byte	0x7c
	.byte	0x12
	.4byte	.LASF30
	.byte	0x1
	.byte	0x1f
	.byte	0x44
	.4byte	0x107
	.byte	0x13
	.4byte	.LASF31
	.byte	0x1
	.byte	0x21
	.byte	0xe
	.4byte	0x9b
	.byte	0x13
	.4byte	.LASF32
	.byte	0x1
	.byte	0x22
	.byte	0x17
	.4byte	0x1ac
	.byte	0
	.byte	0x14
	.4byte	.LASF46
	.byte	0x1
	.byte	0x9
	.byte	0xd
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0x32b
	.byte	0x15
	.string	"buf"
	.byte	0x1
	.byte	0x9
	.byte	0x24
	.4byte	0x83
	.4byte	.LLST0
	.byte	0x15
	.string	"len"
	.byte	0x1
	.byte	0x9
	.byte	0x2d
	.4byte	0x7c
	.4byte	.LLST1
	.byte	0x16
	.4byte	.LASF29
	.byte	0x1
	.byte	0x9
	.byte	0x36
	.4byte	0x7c
	.4byte	.LLST2
	.byte	0x16
	.4byte	.LASF30
	.byte	0x1
	.byte	0x9
	.byte	0x43
	.4byte	0x107
	.4byte	.LLST3
	.byte	0xe
	.4byte	.LASF34
	.byte	0x1
	.byte	0xb
	.byte	0xe
	.4byte	0xa7
	.byte	0x2
	.byte	0x91
	.byte	0x50
	.byte	0x17
	.4byte	.LASF31
	.byte	0x1
	.byte	0xc
	.byte	0xe
	.4byte	0x9b
	.4byte	.LLST4
	.byte	0xe
	.4byte	.LASF32
	.byte	0x1
	.byte	0xd
	.byte	0x17
	.4byte	0x1ac
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x18
	.4byte	.LVL2
	.4byte	0x40c
	.4byte	0x2e6
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0x18
	.4byte	.LVL3
	.4byte	0x418
	.4byte	0x2fa
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x50
	.byte	0
	.byte	0x1a
	.4byte	.LVL4
	.4byte	0x424
	.byte	0x18
	.4byte	.LVL5
	.4byte	0x42d
	.4byte	0x317
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0
	.byte	0x1b
	.4byte	.LVL6
	.4byte	0x439
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.byte	0
	.byte	0x1c
	.4byte	0x1f5
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0x40c
	.byte	0x1d
	.4byte	0x202
	.4byte	.LLST5
	.byte	0x1d
	.4byte	0x20e
	.4byte	.LLST6
	.byte	0x1d
	.4byte	0x21a
	.4byte	.LLST7
	.byte	0x1d
	.4byte	0x226
	.4byte	.LLST8
	.byte	0x1e
	.4byte	0x232
	.byte	0x1e
	.4byte	0x23e
	.byte	0x1f
	.4byte	0x1f5
	.4byte	.LBB4
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x1f
	.byte	0xd
	.byte	0x1d
	.4byte	0x202
	.4byte	.LLST9
	.byte	0x1d
	.4byte	0x20e
	.4byte	.LLST10
	.byte	0x1d
	.4byte	0x21a
	.4byte	.LLST11
	.byte	0x1d
	.4byte	0x226
	.4byte	.LLST12
	.byte	0x20
	.4byte	.Ldebug_ranges0+0
	.byte	0x21
	.4byte	0x232
	.4byte	.LLST13
	.byte	0x22
	.4byte	0x23e
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x1a
	.4byte	.LVL10
	.4byte	0x445
	.byte	0x18
	.4byte	.LVL12
	.4byte	0x439
	.4byte	0x3dc
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x18
	.4byte	.LVL13
	.4byte	0x42d
	.4byte	0x3f6
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0
	.byte	0x1b
	.4byte	.LVL14
	.4byte	0x439
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x23
	.4byte	.LASF35
	.4byte	.LASF35
	.byte	0x6
	.byte	0xdd
	.byte	0x5
	.byte	0x23
	.4byte	.LASF36
	.4byte	.LASF36
	.byte	0x7
	.byte	0x8
	.byte	0x5
	.byte	0x24
	.4byte	.LASF47
	.4byte	.LASF47
	.byte	0x23
	.4byte	.LASF37
	.4byte	.LASF37
	.byte	0x5
	.byte	0x11
	.byte	0x5
	.byte	0x23
	.4byte	.LASF38
	.4byte	.LASF38
	.byte	0x6
	.byte	0xc8
	.byte	0x5
	.byte	0x23
	.4byte	.LASF39
	.4byte	.LASF39
	.byte	0x8
	.byte	0x51
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
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x26
	.byte	0
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
	.byte	0x9
	.byte	0x15
	.byte	0x1
	.byte	0x27
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x5
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xb
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
	.byte	0xc
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xd
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xe
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
	.byte	0xf
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
	.byte	0x10
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
	.byte	0x11
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
	.byte	0x12
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
	.byte	0
	.byte	0
	.byte	0x13
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
	.byte	0x14
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
	.byte	0x15
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
	.byte	0x16
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
	.byte	0x17
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
	.byte	0x18
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
	.byte	0x19
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x1a
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1b
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1c
	.byte	0x2e
	.byte	0x1
	.byte	0x31
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
	.byte	0x1d
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x1e
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1f
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
	.byte	0
	.byte	0
	.byte	0x20
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x21
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x22
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x23
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
	.byte	0x24
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
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL2-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL2-1
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL2-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL2-1
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL0
	.4byte	.LVL2-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL2-1
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL3
	.4byte	.LVL4-1
	.2byte	0x10
	.byte	0x91
	.byte	0x50
	.byte	0xf6
	.byte	0x8
	.byte	0x25
	.byte	0xa
	.2byte	0x3e8
	.byte	0xf7
	.byte	0x25
	.byte	0x1b
	.byte	0xf7
	.byte	0x2c
	.byte	0xf7
	.byte	0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL7
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL9
	.4byte	.LVL15
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LFE9
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL7
	.4byte	.LVL10-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL10-1
	.4byte	.LVL15
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LFE9
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL7
	.4byte	.LVL10-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL10-1
	.4byte	.LVL15
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LFE9
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL7
	.4byte	.LVL10-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL10-1
	.4byte	.LVL15
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LFE9
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL9
	.4byte	.LVL14
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL8
	.4byte	.LVL10-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL10-1
	.4byte	.LVL14
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL8
	.4byte	.LVL14
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL8
	.4byte	.LVL10-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL10-1
	.4byte	.LVL14
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL11
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x58
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
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB4
	.4byte	.LBE4
	.4byte	.LBB7
	.4byte	.LBE7
	.4byte	0
	.4byte	0
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF44:
	.string	"bl_sys_time_cli_init"
.LASF42:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/bltime"
.LASF13:
	.string	"uint64_t"
.LASF32:
	.string	"date"
.LASF0:
	.string	"long long unsigned int"
.LASF25:
	.string	"ntp_year"
.LASF3:
	.string	"unsigned char"
.LASF36:
	.string	"bl_sys_time_get"
.LASF18:
	.string	"ntp_minute"
.LASF45:
	.string	"cmd_sys_time_date"
.LASF7:
	.string	"long unsigned int"
.LASF21:
	.string	"ntp_date"
.LASF5:
	.string	"short unsigned int"
.LASF15:
	.string	"help"
.LASF43:
	.string	"cli_command"
.LASF46:
	.string	"cmd_sys_time_now"
.LASF9:
	.string	"__uint32_t"
.LASF28:
	.string	"utils_time_date_t"
.LASF23:
	.string	"leap_days"
.LASF37:
	.string	"utils_time_date_from_epoch"
.LASF41:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/sys/bltime/bl_sys_time_cli.c"
.LASF1:
	.string	"unsigned int"
.LASF11:
	.string	"char"
.LASF26:
	.string	"days_since_epoch"
.LASF19:
	.string	"ntp_second"
.LASF39:
	.string	"atoi"
.LASF22:
	.string	"ntp_month"
.LASF29:
	.string	"argc"
.LASF17:
	.string	"ntp_hour"
.LASF8:
	.string	"long long int"
.LASF47:
	.string	"__udivdi3"
.LASF40:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
.LASF14:
	.string	"name"
.LASF31:
	.string	"seconds"
.LASF24:
	.string	"leap_year_ind"
.LASF38:
	.string	"printf"
.LASF4:
	.string	"short int"
.LASF10:
	.string	"__uint64_t"
.LASF30:
	.string	"argv"
.LASF27:
	.string	"day_of_year"
.LASF12:
	.string	"uint32_t"
.LASF6:
	.string	"long int"
.LASF35:
	.string	"puts"
.LASF2:
	.string	"signed char"
.LASF20:
	.string	"ntp_week_day"
.LASF33:
	.string	"cmds_user"
.LASF16:
	.string	"function"
.LASF34:
	.string	"epoch_ms"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
