	.file	"bl_sec_sha.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.bl_sec_sha_init,"ax",@progbits
	.align	1
	.globl	bl_sec_sha_init
	.type	bl_sec_sha_init, @function
bl_sec_sha_init:
.LFB8:
	.file 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/sec_common/bl_sec_sha.c"
	.loc 1 52 1
	.cfi_startproc
	.loc 1 53 5
	.loc 1 52 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 53 5
	li	a0,0
	.loc 1 52 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 53 5
	call	Sec_Eng_SHA_Enable_Link
.LVL0:
	.loc 1 55 5 is_stmt 1
	.loc 1 56 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE8:
	.size	bl_sec_sha_init, .-bl_sec_sha_init
	.section	.text.bl_sha_mutex_take,"ax",@progbits
	.align	1
	.globl	bl_sha_mutex_take
	.type	bl_sha_mutex_take, @function
bl_sha_mutex_take:
.LFB9:
	.loc 1 59 1 is_stmt 1
	.cfi_startproc
	.loc 1 60 5
	.loc 1 59 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 60 5
	call	vTaskEnterCritical
.LVL1:
	.loc 1 61 5 is_stmt 1
	.loc 1 62 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE9:
	.size	bl_sha_mutex_take, .-bl_sha_mutex_take
	.section	.text.bl_sha_mutex_give,"ax",@progbits
	.align	1
	.globl	bl_sha_mutex_give
	.type	bl_sha_mutex_give, @function
bl_sha_mutex_give:
.LFB10:
	.loc 1 65 1 is_stmt 1
	.cfi_startproc
	.loc 1 66 5
	.loc 1 65 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 66 5
	call	vTaskExitCritical
.LVL2:
	.loc 1 67 5 is_stmt 1
	.loc 1 68 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE10:
	.size	bl_sha_mutex_give, .-bl_sha_mutex_give
	.section	.text.bl_sha_init,"ax",@progbits
	.align	1
	.globl	bl_sha_init
	.type	bl_sha_init, @function
bl_sha_init:
.LFB12:
	.loc 1 95 1 is_stmt 1
	.cfi_startproc
.LVL3:
	.loc 1 96 5
	.loc 1 96 8 is_stmt 0
	li	a5,2
	bgtu	a1,a5,.L9
	.loc 1 95 1
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
.LBB4:
.LBB5:
	.loc 1 72 19
	li	a5,258
	sh	a5,12(sp)
	.loc 1 85 19
	addi	a5,sp,16
.LBE5:
.LBE4:
	.loc 1 95 1
	sw	ra,28(sp)
	sw	s1,20(sp)
	sw	s2,16(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 8, -8
.LBB8:
.LBB6:
	.loc 1 85 19
	add	a5,a5,a1
	.loc 1 72 19
	sb	zero,14(sp)
	.loc 1 85 19
	lbu	s0,-4(a5)
	mv	s2,a1
.LBE6:
.LBE8:
	.loc 1 99 5 is_stmt 1
.LVL4:
.LBB9:
.LBB7:
	.loc 1 72 5
	.loc 1 84 5
	.loc 1 85 9
.LBE7:
.LBE9:
	.loc 1 101 5
	li	a2,192
	li	a1,0
.LVL5:
	mv	s1,a0
	call	memset
.LVL6:
	.loc 1 102 5
	.loc 1 104 17 is_stmt 0
	lhu	a5,24(s1)
	andi	s0,s0,7
.LVL7:
	slli	s0,s0,2
	andi	a5,a5,-1565
	ori	s0,s0,1536
	or	s0,s0,a5
	.loc 1 107 5
	lui	a2,%hi(.LANCHOR0)
	.loc 1 102 15
	sw	s2,0(s1)
	.loc 1 103 5 is_stmt 1
.LVL8:
	.loc 1 104 5
	.loc 1 105 5
	.loc 1 106 5
	.loc 1 104 17 is_stmt 0
	sh	s0,24(s1)
	.loc 1 107 5 is_stmt 1
	addi	a0,s1,4
	addi	a4,s1,128
	addi	a3,s1,64
	addi	a2,a2,%lo(.LANCHOR0)
	li	a1,0
	call	Sec_Eng_SHA256_Link_Init
.LVL9:
	.loc 1 108 5
	.loc 1 109 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	lw	s1,20(sp)
	.cfi_restore 9
.LVL10:
	lw	s2,16(sp)
	.cfi_restore 18
.LVL11:
	.loc 1 108 12
	li	a0,0
	.loc 1 109 1
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
.LVL12:
	jr	ra
.LVL13:
.L9:
	.loc 1 97 16
	li	a0,-1
.LVL14:
	.loc 1 109 1
	ret
	.cfi_endproc
.LFE12:
	.size	bl_sha_init, .-bl_sha_init
	.section	.text.bl_sha_clone,"ax",@progbits
	.align	1
	.globl	bl_sha_clone
	.type	bl_sha_clone, @function
bl_sha_clone:
.LFB13:
	.loc 1 112 1 is_stmt 1
	.cfi_startproc
.LVL15:
	.loc 1 113 5
	.loc 1 113 8 is_stmt 0
	beq	a0,zero,.L16
	.loc 1 114 16 discriminator 1
	li	a5,-1
	.loc 1 113 9 discriminator 1
	beq	a1,zero,.L19
	.loc 1 112 1
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 117 10
	li	a2,192
	.loc 1 112 1
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	mv	s0,a0
	.loc 1 117 5 is_stmt 1
	.loc 1 117 10 is_stmt 0
	call	memcpy
.LVL16:
	.loc 1 118 5 is_stmt 1
	.loc 1 118 23 is_stmt 0
	addi	a5,s0,64
	.loc 1 118 21
	sw	a5,12(s0)
	.loc 1 119 5 is_stmt 1
	.loc 1 119 27 is_stmt 0
	addi	a5,s0,128
	.loc 1 119 25
	sw	a5,16(s0)
	.loc 1 120 5 is_stmt 1
	.loc 1 121 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
.LVL17:
	.loc 1 120 12
	li	a5,0
.LVL18:
	.loc 1 121 1
	mv	a0,a5
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL19:
.L16:
	.loc 1 114 16
	li	a5,-1
.L19:
	.loc 1 121 1
	mv	a0,a5
.LVL20:
	ret
	.cfi_endproc
.LFE13:
	.size	bl_sha_clone, .-bl_sha_clone
	.section	.text.bl_sha_update,"ax",@progbits
	.align	1
	.globl	bl_sha_update
	.type	bl_sha_update, @function
bl_sha_update:
.LFB14:
	.loc 1 124 1 is_stmt 1
	.cfi_startproc
.LVL21:
	.loc 1 125 5
	.loc 1 124 1 is_stmt 0
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s2,32(sp)
	sw	s3,28(sp)
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.loc 1 125 42
	addi	s2,a0,24
	.loc 1 125 5
	lui	s3,%hi(.LANCHOR0)
	.loc 1 124 1
	sw	s0,40(sp)
	sw	s1,36(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	mv	s0,a0
	mv	s1,a1
	sw	a2,12(sp)
	.loc 1 125 5
	mv	a1,s2
.LVL22:
	li	a2,40
.LVL23:
	addi	a0,s3,%lo(.LANCHOR0)
.LVL24:
	.loc 1 124 1
	sw	ra,44(sp)
	.cfi_offset 1, -4
	.loc 1 125 5
	call	BL602_MemCpy_Fast
.LVL25:
	.loc 1 126 5 is_stmt 1
	lw	a3,12(sp)
	mv	a2,s1
	li	a1,0
	addi	a0,s0,4
	call	Sec_Eng_SHA256_Link_Update
.LVL26:
	.loc 1 127 5
	addi	a1,s3,%lo(.LANCHOR0)
	mv	a0,s2
	li	a2,40
	call	BL602_MemCpy_Fast
.LVL27:
	.loc 1 128 5
	.loc 1 129 1 is_stmt 0
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
.LVL28:
	lw	s1,36(sp)
	.cfi_restore 9
.LVL29:
	lw	s2,32(sp)
	.cfi_restore 18
.LVL30:
	lw	s3,28(sp)
	.cfi_restore 19
	li	a0,0
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
.LVL31:
	jr	ra
	.cfi_endproc
.LFE14:
	.size	bl_sha_update, .-bl_sha_update
	.section	.text.bl_sha_finish,"ax",@progbits
	.align	1
	.globl	bl_sha_finish
	.type	bl_sha_finish, @function
bl_sha_finish:
.LFB15:
	.loc 1 132 1 is_stmt 1
	.cfi_startproc
.LVL32:
	.loc 1 133 5
	.loc 1 132 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	s1,4(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	mv	s0,a0
	mv	s1,a1
	.loc 1 133 5
	addi	a1,a0,24
.LVL33:
	lui	a0,%hi(.LANCHOR0)
.LVL34:
	li	a2,40
	addi	a0,a0,%lo(.LANCHOR0)
	.loc 1 132 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 133 5
	call	BL602_MemCpy_Fast
.LVL35:
	.loc 1 134 5 is_stmt 1
	mv	a2,s1
	addi	a0,s0,4
	li	a1,0
	call	Sec_Eng_SHA256_Link_Finish
.LVL36:
	.loc 1 135 5
	.loc 1 136 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
.LVL37:
	lw	s1,4(sp)
	.cfi_restore 9
.LVL38:
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE15:
	.size	bl_sha_finish, .-bl_sha_finish
	.section	.rodata.tc_sha1.str1.4,"aMS",@progbits,1
	.align	2
.LC2:
	.string	"Over!\r\n"
	.align	2
.LC3:
	.string	"Test addr %p\r\n"
	.align	2
.LC4:
	.string	"SHA1 #%d failed\r\n"
	.section	.text.tc_sha1,"ax",@progbits
	.align	1
	.globl	tc_sha1
	.type	tc_sha1, @function
tc_sha1:
.LFB16:
	.loc 1 145 1 is_stmt 1
	.cfi_startproc
	.loc 1 146 5
	.loc 1 147 5
	.loc 1 145 1 is_stmt 0
	addi	sp,sp,-192
	.cfi_def_cfa_offset 192
	.loc 1 147 25
	li	a5,1
	.loc 1 149 19
	lui	a1,%hi(.LANCHOR1)
	.loc 1 147 25
	sw	a5,8(sp)
	.loc 1 149 19
	li	a2,96
	.loc 1 147 25
	li	a5,2
	.loc 1 149 19
	addi	a1,a1,%lo(.LANCHOR1)
	addi	a0,sp,48
	.loc 1 145 1
	sw	s6,160(sp)
	sw	s7,156(sp)
	sw	s8,152(sp)
	sw	s9,148(sp)
	sw	ra,188(sp)
	sw	s0,184(sp)
	sw	s1,180(sp)
	sw	s2,176(sp)
	sw	s3,172(sp)
	sw	s4,168(sp)
	sw	s5,164(sp)
	.cfi_offset 22, -32
	.cfi_offset 23, -36
	.cfi_offset 24, -40
	.cfi_offset 25, -44
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.loc 1 147 25
	sw	zero,4(sp)
	sw	a5,12(sp)
	.loc 1 148 5 is_stmt 1
	.loc 1 149 5
.LBB10:
	.loc 1 168 9 is_stmt 0
	lui	s6,%hi(.LC3)
.LBE10:
	.loc 1 149 19
	call	memcpy
.LVL39:
.LBB19:
	.loc 1 168 9
	li	s7,8192
.LBB11:
.LBB12:
	.loc 1 172 17
	lui	s8,%hi(.LANCHOR2)
.LBE12:
	.loc 1 170 13
	li	s9,3
.L34:
.LBE11:
.LBE19:
	.loc 1 155 5 is_stmt 1
.LBB20:
	.loc 1 156 9
	.loc 1 157 9
	.loc 1 159 9
.LBB15:
	.loc 1 159 14
.LVL40:
	.loc 1 159 25
.LBE15:
.LBE20:
	.loc 1 145 1 is_stmt 0
	li	s2,5
.LVL41:
.L30:
.LBB21:
.LBB16:
	.loc 1 160 13 is_stmt 1
	.loc 1 160 22 is_stmt 0
	li	a0,64
	call	malloc
.LVL42:
	mv	s1,a0
.LVL43:
	.loc 1 161 13 is_stmt 1
	.loc 1 161 19 is_stmt 0
	li	a0,192
	call	malloc
.LVL44:
	mv	s0,a0
.LVL45:
	.loc 1 162 13 is_stmt 1
	.loc 1 162 16 is_stmt 0
	beq	s1,zero,.L27
	.loc 1 162 25 discriminator 1
	bne	a0,zero,.L28
.L27:
	.loc 1 163 17 is_stmt 1
	lui	a0,%hi(.LC2)
	addi	a0,a0,%lo(.LC2)
	call	printf
.LVL46:
.L29:
	.loc 1 164 17 discriminator 1
	.loc 1 165 17 discriminator 1
	.loc 1 164 23 discriminator 1
	j	.L29
.L28:
	.loc 1 159 32 discriminator 2
.LVL47:
	.loc 1 159 25 discriminator 2
	.loc 1 159 9 is_stmt 0 discriminator 2
	addi	s2,s2,-1
.LVL48:
	bne	s2,zero,.L30
.LBE16:
	.loc 1 168 9 is_stmt 1
	mv	a1,a0
	addi	a0,s6,%lo(.LC3)
	call	printf
.LVL49:
	.loc 1 169 9
.LBB17:
	.loc 1 169 14
	.loc 1 169 25
.LBE17:
	.loc 1 168 9 is_stmt 0
	addi	s5,s7,1808
.LVL50:
.L31:
.LBB18:
	.loc 1 170 25 is_stmt 1
	addi	s4,sp,4
	addi	s3,sp,48
	.loc 1 170 20 is_stmt 0
	li	s2,0
.LVL51:
.L33:
.LBB13:
	.loc 1 171 17 is_stmt 1
	.loc 1 172 17
	li	a2,43
	addi	a1,s8,%lo(.LANCHOR2)
	mv	a0,s1
	call	memcpy
.LVL52:
	.loc 1 173 17
	lw	a1,0(s4)
	mv	a0,s0
	call	bl_sha_init
.LVL53:
	.loc 1 174 17
	li	a2,43
	mv	a1,s1
	mv	a0,s0
	call	bl_sha_update
.LVL54:
	.loc 1 175 17
	li	a2,32
	li	a1,0
	addi	a0,sp,16
	call	memset
.LVL55:
	.loc 1 176 17
	addi	a1,sp,16
	mv	a0,s0
	call	bl_sha_finish
.LVL56:
	.loc 1 177 17
	.loc 1 177 21 is_stmt 0
	li	a2,32
	mv	a1,s3
	addi	a0,sp,16
	call	memcmp
.LVL57:
	.loc 1 177 20
	bne	a0,zero,.L43
.LBE13:
	.loc 1 170 63 is_stmt 1 discriminator 2
	addi	s2,s2,1
.LVL58:
	.loc 1 170 25 discriminator 2
	.loc 1 170 13 is_stmt 0 discriminator 2
	addi	s4,s4,4
	addi	s3,s3,32
	bne	s2,s9,.L33
	.loc 1 169 40 is_stmt 1 discriminator 2
.LVL59:
	.loc 1 169 25 discriminator 2
	.loc 1 169 9 is_stmt 0 discriminator 2
	addi	s5,s5,-1
.LVL60:
	bne	s5,zero,.L31
	j	.L34
.L43:
.LBB14:
	.loc 1 178 21 is_stmt 1
	lui	a0,%hi(.LC4)
	mv	a1,s2
	addi	a0,a0,%lo(.LC4)
	call	printf
.LVL61:
	.loc 1 179 21
.LBE14:
.LBE18:
.LBE21:
	.loc 1 185 1 is_stmt 0
	lw	ra,188(sp)
	.cfi_restore 1
	lw	s0,184(sp)
	.cfi_restore 8
.LVL62:
	lw	s1,180(sp)
	.cfi_restore 9
.LVL63:
	lw	s2,176(sp)
	.cfi_restore 18
.LVL64:
	lw	s3,172(sp)
	.cfi_restore 19
	lw	s4,168(sp)
	.cfi_restore 20
	lw	s5,164(sp)
	.cfi_restore 21
.LVL65:
	lw	s6,160(sp)
	.cfi_restore 22
	lw	s7,156(sp)
	.cfi_restore 23
	lw	s8,152(sp)
	.cfi_restore 24
	lw	s9,148(sp)
	.cfi_restore 25
	li	a0,0
	addi	sp,sp,192
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE16:
	.size	tc_sha1, .-tc_sha1
	.section	.rodata.bl_sec_sha_test.str1.4,"aMS",@progbits,1
	.align	2
.LC5:
	.string	"tc_sha1"
	.align	2
.LC6:
	.string	"Running test case %s\r\n"
	.align	2
.LC7:
	.string	"\t\tPassed\r\n"
	.align	2
.LC8:
	.string	"\t\tFailed\r\n"
	.section	.text.bl_sec_sha_test,"ax",@progbits
	.align	1
	.globl	bl_sec_sha_test
	.type	bl_sec_sha_test, @function
bl_sec_sha_test:
.LFB17:
	.loc 1 196 1 is_stmt 1
	.cfi_startproc
	.loc 1 197 5
.LBB22:
	.loc 1 197 10
.LVL66:
	.loc 1 197 21
	.loc 1 198 9
	lui	a1,%hi(.LC5)
	lui	a0,%hi(.LC6)
.LBE22:
	.loc 1 196 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
.LBB23:
	.loc 1 198 9
	addi	a1,a1,%lo(.LC5)
	addi	a0,a0,%lo(.LC6)
.LBE23:
	.loc 1 196 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
.LBB24:
	.loc 1 198 9
	call	printf
.LVL67:
	.loc 1 199 9 is_stmt 1
	.loc 1 199 13 is_stmt 0
	call	tc_sha1
.LVL68:
	.loc 1 199 12
	beq	a0,zero,.L46
	.loc 1 200 13 is_stmt 1
	lui	a0,%hi(.LC7)
	addi	a0,a0,%lo(.LC7)
.L49:
	.loc 1 202 13 is_stmt 0
	call	printf
.LVL69:
	.loc 1 197 21 is_stmt 1
.LBE24:
	.loc 1 205 5
	.loc 1 206 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL70:
.L46:
	.cfi_restore_state
.LBB25:
	.loc 1 202 13 is_stmt 1
	lui	a0,%hi(.LC8)
	addi	a0,a0,%lo(.LC8)
	j	.L49
.LBE25:
	.cfi_endproc
.LFE17:
	.size	bl_sec_sha_test, .-bl_sec_sha_test
	.globl	_fsymf_info_hosalbl_sec_sha
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	2
.LC9:
	.string	"hosal.bl_sec_sha"
	.comm	_fsymf_level_hosalbl_sec_sha,4,4
	.align	2
.LC10:
	.string	"hosal"
	.weak	_fsymc_level_hosal
	.section	.rodata
	.align	2
	.set	.LANCHOR1,. + 0
.LC1:
	.string	"/\324\341\306z-(\374\355\204\236\341\273v\3479\033\223\353\022"
	.zero	11
	.string	"s\016\020\233\327\250\243+\034\271\331\240\232\2422]$0X}\333\300\303\213\255\221\025%"
	.zero	3
	.ascii	"\327\250\373\263\007\327\200\224i\312\232\274\260\b.O\215VQ\344"
	.ascii	"m<\333v-\002\320\2777\311\345\222"
	.section	.rodata.tc_hash_input,"a"
	.align	2
	.set	.LANCHOR2,. + 0
	.type	tc_hash_input, @object
	.size	tc_hash_input, 44
tc_hash_input:
	.string	"The quick brown fox jumps over the lazy dog"
	.section	.sbss._fsymc_level_hosal,"aw",@nobits
	.align	2
	.type	_fsymc_level_hosal, @object
	.size	_fsymc_level_hosal, 4
_fsymc_level_hosal:
	.zero	4
	.section	.srodata.BLOG_HARD_DECLARE_DISABLE,"a"
	.align	2
	.type	BLOG_HARD_DECLARE_DISABLE, @object
	.size	BLOG_HARD_DECLARE_DISABLE, 4
BLOG_HARD_DECLARE_DISABLE:
	.zero	4
	.section	.static_blogcomponent_code.hosal,"a"
	.align	2
	.type	_fsymc_info_hosal, @object
	.size	_fsymc_info_hosal, 8
_fsymc_info_hosal:
	.word	_fsymc_level_hosal
	.word	.LC10
	.section	.static_blogfile_code.hosalbl_sec_sha,"a"
	.align	2
	.type	_fsymf_info_hosalbl_sec_sha, @object
	.size	_fsymf_info_hosalbl_sec_sha, 8
_fsymf_info_hosalbl_sec_sha:
	.word	_fsymf_level_hosalbl_sec_sha
	.word	.LC9
	.section	.wifi_ram,"aw"
	.align	2
	.set	.LANCHOR0,. + 0
	.type	working_link_cfg, @object
	.size	working_link_cfg, 40
working_link_cfg:
	.zero	40
	.text
.Letext0:
	.file 2 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 3 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h"
	.file 4 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 5 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/sec_common/bl_sec_common.h"
	.file 6 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_sec_eng.h"
	.file 7 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/blog/blog_type.h"
	.file 8 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/blog/blog.h"
	.file 9 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h"
	.file 10 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdlib.h"
	.file 11 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h"
	.file 12 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_common.h"
	.file 13 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h"
	.file 14 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xb5a
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF93
	.byte	0xc
	.4byte	.LASF94
	.4byte	.LASF95
	.4byte	.Ldebug_ranges0+0xc8
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
	.byte	0x3
	.4byte	.LASF11
	.byte	0x3
	.byte	0xd1
	.byte	0x16
	.4byte	0x7c
	.byte	0x5
	.byte	0x4
	.4byte	0x95
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.byte	0x6
	.4byte	0x95
	.byte	0x5
	.byte	0x4
	.4byte	0x9c
	.byte	0x3
	.4byte	.LASF13
	.byte	0x4
	.byte	0x18
	.byte	0x13
	.4byte	0x2c
	.byte	0x6
	.4byte	0xa7
	.byte	0x3
	.4byte	.LASF14
	.byte	0x4
	.byte	0x30
	.byte	0x14
	.4byte	0x54
	.byte	0x6
	.4byte	0xb8
	.byte	0x5
	.byte	0x4
	.4byte	0xa7
	.byte	0x7
	.byte	0x7
	.byte	0x4
	.4byte	0x7c
	.byte	0x5
	.byte	0x22
	.byte	0xe
	.4byte	0x102
	.byte	0x8
	.4byte	.LASF15
	.byte	0
	.byte	0x8
	.4byte	.LASF16
	.byte	0x1
	.byte	0x8
	.4byte	.LASF17
	.byte	0x2
	.byte	0x8
	.4byte	.LASF18
	.byte	0x3
	.byte	0x8
	.4byte	.LASF19
	.byte	0x4
	.byte	0x8
	.4byte	.LASF20
	.byte	0x5
	.byte	0
	.byte	0x3
	.4byte	.LASF21
	.byte	0x5
	.byte	0x29
	.byte	0x3
	.4byte	0xcf
	.byte	0x6
	.4byte	0x102
	.byte	0x9
	.byte	0x14
	.byte	0x5
	.byte	0x2f
	.byte	0x9
	.4byte	0x151
	.byte	0xa
	.4byte	.LASF22
	.byte	0x5
	.byte	0x30
	.byte	0xe
	.4byte	0x151
	.byte	0
	.byte	0xa
	.4byte	.LASF23
	.byte	0x5
	.byte	0x31
	.byte	0xf
	.4byte	0x161
	.byte	0x8
	.byte	0xa
	.4byte	.LASF24
	.byte	0x5
	.byte	0x32
	.byte	0xf
	.4byte	0x161
	.byte	0xc
	.byte	0xa
	.4byte	.LASF25
	.byte	0x5
	.byte	0x33
	.byte	0xe
	.4byte	0xb8
	.byte	0x10
	.byte	0
	.byte	0xb
	.4byte	0xb8
	.4byte	0x161
	.byte	0xc
	.4byte	0x7c
	.byte	0x1
	.byte	0
	.byte	0x5
	.byte	0x4
	.4byte	0xb8
	.byte	0x3
	.4byte	.LASF26
	.byte	0x5
	.byte	0x34
	.byte	0x3
	.4byte	0x113
	.byte	0xd
	.byte	0x28
	.byte	0x4
	.byte	0x5
	.byte	0x36
	.byte	0x9
	.4byte	0x1e8
	.byte	0xe
	.4byte	.LASF27
	.byte	0x5
	.byte	0x38
	.byte	0xe
	.4byte	0xb8
	.byte	0x4
	.byte	0x3
	.byte	0x1b
	.byte	0
	.byte	0xe
	.4byte	.LASF28
	.byte	0x5
	.byte	0x3a
	.byte	0xe
	.4byte	0xb8
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.byte	0xe
	.4byte	.LASF29
	.byte	0x5
	.byte	0x3c
	.byte	0xe
	.4byte	0xb8
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.byte	0xe
	.4byte	.LASF30
	.byte	0x5
	.byte	0x3d
	.byte	0xe
	.4byte	0xb8
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.byte	0xe
	.4byte	.LASF31
	.byte	0x5
	.byte	0x3f
	.byte	0xe
	.4byte	0xb8
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0xa
	.4byte	.LASF32
	.byte	0x5
	.byte	0x40
	.byte	0xe
	.4byte	0xb8
	.byte	0x4
	.byte	0xa
	.4byte	.LASF33
	.byte	0x5
	.byte	0x41
	.byte	0xe
	.4byte	0x1e8
	.byte	0x8
	.byte	0
	.byte	0xb
	.4byte	0xb8
	.4byte	0x1f8
	.byte	0xc
	.4byte	0x7c
	.byte	0x7
	.byte	0
	.byte	0xf
	.4byte	.LASF35
	.byte	0x5
	.byte	0x42
	.byte	0x20
	.4byte	0x173
	.byte	0x4
	.byte	0x10
	.4byte	.LASF96
	.byte	0xc0
	.byte	0x4
	.byte	0x5
	.byte	0x44
	.byte	0x10
	.4byte	0x256
	.byte	0xa
	.4byte	.LASF34
	.byte	0x5
	.byte	0x45
	.byte	0x13
	.4byte	0x102
	.byte	0
	.byte	0x11
	.string	"ctx"
	.byte	0x5
	.byte	0x46
	.byte	0x20
	.4byte	0x167
	.byte	0x4
	.byte	0x12
	.4byte	.LASF97
	.byte	0x5
	.byte	0x47
	.byte	0x25
	.4byte	0x1f8
	.byte	0x4
	.byte	0x18
	.byte	0x11
	.string	"tmp"
	.byte	0x5
	.byte	0x48
	.byte	0xe
	.4byte	0x256
	.byte	0x40
	.byte	0x11
	.string	"pad"
	.byte	0x5
	.byte	0x49
	.byte	0xe
	.4byte	0x256
	.byte	0x80
	.byte	0
	.byte	0xb
	.4byte	0xb8
	.4byte	0x266
	.byte	0xc
	.4byte	0x7c
	.byte	0xf
	.byte	0
	.byte	0xf
	.4byte	.LASF36
	.byte	0x5
	.byte	0x4a
	.byte	0x3
	.4byte	0x205
	.byte	0x4
	.byte	0x6
	.4byte	0x266
	.byte	0x7
	.byte	0x7
	.byte	0x4
	.4byte	0x7c
	.byte	0x6
	.byte	0x40
	.byte	0xe
	.4byte	0x28d
	.byte	0x8
	.4byte	.LASF37
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x7
	.byte	0x4
	.4byte	0x7c
	.byte	0x6
	.byte	0x47
	.byte	0xe
	.4byte	0x2b4
	.byte	0x8
	.4byte	.LASF38
	.byte	0
	.byte	0x8
	.4byte	.LASF39
	.byte	0x1
	.byte	0x8
	.4byte	.LASF40
	.byte	0x2
	.byte	0x8
	.4byte	.LASF41
	.byte	0x3
	.byte	0
	.byte	0x3
	.4byte	.LASF42
	.byte	0x6
	.byte	0x4c
	.byte	0x2
	.4byte	0x28d
	.byte	0x6
	.4byte	0x2b4
	.byte	0x9
	.byte	0x14
	.byte	0x6
	.byte	0xce
	.byte	0x9
	.4byte	0x303
	.byte	0xa
	.4byte	.LASF22
	.byte	0x6
	.byte	0xcf
	.byte	0xe
	.4byte	0x151
	.byte	0
	.byte	0xa
	.4byte	.LASF23
	.byte	0x6
	.byte	0xd0
	.byte	0xf
	.4byte	0x161
	.byte	0x8
	.byte	0xa
	.4byte	.LASF24
	.byte	0x6
	.byte	0xd1
	.byte	0xf
	.4byte	0x161
	.byte	0xc
	.byte	0xa
	.4byte	.LASF25
	.byte	0x6
	.byte	0xd2
	.byte	0xe
	.4byte	0xb8
	.byte	0x10
	.byte	0
	.byte	0x3
	.4byte	.LASF43
	.byte	0x6
	.byte	0xd3
	.byte	0x2
	.4byte	0x2c5
	.byte	0xd
	.byte	0x28
	.byte	0x4
	.byte	0x6
	.byte	0xe0
	.byte	0x9
	.4byte	0x384
	.byte	0xe
	.4byte	.LASF27
	.byte	0x6
	.byte	0xe2
	.byte	0xe
	.4byte	0xb8
	.byte	0x4
	.byte	0x3
	.byte	0x1b
	.byte	0
	.byte	0xe
	.4byte	.LASF28
	.byte	0x6
	.byte	0xe4
	.byte	0xe
	.4byte	0xb8
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.byte	0xe
	.4byte	.LASF29
	.byte	0x6
	.byte	0xe6
	.byte	0xe
	.4byte	0xb8
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.byte	0xe
	.4byte	.LASF30
	.byte	0x6
	.byte	0xe7
	.byte	0xe
	.4byte	0xb8
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.byte	0xe
	.4byte	.LASF31
	.byte	0x6
	.byte	0xe9
	.byte	0xe
	.4byte	0xb8
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0xa
	.4byte	.LASF32
	.byte	0x6
	.byte	0xea
	.byte	0xe
	.4byte	0xb8
	.byte	0x4
	.byte	0xa
	.4byte	.LASF33
	.byte	0x6
	.byte	0xeb
	.byte	0xe
	.4byte	0x1e8
	.byte	0x8
	.byte	0
	.byte	0xf
	.4byte	.LASF44
	.byte	0x6
	.byte	0xec
	.byte	0x1e
	.4byte	0x30f
	.byte	0x4
	.byte	0x13
	.4byte	.LASF98
	.byte	0x7
	.byte	0x4
	.4byte	0x7c
	.byte	0x7
	.byte	0x22
	.byte	0xe
	.4byte	0x3ce
	.byte	0x8
	.4byte	.LASF45
	.byte	0
	.byte	0x8
	.4byte	.LASF46
	.byte	0x1
	.byte	0x8
	.4byte	.LASF47
	.byte	0x2
	.byte	0x8
	.4byte	.LASF48
	.byte	0x3
	.byte	0x8
	.4byte	.LASF49
	.byte	0x4
	.byte	0x8
	.4byte	.LASF50
	.byte	0x5
	.byte	0x8
	.4byte	.LASF51
	.byte	0x6
	.byte	0
	.byte	0x3
	.4byte	.LASF52
	.byte	0x7
	.byte	0x2a
	.byte	0x3
	.4byte	0x391
	.byte	0x14
	.4byte	.LASF99
	.byte	0x8
	.byte	0x7
	.byte	0x2c
	.byte	0x10
	.4byte	0x402
	.byte	0xa
	.4byte	.LASF53
	.byte	0x7
	.byte	0x2d
	.byte	0x13
	.4byte	0x402
	.byte	0
	.byte	0xa
	.4byte	.LASF54
	.byte	0x7
	.byte	0x2e
	.byte	0xb
	.4byte	0x8f
	.byte	0x4
	.byte	0
	.byte	0x5
	.byte	0x4
	.4byte	0x3ce
	.byte	0x3
	.4byte	.LASF55
	.byte	0x7
	.byte	0x2f
	.byte	0x3
	.4byte	0x3da
	.byte	0x6
	.4byte	0x408
	.byte	0x15
	.4byte	.LASF56
	.byte	0x8
	.byte	0x38
	.byte	0x1b
	.4byte	0xc4
	.byte	0x5
	.byte	0x3
	.4byte	BLOG_HARD_DECLARE_DISABLE
	.byte	0x16
	.4byte	.LASF58
	.byte	0x8
	.byte	0x45
	.byte	0x12
	.4byte	0x3ce
	.byte	0x5
	.byte	0x3
	.4byte	_fsymc_level_hosal
	.byte	0x15
	.4byte	.LASF57
	.byte	0x8
	.byte	0x46
	.byte	0x1e
	.4byte	0x414
	.byte	0x5
	.byte	0x3
	.4byte	_fsymc_info_hosal
	.byte	0x16
	.4byte	.LASF59
	.byte	0x8
	.byte	0x53
	.byte	0x12
	.4byte	0x3ce
	.byte	0x5
	.byte	0x3
	.4byte	_fsymf_level_hosalbl_sec_sha
	.byte	0x16
	.4byte	.LASF60
	.byte	0x8
	.byte	0x54
	.byte	0x17
	.4byte	0x414
	.byte	0x5
	.byte	0x3
	.4byte	_fsymf_info_hosalbl_sec_sha
	.byte	0x15
	.4byte	.LASF61
	.byte	0x1
	.byte	0x2e
	.byte	0x28
	.4byte	0x1f8
	.byte	0x5
	.byte	0x3
	.4byte	working_link_cfg
	.byte	0xb
	.4byte	0x9c
	.4byte	0x495
	.byte	0xc
	.4byte	0x7c
	.byte	0x2b
	.byte	0
	.byte	0x6
	.4byte	0x485
	.byte	0x15
	.4byte	.LASF62
	.byte	0x1
	.byte	0x8f
	.byte	0x13
	.4byte	0x495
	.byte	0x5
	.byte	0x3
	.4byte	tc_hash_input
	.byte	0x9
	.byte	0x8
	.byte	0x1
	.byte	0xbc
	.byte	0x8
	.4byte	0x4d0
	.byte	0xa
	.4byte	.LASF63
	.byte	0x1
	.byte	0xbd
	.byte	0xb
	.4byte	0x4dc
	.byte	0
	.byte	0xa
	.4byte	.LASF64
	.byte	0x1
	.byte	0xbe
	.byte	0x11
	.4byte	0xa1
	.byte	0x4
	.byte	0
	.byte	0x17
	.4byte	0x4d5
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF65
	.byte	0x5
	.byte	0x4
	.4byte	0x4d0
	.byte	0xb
	.4byte	0x4ac
	.4byte	0x4f2
	.byte	0xc
	.4byte	0x7c
	.byte	0
	.byte	0
	.byte	0x18
	.string	"tc"
	.byte	0x1
	.byte	0xbf
	.byte	0x3
	.4byte	0x4e2
	.byte	0x19
	.4byte	.LASF69
	.byte	0x1
	.byte	0xc3
	.byte	0x5
	.4byte	0x75
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x1
	.byte	0x9c
	.4byte	0x55e
	.byte	0x1a
	.4byte	.Ldebug_ranges0+0xa0
	.byte	0x1b
	.string	"i"
	.byte	0x1
	.byte	0xc5
	.byte	0xe
	.4byte	0x75
	.4byte	.LLST16
	.byte	0x1c
	.4byte	.LVL67
	.4byte	0xabe
	.4byte	0x54a
	.byte	0x1d
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0x1d
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.byte	0x1e
	.4byte	.LVL68
	.4byte	0x55e
	.byte	0x1e
	.4byte	.LVL69
	.4byte	0xabe
	.byte	0
	.byte	0
	.byte	0x1f
	.4byte	.LASF77
	.byte	0x1
	.byte	0x90
	.byte	0x5
	.4byte	0x4d5
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x1
	.byte	0x9c
	.4byte	0x764
	.byte	0x1b
	.string	"i"
	.byte	0x1
	.byte	0x92
	.byte	0x9
	.4byte	0x75
	.4byte	.LLST11
	.byte	0x15
	.4byte	.LASF66
	.byte	0x1
	.byte	0x93
	.byte	0x19
	.4byte	0x774
	.byte	0x3
	.byte	0x91
	.byte	0xc4,0x7e
	.byte	0x15
	.4byte	.LASF33
	.byte	0x1
	.byte	0x94
	.byte	0xd
	.4byte	0x779
	.byte	0x3
	.byte	0x91
	.byte	0xd0,0x7e
	.byte	0x15
	.4byte	.LASF67
	.byte	0x1
	.byte	0x95
	.byte	0x13
	.4byte	0x79f
	.byte	0x3
	.byte	0x91
	.byte	0xf0,0x7e
	.byte	0x20
	.4byte	.Ldebug_ranges0+0x20
	.4byte	0x743
	.byte	0x21
	.4byte	.LASF68
	.byte	0x1
	.byte	0x9c
	.byte	0x12
	.4byte	0xc9
	.4byte	.LLST12
	.byte	0x1b
	.string	"ctx"
	.byte	0x1
	.byte	0x9d
	.byte	0x17
	.4byte	0x7a4
	.4byte	.LLST13
	.byte	0x20
	.4byte	.Ldebug_ranges0+0x88
	.4byte	0x632
	.byte	0x1b
	.string	"i"
	.byte	0x1
	.byte	0x9f
	.byte	0x12
	.4byte	0x75
	.4byte	.LLST15
	.byte	0x1c
	.4byte	.LVL42
	.4byte	0xaca
	.4byte	0x60a
	.byte	0x1d
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.byte	0x1c
	.4byte	.LVL44
	.4byte	0xaca
	.4byte	0x61e
	.byte	0x1d
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0xc0
	.byte	0
	.byte	0x22
	.4byte	.LVL46
	.4byte	0xabe
	.byte	0x1d
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0
	.byte	0x20
	.4byte	.Ldebug_ranges0+0x48
	.4byte	0x729
	.byte	0x1b
	.string	"j"
	.byte	0x1
	.byte	0xa9
	.byte	0x12
	.4byte	0x75
	.4byte	.LLST14
	.byte	0x1a
	.4byte	.Ldebug_ranges0+0x68
	.byte	0x23
	.string	"len"
	.byte	0x1
	.byte	0xab
	.byte	0x18
	.4byte	0x83
	.byte	0x2b
	.byte	0x1c
	.4byte	.LVL52
	.4byte	0xad6
	.4byte	0x67e
	.byte	0x1d
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x1d
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR2
	.byte	0x1d
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x2b
	.byte	0
	.byte	0x1c
	.4byte	.LVL53
	.4byte	0x93a
	.4byte	0x692
	.byte	0x1d
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x1c
	.4byte	.LVL54
	.4byte	0x823
	.4byte	0x6b2
	.byte	0x1d
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x1d
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x1d
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x2b
	.byte	0
	.byte	0x1c
	.4byte	.LVL55
	.4byte	0xae2
	.4byte	0x6d2
	.byte	0x1d
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xd0,0x7e
	.byte	0x1d
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x1d
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0x1c
	.4byte	.LVL56
	.4byte	0x7aa
	.4byte	0x6ed
	.byte	0x1d
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x1d
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0xd0,0x7e
	.byte	0
	.byte	0x1c
	.4byte	.LVL57
	.4byte	0xaee
	.4byte	0x70e
	.byte	0x1d
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xd0,0x7e
	.byte	0x1d
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x1d
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0x22
	.4byte	.LVL61
	.4byte	0xabe
	.byte	0x1d
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0x1d
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x22
	.4byte	.LVL49
	.4byte	0xabe
	.byte	0x1d
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0x1d
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0
	.byte	0x22
	.4byte	.LVL39
	.4byte	0xafa
	.byte	0x1d
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xf0,0x7e
	.byte	0x1d
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR1
	.byte	0x1d
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x60
	.byte	0
	.byte	0
	.byte	0xb
	.4byte	0x10e
	.4byte	0x774
	.byte	0xc
	.4byte	0x7c
	.byte	0x2
	.byte	0
	.byte	0x6
	.4byte	0x764
	.byte	0xb
	.4byte	0xa7
	.4byte	0x789
	.byte	0xc
	.4byte	0x7c
	.byte	0x1f
	.byte	0
	.byte	0xb
	.4byte	0xb3
	.4byte	0x79f
	.byte	0xc
	.4byte	0x7c
	.byte	0x2
	.byte	0xc
	.4byte	0x7c
	.byte	0x1f
	.byte	0
	.byte	0x6
	.4byte	0x789
	.byte	0x5
	.byte	0x4
	.4byte	0x266
	.byte	0x19
	.4byte	.LASF70
	.byte	0x1
	.byte	0x83
	.byte	0x5
	.4byte	0x75
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x1
	.byte	0x9c
	.4byte	0x823
	.byte	0x24
	.string	"ctx"
	.byte	0x1
	.byte	0x83
	.byte	0x21
	.4byte	0x7a4
	.4byte	.LLST9
	.byte	0x25
	.4byte	.LASF71
	.byte	0x1
	.byte	0x83
	.byte	0x2f
	.4byte	0xc9
	.4byte	.LLST10
	.byte	0x1c
	.4byte	.LVL35
	.4byte	0xb05
	.4byte	0x807
	.byte	0x1d
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0x1d
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0x18
	.byte	0x1d
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x28
	.byte	0
	.byte	0x22
	.4byte	.LVL36
	.4byte	0xb11
	.byte	0x1d
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x4
	.byte	0x1d
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x1d
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0
	.byte	0x19
	.4byte	.LASF72
	.byte	0x1
	.byte	0x7b
	.byte	0x5
	.4byte	0x75
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x1
	.byte	0x9c
	.4byte	0x8d6
	.byte	0x24
	.string	"ctx"
	.byte	0x1
	.byte	0x7b
	.byte	0x21
	.4byte	0x7a4
	.4byte	.LLST6
	.byte	0x25
	.4byte	.LASF73
	.byte	0x1
	.byte	0x7b
	.byte	0x35
	.4byte	0x8d6
	.4byte	.LLST7
	.byte	0x24
	.string	"len"
	.byte	0x1
	.byte	0x7b
	.byte	0x45
	.4byte	0xb8
	.4byte	.LLST8
	.byte	0x1c
	.4byte	.LVL25
	.4byte	0xb05
	.4byte	0x890
	.byte	0x1d
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0x1d
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x1d
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x28
	.byte	0
	.byte	0x1c
	.4byte	.LVL26
	.4byte	0xb1e
	.4byte	0x8b6
	.byte	0x1d
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x4
	.byte	0x1d
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x1d
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x1d
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0x91
	.byte	0x5c
	.byte	0x6
	.byte	0
	.byte	0x22
	.4byte	.LVL27
	.4byte	0xb05
	.byte	0x1d
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x1d
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0x1d
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x28
	.byte	0
	.byte	0
	.byte	0x5
	.byte	0x4
	.4byte	0xb3
	.byte	0x19
	.4byte	.LASF74
	.byte	0x1
	.byte	0x6f
	.byte	0x5
	.4byte	0x75
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x1
	.byte	0x9c
	.4byte	0x934
	.byte	0x24
	.string	"dst"
	.byte	0x1
	.byte	0x6f
	.byte	0x20
	.4byte	0x7a4
	.4byte	.LLST4
	.byte	0x24
	.string	"src"
	.byte	0x1
	.byte	0x6f
	.byte	0x39
	.4byte	0x934
	.4byte	.LLST5
	.byte	0x22
	.4byte	.LVL16
	.4byte	0xafa
	.byte	0x1d
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x1d
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x1d
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0xc0
	.byte	0
	.byte	0
	.byte	0x5
	.byte	0x4
	.4byte	0x273
	.byte	0x19
	.4byte	.LASF75
	.byte	0x1
	.byte	0x5e
	.byte	0x5
	.4byte	0x75
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x1
	.byte	0x9c
	.4byte	0xa07
	.byte	0x24
	.string	"ctx"
	.byte	0x1
	.byte	0x5e
	.byte	0x1f
	.4byte	0x7a4
	.4byte	.LLST0
	.byte	0x25
	.4byte	.LASF34
	.byte	0x1
	.byte	0x5e
	.byte	0x38
	.4byte	0x10e
	.4byte	.LLST1
	.byte	0x21
	.4byte	.LASF76
	.byte	0x1
	.byte	0x63
	.byte	0x1c
	.4byte	0x2c0
	.4byte	.LLST2
	.byte	0x1b
	.string	"lc"
	.byte	0x1
	.byte	0x67
	.byte	0x23
	.4byte	0xa07
	.4byte	.LLST3
	.byte	0x26
	.4byte	0xa0d
	.4byte	.LBB4
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x63
	.byte	0x39
	.4byte	0x9bb
	.byte	0x27
	.4byte	0xa1e
	.byte	0x1a
	.4byte	.Ldebug_ranges0+0
	.byte	0x28
	.4byte	0xa2a
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0
	.byte	0x1c
	.4byte	.LVL6
	.4byte	0xae2
	.4byte	0x9da
	.byte	0x1d
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x1d
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x1d
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0xc0
	.byte	0
	.byte	0x22
	.4byte	.LVL9
	.4byte	0xb2b
	.byte	0x1d
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0x4
	.byte	0x1d
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x1d
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0x1d
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0x79
	.byte	0xc0,0
	.byte	0x1d
	.byte	0x1
	.byte	0x5e
	.byte	0x3
	.byte	0x79
	.byte	0x80,0x1
	.byte	0
	.byte	0
	.byte	0x5
	.byte	0x4
	.4byte	0x384
	.byte	0x29
	.4byte	.LASF100
	.byte	0x1
	.byte	0x46
	.byte	0xc
	.4byte	0x75
	.byte	0x1
	.4byte	0xa37
	.byte	0x2a
	.4byte	.LASF34
	.byte	0x1
	.byte	0x46
	.byte	0x29
	.4byte	0x102
	.byte	0x18
	.string	"map"
	.byte	0x1
	.byte	0x48
	.byte	0x13
	.4byte	0xa47
	.byte	0
	.byte	0xb
	.4byte	0xb3
	.4byte	0xa47
	.byte	0xc
	.4byte	0x7c
	.byte	0x2
	.byte	0
	.byte	0x6
	.4byte	0xa37
	.byte	0x1f
	.4byte	.LASF78
	.byte	0x1
	.byte	0x40
	.byte	0x5
	.4byte	0x75
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x1
	.byte	0x9c
	.4byte	0xa70
	.byte	0x1e
	.4byte	.LVL2
	.4byte	0xb38
	.byte	0
	.byte	0x1f
	.4byte	.LASF79
	.byte	0x1
	.byte	0x3a
	.byte	0x5
	.4byte	0x75
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0xa94
	.byte	0x1e
	.4byte	.LVL1
	.4byte	0xb44
	.byte	0
	.byte	0x1f
	.4byte	.LASF80
	.byte	0x1
	.byte	0x33
	.byte	0x5
	.4byte	0x75
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0xabe
	.byte	0x22
	.4byte	.LVL0
	.4byte	0xb50
	.byte	0x1d
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x2b
	.4byte	.LASF81
	.4byte	.LASF81
	.byte	0x9
	.byte	0xc8
	.byte	0x5
	.byte	0x2b
	.4byte	.LASF82
	.4byte	.LASF82
	.byte	0xa
	.byte	0x6c
	.byte	0x7
	.byte	0x2b
	.4byte	.LASF83
	.4byte	.LASF83
	.byte	0xb
	.byte	0x1f
	.byte	0x8
	.byte	0x2b
	.4byte	.LASF84
	.4byte	.LASF84
	.byte	0xb
	.byte	0x21
	.byte	0x8
	.byte	0x2b
	.4byte	.LASF85
	.4byte	.LASF85
	.byte	0xb
	.byte	0x1e
	.byte	0x5
	.byte	0x2c
	.4byte	.LASF83
	.4byte	.LASF101
	.byte	0xe
	.byte	0
	.byte	0x2b
	.4byte	.LASF86
	.4byte	.LASF86
	.byte	0xc
	.byte	0x8b
	.byte	0x7
	.byte	0x2d
	.4byte	.LASF87
	.4byte	.LASF87
	.byte	0x6
	.2byte	0x1bb
	.byte	0xd
	.byte	0x2d
	.4byte	.LASF88
	.4byte	.LASF88
	.byte	0x6
	.2byte	0x1b9
	.byte	0xd
	.byte	0x2d
	.4byte	.LASF89
	.4byte	.LASF89
	.byte	0x6
	.2byte	0x1b7
	.byte	0x6
	.byte	0x2b
	.4byte	.LASF90
	.4byte	.LASF90
	.byte	0xd
	.byte	0x62
	.byte	0xd
	.byte	0x2b
	.4byte	.LASF91
	.4byte	.LASF91
	.byte	0xd
	.byte	0x61
	.byte	0xd
	.byte	0x2d
	.4byte	.LASF92
	.4byte	.LASF92
	.byte	0x6
	.2byte	0x1b5
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
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xc
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xd
	.byte	0x13
	.byte	0x1
	.byte	0xb
	.byte	0xb
	.byte	0x88,0x1
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
	.byte	0xe
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
	.byte	0xb
	.byte	0xb
	.byte	0xd
	.byte	0xb
	.byte	0xc
	.byte	0xb
	.byte	0x38
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xf
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
	.byte	0x88,0x1
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x10
	.byte	0x13
	.byte	0x1
	.byte	0x3
	.byte	0xe
	.byte	0xb
	.byte	0xb
	.byte	0x88,0x1
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
	.byte	0x88,0x1
	.byte	0xb
	.byte	0x38
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x13
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
	.byte	0x14
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
	.byte	0x15
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
	.byte	0x16
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
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x17
	.byte	0x15
	.byte	0
	.byte	0x27
	.byte	0x19
	.byte	0x49
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
	.byte	0
	.byte	0
	.byte	0x19
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
	.byte	0x1a
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x1b
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
	.byte	0x1c
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
	.byte	0x1d
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x1e
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1f
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
	.byte	0x20
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0x1
	.byte	0x13
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
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x23
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
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x24
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
	.byte	0x25
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
	.byte	0x26
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
	.byte	0x27
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x28
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x29
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
	.byte	0x2c
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
	.byte	0x2d
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
.LLST16:
	.4byte	.LVL66
	.4byte	.LVL69
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL69
	.4byte	.LVL70
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL70
	.4byte	.LFE17
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL50
	.4byte	.LVL51
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL51
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL43
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL45
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL41
	.4byte	.LVL47
	.2byte	0x5
	.byte	0x35
	.byte	0x82
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x5
	.byte	0x36
	.byte	0x82
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL48
	.4byte	.LVL50
	.2byte	0x5
	.byte	0x35
	.byte	0x82
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL50
	.4byte	.LVL59
	.2byte	0x7
	.byte	0xa
	.2byte	0x2710
	.byte	0x85
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL59
	.4byte	.LVL60
	.2byte	0x7
	.byte	0xa
	.2byte	0x2711
	.byte	0x85
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL60
	.4byte	.LVL65
	.2byte	0x7
	.byte	0xa
	.2byte	0x2710
	.byte	0x85
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL32
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL34
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL37
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL33
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL38
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL21
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL24
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL28
	.4byte	.LVL30
	.2byte	0x3
	.byte	0x82
	.byte	0x68
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL22
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL29
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL21
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL23
	.4byte	.LVL31
	.2byte	0x2
	.byte	0x91
	.byte	0x5c
	.4byte	.LVL31
	.4byte	.LFE14
	.2byte	0x2
	.byte	0x72
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL15
	.4byte	.LVL16-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL16-1
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x4
	.byte	0x7f
	.byte	0x80,0x7f
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL20
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL15
	.4byte	.LVL16-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL16-1
	.4byte	.LVL19
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL3
	.4byte	.LVL6-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL6-1
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL10
	.4byte	.LVL13
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL14
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL3
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL5
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL11
	.4byte	.LVL13
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL4
	.4byte	.LVL7
	.2byte	0x6
	.byte	0x78
	.byte	0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL11
	.2byte	0xd
	.byte	0x91
	.byte	0
	.byte	0x82
	.byte	0
	.byte	0x22
	.byte	0x44
	.byte	0x1c
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0xe
	.byte	0x91
	.byte	0
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x22
	.byte	0x44
	.byte	0x1c
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0xe
	.byte	0x72
	.byte	0
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x22
	.byte	0x44
	.byte	0x1c
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL8
	.4byte	.LVL10
	.2byte	0x3
	.byte	0x79
	.byte	0x18
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL13
	.2byte	0x6
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x23
	.byte	0x18
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x5c
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
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
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
	.4byte	.LBB10
	.4byte	.LBE10
	.4byte	.LBB19
	.4byte	.LBE19
	.4byte	.LBB20
	.4byte	.LBE20
	.4byte	.LBB21
	.4byte	.LBE21
	.4byte	0
	.4byte	0
	.4byte	.LBB11
	.4byte	.LBE11
	.4byte	.LBB17
	.4byte	.LBE17
	.4byte	.LBB18
	.4byte	.LBE18
	.4byte	0
	.4byte	0
	.4byte	.LBB12
	.4byte	.LBE12
	.4byte	.LBB13
	.4byte	.LBE13
	.4byte	.LBB14
	.4byte	.LBE14
	.4byte	0
	.4byte	0
	.4byte	.LBB15
	.4byte	.LBE15
	.4byte	.LBB16
	.4byte	.LBE16
	.4byte	0
	.4byte	0
	.4byte	.LBB22
	.4byte	.LBE22
	.4byte	.LBB23
	.4byte	.LBE23
	.4byte	.LBB24
	.4byte	.LBE24
	.4byte	.LBB25
	.4byte	.LBE25
	.4byte	0
	.4byte	0
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF87:
	.string	"Sec_Eng_SHA256_Link_Finish"
.LASF99:
	.string	"_blog_info"
.LASF33:
	.string	"result"
.LASF101:
	.string	"__builtin_memcpy"
.LASF66:
	.string	"types"
.LASF77:
	.string	"tc_sha1"
.LASF98:
	.string	"_blog_leve"
.LASF30:
	.string	"shaIntSet"
.LASF12:
	.string	"char"
.LASF80:
	.string	"bl_sec_sha_init"
.LASF91:
	.string	"vTaskEnterCritical"
.LASF11:
	.string	"size_t"
.LASF73:
	.string	"input"
.LASF38:
	.string	"SEC_ENG_SHA256"
.LASF78:
	.string	"bl_sha_mutex_give"
.LASF42:
	.string	"SEC_ENG_SHA_Type"
.LASF23:
	.string	"shaBuf"
.LASF15:
	.string	"BL_SHA1"
.LASF67:
	.string	"expected_results"
.LASF56:
	.string	"BLOG_HARD_DECLARE_DISABLE"
.LASF48:
	.string	"BLOG_LEVEL_WARN"
.LASF83:
	.string	"memcpy"
.LASF2:
	.string	"short int"
.LASF63:
	.string	"tc_fun"
.LASF13:
	.string	"uint8_t"
.LASF49:
	.string	"BLOG_LEVEL_ERROR"
.LASF17:
	.string	"BL_SHA256"
.LASF10:
	.string	"unsigned int"
.LASF100:
	.string	"bl_to_drv_type"
.LASF90:
	.string	"vTaskExitCritical"
.LASF0:
	.string	"signed char"
.LASF39:
	.string	"SEC_ENG_SHA224"
.LASF41:
	.string	"SEC_ENG_SHA1_RSVD"
.LASF85:
	.string	"memcmp"
.LASF8:
	.string	"long long int"
.LASF24:
	.string	"shaPadding"
.LASF43:
	.string	"SEC_Eng_SHA256_Link_Ctx"
.LASF82:
	.string	"malloc"
.LASF84:
	.string	"memset"
.LASF4:
	.string	"long int"
.LASF40:
	.string	"SEC_ENG_SHA1"
.LASF69:
	.string	"bl_sec_sha_test"
.LASF81:
	.string	"printf"
.LASF5:
	.string	"__uint8_t"
.LASF96:
	.string	"bl_sha_ctx"
.LASF16:
	.string	"BL_SHA224"
.LASF28:
	.string	"shaHashSel"
.LASF54:
	.string	"name"
.LASF59:
	.string	"_fsymf_level_hosalbl_sec_sha"
.LASF25:
	.string	"linkAddr"
.LASF92:
	.string	"Sec_Eng_SHA_Enable_Link"
.LASF22:
	.string	"total"
.LASF61:
	.string	"working_link_cfg"
.LASF1:
	.string	"unsigned char"
.LASF71:
	.string	"hash"
.LASF19:
	.string	"BL_SHA384"
.LASF97:
	.string	"link_cfg"
.LASF9:
	.string	"long long unsigned int"
.LASF14:
	.string	"uint32_t"
.LASF75:
	.string	"bl_sha_init"
.LASF50:
	.string	"BLOG_LEVEL_ASSERT"
.LASF20:
	.string	"BL_SHA512"
.LASF76:
	.string	"sha_type"
.LASF18:
	.string	"BL_MD5"
.LASF3:
	.string	"short unsigned int"
.LASF44:
	.string	"SEC_Eng_SHA_Link_Config_Type"
.LASF94:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/sec_common/bl_sec_sha.c"
.LASF26:
	.string	"bl_SEC_Eng_SHA256_Link_Ctx"
.LASF72:
	.string	"bl_sha_update"
.LASF34:
	.string	"type"
.LASF35:
	.string	"bl_SEC_Eng_SHA_Link_Config_Type"
.LASF47:
	.string	"BLOG_LEVEL_INFO"
.LASF65:
	.string	"_Bool"
.LASF70:
	.string	"bl_sha_finish"
.LASF31:
	.string	"shaMsgLen"
.LASF68:
	.string	"in_buf"
.LASF45:
	.string	"BLOG_LEVEL_ALL"
.LASF86:
	.string	"BL602_MemCpy_Fast"
.LASF37:
	.string	"SEC_ENG_SHA_ID0"
.LASF55:
	.string	"blog_info_t"
.LASF7:
	.string	"long unsigned int"
.LASF46:
	.string	"BLOG_LEVEL_DEBUG"
.LASF29:
	.string	"shaIntClr"
.LASF93:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
.LASF6:
	.string	"__uint32_t"
.LASF58:
	.string	"_fsymc_level_hosal"
.LASF53:
	.string	"level"
.LASF74:
	.string	"bl_sha_clone"
.LASF79:
	.string	"bl_sha_mutex_take"
.LASF60:
	.string	"_fsymf_info_hosalbl_sec_sha"
.LASF89:
	.string	"Sec_Eng_SHA256_Link_Init"
.LASF32:
	.string	"shaSrcAddr"
.LASF21:
	.string	"bl_sha_type_t"
.LASF51:
	.string	"BLOG_LEVEL_NEVER"
.LASF62:
	.string	"tc_hash_input"
.LASF52:
	.string	"blog_level_t"
.LASF27:
	.string	"shaMode"
.LASF36:
	.string	"bl_sha_ctx_t"
.LASF88:
	.string	"Sec_Eng_SHA256_Link_Update"
.LASF64:
	.string	"desc"
.LASF95:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/hosal"
.LASF57:
	.string	"_fsymc_info_hosal"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
