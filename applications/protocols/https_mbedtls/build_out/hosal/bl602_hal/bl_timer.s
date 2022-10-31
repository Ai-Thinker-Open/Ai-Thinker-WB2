	.file	"bl_timer.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.int_timer_cb,"ax",@progbits
	.align	1
	.type	int_timer_cb, @function
int_timer_cb:
.LFB13:
	.file 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/bl602_hal/bl_timer.c"
	.loc 1 77 1
	.cfi_startproc
	.loc 1 78 5
	.loc 1 77 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 78 5
	li	a1,0
	li	a0,1
	.loc 1 77 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 78 5
	call	TIMER_ClearIntStatus
.LVL0:
	.loc 1 79 5 is_stmt 1
	.loc 1 79 9 is_stmt 0
	call	xTaskIncrementTick
.LVL1:
	.loc 1 79 8
	beq	a0,zero,.L1
	.loc 1 80 9 is_stmt 1
	.loc 1 82 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 80 9
	tail	vTaskSwitchContext
.LVL2:
.L1:
	.cfi_restore_state
	.loc 1 82 1
	lw	ra,12(sp)
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE13:
	.size	int_timer_cb, .-int_timer_cb
	.globl	__udivdi3
	.section	.text.bl_timer_now_us,"ax",@progbits
	.align	1
	.globl	bl_timer_now_us
	.type	bl_timer_now_us, @function
bl_timer_now_us:
.LFB9:
	.loc 1 26 1 is_stmt 1
	.cfi_startproc
	.loc 1 27 5
	.loc 1 26 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
.LBB4:
.LBB5:
	.loc 1 15 19
	li	a5,33603584
.L5:
	.loc 1 11 5 is_stmt 1
	.loc 1 12 5
	.loc 1 14 5
	.loc 1 15 9
	.loc 1 15 19 is_stmt 0
	lw	a1,-4(a5)
.LVL3:
	.loc 1 16 9 is_stmt 1
	.loc 1 16 18 is_stmt 0
	lw	a0,-8(a5)
.LVL4:
	.loc 1 18 9 is_stmt 1
	.loc 1 18 18 is_stmt 0
	lw	a4,-4(a5)
.LVL5:
	.loc 1 19 13 is_stmt 1
	.loc 1 19 5 is_stmt 0
	bne	a1,a4,.L5
	.loc 1 21 5 is_stmt 1
.LVL6:
	.loc 1 22 5
.LBE5:
.LBE4:
	.loc 1 27 27 is_stmt 0
	li	a2,10
	li	a3,0
	call	__udivdi3
.LVL7:
	.loc 1 28 1
	lw	ra,12(sp)
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE9:
	.size	bl_timer_now_us, .-bl_timer_now_us
	.section	.text.bl_timer_now_us64,"ax",@progbits
	.align	1
	.globl	bl_timer_now_us64
	.type	bl_timer_now_us64, @function
bl_timer_now_us64:
.LFB10:
	.loc 1 31 1 is_stmt 1
	.cfi_startproc
	.loc 1 32 5
	.loc 1 31 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
.LBB8:
.LBB9:
	.loc 1 15 19
	li	a5,33603584
.L9:
	.loc 1 11 5 is_stmt 1
	.loc 1 12 5
	.loc 1 14 5
	.loc 1 15 9
	.loc 1 15 19 is_stmt 0
	lw	a1,-4(a5)
.LVL8:
	.loc 1 16 9 is_stmt 1
	.loc 1 16 18 is_stmt 0
	lw	a0,-8(a5)
.LVL9:
	.loc 1 18 9 is_stmt 1
	.loc 1 18 18 is_stmt 0
	lw	a4,-4(a5)
.LVL10:
	.loc 1 19 13 is_stmt 1
	.loc 1 19 5 is_stmt 0
	bne	a1,a4,.L9
	.loc 1 21 5 is_stmt 1
.LVL11:
	.loc 1 22 5
.LBE9:
.LBE8:
	.loc 1 32 27 is_stmt 0
	li	a2,10
	li	a3,0
	call	__udivdi3
.LVL12:
	.loc 1 33 1
	lw	ra,12(sp)
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE10:
	.size	bl_timer_now_us64, .-bl_timer_now_us64
	.section	.text.bl_timer_delay_us,"ax",@progbits
	.align	1
	.globl	bl_timer_delay_us
	.type	bl_timer_delay_us, @function
bl_timer_delay_us:
.LFB11:
	.loc 1 36 1 is_stmt 1
	.cfi_startproc
.LVL13:
	.loc 1 37 5
	.loc 1 38 5
	.loc 1 40 5
	.loc 1 40 16 is_stmt 0
	li	a5,33603584
	lw	a4,-8(a5)
.LVL14:
	.loc 1 41 5 is_stmt 1
	.loc 1 41 16 is_stmt 0
	li	a5,10
	mul	a0,a0,a5
.LVL15:
	.loc 1 44 18
	li	a3,33603584
.L13:
	.loc 1 43 5 is_stmt 1 discriminator 1
	.loc 1 44 9 discriminator 1
	.loc 1 44 18 is_stmt 0 discriminator 1
	lw	a5,-8(a3)
.LVL16:
	.loc 1 45 9 is_stmt 1 discriminator 1
	.loc 1 46 13 discriminator 1
	.loc 1 45 14 is_stmt 0 discriminator 1
	sub	a5,a5,a4
.LVL17:
	.loc 1 46 5 discriminator 1
	bgt	a0,a5,.L13
	.loc 1 47 1
	ret
	.cfi_endproc
.LFE11:
	.size	bl_timer_delay_us, .-bl_timer_delay_us
	.section	.text.bl_timer_tick_enable,"ax",@progbits
	.align	1
	.globl	bl_timer_tick_enable
	.type	bl_timer_tick_enable, @function
bl_timer_tick_enable:
.LFB14:
	.loc 1 85 1 is_stmt 1
	.cfi_startproc
	.loc 1 86 5
	.loc 1 85 1 is_stmt 0
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	.loc 1 86 20
	lui	a1,%hi(.LANCHOR0)
	li	a2,36
	addi	a1,a1,%lo(.LANCHOR0)
	addi	a0,sp,12
	.loc 1 85 1
	sw	ra,60(sp)
	.cfi_offset 1, -4
	.loc 1 86 20
	call	memcpy
.LVL18:
	.loc 1 100 5 is_stmt 1
.LBB12:
.LBB13:
	.loc 1 52 5
	li	a2,1
	li	a1,3
	li	a0,1
	call	TIMER_IntMask
.LVL19:
	.loc 1 55 5
	lw	a0,12(sp)
	call	TIMER_Disable
.LVL20:
	.loc 1 58 5
	addi	a0,sp,12
.LVL21:
	call	TIMER_Init
.LVL22:
	.loc 1 61 5
	lw	a0,12(sp)
	li	a1,0
	call	TIMER_ClearIntStatus
.LVL23:
	.loc 1 62 5
	lw	a0,12(sp)
	li	a1,1
	call	TIMER_ClearIntStatus
.LVL24:
	.loc 1 63 5
	lw	a0,12(sp)
	li	a1,2
	call	TIMER_ClearIntStatus
.LVL25:
	.loc 1 66 5
	lw	a0,12(sp)
	li	a2,0
	li	a1,0
	call	TIMER_IntMask
.LVL26:
	.loc 1 67 5
	lw	a0,12(sp)
	li	a2,1
	li	a1,1
	call	TIMER_IntMask
.LVL27:
	.loc 1 68 5
	lw	a0,12(sp)
	li	a2,1
	li	a1,2
	call	TIMER_IntMask
.LVL28:
	.loc 1 71 5
	lw	a0,12(sp)
	call	TIMER_Enable
.LVL29:
	.loc 1 73 5
.LBE13:
.LBE12:
	.loc 1 102 5
	li	a0,53
	call	bl_irq_enable
.LVL30:
	.loc 1 103 5
	lui	a1,%hi(int_timer_cb)
	li	a0,53
	addi	a1,a1,%lo(int_timer_cb)
	call	bl_irq_register
.LVL31:
	.loc 1 105 5
	.loc 1 106 1 is_stmt 0
	lw	ra,60(sp)
	.cfi_restore 1
	li	a0,0
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE14:
	.size	bl_timer_tick_enable, .-bl_timer_tick_enable
	.section	.rodata
	.align	2
	.set	.LANCHOR0,. + 0
.LC0:
	.word	1
	.word	0
	.word	1
	.word	0
	.byte	15
	.zero	3
	.word	9998
	.word	360000
	.word	390000
	.word	0
	.text
.Letext0:
	.file 2 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.file 3 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/bl602.h"
	.file 4 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_common.h"
	.file 5 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_timer.h"
	.file 6 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/bl602_hal/bl_irq.h"
	.file 7 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
	.file 8 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x7ba
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF144
	.byte	0xc
	.4byte	.LASF145
	.4byte	.LASF146
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
	.byte	0x3
	.4byte	.LASF4
	.byte	0x2
	.byte	0x28
	.byte	0x12
	.4byte	0x3f
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF2
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF3
	.byte	0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0x2e
	.byte	0x17
	.4byte	0x59
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF6
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF7
	.byte	0x3
	.4byte	.LASF8
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0x73
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.byte	0x3
	.4byte	.LASF10
	.byte	0x2
	.byte	0x37
	.byte	0x20
	.4byte	0x86
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.byte	0x5
	.byte	0x7
	.byte	0x4
	.4byte	0x94
	.byte	0x3
	.byte	0x41
	.byte	0xe
	.4byte	0x248
	.byte	0x6
	.4byte	.LASF13
	.byte	0x3
	.byte	0x6
	.4byte	.LASF14
	.byte	0x7
	.byte	0x6
	.4byte	.LASF15
	.byte	0xb
	.byte	0x6
	.4byte	.LASF16
	.byte	0xc
	.byte	0x6
	.4byte	.LASF17
	.byte	0x10
	.byte	0x6
	.4byte	.LASF18
	.byte	0x11
	.byte	0x6
	.4byte	.LASF19
	.byte	0x12
	.byte	0x6
	.4byte	.LASF20
	.byte	0x13
	.byte	0x6
	.4byte	.LASF21
	.byte	0x14
	.byte	0x6
	.4byte	.LASF22
	.byte	0x15
	.byte	0x6
	.4byte	.LASF23
	.byte	0x16
	.byte	0x6
	.4byte	.LASF24
	.byte	0x17
	.byte	0x6
	.4byte	.LASF25
	.byte	0x18
	.byte	0x6
	.4byte	.LASF26
	.byte	0x19
	.byte	0x6
	.4byte	.LASF27
	.byte	0x1a
	.byte	0x6
	.4byte	.LASF28
	.byte	0x1b
	.byte	0x6
	.4byte	.LASF29
	.byte	0x1c
	.byte	0x6
	.4byte	.LASF30
	.byte	0x1d
	.byte	0x6
	.4byte	.LASF31
	.byte	0x1e
	.byte	0x6
	.4byte	.LASF32
	.byte	0x1f
	.byte	0x6
	.4byte	.LASF33
	.byte	0x20
	.byte	0x6
	.4byte	.LASF34
	.byte	0x21
	.byte	0x6
	.4byte	.LASF35
	.byte	0x22
	.byte	0x6
	.4byte	.LASF36
	.byte	0x23
	.byte	0x6
	.4byte	.LASF37
	.byte	0x24
	.byte	0x6
	.4byte	.LASF38
	.byte	0x25
	.byte	0x6
	.4byte	.LASF39
	.byte	0x26
	.byte	0x6
	.4byte	.LASF40
	.byte	0x27
	.byte	0x6
	.4byte	.LASF41
	.byte	0x28
	.byte	0x6
	.4byte	.LASF42
	.byte	0x29
	.byte	0x6
	.4byte	.LASF43
	.byte	0x2a
	.byte	0x6
	.4byte	.LASF44
	.byte	0x2b
	.byte	0x6
	.4byte	.LASF45
	.byte	0x2c
	.byte	0x6
	.4byte	.LASF46
	.byte	0x2d
	.byte	0x6
	.4byte	.LASF47
	.byte	0x2e
	.byte	0x6
	.4byte	.LASF48
	.byte	0x2f
	.byte	0x6
	.4byte	.LASF49
	.byte	0x30
	.byte	0x6
	.4byte	.LASF50
	.byte	0x31
	.byte	0x6
	.4byte	.LASF51
	.byte	0x32
	.byte	0x6
	.4byte	.LASF52
	.byte	0x33
	.byte	0x6
	.4byte	.LASF53
	.byte	0x34
	.byte	0x6
	.4byte	.LASF54
	.byte	0x35
	.byte	0x6
	.4byte	.LASF55
	.byte	0x36
	.byte	0x6
	.4byte	.LASF56
	.byte	0x37
	.byte	0x6
	.4byte	.LASF57
	.byte	0x38
	.byte	0x6
	.4byte	.LASF58
	.byte	0x39
	.byte	0x6
	.4byte	.LASF59
	.byte	0x3a
	.byte	0x6
	.4byte	.LASF60
	.byte	0x3b
	.byte	0x6
	.4byte	.LASF61
	.byte	0x3c
	.byte	0x6
	.4byte	.LASF62
	.byte	0x3d
	.byte	0x6
	.4byte	.LASF63
	.byte	0x3e
	.byte	0x6
	.4byte	.LASF64
	.byte	0x3f
	.byte	0x6
	.4byte	.LASF65
	.byte	0x40
	.byte	0x6
	.4byte	.LASF66
	.byte	0x41
	.byte	0x6
	.4byte	.LASF67
	.byte	0x42
	.byte	0x6
	.4byte	.LASF68
	.byte	0x43
	.byte	0x6
	.4byte	.LASF69
	.byte	0x44
	.byte	0x6
	.4byte	.LASF70
	.byte	0x45
	.byte	0x6
	.4byte	.LASF71
	.byte	0x46
	.byte	0x6
	.4byte	.LASF72
	.byte	0x47
	.byte	0x6
	.4byte	.LASF73
	.byte	0x48
	.byte	0x6
	.4byte	.LASF74
	.byte	0x49
	.byte	0x6
	.4byte	.LASF75
	.byte	0x4a
	.byte	0x6
	.4byte	.LASF76
	.byte	0x4b
	.byte	0x6
	.4byte	.LASF77
	.byte	0x4c
	.byte	0x6
	.4byte	.LASF78
	.byte	0x4d
	.byte	0x6
	.4byte	.LASF79
	.byte	0x4e
	.byte	0x6
	.4byte	.LASF80
	.byte	0x4f
	.byte	0x6
	.4byte	.LASF81
	.byte	0x50
	.byte	0
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF82
	.byte	0x5
	.byte	0x7
	.byte	0x4
	.4byte	0x94
	.byte	0x4
	.byte	0x17
	.byte	0x1
	.4byte	0x270
	.byte	0x6
	.4byte	.LASF83
	.byte	0
	.byte	0x6
	.4byte	.LASF84
	.byte	0x1
	.byte	0x6
	.4byte	.LASF85
	.byte	0x2
	.byte	0
	.byte	0x3
	.4byte	.LASF86
	.byte	0x4
	.byte	0x1b
	.byte	0x2
	.4byte	0x24f
	.byte	0x5
	.byte	0x7
	.byte	0x4
	.4byte	0x94
	.byte	0x4
	.byte	0x33
	.byte	0x1
	.4byte	0x297
	.byte	0x6
	.4byte	.LASF87
	.byte	0
	.byte	0x6
	.4byte	.LASF88
	.byte	0x1
	.byte	0
	.byte	0x5
	.byte	0x7
	.byte	0x4
	.4byte	0x94
	.byte	0x5
	.byte	0x39
	.byte	0xe
	.4byte	0x2b8
	.byte	0x6
	.4byte	.LASF89
	.byte	0
	.byte	0x6
	.4byte	.LASF90
	.byte	0x1
	.byte	0x6
	.4byte	.LASF91
	.byte	0x2
	.byte	0
	.byte	0x3
	.4byte	.LASF92
	.byte	0x5
	.byte	0x3d
	.byte	0x2
	.4byte	0x297
	.byte	0x5
	.byte	0x7
	.byte	0x4
	.4byte	0x94
	.byte	0x5
	.byte	0x42
	.byte	0xe
	.4byte	0x2eb
	.byte	0x6
	.4byte	.LASF93
	.byte	0
	.byte	0x6
	.4byte	.LASF94
	.byte	0x1
	.byte	0x6
	.4byte	.LASF95
	.byte	0x2
	.byte	0x6
	.4byte	.LASF96
	.byte	0x3
	.byte	0
	.byte	0x3
	.4byte	.LASF97
	.byte	0x5
	.byte	0x47
	.byte	0x2
	.4byte	0x2c4
	.byte	0x5
	.byte	0x7
	.byte	0x4
	.4byte	0x94
	.byte	0x5
	.byte	0x4c
	.byte	0xe
	.4byte	0x318
	.byte	0x6
	.4byte	.LASF98
	.byte	0
	.byte	0x6
	.4byte	.LASF99
	.byte	0x1
	.byte	0x6
	.4byte	.LASF100
	.byte	0x2
	.byte	0
	.byte	0x5
	.byte	0x7
	.byte	0x4
	.4byte	0x94
	.byte	0x5
	.byte	0x55
	.byte	0xe
	.4byte	0x33f
	.byte	0x6
	.4byte	.LASF101
	.byte	0
	.byte	0x6
	.4byte	.LASF102
	.byte	0x1
	.byte	0x6
	.4byte	.LASF103
	.byte	0x2
	.byte	0x6
	.4byte	.LASF104
	.byte	0x3
	.byte	0
	.byte	0x3
	.4byte	.LASF105
	.byte	0x5
	.byte	0x5a
	.byte	0x2
	.4byte	0x318
	.byte	0x5
	.byte	0x7
	.byte	0x4
	.4byte	0x94
	.byte	0x5
	.byte	0x5f
	.byte	0xe
	.4byte	0x366
	.byte	0x6
	.4byte	.LASF106
	.byte	0
	.byte	0x6
	.4byte	.LASF107
	.byte	0x1
	.byte	0
	.byte	0x3
	.4byte	.LASF108
	.byte	0x5
	.byte	0x62
	.byte	0x2
	.4byte	0x34b
	.byte	0x5
	.byte	0x7
	.byte	0x4
	.4byte	0x94
	.byte	0x5
	.byte	0x67
	.byte	0xe
	.4byte	0x399
	.byte	0x6
	.4byte	.LASF109
	.byte	0
	.byte	0x6
	.4byte	.LASF110
	.byte	0x1
	.byte	0x6
	.4byte	.LASF111
	.byte	0x2
	.byte	0x6
	.4byte	.LASF112
	.byte	0x3
	.byte	0
	.byte	0x7
	.byte	0x24
	.byte	0x5
	.byte	0x79
	.byte	0x9
	.4byte	0x418
	.byte	0x8
	.4byte	.LASF113
	.byte	0x5
	.byte	0x7a
	.byte	0x15
	.4byte	0x2b8
	.byte	0
	.byte	0x8
	.4byte	.LASF114
	.byte	0x5
	.byte	0x7b
	.byte	0x17
	.4byte	0x2eb
	.byte	0x4
	.byte	0x8
	.4byte	.LASF115
	.byte	0x5
	.byte	0x7c
	.byte	0x1d
	.4byte	0x33f
	.byte	0x8
	.byte	0x8
	.4byte	.LASF116
	.byte	0x5
	.byte	0x7d
	.byte	0x1a
	.4byte	0x366
	.byte	0xc
	.byte	0x8
	.4byte	.LASF117
	.byte	0x5
	.byte	0x7e
	.byte	0xd
	.4byte	0x4d
	.byte	0x10
	.byte	0x8
	.4byte	.LASF118
	.byte	0x5
	.byte	0x7f
	.byte	0xe
	.4byte	0x67
	.byte	0x14
	.byte	0x8
	.4byte	.LASF119
	.byte	0x5
	.byte	0x80
	.byte	0xe
	.4byte	0x67
	.byte	0x18
	.byte	0x8
	.4byte	.LASF120
	.byte	0x5
	.byte	0x81
	.byte	0xe
	.4byte	0x67
	.byte	0x1c
	.byte	0x8
	.4byte	.LASF121
	.byte	0x5
	.byte	0x82
	.byte	0xe
	.4byte	0x67
	.byte	0x20
	.byte	0
	.byte	0x3
	.4byte	.LASF122
	.byte	0x5
	.byte	0x83
	.byte	0x2
	.4byte	0x399
	.byte	0x9
	.4byte	.LASF128
	.byte	0x1
	.byte	0x54
	.byte	0x5
	.4byte	0x8d
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x1
	.byte	0x9c
	.4byte	0x580
	.byte	0xa
	.4byte	.LASF123
	.byte	0x1
	.byte	0x56
	.byte	0x14
	.4byte	0x418
	.byte	0x2
	.byte	0x91
	.byte	0x4c
	.byte	0xb
	.4byte	0x5c1
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.4byte	0x52f
	.byte	0xc
	.4byte	0x5d2
	.4byte	.LLST9
	.byte	0xd
	.4byte	.LVL19
	.4byte	0x73b
	.4byte	0x487
	.byte	0xe
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0xe
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x33
	.byte	0xe
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0xf
	.4byte	.LVL20
	.4byte	0x747
	.byte	0xd
	.4byte	.LVL22
	.4byte	0x753
	.4byte	0x4a4
	.byte	0xe
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x4c
	.byte	0
	.byte	0xd
	.4byte	.LVL23
	.4byte	0x75f
	.4byte	0x4b7
	.byte	0xe
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0xd
	.4byte	.LVL24
	.4byte	0x75f
	.4byte	0x4ca
	.byte	0xe
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0xd
	.4byte	.LVL25
	.4byte	0x75f
	.4byte	0x4dd
	.byte	0xe
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0xd
	.4byte	.LVL26
	.4byte	0x73b
	.4byte	0x4f5
	.byte	0xe
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0xe
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0xd
	.4byte	.LVL27
	.4byte	0x73b
	.4byte	0x50d
	.byte	0xe
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0xe
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0xd
	.4byte	.LVL28
	.4byte	0x73b
	.4byte	0x525
	.byte	0xe
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x32
	.byte	0xe
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0xf
	.4byte	.LVL29
	.4byte	0x76b
	.byte	0
	.byte	0xd
	.4byte	.LVL18
	.4byte	0x777
	.4byte	0x552
	.byte	0xe
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x4c
	.byte	0xe
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0xe
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x24
	.byte	0
	.byte	0xd
	.4byte	.LVL30
	.4byte	0x782
	.4byte	0x566
	.byte	0xe
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x35
	.byte	0
	.byte	0x10
	.4byte	.LVL31
	.4byte	0x78e
	.byte	0xe
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x35
	.byte	0xe
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	int_timer_cb
	.byte	0
	.byte	0
	.byte	0x11
	.4byte	.LASF147
	.byte	0x1
	.byte	0x4c
	.byte	0xd
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x1
	.byte	0x9c
	.4byte	0x5c1
	.byte	0xd
	.4byte	.LVL0
	.4byte	0x75f
	.4byte	0x5ae
	.byte	0xe
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0xe
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0xf
	.4byte	.LVL1
	.4byte	0x79a
	.byte	0x12
	.4byte	.LVL2
	.4byte	0x7a7
	.byte	0
	.byte	0x13
	.4byte	.LASF148
	.byte	0x1
	.byte	0x31
	.byte	0x14
	.4byte	0x270
	.byte	0x1
	.4byte	0x5df
	.byte	0x14
	.4byte	.LASF149
	.byte	0x1
	.byte	0x31
	.byte	0x33
	.4byte	0x5df
	.byte	0
	.byte	0x15
	.byte	0x4
	.4byte	0x418
	.byte	0x16
	.4byte	.LASF150
	.byte	0x1
	.byte	0x23
	.byte	0x6
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x1
	.byte	0x9c
	.4byte	0x647
	.byte	0x17
	.string	"us"
	.byte	0x1
	.byte	0x23
	.byte	0x21
	.4byte	0x67
	.4byte	.LLST6
	.byte	0x18
	.4byte	.LASF124
	.byte	0x1
	.byte	0x25
	.byte	0xe
	.4byte	0x67
	.4byte	.LLST7
	.byte	0xa
	.4byte	.LASF125
	.byte	0x1
	.byte	0x25
	.byte	0x18
	.4byte	0x67
	.byte	0x1
	.byte	0x5e
	.byte	0xa
	.4byte	.LASF126
	.byte	0x1
	.byte	0x26
	.byte	0x9
	.4byte	0x8d
	.byte	0x1
	.byte	0x5a
	.byte	0x18
	.4byte	.LASF127
	.byte	0x1
	.byte	0x26
	.byte	0x10
	.4byte	0x8d
	.4byte	.LLST8
	.byte	0
	.byte	0x9
	.4byte	.LASF129
	.byte	0x1
	.byte	0x1e
	.byte	0xa
	.4byte	0x7a
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x1
	.byte	0x9c
	.4byte	0x6a0
	.byte	0xb
	.4byte	0x6f9
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.byte	0x1
	.byte	0x20
	.byte	0xc
	.4byte	0x696
	.byte	0x19
	.4byte	0x70a
	.4byte	.LLST3
	.byte	0x19
	.4byte	0x716
	.4byte	.LLST4
	.byte	0x19
	.4byte	0x722
	.4byte	.LLST5
	.byte	0x1a
	.4byte	0x72e
	.byte	0
	.byte	0xf
	.4byte	.LVL12
	.4byte	0x7b4
	.byte	0
	.byte	0x9
	.4byte	.LASF130
	.byte	0x1
	.byte	0x19
	.byte	0xa
	.4byte	0x67
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0x6f9
	.byte	0xb
	.4byte	0x6f9
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.byte	0x1
	.byte	0x1b
	.byte	0xc
	.4byte	0x6ef
	.byte	0x19
	.4byte	0x70a
	.4byte	.LLST0
	.byte	0x19
	.4byte	0x716
	.4byte	.LLST1
	.byte	0x19
	.4byte	0x722
	.4byte	.LLST2
	.byte	0x1a
	.4byte	0x72e
	.byte	0
	.byte	0xf
	.4byte	.LVL7
	.4byte	0x7b4
	.byte	0
	.byte	0x1b
	.4byte	.LASF151
	.byte	0x1
	.byte	0x9
	.byte	0x18
	.4byte	0x7a
	.byte	0x3
	.4byte	0x73b
	.byte	0x1c
	.4byte	.LASF131
	.byte	0x1
	.byte	0xb
	.byte	0xe
	.4byte	0x67
	.byte	0x1c
	.4byte	.LASF132
	.byte	0x1
	.byte	0xb
	.byte	0x18
	.4byte	0x67
	.byte	0x1c
	.4byte	.LASF133
	.byte	0x1
	.byte	0xb
	.byte	0x23
	.4byte	0x67
	.byte	0x1c
	.4byte	.LASF134
	.byte	0x1
	.byte	0xc
	.byte	0xe
	.4byte	0x7a
	.byte	0
	.byte	0x1d
	.4byte	.LASF135
	.4byte	.LASF135
	.byte	0x5
	.byte	0xdf
	.byte	0x6
	.byte	0x1d
	.4byte	.LASF136
	.4byte	.LASF136
	.byte	0x5
	.byte	0xde
	.byte	0x6
	.byte	0x1d
	.4byte	.LASF137
	.4byte	.LASF137
	.byte	0x5
	.byte	0xd3
	.byte	0xd
	.byte	0x1d
	.4byte	.LASF138
	.4byte	.LASF138
	.byte	0x5
	.byte	0xdc
	.byte	0x6
	.byte	0x1d
	.4byte	.LASF139
	.4byte	.LASF139
	.byte	0x5
	.byte	0xdd
	.byte	0x6
	.byte	0x1e
	.4byte	.LASF152
	.4byte	.LASF153
	.byte	0x8
	.byte	0
	.byte	0x1d
	.4byte	.LASF140
	.4byte	.LASF140
	.byte	0x6
	.byte	0x3
	.byte	0x6
	.byte	0x1d
	.4byte	.LASF141
	.4byte	.LASF141
	.byte	0x6
	.byte	0x16
	.byte	0x6
	.byte	0x1f
	.4byte	.LASF142
	.4byte	.LASF142
	.byte	0x7
	.2byte	0x8b2
	.byte	0xc
	.byte	0x1f
	.4byte	.LASF143
	.4byte	.LASF143
	.byte	0x7
	.2byte	0x906
	.byte	0x7
	.byte	0x20
	.4byte	.LASF154
	.4byte	.LASF154
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
	.byte	0x6
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x7
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
	.byte	0xa
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
	.byte	0xb
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
	.byte	0xc
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0xd
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
	.byte	0xe
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0xf
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
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
	.byte	0x12
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
	.byte	0x13
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
	.byte	0
	.byte	0
	.byte	0x15
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x16
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
	.byte	0x17
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
	.byte	0x2
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
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1b
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
	.byte	0x49
	.byte	0x13
	.byte	0x20
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1c
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
	.byte	0
	.byte	0
	.byte	0x1f
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
	.byte	0x20
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
.LLST9:
	.4byte	.LVL18
	.4byte	.LVL21
	.2byte	0x3
	.byte	0x91
	.byte	0x4c
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LVL22-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL22-1
	.4byte	.LVL29
	.2byte	0x3
	.byte	0x91
	.byte	0x4c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL13
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL15
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x6
	.byte	0x7f
	.byte	0
	.byte	0x7e
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LFE11
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL9
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL8
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL4
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL3
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x5e
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
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF84:
	.string	"ERROR"
.LASF101:
	.string	"TIMER_PRELOAD_TRIG_NONE"
.LASF91:
	.string	"TIMER_CH_MAX"
.LASF128:
	.string	"bl_timer_tick_enable"
.LASF19:
	.string	"L1C_BMX_ERR_IRQn"
.LASF15:
	.string	"MEXT_IRQn"
.LASF24:
	.string	"SDIO_IRQn"
.LASF67:
	.string	"PDS_WAKEUP_IRQn"
.LASF149:
	.string	"timerCfg"
.LASF72:
	.string	"BZ_PHY_IRQn"
.LASF12:
	.string	"unsigned int"
.LASF135:
	.string	"TIMER_IntMask"
.LASF79:
	.string	"MAC_PORT_TRG_IRQn"
.LASF70:
	.string	"BOR_IRQn"
.LASF18:
	.string	"BMX_TO_IRQn"
.LASF31:
	.string	"SEC_SHA_IRQn"
.LASF142:
	.string	"xTaskIncrementTick"
.LASF55:
	.string	"TIMER_WDT_IRQn"
.LASF40:
	.string	"SF_CTRL_IRQn"
.LASF153:
	.string	"__builtin_memcpy"
.LASF144:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
.LASF147:
	.string	"int_timer_cb"
.LASF118:
	.string	"matchVal0"
.LASF119:
	.string	"matchVal1"
.LASF120:
	.string	"matchVal2"
.LASF95:
	.string	"TIMER_CLKSRC_1K"
.LASF86:
	.string	"BL_Err_Type"
.LASF97:
	.string	"TIMER_ClkSrc_Type"
.LASF8:
	.string	"uint32_t"
.LASF116:
	.string	"countMode"
.LASF123:
	.string	"timerCh1Cfg"
.LASF145:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/bl602_hal/bl_timer.c"
.LASF61:
	.string	"GPIO_INT0_IRQn"
.LASF11:
	.string	"long long unsigned int"
.LASF20:
	.string	"L1C_BMX_TO_IRQn"
.LASF121:
	.string	"preLoadVal"
.LASF126:
	.string	"ticks"
.LASF109:
	.string	"TIMER_INT_COMP_0"
.LASF110:
	.string	"TIMER_INT_COMP_1"
.LASF111:
	.string	"TIMER_INT_COMP_2"
.LASF23:
	.string	"RF_TOP_INT1_IRQn"
.LASF58:
	.string	"RESERVED12"
.LASF62:
	.string	"RESERVED16"
.LASF53:
	.string	"TIMER_CH0_IRQn"
.LASF138:
	.string	"TIMER_ClearIntStatus"
.LASF88:
	.string	"MASK"
.LASF134:
	.string	"tick64"
.LASF148:
	.string	"Timer_INT_Case"
.LASF93:
	.string	"TIMER_CLKSRC_FCLK"
.LASF47:
	.string	"UART1_IRQn"
.LASF139:
	.string	"TIMER_Enable"
.LASF152:
	.string	"memcpy"
.LASF80:
	.string	"WIFI_IPC_PUBLIC_IRQn"
.LASF32:
	.string	"DMA_ALL_IRQn"
.LASF44:
	.string	"SPI_IRQn"
.LASF125:
	.string	"tick_start"
.LASF83:
	.string	"SUCCESS"
.LASF82:
	.string	"char"
.LASF49:
	.string	"I2C_IRQn"
.LASF99:
	.string	"TIMER_COMP_ID_1"
.LASF154:
	.string	"__udivdi3"
.LASF5:
	.string	"uint8_t"
.LASF77:
	.string	"MAC_TX_TRG_IRQn"
.LASF87:
	.string	"UNMASK"
.LASF3:
	.string	"long long int"
.LASF85:
	.string	"TIMEOUT"
.LASF151:
	.string	"timer_us_now"
.LASF73:
	.string	"BLE_IRQn"
.LASF102:
	.string	"TIMER_PRELOAD_TRIG_COMP0"
.LASF103:
	.string	"TIMER_PRELOAD_TRIG_COMP1"
.LASF104:
	.string	"TIMER_PRELOAD_TRIG_COMP2"
.LASF68:
	.string	"HBN_OUT0_IRQn"
.LASF81:
	.string	"IRQn_LAST"
.LASF51:
	.string	"PWM_IRQn"
.LASF94:
	.string	"TIMER_CLKSRC_32K"
.LASF17:
	.string	"BMX_ERR_IRQn"
.LASF25:
	.string	"DMA_BMX_ERR_IRQn"
.LASF108:
	.string	"TIMER_CountMode_Type"
.LASF124:
	.string	"tick_now"
.LASF117:
	.string	"clockDivision"
.LASF115:
	.string	"plTrigSrc"
.LASF78:
	.string	"MAC_GEN_IRQn"
.LASF22:
	.string	"RF_TOP_INT0_IRQn"
.LASF105:
	.string	"TIMER_PreLoad_Trig_Type"
.LASF43:
	.string	"EFUSE_IRQn"
.LASF143:
	.string	"vTaskSwitchContext"
.LASF21:
	.string	"SEC_BMX_ERR_IRQn"
.LASF75:
	.string	"MAC_TXRX_MISC_IRQn"
.LASF56:
	.string	"RESERVED10"
.LASF33:
	.string	"RESERVED0"
.LASF34:
	.string	"RESERVED1"
.LASF35:
	.string	"RESERVED2"
.LASF38:
	.string	"RESERVED3"
.LASF39:
	.string	"RESERVED4"
.LASF41:
	.string	"RESERVED5"
.LASF45:
	.string	"RESERVED6"
.LASF1:
	.string	"short int"
.LASF50:
	.string	"RESERVED8"
.LASF52:
	.string	"RESERVED9"
.LASF2:
	.string	"long int"
.LASF107:
	.string	"TIMER_COUNT_FREERUN"
.LASF127:
	.string	"diff"
.LASF46:
	.string	"UART0_IRQn"
.LASF140:
	.string	"bl_irq_enable"
.LASF92:
	.string	"TIMER_Chan_Type"
.LASF10:
	.string	"uint64_t"
.LASF37:
	.string	"IRRX_IRQn"
.LASF26:
	.string	"SEC_GMAC_IRQn"
.LASF96:
	.string	"TIMER_CLKSRC_XTAL"
.LASF76:
	.string	"MAC_RX_TRG_IRQn"
.LASF113:
	.string	"timerCh"
.LASF71:
	.string	"WIFI_IRQn"
.LASF106:
	.string	"TIMER_COUNT_PRELOAD"
.LASF150:
	.string	"bl_timer_delay_us"
.LASF27:
	.string	"SEC_CDET_IRQn"
.LASF9:
	.string	"long unsigned int"
.LASF69:
	.string	"HBN_OUT1_IRQn"
.LASF14:
	.string	"MTIME_IRQn"
.LASF28:
	.string	"SEC_PKA_IRQn"
.LASF132:
	.string	"tick_high"
.LASF131:
	.string	"tick_low"
.LASF4:
	.string	"int32_t"
.LASF42:
	.string	"GPADC_DMA_IRQn"
.LASF6:
	.string	"unsigned char"
.LASF133:
	.string	"tick_tmp"
.LASF98:
	.string	"TIMER_COMP_ID_0"
.LASF16:
	.string	"CLIC_SOFT_PEND_IRQn"
.LASF100:
	.string	"TIMER_COMP_ID_2"
.LASF36:
	.string	"IRTX_IRQn"
.LASF13:
	.string	"MSOFT_IRQn"
.LASF57:
	.string	"RESERVED11"
.LASF30:
	.string	"SEC_AES_IRQn"
.LASF59:
	.string	"RESERVED13"
.LASF60:
	.string	"RESERVED14"
.LASF146:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/hosal"
.LASF63:
	.string	"RESERVED17"
.LASF64:
	.string	"RESERVED18"
.LASF65:
	.string	"RESERVED19"
.LASF137:
	.string	"TIMER_Init"
.LASF29:
	.string	"SEC_TRNG_IRQn"
.LASF0:
	.string	"signed char"
.LASF89:
	.string	"TIMER_CH0"
.LASF90:
	.string	"TIMER_CH1"
.LASF54:
	.string	"TIMER_CH1_IRQn"
.LASF7:
	.string	"short unsigned int"
.LASF66:
	.string	"RESERVED20"
.LASF114:
	.string	"clkSrc"
.LASF122:
	.string	"TIMER_CFG_Type"
.LASF141:
	.string	"bl_irq_register"
.LASF112:
	.string	"TIMER_INT_ALL"
.LASF48:
	.string	"RESERVED7"
.LASF74:
	.string	"MAC_TXRX_TIMER_IRQn"
.LASF136:
	.string	"TIMER_Disable"
.LASF130:
	.string	"bl_timer_now_us"
.LASF129:
	.string	"bl_timer_now_us64"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
