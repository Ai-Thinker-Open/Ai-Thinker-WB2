	.file	"loopset_led_cli.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.rodata.cmd_loopset_led_trigger.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"Usage: %s pin 0/1[0:Lo Active, 1:Hi Active] 0/1[0:Hearbeat, 1:Blink]\r\n"
	.align	2
.LC1:
	.string	"Illegal Params\r\n"
	.section	.text.cmd_loopset_led_trigger,"ax",@progbits
	.align	1
	.globl	cmd_loopset_led_trigger
	.type	cmd_loopset_led_trigger, @function
cmd_loopset_led_trigger:
.LFB3:
	.file 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/sys/bloop/loopset/src/loopset_led_cli.c"
	.loc 1 8 1
	.cfi_startproc
.LVL0:
	.loc 1 9 5
	.loc 1 10 5
	.loc 1 8 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	sw	s1,4(sp)
	sw	s2,0(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.loc 1 10 8
	li	a5,4
	.loc 1 8 1
	mv	s0,a3
	.loc 1 10 8
	beq	a2,a5,.L2
	.loc 1 11 9 is_stmt 1
	.loc 1 24 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_remember_state
	.cfi_restore 8
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s1,4(sp)
	.cfi_restore 9
	lw	s2,0(sp)
	.cfi_restore 18
	.loc 1 11 9
	lw	a1,0(a3)
.LVL1:
	lui	a0,%hi(.LC0)
.LVL2:
	.loc 1 24 1
	.loc 1 11 9
	addi	a0,a0,%lo(.LC0)
	.loc 1 24 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 11 9
	tail	printf
.LVL3:
.L2:
	.cfi_restore_state
.LBB4:
.LBB5:
	.loc 1 16 5 is_stmt 1
	.loc 1 16 11 is_stmt 0
	lw	a0,4(a3)
.LVL4:
	call	atoi
.LVL5:
	mv	s1,a0
.LVL6:
	.loc 1 17 5 is_stmt 1
	.loc 1 17 14 is_stmt 0
	lw	a0,8(s0)
	call	atoi
.LVL7:
	mv	s2,a0
.LVL8:
	.loc 1 18 5 is_stmt 1
	.loc 1 18 12 is_stmt 0
	lw	a0,12(s0)
.LVL9:
	call	atoi
.LVL10:
	.loc 1 19 5 is_stmt 1
	.loc 1 19 8 is_stmt 0
	ble	s1,zero,.L3
	.loc 1 19 18
	blt	s2,zero,.L3
	.loc 1 19 32
	bge	a0,zero,.L4
.L3:
	.loc 1 20 9 is_stmt 1
.LBE5:
.LBE4:
	.loc 1 24 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_remember_state
	.cfi_restore 8
.LVL11:
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s1,4(sp)
	.cfi_restore 9
.LVL12:
	lw	s2,0(sp)
	.cfi_restore 18
.LVL13:
.LBB12:
.LBB6:
	.loc 1 20 9
	lui	a0,%hi(.LC1)
.LVL14:
.LBE6:
.LBE12:
	.loc 1 24 1
.LBB13:
.LBB7:
	.loc 1 20 9
	addi	a0,a0,%lo(.LC1)
.LBE7:
.LBE13:
	.loc 1 24 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
.LBB14:
.LBB8:
	.loc 1 20 9
	tail	puts
.LVL15:
.L4:
	.cfi_restore_state
	.loc 1 23 5 is_stmt 1
.LBE8:
.LBE14:
	.loc 1 24 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_restore 8
.LVL16:
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s2,0(sp)
	.cfi_restore 18
.LVL17:
.LBB15:
.LBB9:
	.loc 1 23 5
	mv	a0,s1
.LVL18:
.LBE9:
.LBE15:
	.loc 1 24 1
	lw	s1,4(sp)
	.cfi_restore 9
.LVL19:
.LBB16:
.LBB10:
	.loc 1 23 5
	li	a1,100
.LBE10:
.LBE16:
	.loc 1 24 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
.LBB17:
.LBB11:
	.loc 1 23 5
	tail	loopset_led_trigger
.LVL20:
.LBE11:
.LBE17:
	.cfi_endproc
.LFE3:
	.size	cmd_loopset_led_trigger, .-cmd_loopset_led_trigger
	.section	.text.loopset_led_cli_init,"ax",@progbits
	.align	1
	.globl	loopset_led_cli_init
	.type	loopset_led_cli_init, @function
loopset_led_cli_init:
.LFB4:
	.loc 1 32 1 is_stmt 1
	.cfi_startproc
	.loc 1 37 5
	.loc 1 38 1 is_stmt 0
	li	a0,0
	ret
	.cfi_endproc
.LFE4:
	.size	loopset_led_cli_init, .-loopset_led_cli_init
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	2
.LC2:
	.string	"loopset-led-trigger"
	.align	2
.LC3:
	.string	"Trigger LED on PIN"
	.section	.static_cli_cmds,"a"
	.align	2
	.type	cmds_user, @object
	.size	cmds_user, 12
cmds_user:
	.word	.LC2
	.word	.LC3
	.word	cmd_loopset_led_trigger
	.text
.Letext0:
	.file 2 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/cli/cli/include/cli.h"
	.file 3 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdlib.h"
	.file 4 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h"
	.file 5 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/sys/bloop/loopset/include/loopset.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x2a5
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF21
	.byte	0xc
	.4byte	.LASF22
	.4byte	.LASF23
	.4byte	.Ldebug_ranges0+0x40
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
	.4byte	.LASF24
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
	.byte	0
	.byte	0
	.byte	0x5
	.4byte	0xe3
	.byte	0xc
	.4byte	.LASF25
	.byte	0x1
	.byte	0x1b
	.byte	0x21
	.4byte	0xf3
	.byte	0x5
	.byte	0x3
	.4byte	cmds_user
	.byte	0xd
	.4byte	.LASF26
	.byte	0x1
	.byte	0x1f
	.byte	0x5
	.4byte	0x5d
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.byte	0xe
	.4byte	.LASF27
	.byte	0x1
	.byte	0x7
	.byte	0x6
	.byte	0x1
	.4byte	0x182
	.byte	0xf
	.string	"buf"
	.byte	0x1
	.byte	0x7
	.byte	0x24
	.4byte	0x6b
	.byte	0xf
	.string	"len"
	.byte	0x1
	.byte	0x7
	.byte	0x2d
	.4byte	0x5d
	.byte	0x10
	.4byte	.LASF13
	.byte	0x1
	.byte	0x7
	.byte	0x36
	.4byte	0x5d
	.byte	0x10
	.4byte	.LASF14
	.byte	0x1
	.byte	0x7
	.byte	0x43
	.4byte	0xd7
	.byte	0x11
	.string	"pin"
	.byte	0x1
	.byte	0x9
	.byte	0x9
	.4byte	0x5d
	.byte	0x12
	.4byte	.LASF15
	.byte	0x1
	.byte	0x9
	.byte	0x13
	.4byte	0x5d
	.byte	0x12
	.4byte	.LASF16
	.byte	0x1
	.byte	0x9
	.byte	0x20
	.4byte	0x5d
	.byte	0
	.byte	0x13
	.4byte	0x120
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x1
	.byte	0x9c
	.4byte	0x278
	.byte	0x14
	.4byte	0x12d
	.4byte	.LLST0
	.byte	0x14
	.4byte	0x139
	.4byte	.LLST1
	.byte	0x14
	.4byte	0x145
	.4byte	.LLST2
	.byte	0x14
	.4byte	0x151
	.4byte	.LLST3
	.byte	0x15
	.4byte	0x15d
	.byte	0x7f
	.byte	0x15
	.4byte	0x169
	.byte	0x7f
	.byte	0x15
	.4byte	0x175
	.byte	0x7f
	.byte	0x16
	.4byte	0x120
	.4byte	.LBB4
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x7
	.byte	0x6
	.4byte	0x264
	.byte	0x14
	.4byte	0x12d
	.4byte	.LLST4
	.byte	0x14
	.4byte	0x139
	.4byte	.LLST5
	.byte	0x17
	.4byte	0x145
	.byte	0x4
	.byte	0x14
	.4byte	0x151
	.4byte	.LLST6
	.byte	0x18
	.4byte	.Ldebug_ranges0+0
	.byte	0x19
	.4byte	0x15d
	.4byte	.LLST7
	.byte	0x19
	.4byte	0x169
	.4byte	.LLST8
	.byte	0x19
	.4byte	0x175
	.4byte	.LLST9
	.byte	0x1a
	.4byte	.LVL5
	.4byte	0x278
	.byte	0x1a
	.4byte	.LVL7
	.4byte	0x278
	.byte	0x1a
	.4byte	.LVL10
	.4byte	0x278
	.byte	0x1b
	.4byte	.LVL15
	.4byte	0x284
	.4byte	0x252
	.byte	0x1c
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.byte	0x1d
	.4byte	.LVL20
	.4byte	0x290
	.byte	0x1c
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x8
	.byte	0x64
	.byte	0
	.byte	0
	.byte	0
	.byte	0x1d
	.4byte	.LVL3
	.4byte	0x29c
	.byte	0x1c
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0
	.byte	0x1e
	.4byte	.LASF17
	.4byte	.LASF17
	.byte	0x3
	.byte	0x51
	.byte	0x5
	.byte	0x1e
	.4byte	.LASF18
	.4byte	.LASF18
	.byte	0x4
	.byte	0xdd
	.byte	0x5
	.byte	0x1e
	.4byte	.LASF19
	.4byte	.LASF19
	.byte	0x5
	.byte	0x8
	.byte	0x6
	.byte	0x1e
	.4byte	.LASF20
	.4byte	.LASF20
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
	.byte	0x20
	.byte	0xb
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
	.byte	0
	.byte	0
	.byte	0x11
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
	.byte	0
	.byte	0
	.byte	0x13
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
	.byte	0x14
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x15
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x1c
	.byte	0xd
	.byte	0
	.byte	0
	.byte	0x16
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
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x17
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x18
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x19
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
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
	.byte	0x95,0x42
	.byte	0x19
	.byte	0x31
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1c
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x1d
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
	.byte	0x1e
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
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL4
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
	.4byte	.LVL3
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LVL5-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL5-1
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
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL3-1
	.4byte	.LVL3
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LVL5-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL5-1
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL0
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL3-1
	.4byte	.LVL3
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL11
	.4byte	.LVL15
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL16
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL4
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL3
	.4byte	.LVL5-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL5-1
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL3
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL11
	.4byte	.LVL15
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL16
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL6
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL15
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL19
	.4byte	.LVL20-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL9
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL15
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL10
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL15
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x24
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
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB4
	.4byte	.LBE4
	.4byte	.LBB12
	.4byte	.LBE12
	.4byte	.LBB13
	.4byte	.LBE13
	.4byte	.LBB14
	.4byte	.LBE14
	.4byte	.LBB15
	.4byte	.LBE15
	.4byte	.LBB16
	.4byte	.LBE16
	.4byte	.LBB17
	.4byte	.LBE17
	.4byte	0
	.4byte	0
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF15:
	.string	"active"
.LASF19:
	.string	"loopset_led_trigger"
.LASF1:
	.string	"unsigned char"
.LASF5:
	.string	"long unsigned int"
.LASF3:
	.string	"short unsigned int"
.LASF11:
	.string	"help"
.LASF24:
	.string	"cli_command"
.LASF8:
	.string	"unsigned int"
.LASF23:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/loopset"
.LASF7:
	.string	"long long unsigned int"
.LASF27:
	.string	"cmd_loopset_led_trigger"
.LASF17:
	.string	"atoi"
.LASF13:
	.string	"argc"
.LASF6:
	.string	"long long int"
.LASF25:
	.string	"cmds_user"
.LASF21:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
.LASF10:
	.string	"name"
.LASF20:
	.string	"printf"
.LASF16:
	.string	"type"
.LASF2:
	.string	"short int"
.LASF14:
	.string	"argv"
.LASF22:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/sys/bloop/loopset/src/loopset_led_cli.c"
.LASF4:
	.string	"long int"
.LASF9:
	.string	"char"
.LASF18:
	.string	"puts"
.LASF0:
	.string	"signed char"
.LASF26:
	.string	"loopset_led_cli_init"
.LASF12:
	.string	"function"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
