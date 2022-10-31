	.file	"bloop_handler_sys.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.rodata.loop_evt_entity_sys_handler.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"[SYS] [MSG] called with msg info\r\n    priority %u\r\n    dst %u\r\n    msgid %u\r\n    src %u\r\n    arg1 %p\r\n    arg2 %p\r\n"
	.section	.text.loop_evt_entity_sys_handler,"ax",@progbits
	.align	1
	.type	loop_evt_entity_sys_handler, @function
loop_evt_entity_sys_handler:
.LFB26:
	.file 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/sys/bloop/bloop/src/bloop_handler_sys.c"
	.loc 1 29 1
	.cfi_startproc
.LVL0:
	.loc 1 30 5
	.loc 1 29 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 29 1
	mv	a1,a2
.LVL1:
	.loc 1 30 5
	lw	a6,12(a2)
	lw	a5,8(a2)
	lbu	a4,7(a2)
	lbu	a3,6(a2)
	lbu	a1,4(a1)
	lbu	a2,5(a2)
.LVL2:
	lui	a0,%hi(.LC0)
.LVL3:
	addi	a0,a0,%lo(.LC0)
	call	printf
.LVL4:
	.loc 1 44 5 is_stmt 1
	.loc 1 45 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE26:
	.size	loop_evt_entity_sys_handler, .-loop_evt_entity_sys_handler
	.section	.rodata.loop_evt_entity_sys_evt.str1.4,"aMS",@progbits,1
	.align	2
.LC1:
	.string	"[SYS] [EVT] called with bitmap_evt %08lx, bitmap_task %08lx\r\n"
	.align	2
.LC2:
	.string	"bloop_handler_sys.c"
	.align	2
.LC3:
	.string	"[ASSERT] [ERR] %s:%d\r\n"
	.section	.text.loop_evt_entity_sys_evt,"ax",@progbits
	.align	1
	.type	loop_evt_entity_sys_evt, @function
loop_evt_entity_sys_evt:
.LFB25:
	.loc 1 7 1 is_stmt 1
	.cfi_startproc
.LVL5:
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	s1,4(sp)
	sw	s2,0(sp)
	mv	a5,a2
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.loc 1 8 14 is_stmt 0
	lw	s0,0(a3)
	.loc 1 7 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 10 5
	lw	a1,0(a5)
.LVL6:
	.loc 1 7 1
	mv	s2,a0
	.loc 1 8 5 is_stmt 1
.LVL7:
	.loc 1 10 5
	lui	a0,%hi(.LC1)
.LVL8:
	mv	a2,s0
.LVL9:
	addi	a0,a0,%lo(.LC1)
	.loc 1 7 1 is_stmt 0
	mv	s1,a3
	.loc 1 10 5
	call	printf
.LVL10:
.L4:
	.loc 1 13 5 is_stmt 1
	.loc 1 13 13 is_stmt 0
	andi	a5,s0,1
	.loc 1 13 8
	beq	a5,zero,.L5
	.loc 1 14 9 is_stmt 1
	mv	a0,s2
	.loc 1 15 13 is_stmt 0
	andi	s0,s0,-2
.LVL11:
	.loc 1 14 9
	call	bloop_status_dump
.LVL12:
	.loc 1 15 9 is_stmt 1
	.loc 1 17 120
	.loc 1 19 5
	.loc 1 19 8 is_stmt 0
	bne	s0,zero,.L4
.L6:
.LVL13:
	.loc 1 23 5 is_stmt 1
	.loc 1 26 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.loc 1 23 19
	sw	zero,0(s1)
	.loc 1 25 5 is_stmt 1
	.loc 1 26 1 is_stmt 0
	lw	s2,0(sp)
	.cfi_restore 18
.LVL14:
	lw	s1,4(sp)
	.cfi_restore 9
.LVL15:
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL16:
.L5:
	.cfi_restore_state
	.loc 1 17 9 is_stmt 1
	.loc 1 17 14
	.loc 1 17 17 is_stmt 0
	beq	s0,zero,.L6
.LVL17:
.LBB4:
.LBB5:
	.loc 1 17 33 is_stmt 1
	lui	a1,%hi(.LC2)
	lui	a0,%hi(.LC3)
	li	a2,17
	addi	a1,a1,%lo(.LC2)
	addi	a0,a0,%lo(.LC3)
	call	printf
.LVL18:
.L7:
	.loc 1 17 96
	.loc 1 17 108
	.loc 1 17 102
	j	.L7
.LBE5:
.LBE4:
	.cfi_endproc
.LFE25:
	.size	loop_evt_entity_sys_evt, .-loop_evt_entity_sys_evt
	.globl	bloop_handler_sys
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	2
.LC4:
	.string	"SYS [built-in]"
	.section	.data.bloop_handler_sys,"aw"
	.align	2
	.type	bloop_handler_sys, @object
	.size	bloop_handler_sys, 12
bloop_handler_sys:
	.word	.LC4
	.word	loop_evt_entity_sys_evt
	.word	loop_evt_entity_sys_handler
	.text
.Letext0:
	.file 2 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 3 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 4 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
	.file 5 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/utils/include/utils_list.h"
	.file 6 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/sys/bloop/bloop/include/bloop.h"
	.file 7 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x578
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF60
	.byte	0xc
	.4byte	.LASF61
	.4byte	.LASF62
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
	.byte	0x6
	.4byte	0x85
	.byte	0x7
	.byte	0x4
	.4byte	0x8c
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
	.byte	0x3
	.4byte	.LASF14
	.byte	0x4
	.byte	0x46
	.byte	0x25
	.4byte	0xbb
	.byte	0x7
	.byte	0x4
	.4byte	0xc1
	.byte	0x8
	.4byte	.LASF63
	.byte	0x9
	.4byte	.LASF15
	.byte	0x4
	.byte	0x5
	.byte	0x11
	.byte	0x8
	.4byte	0xe1
	.byte	0xa
	.4byte	.LASF17
	.byte	0x5
	.byte	0x13
	.byte	0x1c
	.4byte	0xe1
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0xc6
	.byte	0x9
	.4byte	.LASF16
	.byte	0x8
	.byte	0x5
	.byte	0x16
	.byte	0x8
	.4byte	0x10f
	.byte	0xa
	.4byte	.LASF18
	.byte	0x5
	.byte	0x19
	.byte	0x1c
	.4byte	0xe1
	.byte	0
	.byte	0xa
	.4byte	.LASF19
	.byte	0x5
	.byte	0x1b
	.byte	0x1c
	.4byte	0xe1
	.byte	0x4
	.byte	0
	.byte	0xb
	.4byte	.LASF20
	.byte	0x8
	.byte	0x5
	.2byte	0x103
	.byte	0x10
	.4byte	0x13a
	.byte	0xc
	.4byte	.LASF21
	.byte	0x5
	.2byte	0x104
	.byte	0x1b
	.4byte	0x13a
	.byte	0
	.byte	0xc
	.4byte	.LASF17
	.byte	0x5
	.2byte	0x105
	.byte	0x1b
	.4byte	0x13a
	.byte	0x4
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x10f
	.byte	0xd
	.4byte	.LASF22
	.byte	0x5
	.2byte	0x106
	.byte	0x3
	.4byte	0x10f
	.byte	0xe
	.byte	0x4
	.byte	0x6
	.byte	0x11
	.byte	0x9
	.4byte	0x18b
	.byte	0xa
	.4byte	.LASF23
	.byte	0x6
	.byte	0x12
	.byte	0x15
	.4byte	0x97
	.byte	0
	.byte	0xa
	.4byte	.LASF24
	.byte	0x6
	.byte	0x13
	.byte	0x15
	.4byte	0x97
	.byte	0x1
	.byte	0xa
	.4byte	.LASF25
	.byte	0x6
	.byte	0x14
	.byte	0x15
	.4byte	0x97
	.byte	0x2
	.byte	0xa
	.4byte	.LASF26
	.byte	0x6
	.byte	0x15
	.byte	0x15
	.4byte	0x97
	.byte	0x3
	.byte	0
	.byte	0xf
	.byte	0x4
	.byte	0x6
	.byte	0xf
	.byte	0x5
	.4byte	0x1ad
	.byte	0x10
	.4byte	.LASF27
	.byte	0x6
	.byte	0x10
	.byte	0xf
	.4byte	0x83
	.byte	0x10
	.4byte	.LASF28
	.byte	0x6
	.byte	0x16
	.byte	0xb
	.4byte	0x14d
	.byte	0
	.byte	0x9
	.4byte	.LASF29
	.byte	0x18
	.byte	0x6
	.byte	0xd
	.byte	0x8
	.4byte	0x207
	.byte	0xa
	.4byte	.LASF30
	.byte	0x6
	.byte	0xe
	.byte	0x1b
	.4byte	0xc6
	.byte	0
	.byte	0x11
	.string	"u"
	.byte	0x6
	.byte	0x17
	.byte	0x7
	.4byte	0x18b
	.byte	0x4
	.byte	0xa
	.4byte	.LASF31
	.byte	0x6
	.byte	0x18
	.byte	0xb
	.4byte	0x83
	.byte	0x8
	.byte	0xa
	.4byte	.LASF32
	.byte	0x6
	.byte	0x19
	.byte	0xb
	.4byte	0x83
	.byte	0xc
	.byte	0xa
	.4byte	.LASF33
	.byte	0x6
	.byte	0x1a
	.byte	0x12
	.4byte	0x7c
	.byte	0x10
	.byte	0xa
	.4byte	.LASF34
	.byte	0x6
	.byte	0x1b
	.byte	0x12
	.4byte	0x7c
	.byte	0x14
	.byte	0
	.byte	0x9
	.4byte	.LASF35
	.byte	0x10
	.byte	0x6
	.byte	0x1e
	.byte	0x8
	.4byte	0x249
	.byte	0xa
	.4byte	.LASF36
	.byte	0x6
	.byte	0x1f
	.byte	0x12
	.4byte	0x7c
	.byte	0
	.byte	0xa
	.4byte	.LASF34
	.byte	0x6
	.byte	0x20
	.byte	0x12
	.4byte	0x7c
	.byte	0x4
	.byte	0xa
	.4byte	.LASF37
	.byte	0x6
	.byte	0x21
	.byte	0x12
	.4byte	0x7c
	.byte	0x8
	.byte	0xa
	.4byte	.LASF38
	.byte	0x6
	.byte	0x22
	.byte	0x12
	.4byte	0x7c
	.byte	0xc
	.byte	0
	.byte	0x9
	.4byte	.LASF39
	.byte	0xc
	.byte	0x6
	.byte	0x25
	.byte	0x8
	.4byte	0x27e
	.byte	0xa
	.4byte	.LASF40
	.byte	0x6
	.byte	0x26
	.byte	0x11
	.4byte	0x91
	.byte	0
	.byte	0x11
	.string	"evt"
	.byte	0x6
	.byte	0x27
	.byte	0xb
	.4byte	0x356
	.byte	0x4
	.byte	0xa
	.4byte	.LASF41
	.byte	0x6
	.byte	0x28
	.byte	0xb
	.4byte	0x37b
	.byte	0x8
	.byte	0
	.byte	0x6
	.4byte	0x249
	.byte	0x12
	.4byte	0x75
	.4byte	0x2a1
	.byte	0x13
	.4byte	0x2a1
	.byte	0x13
	.4byte	0x34a
	.byte	0x13
	.4byte	0x350
	.byte	0x13
	.4byte	0x350
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x2a7
	.byte	0x14
	.4byte	.LASF42
	.2byte	0x4a0
	.byte	0x6
	.byte	0x2e
	.byte	0x8
	.4byte	0x34a
	.byte	0xa
	.4byte	.LASF43
	.byte	0x6
	.byte	0x2f
	.byte	0x12
	.4byte	0xaf
	.byte	0
	.byte	0xa
	.4byte	.LASF44
	.byte	0x6
	.byte	0x30
	.byte	0xe
	.4byte	0xa3
	.byte	0x4
	.byte	0xa
	.4byte	.LASF45
	.byte	0x6
	.byte	0x31
	.byte	0xe
	.4byte	0xa3
	.byte	0x8
	.byte	0xa
	.4byte	.LASF46
	.byte	0x6
	.byte	0x32
	.byte	0xe
	.4byte	0xa3
	.byte	0xc
	.byte	0xa
	.4byte	.LASF47
	.byte	0x6
	.byte	0x33
	.byte	0xe
	.4byte	0x381
	.byte	0x10
	.byte	0xa
	.4byte	.LASF48
	.byte	0x6
	.byte	0x34
	.byte	0xe
	.4byte	0x381
	.byte	0x90
	.byte	0x15
	.4byte	.LASF49
	.byte	0x6
	.byte	0x35
	.byte	0x17
	.4byte	0x391
	.2byte	0x110
	.byte	0x15
	.4byte	.LASF50
	.byte	0x6
	.byte	0x36
	.byte	0x27
	.4byte	0x3a1
	.2byte	0x210
	.byte	0x15
	.4byte	.LASF51
	.byte	0x6
	.byte	0x37
	.byte	0x25
	.4byte	0x3b1
	.2byte	0x410
	.byte	0x15
	.4byte	.LASF52
	.byte	0x6
	.byte	0x39
	.byte	0x13
	.4byte	0x140
	.2byte	0x490
	.byte	0x15
	.4byte	.LASF53
	.byte	0x6
	.byte	0x3a
	.byte	0x13
	.4byte	0x140
	.2byte	0x498
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x27e
	.byte	0x7
	.byte	0x4
	.4byte	0xa3
	.byte	0x7
	.byte	0x4
	.4byte	0x283
	.byte	0x12
	.4byte	0x75
	.4byte	0x375
	.byte	0x13
	.4byte	0x2a1
	.byte	0x13
	.4byte	0x34a
	.byte	0x13
	.4byte	0x375
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x1ad
	.byte	0x7
	.byte	0x4
	.4byte	0x35c
	.byte	0x16
	.4byte	0xa3
	.4byte	0x391
	.byte	0x17
	.4byte	0x7c
	.byte	0x1f
	.byte	0
	.byte	0x16
	.4byte	0xe7
	.4byte	0x3a1
	.byte	0x17
	.4byte	0x7c
	.byte	0x1f
	.byte	0
	.byte	0x16
	.4byte	0x207
	.4byte	0x3b1
	.byte	0x17
	.4byte	0x7c
	.byte	0x1f
	.byte	0
	.byte	0x16
	.4byte	0x34a
	.4byte	0x3c1
	.byte	0x17
	.4byte	0x7c
	.byte	0x1f
	.byte	0
	.byte	0x18
	.4byte	.LASF64
	.byte	0x6
	.byte	0x50
	.byte	0x20
	.4byte	0x249
	.byte	0x19
	.4byte	0x3c1
	.byte	0x1
	.byte	0x2f
	.byte	0x19
	.byte	0x5
	.byte	0x3
	.4byte	bloop_handler_sys
	.byte	0x1a
	.4byte	.LASF65
	.byte	0x1
	.byte	0x1c
	.byte	0xc
	.4byte	0x75
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x1
	.byte	0x9c
	.4byte	0x439
	.byte	0x1b
	.4byte	.LASF54
	.byte	0x1
	.byte	0x1c
	.byte	0x39
	.4byte	0x2a1
	.4byte	.LLST0
	.byte	0x1b
	.4byte	.LASF55
	.byte	0x1
	.byte	0x1c
	.byte	0x5e
	.4byte	0x34a
	.4byte	.LLST1
	.byte	0x1c
	.string	"msg"
	.byte	0x1
	.byte	0x1c
	.byte	0x78
	.4byte	0x375
	.4byte	.LLST2
	.byte	0x1d
	.4byte	.LVL4
	.4byte	0x563
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0
	.byte	0x1f
	.4byte	.LASF66
	.byte	0x1
	.byte	0x6
	.byte	0xc
	.4byte	0x75
	.byte	0x1
	.4byte	0x493
	.byte	0x20
	.4byte	.LASF54
	.byte	0x1
	.byte	0x6
	.byte	0x35
	.4byte	0x2a1
	.byte	0x20
	.4byte	.LASF55
	.byte	0x1
	.byte	0x6
	.byte	0x5a
	.4byte	0x34a
	.byte	0x20
	.4byte	.LASF56
	.byte	0x1
	.byte	0x6
	.byte	0x6d
	.4byte	0x350
	.byte	0x20
	.4byte	.LASF57
	.byte	0x1
	.byte	0x6
	.byte	0x83
	.4byte	0x350
	.byte	0x21
	.string	"map"
	.byte	0x1
	.byte	0x8
	.byte	0xe
	.4byte	0xa3
	.byte	0x22
	.4byte	.LASF67
	.byte	0x1
	.byte	0xc
	.byte	0x1
	.4byte	.L4
	.byte	0
	.byte	0x23
	.4byte	0x439
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x1
	.byte	0x9c
	.4byte	0x563
	.byte	0x24
	.4byte	0x44a
	.4byte	.LLST3
	.byte	0x24
	.4byte	0x456
	.4byte	.LLST4
	.byte	0x24
	.4byte	0x462
	.4byte	.LLST5
	.byte	0x24
	.4byte	0x46e
	.4byte	.LLST6
	.byte	0x25
	.4byte	0x47a
	.4byte	.LLST7
	.byte	0x26
	.4byte	0x439
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.byte	0x1
	.byte	0x6
	.byte	0xc
	.4byte	0x535
	.byte	0x27
	.4byte	0x44a
	.byte	0x1
	.byte	0x62
	.byte	0x27
	.4byte	0x456
	.byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.byte	0x27
	.4byte	0x462
	.byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.byte	0x27
	.4byte	0x46e
	.byte	0x1
	.byte	0x59
	.byte	0x28
	.4byte	0x47a
	.byte	0x29
	.4byte	0x486
	.byte	0x1d
	.4byte	.LVL18
	.4byte	0x563
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0x1e
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0x1e
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x41
	.byte	0
	.byte	0
	.byte	0x2a
	.4byte	.LVL10
	.4byte	0x563
	.4byte	0x552
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x1e
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x1d
	.4byte	.LVL12
	.4byte	0x56f
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0
	.byte	0x2b
	.4byte	.LASF58
	.4byte	.LASF58
	.byte	0x7
	.byte	0xc8
	.byte	0x5
	.byte	0x2b
	.4byte	.LASF59
	.4byte	.LASF59
	.byte	0x6
	.byte	0x55
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
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0x13
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3c
	.byte	0x19
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
	.byte	0xb
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
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x38
	.byte	0xb
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
	.byte	0x5
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
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x38
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xd
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
	.byte	0xe
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
	.byte	0xf
	.byte	0x17
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
	.byte	0
	.byte	0
	.byte	0x11
	.byte	0xd
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
	.byte	0x38
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x12
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
	.byte	0x13
	.byte	0x5
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x14
	.byte	0x13
	.byte	0x1
	.byte	0x3
	.byte	0xe
	.byte	0xb
	.byte	0x5
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
	.byte	0x15
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
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x17
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x18
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
	.byte	0x3f
	.byte	0x19
	.byte	0x3c
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x19
	.byte	0x34
	.byte	0
	.byte	0x47
	.byte	0x13
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x1a
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
	.byte	0x1b
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
	.byte	0x1c
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
	.byte	0x1d
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1e
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x1f
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
	.byte	0x49
	.byte	0x13
	.byte	0x20
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x20
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
	.byte	0x21
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
	.byte	0x22
	.byte	0xa
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x11
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x23
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
	.byte	0x24
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x25
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x26
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
	.byte	0x27
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x28
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x29
	.byte	0xa
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x2a
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
	.byte	0x2b
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
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL3
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
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL1
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
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL2
	.4byte	.LFE26
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL5
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL8
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL14
	.4byte	.LVL16
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LFE25
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL6
	.4byte	.LFE25
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL5
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL9
	.4byte	.LVL10-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL10-1
	.4byte	.LFE25
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL5
	.4byte	.LVL10-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL10-1
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LFE25
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL7
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL16
	.4byte	.LFE25
	.2byte	0x1
	.byte	0x58
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
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF28:
	.string	"header"
.LASF56:
	.string	"bitmap_evt"
.LASF36:
	.string	"time_max"
.LASF50:
	.string	"statistic"
.LASF16:
	.string	"utils_list"
.LASF2:
	.string	"short int"
.LASF27:
	.string	"container"
.LASF62:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/bloop"
.LASF29:
	.string	"loop_msg"
.LASF6:
	.string	"__uint32_t"
.LASF67:
	.string	"redo"
.LASF55:
	.string	"handler"
.LASF59:
	.string	"bloop_status_dump"
.LASF39:
	.string	"loop_evt_handler"
.LASF43:
	.string	"looper"
.LASF12:
	.string	"uint8_t"
.LASF40:
	.string	"name"
.LASF25:
	.string	"id_msg"
.LASF35:
	.string	"loop_evt_handler_statistic"
.LASF31:
	.string	"arg1"
.LASF26:
	.string	"id_src"
.LASF8:
	.string	"long long int"
.LASF66:
	.string	"loop_evt_entity_sys_evt"
.LASF42:
	.string	"loop_ctx"
.LASF4:
	.string	"long int"
.LASF24:
	.string	"id_dst"
.LASF58:
	.string	"printf"
.LASF48:
	.string	"evt_type_map_sync"
.LASF63:
	.string	"tskTaskControlBlock"
.LASF5:
	.string	"__uint8_t"
.LASF33:
	.string	"time_added"
.LASF1:
	.string	"unsigned char"
.LASF52:
	.string	"timer_dlist"
.LASF53:
	.string	"timer_dued"
.LASF0:
	.string	"signed char"
.LASF9:
	.string	"long long unsigned int"
.LASF13:
	.string	"uint32_t"
.LASF51:
	.string	"handlers"
.LASF10:
	.string	"unsigned int"
.LASF19:
	.string	"last"
.LASF44:
	.string	"bitmap_evt_async"
.LASF46:
	.string	"bitmap_msg"
.LASF37:
	.string	"time_accumulated"
.LASF3:
	.string	"short unsigned int"
.LASF64:
	.string	"bloop_handler_sys"
.LASF11:
	.string	"char"
.LASF47:
	.string	"evt_type_map_async"
.LASF49:
	.string	"list"
.LASF20:
	.string	"utils_dlist_s"
.LASF7:
	.string	"long unsigned int"
.LASF65:
	.string	"loop_evt_entity_sys_handler"
.LASF41:
	.string	"handle"
.LASF61:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/sys/bloop/bloop/src/bloop_handler_sys.c"
.LASF34:
	.string	"time_consumed"
.LASF30:
	.string	"item"
.LASF38:
	.string	"count_triggered"
.LASF57:
	.string	"evt_type_map"
.LASF22:
	.string	"utils_dlist_t"
.LASF23:
	.string	"priority"
.LASF54:
	.string	"loop"
.LASF32:
	.string	"arg2"
.LASF21:
	.string	"prev"
.LASF14:
	.string	"TaskHandle_t"
.LASF15:
	.string	"utils_list_hdr"
.LASF17:
	.string	"next"
.LASF45:
	.string	"bitmap_evt_sync"
.LASF18:
	.string	"first"
.LASF60:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
