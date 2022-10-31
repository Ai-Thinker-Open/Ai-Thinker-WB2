	.file	"stateMachine.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.goToErrorState,"ax",@progbits
	.align	1
	.type	goToErrorState, @function
goToErrorState:
.LFB4:
	.file 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/wifi_manager/bl60x_wifi_driver/stateMachine.c"
	.loc 1 153 1
	.cfi_startproc
.LVL0:
	.loc 1 154 4
	.loc 1 154 23 is_stmt 0
	lw	a5,0(a0)
	sw	a5,4(a0)
	.loc 1 155 4 is_stmt 1
	.loc 1 155 27 is_stmt 0
	lw	a5,8(a0)
	.loc 1 155 22
	sw	a5,0(a0)
	.loc 1 157 4 is_stmt 1
	.loc 1 157 7 is_stmt 0
	beq	a5,zero,.L1
	.loc 1 157 47 discriminator 1
	lw	a4,20(a5)
	.loc 1 157 27 discriminator 1
	beq	a4,zero,.L1
	.loc 1 158 7 is_stmt 1
	lw	a0,16(a5)
.LVL1:
	jr	a4
.LVL2:
.L1:
	.loc 1 159 1 is_stmt 0
	ret
	.cfi_endproc
.LFE4:
	.size	goToErrorState, .-goToErrorState
	.section	.text.stateM_init,"ax",@progbits
	.align	1
	.globl	stateM_init
	.type	stateM_init, @function
stateM_init:
.LFB0:
	.loc 1 45 1 is_stmt 1
	.cfi_startproc
.LVL3:
	.loc 1 46 4
	.loc 1 46 7 is_stmt 0
	beq	a0,zero,.L9
	.loc 1 49 4 is_stmt 1
	.loc 1 49 22 is_stmt 0
	sw	a1,0(a0)
	.loc 1 50 4 is_stmt 1
	.loc 1 50 23 is_stmt 0
	sw	zero,4(a0)
	.loc 1 51 4 is_stmt 1
	.loc 1 51 20 is_stmt 0
	sw	a2,8(a0)
.L9:
	.loc 1 52 1
	ret
	.cfi_endproc
.LFE0:
	.size	stateM_init, .-stateM_init
	.section	.text.stateM_handleEvent,"ax",@progbits
	.align	1
	.globl	stateM_handleEvent
	.type	stateM_handleEvent, @function
stateM_handleEvent:
.LFB1:
	.loc 1 56 1 is_stmt 1
	.cfi_startproc
.LVL4:
	.loc 1 57 4
	.loc 1 57 7 is_stmt 0
	beq	a0,zero,.L30
	.loc 1 56 1 discriminator 1
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s0,40(sp)
	sw	ra,44(sp)
	sw	s1,36(sp)
	sw	s2,32(sp)
	sw	s3,28(sp)
	sw	s4,24(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	mv	s0,a0
	.loc 1 58 14 discriminator 1
	li	a0,-2
.LVL5:
	.loc 1 57 14 discriminator 1
	beq	a1,zero,.L14
	.loc 1 60 4 is_stmt 1
	.loc 1 60 13 is_stmt 0
	lw	s1,0(s0)
	.loc 1 60 7
	bne	s1,zero,.L16
.LVL6:
.L28:
	.loc 1 62 7 is_stmt 1
	mv	a0,s0
	call	goToErrorState
.LVL7:
	.loc 1 63 7
	.loc 1 63 14 is_stmt 0
	li	a0,-1
.L14:
	.loc 1 132 1
	lw	ra,44(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
.LVL8:
	lw	s1,36(sp)
	.cfi_restore 9
	lw	s2,32(sp)
	.cfi_restore 18
	lw	s3,28(sp)
	.cfi_restore 19
	lw	s4,24(sp)
	.cfi_restore 20
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
.LVL9:
.L16:
	.cfi_restore_state
	.loc 1 66 4 is_stmt 1
	.loc 1 66 7 is_stmt 0
	lw	a5,12(s1)
.LBB7:
.LBB8:
.LBB9:
.LBB10:
	.loc 1 168 26
	li	s4,20
.LBE10:
.LBE9:
.LBE8:
.LBE7:
	.loc 1 66 7
	bne	a5,zero,.L17
.LVL10:
.L29:
	.loc 1 67 14
	li	a0,2
	j	.L14
.L17:
.LVL11:
	.loc 1 70 4 is_stmt 1
.LBB17:
	.loc 1 71 7
.LBB15:
.LBB13:
	.loc 1 166 12 is_stmt 0
	li	s3,0
.LVL12:
.L18:
	.loc 1 166 17 is_stmt 1
	.loc 1 166 4 is_stmt 0
	lw	a5,12(s1)
	bltu	s3,a5,.L22
.LVL13:
.LBE13:
.LBE15:
	.loc 1 76 7 is_stmt 1
	.loc 1 78 10
	.loc 1 78 20 is_stmt 0
	lw	s1,0(s1)
.LVL14:
	.loc 1 79 10 is_stmt 1
.LBE17:
	.loc 1 129 12
	.loc 1 129 4 is_stmt 0
	bne	s1,zero,.L17
	j	.L29
.LVL15:
.L22:
.LBB18:
.LBB16:
.LBB14:
.LBB11:
	.loc 1 168 7 is_stmt 1
	.loc 1 168 26 is_stmt 0
	mul	s2,s3,s4
	lw	a5,8(s1)
	add	s2,a5,s2
.LVL16:
	.loc 1 171 7 is_stmt 1
	.loc 1 171 10 is_stmt 0
	lw	a4,0(s2)
	lw	a5,0(a1)
	beq	a4,a5,.L19
.L21:
.LBE11:
	.loc 1 166 44 is_stmt 1
	addi	s3,s3,1
.LVL17:
	j	.L18
.L19:
.LBB12:
	.loc 1 173 10
	.loc 1 173 17 is_stmt 0
	lw	a5,8(s2)
	.loc 1 173 13
	beq	a5,zero,.L20
	.loc 1 176 15 is_stmt 1
	.loc 1 176 20 is_stmt 0
	lw	a0,4(s2)
	sw	a1,12(sp)
	jalr	a5
.LVL18:
	.loc 1 176 18
	lw	a1,12(sp)
	beq	a0,zero,.L21
.L20:
.LVL19:
.LBE12:
.LBE14:
.LBE16:
	.loc 1 76 7 is_stmt 1
	.loc 1 84 7
	.loc 1 84 23 is_stmt 0
	lw	a5,16(s2)
	.loc 1 84 10
	beq	a5,zero,.L28
.L24:
.LVL20:
	.loc 1 95 13 is_stmt 1
	mv	s1,a5
	.loc 1 95 24 is_stmt 0
	lw	a5,4(a5)
.LVL21:
	.loc 1 95 13
	bne	a5,zero,.L24
	.loc 1 100 7 is_stmt 1
	.loc 1 100 28 is_stmt 0
	lw	a5,0(s0)
	.loc 1 100 10
	beq	a5,s1,.L25
	.loc 1 100 63 discriminator 1
	lw	a4,24(a5)
	.loc 1 100 43 discriminator 1
	beq	a4,zero,.L25
	.loc 1 101 10 is_stmt 1
	lw	a0,16(a5)
	sw	a1,12(sp)
	jalr	a4
.LVL22:
	lw	a1,12(sp)
.L25:
	.loc 1 104 7
	.loc 1 104 22 is_stmt 0
	lw	a5,12(s2)
	.loc 1 104 10
	beq	a5,zero,.L26
	.loc 1 105 10 is_stmt 1
	lw	a4,0(s0)
	lw	a2,16(s1)
	sw	a1,12(sp)
	lw	a0,16(a4)
	jalr	a5
.LVL23:
	lw	a1,12(sp)
.L26:
	.loc 1 110 7
	.loc 1 110 10 is_stmt 0
	lw	a5,0(s0)
	beq	a5,s1,.L27
	.loc 1 110 55 discriminator 1
	lw	a5,20(s1)
	.loc 1 110 43 discriminator 1
	beq	a5,zero,.L27
	.loc 1 111 10 is_stmt 1
	lw	a0,16(s1)
	jalr	a5
.LVL24:
.L27:
	.loc 1 113 7
	.loc 1 113 31 is_stmt 0
	lw	a5,0(s0)
	.loc 1 114 25
	sw	s1,0(s0)
	.loc 1 118 17
	li	a0,1
	.loc 1 113 26
	sw	a5,4(s0)
	.loc 1 114 7 is_stmt 1
	.loc 1 117 7
	.loc 1 117 10 is_stmt 0
	beq	a5,s1,.L14
	.loc 1 120 7 is_stmt 1
	.loc 1 120 10 is_stmt 0
	lw	a5,8(s0)
	.loc 1 121 17
	li	a0,-1
	.loc 1 120 10
	beq	a5,s1,.L14
	.loc 1 125 7 is_stmt 1
	.loc 1 125 10 is_stmt 0
	lw	a5,12(s1)
	.loc 1 128 14
	li	a0,0
	.loc 1 125 10
	bne	a5,zero,.L14
	.loc 1 126 17
	li	a0,3
	j	.L14
.LVL25:
.L30:
	.cfi_def_cfa_offset 0
	.cfi_restore 1
	.cfi_restore 8
	.cfi_restore 9
	.cfi_restore 18
	.cfi_restore 19
	.cfi_restore 20
.LBE18:
	.loc 1 58 14
	li	a0,-2
.LVL26:
	.loc 1 132 1
	ret
	.cfi_endproc
.LFE1:
	.size	stateM_handleEvent, .-stateM_handleEvent
	.section	.text.stateM_currentState,"ax",@progbits
	.align	1
	.globl	stateM_currentState
	.type	stateM_currentState, @function
stateM_currentState:
.LFB2:
	.loc 1 135 1 is_stmt 1
	.cfi_startproc
.LVL27:
	.loc 1 136 4
	.loc 1 136 7 is_stmt 0
	beq	a0,zero,.L59
	.loc 1 139 4 is_stmt 1
	.loc 1 139 14 is_stmt 0
	lw	a0,0(a0)
.LVL28:
.L59:
	.loc 1 140 1
	ret
	.cfi_endproc
.LFE2:
	.size	stateM_currentState, .-stateM_currentState
	.section	.text.stateM_previousState,"ax",@progbits
	.align	1
	.globl	stateM_previousState
	.type	stateM_previousState, @function
stateM_previousState:
.LFB3:
	.loc 1 143 1 is_stmt 1
	.cfi_startproc
.LVL29:
	.loc 1 144 4
	.loc 1 144 7 is_stmt 0
	beq	a0,zero,.L64
	.loc 1 147 4 is_stmt 1
	.loc 1 147 14 is_stmt 0
	lw	a0,4(a0)
.LVL30:
.L64:
	.loc 1 148 1
	ret
	.cfi_endproc
.LFE3:
	.size	stateM_previousState, .-stateM_previousState
	.section	.text.stateM_stopped,"ax",@progbits
	.align	1
	.globl	stateM_stopped
	.type	stateM_stopped, @function
stateM_stopped:
.LFB6:
	.loc 1 186 1 is_stmt 1
	.cfi_startproc
.LVL31:
	.loc 1 187 4
	.loc 1 187 7 is_stmt 0
	beq	a0,zero,.L70
	.loc 1 190 4 is_stmt 1
	.loc 1 190 37 is_stmt 0
	lw	a5,0(a0)
	.loc 1 190 54
	lw	a0,12(a5)
.LVL32:
	seqz	a0,a0
	ret
.LVL33:
.L70:
	.loc 1 188 13
	li	a0,1
.LVL34:
	.loc 1 191 1
	ret
	.cfi_endproc
.LFE6:
	.size	stateM_stopped, .-stateM_stopped
	.text
.Letext0:
	.file 2 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/wifi_manager/bl60x_wifi_driver/stateMachine.h"
	.file 3 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x44b
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF33
	.byte	0xc
	.4byte	.LASF34
	.4byte	.LASF35
	.4byte	.Ldebug_ranges0+0x60
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x3
	.4byte	.LASF36
	.byte	0x3
	.byte	0xd1
	.byte	0x16
	.4byte	0x38
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.byte	0x5
	.4byte	.LASF3
	.byte	0x8
	.byte	0x2
	.byte	0x5f
	.byte	0x8
	.4byte	0x67
	.byte	0x6
	.4byte	.LASF1
	.byte	0x2
	.byte	0x62
	.byte	0x8
	.4byte	0x25
	.byte	0
	.byte	0x6
	.4byte	.LASF2
	.byte	0x2
	.byte	0x6a
	.byte	0xa
	.4byte	0x67
	.byte	0x4
	.byte	0
	.byte	0x7
	.byte	0x4
	.byte	0x5
	.4byte	.LASF4
	.byte	0x14
	.byte	0x2
	.byte	0xa6
	.byte	0x8
	.4byte	0xb8
	.byte	0x6
	.4byte	.LASF5
	.byte	0x2
	.byte	0xa9
	.byte	0x8
	.4byte	0x25
	.byte	0
	.byte	0x6
	.4byte	.LASF6
	.byte	0x2
	.byte	0xb2
	.byte	0xa
	.4byte	0x67
	.byte	0x4
	.byte	0x6
	.4byte	.LASF7
	.byte	0x2
	.byte	0xc1
	.byte	0xb
	.4byte	0xde
	.byte	0x8
	.byte	0x6
	.4byte	.LASF8
	.byte	0x2
	.byte	0xce
	.byte	0xc
	.4byte	0xf9
	.byte	0xc
	.byte	0x6
	.4byte	.LASF9
	.byte	0x2
	.byte	0xd7
	.byte	0x18
	.4byte	0x175
	.byte	0x10
	.byte	0
	.byte	0x8
	.4byte	0xcc
	.4byte	0xcc
	.byte	0x9
	.4byte	0x67
	.byte	0x9
	.4byte	0xd3
	.byte	0
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.4byte	.LASF10
	.byte	0xa
	.byte	0x4
	.4byte	0x3f
	.byte	0xb
	.4byte	0xd3
	.byte	0xa
	.byte	0x4
	.4byte	0xb8
	.byte	0xc
	.4byte	0xf9
	.byte	0x9
	.4byte	0x67
	.byte	0x9
	.4byte	0xd3
	.byte	0x9
	.4byte	0x67
	.byte	0
	.byte	0xa
	.byte	0x4
	.4byte	0xe4
	.byte	0xd
	.4byte	.LASF11
	.byte	0x1c
	.byte	0x2
	.2byte	0x12b
	.byte	0x8
	.4byte	0x170
	.byte	0xe
	.4byte	.LASF12
	.byte	0x2
	.2byte	0x130
	.byte	0x18
	.4byte	0x175
	.byte	0
	.byte	0xe
	.4byte	.LASF13
	.byte	0x2
	.2byte	0x135
	.byte	0x18
	.4byte	0x175
	.byte	0x4
	.byte	0xe
	.4byte	.LASF14
	.byte	0x2
	.2byte	0x139
	.byte	0x17
	.4byte	0x17b
	.byte	0x8
	.byte	0xe
	.4byte	.LASF15
	.byte	0x2
	.2byte	0x13d
	.byte	0xb
	.4byte	0x2c
	.byte	0xc
	.byte	0xe
	.4byte	.LASF2
	.byte	0x2
	.2byte	0x142
	.byte	0xa
	.4byte	0x67
	.byte	0x10
	.byte	0xe
	.4byte	.LASF16
	.byte	0x2
	.2byte	0x150
	.byte	0xc
	.4byte	0x191
	.byte	0x14
	.byte	0xe
	.4byte	.LASF17
	.byte	0x2
	.2byte	0x15b
	.byte	0xc
	.4byte	0x191
	.byte	0x18
	.byte	0
	.byte	0xb
	.4byte	0xff
	.byte	0xa
	.byte	0x4
	.4byte	0x170
	.byte	0xa
	.byte	0x4
	.4byte	0x69
	.byte	0xc
	.4byte	0x191
	.byte	0x9
	.4byte	0x67
	.byte	0x9
	.4byte	0xd3
	.byte	0
	.byte	0xa
	.byte	0x4
	.4byte	0x181
	.byte	0xd
	.4byte	.LASF18
	.byte	0xc
	.byte	0x2
	.2byte	0x163
	.byte	0x8
	.4byte	0x1d0
	.byte	0xe
	.4byte	.LASF19
	.byte	0x2
	.2byte	0x166
	.byte	0x18
	.4byte	0x175
	.byte	0
	.byte	0xe
	.4byte	.LASF20
	.byte	0x2
	.2byte	0x16d
	.byte	0x18
	.4byte	0x175
	.byte	0x4
	.byte	0xe
	.4byte	.LASF21
	.byte	0x2
	.2byte	0x175
	.byte	0x18
	.4byte	0x175
	.byte	0x8
	.byte	0
	.byte	0xf
	.4byte	.LASF37
	.byte	0x5
	.byte	0x4
	.4byte	0x25
	.byte	0x2
	.2byte	0x193
	.byte	0x6
	.4byte	0x208
	.byte	0x10
	.4byte	.LASF22
	.byte	0x7e
	.byte	0x10
	.4byte	.LASF23
	.byte	0x7f
	.byte	0x11
	.4byte	.LASF24
	.byte	0
	.byte	0x11
	.4byte	.LASF25
	.byte	0x1
	.byte	0x11
	.4byte	.LASF26
	.byte	0x2
	.byte	0x11
	.4byte	.LASF27
	.byte	0x3
	.byte	0
	.byte	0x12
	.4byte	.LASF28
	.byte	0x1
	.byte	0xb9
	.byte	0x5
	.4byte	0xcc
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0x233
	.byte	0x13
	.4byte	.LASF18
	.byte	0x1
	.byte	0xb9
	.byte	0x2a
	.4byte	0x233
	.4byte	.LLST13
	.byte	0
	.byte	0xa
	.byte	0x4
	.4byte	0x197
	.byte	0x14
	.4byte	.LASF38
	.byte	0x1
	.byte	0xa1
	.byte	0x1b
	.4byte	0x17b
	.byte	0x1
	.4byte	0x285
	.byte	0x15
	.string	"fsm"
	.byte	0x1
	.byte	0xa1
	.byte	0x3f
	.4byte	0x233
	.byte	0x16
	.4byte	.LASF11
	.byte	0x1
	.byte	0xa2
	.byte	0x1b
	.4byte	0x175
	.byte	0x16
	.4byte	.LASF3
	.byte	0x1
	.byte	0xa2
	.byte	0x36
	.4byte	0xd9
	.byte	0x17
	.string	"i"
	.byte	0x1
	.byte	0xa4
	.byte	0xb
	.4byte	0x2c
	.byte	0x18
	.byte	0x17
	.string	"t"
	.byte	0x1
	.byte	0xa8
	.byte	0x1a
	.4byte	0x17b
	.byte	0
	.byte	0
	.byte	0x19
	.4byte	.LASF39
	.byte	0x1
	.byte	0x97
	.byte	0xd
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0x2c9
	.byte	0x1a
	.string	"fsm"
	.byte	0x1
	.byte	0x97
	.byte	0x32
	.4byte	0x233
	.4byte	.LLST0
	.byte	0x13
	.4byte	.LASF3
	.byte	0x1
	.byte	0x98
	.byte	0x1b
	.4byte	0xd9
	.4byte	.LLST1
	.byte	0x1b
	.4byte	.LVL2
	.byte	0x1c
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0
	.byte	0
	.byte	0x12
	.4byte	.LASF29
	.byte	0x1
	.byte	0x8e
	.byte	0x15
	.4byte	0x175
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x1
	.byte	0x9c
	.4byte	0x2f4
	.byte	0x1a
	.string	"fsm"
	.byte	0x1
	.byte	0x8e
	.byte	0x40
	.4byte	0x233
	.4byte	.LLST12
	.byte	0
	.byte	0x12
	.4byte	.LASF30
	.byte	0x1
	.byte	0x86
	.byte	0x15
	.4byte	0x175
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x1
	.byte	0x9c
	.4byte	0x31f
	.byte	0x1a
	.string	"fsm"
	.byte	0x1
	.byte	0x86
	.byte	0x3f
	.4byte	0x233
	.4byte	.LLST11
	.byte	0
	.byte	0x1d
	.4byte	.LASF31
	.byte	0x1
	.byte	0x36
	.byte	0x5
	.4byte	0x25
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x1
	.byte	0x9c
	.4byte	0x411
	.byte	0x1a
	.string	"fsm"
	.byte	0x1
	.byte	0x36
	.byte	0x2e
	.4byte	0x233
	.4byte	.LLST2
	.byte	0x13
	.4byte	.LASF3
	.byte	0x1
	.byte	0x37
	.byte	0x15
	.4byte	0xd3
	.4byte	.LLST3
	.byte	0x1e
	.4byte	.LASF9
	.byte	0x1
	.byte	0x45
	.byte	0x18
	.4byte	0x175
	.4byte	.LLST4
	.byte	0x1f
	.4byte	.Ldebug_ranges0+0
	.4byte	0x400
	.byte	0x1e
	.4byte	.LASF4
	.byte	0x1
	.byte	0x47
	.byte	0x1a
	.4byte	0x17b
	.4byte	.LLST5
	.byte	0x20
	.4byte	0x239
	.4byte	.LBB8
	.4byte	.Ldebug_ranges0+0x20
	.byte	0x1
	.byte	0x47
	.byte	0x27
	.4byte	0x3e1
	.byte	0x21
	.4byte	0x24a
	.4byte	.LLST6
	.byte	0x21
	.4byte	0x262
	.4byte	.LLST7
	.byte	0x21
	.4byte	0x256
	.4byte	.LLST8
	.byte	0x22
	.4byte	.Ldebug_ranges0+0x20
	.byte	0x23
	.4byte	0x26e
	.4byte	.LLST9
	.byte	0x24
	.4byte	0x278
	.4byte	.Ldebug_ranges0+0x40
	.byte	0x23
	.4byte	0x279
	.4byte	.LLST10
	.byte	0x25
	.4byte	.LVL18
	.byte	0x1c
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0x5c
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x26
	.4byte	.LVL22
	.4byte	0x3f2
	.byte	0x1c
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0x5c
	.byte	0x6
	.byte	0
	.byte	0x25
	.4byte	.LVL23
	.byte	0x1c
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0x5c
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0x27
	.4byte	.LVL7
	.4byte	0x285
	.byte	0x1c
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0
	.byte	0x28
	.4byte	.LASF40
	.byte	0x1
	.byte	0x2b
	.byte	0x6
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.byte	0x1
	.byte	0x9c
	.byte	0x29
	.string	"fsm"
	.byte	0x1
	.byte	0x2b
	.byte	0x28
	.4byte	0x233
	.byte	0x1
	.byte	0x5a
	.byte	0x2a
	.4byte	.LASF32
	.byte	0x1
	.byte	0x2c
	.byte	0x1b
	.4byte	0x175
	.byte	0x1
	.byte	0x5b
	.byte	0x2a
	.4byte	.LASF21
	.byte	0x1
	.byte	0x2c
	.byte	0x3d
	.4byte	0x175
	.byte	0x1
	.byte	0x5c
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
	.byte	0x8
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
	.byte	0xe
	.byte	0
	.byte	0
	.byte	0x5
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
	.byte	0x6
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
	.byte	0x7
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x8
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
	.byte	0x9
	.byte	0x5
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xb
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xc
	.byte	0x15
	.byte	0x1
	.byte	0x27
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xd
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
	.byte	0xe
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
	.byte	0xf
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
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x10
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xd
	.byte	0
	.byte	0
	.byte	0x11
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xb
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
	.byte	0
	.byte	0
	.byte	0x17
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
	.byte	0x18
	.byte	0xb
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x19
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
	.byte	0x1a
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
	.byte	0x1b
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x95,0x42
	.byte	0x19
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
	.byte	0x96,0x42
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1e
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
	.byte	0x1f
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x20
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
	.byte	0x21
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x22
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x23
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x24
	.byte	0xb
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0x55
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x25
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x26
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x27
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x28
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
	.byte	0x29
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
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x2a
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST13:
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL34
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
	.4byte	.LVL2
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL2-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL2-1
	.4byte	.LVL2
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL30
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL28
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL5
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL26
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL4
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL6
	.4byte	.LVL9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL10
	.4byte	.LVL25
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LFE1
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL11
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL21
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL13
	.4byte	.LVL15
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL11
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL15
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL11
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL15
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL15
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL16
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x44
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB7
	.4byte	.LBE7
	.4byte	.LBB17
	.4byte	.LBE17
	.4byte	.LBB18
	.4byte	.LBE18
	.4byte	0
	.4byte	0
	.4byte	.LBB8
	.4byte	.LBE8
	.4byte	.LBB15
	.4byte	.LBE15
	.4byte	.LBB16
	.4byte	.LBE16
	.4byte	0
	.4byte	0
	.4byte	.LBB10
	.4byte	.LBE10
	.4byte	.LBB11
	.4byte	.LBE11
	.4byte	.LBB12
	.4byte	.LBE12
	.4byte	0
	.4byte	0
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF28:
	.string	"stateM_stopped"
.LASF9:
	.string	"nextState"
.LASF36:
	.string	"size_t"
.LASF19:
	.string	"currentState"
.LASF11:
	.string	"state"
.LASF16:
	.string	"entryAction"
.LASF12:
	.string	"parentState"
.LASF27:
	.string	"stateM_finalStateReached"
.LASF34:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/wifi_manager/bl60x_wifi_driver/stateMachine.c"
.LASF2:
	.string	"data"
.LASF21:
	.string	"errorState"
.LASF4:
	.string	"transition"
.LASF24:
	.string	"stateM_stateChanged"
.LASF22:
	.string	"stateM_errArg"
.LASF5:
	.string	"eventType"
.LASF26:
	.string	"stateM_noStateChange"
.LASF20:
	.string	"previousState"
.LASF29:
	.string	"stateM_previousState"
.LASF7:
	.string	"guard"
.LASF23:
	.string	"stateM_errorStateReached"
.LASF8:
	.string	"action"
.LASF40:
	.string	"stateM_init"
.LASF6:
	.string	"condition"
.LASF3:
	.string	"event"
.LASF32:
	.string	"initialState"
.LASF0:
	.string	"unsigned int"
.LASF35:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/wifi_manager"
.LASF30:
	.string	"stateM_currentState"
.LASF18:
	.string	"stateMachine"
.LASF38:
	.string	"getTransition"
.LASF17:
	.string	"exitAction"
.LASF33:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
.LASF14:
	.string	"transitions"
.LASF1:
	.string	"type"
.LASF39:
	.string	"goToErrorState"
.LASF31:
	.string	"stateM_handleEvent"
.LASF15:
	.string	"numTransitions"
.LASF13:
	.string	"entryState"
.LASF37:
	.string	"stateM_handleEventRetVals"
.LASF10:
	.string	"_Bool"
.LASF25:
	.string	"stateM_stateLoopSelf"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
