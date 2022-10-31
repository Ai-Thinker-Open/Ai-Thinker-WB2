	.file	"looprt_test_cli.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.rodata.cmd_looprt_test.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"====== looprt test ======\r\n"
	.align	2
.LC1:
	.string	"struct loop_ctx size is %d\r\n"
	.align	2
.LC2:
	.string	"MSG size is %d\r\n"
	.section	.text.cmd_looprt_test,"ax",@progbits
	.align	1
	.globl	cmd_looprt_test
	.type	cmd_looprt_test, @function
cmd_looprt_test:
.LFB26:
	.file 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/sys/bloop/looprt/src/looprt_test_cli.c"
	.loc 1 14 1
	.cfi_startproc
.LVL0:
	.loc 1 15 5
	lui	a0,%hi(.LC0)
.LVL1:
	.loc 1 14 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 15 5
	addi	a0,a0,%lo(.LC0)
	.loc 1 14 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 15 5
	call	puts
.LVL2:
	.loc 1 16 5 is_stmt 1
.LBB4:
.LBB5:
	.loc 1 9 5
	lui	a0,%hi(.LC1)
	li	a1,1184
	addi	a0,a0,%lo(.LC1)
	call	printf
.LVL3:
	.loc 1 10 5
	lui	a0,%hi(.LC2)
	li	a1,24
	addi	a0,a0,%lo(.LC2)
	call	printf
.LVL4:
.LBE5:
.LBE4:
	.loc 1 18 5
	.loc 1 19 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 18 5
	tail	looprt_start_auto
.LVL5:
	.cfi_endproc
.LFE26:
	.size	cmd_looprt_test, .-cmd_looprt_test
	.section	.rodata.cmd_looprt_test_status.str1.4,"aMS",@progbits,1
	.align	2
.LC3:
	.string	"====== looprt test status ======\r\n"
	.section	.text.cmd_looprt_test_status,"ax",@progbits
	.align	1
	.globl	cmd_looprt_test_status
	.type	cmd_looprt_test_status, @function
cmd_looprt_test_status:
.LFB27:
	.loc 1 22 1 is_stmt 1
	.cfi_startproc
.LVL6:
	.loc 1 23 5
	lui	a0,%hi(.LC3)
.LVL7:
	.loc 1 22 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 23 5
	addi	a0,a0,%lo(.LC3)
	.loc 1 22 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 23 5
	call	puts
.LVL8:
	.loc 1 24 5 is_stmt 1
	.loc 1 25 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 24 5
	tail	looprt_evt_status_dump
.LVL9:
	.cfi_endproc
.LFE27:
	.size	cmd_looprt_test_status, .-cmd_looprt_test_status
	.section	.rodata.cmd_looprt_test_evt.str1.4,"aMS",@progbits,1
	.align	2
.LC4:
	.string	"====== looprt EVT ======\r\n"
	.section	.text.cmd_looprt_test_evt,"ax",@progbits
	.align	1
	.globl	cmd_looprt_test_evt
	.type	cmd_looprt_test_evt, @function
cmd_looprt_test_evt:
.LFB28:
	.loc 1 28 1 is_stmt 1
	.cfi_startproc
.LVL10:
	.loc 1 29 5
	lui	a0,%hi(.LC4)
.LVL11:
	.loc 1 28 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 29 5
	addi	a0,a0,%lo(.LC4)
	.loc 1 28 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 29 5
	call	puts
.LVL12:
	.loc 1 30 5 is_stmt 1
	.loc 1 31 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 30 5
	li	a1,0
	.loc 1 31 1
	.loc 1 30 5
	li	a0,31
	.loc 1 31 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 30 5
	tail	looprt_evt_notify_async
.LVL13:
	.cfi_endproc
.LFE28:
	.size	cmd_looprt_test_evt, .-cmd_looprt_test_evt
	.section	.rodata.cmd_looprt_test_evt_dump.str1.4,"aMS",@progbits,1
	.align	2
.LC5:
	.string	"====== looprt EVT status ======\r\n"
	.section	.text.cmd_looprt_test_evt_dump,"ax",@progbits
	.align	1
	.globl	cmd_looprt_test_evt_dump
	.type	cmd_looprt_test_evt_dump, @function
cmd_looprt_test_evt_dump:
.LFB29:
	.loc 1 34 1 is_stmt 1
	.cfi_startproc
.LVL14:
	.loc 1 35 5
	lui	a0,%hi(.LC5)
.LVL15:
	.loc 1 34 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 35 5
	addi	a0,a0,%lo(.LC5)
	.loc 1 34 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 35 5
	call	puts
.LVL16:
	.loc 1 36 5 is_stmt 1
	.loc 1 37 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 36 5
	li	a1,1
	.loc 1 37 1
	.loc 1 36 5
	li	a0,31
	.loc 1 37 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 36 5
	tail	looprt_evt_notify_async
.LVL17:
	.cfi_endproc
.LFE29:
	.size	cmd_looprt_test_evt_dump, .-cmd_looprt_test_evt_dump
	.section	.rodata.cmd_looprt_test_schedule_evt1.str1.4,"aMS",@progbits,1
	.align	2
.LC6:
	.string	"====== looprt Schedule EVT1 ======\r\n"
	.section	.text.cmd_looprt_test_schedule_evt1,"ax",@progbits
	.align	1
	.globl	cmd_looprt_test_schedule_evt1
	.type	cmd_looprt_test_schedule_evt1, @function
cmd_looprt_test_schedule_evt1:
.LFB30:
	.loc 1 40 1 is_stmt 1
	.cfi_startproc
.LVL18:
	.loc 1 41 5
	lui	a0,%hi(.LC6)
.LVL19:
	.loc 1 40 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 41 5
	addi	a0,a0,%lo(.LC6)
	.loc 1 40 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 41 5
	call	puts
.LVL20:
	.loc 1 42 5 is_stmt 1
	.loc 1 43 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 42 5
	li	a2,20480
	.loc 1 43 1
	.loc 1 42 5
	addi	a2,a2,-480
	li	a1,1
	li	a0,31
	.loc 1 43 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 42 5
	tail	looprt_evt_schedule
.LVL21:
	.cfi_endproc
.LFE30:
	.size	cmd_looprt_test_schedule_evt1, .-cmd_looprt_test_schedule_evt1
	.section	.rodata.cmd_looprt_test_schedule_evt2.str1.4,"aMS",@progbits,1
	.align	2
.LC7:
	.string	"====== looprt Schedule EVT2 ======\r\n"
	.section	.text.cmd_looprt_test_schedule_evt2,"ax",@progbits
	.align	1
	.globl	cmd_looprt_test_schedule_evt2
	.type	cmd_looprt_test_schedule_evt2, @function
cmd_looprt_test_schedule_evt2:
.LFB31:
	.loc 1 46 1 is_stmt 1
	.cfi_startproc
.LVL22:
	.loc 1 47 5
	lui	a0,%hi(.LC7)
.LVL23:
	.loc 1 46 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 47 5
	addi	a0,a0,%lo(.LC7)
	.loc 1 46 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 47 5
	call	puts
.LVL24:
	.loc 1 48 5 is_stmt 1
	.loc 1 49 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 48 5
	li	a2,8192
	.loc 1 49 1
	.loc 1 48 5
	addi	a2,a2,1808
	li	a1,1
	li	a0,31
	.loc 1 49 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 48 5
	tail	looprt_evt_schedule
.LVL25:
	.cfi_endproc
.LFE31:
	.size	cmd_looprt_test_schedule_evt2, .-cmd_looprt_test_schedule_evt2
	.section	.text.looprt_test_cli_init,"ax",@progbits
	.align	1
	.globl	looprt_test_cli_init
	.type	looprt_test_cli_init, @function
looprt_test_cli_init:
.LFB32:
	.loc 1 62 1 is_stmt 1
	.cfi_startproc
	.loc 1 67 5
	.loc 1 68 1 is_stmt 0
	li	a0,0
	ret
	.cfi_endproc
.LFE32:
	.size	looprt_test_cli_init, .-looprt_test_cli_init
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	2
.LC8:
	.string	"looprt"
	.align	2
.LC9:
	.string	"looprt based on bloop"
	.align	2
.LC10:
	.string	"looprt_status"
	.align	2
.LC11:
	.string	"looprt_evt"
	.align	2
.LC12:
	.string	"looprt notify event"
	.align	2
.LC13:
	.string	"looprt_evt_status"
	.align	2
.LC14:
	.string	"looprt evt to dump"
	.align	2
.LC15:
	.string	"looprt_schedule1"
	.align	2
.LC16:
	.string	"looprt schedule evt 20s"
	.align	2
.LC17:
	.string	"looprt_schedule2"
	.align	2
.LC18:
	.string	"looprt schedule evt 10s"
	.section	.static_cli_cmds,"a"
	.align	2
	.type	cmds_user, @object
	.size	cmds_user, 72
cmds_user:
	.word	.LC8
	.word	.LC9
	.word	cmd_looprt_test
	.word	.LC10
	.word	.LC9
	.word	cmd_looprt_test_status
	.word	.LC11
	.word	.LC12
	.word	cmd_looprt_test_evt
	.word	.LC13
	.word	.LC14
	.word	cmd_looprt_test_evt_dump
	.word	.LC15
	.word	.LC16
	.word	cmd_looprt_test_schedule_evt1
	.word	.LC17
	.word	.LC18
	.word	cmd_looprt_test_schedule_evt2
	.text
.Letext0:
	.file 2 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/cli/cli/include/cli.h"
	.file 3 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h"
	.file 4 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/sys/bloop/looprt/include/looprt.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x4bd
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF27
	.byte	0xc
	.4byte	.LASF28
	.4byte	.LASF29
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
	.byte	0x4
	.4byte	0x71
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF9
	.byte	0x5
	.4byte	0x71
	.byte	0x4
	.byte	0x4
	.4byte	0x78
	.byte	0x6
	.4byte	.LASF30
	.byte	0xc
	.byte	0x2
	.byte	0x32
	.byte	0x8
	.4byte	0xb8
	.byte	0x7
	.4byte	.LASF10
	.byte	0x2
	.byte	0x33
	.byte	0x11
	.4byte	0x7d
	.byte	0
	.byte	0x7
	.4byte	.LASF11
	.byte	0x2
	.byte	0x34
	.byte	0x11
	.4byte	0x7d
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.byte	0x2
	.byte	0x36
	.byte	0xc
	.4byte	0xdd
	.byte	0x8
	.byte	0
	.byte	0x5
	.4byte	0x83
	.byte	0x8
	.4byte	0xd7
	.byte	0x9
	.4byte	0x6b
	.byte	0x9
	.4byte	0x5d
	.byte	0x9
	.4byte	0x5d
	.byte	0x9
	.4byte	0xd7
	.byte	0
	.byte	0x4
	.byte	0x4
	.4byte	0x6b
	.byte	0x4
	.byte	0x4
	.4byte	0xbd
	.byte	0xa
	.4byte	0xb8
	.4byte	0xf3
	.byte	0xb
	.4byte	0x64
	.byte	0x5
	.byte	0
	.byte	0x5
	.4byte	0xe3
	.byte	0xc
	.4byte	.LASF31
	.byte	0x1
	.byte	0x34
	.byte	0x21
	.4byte	0xf3
	.byte	0x5
	.byte	0x3
	.4byte	cmds_user
	.byte	0xd
	.4byte	.LASF32
	.byte	0x1
	.byte	0x3d
	.byte	0x5
	.4byte	0x5d
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x1
	.byte	0x9c
	.byte	0xe
	.4byte	.LASF15
	.byte	0x1
	.byte	0x2d
	.byte	0x6
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x1
	.byte	0x9c
	.4byte	0x1a9
	.byte	0xf
	.string	"buf"
	.byte	0x1
	.byte	0x2d
	.byte	0x2a
	.4byte	0x6b
	.4byte	.LLST20
	.byte	0xf
	.string	"len"
	.byte	0x1
	.byte	0x2d
	.byte	0x33
	.4byte	0x5d
	.4byte	.LLST21
	.byte	0x10
	.4byte	.LASF13
	.byte	0x1
	.byte	0x2d
	.byte	0x3c
	.4byte	0x5d
	.4byte	.LLST22
	.byte	0x10
	.4byte	.LASF14
	.byte	0x1
	.byte	0x2d
	.byte	0x49
	.4byte	0xd7
	.4byte	.LLST23
	.byte	0x11
	.4byte	.LVL24
	.4byte	0x478
	.4byte	0x18d
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0
	.byte	0x13
	.4byte	.LVL25
	.4byte	0x484
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x4f
	.byte	0x12
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0x12
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xa
	.2byte	0x2710
	.byte	0
	.byte	0
	.byte	0xe
	.4byte	.LASF16
	.byte	0x1
	.byte	0x27
	.byte	0x6
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x1
	.byte	0x9c
	.4byte	0x232
	.byte	0xf
	.string	"buf"
	.byte	0x1
	.byte	0x27
	.byte	0x2a
	.4byte	0x6b
	.4byte	.LLST16
	.byte	0xf
	.string	"len"
	.byte	0x1
	.byte	0x27
	.byte	0x33
	.4byte	0x5d
	.4byte	.LLST17
	.byte	0x10
	.4byte	.LASF13
	.byte	0x1
	.byte	0x27
	.byte	0x3c
	.4byte	0x5d
	.4byte	.LLST18
	.byte	0x10
	.4byte	.LASF14
	.byte	0x1
	.byte	0x27
	.byte	0x49
	.4byte	0xd7
	.4byte	.LLST19
	.byte	0x11
	.4byte	.LVL20
	.4byte	0x478
	.4byte	0x216
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0
	.byte	0x13
	.4byte	.LVL21
	.4byte	0x484
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x4f
	.byte	0x12
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0x12
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xa
	.2byte	0x4e20
	.byte	0
	.byte	0
	.byte	0xe
	.4byte	.LASF17
	.byte	0x1
	.byte	0x21
	.byte	0x6
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x1
	.byte	0x9c
	.4byte	0x2b4
	.byte	0xf
	.string	"buf"
	.byte	0x1
	.byte	0x21
	.byte	0x25
	.4byte	0x6b
	.4byte	.LLST12
	.byte	0xf
	.string	"len"
	.byte	0x1
	.byte	0x21
	.byte	0x2e
	.4byte	0x5d
	.4byte	.LLST13
	.byte	0x10
	.4byte	.LASF13
	.byte	0x1
	.byte	0x21
	.byte	0x37
	.4byte	0x5d
	.4byte	.LLST14
	.byte	0x10
	.4byte	.LASF14
	.byte	0x1
	.byte	0x21
	.byte	0x44
	.4byte	0xd7
	.4byte	.LLST15
	.byte	0x11
	.4byte	.LVL16
	.4byte	0x478
	.4byte	0x29f
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.byte	0x13
	.4byte	.LVL17
	.4byte	0x490
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x4f
	.byte	0x12
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0xe
	.4byte	.LASF18
	.byte	0x1
	.byte	0x1b
	.byte	0x6
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x1
	.byte	0x9c
	.4byte	0x336
	.byte	0xf
	.string	"buf"
	.byte	0x1
	.byte	0x1b
	.byte	0x20
	.4byte	0x6b
	.4byte	.LLST8
	.byte	0xf
	.string	"len"
	.byte	0x1
	.byte	0x1b
	.byte	0x29
	.4byte	0x5d
	.4byte	.LLST9
	.byte	0x10
	.4byte	.LASF13
	.byte	0x1
	.byte	0x1b
	.byte	0x32
	.4byte	0x5d
	.4byte	.LLST10
	.byte	0x10
	.4byte	.LASF14
	.byte	0x1
	.byte	0x1b
	.byte	0x3f
	.4byte	0xd7
	.4byte	.LLST11
	.byte	0x11
	.4byte	.LVL12
	.4byte	0x478
	.4byte	0x321
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.byte	0x13
	.4byte	.LVL13
	.4byte	0x490
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x4f
	.byte	0x12
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0xe
	.4byte	.LASF19
	.byte	0x1
	.byte	0x15
	.byte	0x6
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x1
	.byte	0x9c
	.4byte	0x3ad
	.byte	0xf
	.string	"buf"
	.byte	0x1
	.byte	0x15
	.byte	0x23
	.4byte	0x6b
	.4byte	.LLST4
	.byte	0xf
	.string	"len"
	.byte	0x1
	.byte	0x15
	.byte	0x2c
	.4byte	0x5d
	.4byte	.LLST5
	.byte	0x10
	.4byte	.LASF13
	.byte	0x1
	.byte	0x15
	.byte	0x35
	.4byte	0x5d
	.4byte	.LLST6
	.byte	0x10
	.4byte	.LASF14
	.byte	0x1
	.byte	0x15
	.byte	0x42
	.4byte	0xd7
	.4byte	.LLST7
	.byte	0x11
	.4byte	.LVL8
	.4byte	0x478
	.4byte	0x3a3
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0x14
	.4byte	.LVL9
	.4byte	0x49c
	.byte	0
	.byte	0xe
	.4byte	.LASF20
	.byte	0x1
	.byte	0xd
	.byte	0x6
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x1
	.byte	0x9c
	.4byte	0x46f
	.byte	0xf
	.string	"buf"
	.byte	0x1
	.byte	0xd
	.byte	0x1c
	.4byte	0x6b
	.4byte	.LLST0
	.byte	0xf
	.string	"len"
	.byte	0x1
	.byte	0xd
	.byte	0x25
	.4byte	0x5d
	.4byte	.LLST1
	.byte	0x10
	.4byte	.LASF13
	.byte	0x1
	.byte	0xd
	.byte	0x2e
	.4byte	0x5d
	.4byte	.LLST2
	.byte	0x10
	.4byte	.LASF14
	.byte	0x1
	.byte	0xd
	.byte	0x3b
	.4byte	0xd7
	.4byte	.LLST3
	.byte	0x15
	.4byte	0x46f
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.byte	0x1
	.byte	0x10
	.byte	0x5
	.4byte	0x44e
	.byte	0x11
	.4byte	.LVL3
	.4byte	0x4a8
	.4byte	0x435
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x12
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xa
	.2byte	0x4a0
	.byte	0
	.byte	0x16
	.4byte	.LVL4
	.4byte	0x4a8
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0x12
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x48
	.byte	0
	.byte	0
	.byte	0x11
	.4byte	.LVL2
	.4byte	0x478
	.4byte	0x465
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0x14
	.4byte	.LVL5
	.4byte	0x4b4
	.byte	0
	.byte	0x17
	.4byte	.LASF33
	.byte	0x1
	.byte	0x7
	.byte	0xd
	.byte	0x1
	.byte	0x18
	.4byte	.LASF21
	.4byte	.LASF21
	.byte	0x3
	.byte	0xdd
	.byte	0x5
	.byte	0x18
	.4byte	.LASF22
	.4byte	.LASF22
	.byte	0x4
	.byte	0xc
	.byte	0x6
	.byte	0x18
	.4byte	.LASF23
	.4byte	.LASF23
	.byte	0x4
	.byte	0xa
	.byte	0x6
	.byte	0x18
	.4byte	.LASF24
	.4byte	.LASF24
	.byte	0x4
	.byte	0x9
	.byte	0x6
	.byte	0x18
	.4byte	.LASF25
	.4byte	.LASF25
	.byte	0x3
	.byte	0xc8
	.byte	0x5
	.byte	0x18
	.4byte	.LASF26
	.4byte	.LASF26
	.byte	0x4
	.byte	0x8
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
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x5
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x6
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
	.byte	0x7
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
	.byte	0x8
	.byte	0x15
	.byte	0x1
	.byte	0x27
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x9
	.byte	0x5
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xb
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xc
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
	.byte	0xd
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
	.byte	0xf
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
	.byte	0x10
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
	.byte	0x11
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
	.byte	0x12
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x13
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
	.byte	0x14
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
	.byte	0x15
	.byte	0x1d
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x58
	.byte	0xb
	.byte	0x59
	.byte	0xb
	.byte	0x57
	.byte	0xb
	.byte	0x1
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
	.byte	0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.byte	0x18
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
.LLST20:
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL23
	.4byte	.LFE31
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL22
	.4byte	.LVL24-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL24-1
	.4byte	.LFE31
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL22
	.4byte	.LVL24-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL24-1
	.4byte	.LFE31
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL22
	.4byte	.LVL24-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL24-1
	.4byte	.LFE31
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL19
	.4byte	.LFE30
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL18
	.4byte	.LVL20-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL20-1
	.4byte	.LFE30
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL18
	.4byte	.LVL20-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL20-1
	.4byte	.LFE30
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL18
	.4byte	.LVL20-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL20-1
	.4byte	.LFE30
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL15
	.4byte	.LFE29
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL14
	.4byte	.LVL16-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL16-1
	.4byte	.LFE29
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL14
	.4byte	.LVL16-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL16-1
	.4byte	.LFE29
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL14
	.4byte	.LVL16-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL16-1
	.4byte	.LFE29
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL11
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL10
	.4byte	.LVL12-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL12-1
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL10
	.4byte	.LVL12-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL12-1
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL10
	.4byte	.LVL12-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL12-1
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL7
	.4byte	.LFE27
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL6
	.4byte	.LVL8-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL8-1
	.4byte	.LFE27
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL6
	.4byte	.LVL8-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL8-1
	.4byte	.LFE27
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL6
	.4byte	.LVL8-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL8-1
	.4byte	.LFE27
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
	.4byte	.LFE26
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
	.4byte	.LFE26
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
	.4byte	.LFE26
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
	.4byte	.LFE26
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x4c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF17:
	.string	"cmd_looprt_test_evt_dump"
.LASF22:
	.string	"looprt_evt_schedule"
.LASF29:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/looprt"
.LASF3:
	.string	"short unsigned int"
.LASF2:
	.string	"short int"
.LASF25:
	.string	"printf"
.LASF23:
	.string	"looprt_evt_notify_async"
.LASF26:
	.string	"looprt_start_auto"
.LASF5:
	.string	"long unsigned int"
.LASF24:
	.string	"looprt_evt_status_dump"
.LASF11:
	.string	"help"
.LASF1:
	.string	"unsigned char"
.LASF30:
	.string	"cli_command"
.LASF12:
	.string	"function"
.LASF18:
	.string	"cmd_looprt_test_evt"
.LASF20:
	.string	"cmd_looprt_test"
.LASF28:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/sys/bloop/looprt/src/looprt_test_cli.c"
.LASF8:
	.string	"unsigned int"
.LASF7:
	.string	"long long unsigned int"
.LASF32:
	.string	"looprt_test_cli_init"
.LASF19:
	.string	"cmd_looprt_test_status"
.LASF13:
	.string	"argc"
.LASF6:
	.string	"long long int"
.LASF31:
	.string	"cmds_user"
.LASF27:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
.LASF9:
	.string	"char"
.LASF16:
	.string	"cmd_looprt_test_schedule_evt1"
.LASF15:
	.string	"cmd_looprt_test_schedule_evt2"
.LASF33:
	.string	"looprt_case_1"
.LASF14:
	.string	"argv"
.LASF4:
	.string	"long int"
.LASF21:
	.string	"puts"
.LASF0:
	.string	"signed char"
.LASF10:
	.string	"name"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
