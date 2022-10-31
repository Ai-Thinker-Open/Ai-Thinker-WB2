	.file	"utils_base64.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.rodata.utils_base64encode.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"utils_base64.c"
	.align	2
.LC1:
	.string	"ERROR "
	.align	2
.LC2:
	.string	"[%10u][%s: %s:%4d] pointer of encodedData is NULL!\r\n"
	.align	2
.LC3:
	.string	"[%10u][%s: %s:%4d] the length of output memory is not enough!\r\n"
	.section	.text.utils_base64encode,"ax",@progbits
	.align	1
	.globl	utils_base64encode
	.type	utils_base64encode, @function
utils_base64encode:
.LFB5:
	.file 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/utils/src/utils_base64.c"
	.loc 1 42 1
	.cfi_startproc
.LVL0:
	.loc 1 43 5
	.loc 1 44 5
	.loc 1 46 5
	.loc 1 42 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 46 8
	bne	a3,zero,.L2
	.loc 1 47 9 is_stmt 1
	.loc 1 47 14
	.loc 1 47 16
	.loc 1 47 88 is_stmt 0
	call	xPortIsInsideInterrupt
.LVL1:
	.loc 1 47 16
	beq	a0,zero,.L3
	.loc 1 47 115 discriminator 1
	call	xTaskGetTickCountFromISR
.LVL2:
.L17:
	.loc 1 47 144 discriminator 2
	mv	a1,a0
	.loc 1 47 16 discriminator 2
	lui	a3,%hi(.LC0)
	lui	a2,%hi(.LC1)
	lui	a0,%hi(.LC2)
	li	a4,47
	addi	a3,a3,%lo(.LC0)
	addi	a2,a2,%lo(.LC1)
	addi	a0,a0,%lo(.LC2)
.L20:
	.loc 1 54 16 discriminator 4
	call	bl_printk
.LVL3:
	.loc 1 54 210 is_stmt 1 discriminator 4
	.loc 1 54 219 discriminator 4
	.loc 1 55 9 discriminator 4
	.loc 1 55 16 is_stmt 0 discriminator 4
	li	a0,0
.LVL4:
.L1:
	.loc 1 76 1
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL5:
.L3:
	.cfi_restore_state
	.loc 1 47 144 discriminator 2
	call	xTaskGetTickCount
.LVL6:
	j	.L17
.LVL7:
.L2:
	.loc 1 51 5 is_stmt 1
	.loc 1 51 39 is_stmt 0
	addi	a5,a1,2
	.loc 1 51 44
	li	a6,3
	divu	a5,a5,a6
	.loc 1 51 23
	slli	a5,a5,2
	.loc 1 51 19
	sw	a5,0(a4)
	.loc 1 53 5 is_stmt 1
	.loc 1 53 8 is_stmt 0
	bgtu	a5,a2,.L6
.LBB2:
	.loc 1 65 43
	lui	t1,%hi(.LANCHOR0)
	mv	a7,a3
.LBE2:
	.loc 1 58 12
	li	a2,0
.LVL8:
.LBB3:
	.loc 1 65 43
	addi	t1,t1,%lo(.LANCHOR0)
.LVL9:
.L7:
.LBE3:
	.loc 1 58 24 is_stmt 1 discriminator 1
	.loc 1 58 5 is_stmt 0 discriminator 1
	bltu	a2,a1,.L11
	.loc 1 71 44
	li	a5,3
	remu	a1,a1,a5
.LVL10:
	.loc 1 71 31
	lui	a5,%hi(.LANCHOR1)
	addi	a5,a5,%lo(.LANCHOR1)
	.loc 1 71 12
	li	a2,0
.LVL11:
	.loc 1 72 44
	li	a0,61
.LVL12:
	.loc 1 71 31
	slli	a1,a1,2
	add	a1,a5,a1
	lw	a1,0(a1)
.L12:
.LVL13:
	.loc 1 71 17 is_stmt 1 discriminator 1
	.loc 1 71 5 is_stmt 0 discriminator 1
	bne	a1,a2,.L13
	.loc 1 75 12
	li	a0,1
	j	.L1
.LVL14:
.L6:
	.loc 1 54 9 is_stmt 1
	.loc 1 54 14
	.loc 1 54 16
	.loc 1 54 99 is_stmt 0
	call	xPortIsInsideInterrupt
.LVL15:
	.loc 1 54 16
	beq	a0,zero,.L8
	.loc 1 54 126 discriminator 1
	call	xTaskGetTickCountFromISR
.LVL16:
.L18:
	.loc 1 54 155 discriminator 2
	mv	a1,a0
	.loc 1 54 16 discriminator 2
	lui	a3,%hi(.LC0)
	lui	a2,%hi(.LC1)
	lui	a0,%hi(.LC3)
	li	a4,54
	addi	a3,a3,%lo(.LC0)
	addi	a2,a2,%lo(.LC1)
	addi	a0,a0,%lo(.LC3)
	j	.L20
.L8:
	.loc 1 54 155 discriminator 2
	call	xTaskGetTickCount
.LVL17:
	j	.L18
.LVL18:
.L11:
.LBB4:
	.loc 1 59 9 is_stmt 1 discriminator 1
	.loc 1 59 60 is_stmt 0 discriminator 1
	add	a5,a0,a2
	.loc 1 59 62 discriminator 1
	addi	a6,a2,1
.LVL19:
	.loc 1 59 66 discriminator 1
	lbu	a5,0(a5)
.LVL20:
	.loc 1 60 9 is_stmt 1 discriminator 1
	.loc 1 60 66 is_stmt 0 discriminator 1
	bleu	a1,a6,.L14
	.loc 1 60 60 discriminator 1
	add	a6,a0,a6
.LVL21:
	.loc 1 60 62 discriminator 1
	addi	t3,a2,2
.LVL22:
	.loc 1 60 66 discriminator 1
	lbu	t4,0(a6)
.LVL23:
	.loc 1 61 9 is_stmt 1 discriminator 1
	.loc 1 61 66 is_stmt 0 discriminator 1
	bleu	a1,t3,.L15
	.loc 1 61 60 discriminator 1
	add	t3,a0,t3
.LVL24:
	.loc 1 61 62 discriminator 1
	addi	a6,a2,3
.LVL25:
	.loc 1 61 66 discriminator 1
	lbu	a2,0(t3)
.LVL26:
.L10:
	.loc 1 63 9 is_stmt 1 discriminator 4
	.loc 1 63 36 is_stmt 0 discriminator 4
	slli	a5,a5,16
.LVL27:
	.loc 1 63 56 discriminator 4
	slli	t4,t4,8
	.loc 1 63 45 discriminator 4
	add	a5,a5,t4
	.loc 1 63 18 discriminator 4
	add	a2,a5,a2
.LVL28:
	.loc 1 65 9 is_stmt 1 discriminator 4
	.loc 1 65 52 is_stmt 0 discriminator 4
	srli	t3,a5,18
	.loc 1 66 52 discriminator 4
	srli	a5,a5,12
	.loc 1 66 62 discriminator 4
	andi	a5,a5,63
	.loc 1 66 43 discriminator 4
	add	a5,t1,a5
	.loc 1 66 26 discriminator 4
	lbu	a5,0(a5)
	.loc 1 65 43 discriminator 4
	add	t3,t1,t3
	.loc 1 65 26 discriminator 4
	lbu	t3,0(t3)
	.loc 1 66 26 discriminator 4
	sb	a5,1(a7)
	.loc 1 67 52 discriminator 4
	srli	a5,a2,6
	.loc 1 67 62 discriminator 4
	andi	a5,a5,63
	.loc 1 67 43 discriminator 4
	add	a5,t1,a5
	.loc 1 67 26 discriminator 4
	lbu	a5,0(a5)
	.loc 1 68 62 discriminator 4
	andi	a2,a2,63
.LVL29:
	.loc 1 68 43 discriminator 4
	add	a2,t1,a2
	.loc 1 67 26 discriminator 4
	sb	a5,2(a7)
	.loc 1 68 26 discriminator 4
	lbu	a5,0(a2)
	.loc 1 65 26 discriminator 4
	sb	t3,0(a7)
	.loc 1 66 9 is_stmt 1 discriminator 4
.LVL30:
	.loc 1 67 9 discriminator 4
	.loc 1 68 9 discriminator 4
	.loc 1 68 26 is_stmt 0 discriminator 4
	mv	a2,a6
	sb	a5,3(a7)
	addi	a7,a7,4
.LVL31:
	j	.L7
.LVL32:
.L14:
	.loc 1 60 66
	li	t4,0
.L19:
	.loc 1 61 66
	li	a2,0
	j	.L10
.LVL33:
.L15:
	mv	a6,t3
	j	.L19
.LVL34:
.L13:
.LBE4:
	.loc 1 72 9 is_stmt 1 discriminator 3
	.loc 1 72 39 is_stmt 0 discriminator 3
	lw	a5,0(a4)
	addi	a5,a5,-1
	sub	a5,a5,a2
	.loc 1 72 44 discriminator 3
	add	a5,a3,a5
	sb	a0,0(a5)
	.loc 1 71 50 is_stmt 1 discriminator 3
	.loc 1 71 51 is_stmt 0 discriminator 3
	addi	a2,a2,1
.LVL35:
	j	.L12
	.cfi_endproc
.LFE5:
	.size	utils_base64encode, .-utils_base64encode
	.section	.text.utils_base64_encode_stream,"ax",@progbits
	.align	1
	.globl	utils_base64_encode_stream
	.type	utils_base64_encode_stream, @function
utils_base64_encode_stream:
.LFB6:
	.loc 1 87 1 is_stmt 1
	.cfi_startproc
.LVL36:
	.loc 1 88 3
	.loc 1 89 3
	.loc 1 91 3
	.loc 1 91 9
	.loc 1 87 1 is_stmt 0
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	s2,48(sp)
	.cfi_offset 18, -16
.LBB5:
	.loc 1 102 37
	lui	s2,%hi(.LANCHOR0)
.LBE5:
	.loc 1 87 1
	sw	s1,52(sp)
	sw	s3,44(sp)
	sw	s4,40(sp)
	sw	s5,36(sp)
	sw	s6,32(sp)
	sw	s7,28(sp)
	sw	ra,60(sp)
	sw	s0,56(sp)
	sw	s8,24(sp)
	.cfi_offset 9, -12
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 23, -36
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 24, -40
	.loc 1 87 1
	mv	s3,a0
	mv	s4,a1
	mv	s7,a2
	.loc 1 89 16
	li	s1,-1
.LBB6:
	.loc 1 93 97
	li	s6,-1
	.loc 1 102 37
	addi	s2,s2,%lo(.LANCHOR0)
	addi	s5,sp,12
.LVL37:
.L33:
	.loc 1 92 5 is_stmt 1
	.loc 1 92 31 is_stmt 0
	mv	a1,s7
	addi	a0,sp,11
	jalr	s3
.LVL38:
	.loc 1 92 106
	beq	a0,zero,.L22
	.loc 1 92 67 discriminator 1
	bge	s1,zero,.L23
	li	s1,0
.L23:
.LVL39:
	.loc 1 92 106 discriminator 1
	li	s0,0
.LVL40:
.L24:
	.loc 1 93 5 is_stmt 1 discriminator 4
	.loc 1 93 31 is_stmt 0 discriminator 4
	mv	a1,s7
	addi	a0,sp,11
.LVL41:
	jalr	s3
.LVL42:
	.loc 1 93 106 discriminator 4
	beq	a0,zero,.L25
	.loc 1 93 106 discriminator 1
	li	s8,0
	.loc 1 93 97 discriminator 1
	bne	s1,s6,.L26
	.loc 1 93 97
	li	s1,1
.LVL43:
.L26:
	.loc 1 94 5 is_stmt 1 discriminator 8
	.loc 1 94 31 is_stmt 0 discriminator 8
	mv	a1,s7
	addi	a0,sp,11
.LVL44:
	jalr	s3
.LVL45:
	.loc 1 94 106 discriminator 8
	beq	a0,zero,.L27
	.loc 1 94 106 discriminator 1
	li	a4,0
	.loc 1 94 97 discriminator 1
	bne	s1,s6,.L28
	.loc 1 94 97
	li	s1,2
.LVL46:
.L28:
	.loc 1 96 5 is_stmt 1 discriminator 8
	.loc 1 96 32 is_stmt 0 discriminator 8
	slli	a5,s0,16
	.loc 1 96 52 discriminator 8
	slli	s8,s8,8
.LVL47:
	.loc 1 96 41 discriminator 8
	add	a5,a5,s8
	.loc 1 96 14 discriminator 8
	add	a5,a5,a4
.LVL48:
	.loc 1 98 5 is_stmt 1 discriminator 8
	.loc 1 98 8 is_stmt 0 discriminator 8
	beq	a0,zero,.L29
	.loc 1 98 13 discriminator 1
	beq	s1,zero,.L21
.L29:
.LVL49:
	.loc 1 102 5 is_stmt 1
	.loc 1 102 46 is_stmt 0
	srli	a4,a5,18
	.loc 1 102 37
	add	a4,s2,a4
	.loc 1 102 20
	lbu	a4,0(a4)
	sb	a4,12(sp)
	.loc 1 103 5 is_stmt 1
	.loc 1 103 46 is_stmt 0
	srli	a4,a5,12
	.loc 1 103 56
	andi	a4,a4,63
	.loc 1 103 37
	add	a4,s2,a4
	.loc 1 103 20
	lbu	a4,0(a4)
	sb	a4,13(sp)
	.loc 1 104 5 is_stmt 1
	.loc 1 104 46 is_stmt 0
	srli	a4,a5,6
	.loc 1 104 56
	andi	a4,a4,63
	.loc 1 105 56
	andi	a5,a5,63
	.loc 1 104 37
	add	a4,s2,a4
	.loc 1 105 37
	add	a5,s2,a5
	.loc 1 104 20
	lbu	a4,0(a4)
	.loc 1 105 20
	lbu	a5,0(a5)
	.loc 1 104 20
	sb	a4,14(sp)
	.loc 1 105 5 is_stmt 1
	.loc 1 105 20 is_stmt 0
	sb	a5,15(sp)
	.loc 1 107 5 is_stmt 1
	.loc 1 107 8 is_stmt 0
	beq	a0,zero,.L31
.LBE6:
	.loc 1 112 29
	slli	a5,s1,2
	lui	s1,%hi(.LANCHOR1)
	addi	s1,s1,%lo(.LANCHOR1)
	add	s1,s1,a5
	lw	a4,0(s1)
	mv	a5,s5
	.loc 1 113 24
	li	a2,61
.LVL50:
.L32:
	.loc 1 112 15 is_stmt 1 discriminator 1
	.loc 1 112 3 is_stmt 0 discriminator 1
	sub	a3,s5,a5
	blt	a3,a4,.L34
	.loc 1 116 3 is_stmt 1
	mv	a1,s7
	mv	a0,s5
	jalr	s4
.LVL51:
	.loc 1 118 3
.L21:
	.loc 1 119 1 is_stmt 0
	lw	ra,60(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
.LVL52:
	lw	s1,52(sp)
	.cfi_restore 9
	lw	s2,48(sp)
	.cfi_restore 18
	lw	s3,44(sp)
	.cfi_restore 19
.LVL53:
	lw	s4,40(sp)
	.cfi_restore 20
.LVL54:
	lw	s5,36(sp)
	.cfi_restore 21
	lw	s6,32(sp)
	.cfi_restore 22
	lw	s7,28(sp)
	.cfi_restore 23
.LVL55:
	lw	s8,24(sp)
	.cfi_restore 24
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
.LVL56:
.L22:
	.cfi_restore_state
.LBB7:
	.loc 1 92 106 discriminator 2
	lbu	s0,11(sp)
	j	.L24
.LVL57:
.L25:
	.loc 1 93 106 discriminator 2
	lbu	s8,11(sp)
	j	.L26
.LVL58:
.L27:
	.loc 1 94 106 discriminator 2
	lbu	a4,11(sp)
	j	.L28
.LVL59:
.L31:
	.loc 1 108 7 is_stmt 1
	mv	a1,s7
	mv	a0,s5
.LVL60:
	jalr	s4
.LVL61:
.LBE7:
	.loc 1 91 9
	j	.L33
.LVL62:
.L34:
	.loc 1 113 5 discriminator 3
	.loc 1 113 24 is_stmt 0 discriminator 3
	sb	a2,3(a5)
	.loc 1 112 42 is_stmt 1 discriminator 3
.LVL63:
	addi	a5,a5,-1
.LVL64:
	j	.L32
	.cfi_endproc
.LFE6:
	.size	utils_base64_encode_stream, .-utils_base64_encode_stream
	.section	.rodata.utils_base64decode.str1.4,"aMS",@progbits,1
	.align	2
.LC4:
	.string	"[%10u][%s: %s:%4d] the input length is error!\r\n"
	.section	.text.utils_base64decode,"ax",@progbits
	.align	1
	.globl	utils_base64decode
	.type	utils_base64decode, @function
utils_base64decode:
.LFB7:
	.loc 1 123 1
	.cfi_startproc
.LVL65:
	.loc 1 124 5
	.loc 1 125 5
	.loc 1 127 5
.LBB10:
.LBB11:
	.loc 1 25 5
	.loc 1 26 5
	.loc 1 28 5
	.loc 1 28 16 is_stmt 0
	lui	a6,%hi(.LANCHOR2)
	lw	a5,%lo(.LANCHOR2)(a6)
.LBE11:
.LBE10:
	.loc 1 123 1
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
.LBB13:
.LBB12:
	.loc 1 28 8
	bne	a5,zero,.L45
	.loc 1 33 55
	lui	t1,%hi(.LANCHOR3)
	.loc 1 33 50
	lui	t3,%hi(.LANCHOR0)
	addi	a6,a6,%lo(.LANCHOR2)
	.loc 1 33 55
	addi	t1,t1,%lo(.LANCHOR3)
	.loc 1 33 50
	addi	t3,t3,%lo(.LANCHOR0)
	.loc 1 32 5
	li	t4,64
.LVL66:
.L46:
	.loc 1 33 9 is_stmt 1
	.loc 1 33 50 is_stmt 0
	add	a7,t3,a5
	.loc 1 33 25
	lbu	a7,0(a7)
	.loc 1 33 55
	add	a7,t1,a7
	sb	a5,0(a7)
	.loc 1 32 25 is_stmt 1
	.loc 1 32 26 is_stmt 0
	addi	a5,a5,1
.LVL67:
	.loc 1 32 17 is_stmt 1
	.loc 1 32 5 is_stmt 0
	bne	a5,t4,.L46
	.loc 1 36 5 is_stmt 1
	.loc 1 36 12 is_stmt 0
	li	a5,1
.LVL68:
	sw	a5,0(a6)
	.loc 1 37 5 is_stmt 1
.L45:
.LBE12:
.LBE13:
	.loc 1 129 5
	.loc 1 129 21 is_stmt 0
	andi	s0,a1,3
	.loc 1 129 8
	beq	s0,zero,.L47
	.loc 1 130 9 is_stmt 1
	.loc 1 130 14
	.loc 1 130 16
	.loc 1 130 83 is_stmt 0
	call	xPortIsInsideInterrupt
.LVL69:
	.loc 1 130 16
	beq	a0,zero,.L48
	.loc 1 130 110 discriminator 1
	call	xTaskGetTickCountFromISR
.LVL70:
.L71:
	.loc 1 130 139 discriminator 2
	mv	a1,a0
	.loc 1 130 16 discriminator 2
	lui	a3,%hi(.LC0)
	lui	a2,%hi(.LC1)
	lui	a0,%hi(.LC4)
	li	a4,130
	addi	a3,a3,%lo(.LC0)
	addi	a2,a2,%lo(.LC1)
	addi	a0,a0,%lo(.LC4)
	call	bl_printk
.LVL71:
	.loc 1 130 195 is_stmt 1 discriminator 2
	.loc 1 130 204 discriminator 2
	.loc 1 131 9 discriminator 2
	.loc 1 131 16 is_stmt 0 discriminator 2
	li	s0,0
.LVL72:
.L44:
	.loc 1 178 1
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	mv	a0,s0
	lw	s0,8(sp)
	.cfi_restore 8
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL73:
.L48:
	.cfi_restore_state
	.loc 1 130 139 discriminator 2
	call	xTaskGetTickCount
.LVL74:
	j	.L71
.LVL75:
.L47:
	.loc 1 134 5 is_stmt 1
	.loc 1 134 37 is_stmt 0
	li	a6,3
	.loc 1 134 33
	srli	a5,a1,2
	.loc 1 134 37
	mul	a5,a5,a6
	.loc 1 137 13
	add	a6,a0,a1
	.loc 1 137 8
	li	a7,61
	.loc 1 134 19
	sw	a5,0(a4)
	.loc 1 137 5 is_stmt 1
	.loc 1 137 8 is_stmt 0
	lbu	t1,-1(a6)
	bne	t1,a7,.L51
	.loc 1 138 9 is_stmt 1
	.loc 1 138 24 is_stmt 0
	addi	a5,a5,-1
	sw	a5,0(a4)
.L51:
	.loc 1 141 5 is_stmt 1
	.loc 1 141 8 is_stmt 0
	lbu	a6,-2(a6)
	li	a5,61
	bne	a6,a5,.L52
	.loc 1 142 9 is_stmt 1
	.loc 1 142 24 is_stmt 0
	lw	a5,0(a4)
	addi	a5,a5,-1
	sw	a5,0(a4)
.L52:
	.loc 1 145 5 is_stmt 1
	.loc 1 145 8 is_stmt 0
	lw	a5,0(a4)
	bgtu	a5,a2,.L53
	.loc 1 157 62
	lui	t3,%hi(.LANCHOR3)
	.loc 1 145 8
	mv	a6,a0
	.loc 1 156 19
	li	a7,0
	.loc 1 157 45
	li	t4,61
	.loc 1 157 62
	addi	t3,t3,%lo(.LANCHOR3)
.LVL76:
.L54:
	.loc 1 156 24 is_stmt 1 discriminator 1
	.loc 1 156 5 is_stmt 0 discriminator 1
	sub	a5,a6,a0
	bltu	a5,a1,.L63
	.loc 1 177 12
	li	s0,1
	j	.L44
.LVL77:
.L53:
	.loc 1 146 9 is_stmt 1
	.loc 1 146 14
	.loc 1 146 16
	.loc 1 146 99 is_stmt 0
	call	xPortIsInsideInterrupt
.LVL78:
	.loc 1 146 16
	beq	a0,zero,.L55
	.loc 1 146 126 discriminator 1
	call	xTaskGetTickCountFromISR
.LVL79:
.L72:
	.loc 1 146 155 discriminator 2
	mv	a1,a0
	.loc 1 146 16 discriminator 2
	lui	a3,%hi(.LC0)
	lui	a2,%hi(.LC1)
	lui	a0,%hi(.LC3)
	li	a4,146
	addi	a3,a3,%lo(.LC0)
	addi	a2,a2,%lo(.LC1)
	addi	a0,a0,%lo(.LC3)
	call	bl_printk
.LVL80:
	.loc 1 146 211 is_stmt 1 discriminator 2
	.loc 1 146 220 discriminator 2
	.loc 1 147 9 discriminator 2
	.loc 1 147 16 is_stmt 0 discriminator 2
	j	.L44
.L55:
	.loc 1 146 155 discriminator 2
	call	xTaskGetTickCount
.LVL81:
	j	.L72
.LVL82:
.L63:
	.loc 1 157 9 is_stmt 1
	.loc 1 157 24 is_stmt 0
	lbu	a5,0(a6)
	.loc 1 157 45
	li	a2,0
	beq	a5,t4,.L57
.LVL83:
	.loc 1 157 62 discriminator 2
	add	a5,t3,a5
	.loc 1 157 45 discriminator 2
	lb	a2,0(a5)
.LVL84:
.L57:
	.loc 1 158 9 is_stmt 1 discriminator 4
	.loc 1 158 24 is_stmt 0 discriminator 4
	lbu	t1,1(a6)
	.loc 1 158 45 discriminator 4
	li	a5,0
	beq	t1,t4,.L58
.LVL85:
	.loc 1 158 62 discriminator 2
	add	t1,t3,t1
	.loc 1 158 45 discriminator 2
	lb	a5,0(t1)
.LVL86:
.L58:
	.loc 1 159 9 is_stmt 1 discriminator 4
	.loc 1 159 24 is_stmt 0 discriminator 4
	lbu	t5,2(a6)
	.loc 1 159 45 discriminator 4
	li	t1,0
	beq	t5,t4,.L59
.LVL87:
	.loc 1 159 62 discriminator 2
	add	t5,t3,t5
	.loc 1 159 45 discriminator 2
	lb	t1,0(t5)
.LVL88:
.L59:
	.loc 1 160 9 is_stmt 1 discriminator 4
	.loc 1 160 24 is_stmt 0 discriminator 4
	lbu	t5,3(a6)
	.loc 1 160 45 discriminator 4
	li	t6,0
	beq	t5,t4,.L60
.LVL89:
	.loc 1 160 62 discriminator 2
	add	t5,t3,t5
	.loc 1 160 45 discriminator 2
	lb	t6,0(t5)
.LVL90:
.L60:
	.loc 1 162 9 is_stmt 1 discriminator 4
	.loc 1 164 9 discriminator 4
	.loc 1 164 12 is_stmt 0 discriminator 4
	lw	t5,0(a4)
	bleu	t5,a7,.L68
	.loc 1 162 28
	slli	a2,a2,18
.LVL91:
	.loc 1 162 50
	slli	a5,a5,12
.LVL92:
	.loc 1 162 38
	add	a5,a2,a5
.LVL93:
	.loc 1 162 72
	slli	t1,t1,6
.LVL94:
	.loc 1 162 60
	add	a5,a5,t1
	.loc 1 162 16
	add	a5,a5,t6
	.loc 1 165 13 is_stmt 1
	.loc 1 165 30 is_stmt 0
	add	a2,a3,a7
	.loc 1 165 40
	srli	t5,a5,16
	.loc 1 165 30
	sb	t5,0(a2)
	.loc 1 168 12
	lw	a2,0(a4)
	.loc 1 165 26
	addi	t1,a7,1
.LVL95:
	.loc 1 168 9 is_stmt 1
	.loc 1 168 12 is_stmt 0
	bleu	a2,t1,.L61
	.loc 1 169 13 is_stmt 1
	.loc 1 169 30 is_stmt 0
	add	t1,a3,t1
.LVL96:
	.loc 1 169 40
	srli	t5,a5,8
	.loc 1 169 30
	sb	t5,0(t1)
	.loc 1 172 12
	lw	t1,0(a4)
	.loc 1 169 26
	addi	a2,a7,2
.LVL97:
	.loc 1 172 9 is_stmt 1
	.loc 1 172 12 is_stmt 0
	bleu	t1,a2,.L62
	.loc 1 173 13 is_stmt 1
.LVL98:
	.loc 1 173 30 is_stmt 0
	add	a2,a3,a2
	sb	a5,0(a2)
	.loc 1 173 26
	addi	a2,a7,3
.LVL99:
.L62:
	addi	a6,a6,4
.LVL100:
	.loc 1 173 26 discriminator 1
	mv	a7,a2
	j	.L54
.LVL101:
.L68:
	mv	t1,a7
.LVL102:
.L61:
	.loc 1 172 9 is_stmt 1
	.loc 1 160 45 is_stmt 0
	mv	a2,t1
	j	.L62
	.cfi_endproc
.LFE7:
	.size	utils_base64decode, .-utils_base64decode
	.section	.bss.g_decodingTable,"aw",@nobits
	.align	2
	.set	.LANCHOR3,. + 0
	.type	g_decodingTable, @object
	.size	g_decodingTable, 256
g_decodingTable:
	.zero	256
	.section	.rodata.g_encodingTable,"a"
	.align	2
	.set	.LANCHOR0,. + 0
	.type	g_encodingTable, @object
	.size	g_encodingTable, 64
g_encodingTable:
	.ascii	"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz01234567"
	.ascii	"89+/"
	.section	.rodata.g_modTable,"a"
	.align	2
	.set	.LANCHOR1,. + 0
	.type	g_modTable, @object
	.size	g_modTable, 12
g_modTable:
	.word	0
	.word	2
	.word	1
	.section	.sbss.signal.0,"aw",@nobits
	.align	2
	.set	.LANCHOR2,. + 0
	.type	signal.0, @object
	.size	signal.0, 4
signal.0:
	.zero	4
	.text
.Letext0:
	.file 2 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.file 3 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/utils/include/utils_base64.h"
	.file 4 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h"
	.file 5 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
	.file 6 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/utils/include/utils_log.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x5bf
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF45
	.byte	0xc
	.4byte	.LASF46
	.4byte	.LASF47
	.4byte	.Ldebug_ranges0+0x58
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.4byte	.LASF2
	.byte	0x2
	.byte	0x22
	.byte	0x15
	.4byte	0x31
	.byte	0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.byte	0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF1
	.byte	0x2
	.4byte	.LASF3
	.byte	0x2
	.byte	0x28
	.byte	0x12
	.4byte	0x4b
	.byte	0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF4
	.byte	0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.byte	0x2
	.4byte	.LASF6
	.byte	0x2
	.byte	0x2e
	.byte	0x17
	.4byte	0x6a
	.byte	0x4
	.4byte	0x59
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF7
	.byte	0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF8
	.byte	0x2
	.4byte	.LASF9
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0x84
	.byte	0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.byte	0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.byte	0x5
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.byte	0x6
	.byte	0x4
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.byte	0x7
	.4byte	.LASF48
	.byte	0x7
	.byte	0x4
	.4byte	0x99
	.byte	0x3
	.byte	0xf
	.byte	0xe
	.4byte	0xc8
	.byte	0x8
	.4byte	.LASF14
	.byte	0
	.byte	0x8
	.4byte	.LASF15
	.byte	0x1
	.byte	0
	.byte	0x2
	.4byte	.LASF16
	.byte	0x3
	.byte	0x13
	.byte	0x2
	.4byte	0xa9
	.byte	0x9
	.byte	0x4
	.4byte	0x59
	.byte	0xa
	.4byte	0x25
	.4byte	0xea
	.byte	0xb
	.4byte	0x99
	.byte	0x3f
	.byte	0
	.byte	0xc
	.4byte	.LASF17
	.byte	0x1
	.byte	0xa
	.byte	0xf
	.4byte	0xda
	.byte	0x5
	.byte	0x3
	.4byte	g_encodingTable
	.byte	0xa
	.4byte	0x25
	.4byte	0x10c
	.byte	0xb
	.4byte	0x99
	.byte	0xff
	.byte	0
	.byte	0xc
	.4byte	.LASF18
	.byte	0x1
	.byte	0x14
	.byte	0xf
	.4byte	0xfc
	.byte	0x5
	.byte	0x3
	.4byte	g_decodingTable
	.byte	0xa
	.4byte	0x3f
	.4byte	0x12e
	.byte	0xb
	.4byte	0x99
	.byte	0x2
	.byte	0
	.byte	0xc
	.4byte	.LASF19
	.byte	0x1
	.byte	0x15
	.byte	0x10
	.4byte	0x11e
	.byte	0x5
	.byte	0x3
	.4byte	g_modTable
	.byte	0xd
	.4byte	.LASF37
	.byte	0x1
	.byte	0x79
	.byte	0xc
	.4byte	0xc8
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.4byte	0x2cd
	.byte	0xe
	.4byte	.LASF20
	.byte	0x1
	.byte	0x79
	.byte	0x2e
	.4byte	0x2cd
	.4byte	.LLST20
	.byte	0xe
	.4byte	.LASF21
	.byte	0x1
	.byte	0x79
	.byte	0x3d
	.4byte	0x78
	.4byte	.LLST21
	.byte	0xe
	.4byte	.LASF22
	.byte	0x1
	.byte	0x79
	.byte	0x53
	.4byte	0x78
	.4byte	.LLST22
	.byte	0xe
	.4byte	.LASF23
	.byte	0x1
	.byte	0x7a
	.byte	0x28
	.4byte	0xd4
	.4byte	.LLST23
	.byte	0xe
	.4byte	.LASF24
	.byte	0x1
	.byte	0x7a
	.byte	0x3f
	.4byte	0x2d3
	.4byte	.LLST24
	.byte	0xf
	.string	"i"
	.byte	0x1
	.byte	0x7c
	.byte	0xe
	.4byte	0x78
	.4byte	.LLST25
	.byte	0xf
	.string	"j"
	.byte	0x1
	.byte	0x7d
	.byte	0xe
	.4byte	0x78
	.4byte	.LLST26
	.byte	0x10
	.4byte	.LASF25
	.byte	0x1
	.byte	0x96
	.byte	0xe
	.4byte	0x78
	.4byte	.LLST27
	.byte	0x10
	.4byte	.LASF26
	.byte	0x1
	.byte	0x97
	.byte	0xe
	.4byte	0x78
	.4byte	.LLST28
	.byte	0x10
	.4byte	.LASF27
	.byte	0x1
	.byte	0x98
	.byte	0xe
	.4byte	0x78
	.4byte	.LLST29
	.byte	0xc
	.4byte	.LASF28
	.byte	0x1
	.byte	0x99
	.byte	0xe
	.4byte	0x78
	.byte	0x1
	.byte	0x6f
	.byte	0x10
	.4byte	.LASF29
	.byte	0x1
	.byte	0x9a
	.byte	0xe
	.4byte	0x78
	.4byte	.LLST30
	.byte	0x11
	.4byte	0x566
	.4byte	.LBB10
	.4byte	.Ldebug_ranges0+0x40
	.byte	0x1
	.byte	0x7f
	.byte	0x5
	.4byte	0x238
	.byte	0x12
	.4byte	.Ldebug_ranges0+0x40
	.byte	0x13
	.4byte	0x585
	.4byte	.LLST31
	.byte	0
	.byte	0
	.byte	0x14
	.4byte	.LVL69
	.4byte	0x590
	.byte	0x14
	.4byte	.LVL70
	.4byte	0x59c
	.byte	0x15
	.4byte	.LVL71
	.4byte	0x5a9
	.4byte	0x279
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x16
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x16
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0x82
	.byte	0
	.byte	0x14
	.4byte	.LVL74
	.4byte	0x5b5
	.byte	0x14
	.4byte	.LVL78
	.4byte	0x590
	.byte	0x14
	.4byte	.LVL79
	.4byte	0x59c
	.byte	0x15
	.4byte	.LVL80
	.4byte	0x5a9
	.4byte	0x2c3
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x16
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x16
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0x92
	.byte	0
	.byte	0x14
	.4byte	.LVL81
	.4byte	0x5b5
	.byte	0
	.byte	0x9
	.byte	0x4
	.4byte	0x65
	.byte	0x9
	.byte	0x4
	.4byte	0x78
	.byte	0x17
	.4byte	.LASF49
	.byte	0x1
	.byte	0x56
	.byte	0x6
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0x416
	.byte	0xe
	.4byte	.LASF30
	.byte	0x1
	.byte	0x56
	.byte	0x27
	.4byte	0x42a
	.4byte	.LLST11
	.byte	0xe
	.4byte	.LASF31
	.byte	0x1
	.byte	0x56
	.byte	0x57
	.4byte	0x440
	.4byte	.LLST12
	.byte	0xe
	.4byte	.LASF32
	.byte	0x1
	.byte	0x56
	.byte	0x8f
	.4byte	0xa0
	.4byte	.LLST13
	.byte	0xc
	.4byte	.LASF33
	.byte	0x1
	.byte	0x58
	.byte	0xb
	.4byte	0x446
	.byte	0x2
	.byte	0x91
	.byte	0x4c
	.byte	0x18
	.string	"c"
	.byte	0x1
	.byte	0x58
	.byte	0x1b
	.4byte	0x59
	.byte	0x2
	.byte	0x91
	.byte	0x4b
	.byte	0xf
	.string	"end"
	.byte	0x1
	.byte	0x59
	.byte	0x7
	.4byte	0x92
	.4byte	.LLST14
	.byte	0x10
	.4byte	.LASF34
	.byte	0x1
	.byte	0x59
	.byte	0x10
	.4byte	0x92
	.4byte	.LLST15
	.byte	0xf
	.string	"i"
	.byte	0x1
	.byte	0x59
	.byte	0x20
	.4byte	0x92
	.4byte	.LLST16
	.byte	0x19
	.4byte	.Ldebug_ranges0+0x20
	.4byte	0x403
	.byte	0x10
	.4byte	.LASF35
	.byte	0x1
	.byte	0x5c
	.byte	0xe
	.4byte	0x78
	.4byte	.LLST17
	.byte	0x10
	.4byte	.LASF36
	.byte	0x1
	.byte	0x5d
	.byte	0xe
	.4byte	0x78
	.4byte	.LLST18
	.byte	0x1a
	.4byte	.LASF39
	.byte	0x1
	.byte	0x5e
	.byte	0xe
	.4byte	0x78
	.byte	0x10
	.4byte	.LASF29
	.byte	0x1
	.byte	0x60
	.byte	0xe
	.4byte	0x78
	.4byte	.LLST19
	.byte	0x1b
	.4byte	.LVL38
	.4byte	0x3c4
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x4b
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x87
	.byte	0
	.byte	0
	.byte	0x1b
	.4byte	.LVL42
	.4byte	0x3da
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x4b
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x87
	.byte	0
	.byte	0
	.byte	0x1b
	.4byte	.LVL45
	.4byte	0x3f0
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x4b
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x87
	.byte	0
	.byte	0
	.byte	0x1c
	.4byte	.LVL61
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x87
	.byte	0
	.byte	0
	.byte	0
	.byte	0x1c
	.4byte	.LVL51
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x87
	.byte	0
	.byte	0
	.byte	0
	.byte	0x1d
	.4byte	0x92
	.4byte	0x42a
	.byte	0x1e
	.4byte	0xd4
	.byte	0x1e
	.4byte	0xa0
	.byte	0
	.byte	0x9
	.byte	0x4
	.4byte	0x416
	.byte	0x1f
	.4byte	0x440
	.byte	0x1e
	.4byte	0x2cd
	.byte	0x1e
	.4byte	0xa0
	.byte	0
	.byte	0x9
	.byte	0x4
	.4byte	0x430
	.byte	0xa
	.4byte	0x59
	.4byte	0x456
	.byte	0xb
	.4byte	0x99
	.byte	0x3
	.byte	0
	.byte	0xd
	.4byte	.LASF38
	.byte	0x1
	.byte	0x28
	.byte	0xc
	.4byte	0xc8
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0x566
	.byte	0xe
	.4byte	.LASF20
	.byte	0x1
	.byte	0x28
	.byte	0x2e
	.4byte	0x2cd
	.4byte	.LLST0
	.byte	0xe
	.4byte	.LASF21
	.byte	0x1
	.byte	0x28
	.byte	0x3d
	.4byte	0x78
	.4byte	.LLST1
	.byte	0xe
	.4byte	.LASF22
	.byte	0x1
	.byte	0x28
	.byte	0x53
	.4byte	0x78
	.4byte	.LLST2
	.byte	0xe
	.4byte	.LASF33
	.byte	0x1
	.byte	0x29
	.byte	0x28
	.4byte	0xd4
	.4byte	.LLST3
	.byte	0xe
	.4byte	.LASF24
	.byte	0x1
	.byte	0x29
	.byte	0x3f
	.4byte	0x2d3
	.4byte	.LLST4
	.byte	0xf
	.string	"i"
	.byte	0x1
	.byte	0x2b
	.byte	0xe
	.4byte	0x78
	.4byte	.LLST5
	.byte	0xf
	.string	"j"
	.byte	0x1
	.byte	0x2c
	.byte	0xe
	.4byte	0x78
	.4byte	.LLST6
	.byte	0x19
	.4byte	.Ldebug_ranges0+0
	.4byte	0x526
	.byte	0x10
	.4byte	.LASF35
	.byte	0x1
	.byte	0x3b
	.byte	0x12
	.4byte	0x78
	.4byte	.LLST7
	.byte	0x10
	.4byte	.LASF36
	.byte	0x1
	.byte	0x3c
	.byte	0x12
	.4byte	0x78
	.4byte	.LLST8
	.byte	0x10
	.4byte	.LASF39
	.byte	0x1
	.byte	0x3d
	.byte	0x12
	.4byte	0x78
	.4byte	.LLST9
	.byte	0x10
	.4byte	.LASF29
	.byte	0x1
	.byte	0x3f
	.byte	0x12
	.4byte	0x78
	.4byte	.LLST10
	.byte	0
	.byte	0x14
	.4byte	.LVL1
	.4byte	0x590
	.byte	0x14
	.4byte	.LVL2
	.4byte	0x59c
	.byte	0x14
	.4byte	.LVL3
	.4byte	0x5a9
	.byte	0x14
	.4byte	.LVL6
	.4byte	0x5b5
	.byte	0x14
	.4byte	.LVL15
	.4byte	0x590
	.byte	0x14
	.4byte	.LVL16
	.4byte	0x59c
	.byte	0x14
	.4byte	.LVL17
	.4byte	0x5b5
	.byte	0
	.byte	0x20
	.4byte	.LASF50
	.byte	0x1
	.byte	0x17
	.byte	0xd
	.byte	0x1
	.4byte	0x590
	.byte	0xc
	.4byte	.LASF40
	.byte	0x1
	.byte	0x19
	.byte	0x14
	.4byte	0x3f
	.byte	0x5
	.byte	0x3
	.4byte	signal.0
	.byte	0x21
	.string	"i"
	.byte	0x1
	.byte	0x1a
	.byte	0xd
	.4byte	0x3f
	.byte	0
	.byte	0x22
	.4byte	.LASF41
	.4byte	.LASF41
	.byte	0x4
	.byte	0x98
	.byte	0xc
	.byte	0x23
	.4byte	.LASF42
	.4byte	.LASF42
	.byte	0x5
	.2byte	0x558
	.byte	0xc
	.byte	0x22
	.4byte	.LASF43
	.4byte	.LASF43
	.byte	0x6
	.byte	0x81
	.byte	0x6
	.byte	0x23
	.4byte	.LASF44
	.4byte	.LASF44
	.byte	0x5
	.2byte	0x547
	.byte	0xc
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
	.byte	0x3
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
	.byte	0x8
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x9
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
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
	.byte	0xe
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
	.byte	0xf
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
	.byte	0x12
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x13
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x14
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x15
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
	.byte	0x16
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x17
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
	.byte	0x18
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
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x19
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1a
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
	.byte	0x1b
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1c
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x1d
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
	.byte	0x1e
	.byte	0x5
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1f
	.byte	0x15
	.byte	0x1
	.byte	0x27
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x20
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
	.byte	0x20
	.byte	0xb
	.byte	0x1
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
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST20:
	.4byte	.LVL65
	.4byte	.LVL69-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL69-1
	.4byte	.LVL75
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL75
	.4byte	.LVL78-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL78-1
	.4byte	.LVL82
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL82
	.4byte	.LFE7
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL65
	.4byte	.LVL69-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL69-1
	.4byte	.LVL75
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL75
	.4byte	.LVL78-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL78-1
	.4byte	.LVL82
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL82
	.4byte	.LFE7
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL65
	.4byte	.LVL69-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL69-1
	.4byte	.LVL75
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL75
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL76
	.4byte	.LVL77
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL77
	.4byte	.LVL78-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL78-1
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL65
	.4byte	.LVL69-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL69-1
	.4byte	.LVL75
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL75
	.4byte	.LVL78-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL78-1
	.4byte	.LVL82
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL82
	.4byte	.LFE7
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL65
	.4byte	.LVL69-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL69-1
	.4byte	.LVL75
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	.LVL75
	.4byte	.LVL78-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL78-1
	.4byte	.LVL82
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	.LVL82
	.4byte	.LFE7
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL65
	.4byte	.LVL72
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL73
	.4byte	.LVL76
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL76
	.4byte	.LVL77
	.2byte	0x6
	.byte	0x80
	.byte	0
	.byte	0x7a
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL77
	.4byte	.LVL82
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL82
	.4byte	.LVL83
	.2byte	0x6
	.byte	0x80
	.byte	0
	.byte	0x7a
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL83
	.4byte	.LVL85
	.2byte	0x8
	.byte	0x80
	.byte	0
	.byte	0x7a
	.byte	0
	.byte	0x1c
	.byte	0x23
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL85
	.4byte	.LVL87
	.2byte	0x8
	.byte	0x80
	.byte	0
	.byte	0x7a
	.byte	0
	.byte	0x1c
	.byte	0x23
	.byte	0x2
	.byte	0x9f
	.4byte	.LVL87
	.4byte	.LVL89
	.2byte	0x8
	.byte	0x80
	.byte	0
	.byte	0x7a
	.byte	0
	.byte	0x1c
	.byte	0x23
	.byte	0x3
	.byte	0x9f
	.4byte	.LVL89
	.4byte	.LVL100
	.2byte	0x8
	.byte	0x80
	.byte	0
	.byte	0x7a
	.byte	0
	.byte	0x1c
	.byte	0x23
	.byte	0x4
	.byte	0x9f
	.4byte	.LVL100
	.4byte	.LVL101
	.2byte	0x6
	.byte	0x80
	.byte	0
	.byte	0x7a
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL101
	.4byte	.LFE7
	.2byte	0x8
	.byte	0x80
	.byte	0
	.byte	0x7a
	.byte	0
	.byte	0x1c
	.byte	0x23
	.byte	0x4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL65
	.4byte	.LVL72
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL73
	.4byte	.LVL76
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL76
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x61
	.4byte	.LVL77
	.4byte	.LVL82
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL82
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x61
	.4byte	.LVL95
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL96
	.4byte	.LVL97
	.2byte	0x3
	.byte	0x81
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL97
	.4byte	.LVL98
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL98
	.4byte	.LVL99
	.2byte	0x3
	.byte	0x81
	.byte	0x3
	.byte	0x9f
	.4byte	.LVL99
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL101
	.4byte	.LVL102
	.2byte	0x1
	.byte	0x61
	.4byte	.LVL102
	.4byte	.LFE7
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL84
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL101
	.4byte	.LVL102
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL86
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL101
	.4byte	.LVL102
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL88
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL101
	.4byte	.LVL102
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL90
	.4byte	.LVL91
	.2byte	0x12
	.byte	0x7c
	.byte	0
	.byte	0x42
	.byte	0x24
	.byte	0x7f
	.byte	0
	.byte	0x3c
	.byte	0x24
	.byte	0x22
	.byte	0x76
	.byte	0
	.byte	0x36
	.byte	0x24
	.byte	0x22
	.byte	0x8f
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL91
	.4byte	.LVL92
	.2byte	0x10
	.byte	0x7f
	.byte	0
	.byte	0x3c
	.byte	0x24
	.byte	0x76
	.byte	0
	.byte	0x36
	.byte	0x24
	.byte	0x22
	.byte	0x7c
	.byte	0
	.byte	0x22
	.byte	0x8f
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL92
	.4byte	.LVL93
	.2byte	0xe
	.byte	0x76
	.byte	0
	.byte	0x36
	.byte	0x24
	.byte	0x7c
	.byte	0
	.byte	0x22
	.byte	0x7f
	.byte	0
	.byte	0x22
	.byte	0x8f
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL101
	.4byte	.LVL102
	.2byte	0x12
	.byte	0x7c
	.byte	0
	.byte	0x42
	.byte	0x24
	.byte	0x7f
	.byte	0
	.byte	0x3c
	.byte	0x24
	.byte	0x22
	.byte	0x76
	.byte	0
	.byte	0x36
	.byte	0x24
	.byte	0x22
	.byte	0x8f
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL65
	.4byte	.LVL66
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL66
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL37
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL53
	.4byte	.LVL56
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL56
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL37
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL54
	.4byte	.LVL56
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL56
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL37
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL55
	.4byte	.LVL56
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL56
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x67
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL36
	.4byte	.LVL38
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL38
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL42
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL45
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL56
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL61
	.4byte	.LVL62
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL39
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL57
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL61
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL50
	.4byte	.LVL51-1
	.2byte	0x9
	.byte	0x91
	.byte	0
	.byte	0x7f
	.byte	0
	.byte	0x1c
	.byte	0x8
	.byte	0x34
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0x9
	.byte	0x91
	.byte	0
	.byte	0x7f
	.byte	0
	.byte	0x1c
	.byte	0x8
	.byte	0x34
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL63
	.4byte	.LVL64
	.2byte	0x9
	.byte	0x91
	.byte	0
	.byte	0x7f
	.byte	0
	.byte	0x1c
	.byte	0x8
	.byte	0x33
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL64
	.4byte	.LFE6
	.2byte	0x9
	.byte	0x91
	.byte	0
	.byte	0x7f
	.byte	0
	.byte	0x1c
	.byte	0x8
	.byte	0x34
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL40
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL57
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL43
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL58
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x68
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1-1
	.4byte	.LVL7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL12
	.4byte	.LVL14
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL15-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL15-1
	.4byte	.LVL18
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL34
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL1-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL1-1
	.4byte	.LVL7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL10
	.4byte	.LVL14
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL15-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL15-1
	.4byte	.LVL18
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL34
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL1-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL1-1
	.4byte	.LVL7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL8
	.4byte	.LVL14
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL15-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL15-1
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL0
	.4byte	.LVL1-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL1-1
	.4byte	.LVL7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL15-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL15-1
	.4byte	.LVL18
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL0
	.4byte	.LVL1-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL1-1
	.4byte	.LVL7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL15-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL15-1
	.4byte	.LVL18
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL0
	.4byte	.LVL4
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL9
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL14
	.4byte	.LVL18
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL19
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x3
	.byte	0x7c
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x3
	.byte	0x7c
	.byte	0x2
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL34
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL0
	.4byte	.LVL4
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL9
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL14
	.2byte	0x6
	.byte	0x81
	.byte	0
	.byte	0x7d
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL18
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LVL28
	.2byte	0x6
	.byte	0x81
	.byte	0
	.byte	0x7d
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LVL30
	.2byte	0x8
	.byte	0x81
	.byte	0
	.byte	0x7d
	.byte	0
	.byte	0x1c
	.byte	0x23
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x8
	.byte	0x81
	.byte	0
	.byte	0x7d
	.byte	0
	.byte	0x1c
	.byte	0x23
	.byte	0x4
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LFE5
	.2byte	0x6
	.byte	0x81
	.byte	0
	.byte	0x7d
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL20
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL32
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL23
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL26
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x5c
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
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB2
	.4byte	.LBE2
	.4byte	.LBB3
	.4byte	.LBE3
	.4byte	.LBB4
	.4byte	.LBE4
	.4byte	0
	.4byte	0
	.4byte	.LBB5
	.4byte	.LBE5
	.4byte	.LBB6
	.4byte	.LBE6
	.4byte	.LBB7
	.4byte	.LBE7
	.4byte	0
	.4byte	0
	.4byte	.LBB10
	.4byte	.LBE10
	.4byte	.LBB13
	.4byte	.LBE13
	.4byte	0
	.4byte	0
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF50:
	.string	"build_decoding_table"
.LASF35:
	.string	"octet_a"
.LASF36:
	.string	"octet_b"
.LASF39:
	.string	"octet_c"
.LASF40:
	.string	"signal"
.LASF47:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/utils"
.LASF49:
	.string	"utils_base64_encode_stream"
.LASF2:
	.string	"int8_t"
.LASF46:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/utils/src/utils_base64.c"
.LASF20:
	.string	"data"
.LASF7:
	.string	"unsigned char"
.LASF43:
	.string	"bl_printk"
.LASF10:
	.string	"long unsigned int"
.LASF8:
	.string	"short unsigned int"
.LASF31:
	.string	"write_data"
.LASF33:
	.string	"encodedData"
.LASF24:
	.string	"outputLength"
.LASF25:
	.string	"sextet_a"
.LASF26:
	.string	"sextet_b"
.LASF27:
	.string	"sextet_c"
.LASF28:
	.string	"sextet_d"
.LASF18:
	.string	"g_decodingTable"
.LASF38:
	.string	"utils_base64encode"
.LASF29:
	.string	"triple"
.LASF19:
	.string	"g_modTable"
.LASF12:
	.string	"unsigned int"
.LASF22:
	.string	"outputLenMax"
.LASF11:
	.string	"long long unsigned int"
.LASF6:
	.string	"uint8_t"
.LASF41:
	.string	"xPortIsInsideInterrupt"
.LASF17:
	.string	"g_encodingTable"
.LASF48:
	.string	"iotx_err"
.LASF3:
	.string	"int32_t"
.LASF5:
	.string	"long long int"
.LASF45:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
.LASF13:
	.string	"char"
.LASF42:
	.string	"xTaskGetTickCountFromISR"
.LASF32:
	.string	"opaque"
.LASF1:
	.string	"short int"
.LASF15:
	.string	"SUCCESS_RETURN"
.LASF9:
	.string	"uint32_t"
.LASF4:
	.string	"long int"
.LASF34:
	.string	"remainder"
.LASF14:
	.string	"FAIL_RETURN"
.LASF0:
	.string	"signed char"
.LASF23:
	.string	"decodedData"
.LASF21:
	.string	"inputLength"
.LASF44:
	.string	"xTaskGetTickCount"
.LASF37:
	.string	"utils_base64decode"
.LASF16:
	.string	"iotx_err_t"
.LASF30:
	.string	"read_data"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
