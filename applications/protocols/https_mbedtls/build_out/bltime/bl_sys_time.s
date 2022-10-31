	.file	"bl_sys_time.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.bl_sys_time_update,"ax",@progbits
	.align	1
	.globl	bl_sys_time_update
	.type	bl_sys_time_update, @function
bl_sys_time_update:
.LFB8:
	.file 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/sys/bltime/bl_sys_time.c"
	.loc 1 14 1
	.cfi_startproc
.LVL0:
	.loc 1 15 5
	.loc 1 14 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	s1,4(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 1, -4
	.loc 1 14 1
	mv	s1,a0
	mv	s0,a1
	.loc 1 15 19
	call	xTaskGetTickCount
.LVL1:
	.loc 1 15 17
	lui	a5,%hi(.LANCHOR0)
	addi	a5,a5,%lo(.LANCHOR0)
	.loc 1 15 19
	sw	a0,0(a5)
	sw	zero,4(a5)
	.loc 1 16 5 is_stmt 1
	.loc 1 16 16 is_stmt 0
	lui	a5,%hi(.LANCHOR1)
	.loc 1 17 1
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 16 16
	sw	s0,%lo(.LANCHOR1+4)(a5)
	.loc 1 17 1
	lw	s0,8(sp)
	.cfi_restore 8
	.loc 1 16 16
	sw	s1,%lo(.LANCHOR1)(a5)
	.loc 1 17 1
	lw	s1,4(sp)
	.cfi_restore 9
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE8:
	.size	bl_sys_time_update, .-bl_sys_time_update
	.section	.text.bl_sys_time_get,"ax",@progbits
	.align	1
	.globl	bl_sys_time_get
	.type	bl_sys_time_get, @function
bl_sys_time_get:
.LFB9:
	.loc 1 20 1 is_stmt 1
	.cfi_startproc
.LVL2:
	.loc 1 21 5
	.loc 1 23 5
	.loc 1 20 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	.cfi_offset 8, -8
	.loc 1 23 11
	lui	s0,%hi(.LANCHOR1)
	addi	s0,s0,%lo(.LANCHOR1)
	.loc 1 23 8
	lw	a5,0(s0)
	lw	a4,4(s0)
	.loc 1 20 1
	sw	ra,12(sp)
	sw	s1,4(sp)
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	.loc 1 23 8
	or	a5,a5,a4
	beq	a5,zero,.L6
	mv	s1,a0
	.loc 1 28 5 is_stmt 1
	.loc 1 28 25 is_stmt 0
	call	xTaskGetTickCount
.LVL3:
	.loc 1 29 5 is_stmt 1
	.loc 1 28 13 is_stmt 0
	lui	a5,%hi(.LANCHOR0)
	lw	a5,%lo(.LANCHOR0)(a5)
	.loc 1 29 25
	lw	a4,0(s0)
	lw	a3,4(s0)
	.loc 1 28 13
	sub	a5,a0,a5
	.loc 1 29 25
	srai	a0,a5,31
.LVL4:
	add	a4,a5,a4
	add	a0,a0,a3
	sltu	a5,a4,a5
	add	a5,a5,a0
	.loc 1 29 12
	sw	a4,0(s1)
	sw	a5,4(s1)
	.loc 1 31 5 is_stmt 1
	.loc 1 31 12 is_stmt 0
	li	a0,0
.LVL5:
.L3:
	.loc 1 32 1
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	lw	s1,4(sp)
	.cfi_restore 9
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL6:
.L6:
	.cfi_restore_state
	.loc 1 24 16
	li	a0,-1
.LVL7:
	j	.L3
	.cfi_endproc
.LFE9:
	.size	bl_sys_time_get, .-bl_sys_time_get
	.section	.text.bl_sys_time_sync_init,"ax",@progbits
	.align	1
	.globl	bl_sys_time_sync_init
	.type	bl_sys_time_sync_init, @function
bl_sys_time_sync_init:
.LFB10:
	.loc 1 35 1 is_stmt 1
	.cfi_startproc
	.loc 1 36 5
	.loc 1 35 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 36 5
	call	vTaskEnterCritical
.LVL8:
	.loc 1 37 5 is_stmt 1
	.loc 1 37 22 is_stmt 0
	call	xTaskGetTickCount
.LVL9:
	.loc 1 37 20
	lui	a5,%hi(.LANCHOR2)
	sw	a0,%lo(.LANCHOR2)(a5)
	.loc 1 38 5 is_stmt 1
	.loc 1 38 20 is_stmt 0
	call	bl_rtc_get_counter
.LVL10:
	.loc 1 38 18
	lui	a5,%hi(.LANCHOR3)
	sw	a0,%lo(.LANCHOR3)(a5)
	sw	a1,%lo(.LANCHOR3+4)(a5)
	.loc 1 39 5 is_stmt 1
	call	vTaskExitCritical
.LVL11:
	.loc 1 41 5
	.loc 1 42 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 41 15
	lui	a5,%hi(.LANCHOR4)
	li	a4,1
	sw	a4,%lo(.LANCHOR4)(a5)
	.loc 1 42 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE10:
	.size	bl_sys_time_sync_init, .-bl_sys_time_sync_init
	.section	.text.bl_sys_time_sync_state,"ax",@progbits
	.align	1
	.globl	bl_sys_time_sync_state
	.type	bl_sys_time_sync_state, @function
bl_sys_time_sync_state:
.LFB11:
	.loc 1 45 1 is_stmt 1
	.cfi_startproc
.LVL12:
	.loc 1 46 5
	.loc 1 47 5
	.loc 1 49 5
	.loc 1 49 7 is_stmt 0
	lui	a5,%hi(.LANCHOR4)
	lw	a5,%lo(.LANCHOR4)(a5)
	beq	a5,zero,.L12
	.loc 1 45 1
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	sw	s1,20(sp)
	sw	s2,16(sp)
	sw	s3,12(sp)
	sw	s4,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	mv	s2,a0
.LVL13:
.LBB4:
.LBB5:
	.loc 1 53 5 is_stmt 1
	call	vTaskEnterCritical
.LVL14:
	.loc 1 54 5
	.loc 1 54 21 is_stmt 0
	call	xTaskGetTickCount
.LVL15:
	.loc 1 54 41
	lui	a5,%hi(.LANCHOR2)
	lw	s3,%lo(.LANCHOR2)(a5)
	.loc 1 55 30
	lui	a5,%hi(.LANCHOR3)
	lw	a1,%lo(.LANCHOR3+4)(a5)
	.loc 1 54 21
	mv	s1,a0
	.loc 1 54 19
	sub	s4,a0,s3
.LVL16:
	.loc 1 55 5 is_stmt 1
	.loc 1 55 30 is_stmt 0
	lw	a0,%lo(.LANCHOR3)(a5)
	call	bl_rtc_get_delta_time_ms
.LVL17:
	mv	s0,a0
.LVL18:
	.loc 1 56 5 is_stmt 1
	call	vTaskExitCritical
.LVL19:
	.loc 1 58 5
	.loc 1 62 16 is_stmt 0
	li	a0,0
	.loc 1 58 7
	bgeu	s4,s0,.L10
	.loc 1 59 9 is_stmt 1
	.loc 1 59 38 is_stmt 0
	sub	s0,s0,s1
.LVL20:
	add	s0,s0,s3
	.loc 1 59 23
	sw	s0,0(s2)
	.loc 1 60 9 is_stmt 1
	.loc 1 60 16 is_stmt 0
	li	a0,1
.L10:
.LBE5:
.LBE4:
	.loc 1 64 1
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	lw	s1,20(sp)
	.cfi_restore 9
	lw	s2,16(sp)
	.cfi_restore 18
.LVL21:
	lw	s3,12(sp)
	.cfi_restore 19
	lw	s4,8(sp)
	.cfi_restore 20
.LVL22:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL23:
.L12:
	.loc 1 50 16
	li	a0,-1
.LVL24:
	.loc 1 64 1
	ret
	.cfi_endproc
.LFE11:
	.size	bl_sys_time_sync_state, .-bl_sys_time_sync_state
	.section	.text.bl_sys_time_sync,"ax",@progbits
	.align	1
	.globl	bl_sys_time_sync
	.type	bl_sys_time_sync, @function
bl_sys_time_sync:
.LFB12:
	.loc 1 67 1 is_stmt 1
	.cfi_startproc
	.loc 1 68 5
	.loc 1 67 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	.loc 1 70 8
	addi	a0,sp,12
	.loc 1 67 1
	sw	ra,28(sp)
	.cfi_offset 1, -4
	.loc 1 68 14
	sw	zero,12(sp)
	.loc 1 70 5 is_stmt 1
	.loc 1 70 8 is_stmt 0
	call	bl_sys_time_sync_state
.LVL25:
	.loc 1 70 7
	ble	a0,zero,.L19
	.loc 1 71 9 is_stmt 1
	lw	a0,12(sp)
	call	vTaskStepTickSafe
.LVL26:
.L19:
	.loc 1 74 5
	.loc 1 75 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_restore 1
	lw	a0,12(sp)
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE12:
	.size	bl_sys_time_sync, .-bl_sys_time_sync
	.section	.sbss.epoch_time,"aw",@nobits
	.align	3
	.set	.LANCHOR1,. + 0
	.type	epoch_time, @object
	.size	epoch_time, 8
epoch_time:
	.zero	8
	.section	.sbss.init_cnt_rtc,"aw",@nobits
	.align	3
	.set	.LANCHOR3,. + 0
	.type	init_cnt_rtc, @object
	.size	init_cnt_rtc, 8
init_cnt_rtc:
	.zero	8
	.section	.sbss.init_tick_rtos,"aw",@nobits
	.align	2
	.set	.LANCHOR2,. + 0
	.type	init_tick_rtos, @object
	.size	init_tick_rtos, 4
init_tick_rtos:
	.zero	4
	.section	.sbss.sync_init,"aw",@nobits
	.align	2
	.set	.LANCHOR4,. + 0
	.type	sync_init, @object
	.size	sync_init, 4
sync_init:
	.zero	4
	.section	.sbss.time_synced,"aw",@nobits
	.align	3
	.set	.LANCHOR0,. + 0
	.type	time_synced, @object
	.size	time_synced, 8
time_synced:
	.zero	8
	.text
.Letext0:
	.file 2 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.file 3 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
	.file 4 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h"
	.file 5 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/bl602_hal/bl_rtc.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x2e6
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF33
	.byte	0xc
	.4byte	.LASF34
	.4byte	.LASF35
	.4byte	.Ldebug_ranges0+0
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
	.byte	0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.byte	0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF3
	.byte	0x4
	.4byte	.LASF8
	.byte	0x2
	.byte	0x28
	.byte	0x12
	.4byte	0x54
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF4
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF6
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF7
	.byte	0x4
	.4byte	.LASF9
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0x7c
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.byte	0x4
	.4byte	.LASF11
	.byte	0x2
	.byte	0x37
	.byte	0x20
	.4byte	0x25
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.byte	0x5
	.4byte	.LASF13
	.byte	0x1
	.byte	0x6
	.byte	0x11
	.4byte	0x83
	.byte	0x5
	.byte	0x3
	.4byte	epoch_time
	.byte	0x5
	.4byte	.LASF14
	.byte	0x1
	.byte	0x7
	.byte	0x11
	.4byte	0x83
	.byte	0x5
	.byte	0x3
	.4byte	time_synced
	.byte	0x5
	.4byte	.LASF15
	.byte	0x1
	.byte	0x9
	.byte	0x11
	.4byte	0x70
	.byte	0x5
	.byte	0x3
	.4byte	init_tick_rtos
	.byte	0x5
	.4byte	.LASF16
	.byte	0x1
	.byte	0xa
	.byte	0x11
	.4byte	0x83
	.byte	0x5
	.byte	0x3
	.4byte	init_cnt_rtc
	.byte	0x5
	.4byte	.LASF17
	.byte	0x1
	.byte	0xb
	.byte	0xc
	.4byte	0x33
	.byte	0x5
	.byte	0x3
	.4byte	sync_init
	.byte	0x6
	.4byte	.LASF21
	.byte	0x1
	.byte	0x42
	.byte	0xa
	.4byte	0x70
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x1
	.byte	0x9c
	.4byte	0x137
	.byte	0x5
	.4byte	.LASF18
	.byte	0x1
	.byte	0x44
	.byte	0xe
	.4byte	0x70
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x7
	.4byte	.LVL25
	.4byte	0x137
	.4byte	0x12d
	.byte	0x8
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0x9
	.4byte	.LVL26
	.4byte	0x29f
	.byte	0
	.byte	0xa
	.4byte	.LASF36
	.byte	0x1
	.byte	0x2c
	.byte	0x5
	.4byte	0x33
	.byte	0x1
	.4byte	0x16d
	.byte	0xb
	.4byte	.LASF18
	.byte	0x1
	.byte	0x2c
	.byte	0x26
	.4byte	0x16d
	.byte	0xc
	.4byte	.LASF19
	.byte	0x1
	.byte	0x2e
	.byte	0xe
	.4byte	0x70
	.byte	0xc
	.4byte	.LASF20
	.byte	0x1
	.byte	0x2f
	.byte	0xe
	.4byte	0x70
	.byte	0
	.byte	0xd
	.byte	0x4
	.4byte	0x70
	.byte	0xe
	.4byte	.LASF24
	.byte	0x1
	.byte	0x22
	.byte	0x6
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x1
	.byte	0x9c
	.4byte	0x1ae
	.byte	0x9
	.4byte	.LVL8
	.4byte	0x2ac
	.byte	0x9
	.4byte	.LVL9
	.4byte	0x2b8
	.byte	0x9
	.4byte	.LVL10
	.4byte	0x2c5
	.byte	0x9
	.4byte	.LVL11
	.4byte	0x2d1
	.byte	0
	.byte	0x6
	.4byte	.LASF22
	.byte	0x1
	.byte	0x13
	.byte	0x5
	.4byte	0x33
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0x1f2
	.byte	0xf
	.4byte	.LASF26
	.byte	0x1
	.byte	0x13
	.byte	0x1f
	.4byte	0x1f2
	.4byte	.LLST1
	.byte	0x10
	.4byte	.LASF23
	.byte	0x1
	.byte	0x15
	.byte	0x9
	.4byte	0x33
	.4byte	.LLST2
	.byte	0x9
	.4byte	.LVL3
	.4byte	0x2b8
	.byte	0
	.byte	0xd
	.byte	0x4
	.4byte	0x83
	.byte	0xe
	.4byte	.LASF25
	.byte	0x1
	.byte	0xd
	.byte	0x6
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0x228
	.byte	0xf
	.4byte	.LASF26
	.byte	0x1
	.byte	0xd
	.byte	0x22
	.4byte	0x83
	.4byte	.LLST0
	.byte	0x9
	.4byte	.LVL1
	.4byte	0x2b8
	.byte	0
	.byte	0x11
	.4byte	0x137
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x1
	.byte	0x9c
	.4byte	0x29f
	.byte	0x12
	.4byte	0x148
	.4byte	.LLST3
	.byte	0x13
	.4byte	0x154
	.byte	0x13
	.4byte	0x160
	.byte	0x14
	.4byte	0x137
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.byte	0x1
	.byte	0x2c
	.byte	0x5
	.byte	0x12
	.4byte	0x148
	.4byte	.LLST4
	.byte	0x15
	.4byte	0x154
	.4byte	.LLST5
	.byte	0x15
	.4byte	0x160
	.4byte	.LLST6
	.byte	0x9
	.4byte	.LVL14
	.4byte	0x2ac
	.byte	0x9
	.4byte	.LVL15
	.4byte	0x2b8
	.byte	0x9
	.4byte	.LVL17
	.4byte	0x2dd
	.byte	0x9
	.4byte	.LVL19
	.4byte	0x2d1
	.byte	0
	.byte	0
	.byte	0x16
	.4byte	.LASF27
	.4byte	.LASF27
	.byte	0x3
	.2byte	0x954
	.byte	0x6
	.byte	0x17
	.4byte	.LASF28
	.4byte	.LASF28
	.byte	0x4
	.byte	0x61
	.byte	0xd
	.byte	0x16
	.4byte	.LASF29
	.4byte	.LASF29
	.byte	0x3
	.2byte	0x547
	.byte	0xc
	.byte	0x17
	.4byte	.LASF30
	.4byte	.LASF30
	.byte	0x5
	.byte	0xe
	.byte	0xa
	.byte	0x17
	.4byte	.LASF31
	.4byte	.LASF31
	.byte	0x4
	.byte	0x62
	.byte	0xd
	.byte	0x17
	.4byte	.LASF32
	.4byte	.LASF32
	.byte	0x5
	.byte	0x11
	.byte	0xa
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
	.byte	0x7
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
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
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
	.byte	0x49
	.byte	0x13
	.byte	0x20
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xb
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
	.byte	0
	.byte	0
	.byte	0xd
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
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
	.byte	0x10
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
	.byte	0x11
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
	.byte	0x12
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x13
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x14
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
	.byte	0
	.byte	0
	.byte	0x15
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x16
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
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x17
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
	.4byte	.LVL2
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL3-1
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL7
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x10
	.byte	0x7a
	.byte	0
	.byte	0x3
	.4byte	time_synced
	.byte	0xf6
	.byte	0x8
	.byte	0x25
	.byte	0xf7
	.byte	0x2c
	.byte	0xf7
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1-1
	.2byte	0x6
	.byte	0x5a
	.byte	0x93
	.byte	0x4
	.byte	0x5b
	.byte	0x93
	.byte	0x4
	.4byte	.LVL1-1
	.4byte	.LFE8
	.2byte	0x6
	.byte	0xf3
	.byte	0x3
	.byte	0xf5
	.byte	0xa
	.byte	0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL12
	.4byte	.LVL14-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL14-1
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL21
	.4byte	.LVL23
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL24
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL13
	.4byte	.LVL14-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL14-1
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL21
	.4byte	.LVL23
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL16
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL18
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x58
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
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF14:
	.string	"time_synced"
.LASF28:
	.string	"vTaskEnterCritical"
.LASF31:
	.string	"vTaskExitCritical"
.LASF35:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/bltime"
.LASF7:
	.string	"short unsigned int"
.LASF36:
	.string	"bl_sys_time_sync_state"
.LASF19:
	.string	"deltaTickRtos"
.LASF15:
	.string	"init_tick_rtos"
.LASF0:
	.string	"long long unsigned int"
.LASF6:
	.string	"unsigned char"
.LASF17:
	.string	"sync_init"
.LASF10:
	.string	"long unsigned int"
.LASF21:
	.string	"bl_sys_time_sync"
.LASF25:
	.string	"bl_sys_time_update"
.LASF18:
	.string	"xTicksToJump"
.LASF23:
	.string	"ms_diff"
.LASF1:
	.string	"unsigned int"
.LASF24:
	.string	"bl_sys_time_sync_init"
.LASF12:
	.string	"char"
.LASF16:
	.string	"init_cnt_rtc"
.LASF27:
	.string	"vTaskStepTickSafe"
.LASF8:
	.string	"int32_t"
.LASF22:
	.string	"bl_sys_time_get"
.LASF34:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/sys/bltime/bl_sys_time.c"
.LASF5:
	.string	"long long int"
.LASF33:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
.LASF30:
	.string	"bl_rtc_get_counter"
.LASF3:
	.string	"short int"
.LASF20:
	.string	"deltaTickRtc"
.LASF26:
	.string	"epoch"
.LASF11:
	.string	"uint64_t"
.LASF9:
	.string	"uint32_t"
.LASF4:
	.string	"long int"
.LASF13:
	.string	"epoch_time"
.LASF2:
	.string	"signed char"
.LASF32:
	.string	"bl_rtc_get_delta_time_ms"
.LASF29:
	.string	"xTaskGetTickCount"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
