	.file	"ring_buffer.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.Ring_Buffer_Write_Copy,"ax",@progbits
	.align	1
	.type	Ring_Buffer_Write_Copy, @function
Ring_Buffer_Write_Copy:
.LFB11:
	.file 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/Common/ring_buffer/ring_buffer.c"
	.loc 1 210 1
	.cfi_startproc
.LVL0:
	.loc 1 211 5
	.loc 1 210 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	.cfi_offset 8, -8
	mv	s0,a0
.LVL1:
	.loc 1 213 5 is_stmt 1
	.loc 1 210 1 is_stmt 0
	mv	a0,a1
.LVL2:
	.loc 1 213 5
	lw	a1,0(s0)
.LVL3:
	.loc 1 210 1
	sw	s1,4(sp)
	sw	ra,12(sp)
	.cfi_offset 9, -12
	.cfi_offset 1, -4
	.loc 1 210 1
	mv	s1,a2
	.loc 1 213 5
	call	BL602_MemCpy_Fast
.LVL4:
	.loc 1 214 5 is_stmt 1
	.loc 1 214 10 is_stmt 0
	lw	a5,0(s0)
	.loc 1 215 1
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 214 10
	add	a2,a5,s1
	sw	a2,0(s0)
	.loc 1 215 1
	lw	s0,8(sp)
	.cfi_restore 8
.LVL5:
	lw	s1,4(sp)
	.cfi_restore 9
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE11:
	.size	Ring_Buffer_Write_Copy, .-Ring_Buffer_Write_Copy
	.section	.text.Ring_Buffer_Read_Copy,"ax",@progbits
	.align	1
	.type	Ring_Buffer_Read_Copy, @function
Ring_Buffer_Read_Copy:
.LFB17:
	.loc 1 445 1 is_stmt 1
	.cfi_startproc
.LVL6:
	.loc 1 446 5
	.loc 1 448 5
	.loc 1 445 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	s1,4(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 1, -4
	.loc 1 445 1
	mv	s0,a0
	.loc 1 448 5
	lw	a0,0(a0)
.LVL7:
	.loc 1 445 1
	mv	s1,a2
	.loc 1 448 5
	call	BL602_MemCpy_Fast
.LVL8:
	.loc 1 449 5 is_stmt 1
	.loc 1 449 11 is_stmt 0
	lw	a5,0(s0)
	.loc 1 450 1
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 449 11
	add	a2,a5,s1
	sw	a2,0(s0)
	.loc 1 450 1
	lw	s0,8(sp)
	.cfi_restore 8
.LVL9:
	lw	s1,4(sp)
	.cfi_restore 9
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE17:
	.size	Ring_Buffer_Read_Copy, .-Ring_Buffer_Read_Copy
	.section	.text.Ring_Buffer_Init,"ax",@progbits
	.align	1
	.globl	Ring_Buffer_Init
	.type	Ring_Buffer_Init, @function
Ring_Buffer_Init:
.LFB8:
	.loc 1 100 1 is_stmt 1
	.cfi_startproc
.LVL10:
	.loc 1 102 5
	.loc 1 102 21 is_stmt 0
	sw	a1,0(a0)
	.loc 1 105 5 is_stmt 1
	.loc 1 105 24 is_stmt 0
	sb	zero,4(a0)
	.loc 1 106 5 is_stmt 1
	.loc 1 106 23 is_stmt 0
	sh	zero,6(a0)
	.loc 1 107 5 is_stmt 1
	.loc 1 107 25 is_stmt 0
	sb	zero,8(a0)
	.loc 1 108 5 is_stmt 1
	.loc 1 108 24 is_stmt 0
	sh	zero,10(a0)
	.loc 1 111 5 is_stmt 1
	.loc 1 111 18 is_stmt 0
	sh	a2,12(a0)
	.loc 1 114 5 is_stmt 1
	.loc 1 114 18 is_stmt 0
	sw	a3,16(a0)
	.loc 1 115 5 is_stmt 1
	.loc 1 115 20 is_stmt 0
	sw	a4,20(a0)
	.loc 1 117 5 is_stmt 1
	.loc 1 118 1 is_stmt 0
	li	a0,0
.LVL11:
	ret
	.cfi_endproc
.LFE8:
	.size	Ring_Buffer_Init, .-Ring_Buffer_Init
	.section	.text.Ring_Buffer_Reset,"ax",@progbits
	.align	1
	.globl	Ring_Buffer_Reset
	.type	Ring_Buffer_Reset, @function
Ring_Buffer_Reset:
.LFB9:
	.loc 1 130 1 is_stmt 1
	.cfi_startproc
.LVL12:
	.loc 1 132 5
	.loc 1 132 24 is_stmt 0
	sb	zero,4(a0)
	.loc 1 133 5 is_stmt 1
	.loc 1 133 23 is_stmt 0
	sh	zero,6(a0)
	.loc 1 134 5 is_stmt 1
	.loc 1 134 25 is_stmt 0
	sb	zero,8(a0)
	.loc 1 135 5 is_stmt 1
	.loc 1 135 24 is_stmt 0
	sh	zero,10(a0)
	.loc 1 137 5 is_stmt 1
	.loc 1 138 1 is_stmt 0
	li	a0,0
.LVL13:
	ret
	.cfi_endproc
.LFE9:
	.size	Ring_Buffer_Reset, .-Ring_Buffer_Reset
	.section	.text.Ring_Buffer_Get_Length,"ax",@progbits
	.align	1
	.globl	Ring_Buffer_Get_Length
	.type	Ring_Buffer_Get_Length, @function
Ring_Buffer_Get_Length:
.LFB22:
	.loc 1 602 1 is_stmt 1
	.cfi_startproc
.LVL14:
	.loc 1 603 5
	.loc 1 602 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	.loc 1 603 14
	lw	a5,16(a0)
	.loc 1 602 1
	mv	s0,a0
	.loc 1 603 7
	beq	a5,zero,.L8
	.loc 1 604 9 is_stmt 1
	jalr	a5
.LVL15:
.L8:
	.loc 1 607 5
	.loc 1 607 7 is_stmt 0
	lbu	a3,4(s0)
	lbu	a4,8(s0)
	.loc 1 608 18
	lw	a5,20(s0)
	.loc 1 607 7
	bne	a3,a4,.L9
	.loc 1 608 9 is_stmt 1
	.loc 1 608 11 is_stmt 0
	beq	a5,zero,.L10
	.loc 1 609 13 is_stmt 1
	jalr	a5
.LVL16:
.L10:
	.loc 1 611 9
	.loc 1 611 35 is_stmt 0
	lhu	a5,10(s0)
.L23:
.LBB4:
.LBB5:
	.loc 1 616 29
	lhu	a0,6(s0)
.LBE5:
.LBE4:
	.loc 1 618 1
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
.LVL17:
.LBB8:
.LBB6:
	.loc 1 616 29
	sub	a0,a5,a0
	slli	a0,a0,16
	srli	a0,a0,16
.LBE6:
.LBE8:
	.loc 1 618 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL18:
.L9:
	.cfi_restore_state
.LBB9:
.LBB7:
	.loc 1 613 9 is_stmt 1
	.loc 1 613 11 is_stmt 0
	beq	a5,zero,.L12
	.loc 1 614 13 is_stmt 1
	jalr	a5
.LVL19:
.L12:
	.loc 1 616 9
	.loc 1 616 29 is_stmt 0
	lhu	a5,12(s0)
	lhu	a0,10(s0)
	add	a5,a5,a0
	j	.L23
.LBE7:
.LBE9:
	.cfi_endproc
.LFE22:
	.size	Ring_Buffer_Get_Length, .-Ring_Buffer_Get_Length
	.section	.text.Ring_Buffer_Read_Callback,"ax",@progbits
	.align	1
	.globl	Ring_Buffer_Read_Callback
	.type	Ring_Buffer_Read_Callback, @function
Ring_Buffer_Read_Callback:
.LFB16:
	.loc 1 388 1 is_stmt 1
	.cfi_startproc
.LVL20:
	.loc 1 389 5
	.loc 1 388 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s3,12(sp)
	.cfi_offset 19, -20
	mv	s3,a2
	sw	s0,24(sp)
	sw	s2,16(sp)
	sw	s4,8(sp)
	sw	ra,28(sp)
	sw	s1,20(sp)
	sw	s5,4(sp)
	.cfi_offset 8, -8
	.cfi_offset 18, -16
	.cfi_offset 20, -24
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	.cfi_offset 21, -28
	.loc 1 388 1
	mv	s0,a0
	mv	s2,a1
	mv	s4,a3
	.loc 1 389 21
	call	Ring_Buffer_Get_Length
.LVL21:
	.loc 1 391 5 is_stmt 1
	.loc 1 391 7 is_stmt 0
	bne	s3,zero,.L25
.LVL22:
.L29:
	.loc 1 392 16
	li	s1,0
.LVL23:
.L26:
	.loc 1 431 1
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
.LVL24:
	lw	s2,16(sp)
	.cfi_restore 18
	lw	s3,12(sp)
	.cfi_restore 19
.LVL25:
	lw	s4,8(sp)
	.cfi_restore 20
.LVL26:
	lw	s5,4(sp)
	.cfi_restore 21
	mv	a0,s1
	lw	s1,20(sp)
	.cfi_restore 9
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL27:
.L25:
	.cfi_restore_state
	.loc 1 395 14
	lw	a5,16(s0)
	mv	s1,a0
	.loc 1 395 5 is_stmt 1
	.loc 1 395 7 is_stmt 0
	beq	a5,zero,.L27
	.loc 1 396 9 is_stmt 1
	jalr	a5
.LVL28:
.L27:
	.loc 1 400 5
	.loc 1 400 7 is_stmt 0
	bne	s1,zero,.L28
	.loc 1 401 9 is_stmt 1
	.loc 1 401 18 is_stmt 0
	lw	a5,20(s0)
	.loc 1 401 11
	beq	a5,zero,.L29
.LVL29:
.L43:
	.loc 1 428 9 is_stmt 1
	jalr	a5
.LVL30:
	j	.L26
.LVL31:
.L28:
	.loc 1 408 5
	mv	a5,s1
	bleu	s1,s2,.L30
	mv	a5,s2
.L30:
	.loc 1 413 33 is_stmt 0
	lhu	s2,6(s0)
	.loc 1 413 18
	lhu	s5,12(s0)
	.loc 1 417 9
	lw	a1,0(s0)
	slli	s1,a5,16
	.loc 1 413 10
	sub	a2,s5,s2
	slli	a2,a2,16
	srli	s1,s1,16
.LVL32:
	.loc 1 413 5 is_stmt 1
	.loc 1 413 10 is_stmt 0
	srli	a2,a2,16
.LVL33:
	.loc 1 415 5 is_stmt 1
	.loc 1 417 9 is_stmt 0
	add	a1,a1,s2
	.loc 1 415 7
	bgeu	s1,a2,.L31
	.loc 1 417 9 is_stmt 1
	mv	a2,s1
.LVL34:
	mv	a0,s4
	jalr	s3
.LVL35:
	.loc 1 418 9
	.loc 1 418 27 is_stmt 0
	lhu	a5,6(s0)
	add	a5,s1,a5
	sh	a5,6(s0)
.LVL36:
.L32:
	.loc 1 427 5 is_stmt 1
	.loc 1 427 14 is_stmt 0
	lw	a5,20(s0)
	.loc 1 427 7
	bne	a5,zero,.L43
	j	.L26
.LVL37:
.L31:
	.loc 1 421 9 is_stmt 1
	mv	a0,s4
	.loc 1 422 9 is_stmt 0
	sub	s2,s2,s5
	.loc 1 421 9
	jalr	s3
.LVL38:
	.loc 1 422 9 is_stmt 1
	add	s2,s1,s2
	lw	a1,0(s0)
	slli	s2,s2,16
	srli	s2,s2,16
	mv	a2,s2
	mv	a0,s4
	jalr	s3
.LVL39:
	.loc 1 423 9
	.loc 1 424 28 is_stmt 0
	lbu	a5,4(s0)
	.loc 1 423 27
	sh	s2,6(s0)
	.loc 1 424 9 is_stmt 1
	.loc 1 424 28 is_stmt 0
	not	a5,a5
	sb	a5,4(s0)
	j	.L32
	.cfi_endproc
.LFE16:
	.size	Ring_Buffer_Read_Callback, .-Ring_Buffer_Read_Callback
	.section	.text.Ring_Buffer_Read,"ax",@progbits
	.align	1
	.globl	Ring_Buffer_Read
	.type	Ring_Buffer_Read, @function
Ring_Buffer_Read:
.LFB18:
	.loc 1 464 1 is_stmt 1
	.cfi_startproc
.LVL40:
	.loc 1 465 5
	.loc 1 464 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	a1,12(sp)
	mv	a1,a2
.LVL41:
	.loc 1 465 12
	lui	a2,%hi(Ring_Buffer_Read_Copy)
.LVL42:
	addi	a3,sp,12
.LVL43:
	addi	a2,a2,%lo(Ring_Buffer_Read_Copy)
	.loc 1 464 1
	sw	ra,28(sp)
	.cfi_offset 1, -4
	.loc 1 465 12
	call	Ring_Buffer_Read_Callback
.LVL44:
	.loc 1 466 1
	lw	ra,28(sp)
	.cfi_restore 1
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE18:
	.size	Ring_Buffer_Read, .-Ring_Buffer_Read
	.section	.text.Ring_Buffer_Read_Byte,"ax",@progbits
	.align	1
	.globl	Ring_Buffer_Read_Byte
	.type	Ring_Buffer_Read_Byte, @function
Ring_Buffer_Read_Byte:
.LFB19:
	.loc 1 479 1 is_stmt 1
	.cfi_startproc
.LVL45:
	.loc 1 480 5
	.loc 1 479 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	s1,20(sp)
	sw	ra,28(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 1, -4
	.loc 1 480 14
	lw	a5,16(a0)
	.loc 1 479 1
	mv	s0,a0
	mv	s1,a1
	.loc 1 480 7
	beq	a5,zero,.L47
	.loc 1 481 9 is_stmt 1
	jalr	a5
.LVL46:
.L47:
	.loc 1 485 5
	.loc 1 485 9 is_stmt 0
	mv	a0,s0
	call	Ring_Buffer_Get_Length
.LVL47:
	.loc 1 485 7
	bne	a0,zero,.L48
	.loc 1 486 9 is_stmt 1
	.loc 1 486 18 is_stmt 0
	lw	a5,20(s0)
	.loc 1 486 11
	beq	a5,zero,.L49
	sw	a0,12(sp)
	.loc 1 487 13 is_stmt 1
	jalr	a5
.LVL48:
	lw	a0,12(sp)
.L49:
	.loc 1 507 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
.LVL49:
	lw	s1,20(sp)
	.cfi_restore 9
.LVL50:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL51:
.L48:
	.cfi_restore_state
	.loc 1 493 5 is_stmt 1
	.loc 1 493 35 is_stmt 0
	lhu	a4,6(s0)
	.loc 1 493 28
	lw	a5,0(s0)
	add	a5,a5,a4
	lbu	a5,0(a5)
	.loc 1 493 11
	sb	a5,0(s1)
	.loc 1 496 5 is_stmt 1
	.loc 1 496 35 is_stmt 0
	lhu	a4,12(s0)
	.loc 1 496 14
	lhu	a5,6(s0)
	.loc 1 496 41
	addi	a4,a4,-1
	.loc 1 496 7
	bne	a5,a4,.L50
	.loc 1 497 9 is_stmt 1
	.loc 1 498 28 is_stmt 0
	lbu	a5,4(s0)
	.loc 1 497 27
	sh	zero,6(s0)
	.loc 1 498 9 is_stmt 1
	.loc 1 498 28 is_stmt 0
	not	a5,a5
	sb	a5,4(s0)
.L51:
	.loc 1 503 5 is_stmt 1
	.loc 1 503 14 is_stmt 0
	lw	a5,20(s0)
	.loc 1 506 12
	li	a0,1
	.loc 1 503 7
	beq	a5,zero,.L49
	.loc 1 504 9 is_stmt 1
	jalr	a5
.LVL52:
	.loc 1 506 12 is_stmt 0
	li	a0,1
	j	.L49
.L50:
	.loc 1 500 9 is_stmt 1
	.loc 1 500 26 is_stmt 0
	addi	a5,a5,1
	sh	a5,6(s0)
	j	.L51
	.cfi_endproc
.LFE19:
	.size	Ring_Buffer_Read_Byte, .-Ring_Buffer_Read_Byte
	.section	.text.Ring_Buffer_Peek,"ax",@progbits
	.align	1
	.globl	Ring_Buffer_Peek
	.type	Ring_Buffer_Peek, @function
Ring_Buffer_Peek:
.LFB20:
	.loc 1 521 1 is_stmt 1
	.cfi_startproc
.LVL53:
	.loc 1 522 5
	.loc 1 521 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	s1,20(sp)
	sw	s2,16(sp)
	sw	s3,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	mv	s1,a0
	sw	ra,28(sp)
	.cfi_offset 1, -4
	.loc 1 521 1
	mv	s3,a1
	mv	s2,a2
	.loc 1 522 21
	call	Ring_Buffer_Get_Length
.LVL54:
	.loc 1 524 14
	lw	a5,16(s1)
	.loc 1 522 21
	mv	s0,a0
.LVL55:
	.loc 1 524 5 is_stmt 1
	.loc 1 524 7 is_stmt 0
	beq	a5,zero,.L61
	.loc 1 525 9 is_stmt 1
	jalr	a5
.LVL56:
.L61:
	.loc 1 529 5
	.loc 1 529 7 is_stmt 0
	bne	s0,zero,.L62
.LVL57:
.L80:
	.loc 1 553 5 is_stmt 1
	.loc 1 553 14 is_stmt 0
	lw	a5,20(s1)
	.loc 1 553 7
	beq	a5,zero,.L63
	.loc 1 554 9 is_stmt 1
	jalr	a5
.LVL58:
.L63:
	.loc 1 557 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	mv	a0,s0
	lw	s0,24(sp)
	.cfi_restore 8
	lw	s1,20(sp)
	.cfi_restore 9
.LVL59:
	lw	s2,16(sp)
	.cfi_restore 18
	lw	s3,12(sp)
	.cfi_restore 19
.LVL60:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL61:
.L62:
	.cfi_restore_state
	.loc 1 537 5 is_stmt 1
	mv	a5,s0
	bleu	s0,s2,.L64
	mv	a5,s2
.L64:
	slli	s0,a5,16
.LVL62:
	.loc 1 542 10 is_stmt 0
	lhu	s2,12(s1)
	.loc 1 542 33
	lhu	a5,6(s1)
	.loc 1 546 32
	lw	a1,0(s1)
	srli	s0,s0,16
.LVL63:
	.loc 1 542 5 is_stmt 1
	.loc 1 542 10 is_stmt 0
	sub	s2,s2,a5
	slli	s2,s2,16
	srli	s2,s2,16
.LVL64:
	.loc 1 544 5 is_stmt 1
	.loc 1 546 32 is_stmt 0
	add	a1,a1,a5
	.loc 1 544 7
	bgeu	s0,s2,.L65
	.loc 1 546 9 is_stmt 1
	mv	a2,s0
	mv	a0,s3
.L77:
	.loc 1 550 9 is_stmt 0
	call	BL602_MemCpy_Fast
.LVL65:
	j	.L80
.L65:
	.loc 1 549 9 is_stmt 1
	mv	a2,s2
	mv	a0,s3
	call	BL602_MemCpy_Fast
.LVL66:
	.loc 1 550 9
	lw	a1,0(s1)
	sub	a2,s0,s2
	add	a0,s3,s2
	j	.L77
	.cfi_endproc
.LFE20:
	.size	Ring_Buffer_Peek, .-Ring_Buffer_Peek
	.section	.text.Ring_Buffer_Peek_Byte,"ax",@progbits
	.align	1
	.globl	Ring_Buffer_Peek_Byte
	.type	Ring_Buffer_Peek_Byte, @function
Ring_Buffer_Peek_Byte:
.LFB21:
	.loc 1 570 1
	.cfi_startproc
.LVL67:
	.loc 1 571 5
	.loc 1 570 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	s1,20(sp)
	sw	ra,28(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 1, -4
	.loc 1 571 14
	lw	a5,16(a0)
	.loc 1 570 1
	mv	s0,a0
	mv	s1,a1
	.loc 1 571 7
	beq	a5,zero,.L82
	.loc 1 572 9 is_stmt 1
	jalr	a5
.LVL68:
.L82:
	.loc 1 576 5
	.loc 1 576 9 is_stmt 0
	mv	a0,s0
	call	Ring_Buffer_Get_Length
.LVL69:
	.loc 1 576 7
	bne	a0,zero,.L83
	.loc 1 577 9 is_stmt 1
	.loc 1 577 18 is_stmt 0
	lw	a5,20(s0)
	.loc 1 577 11
	beq	a5,zero,.L84
	sw	a0,12(sp)
	.loc 1 578 13 is_stmt 1
	jalr	a5
.LVL70:
	lw	a0,12(sp)
.L84:
	.loc 1 590 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
.LVL71:
	lw	s1,20(sp)
	.cfi_restore 9
.LVL72:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL73:
.L83:
	.cfi_restore_state
	.loc 1 584 5 is_stmt 1
	.loc 1 584 35 is_stmt 0
	lhu	a4,6(s0)
	.loc 1 584 28
	lw	a5,0(s0)
	.loc 1 589 12
	li	a0,1
	.loc 1 584 28
	add	a5,a5,a4
	lbu	a5,0(a5)
	.loc 1 584 11
	sb	a5,0(s1)
	.loc 1 586 5 is_stmt 1
	.loc 1 586 14 is_stmt 0
	lw	a5,20(s0)
	.loc 1 586 7
	beq	a5,zero,.L84
	.loc 1 587 9 is_stmt 1
	jalr	a5
.LVL74:
	.loc 1 589 12 is_stmt 0
	li	a0,1
	j	.L84
	.cfi_endproc
.LFE21:
	.size	Ring_Buffer_Peek_Byte, .-Ring_Buffer_Peek_Byte
	.section	.text.Ring_Buffer_Get_Empty_Length,"ax",@progbits
	.align	1
	.globl	Ring_Buffer_Get_Empty_Length
	.type	Ring_Buffer_Get_Empty_Length, @function
Ring_Buffer_Get_Empty_Length:
.LFB23:
	.loc 1 630 1 is_stmt 1
	.cfi_startproc
.LVL75:
	.loc 1 631 5
	.loc 1 630 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.loc 1 631 19
	lhu	s0,12(a0)
	.loc 1 631 28
	call	Ring_Buffer_Get_Length
.LVL76:
	.loc 1 632 1
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 631 26
	sub	a0,s0,a0
	.loc 1 632 1
	lw	s0,8(sp)
	.cfi_restore 8
	slli	a0,a0,16
	srli	a0,a0,16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE23:
	.size	Ring_Buffer_Get_Empty_Length, .-Ring_Buffer_Get_Empty_Length
	.section	.text.Ring_Buffer_Write_Callback,"ax",@progbits
	.align	1
	.globl	Ring_Buffer_Write_Callback
	.type	Ring_Buffer_Write_Callback, @function
Ring_Buffer_Write_Callback:
.LFB10:
	.loc 1 153 1 is_stmt 1
	.cfi_startproc
.LVL77:
	.loc 1 154 5
	.loc 1 153 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s3,12(sp)
	.cfi_offset 19, -20
	mv	s3,a2
	sw	s0,24(sp)
	sw	s2,16(sp)
	sw	s4,8(sp)
	sw	ra,28(sp)
	sw	s1,20(sp)
	sw	s5,4(sp)
	.cfi_offset 8, -8
	.cfi_offset 18, -16
	.cfi_offset 20, -24
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	.cfi_offset 21, -28
	.loc 1 153 1
	mv	s0,a0
	mv	s2,a1
	mv	s4,a3
	.loc 1 154 29
	call	Ring_Buffer_Get_Empty_Length
.LVL78:
	.loc 1 156 5 is_stmt 1
	.loc 1 156 7 is_stmt 0
	bne	s3,zero,.L96
.LVL79:
.L100:
	.loc 1 157 16
	li	s1,0
.LVL80:
.L97:
	.loc 1 196 1
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
.LVL81:
	lw	s2,16(sp)
	.cfi_restore 18
	lw	s3,12(sp)
	.cfi_restore 19
.LVL82:
	lw	s4,8(sp)
	.cfi_restore 20
.LVL83:
	lw	s5,4(sp)
	.cfi_restore 21
	mv	a0,s1
	lw	s1,20(sp)
	.cfi_restore 9
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL84:
.L96:
	.cfi_restore_state
	.loc 1 160 14
	lw	a5,16(s0)
	mv	s1,a0
	.loc 1 160 5 is_stmt 1
	.loc 1 160 7 is_stmt 0
	beq	a5,zero,.L98
	.loc 1 161 9 is_stmt 1
	jalr	a5
.LVL85:
.L98:
	.loc 1 165 5
	.loc 1 165 7 is_stmt 0
	bne	s1,zero,.L99
	.loc 1 166 9 is_stmt 1
	.loc 1 166 18 is_stmt 0
	lw	a5,20(s0)
	.loc 1 166 11
	beq	a5,zero,.L100
.LVL86:
.L114:
	.loc 1 193 9 is_stmt 1
	jalr	a5
.LVL87:
	j	.L97
.LVL88:
.L99:
	.loc 1 173 5
	mv	a5,s1
	bleu	s1,s2,.L101
	mv	a5,s2
.L101:
	.loc 1 178 41 is_stmt 0
	lhu	s2,10(s0)
	.loc 1 178 26
	lhu	s5,12(s0)
	.loc 1 182 9
	lw	a1,0(s0)
	slli	s1,a5,16
	.loc 1 178 18
	sub	a2,s5,s2
	slli	a2,a2,16
	srli	s1,s1,16
.LVL89:
	.loc 1 178 5 is_stmt 1
	.loc 1 178 18 is_stmt 0
	srli	a2,a2,16
.LVL90:
	.loc 1 180 5 is_stmt 1
	.loc 1 182 9 is_stmt 0
	add	a1,a1,s2
	.loc 1 180 7
	bgeu	s1,a2,.L102
	.loc 1 182 9 is_stmt 1
	mv	a2,s1
.LVL91:
	mv	a0,s4
	jalr	s3
.LVL92:
	.loc 1 183 9
	.loc 1 183 28 is_stmt 0
	lhu	a5,10(s0)
	add	a5,s1,a5
	sh	a5,10(s0)
.LVL93:
.L103:
	.loc 1 192 5 is_stmt 1
	.loc 1 192 14 is_stmt 0
	lw	a5,20(s0)
	.loc 1 192 7
	bne	a5,zero,.L114
	j	.L97
.LVL94:
.L102:
	.loc 1 186 9 is_stmt 1
	mv	a0,s4
	.loc 1 187 9 is_stmt 0
	sub	s2,s2,s5
	.loc 1 186 9
	jalr	s3
.LVL95:
	.loc 1 187 9 is_stmt 1
	add	s2,s1,s2
	lw	a1,0(s0)
	slli	s2,s2,16
	srli	s2,s2,16
	mv	a2,s2
	mv	a0,s4
	jalr	s3
.LVL96:
	.loc 1 188 9
	.loc 1 189 29 is_stmt 0
	lbu	a5,8(s0)
	.loc 1 188 28
	sh	s2,10(s0)
	.loc 1 189 9 is_stmt 1
	.loc 1 189 29 is_stmt 0
	not	a5,a5
	sb	a5,8(s0)
	j	.L103
	.cfi_endproc
.LFE10:
	.size	Ring_Buffer_Write_Callback, .-Ring_Buffer_Write_Callback
	.section	.text.Ring_Buffer_Write,"ax",@progbits
	.align	1
	.globl	Ring_Buffer_Write
	.type	Ring_Buffer_Write, @function
Ring_Buffer_Write:
.LFB12:
	.loc 1 229 1 is_stmt 1
	.cfi_startproc
.LVL97:
	.loc 1 230 5
	.loc 1 229 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	a1,12(sp)
	mv	a1,a2
.LVL98:
	.loc 1 230 12
	lui	a2,%hi(Ring_Buffer_Write_Copy)
.LVL99:
	addi	a3,sp,12
.LVL100:
	addi	a2,a2,%lo(Ring_Buffer_Write_Copy)
	.loc 1 229 1
	sw	ra,28(sp)
	.cfi_offset 1, -4
	.loc 1 230 12
	call	Ring_Buffer_Write_Callback
.LVL101:
	.loc 1 231 1
	lw	ra,28(sp)
	.cfi_restore 1
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE12:
	.size	Ring_Buffer_Write, .-Ring_Buffer_Write
	.section	.text.Ring_Buffer_Write_Byte,"ax",@progbits
	.align	1
	.globl	Ring_Buffer_Write_Byte
	.type	Ring_Buffer_Write_Byte, @function
Ring_Buffer_Write_Byte:
.LFB13:
	.loc 1 244 1 is_stmt 1
	.cfi_startproc
.LVL102:
	.loc 1 245 5
	.loc 1 244 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	s1,20(sp)
	sw	ra,28(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 1, -4
	.loc 1 245 14
	lw	a5,16(a0)
	.loc 1 244 1
	mv	s0,a0
	mv	s1,a1
	.loc 1 245 7
	beq	a5,zero,.L118
	.loc 1 246 9 is_stmt 1
	jalr	a5
.LVL103:
.L118:
	.loc 1 250 5
	.loc 1 250 9 is_stmt 0
	mv	a0,s0
	call	Ring_Buffer_Get_Empty_Length
.LVL104:
	.loc 1 250 7
	bne	a0,zero,.L119
	.loc 1 251 9 is_stmt 1
	.loc 1 251 18 is_stmt 0
	lw	a5,20(s0)
	.loc 1 251 11
	beq	a5,zero,.L120
	sw	a0,12(sp)
	.loc 1 252 13 is_stmt 1
	jalr	a5
.LVL105:
	lw	a0,12(sp)
.L120:
	.loc 1 271 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
.LVL106:
	lw	s1,20(sp)
	.cfi_restore 9
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL107:
.L119:
	.cfi_restore_state
	.loc 1 257 5 is_stmt 1
	.loc 1 257 27 is_stmt 0
	lhu	a4,10(s0)
	.loc 1 257 41
	lw	a5,0(s0)
	add	a5,a5,a4
	sb	s1,0(a5)
	.loc 1 260 5 is_stmt 1
	.loc 1 260 37 is_stmt 0
	lhu	a4,12(s0)
	.loc 1 260 14
	lhu	a5,10(s0)
	.loc 1 260 43
	addi	a4,a4,-1
	.loc 1 260 7
	beq	a5,a4,.L121
	.loc 1 261 9 is_stmt 1
	.loc 1 261 27 is_stmt 0
	addi	a5,a5,1
	sh	a5,10(s0)
.L122:
	.loc 1 267 5 is_stmt 1
	.loc 1 267 14 is_stmt 0
	lw	a5,20(s0)
	.loc 1 270 12
	li	a0,1
	.loc 1 267 7
	beq	a5,zero,.L120
	.loc 1 268 9 is_stmt 1
	jalr	a5
.LVL108:
	.loc 1 270 12 is_stmt 0
	li	a0,1
	j	.L120
.L121:
	.loc 1 263 9 is_stmt 1
	.loc 1 264 29 is_stmt 0
	lbu	a5,8(s0)
	.loc 1 263 28
	sh	zero,10(s0)
	.loc 1 264 9 is_stmt 1
	.loc 1 264 29 is_stmt 0
	not	a5,a5
	sb	a5,8(s0)
	j	.L122
	.cfi_endproc
.LFE13:
	.size	Ring_Buffer_Write_Byte, .-Ring_Buffer_Write_Byte
	.section	.text.Ring_Buffer_Write_Force,"ax",@progbits
	.align	1
	.globl	Ring_Buffer_Write_Force
	.type	Ring_Buffer_Write_Force, @function
Ring_Buffer_Write_Force:
.LFB14:
	.loc 1 286 1 is_stmt 1
	.cfi_startproc
.LVL109:
	.loc 1 287 5
	.loc 1 286 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	.cfi_offset 8, -8
	mv	s0,a0
	sw	s1,20(sp)
	sw	s2,16(sp)
	sw	s3,12(sp)
	sw	s4,8(sp)
	sw	s5,4(sp)
	sw	s6,0(sp)
	sw	ra,28(sp)
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 1, -4
	.loc 1 286 1
	mv	s3,a1
	mv	s1,a2
	.loc 1 287 29
	call	Ring_Buffer_Get_Empty_Length
.LVL110:
	.loc 1 288 36
	lhu	s6,12(s0)
	.loc 1 288 51
	lhu	s2,10(s0)
	.loc 1 290 14
	lw	a5,16(s0)
	.loc 1 287 29
	mv	s5,a0
.LVL111:
	.loc 1 288 5 is_stmt 1
	.loc 1 288 14 is_stmt 0
	sub	s4,s6,s2
	slli	s4,s4,16
	srli	s4,s4,16
.LVL112:
	.loc 1 290 5 is_stmt 1
	.loc 1 290 7 is_stmt 0
	beq	a5,zero,.L132
	.loc 1 291 9 is_stmt 1
	jalr	a5
.LVL113:
.L132:
	.loc 1 295 5
	.loc 1 295 23 is_stmt 0
	lhu	a5,12(s0)
	.loc 1 295 7
	bgeu	a5,s1,.L133
	.loc 1 296 9 is_stmt 1
	.loc 1 296 29 is_stmt 0
	sub	s1,s1,a5
	.loc 1 296 14
	add	s3,s3,s1
.LVL114:
	.loc 1 297 9 is_stmt 1
	.loc 1 296 14 is_stmt 0
	mv	s1,a5
.LVL115:
.L133:
	.loc 1 300 5 is_stmt 1
	.loc 1 302 50 is_stmt 0
	lhu	a5,10(s0)
	.loc 1 302 27
	lw	a0,0(s0)
	add	a0,a0,a5
	.loc 1 300 7
	bgeu	s1,s4,.L134
	.loc 1 302 9 is_stmt 1
	mv	a2,s1
	mv	a1,s3
	call	BL602_MemCpy_Fast
.LVL116:
	.loc 1 303 9
	.loc 1 303 28 is_stmt 0
	lhu	a5,10(s0)
	add	a5,s1,a5
	slli	a5,a5,16
	srli	a5,a5,16
	sh	a5,10(s0)
	.loc 1 306 9 is_stmt 1
	.loc 1 306 11 is_stmt 0
	bleu	s1,s5,.L136
	.loc 1 307 13 is_stmt 1
	.loc 1 307 31 is_stmt 0
	sh	a5,6(s0)
.L136:
	.loc 1 323 5 is_stmt 1
	.loc 1 323 14 is_stmt 0
	lw	a5,20(s0)
	.loc 1 323 7
	beq	a5,zero,.L138
	.loc 1 324 9 is_stmt 1
	jalr	a5
.LVL117:
.L138:
	.loc 1 326 5
	.loc 1 327 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
.LVL118:
	lw	s2,16(sp)
	.cfi_restore 18
	lw	s3,12(sp)
	.cfi_restore 19
.LVL119:
	lw	s4,8(sp)
	.cfi_restore 20
.LVL120:
	lw	s5,4(sp)
	.cfi_restore 21
.LVL121:
	lw	s6,0(sp)
	.cfi_restore 22
	mv	a0,s1
	lw	s1,20(sp)
	.cfi_restore 9
.LVL122:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL123:
.L134:
	.cfi_restore_state
	.loc 1 311 9 is_stmt 1
	mv	a2,s4
	mv	a1,s3
	call	BL602_MemCpy_Fast
.LVL124:
	.loc 1 312 9
	lw	a0,0(s0)
	sub	a2,s1,s4
	add	a1,s3,s4
	call	BL602_MemCpy_Fast
.LVL125:
	.loc 1 313 9
	.loc 1 314 29 is_stmt 0
	lbu	a5,8(s0)
	.loc 1 313 36
	sub	s2,s2,s6
	add	s2,s1,s2
	slli	s2,s2,16
	srli	s2,s2,16
	.loc 1 314 29
	not	a5,a5
	.loc 1 313 28
	sh	s2,10(s0)
	.loc 1 314 9 is_stmt 1
	.loc 1 314 29 is_stmt 0
	sb	a5,8(s0)
	.loc 1 317 9 is_stmt 1
	.loc 1 317 11 is_stmt 0
	bleu	s1,s5,.L136
	.loc 1 318 13 is_stmt 1
	.loc 1 319 32 is_stmt 0
	lbu	a5,4(s0)
	.loc 1 318 31
	sh	s2,6(s0)
	.loc 1 319 13 is_stmt 1
	.loc 1 319 32 is_stmt 0
	not	a5,a5
	sb	a5,4(s0)
	j	.L136
	.cfi_endproc
.LFE14:
	.size	Ring_Buffer_Write_Force, .-Ring_Buffer_Write_Force
	.section	.text.Ring_Buffer_Get_Status,"ax",@progbits
	.align	1
	.globl	Ring_Buffer_Get_Status
	.type	Ring_Buffer_Get_Status, @function
Ring_Buffer_Get_Status:
.LFB24:
	.loc 1 644 1 is_stmt 1
	.cfi_startproc
.LVL126:
	.loc 1 645 5
	.loc 1 644 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	.loc 1 645 14
	lw	a5,16(a0)
	.loc 1 644 1
	mv	s0,a0
	.loc 1 645 7
	beq	a5,zero,.L147
	.loc 1 646 9 is_stmt 1
	jalr	a5
.LVL127:
.L147:
	.loc 1 650 5
	.loc 1 650 7 is_stmt 0
	lhu	a3,6(s0)
	lhu	a4,10(s0)
.LBB12:
.LBB13:
	.loc 1 652 22
	lw	a5,20(s0)
.LBE13:
.LBE12:
	.loc 1 650 7
	bne	a3,a4,.L148
.LVL128:
.LBB16:
.LBB14:
	.loc 1 651 9 is_stmt 1
	.loc 1 651 11 is_stmt 0
	lbu	a3,4(s0)
	lbu	a4,8(s0)
	bne	a3,a4,.L149
	.loc 1 652 13 is_stmt 1
	.loc 1 655 20 is_stmt 0
	li	a0,0
	.loc 1 652 15
	beq	a5,zero,.L146
	.loc 1 653 17 is_stmt 1
	jalr	a5
.LVL129:
	.loc 1 655 20 is_stmt 0
	li	a0,0
.LVL130:
.L146:
.LBE14:
.LBE16:
	.loc 1 667 1
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
.LVL131:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL132:
.L149:
	.cfi_restore_state
.LBB17:
.LBB15:
	.loc 1 657 13 is_stmt 1
	.loc 1 660 20 is_stmt 0
	li	a0,2
	.loc 1 657 15
	beq	a5,zero,.L146
	.loc 1 658 17 is_stmt 1
	jalr	a5
.LVL133:
	.loc 1 660 20 is_stmt 0
	li	a0,2
	j	.L146
.LVL134:
.L148:
.LBE15:
.LBE17:
	.loc 1 663 5 is_stmt 1
	.loc 1 666 12 is_stmt 0
	li	a0,1
	.loc 1 663 7
	beq	a5,zero,.L146
	.loc 1 664 9 is_stmt 1
	jalr	a5
.LVL135:
	.loc 1 666 12 is_stmt 0
	li	a0,1
	j	.L146
	.cfi_endproc
.LFE24:
	.size	Ring_Buffer_Get_Status, .-Ring_Buffer_Get_Status
	.section	.text.Ring_Buffer_Write_Byte_Force,"ax",@progbits
	.align	1
	.globl	Ring_Buffer_Write_Byte_Force
	.type	Ring_Buffer_Write_Byte_Force, @function
Ring_Buffer_Write_Byte_Force:
.LFB15:
	.loc 1 341 1 is_stmt 1
	.cfi_startproc
.LVL136:
	.loc 1 342 5
	.loc 1 341 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	s1,4(sp)
	sw	s2,0(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	mv	s0,a0
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 341 1
	mv	s2,a1
	.loc 1 342 38
	call	Ring_Buffer_Get_Status
.LVL137:
	.loc 1 344 14
	lw	a5,16(s0)
	.loc 1 342 38
	mv	s1,a0
.LVL138:
	.loc 1 344 5 is_stmt 1
	.loc 1 344 7 is_stmt 0
	beq	a5,zero,.L159
	.loc 1 345 9 is_stmt 1
	jalr	a5
.LVL139:
.L159:
	.loc 1 348 5
	.loc 1 348 27 is_stmt 0
	lhu	a4,10(s0)
	.loc 1 348 41
	lw	a5,0(s0)
	add	a5,a5,a4
	sb	s2,0(a5)
	.loc 1 351 5 is_stmt 1
	.loc 1 351 36 is_stmt 0
	lhu	a4,12(s0)
	.loc 1 351 14
	lhu	a5,10(s0)
	.loc 1 351 42
	addi	a4,a4,-1
	.loc 1 351 7
	bne	a5,a4,.L160
	.loc 1 352 9 is_stmt 1
	.loc 1 353 29 is_stmt 0
	lbu	a5,8(s0)
	.loc 1 352 28
	sh	zero,10(s0)
	.loc 1 353 9 is_stmt 1
	.loc 1 353 29 is_stmt 0
	not	a5,a5
	sb	a5,8(s0)
	.loc 1 356 9 is_stmt 1
	.loc 1 356 11 is_stmt 0
	li	a5,2
	bne	s1,a5,.L162
	.loc 1 357 13 is_stmt 1
	.loc 1 358 32 is_stmt 0
	lbu	a5,4(s0)
	.loc 1 357 31
	sh	zero,6(s0)
	.loc 1 358 13 is_stmt 1
	.loc 1 358 32 is_stmt 0
	not	a5,a5
	sb	a5,4(s0)
.L162:
	.loc 1 369 5 is_stmt 1
	.loc 1 369 14 is_stmt 0
	lw	a5,20(s0)
	.loc 1 369 7
	beq	a5,zero,.L164
	.loc 1 370 9 is_stmt 1
	jalr	a5
.LVL140:
.L164:
	.loc 1 372 5
	.loc 1 373 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
.LVL141:
	lw	s1,4(sp)
	.cfi_restore 9
.LVL142:
	lw	s2,0(sp)
	.cfi_restore 18
	li	a0,1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL143:
.L160:
	.cfi_restore_state
	.loc 1 361 9 is_stmt 1
	.loc 1 361 27 is_stmt 0
	addi	a5,a5,1
	slli	a5,a5,16
	srli	a5,a5,16
	sh	a5,10(s0)
	.loc 1 364 9 is_stmt 1
	.loc 1 364 11 is_stmt 0
	li	a4,2
	bne	s1,a4,.L162
	.loc 1 365 13 is_stmt 1
	.loc 1 365 31 is_stmt 0
	sh	a5,6(s0)
	j	.L162
	.cfi_endproc
.LFE15:
	.size	Ring_Buffer_Write_Byte_Force, .-Ring_Buffer_Write_Byte_Force
	.text
.Letext0:
	.file 2 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.file 3 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_common.h"
	.file 4 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/Common/ring_buffer/ring_buffer.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x933
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF62
	.byte	0xc
	.4byte	.LASF63
	.4byte	.LASF64
	.4byte	.Ldebug_ranges0+0x40
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1
	.byte	0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF3
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF4
	.byte	0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0x2e
	.byte	0x17
	.4byte	0x59
	.byte	0x4
	.4byte	0x48
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.byte	0x3
	.4byte	.LASF7
	.byte	0x2
	.byte	0x31
	.byte	0x1c
	.4byte	0x6c
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF8
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.byte	0x5
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x6
	.byte	0x4
	.byte	0x7
	.byte	0x4
	.4byte	0x90
	.byte	0x8
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF11
	.byte	0x9
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x3
	.byte	0x17
	.byte	0x1
	.4byte	0xb9
	.byte	0xa
	.4byte	.LASF12
	.byte	0
	.byte	0xa
	.4byte	.LASF13
	.byte	0x1
	.byte	0xa
	.4byte	.LASF14
	.byte	0x2
	.byte	0
	.byte	0x3
	.4byte	.LASF15
	.byte	0x3
	.byte	0x1b
	.byte	0x2
	.4byte	0x98
	.byte	0x9
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x4
	.byte	0x38
	.byte	0xe
	.4byte	0xe6
	.byte	0xa
	.4byte	.LASF16
	.byte	0
	.byte	0xa
	.4byte	.LASF17
	.byte	0x1
	.byte	0xa
	.4byte	.LASF18
	.byte	0x2
	.byte	0
	.byte	0x3
	.4byte	.LASF19
	.byte	0x4
	.byte	0x3c
	.byte	0x2
	.4byte	0xc5
	.byte	0xb
	.byte	0x18
	.byte	0x4
	.byte	0x41
	.byte	0x9
	.4byte	0x164
	.byte	0xc
	.4byte	.LASF20
	.byte	0x4
	.byte	0x42
	.byte	0xe
	.4byte	0x164
	.byte	0
	.byte	0xc
	.4byte	.LASF21
	.byte	0x4
	.byte	0x43
	.byte	0xd
	.4byte	0x48
	.byte	0x4
	.byte	0xc
	.4byte	.LASF22
	.byte	0x4
	.byte	0x44
	.byte	0xe
	.4byte	0x60
	.byte	0x6
	.byte	0xc
	.4byte	.LASF23
	.byte	0x4
	.byte	0x45
	.byte	0xd
	.4byte	0x48
	.byte	0x8
	.byte	0xc
	.4byte	.LASF24
	.byte	0x4
	.byte	0x46
	.byte	0xe
	.4byte	0x60
	.byte	0xa
	.byte	0xc
	.4byte	.LASF25
	.byte	0x4
	.byte	0x47
	.byte	0xe
	.4byte	0x60
	.byte	0xc
	.byte	0xc
	.4byte	.LASF26
	.byte	0x4
	.byte	0x48
	.byte	0xc
	.4byte	0x8a
	.byte	0x10
	.byte	0xc
	.4byte	.LASF27
	.byte	0x4
	.byte	0x49
	.byte	0xc
	.4byte	0x8a
	.byte	0x14
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x48
	.byte	0x3
	.4byte	.LASF28
	.byte	0x4
	.byte	0x4a
	.byte	0x2
	.4byte	0xf2
	.byte	0x3
	.4byte	.LASF29
	.byte	0x4
	.byte	0x5e
	.byte	0xf
	.4byte	0x90
	.byte	0x3
	.4byte	.LASF30
	.byte	0x4
	.byte	0x5f
	.byte	0xf
	.4byte	0x18e
	.byte	0xd
	.4byte	0x1a3
	.byte	0xe
	.4byte	0x88
	.byte	0xe
	.4byte	0x164
	.byte	0xe
	.4byte	0x60
	.byte	0
	.byte	0x3
	.4byte	.LASF31
	.byte	0x4
	.byte	0x60
	.byte	0xf
	.4byte	0x18e
	.byte	0xf
	.4byte	.LASF32
	.byte	0x1
	.2byte	0x283
	.byte	0x19
	.4byte	0xe6
	.byte	0x1
	.4byte	0x1cf
	.byte	0x10
	.4byte	.LASF34
	.byte	0x1
	.2byte	0x283
	.byte	0x42
	.4byte	0x1cf
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x16a
	.byte	0x11
	.4byte	.LASF35
	.byte	0x1
	.2byte	0x275
	.byte	0xa
	.4byte	0x60
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x1
	.byte	0x9c
	.4byte	0x213
	.byte	0x12
	.4byte	.LASF34
	.byte	0x1
	.2byte	0x275
	.byte	0x39
	.4byte	0x1cf
	.4byte	.LLST27
	.byte	0x13
	.4byte	.LVL76
	.4byte	0x213
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0
	.byte	0xf
	.4byte	.LASF33
	.byte	0x1
	.2byte	0x259
	.byte	0xa
	.4byte	0x60
	.byte	0x1
	.4byte	0x233
	.byte	0x10
	.4byte	.LASF34
	.byte	0x1
	.2byte	0x259
	.byte	0x33
	.4byte	0x1cf
	.byte	0
	.byte	0x15
	.4byte	.LASF36
	.byte	0x1
	.2byte	0x239
	.byte	0xa
	.4byte	0x60
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x1
	.byte	0x9c
	.4byte	0x281
	.byte	0x12
	.4byte	.LASF34
	.byte	0x1
	.2byte	0x239
	.byte	0x32
	.4byte	0x1cf
	.4byte	.LLST25
	.byte	0x12
	.4byte	.LASF37
	.byte	0x1
	.2byte	0x239
	.byte	0x42
	.4byte	0x164
	.4byte	.LLST26
	.byte	0x13
	.4byte	.LVL69
	.4byte	0x213
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0
	.byte	0x15
	.4byte	.LASF38
	.byte	0x1
	.2byte	0x208
	.byte	0xa
	.4byte	0x60
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x1
	.byte	0x9c
	.4byte	0x314
	.byte	0x12
	.4byte	.LASF34
	.byte	0x1
	.2byte	0x208
	.byte	0x2d
	.4byte	0x1cf
	.4byte	.LLST21
	.byte	0x12
	.4byte	.LASF37
	.byte	0x1
	.2byte	0x208
	.byte	0x3d
	.4byte	0x164
	.4byte	.LLST22
	.byte	0x12
	.4byte	.LASF39
	.byte	0x1
	.2byte	0x208
	.byte	0x4b
	.4byte	0x60
	.4byte	.LLST23
	.byte	0x16
	.4byte	.LASF25
	.byte	0x1
	.2byte	0x20a
	.byte	0xe
	.4byte	0x60
	.4byte	.LLST24
	.byte	0x17
	.4byte	.LVL54
	.4byte	0x213
	.4byte	0x2f4
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x18
	.4byte	.LVL65
	.4byte	0x92a
	.byte	0x13
	.4byte	.LVL66
	.4byte	0x92a
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x14
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0
	.byte	0x15
	.4byte	.LASF40
	.byte	0x1
	.2byte	0x1de
	.byte	0xa
	.4byte	0x60
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x1
	.byte	0x9c
	.4byte	0x362
	.byte	0x12
	.4byte	.LASF34
	.byte	0x1
	.2byte	0x1de
	.byte	0x32
	.4byte	0x1cf
	.4byte	.LLST19
	.byte	0x12
	.4byte	.LASF37
	.byte	0x1
	.2byte	0x1de
	.byte	0x42
	.4byte	0x164
	.4byte	.LLST20
	.byte	0x13
	.4byte	.LVL47
	.4byte	0x213
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0
	.byte	0x11
	.4byte	.LASF41
	.byte	0x1
	.2byte	0x1cf
	.byte	0xa
	.4byte	0x60
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x1
	.byte	0x9c
	.4byte	0x3d1
	.byte	0x12
	.4byte	.LASF34
	.byte	0x1
	.2byte	0x1cf
	.byte	0x2d
	.4byte	0x1cf
	.4byte	.LLST16
	.byte	0x12
	.4byte	.LASF37
	.byte	0x1
	.2byte	0x1cf
	.byte	0x3d
	.4byte	0x164
	.4byte	.LLST17
	.byte	0x12
	.4byte	.LASF39
	.byte	0x1
	.2byte	0x1cf
	.byte	0x4b
	.4byte	0x60
	.4byte	.LLST18
	.byte	0x13
	.4byte	.LVL44
	.4byte	0x44a
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x14
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	Ring_Buffer_Read_Copy
	.byte	0x14
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0
	.byte	0x19
	.4byte	.LASF53
	.byte	0x1
	.2byte	0x1bc
	.byte	0xd
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x1
	.byte	0x9c
	.4byte	0x444
	.byte	0x12
	.4byte	.LASF42
	.byte	0x1
	.2byte	0x1bc
	.byte	0x29
	.4byte	0x88
	.4byte	.LLST4
	.byte	0x12
	.4byte	.LASF37
	.byte	0x1
	.2byte	0x1bc
	.byte	0x3c
	.4byte	0x164
	.4byte	.LLST5
	.byte	0x12
	.4byte	.LASF39
	.byte	0x1
	.2byte	0x1bc
	.byte	0x4a
	.4byte	0x60
	.4byte	.LLST6
	.byte	0x16
	.4byte	.LASF43
	.byte	0x1
	.2byte	0x1be
	.byte	0xf
	.4byte	0x444
	.4byte	.LLST7
	.byte	0x13
	.4byte	.LVL8
	.4byte	0x92a
	.byte	0x14
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x14
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x164
	.byte	0x15
	.4byte	.LASF44
	.byte	0x1
	.2byte	0x183
	.byte	0xa
	.4byte	0x60
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x1
	.byte	0x9c
	.4byte	0x507
	.byte	0x12
	.4byte	.LASF34
	.byte	0x1
	.2byte	0x183
	.byte	0x36
	.4byte	0x1cf
	.4byte	.LLST11
	.byte	0x12
	.4byte	.LASF39
	.byte	0x1
	.2byte	0x183
	.byte	0x46
	.4byte	0x60
	.4byte	.LLST12
	.byte	0x12
	.4byte	.LASF45
	.byte	0x1
	.2byte	0x183
	.byte	0x67
	.4byte	0x507
	.4byte	.LLST13
	.byte	0x12
	.4byte	.LASF42
	.byte	0x1
	.2byte	0x183
	.byte	0x74
	.4byte	0x88
	.4byte	.LLST14
	.byte	0x16
	.4byte	.LASF25
	.byte	0x1
	.2byte	0x185
	.byte	0xe
	.4byte	0x60
	.4byte	.LLST15
	.byte	0x17
	.4byte	.LVL21
	.4byte	0x213
	.4byte	0x4ce
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LVL35
	.4byte	0x4e4
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0x14
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LVL38
	.4byte	0x4f4
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0
	.byte	0x1b
	.4byte	.LVL39
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0x14
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x182
	.byte	0x15
	.4byte	.LASF46
	.byte	0x1
	.2byte	0x154
	.byte	0xa
	.4byte	0x60
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x1
	.byte	0x9c
	.4byte	0x56c
	.byte	0x12
	.4byte	.LASF34
	.byte	0x1
	.2byte	0x154
	.byte	0x39
	.4byte	0x1cf
	.4byte	.LLST45
	.byte	0x12
	.4byte	.LASF37
	.byte	0x1
	.2byte	0x154
	.byte	0x4e
	.4byte	0x54
	.4byte	.LLST46
	.byte	0x16
	.4byte	.LASF47
	.byte	0x1
	.2byte	0x156
	.byte	0x1d
	.4byte	0xe6
	.4byte	.LLST47
	.byte	0x13
	.4byte	.LVL137
	.4byte	0x1af
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0
	.byte	0x15
	.4byte	.LASF48
	.byte	0x1
	.2byte	0x11d
	.byte	0xa
	.4byte	0x60
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x1
	.byte	0x9c
	.4byte	0x641
	.byte	0x12
	.4byte	.LASF34
	.byte	0x1
	.2byte	0x11d
	.byte	0x34
	.4byte	0x1cf
	.4byte	.LLST38
	.byte	0x12
	.4byte	.LASF37
	.byte	0x1
	.2byte	0x11d
	.byte	0x4a
	.4byte	0x641
	.4byte	.LLST39
	.byte	0x12
	.4byte	.LASF39
	.byte	0x1
	.2byte	0x11d
	.byte	0x58
	.4byte	0x60
	.4byte	.LLST40
	.byte	0x16
	.4byte	.LASF49
	.byte	0x1
	.2byte	0x11f
	.byte	0xe
	.4byte	0x60
	.4byte	.LLST41
	.byte	0x16
	.4byte	.LASF50
	.byte	0x1
	.2byte	0x120
	.byte	0xe
	.4byte	0x60
	.4byte	.LLST42
	.byte	0x17
	.4byte	.LVL110
	.4byte	0x1d5
	.4byte	0x5f0
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x17
	.4byte	.LVL116
	.4byte	0x92a
	.4byte	0x60a
	.byte	0x14
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x14
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x17
	.4byte	.LVL124
	.4byte	0x92a
	.4byte	0x624
	.byte	0x14
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x14
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0
	.byte	0x13
	.4byte	.LVL125
	.4byte	0x92a
	.byte	0x14
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x83
	.byte	0
	.byte	0x84
	.byte	0
	.byte	0x22
	.byte	0x14
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x79
	.byte	0
	.byte	0x84
	.byte	0
	.byte	0x1c
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x54
	.byte	0x1c
	.4byte	.LASF51
	.byte	0x1
	.byte	0xf3
	.byte	0xa
	.4byte	0x60
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x1
	.byte	0x9c
	.4byte	0x692
	.byte	0x1d
	.4byte	.LASF34
	.byte	0x1
	.byte	0xf3
	.byte	0x33
	.4byte	0x1cf
	.4byte	.LLST36
	.byte	0x1d
	.4byte	.LASF37
	.byte	0x1
	.byte	0xf3
	.byte	0x48
	.4byte	0x54
	.4byte	.LLST37
	.byte	0x13
	.4byte	.LVL104
	.4byte	0x1d5
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0
	.byte	0x1e
	.4byte	.LASF52
	.byte	0x1
	.byte	0xe4
	.byte	0xa
	.4byte	0x60
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x1
	.byte	0x9c
	.4byte	0x6fd
	.byte	0x1d
	.4byte	.LASF34
	.byte	0x1
	.byte	0xe4
	.byte	0x2e
	.4byte	0x1cf
	.4byte	.LLST33
	.byte	0x1d
	.4byte	.LASF37
	.byte	0x1
	.byte	0xe4
	.byte	0x44
	.4byte	0x641
	.4byte	.LLST34
	.byte	0x1d
	.4byte	.LASF39
	.byte	0x1
	.byte	0xe4
	.byte	0x52
	.4byte	0x60
	.4byte	.LLST35
	.byte	0x13
	.4byte	.LVL101
	.4byte	0x76b
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x14
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	Ring_Buffer_Write_Copy
	.byte	0x14
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0
	.byte	0x1f
	.4byte	.LASF54
	.byte	0x1
	.byte	0xd1
	.byte	0xd
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x1
	.byte	0x9c
	.4byte	0x76b
	.byte	0x1d
	.4byte	.LASF42
	.byte	0x1
	.byte	0xd1
	.byte	0x2a
	.4byte	0x88
	.4byte	.LLST0
	.byte	0x1d
	.4byte	.LASF43
	.byte	0x1
	.byte	0xd1
	.byte	0x3d
	.4byte	0x164
	.4byte	.LLST1
	.byte	0x1d
	.4byte	.LASF39
	.byte	0x1
	.byte	0xd1
	.byte	0x4b
	.4byte	0x60
	.4byte	.LLST2
	.byte	0x20
	.string	"src"
	.byte	0x1
	.byte	0xd3
	.byte	0xf
	.4byte	0x444
	.4byte	.LLST3
	.byte	0x13
	.4byte	.LVL4
	.4byte	0x92a
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x14
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0
	.byte	0x1c
	.4byte	.LASF55
	.byte	0x1
	.byte	0x98
	.byte	0xa
	.4byte	0x60
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x1
	.byte	0x9c
	.4byte	0x822
	.byte	0x1d
	.4byte	.LASF34
	.byte	0x1
	.byte	0x98
	.byte	0x37
	.4byte	0x1cf
	.4byte	.LLST28
	.byte	0x1d
	.4byte	.LASF39
	.byte	0x1
	.byte	0x98
	.byte	0x47
	.4byte	0x60
	.4byte	.LLST29
	.byte	0x1d
	.4byte	.LASF56
	.byte	0x1
	.byte	0x98
	.byte	0x69
	.4byte	0x822
	.4byte	.LLST30
	.byte	0x1d
	.4byte	.LASF42
	.byte	0x1
	.byte	0x98
	.byte	0x77
	.4byte	0x88
	.4byte	.LLST31
	.byte	0x21
	.4byte	.LASF49
	.byte	0x1
	.byte	0x9a
	.byte	0xe
	.4byte	0x60
	.4byte	.LLST32
	.byte	0x17
	.4byte	.LVL78
	.4byte	0x1d5
	.4byte	0x7e9
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LVL92
	.4byte	0x7ff
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0x14
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LVL95
	.4byte	0x80f
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0
	.byte	0x1b
	.4byte	.LVL96
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0x14
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x1a3
	.byte	0x1e
	.4byte	.LASF57
	.byte	0x1
	.byte	0x81
	.byte	0xd
	.4byte	0xb9
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0x853
	.byte	0x1d
	.4byte	.LASF34
	.byte	0x1
	.byte	0x81
	.byte	0x31
	.4byte	0x1cf
	.4byte	.LLST9
	.byte	0
	.byte	0x1e
	.4byte	.LASF58
	.byte	0x1
	.byte	0x63
	.byte	0xd
	.4byte	0xb9
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0x8b6
	.byte	0x1d
	.4byte	.LASF34
	.byte	0x1
	.byte	0x63
	.byte	0x30
	.4byte	0x1cf
	.4byte	.LLST8
	.byte	0x22
	.4byte	.LASF59
	.byte	0x1
	.byte	0x63
	.byte	0x40
	.4byte	0x164
	.byte	0x1
	.byte	0x5b
	.byte	0x22
	.4byte	.LASF25
	.byte	0x1
	.byte	0x63
	.byte	0x50
	.4byte	0x60
	.byte	0x1
	.byte	0x5c
	.byte	0x22
	.4byte	.LASF60
	.byte	0x1
	.byte	0x63
	.byte	0x6f
	.4byte	0x8b6
	.byte	0x1
	.byte	0x5d
	.byte	0x22
	.4byte	.LASF61
	.byte	0x1
	.byte	0x63
	.byte	0x90
	.4byte	0x8b6
	.byte	0x1
	.byte	0x5e
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x176
	.byte	0x23
	.4byte	0x213
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x1
	.byte	0x9c
	.4byte	0x8f2
	.byte	0x24
	.4byte	0x225
	.4byte	.LLST10
	.byte	0x25
	.4byte	0x213
	.4byte	.LBB4
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.2byte	0x259
	.byte	0xa
	.byte	0x26
	.4byte	0x225
	.byte	0x1
	.byte	0x58
	.byte	0
	.byte	0
	.byte	0x23
	.4byte	0x1af
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x1
	.byte	0x9c
	.4byte	0x92a
	.byte	0x24
	.4byte	0x1c1
	.4byte	.LLST43
	.byte	0x25
	.4byte	0x1af
	.4byte	.LBB12
	.4byte	.Ldebug_ranges0+0x20
	.byte	0x1
	.2byte	0x283
	.byte	0x19
	.byte	0x24
	.4byte	0x1c1
	.4byte	.LLST44
	.byte	0
	.byte	0
	.byte	0x27
	.4byte	.LASF65
	.4byte	.LASF65
	.byte	0x3
	.byte	0x8b
	.byte	0x7
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
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x5
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
	.byte	0x6
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
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
	.byte	0x15
	.byte	0
	.byte	0x27
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x9
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
	.byte	0xa
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xb
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
	.byte	0x20
	.byte	0xb
	.byte	0x1
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
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x11
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
	.byte	0x12
	.byte	0x5
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
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x13
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x14
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
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
	.byte	0x96,0x42
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x16
	.byte	0x34
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
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
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
	.byte	0x1a
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1b
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x1c
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
	.byte	0x1d
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
	.byte	0x1e
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
	.byte	0x20
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
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x21
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
	.byte	0x22
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
	.byte	0x96,0x42
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
	.byte	0x5
	.byte	0x57
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x26
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x27
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
.LLST27:
	.4byte	.LVL75
	.4byte	.LVL76-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL76-1
	.4byte	.LFE23
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL67
	.4byte	.LVL68-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL68-1
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL71
	.4byte	.LVL73
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL73
	.4byte	.LFE21
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL67
	.4byte	.LVL68-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL68-1
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL72
	.4byte	.LVL73
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL73
	.4byte	.LFE21
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL53
	.4byte	.LVL54-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL54-1
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL59
	.4byte	.LVL61
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL61
	.4byte	.LFE20
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL53
	.4byte	.LVL54-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL54-1
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL60
	.4byte	.LVL61
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL61
	.4byte	.LFE20
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL53
	.4byte	.LVL54-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL54-1
	.4byte	.LVL57
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL61
	.4byte	.LVL63
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL55
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL61
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL64
	.4byte	.LFE20
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL45
	.4byte	.LVL46-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL46-1
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL49
	.4byte	.LVL51
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL51
	.4byte	.LFE19
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL45
	.4byte	.LVL46-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL46-1
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL50
	.4byte	.LVL51
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL51
	.4byte	.LFE19
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL40
	.4byte	.LVL44-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL44-1
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL41
	.4byte	.LVL43
	.2byte	0x2
	.byte	0x91
	.byte	0x6c
	.4byte	.LVL43
	.4byte	.LVL44-1
	.2byte	0x2
	.byte	0x7d
	.byte	0
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL40
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL42
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL7
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL9
	.4byte	.LFE17
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
	.4byte	.LFE17
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
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL7
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL9
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL20
	.4byte	.LVL21-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL21-1
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL24
	.4byte	.LVL27
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LFE16
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL20
	.4byte	.LVL21-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL21-1
	.4byte	.LVL23
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LVL29
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL32
	.4byte	.LVL35-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL37
	.4byte	.LVL38-1
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL20
	.4byte	.LVL21-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL21-1
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL25
	.4byte	.LVL27
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LFE16
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL20
	.4byte	.LVL21-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL21-1
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LFE16
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL27
	.4byte	.LVL28-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL34
	.4byte	.LVL36
	.2byte	0xa
	.byte	0x85
	.byte	0
	.byte	0x82
	.byte	0
	.byte	0x1c
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL37
	.4byte	.LVL38-1
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL136
	.4byte	.LVL137-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL137-1
	.4byte	.LVL141
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL141
	.4byte	.LVL143
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL143
	.4byte	.LFE15
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL136
	.4byte	.LVL137-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL137-1
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL138
	.4byte	.LVL142
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL143
	.4byte	.LFE15
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL109
	.4byte	.LVL110-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL110-1
	.4byte	.LVL118
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL118
	.4byte	.LVL123
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL123
	.4byte	.LFE14
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL109
	.4byte	.LVL110-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL110-1
	.4byte	.LVL119
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL123
	.4byte	.LFE14
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL109
	.4byte	.LVL110-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL110-1
	.4byte	.LVL114
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL114
	.4byte	.LVL115
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL115
	.4byte	.LVL122
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL123
	.4byte	.LFE14
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL111
	.4byte	.LVL121
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL123
	.4byte	.LFE14
	.2byte	0x1
	.byte	0x65
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL112
	.4byte	.LVL120
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL123
	.4byte	.LFE14
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL102
	.4byte	.LVL103-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL103-1
	.4byte	.LVL106
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL106
	.4byte	.LVL107
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL107
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL102
	.4byte	.LVL103-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL103-1
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL97
	.4byte	.LVL101-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL101-1
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL97
	.4byte	.LVL98
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL98
	.4byte	.LVL100
	.2byte	0x2
	.byte	0x91
	.byte	0x6c
	.4byte	.LVL100
	.4byte	.LVL101-1
	.2byte	0x2
	.byte	0x7d
	.byte	0
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL97
	.4byte	.LVL99
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL99
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL2
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL5
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL3
	.4byte	.LVL4-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL4-1
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL4-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL4-1
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL2
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL5
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL77
	.4byte	.LVL78-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL78-1
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL81
	.4byte	.LVL84
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL84
	.4byte	.LFE10
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL77
	.4byte	.LVL78-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL78-1
	.4byte	.LVL80
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL84
	.4byte	.LVL86
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL88
	.4byte	.LVL89
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL89
	.4byte	.LVL92-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL94
	.4byte	.LVL95-1
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL77
	.4byte	.LVL78-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL78-1
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL82
	.4byte	.LVL84
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL84
	.4byte	.LFE10
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL77
	.4byte	.LVL78-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL78-1
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL83
	.4byte	.LVL84
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL84
	.4byte	.LFE10
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL78
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL84
	.4byte	.LVL85-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL90
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL91
	.4byte	.LVL93
	.2byte	0xa
	.byte	0x85
	.byte	0
	.byte	0x82
	.byte	0
	.byte	0x1c
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL94
	.4byte	.LVL95-1
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL13
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL11
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL14
	.4byte	.LVL15-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL15-1
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LFE22
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL126
	.4byte	.LVL127-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL127-1
	.4byte	.LVL131
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL131
	.4byte	.LVL132
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL132
	.4byte	.LFE24
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL128
	.4byte	.LVL130
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL132
	.4byte	.LVL134
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x9c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB4
	.4byte	.LBE4
	.4byte	.LBB8
	.4byte	.LBE8
	.4byte	.LBB9
	.4byte	.LBE9
	.4byte	0
	.4byte	0
	.4byte	.LBB12
	.4byte	.LBE12
	.4byte	.LBB16
	.4byte	.LBE16
	.4byte	.LBB17
	.4byte	.LBE17
	.4byte	0
	.4byte	0
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF19:
	.string	"Ring_Buffer_Status_Type"
.LASF32:
	.string	"Ring_Buffer_Get_Status"
.LASF43:
	.string	"dest"
.LASF46:
	.string	"Ring_Buffer_Write_Byte_Force"
.LASF38:
	.string	"Ring_Buffer_Peek"
.LASF2:
	.string	"short int"
.LASF23:
	.string	"writeMirror"
.LASF55:
	.string	"Ring_Buffer_Write_Callback"
.LASF51:
	.string	"Ring_Buffer_Write_Byte"
.LASF29:
	.string	"ringBuffer_Lock_Callback"
.LASF4:
	.string	"long long int"
.LASF35:
	.string	"Ring_Buffer_Get_Empty_Length"
.LASF45:
	.string	"readCb"
.LASF6:
	.string	"uint8_t"
.LASF49:
	.string	"sizeRemained"
.LASF31:
	.string	"ringBuffer_Write_Callback"
.LASF61:
	.string	"unlockCb"
.LASF44:
	.string	"Ring_Buffer_Read_Callback"
.LASF58:
	.string	"Ring_Buffer_Init"
.LASF12:
	.string	"SUCCESS"
.LASF14:
	.string	"TIMEOUT"
.LASF3:
	.string	"long int"
.LASF15:
	.string	"BL_Err_Type"
.LASF13:
	.string	"ERROR"
.LASF48:
	.string	"Ring_Buffer_Write_Force"
.LASF39:
	.string	"length"
.LASF34:
	.string	"rbType"
.LASF5:
	.string	"unsigned char"
.LASF41:
	.string	"Ring_Buffer_Read"
.LASF1:
	.string	"signed char"
.LASF10:
	.string	"long long unsigned int"
.LASF40:
	.string	"Ring_Buffer_Read_Byte"
.LASF64:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/bl602_std"
.LASF60:
	.string	"lockCb"
.LASF54:
	.string	"Ring_Buffer_Write_Copy"
.LASF16:
	.string	"RING_BUFFER_EMPTY"
.LASF63:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/Common/ring_buffer/ring_buffer.c"
.LASF27:
	.string	"unlock"
.LASF42:
	.string	"parameter"
.LASF36:
	.string	"Ring_Buffer_Peek_Byte"
.LASF37:
	.string	"data"
.LASF47:
	.string	"status"
.LASF11:
	.string	"char"
.LASF7:
	.string	"uint16_t"
.LASF57:
	.string	"Ring_Buffer_Reset"
.LASF26:
	.string	"lock"
.LASF8:
	.string	"short unsigned int"
.LASF28:
	.string	"Ring_Buffer_Type"
.LASF50:
	.string	"indexRemained"
.LASF59:
	.string	"buffer"
.LASF65:
	.string	"BL602_MemCpy_Fast"
.LASF9:
	.string	"long unsigned int"
.LASF56:
	.string	"writeCb"
.LASF30:
	.string	"ringBuffer_Read_Callback"
.LASF25:
	.string	"size"
.LASF22:
	.string	"readIndex"
.LASF18:
	.string	"RING_BUFFER_FULL"
.LASF20:
	.string	"pointer"
.LASF52:
	.string	"Ring_Buffer_Write"
.LASF33:
	.string	"Ring_Buffer_Get_Length"
.LASF24:
	.string	"writeIndex"
.LASF0:
	.string	"unsigned int"
.LASF21:
	.string	"readMirror"
.LASF17:
	.string	"RING_BUFFER_PARTIAL"
.LASF53:
	.string	"Ring_Buffer_Read_Copy"
.LASF62:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
