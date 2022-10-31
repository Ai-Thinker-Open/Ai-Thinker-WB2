	.file	"sntp_cli.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.rodata._startup_sntp.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"--------------------------------------- Start NTP now\r\n"
	.align	2
.LC1:
	.string	"0.asia.pool.ntp.org"
	.align	2
.LC2:
	.string	"--------------------------------------- Start NTP Done\r\n"
	.section	.text._startup_sntp,"ax",@progbits
	.align	1
	.globl	_startup_sntp
	.type	_startup_sntp, @function
_startup_sntp:
.LFB4:
	.file 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/sntp/sntp_cli.c"
	.loc 1 9 1
	.cfi_startproc
.LVL0:
	.loc 1 10 5
	lui	a0,%hi(.LC0)
.LVL1:
	.loc 1 9 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 10 5
	addi	a0,a0,%lo(.LC0)
	.loc 1 9 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 10 5
	call	puts
.LVL2:
	.loc 1 11 5 is_stmt 1
	li	a0,0
	call	sntp_setoperatingmode
.LVL3:
	.loc 1 12 5
	lui	a1,%hi(.LC1)
	li	a0,0
	addi	a1,a1,%lo(.LC1)
	call	sntp_setservername
.LVL4:
	.loc 1 13 5
	call	sntp_init
.LVL5:
	.loc 1 14 5
	.loc 1 15 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 14 5
	lui	a0,%hi(.LC2)
	.loc 1 15 1
	.loc 1 14 5
	addi	a0,a0,%lo(.LC2)
	.loc 1 15 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 14 5
	tail	puts
.LVL6:
	.cfi_endproc
.LFE4:
	.size	_startup_sntp, .-_startup_sntp
	.section	.rodata.cmd_sntp_date.str1.4,"aMS",@progbits,1
	.align	2
.LC3:
	.string	"test epoch from 1581863713 --->>>\r\n"
	.align	2
.LC4:
	.string	"Should be Sunday, February 16, 2020 2:35:13 PM\r\n"
	.align	2
.LC5:
	.string	"Date & time is: %u-%02u-%02u %02u:%02u:%02u (Day %u of week, Day %u of Year)\r\n"
	.align	2
.LC6:
	.string	"SNTP GMT time is\r\n"
	.section	.text.cmd_sntp_date,"ax",@progbits
	.align	1
	.type	cmd_sntp_date, @function
cmd_sntp_date:
.LFB7:
	.loc 1 31 1 is_stmt 1
	.cfi_startproc
.LVL7:
	.loc 1 32 5
	.loc 1 35 5 is_stmt 0
	lui	a0,%hi(.LC3)
.LVL8:
	.loc 1 31 1
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	.loc 1 35 5
	addi	a0,a0,%lo(.LC3)
	.loc 1 31 1
	sw	ra,60(sp)
	sw	s0,56(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.loc 1 32 14
	sw	zero,20(sp)
	.loc 1 32 27
	sw	zero,24(sp)
	.loc 1 33 5 is_stmt 1
	.loc 1 35 5
	call	puts
.LVL9:
	.loc 1 36 5
	lui	a0,%hi(.LC4)
	addi	a0,a0,%lo(.LC4)
	call	puts
.LVL10:
	.loc 1 37 5
	li	a0,1581862912
	addi	a1,sp,28
	addi	a0,a0,801
	call	utils_time_date_from_epoch
.LVL11:
	.loc 1 38 5
	lw	a5,44(sp)
	lbu	a7,31(sp)
	lbu	a6,30(sp)
	lbu	a4,28(sp)
	lbu	a3,32(sp)
	lbu	a2,33(sp)
	lw	a1,36(sp)
	sw	a5,0(sp)
	lbu	a5,29(sp)
	lui	s0,%hi(.LC5)
	addi	a0,s0,%lo(.LC5)
	call	printf
.LVL12:
	.loc 1 49 5
	lui	a0,%hi(.LC6)
	addi	a0,a0,%lo(.LC6)
	call	puts
.LVL13:
	.loc 1 50 5
	addi	a1,sp,24
	addi	a0,sp,20
	call	sntp_get_time
.LVL14:
	.loc 1 51 5
	lw	a0,20(sp)
	addi	a1,sp,28
	call	utils_time_date_from_epoch
.LVL15:
	.loc 1 52 5
	lw	a5,44(sp)
	lbu	a7,31(sp)
	lbu	a6,30(sp)
	sw	a5,0(sp)
	lbu	a4,28(sp)
	lbu	a5,29(sp)
	lbu	a3,32(sp)
	lbu	a2,33(sp)
	lw	a1,36(sp)
	addi	a0,s0,%lo(.LC5)
	call	printf
.LVL16:
	.loc 1 62 1 is_stmt 0
	lw	ra,60(sp)
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE7:
	.size	cmd_sntp_date, .-cmd_sntp_date
	.section	.rodata.cmd_sntp_time.str1.4,"aMS",@progbits,1
	.align	2
.LC7:
	.string	"[NTP] time is %lu:%lu\r\n"
	.section	.text.cmd_sntp_time,"ax",@progbits
	.align	1
	.type	cmd_sntp_time, @function
cmd_sntp_time:
.LFB6:
	.loc 1 23 1 is_stmt 1
	.cfi_startproc
.LVL17:
	.loc 1 24 5
	.loc 1 23 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	.loc 1 26 5
	addi	a1,sp,12
.LVL18:
	addi	a0,sp,8
.LVL19:
	.loc 1 23 1
	sw	ra,28(sp)
	.cfi_offset 1, -4
	.loc 1 24 14
	sw	zero,8(sp)
	.loc 1 24 27
	sw	zero,12(sp)
	.loc 1 26 5 is_stmt 1
	call	sntp_get_time
.LVL20:
	.loc 1 27 5
	lw	a2,12(sp)
	lw	a1,8(sp)
	lui	a0,%hi(.LC7)
	addi	a0,a0,%lo(.LC7)
	call	printf
.LVL21:
	.loc 1 28 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_restore 1
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE6:
	.size	cmd_sntp_time, .-cmd_sntp_time
	.section	.text.cmd_sntp_start,"ax",@progbits
	.align	1
	.type	cmd_sntp_start, @function
cmd_sntp_start:
.LFB5:
	.loc 1 18 1 is_stmt 1
	.cfi_startproc
.LVL22:
	.loc 1 19 5
	lui	a0,%hi(_startup_sntp)
.LVL23:
	li	a1,0
.LVL24:
	addi	a0,a0,%lo(_startup_sntp)
	tail	tcpip_callback
.LVL25:
	.cfi_endproc
.LFE5:
	.size	cmd_sntp_start, .-cmd_sntp_start
	.section	.text.sntp_cli_init,"ax",@progbits
	.align	1
	.globl	sntp_cli_init
	.type	sntp_cli_init, @function
sntp_cli_init:
.LFB8:
	.loc 1 72 1
	.cfi_startproc
	.loc 1 77 5
	.loc 1 78 1 is_stmt 0
	li	a0,0
	ret
	.cfi_endproc
.LFE8:
	.size	sntp_cli_init, .-sntp_cli_init
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	2
.LC8:
	.string	"sntp_start"
	.align	2
.LC9:
	.string	"sntp start"
	.align	2
.LC10:
	.string	"sntp_time"
	.align	2
.LC11:
	.string	"sntp time"
	.align	2
.LC12:
	.string	"sntp_date"
	.align	2
.LC13:
	.string	"sntp date"
	.section	.static_cli_cmds,"a"
	.align	2
	.type	cmds_user, @object
	.size	cmds_user, 36
cmds_user:
	.word	.LC8
	.word	.LC9
	.word	cmd_sntp_start
	.word	.LC10
	.word	.LC11
	.word	cmd_sntp_time
	.word	.LC12
	.word	.LC13
	.word	cmd_sntp_date
	.text
.Letext0:
	.file 2 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 3 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 4 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/cli/cli/include/cli.h"
	.file 5 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/utils/include/utils_time.h"
	.file 6 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h"
	.file 7 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/sntp/include/sntp.h"
	.file 8 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/tcpip.h"
	.file 9 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/memp.h"
	.file 10 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/netif.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x5a8
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF63
	.byte	0xc
	.4byte	.LASF64
	.4byte	.LASF65
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
	.byte	0x3
	.4byte	.LASF10
	.byte	0x2
	.byte	0x4f
	.byte	0x1b
	.4byte	0x54
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
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.byte	0x5
	.byte	0x4
	.byte	0x6
	.byte	0x4
	.4byte	0x7f
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF9
	.byte	0x7
	.4byte	0x7f
	.byte	0x6
	.byte	0x4
	.4byte	0x86
	.byte	0x3
	.4byte	.LASF11
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x48
	.byte	0x8
	.byte	0x7
	.byte	0x4
	.4byte	0x70
	.byte	0x9
	.byte	0x34
	.byte	0xe
	.4byte	0x10c
	.byte	0x9
	.4byte	.LASF12
	.byte	0
	.byte	0x9
	.4byte	.LASF13
	.byte	0x1
	.byte	0x9
	.4byte	.LASF14
	.byte	0x2
	.byte	0x9
	.4byte	.LASF15
	.byte	0x3
	.byte	0x9
	.4byte	.LASF16
	.byte	0x4
	.byte	0x9
	.4byte	.LASF17
	.byte	0x5
	.byte	0x9
	.4byte	.LASF18
	.byte	0x6
	.byte	0x9
	.4byte	.LASF19
	.byte	0x7
	.byte	0x9
	.4byte	.LASF20
	.byte	0x8
	.byte	0x9
	.4byte	.LASF21
	.byte	0x9
	.byte	0x9
	.4byte	.LASF22
	.byte	0xa
	.byte	0x9
	.4byte	.LASF23
	.byte	0xb
	.byte	0x9
	.4byte	.LASF24
	.byte	0xc
	.byte	0x9
	.4byte	.LASF25
	.byte	0xd
	.byte	0x9
	.4byte	.LASF26
	.byte	0xe
	.byte	0x9
	.4byte	.LASF27
	.byte	0xf
	.byte	0
	.byte	0xa
	.4byte	.LASF66
	.byte	0x7
	.byte	0x4
	.4byte	0x70
	.byte	0xa
	.byte	0x71
	.byte	0x6
	.4byte	0x131
	.byte	0x9
	.4byte	.LASF28
	.byte	0
	.byte	0x9
	.4byte	.LASF29
	.byte	0x1
	.byte	0x9
	.4byte	.LASF30
	.byte	0x2
	.byte	0
	.byte	0xb
	.4byte	.LASF67
	.byte	0xc
	.byte	0x4
	.byte	0x32
	.byte	0x8
	.4byte	0x166
	.byte	0xc
	.4byte	.LASF31
	.byte	0x4
	.byte	0x33
	.byte	0x11
	.4byte	0x8b
	.byte	0
	.byte	0xc
	.4byte	.LASF32
	.byte	0x4
	.byte	0x34
	.byte	0x11
	.4byte	0x8b
	.byte	0x4
	.byte	0xc
	.4byte	.LASF33
	.byte	0x4
	.byte	0x36
	.byte	0xc
	.4byte	0x18b
	.byte	0x8
	.byte	0
	.byte	0x7
	.4byte	0x131
	.byte	0xd
	.4byte	0x185
	.byte	0xe
	.4byte	0x79
	.byte	0xe
	.4byte	0x69
	.byte	0xe
	.4byte	0x69
	.byte	0xe
	.4byte	0x185
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x79
	.byte	0x6
	.byte	0x4
	.4byte	0x16b
	.byte	0xf
	.byte	0x14
	.byte	0x5
	.byte	0x3
	.byte	0x9
	.4byte	0x22a
	.byte	0xc
	.4byte	.LASF34
	.byte	0x5
	.byte	0x4
	.byte	0x13
	.4byte	0x2c
	.byte	0
	.byte	0xc
	.4byte	.LASF35
	.byte	0x5
	.byte	0x5
	.byte	0x13
	.4byte	0x2c
	.byte	0x1
	.byte	0xc
	.4byte	.LASF36
	.byte	0x5
	.byte	0x6
	.byte	0x13
	.4byte	0x2c
	.byte	0x2
	.byte	0xc
	.4byte	.LASF37
	.byte	0x5
	.byte	0x7
	.byte	0x13
	.4byte	0x2c
	.byte	0x3
	.byte	0xc
	.4byte	.LASF38
	.byte	0x5
	.byte	0x8
	.byte	0x13
	.4byte	0x2c
	.byte	0x4
	.byte	0xc
	.4byte	.LASF39
	.byte	0x5
	.byte	0x9
	.byte	0x13
	.4byte	0x2c
	.byte	0x5
	.byte	0xc
	.4byte	.LASF40
	.byte	0x5
	.byte	0xa
	.byte	0x13
	.4byte	0x2c
	.byte	0x6
	.byte	0xc
	.4byte	.LASF41
	.byte	0x5
	.byte	0xb
	.byte	0x13
	.4byte	0x2c
	.byte	0x7
	.byte	0xc
	.4byte	.LASF42
	.byte	0x5
	.byte	0xc
	.byte	0x12
	.4byte	0x70
	.byte	0x8
	.byte	0xc
	.4byte	.LASF43
	.byte	0x5
	.byte	0xd
	.byte	0x12
	.4byte	0x70
	.byte	0xc
	.byte	0xc
	.4byte	.LASF44
	.byte	0x5
	.byte	0xe
	.byte	0x12
	.4byte	0x70
	.byte	0x10
	.byte	0
	.byte	0x3
	.4byte	.LASF45
	.byte	0x5
	.byte	0xf
	.byte	0x3
	.4byte	0x191
	.byte	0x10
	.4byte	0x166
	.4byte	0x246
	.byte	0x11
	.4byte	0x70
	.byte	0x2
	.byte	0
	.byte	0x7
	.4byte	0x236
	.byte	0x12
	.4byte	.LASF48
	.byte	0x1
	.byte	0x41
	.byte	0x21
	.4byte	0x246
	.byte	0x5
	.byte	0x3
	.4byte	cmds_user
	.byte	0x13
	.4byte	.LASF68
	.byte	0x1
	.byte	0x47
	.byte	0x5
	.4byte	0x69
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.byte	0x14
	.4byte	.LASF52
	.byte	0x1
	.byte	0x1e
	.byte	0xd
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.4byte	0x3b1
	.byte	0x15
	.string	"buf"
	.byte	0x1
	.byte	0x1e
	.byte	0x21
	.4byte	0x79
	.4byte	.LLST1
	.byte	0x15
	.string	"len"
	.byte	0x1
	.byte	0x1e
	.byte	0x2a
	.4byte	0x69
	.4byte	.LLST2
	.byte	0x16
	.4byte	.LASF46
	.byte	0x1
	.byte	0x1e
	.byte	0x33
	.4byte	0x69
	.4byte	.LLST3
	.byte	0x16
	.4byte	.LASF47
	.byte	0x1
	.byte	0x1e
	.byte	0x40
	.4byte	0x185
	.4byte	.LLST4
	.byte	0x12
	.4byte	.LASF49
	.byte	0x1
	.byte	0x20
	.byte	0xe
	.4byte	0x91
	.byte	0x2
	.byte	0x91
	.byte	0x54
	.byte	0x12
	.4byte	.LASF50
	.byte	0x1
	.byte	0x20
	.byte	0x1b
	.4byte	0x91
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x12
	.4byte	.LASF51
	.byte	0x1
	.byte	0x21
	.byte	0x17
	.4byte	0x22a
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x17
	.4byte	.LVL9
	.4byte	0x54b
	.4byte	0x30d
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0x17
	.4byte	.LVL10
	.4byte	0x54b
	.4byte	0x324
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.byte	0x17
	.4byte	.LVL11
	.4byte	0x557
	.4byte	0x341
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0xc
	.4byte	0x5e495321
	.byte	0x18
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0
	.byte	0x17
	.4byte	.LVL12
	.4byte	0x563
	.4byte	0x358
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.byte	0x17
	.4byte	.LVL13
	.4byte	0x54b
	.4byte	0x36f
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0
	.byte	0x17
	.4byte	.LVL14
	.4byte	0x56f
	.4byte	0x389
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x54
	.byte	0x18
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0
	.byte	0x17
	.4byte	.LVL15
	.4byte	0x557
	.4byte	0x39d
	.byte	0x18
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0
	.byte	0x19
	.4byte	.LVL16
	.4byte	0x563
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.byte	0
	.byte	0x14
	.4byte	.LASF53
	.byte	0x1
	.byte	0x16
	.byte	0xd
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0x453
	.byte	0x15
	.string	"buf"
	.byte	0x1
	.byte	0x16
	.byte	0x21
	.4byte	0x79
	.4byte	.LLST5
	.byte	0x15
	.string	"len"
	.byte	0x1
	.byte	0x16
	.byte	0x2a
	.4byte	0x69
	.4byte	.LLST6
	.byte	0x16
	.4byte	.LASF46
	.byte	0x1
	.byte	0x16
	.byte	0x33
	.4byte	0x69
	.4byte	.LLST7
	.byte	0x16
	.4byte	.LASF47
	.byte	0x1
	.byte	0x16
	.byte	0x40
	.4byte	0x185
	.4byte	.LLST8
	.byte	0x12
	.4byte	.LASF49
	.byte	0x1
	.byte	0x18
	.byte	0xe
	.4byte	0x91
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x12
	.4byte	.LASF50
	.byte	0x1
	.byte	0x18
	.byte	0x1b
	.4byte	0x91
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x17
	.4byte	.LVL20
	.4byte	0x56f
	.4byte	0x43f
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x18
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0x19
	.4byte	.LVL21
	.4byte	0x563
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0
	.byte	0
	.byte	0x14
	.4byte	.LASF54
	.byte	0x1
	.byte	0x11
	.byte	0xd
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0x4c2
	.byte	0x15
	.string	"buf"
	.byte	0x1
	.byte	0x11
	.byte	0x22
	.4byte	0x79
	.4byte	.LLST9
	.byte	0x15
	.string	"len"
	.byte	0x1
	.byte	0x11
	.byte	0x2b
	.4byte	0x69
	.4byte	.LLST10
	.byte	0x16
	.4byte	.LASF46
	.byte	0x1
	.byte	0x11
	.byte	0x34
	.4byte	0x69
	.4byte	.LLST11
	.byte	0x16
	.4byte	.LASF47
	.byte	0x1
	.byte	0x11
	.byte	0x41
	.4byte	0x185
	.4byte	.LLST12
	.byte	0x1a
	.4byte	.LVL25
	.4byte	0x57b
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	_startup_sntp
	.byte	0x18
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x1b
	.4byte	.LASF69
	.byte	0x1
	.byte	0x8
	.byte	0x6
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0x54b
	.byte	0x15
	.string	"arg"
	.byte	0x1
	.byte	0x8
	.byte	0x1a
	.4byte	0x77
	.4byte	.LLST0
	.byte	0x17
	.4byte	.LVL2
	.4byte	0x54b
	.4byte	0x4ff
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0x17
	.4byte	.LVL3
	.4byte	0x587
	.4byte	0x512
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x17
	.4byte	.LVL4
	.4byte	0x593
	.4byte	0x52e
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0x18
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.byte	0x1c
	.4byte	.LVL5
	.4byte	0x59f
	.byte	0x1a
	.4byte	.LVL6
	.4byte	0x54b
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0
	.byte	0x1d
	.4byte	.LASF55
	.4byte	.LASF55
	.byte	0x6
	.byte	0xdd
	.byte	0x5
	.byte	0x1d
	.4byte	.LASF56
	.4byte	.LASF56
	.byte	0x5
	.byte	0x11
	.byte	0x5
	.byte	0x1d
	.4byte	.LASF57
	.4byte	.LASF57
	.byte	0x6
	.byte	0xc8
	.byte	0x5
	.byte	0x1d
	.4byte	.LASF58
	.4byte	.LASF58
	.byte	0x7
	.byte	0x4c
	.byte	0x5
	.byte	0x1d
	.4byte	.LASF59
	.4byte	.LASF59
	.byte	0x8
	.byte	0x53
	.byte	0x7
	.byte	0x1d
	.4byte	.LASF60
	.4byte	.LASF60
	.byte	0x7
	.byte	0x33
	.byte	0x6
	.byte	0x1d
	.4byte	.LASF61
	.4byte	.LASF61
	.byte	0x7
	.byte	0x42
	.byte	0x6
	.byte	0x1d
	.4byte	.LASF62
	.4byte	.LASF62
	.byte	0x7
	.byte	0x36
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
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x8
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
	.byte	0x9
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0xe
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
	.byte	0x10
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x11
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
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
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1a
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
	.byte	0x1b
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
	.byte	0x1c
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
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
.LLST1:
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL8
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL7
	.4byte	.LVL9-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL9-1
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL7
	.4byte	.LVL9-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL9-1
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL7
	.4byte	.LVL9-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL9-1
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL17
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL19
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL18
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL17
	.4byte	.LVL20-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL20-1
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL17
	.4byte	.LVL20-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL20-1
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL23
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL22
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL24
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL22
	.4byte	.LVL25-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL25-1
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL22
	.4byte	.LVL25-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL25-1
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
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
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
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
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF17:
	.string	"MEMP_ALTCP_PCB"
.LASF65:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/sntp"
.LASF35:
	.string	"ntp_minute"
.LASF38:
	.string	"ntp_date"
.LASF61:
	.string	"sntp_setservername"
.LASF66:
	.string	"lwip_internal_netif_client_data_index"
.LASF50:
	.string	"frags"
.LASF2:
	.string	"short int"
.LASF16:
	.string	"MEMP_TCP_SEG"
.LASF7:
	.string	"long long unsigned int"
.LASF69:
	.string	"_startup_sntp"
.LASF10:
	.string	"__uint32_t"
.LASF54:
	.string	"cmd_sntp_start"
.LASF21:
	.string	"MEMP_TCPIP_MSG_INPKT"
.LASF22:
	.string	"MEMP_IGMP_GROUP"
.LASF37:
	.string	"ntp_week_day"
.LASF32:
	.string	"help"
.LASF23:
	.string	"MEMP_SYS_TIMEOUT"
.LASF30:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_MAX"
.LASF52:
	.string	"cmd_sntp_date"
.LASF15:
	.string	"MEMP_TCP_PCB_LISTEN"
.LASF34:
	.string	"ntp_hour"
.LASF59:
	.string	"tcpip_callback"
.LASF24:
	.string	"MEMP_NETDB"
.LASF6:
	.string	"long long int"
.LASF40:
	.string	"leap_days"
.LASF45:
	.string	"utils_time_date_t"
.LASF4:
	.string	"long int"
.LASF41:
	.string	"leap_year_ind"
.LASF57:
	.string	"printf"
.LASF58:
	.string	"sntp_get_time"
.LASF31:
	.string	"name"
.LASF28:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_DHCP"
.LASF42:
	.string	"ntp_year"
.LASF1:
	.string	"unsigned char"
.LASF46:
	.string	"argc"
.LASF62:
	.string	"sntp_init"
.LASF0:
	.string	"signed char"
.LASF29:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_IGMP"
.LASF11:
	.string	"uint32_t"
.LASF8:
	.string	"unsigned int"
.LASF55:
	.string	"puts"
.LASF47:
	.string	"argv"
.LASF53:
	.string	"cmd_sntp_time"
.LASF3:
	.string	"short unsigned int"
.LASF49:
	.string	"seconds"
.LASF9:
	.string	"char"
.LASF64:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/sntp/sntp_cli.c"
.LASF33:
	.string	"function"
.LASF20:
	.string	"MEMP_TCPIP_MSG_API"
.LASF39:
	.string	"ntp_month"
.LASF25:
	.string	"MEMP_PBUF"
.LASF60:
	.string	"sntp_setoperatingmode"
.LASF51:
	.string	"date"
.LASF5:
	.string	"long unsigned int"
.LASF12:
	.string	"MEMP_RAW_PCB"
.LASF43:
	.string	"days_since_epoch"
.LASF44:
	.string	"day_of_year"
.LASF36:
	.string	"ntp_second"
.LASF67:
	.string	"cli_command"
.LASF48:
	.string	"cmds_user"
.LASF26:
	.string	"MEMP_PBUF_POOL"
.LASF19:
	.string	"MEMP_NETCONN"
.LASF14:
	.string	"MEMP_TCP_PCB"
.LASF27:
	.string	"MEMP_MAX"
.LASF13:
	.string	"MEMP_UDP_PCB"
.LASF68:
	.string	"sntp_cli_init"
.LASF56:
	.string	"utils_time_date_from_epoch"
.LASF18:
	.string	"MEMP_NETBUF"
.LASF63:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
