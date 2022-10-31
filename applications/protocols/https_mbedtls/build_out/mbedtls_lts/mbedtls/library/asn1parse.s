	.file	"asn1parse.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.mbedtls_asn1_get_len,"ax",@progbits
	.align	1
	.globl	mbedtls_asn1_get_len
	.type	mbedtls_asn1_get_len, @function
mbedtls_asn1_get_len:
.LFB4:
	.file 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/mbedtls_lts/mbedtls/library/asn1parse.c"
	.loc 1 78 1
	.cfi_startproc
.LVL0:
	.loc 1 79 5
	.loc 1 79 17 is_stmt 0
	lw	a5,0(a0)
	.loc 1 79 15
	sub	a3,a1,a5
	.loc 1 79 7
	ble	a3,zero,.L2
	.loc 1 82 5 is_stmt 1
	.loc 1 82 11 is_stmt 0
	lbu	a6,0(a5)
	.loc 1 82 7
	slli	a4,a6,24
	srai	a4,a4,24
	blt	a4,zero,.L3
	.loc 1 83 9 is_stmt 1
	.loc 1 83 21 is_stmt 0
	addi	a4,a5,1
	sw	a4,0(a0)
	.loc 1 83 16
	lbu	a5,0(a5)
	sw	a5,0(a2)
.L4:
	.loc 1 127 5 is_stmt 1
	.loc 1 127 31 is_stmt 0
	lw	a5,0(a0)
	.loc 1 130 11
	li	a0,0
.LVL1:
	.loc 1 127 31
	sub	a1,a1,a5
.LVL2:
	.loc 1 127 7
	lw	a5,0(a2)
	bleu	a5,a1,.L1
.L2:
	.loc 1 128 9 is_stmt 1
	.loc 1 128 15 is_stmt 0
	li	a0,-96
.L1:
	.loc 1 131 1
	ret
.LVL3:
.L3:
	.loc 1 86 9 is_stmt 1
	andi	a4,a6,127
	li	a7,3
	beq	a4,a7,.L5
	andi	a6,a6,124
	bne	a6,zero,.L6
	li	a6,1
	beq	a4,a6,.L7
	li	a6,2
	beq	a4,a6,.L8
.L13:
	li	a0,-100
.LVL4:
	ret
.LVL5:
.L6:
	li	a6,4
	bne	a4,a6,.L13
	.loc 1 114 13
	.loc 1 114 15 is_stmt 0
	ble	a3,a4,.L2
	.loc 1 117 13 is_stmt 1
	.loc 1 117 22 is_stmt 0
	lbu	a4,1(a5)
	.loc 1 117 50
	lbu	a3,2(a5)
	.loc 1 117 38
	slli	a4,a4,24
	.loc 1 117 66
	slli	a3,a3,16
	.loc 1 117 46
	or	a4,a4,a3
	.loc 1 118 51
	lbu	a3,4(a5)
	.loc 1 118 22
	lbu	a5,3(a5)
	.loc 1 118 45
	or	a4,a4,a3
	.loc 1 118 38
	slli	a5,a5,8
	.loc 1 118 45
	or	a5,a4,a5
	.loc 1 117 18
	sw	a5,0(a2)
	.loc 1 119 13 is_stmt 1
	.loc 1 119 18 is_stmt 0
	lw	a5,0(a0)
	addi	a5,a5,5
	j	.L12
.L7:
	.loc 1 89 13 is_stmt 1
	.loc 1 89 15 is_stmt 0
	beq	a3,a4,.L2
	.loc 1 92 13 is_stmt 1
	.loc 1 92 24 is_stmt 0
	lbu	a5,1(a5)
	sw	a5,0(a2)
	.loc 1 93 13 is_stmt 1
	.loc 1 93 18 is_stmt 0
	lw	a5,0(a0)
	addi	a5,a5,2
.L12:
	.loc 1 119 18
	sw	a5,0(a0)
	.loc 1 120 13 is_stmt 1
	j	.L4
.L8:
	.loc 1 97 13
	.loc 1 97 15 is_stmt 0
	ble	a3,a4,.L2
	.loc 1 100 13 is_stmt 1
	.loc 1 100 18 is_stmt 0
	lbu	a4,1(a5)
	lbu	a5,2(a5)
	slli	a5,a5,8
	or	a5,a5,a4
	slli	a4,a5,8
	srli	a5,a5,8
	or	a5,a4,a5
	slli	a5,a5,16
	srli	a5,a5,16
	sw	a5,0(a2)
	.loc 1 101 13 is_stmt 1
	.loc 1 101 18 is_stmt 0
	lw	a5,0(a0)
	addi	a5,a5,3
	j	.L12
.L5:
	.loc 1 105 13 is_stmt 1
	.loc 1 105 15 is_stmt 0
	ble	a3,a4,.L2
	.loc 1 108 13 is_stmt 1
	.loc 1 108 22 is_stmt 0
	lbu	a4,1(a5)
	.loc 1 109 22
	lbu	a3,2(a5)
	.loc 1 109 51
	lbu	a5,3(a5)
	.loc 1 108 38
	slli	a4,a4,16
	.loc 1 109 38
	slli	a3,a3,8
	.loc 1 108 46
	or	a4,a4,a3
	.loc 1 109 45
	or	a5,a4,a5
	.loc 1 108 18
	sw	a5,0(a2)
	.loc 1 110 13 is_stmt 1
	.loc 1 110 18 is_stmt 0
	lw	a5,0(a0)
	addi	a5,a5,4
	j	.L12
	.cfi_endproc
.LFE4:
	.size	mbedtls_asn1_get_len, .-mbedtls_asn1_get_len
	.section	.text.mbedtls_asn1_get_tag,"ax",@progbits
	.align	1
	.globl	mbedtls_asn1_get_tag
	.type	mbedtls_asn1_get_tag, @function
mbedtls_asn1_get_tag:
.LFB5:
	.loc 1 136 1 is_stmt 1
	.cfi_startproc
.LVL6:
	.loc 1 137 5
	.loc 1 137 17 is_stmt 0
	lw	a5,0(a0)
	.loc 1 137 15
	sub	a6,a1,a5
	.loc 1 137 7
	ble	a6,zero,.L16
	.loc 1 140 5 is_stmt 1
	.loc 1 140 9 is_stmt 0
	lbu	a6,0(a5)
	.loc 1 140 7
	bne	a6,a3,.L17
	.loc 1 143 5 is_stmt 1
	.loc 1 143 9 is_stmt 0
	addi	a5,a5,1
	sw	a5,0(a0)
	.loc 1 145 5 is_stmt 1
	.loc 1 145 13 is_stmt 0
	tail	mbedtls_asn1_get_len
.LVL7:
.L16:
	.loc 1 138 15
	li	a0,-96
.LVL8:
	ret
.LVL9:
.L17:
	.loc 1 141 15
	li	a0,-98
.LVL10:
	.loc 1 146 1
	ret
	.cfi_endproc
.LFE5:
	.size	mbedtls_asn1_get_tag, .-mbedtls_asn1_get_tag
	.section	.text.mbedtls_asn1_get_bool,"ax",@progbits
	.align	1
	.globl	mbedtls_asn1_get_bool
	.type	mbedtls_asn1_get_bool, @function
mbedtls_asn1_get_bool:
.LFB6:
	.loc 1 151 1 is_stmt 1
	.cfi_startproc
.LVL11:
	.loc 1 152 5
	.loc 1 153 5
	.loc 1 155 5
	.loc 1 151 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s1,20(sp)
	.loc 1 155 17
	li	a3,1
	.cfi_offset 9, -12
	.loc 1 151 1
	mv	s1,a2
	.loc 1 155 17
	addi	a2,sp,12
.LVL12:
	.loc 1 151 1
	sw	s0,24(sp)
	sw	ra,28(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	.loc 1 151 1
	mv	s0,a0
	.loc 1 155 17
	call	mbedtls_asn1_get_tag
.LVL13:
	.loc 1 155 7
	bne	a0,zero,.L18
	.loc 1 158 5 is_stmt 1
	.loc 1 158 7 is_stmt 0
	lw	a4,12(sp)
	li	a5,1
	bne	a4,a5,.L20
	.loc 1 161 5 is_stmt 1
	.loc 1 161 14 is_stmt 0
	lw	a5,0(s0)
	.loc 1 161 29
	lbu	a5,0(a5)
	snez	a5,a5
	.loc 1 161 10
	sw	a5,0(s1)
	.loc 1 162 5 is_stmt 1
	.loc 1 162 9 is_stmt 0
	lw	a5,0(s0)
	addi	a5,a5,1
	sw	a5,0(s0)
	.loc 1 164 5 is_stmt 1
.LVL14:
.L18:
	.loc 1 165 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
.LVL15:
	lw	s1,20(sp)
	.cfi_restore 9
.LVL16:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL17:
.L20:
	.cfi_restore_state
	.loc 1 159 15
	li	a0,-100
.LVL18:
	j	.L18
	.cfi_endproc
.LFE6:
	.size	mbedtls_asn1_get_bool, .-mbedtls_asn1_get_bool
	.section	.text.mbedtls_asn1_get_int,"ax",@progbits
	.align	1
	.globl	mbedtls_asn1_get_int
	.type	mbedtls_asn1_get_int, @function
mbedtls_asn1_get_int:
.LFB7:
	.loc 1 170 1 is_stmt 1
	.cfi_startproc
.LVL19:
	.loc 1 171 5
	.loc 1 172 5
	.loc 1 174 5
	.loc 1 170 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s1,20(sp)
	.loc 1 174 17
	li	a3,2
	.cfi_offset 9, -12
	.loc 1 170 1
	mv	s1,a2
	.loc 1 174 17
	addi	a2,sp,12
.LVL20:
	.loc 1 170 1
	sw	s0,24(sp)
	sw	ra,28(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	.loc 1 170 1
	mv	s0,a0
	.loc 1 174 17
	call	mbedtls_asn1_get_tag
.LVL21:
	.loc 1 174 7
	bne	a0,zero,.L22
	.loc 1 177 5 is_stmt 1
	.loc 1 177 18 is_stmt 0
	lw	a5,12(sp)
	.loc 1 177 7
	li	a4,3
	.loc 1 177 18
	addi	a5,a5,-1
	.loc 1 177 7
	bgtu	a5,a4,.L27
	.loc 1 177 46 discriminator 1
	lw	a5,0(s0)
	.loc 1 177 41 discriminator 1
	lb	a5,0(a5)
	blt	a5,zero,.L27
	.loc 1 180 5 is_stmt 1
	.loc 1 180 10 is_stmt 0
	sw	zero,0(s1)
	.loc 1 182 5 is_stmt 1
.L24:
	.loc 1 182 10
	.loc 1 182 15 is_stmt 0
	lw	a5,12(sp)
	addi	a4,a5,-1
	sw	a4,12(sp)
	.loc 1 182 10
	bne	a5,zero,.L25
.LVL22:
.L22:
	.loc 1 189 1
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
.LVL23:
	lw	s1,20(sp)
	.cfi_restore 9
.LVL24:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL25:
.L25:
	.cfi_restore_state
	.loc 1 184 9 is_stmt 1
	.loc 1 184 32 is_stmt 0
	lw	a4,0(s0)
	.loc 1 184 23
	lw	a5,0(s1)
	.loc 1 184 32
	lbu	a4,0(a4)
	.loc 1 184 23
	slli	a5,a5,8
	.loc 1 184 30
	or	a5,a5,a4
	.loc 1 184 14
	sw	a5,0(s1)
	.loc 1 185 9 is_stmt 1
	.loc 1 185 13 is_stmt 0
	lw	a5,0(s0)
	addi	a5,a5,1
	sw	a5,0(s0)
	j	.L24
.L27:
	.loc 1 178 15
	li	a0,-100
.LVL26:
	j	.L22
	.cfi_endproc
.LFE7:
	.size	mbedtls_asn1_get_int, .-mbedtls_asn1_get_int
	.section	.text.mbedtls_asn1_get_mpi,"ax",@progbits
	.align	1
	.globl	mbedtls_asn1_get_mpi
	.type	mbedtls_asn1_get_mpi, @function
mbedtls_asn1_get_mpi:
.LFB8:
	.loc 1 195 1 is_stmt 1
	.cfi_startproc
.LVL27:
	.loc 1 196 5
	.loc 1 197 5
	.loc 1 199 5
	.loc 1 195 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s1,20(sp)
	.loc 1 199 17
	li	a3,2
	.cfi_offset 9, -12
	.loc 1 195 1
	mv	s1,a2
	.loc 1 199 17
	addi	a2,sp,12
.LVL28:
	.loc 1 195 1
	sw	s0,24(sp)
	sw	ra,28(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	.loc 1 195 1
	mv	s0,a0
	.loc 1 199 17
	call	mbedtls_asn1_get_tag
.LVL29:
	.loc 1 199 7
	bne	a0,zero,.L29
	.loc 1 202 5 is_stmt 1
	.loc 1 202 11 is_stmt 0
	lw	a2,12(sp)
	lw	a1,0(s0)
	mv	a0,s1
.LVL30:
	call	mbedtls_mpi_read_binary
.LVL31:
	.loc 1 204 5 is_stmt 1
	.loc 1 204 8 is_stmt 0
	lw	a5,0(s0)
	lw	a4,12(sp)
	add	a5,a5,a4
	sw	a5,0(s0)
	.loc 1 206 5 is_stmt 1
.L29:
	.loc 1 207 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
.LVL32:
	lw	s1,20(sp)
	.cfi_restore 9
.LVL33:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE8:
	.size	mbedtls_asn1_get_mpi, .-mbedtls_asn1_get_mpi
	.section	.text.mbedtls_asn1_get_bitstring,"ax",@progbits
	.align	1
	.globl	mbedtls_asn1_get_bitstring
	.type	mbedtls_asn1_get_bitstring, @function
mbedtls_asn1_get_bitstring:
.LFB9:
	.loc 1 212 1 is_stmt 1
	.cfi_startproc
.LVL34:
	.loc 1 213 5
	.loc 1 216 5
	.loc 1 212 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 216 17
	li	a3,3
	.loc 1 212 1
	sw	s0,8(sp)
	sw	s1,4(sp)
	sw	s2,0(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 1, -4
	.loc 1 212 1
	mv	s1,a0
	mv	s2,a1
	mv	s0,a2
	.loc 1 216 17
	call	mbedtls_asn1_get_tag
.LVL35:
	.loc 1 216 7
	bne	a0,zero,.L32
	.loc 1 220 5 is_stmt 1
	.loc 1 220 11 is_stmt 0
	lw	a5,0(s0)
	.loc 1 220 7
	beq	a5,zero,.L34
	.loc 1 222 5 is_stmt 1
	.loc 1 222 13 is_stmt 0
	addi	a5,a5,-1
	sw	a5,0(s0)
	.loc 1 225 5 is_stmt 1
	.loc 1 225 23 is_stmt 0
	lw	a5,0(s1)
	.loc 1 226 7
	li	a4,7
	.loc 1 225 23
	lbu	a5,0(a5)
	.loc 1 225 21
	sb	a5,4(s0)
	.loc 1 226 5 is_stmt 1
	.loc 1 226 7 is_stmt 0
	bgtu	a5,a4,.L35
	.loc 1 228 5 is_stmt 1
	.loc 1 228 9 is_stmt 0
	lw	a5,0(s1)
	addi	a5,a5,1
	sw	a5,0(s1)
	.loc 1 231 5 is_stmt 1
	.loc 1 232 8 is_stmt 0
	lw	a4,0(s0)
	.loc 1 231 11
	sw	a5,8(s0)
	.loc 1 232 5 is_stmt 1
	.loc 1 232 8 is_stmt 0
	add	a5,a5,a4
	sw	a5,0(s1)
	.loc 1 234 5 is_stmt 1
	.loc 1 234 7 is_stmt 0
	beq	a5,s2,.L32
	.loc 1 235 15
	li	a0,-102
.LVL36:
.L32:
	.loc 1 238 1
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
.LVL37:
	lw	s1,4(sp)
	.cfi_restore 9
.LVL38:
	lw	s2,0(sp)
	.cfi_restore 18
.LVL39:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL40:
.L34:
	.cfi_restore_state
	.loc 1 221 15
	li	a0,-96
.LVL41:
	j	.L32
.LVL42:
.L35:
	.loc 1 227 15
	li	a0,-100
.LVL43:
	j	.L32
	.cfi_endproc
.LFE9:
	.size	mbedtls_asn1_get_bitstring, .-mbedtls_asn1_get_bitstring
	.section	.text.mbedtls_asn1_get_bitstring_null,"ax",@progbits
	.align	1
	.globl	mbedtls_asn1_get_bitstring_null
	.type	mbedtls_asn1_get_bitstring_null, @function
mbedtls_asn1_get_bitstring_null:
.LFB10:
	.loc 1 245 1 is_stmt 1
	.cfi_startproc
.LVL44:
	.loc 1 246 5
	.loc 1 248 5
	.loc 1 245 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 248 17
	li	a3,3
	.loc 1 245 1
	sw	s0,8(sp)
	sw	s1,4(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 1, -4
	.loc 1 245 1
	mv	s0,a0
	mv	s1,a2
	.loc 1 248 17
	call	mbedtls_asn1_get_tag
.LVL45:
	.loc 1 248 7
	bne	a0,zero,.L37
	.loc 1 251 5 is_stmt 1
	.loc 1 251 10 is_stmt 0
	lw	a5,0(s1)
	.loc 1 251 15
	addi	a4,a5,-1
	sw	a4,0(s1)
	.loc 1 251 7
	li	a4,1
	bleu	a5,a4,.L39
	.loc 1 251 27 discriminator 1
	lw	a5,0(s0)
	.loc 1 251 30 discriminator 1
	addi	a4,a5,1
	sw	a4,0(s0)
	.loc 1 251 22 discriminator 1
	lbu	a5,0(a5)
	beq	a5,zero,.L37
.L39:
	.loc 1 252 15
	li	a0,-104
.LVL46:
.L37:
	.loc 1 255 1
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
.LVL47:
	lw	s1,4(sp)
	.cfi_restore 9
.LVL48:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE10:
	.size	mbedtls_asn1_get_bitstring_null, .-mbedtls_asn1_get_bitstring_null
	.section	.text.mbedtls_asn1_get_sequence_of,"ax",@progbits
	.align	1
	.globl	mbedtls_asn1_get_sequence_of
	.type	mbedtls_asn1_get_sequence_of, @function
mbedtls_asn1_get_sequence_of:
.LFB11:
	.loc 1 266 1 is_stmt 1
	.cfi_startproc
.LVL49:
	.loc 1 267 5
	.loc 1 268 5
	.loc 1 269 5
	.loc 1 272 5
	.loc 1 266 1 is_stmt 0
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s0,40(sp)
	sw	s4,24(sp)
	.cfi_offset 8, -8
	.cfi_offset 20, -24
	mv	s0,a2
	mv	s4,a3
	.loc 1 272 17
	addi	a2,sp,12
.LVL50:
	li	a3,48
.LVL51:
	.loc 1 266 1
	sw	s1,36(sp)
	sw	s2,32(sp)
	sw	s3,28(sp)
	sw	ra,44(sp)
	sw	s5,20(sp)
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 1, -4
	.cfi_offset 21, -28
	.loc 1 266 1
	mv	s1,a0
	mv	s3,a1
	.loc 1 272 17
	call	mbedtls_asn1_get_tag
.LVL52:
	mv	s2,a0
.LVL53:
	.loc 1 272 7
	bne	a0,zero,.L44
	.loc 1 276 5 is_stmt 1
	.loc 1 276 12 is_stmt 0
	lw	a5,0(s1)
	lw	a4,12(sp)
	add	a5,a5,a4
	.loc 1 276 7
	beq	s3,a5,.L47
.LVL54:
.L46:
	.loc 1 307 9 is_stmt 1
	.loc 1 307 15 is_stmt 0
	li	s2,-102
	j	.L44
.L49:
	.loc 1 281 9 is_stmt 1
.LVL55:
	.loc 1 282 9
	.loc 1 282 20 is_stmt 0
	lbu	a5,0(a5)
	.loc 1 284 21
	mv	a3,s4
	mv	a2,s5
	.loc 1 282 20
	sw	a5,0(s0)
	.loc 1 284 9 is_stmt 1
	.loc 1 284 21 is_stmt 0
	mv	a1,s3
	mv	a0,s1
	call	mbedtls_asn1_get_tag
.LVL56:
	.loc 1 284 11
	bne	a0,zero,.L50
	.loc 1 287 9 is_stmt 1
	.loc 1 287 18 is_stmt 0
	lw	a5,0(s1)
	.loc 1 288 12
	lw	a4,4(s0)
	.loc 1 287 16
	sw	a5,8(s0)
	.loc 1 288 9 is_stmt 1
	.loc 1 288 12 is_stmt 0
	add	a5,a5,a4
	sw	a5,0(s1)
	.loc 1 291 9 is_stmt 1
	.loc 1 291 11 is_stmt 0
	bgeu	a5,s3,.L48
	.loc 1 293 13 is_stmt 1
	.loc 1 293 49 is_stmt 0
	li	a1,16
	li	a0,1
.LVL57:
	call	mbedtls_calloc
.LVL58:
	.loc 1 293 23
	sw	a0,12(s0)
	.loc 1 296 13 is_stmt 1
	.loc 1 296 15 is_stmt 0
	beq	a0,zero,.L51
	mv	s0,a0
.LVL59:
.L47:
	.loc 1 284 21
	addi	s5,s0,4
.L48:
.LVL60:
	.loc 1 279 10 is_stmt 1
	.loc 1 279 12 is_stmt 0
	lw	a5,0(s1)
	.loc 1 279 10
	bltu	a5,s3,.L49
	.loc 1 304 5 is_stmt 1
	.loc 1 304 15 is_stmt 0
	sw	zero,12(s0)
	.loc 1 306 5 is_stmt 1
	.loc 1 306 7 is_stmt 0
	lw	a5,0(s1)
	bne	a5,s3,.L46
.L44:
	.loc 1 310 1
	lw	ra,44(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
.LVL61:
	lw	s1,36(sp)
	.cfi_restore 9
.LVL62:
	lw	s3,28(sp)
	.cfi_restore 19
.LVL63:
	lw	s4,24(sp)
	.cfi_restore 20
.LVL64:
	lw	s5,20(sp)
	.cfi_restore 21
	mv	a0,s2
	lw	s2,32(sp)
	.cfi_restore 18
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
.LVL65:
.L50:
	.cfi_restore_state
	mv	s2,a0
	j	.L44
.LVL66:
.L51:
	.loc 1 297 23
	li	s2,-106
	j	.L44
	.cfi_endproc
.LFE11:
	.size	mbedtls_asn1_get_sequence_of, .-mbedtls_asn1_get_sequence_of
	.section	.text.mbedtls_asn1_get_alg,"ax",@progbits
	.align	1
	.globl	mbedtls_asn1_get_alg
	.type	mbedtls_asn1_get_alg, @function
mbedtls_asn1_get_alg:
.LFB12:
	.loc 1 315 1 is_stmt 1
	.cfi_startproc
.LVL67:
	.loc 1 316 5
	.loc 1 317 5
	.loc 1 319 5
	.loc 1 315 1 is_stmt 0
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s2,32(sp)
	sw	s4,24(sp)
	.cfi_offset 18, -16
	.cfi_offset 20, -24
	mv	s2,a3
	mv	s4,a2
	.loc 1 319 17
	li	a3,48
.LVL68:
	addi	a2,sp,12
.LVL69:
	.loc 1 315 1
	sw	s0,40(sp)
	sw	s1,36(sp)
	sw	s3,28(sp)
	sw	ra,44(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 19, -20
	.cfi_offset 1, -4
	.loc 1 315 1
	mv	s1,a0
	mv	s3,a1
	.loc 1 319 17
	call	mbedtls_asn1_get_tag
.LVL70:
	mv	s0,a0
.LVL71:
	.loc 1 319 7
	bne	a0,zero,.L54
	.loc 1 323 5 is_stmt 1
	.loc 1 323 17 is_stmt 0
	lw	a5,0(s1)
	.loc 1 324 15
	li	s0,-96
.LVL72:
	.loc 1 323 15
	sub	s3,s3,a5
.LVL73:
	.loc 1 323 7
	ble	s3,zero,.L54
	.loc 1 326 5 is_stmt 1
	.loc 1 326 16 is_stmt 0
	lbu	a5,0(a5)
	.loc 1 327 9
	lw	a1,12(sp)
	.loc 1 329 17
	li	a3,6
	.loc 1 326 16
	sw	a5,0(s4)
	.loc 1 327 5 is_stmt 1
	.loc 1 327 9 is_stmt 0
	lw	s3,0(s1)
	.loc 1 329 17
	addi	a2,s4,4
	mv	a0,s1
.LVL74:
	.loc 1 327 9
	add	s3,s3,a1
.LVL75:
	.loc 1 329 5 is_stmt 1
	.loc 1 329 17 is_stmt 0
	mv	a1,s3
	call	mbedtls_asn1_get_tag
.LVL76:
	mv	s0,a0
.LVL77:
	.loc 1 329 7
	bne	a0,zero,.L54
	.loc 1 332 5 is_stmt 1
	.loc 1 332 14 is_stmt 0
	lw	a5,0(s1)
	.loc 1 333 8
	lw	a4,4(s4)
	.loc 1 332 12
	sw	a5,8(s4)
	.loc 1 333 5 is_stmt 1
	.loc 1 333 8 is_stmt 0
	add	a5,a5,a4
	sw	a5,0(s1)
	.loc 1 335 5 is_stmt 1
	.loc 1 335 7 is_stmt 0
	bne	a5,s3,.L56
	.loc 1 337 9 is_stmt 1
	li	a1,12
	mv	a0,s2
	call	mbedtls_platform_zeroize
.LVL78:
	.loc 1 338 9
.L54:
	.loc 1 354 1 is_stmt 0
	lw	ra,44(sp)
	.cfi_remember_state
	.cfi_restore 1
	mv	a0,s0
	lw	s0,40(sp)
	.cfi_restore 8
	lw	s1,36(sp)
	.cfi_restore 9
.LVL79:
	lw	s2,32(sp)
	.cfi_restore 18
.LVL80:
	lw	s3,28(sp)
	.cfi_restore 19
	lw	s4,24(sp)
	.cfi_restore 20
.LVL81:
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
.LVL82:
.L56:
	.cfi_restore_state
	.loc 1 341 5 is_stmt 1
	.loc 1 341 19 is_stmt 0
	lbu	a5,0(a5)
	.loc 1 344 17
	addi	a2,s2,4
	mv	a1,s3
	.loc 1 341 19
	sw	a5,0(s2)
	.loc 1 342 5 is_stmt 1
	.loc 1 342 9 is_stmt 0
	lw	a5,0(s1)
	.loc 1 344 17
	mv	a0,s1
	.loc 1 342 9
	addi	a5,a5,1
	sw	a5,0(s1)
	.loc 1 344 5 is_stmt 1
	.loc 1 344 17 is_stmt 0
	call	mbedtls_asn1_get_len
.LVL83:
	mv	s0,a0
.LVL84:
	.loc 1 344 7
	bne	a0,zero,.L54
	.loc 1 347 5 is_stmt 1
	.loc 1 347 17 is_stmt 0
	lw	a5,0(s1)
	.loc 1 348 8
	lw	a4,4(s2)
	.loc 1 347 15
	sw	a5,8(s2)
	.loc 1 348 5 is_stmt 1
	.loc 1 348 8 is_stmt 0
	add	a5,a5,a4
	sw	a5,0(s1)
	.loc 1 350 5 is_stmt 1
	.loc 1 350 7 is_stmt 0
	beq	a5,s3,.L54
	.loc 1 351 15
	li	s0,-102
.LVL85:
	j	.L54
	.cfi_endproc
.LFE12:
	.size	mbedtls_asn1_get_alg, .-mbedtls_asn1_get_alg
	.section	.text.mbedtls_asn1_get_alg_null,"ax",@progbits
	.align	1
	.globl	mbedtls_asn1_get_alg_null
	.type	mbedtls_asn1_get_alg_null, @function
mbedtls_asn1_get_alg_null:
.LFB13:
	.loc 1 359 1 is_stmt 1
	.cfi_startproc
.LVL86:
	.loc 1 360 5
	.loc 1 361 5
	.loc 1 363 5
	.loc 1 359 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	s1,20(sp)
	sw	s2,16(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	mv	s0,a0
	mv	s1,a1
	mv	s2,a2
	.loc 1 363 5
	li	a1,0
.LVL87:
	li	a2,12
.LVL88:
	addi	a0,sp,4
.LVL89:
	.loc 1 359 1
	sw	ra,28(sp)
	.cfi_offset 1, -4
	.loc 1 363 5
	call	memset
.LVL90:
	.loc 1 365 5 is_stmt 1
	.loc 1 365 17 is_stmt 0
	addi	a3,sp,4
	mv	a2,s2
	mv	a1,s1
	mv	a0,s0
	call	mbedtls_asn1_get_alg
.LVL91:
	.loc 1 365 7
	bne	a0,zero,.L59
	.loc 1 368 5 is_stmt 1
	.loc 1 368 17 is_stmt 0
	lw	a5,4(sp)
	.loc 1 368 7
	li	a4,5
	beq	a5,a4,.L61
	.loc 1 368 30 discriminator 1
	bne	a5,zero,.L63
.L61:
	.loc 1 368 51 discriminator 3
	lw	a5,8(sp)
	beq	a5,zero,.L59
.L63:
	.loc 1 369 15
	li	a0,-104
.LVL92:
.L59:
	.loc 1 372 1
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
.LVL93:
	lw	s1,20(sp)
	.cfi_restore 9
.LVL94:
	lw	s2,16(sp)
	.cfi_restore 18
.LVL95:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE13:
	.size	mbedtls_asn1_get_alg_null, .-mbedtls_asn1_get_alg_null
	.section	.text.mbedtls_asn1_free_named_data,"ax",@progbits
	.align	1
	.globl	mbedtls_asn1_free_named_data
	.type	mbedtls_asn1_free_named_data, @function
mbedtls_asn1_free_named_data:
.LFB14:
	.loc 1 375 1 is_stmt 1
	.cfi_startproc
.LVL96:
	.loc 1 376 5
	.loc 1 376 7 is_stmt 0
	beq	a0,zero,.L65
	.loc 1 375 1
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	mv	s0,a0
.LVL97:
.LBB4:
.LBB5:
	.loc 1 379 5 is_stmt 1
	lw	a0,8(a0)
.LVL98:
	call	mbedtls_free
.LVL99:
	.loc 1 380 5
	lw	a0,20(s0)
	call	mbedtls_free
.LVL100:
	.loc 1 382 5
	mv	a0,s0
.LBE5:
.LBE4:
	.loc 1 383 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_restore 8
.LVL101:
	lw	ra,12(sp)
	.cfi_restore 1
.LBB8:
.LBB6:
	.loc 1 382 5
	li	a1,32
.LBE6:
.LBE8:
	.loc 1 383 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
.LBB9:
.LBB7:
	.loc 1 382 5
	tail	mbedtls_platform_zeroize
.LVL102:
.L65:
	ret
.LBE7:
.LBE9:
	.cfi_endproc
.LFE14:
	.size	mbedtls_asn1_free_named_data, .-mbedtls_asn1_free_named_data
	.section	.text.mbedtls_asn1_free_named_data_list,"ax",@progbits
	.align	1
	.globl	mbedtls_asn1_free_named_data_list
	.type	mbedtls_asn1_free_named_data_list, @function
mbedtls_asn1_free_named_data_list:
.LFB15:
	.loc 1 386 1 is_stmt 1
	.cfi_startproc
.LVL103:
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	ra,28(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	mv	s0,a0
	.loc 1 387 5
	.loc 1 389 5
.LVL104:
.L71:
	.loc 1 389 10
	.loc 1 389 18 is_stmt 0
	lw	a0,0(s0)
.LVL105:
	.loc 1 389 10
	bne	a0,zero,.L72
	.loc 1 395 1
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
.LVL106:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL107:
.L72:
	.cfi_restore_state
	.loc 1 391 9 is_stmt 1
	.loc 1 391 20 is_stmt 0
	lw	a5,24(a0)
	.loc 1 392 9
	sw	a0,12(sp)
	.loc 1 391 15
	sw	a5,0(s0)
	.loc 1 392 9 is_stmt 1
	call	mbedtls_asn1_free_named_data
.LVL108:
	.loc 1 393 9
	lw	a0,12(sp)
	call	mbedtls_free
.LVL109:
	j	.L71
	.cfi_endproc
.LFE15:
	.size	mbedtls_asn1_free_named_data_list, .-mbedtls_asn1_free_named_data_list
	.section	.text.mbedtls_asn1_find_named_data,"ax",@progbits
	.align	1
	.globl	mbedtls_asn1_find_named_data
	.type	mbedtls_asn1_find_named_data, @function
mbedtls_asn1_find_named_data:
.LFB16:
	.loc 1 399 1
	.cfi_startproc
.LVL110:
	.loc 1 400 5
	.loc 1 399 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	s1,4(sp)
	sw	s2,0(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 1, -4
	.loc 1 399 1
	mv	s2,a1
	mv	s1,a2
	.loc 1 400 10
	mv	s0,a0
.LVL111:
.L75:
	.loc 1 400 10 is_stmt 1
	beq	s0,zero,.L74
	.loc 1 402 9
	.loc 1 402 11 is_stmt 0
	lw	a5,4(s0)
	beq	a5,s1,.L76
.L78:
	.loc 1 408 9 is_stmt 1
	.loc 1 408 14 is_stmt 0
	lw	s0,24(s0)
.LVL112:
	j	.L75
.L76:
	.loc 1 403 13 discriminator 1
	lw	a0,8(s0)
	mv	a2,s1
	mv	a1,s2
	call	memcmp
.LVL113:
	.loc 1 402 34 discriminator 1
	bne	a0,zero,.L78
.L74:
	.loc 1 412 1
	lw	ra,12(sp)
	.cfi_restore 1
	mv	a0,s0
	lw	s0,8(sp)
	.cfi_restore 8
.LVL114:
	lw	s1,4(sp)
	.cfi_restore 9
.LVL115:
	lw	s2,0(sp)
	.cfi_restore 18
.LVL116:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE16:
	.size	mbedtls_asn1_find_named_data, .-mbedtls_asn1_find_named_data
	.text
.Letext0:
	.file 2 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h"
	.file 3 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.file 4 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/mbedtls_lts/mbedtls/include/mbedtls/bignum.h"
	.file 5 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/mbedtls_lts/mbedtls/include/mbedtls/asn1.h"
	.file 6 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h"
	.file 7 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/mbedtls_lts/mbedtls/include/mbedtls/platform.h"
	.file 8 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/mbedtls_lts/mbedtls/include/mbedtls/platform_util.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x9bd
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF41
	.byte	0xc
	.4byte	.LASF42
	.4byte	.LASF43
	.4byte	.Ldebug_ranges0+0x20
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
	.byte	0x3
	.4byte	0x2c
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
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.byte	0x5
	.4byte	.LASF9
	.byte	0x2
	.byte	0xd1
	.byte	0x16
	.4byte	0x69
	.byte	0x5
	.4byte	.LASF10
	.byte	0x3
	.byte	0x34
	.byte	0x1b
	.4byte	0x4d
	.byte	0x6
	.byte	0x4
	.4byte	0x2c
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF11
	.byte	0x3
	.4byte	0x8e
	.byte	0x6
	.byte	0x4
	.4byte	0x95
	.byte	0x5
	.4byte	.LASF12
	.byte	0x4
	.byte	0xc4
	.byte	0x16
	.4byte	0x7c
	.byte	0x7
	.4byte	.LASF13
	.byte	0xc
	.byte	0x4
	.byte	0xd2
	.byte	0x10
	.4byte	0xdb
	.byte	0x8
	.string	"s"
	.byte	0x4
	.byte	0xd4
	.byte	0x9
	.4byte	0x62
	.byte	0
	.byte	0x8
	.string	"n"
	.byte	0x4
	.byte	0xd5
	.byte	0xc
	.4byte	0x70
	.byte	0x4
	.byte	0x8
	.string	"p"
	.byte	0x4
	.byte	0xd6
	.byte	0x17
	.4byte	0xdb
	.byte	0x8
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0xa0
	.byte	0x5
	.4byte	.LASF13
	.byte	0x4
	.byte	0xd8
	.byte	0x1
	.4byte	0xac
	.byte	0x7
	.4byte	.LASF14
	.byte	0xc
	.byte	0x5
	.byte	0x9f
	.byte	0x10
	.4byte	0x120
	.byte	0x8
	.string	"tag"
	.byte	0x5
	.byte	0xa1
	.byte	0x9
	.4byte	0x62
	.byte	0
	.byte	0x8
	.string	"len"
	.byte	0x5
	.byte	0xa2
	.byte	0xc
	.4byte	0x70
	.byte	0x4
	.byte	0x8
	.string	"p"
	.byte	0x5
	.byte	0xa3
	.byte	0x14
	.4byte	0x88
	.byte	0x8
	.byte	0
	.byte	0x5
	.4byte	.LASF14
	.byte	0x5
	.byte	0xa5
	.byte	0x1
	.4byte	0xed
	.byte	0x7
	.4byte	.LASF15
	.byte	0xc
	.byte	0x5
	.byte	0xaa
	.byte	0x10
	.4byte	0x15f
	.byte	0x8
	.string	"len"
	.byte	0x5
	.byte	0xac
	.byte	0xc
	.4byte	0x70
	.byte	0
	.byte	0x9
	.4byte	.LASF16
	.byte	0x5
	.byte	0xad
	.byte	0x13
	.4byte	0x2c
	.byte	0x4
	.byte	0x8
	.string	"p"
	.byte	0x5
	.byte	0xae
	.byte	0x14
	.4byte	0x88
	.byte	0x8
	.byte	0
	.byte	0x5
	.4byte	.LASF15
	.byte	0x5
	.byte	0xb0
	.byte	0x1
	.4byte	0x12c
	.byte	0x7
	.4byte	.LASF17
	.byte	0x10
	.byte	0x5
	.byte	0xb5
	.byte	0x10
	.4byte	0x193
	.byte	0x8
	.string	"buf"
	.byte	0x5
	.byte	0xb7
	.byte	0x16
	.4byte	0x120
	.byte	0
	.byte	0x9
	.4byte	.LASF18
	.byte	0x5
	.byte	0xb8
	.byte	0x23
	.4byte	0x193
	.byte	0xc
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x16b
	.byte	0x5
	.4byte	.LASF17
	.byte	0x5
	.byte	0xba
	.byte	0x1
	.4byte	0x16b
	.byte	0x7
	.4byte	.LASF19
	.byte	0x20
	.byte	0x5
	.byte	0xbf
	.byte	0x10
	.4byte	0x1e7
	.byte	0x8
	.string	"oid"
	.byte	0x5
	.byte	0xc1
	.byte	0x16
	.4byte	0x120
	.byte	0
	.byte	0x8
	.string	"val"
	.byte	0x5
	.byte	0xc2
	.byte	0x16
	.4byte	0x120
	.byte	0xc
	.byte	0x9
	.4byte	.LASF18
	.byte	0x5
	.byte	0xc3
	.byte	0x25
	.4byte	0x1e7
	.byte	0x18
	.byte	0x9
	.4byte	.LASF20
	.byte	0x5
	.byte	0xc4
	.byte	0x13
	.4byte	0x2c
	.byte	0x1c
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x1a5
	.byte	0x5
	.4byte	.LASF19
	.byte	0x5
	.byte	0xc6
	.byte	0x1
	.4byte	0x1a5
	.byte	0xa
	.4byte	.LASF23
	.byte	0x1
	.2byte	0x18d
	.byte	0x1a
	.4byte	0x25e
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x1
	.byte	0x9c
	.4byte	0x25e
	.byte	0xb
	.4byte	.LASF21
	.byte	0x1
	.2byte	0x18d
	.byte	0x51
	.4byte	0x25e
	.4byte	.LLST45
	.byte	0xc
	.string	"oid"
	.byte	0x1
	.2byte	0x18e
	.byte	0x34
	.4byte	0x9a
	.4byte	.LLST46
	.byte	0xc
	.string	"len"
	.byte	0x1
	.2byte	0x18e
	.byte	0x40
	.4byte	0x70
	.4byte	.LLST47
	.byte	0xd
	.4byte	.LVL113
	.4byte	0x977
	.byte	0xe
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0xe
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x1ed
	.byte	0xf
	.4byte	.LASF44
	.byte	0x1
	.2byte	0x181
	.byte	0x6
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x1
	.byte	0x9c
	.4byte	0x2c4
	.byte	0xb
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x181
	.byte	0x43
	.4byte	0x2c4
	.4byte	.LLST43
	.byte	0x10
	.string	"cur"
	.byte	0x1
	.2byte	0x183
	.byte	0x1e
	.4byte	0x25e
	.4byte	.LLST44
	.byte	0x11
	.4byte	.LVL108
	.4byte	0x2ca
	.4byte	0x2b2
	.byte	0xe
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0x6c
	.byte	0x6
	.byte	0
	.byte	0xd
	.4byte	.LVL109
	.4byte	0x983
	.byte	0xe
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0x6c
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x25e
	.byte	0x12
	.4byte	.LASF45
	.byte	0x1
	.2byte	0x176
	.byte	0x6
	.byte	0x1
	.4byte	0x2e6
	.byte	0x13
	.string	"cur"
	.byte	0x1
	.2byte	0x176
	.byte	0x3d
	.4byte	0x25e
	.byte	0
	.byte	0xa
	.4byte	.LASF24
	.byte	0x1
	.2byte	0x164
	.byte	0x5
	.4byte	0x62
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x1
	.byte	0x9c
	.4byte	0x394
	.byte	0xc
	.string	"p"
	.byte	0x1
	.2byte	0x164
	.byte	0x30
	.4byte	0x394
	.4byte	.LLST37
	.byte	0xc
	.string	"end"
	.byte	0x1
	.2byte	0x165
	.byte	0x2d
	.4byte	0x39a
	.4byte	.LLST38
	.byte	0xc
	.string	"alg"
	.byte	0x1
	.2byte	0x166
	.byte	0x2a
	.4byte	0x3a0
	.4byte	.LLST39
	.byte	0x10
	.string	"ret"
	.byte	0x1
	.2byte	0x168
	.byte	0x9
	.4byte	0x62
	.4byte	.LLST40
	.byte	0x14
	.4byte	.LASF25
	.byte	0x1
	.2byte	0x169
	.byte	0x16
	.4byte	0x120
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0x11
	.4byte	.LVL90
	.4byte	0x98f
	.4byte	0x371
	.byte	0xe
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0xe
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0xe
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x3c
	.byte	0
	.byte	0xd
	.4byte	.LVL91
	.4byte	0x3a6
	.byte	0xe
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0xe
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0xe
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0xe
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x88
	.byte	0x6
	.byte	0x4
	.4byte	0x33
	.byte	0x6
	.byte	0x4
	.4byte	0x120
	.byte	0xa
	.4byte	.LASF26
	.byte	0x1
	.2byte	0x138
	.byte	0x5
	.4byte	0x62
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x1
	.byte	0x9c
	.4byte	0x4a5
	.byte	0xc
	.string	"p"
	.byte	0x1
	.2byte	0x138
	.byte	0x2b
	.4byte	0x394
	.4byte	.LLST32
	.byte	0xc
	.string	"end"
	.byte	0x1
	.2byte	0x139
	.byte	0x28
	.4byte	0x39a
	.4byte	.LLST33
	.byte	0xc
	.string	"alg"
	.byte	0x1
	.2byte	0x13a
	.byte	0x25
	.4byte	0x3a0
	.4byte	.LLST34
	.byte	0xb
	.4byte	.LASF25
	.byte	0x1
	.2byte	0x13a
	.byte	0x3c
	.4byte	0x3a0
	.4byte	.LLST35
	.byte	0x10
	.string	"ret"
	.byte	0x1
	.2byte	0x13c
	.byte	0x9
	.4byte	0x62
	.4byte	.LLST36
	.byte	0x15
	.string	"len"
	.byte	0x1
	.2byte	0x13d
	.byte	0xc
	.4byte	0x70
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x11
	.4byte	.LVL70
	.4byte	0x857
	.4byte	0x44a
	.byte	0xe
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0xe
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0xe
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0xe
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x8
	.byte	0x30
	.byte	0
	.byte	0x11
	.4byte	.LVL76
	.4byte	0x857
	.4byte	0x46f
	.byte	0xe
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0xe
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0xe
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x84
	.byte	0x4
	.byte	0xe
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x36
	.byte	0
	.byte	0x11
	.4byte	.LVL78
	.4byte	0x99b
	.4byte	0x488
	.byte	0xe
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0xe
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x3c
	.byte	0
	.byte	0xd
	.4byte	.LVL83
	.4byte	0x8cf
	.byte	0xe
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0xe
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0xe
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x82
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0xa
	.4byte	.LASF27
	.byte	0x1
	.2byte	0x106
	.byte	0x5
	.4byte	0x62
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x1
	.byte	0x9c
	.4byte	0x595
	.byte	0xc
	.string	"p"
	.byte	0x1
	.2byte	0x106
	.byte	0x33
	.4byte	0x394
	.4byte	.LLST26
	.byte	0xc
	.string	"end"
	.byte	0x1
	.2byte	0x107
	.byte	0x30
	.4byte	0x39a
	.4byte	.LLST27
	.byte	0xc
	.string	"cur"
	.byte	0x1
	.2byte	0x108
	.byte	0x32
	.4byte	0x595
	.4byte	.LLST28
	.byte	0xc
	.string	"tag"
	.byte	0x1
	.2byte	0x109
	.byte	0x1f
	.4byte	0x62
	.4byte	.LLST29
	.byte	0x10
	.string	"ret"
	.byte	0x1
	.2byte	0x10b
	.byte	0x9
	.4byte	0x62
	.4byte	.LLST30
	.byte	0x15
	.string	"len"
	.byte	0x1
	.2byte	0x10c
	.byte	0xc
	.4byte	0x70
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x10
	.string	"buf"
	.byte	0x1
	.2byte	0x10d
	.byte	0x17
	.4byte	0x3a0
	.4byte	.LLST31
	.byte	0x11
	.4byte	.LVL52
	.4byte	0x857
	.4byte	0x55a
	.byte	0xe
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0xe
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0xe
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0xe
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x8
	.byte	0x30
	.byte	0
	.byte	0x11
	.4byte	.LVL56
	.4byte	0x857
	.4byte	0x580
	.byte	0xe
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0xe
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0xe
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0xe
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0
	.byte	0xd
	.4byte	.LVL58
	.4byte	0x9a7
	.byte	0xe
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0xe
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x40
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x199
	.byte	0x16
	.4byte	.LASF28
	.byte	0x1
	.byte	0xf3
	.byte	0x5
	.4byte	0x62
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x1
	.byte	0x9c
	.4byte	0x616
	.byte	0x17
	.string	"p"
	.byte	0x1
	.byte	0xf3
	.byte	0x36
	.4byte	0x394
	.4byte	.LLST22
	.byte	0x17
	.string	"end"
	.byte	0x1
	.byte	0xf3
	.byte	0x4e
	.4byte	0x39a
	.4byte	.LLST23
	.byte	0x17
	.string	"len"
	.byte	0x1
	.byte	0xf4
	.byte	0x26
	.4byte	0x616
	.4byte	.LLST24
	.byte	0x18
	.string	"ret"
	.byte	0x1
	.byte	0xf6
	.byte	0x9
	.4byte	0x62
	.4byte	.LLST25
	.byte	0xd
	.4byte	.LVL45
	.4byte	0x857
	.byte	0xe
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0xe
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0xe
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0xe
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x70
	.byte	0x16
	.4byte	.LASF29
	.byte	0x1
	.byte	0xd2
	.byte	0x5
	.4byte	0x62
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0x695
	.byte	0x17
	.string	"p"
	.byte	0x1
	.byte	0xd2
	.byte	0x31
	.4byte	0x394
	.4byte	.LLST18
	.byte	0x17
	.string	"end"
	.byte	0x1
	.byte	0xd2
	.byte	0x49
	.4byte	0x39a
	.4byte	.LLST19
	.byte	0x17
	.string	"bs"
	.byte	0x1
	.byte	0xd3
	.byte	0x31
	.4byte	0x695
	.4byte	.LLST20
	.byte	0x18
	.string	"ret"
	.byte	0x1
	.byte	0xd5
	.byte	0x9
	.4byte	0x62
	.4byte	.LLST21
	.byte	0xd
	.4byte	.LVL35
	.4byte	0x857
	.byte	0xe
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0xe
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0xe
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0xe
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x15f
	.byte	0x16
	.4byte	.LASF30
	.byte	0x1
	.byte	0xc0
	.byte	0x5
	.4byte	0x62
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0x737
	.byte	0x17
	.string	"p"
	.byte	0x1
	.byte	0xc0
	.byte	0x2b
	.4byte	0x394
	.4byte	.LLST14
	.byte	0x17
	.string	"end"
	.byte	0x1
	.byte	0xc1
	.byte	0x28
	.4byte	0x39a
	.4byte	.LLST15
	.byte	0x17
	.string	"X"
	.byte	0x1
	.byte	0xc2
	.byte	0x20
	.4byte	0x737
	.4byte	.LLST16
	.byte	0x18
	.string	"ret"
	.byte	0x1
	.byte	0xc4
	.byte	0x9
	.4byte	0x62
	.4byte	.LLST17
	.byte	0x19
	.string	"len"
	.byte	0x1
	.byte	0xc5
	.byte	0xc
	.4byte	0x70
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x11
	.4byte	.LVL29
	.4byte	0x857
	.4byte	0x726
	.byte	0xe
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0xe
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0xe
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0xe
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0xd
	.4byte	.LVL31
	.4byte	0x9b3
	.byte	0xe
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0xe1
	.byte	0x16
	.4byte	.LASF31
	.byte	0x1
	.byte	0xa7
	.byte	0x5
	.4byte	0x62
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.4byte	0x7c7
	.byte	0x17
	.string	"p"
	.byte	0x1
	.byte	0xa7
	.byte	0x2b
	.4byte	0x394
	.4byte	.LLST10
	.byte	0x17
	.string	"end"
	.byte	0x1
	.byte	0xa8
	.byte	0x28
	.4byte	0x39a
	.4byte	.LLST11
	.byte	0x17
	.string	"val"
	.byte	0x1
	.byte	0xa9
	.byte	0x18
	.4byte	0x7c7
	.4byte	.LLST12
	.byte	0x18
	.string	"ret"
	.byte	0x1
	.byte	0xab
	.byte	0x9
	.4byte	0x62
	.4byte	.LLST13
	.byte	0x19
	.string	"len"
	.byte	0x1
	.byte	0xac
	.byte	0xc
	.4byte	0x70
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0xd
	.4byte	.LVL21
	.4byte	0x857
	.byte	0xe
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0xe
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0xe
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0xe
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x62
	.byte	0x16
	.4byte	.LASF32
	.byte	0x1
	.byte	0x94
	.byte	0x5
	.4byte	0x62
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0x857
	.byte	0x17
	.string	"p"
	.byte	0x1
	.byte	0x94
	.byte	0x2c
	.4byte	0x394
	.4byte	.LLST6
	.byte	0x17
	.string	"end"
	.byte	0x1
	.byte	0x95
	.byte	0x29
	.4byte	0x39a
	.4byte	.LLST7
	.byte	0x17
	.string	"val"
	.byte	0x1
	.byte	0x96
	.byte	0x19
	.4byte	0x7c7
	.4byte	.LLST8
	.byte	0x18
	.string	"ret"
	.byte	0x1
	.byte	0x98
	.byte	0x9
	.4byte	0x62
	.4byte	.LLST9
	.byte	0x19
	.string	"len"
	.byte	0x1
	.byte	0x99
	.byte	0xc
	.4byte	0x70
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0xd
	.4byte	.LVL13
	.4byte	0x857
	.byte	0xe
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0xe
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0xe
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0xe
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0x16
	.4byte	.LASF33
	.byte	0x1
	.byte	0x85
	.byte	0x5
	.4byte	0x62
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0x8cf
	.byte	0x17
	.string	"p"
	.byte	0x1
	.byte	0x85
	.byte	0x2b
	.4byte	0x394
	.4byte	.LLST2
	.byte	0x17
	.string	"end"
	.byte	0x1
	.byte	0x86
	.byte	0x28
	.4byte	0x39a
	.4byte	.LLST3
	.byte	0x17
	.string	"len"
	.byte	0x1
	.byte	0x87
	.byte	0x1b
	.4byte	0x616
	.4byte	.LLST4
	.byte	0x17
	.string	"tag"
	.byte	0x1
	.byte	0x87
	.byte	0x24
	.4byte	0x62
	.4byte	.LLST5
	.byte	0x1a
	.4byte	.LVL7
	.4byte	0x8cf
	.byte	0xe
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0xe
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0xe
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0
	.byte	0
	.byte	0x16
	.4byte	.LASF34
	.byte	0x1
	.byte	0x4b
	.byte	0x5
	.4byte	0x62
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0x916
	.byte	0x17
	.string	"p"
	.byte	0x1
	.byte	0x4b
	.byte	0x2b
	.4byte	0x394
	.4byte	.LLST0
	.byte	0x17
	.string	"end"
	.byte	0x1
	.byte	0x4c
	.byte	0x28
	.4byte	0x39a
	.4byte	.LLST1
	.byte	0x1b
	.string	"len"
	.byte	0x1
	.byte	0x4d
	.byte	0x1b
	.4byte	0x616
	.byte	0x1
	.byte	0x5c
	.byte	0
	.byte	0x1c
	.4byte	0x2ca
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x1
	.byte	0x9c
	.4byte	0x977
	.byte	0x1d
	.4byte	0x2d8
	.4byte	.LLST41
	.byte	0x1e
	.4byte	0x2ca
	.4byte	.LBB4
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.2byte	0x176
	.byte	0x6
	.byte	0x1d
	.4byte	0x2d8
	.4byte	.LLST42
	.byte	0x1f
	.4byte	.LVL99
	.4byte	0x983
	.byte	0x1f
	.4byte	.LVL100
	.4byte	0x983
	.byte	0x1a
	.4byte	.LVL102
	.4byte	0x99b
	.byte	0xe
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0xe
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.byte	0x20
	.4byte	.LASF35
	.4byte	.LASF35
	.byte	0x6
	.byte	0x1e
	.byte	0x5
	.byte	0x20
	.4byte	.LASF36
	.4byte	.LASF36
	.byte	0x7
	.byte	0x99
	.byte	0xd
	.byte	0x20
	.4byte	.LASF37
	.4byte	.LASF37
	.byte	0x6
	.byte	0x21
	.byte	0x8
	.byte	0x20
	.4byte	.LASF38
	.4byte	.LASF38
	.byte	0x8
	.byte	0xb8
	.byte	0x6
	.byte	0x20
	.4byte	.LASF39
	.4byte	.LASF39
	.byte	0x7
	.byte	0x98
	.byte	0xe
	.byte	0x21
	.4byte	.LASF40
	.4byte	.LASF40
	.byte	0x4
	.2byte	0x207
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
	.byte	0x26
	.byte	0
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
	.byte	0x8
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
	.byte	0x9
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
	.byte	0xb
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
	.byte	0xc
	.byte	0x5
	.byte	0
	.byte	0x3
	.byte	0x8
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
	.byte	0xd
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
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
	.byte	0x10
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0x8
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
	.byte	0x20
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x13
	.byte	0x5
	.byte	0
	.byte	0x3
	.byte	0x8
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
	.byte	0x14
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
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x15
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x18
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
	.byte	0x19
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
	.byte	0x1c
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
	.byte	0x1d
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x1e
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
	.byte	0x1f
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
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
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x21
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
.LLST45:
	.4byte	.LVL110
	.4byte	.LVL111
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL111
	.4byte	.LVL114
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL114
	.4byte	.LFE16
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL110
	.4byte	.LVL111
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL111
	.4byte	.LVL116
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL116
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL110
	.4byte	.LVL111
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL111
	.4byte	.LVL115
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL115
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL103
	.4byte	.LVL104
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL104
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
	.4byte	.LFE15
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL105
	.4byte	.LVL108-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL108-1
	.4byte	.LFE15
	.2byte	0x2
	.byte	0x91
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL86
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL89
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL93
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL86
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL87
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL94
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL86
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL88
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL95
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL91
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL67
	.4byte	.LVL70-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL70-1
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL79
	.4byte	.LVL82
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL82
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL67
	.4byte	.LVL70-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL70-1
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL73
	.4byte	.LVL75
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL75
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL82
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL67
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL69
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL81
	.4byte	.LVL82
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL82
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL67
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL68
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL80
	.4byte	.LVL82
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL82
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL71
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL72
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL77
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL82
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL85
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL49
	.4byte	.LVL52-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL52-1
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL62
	.4byte	.LVL65
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL65
	.4byte	.LFE11
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL49
	.4byte	.LVL52-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL52-1
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL63
	.4byte	.LVL65
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL65
	.4byte	.LFE11
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL50
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL60
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL65
	.4byte	.LFE11
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL49
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL51
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL64
	.4byte	.LVL65
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL65
	.4byte	.LFE11
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL56
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL65
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL55
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL65
	.4byte	.LFE11
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL44
	.4byte	.LVL45-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL45-1
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL47
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL44
	.4byte	.LVL45-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL45-1
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL44
	.4byte	.LVL45-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL45-1
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL48
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL34
	.4byte	.LVL35-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL35-1
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL38
	.4byte	.LVL40
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL40
	.4byte	.LFE9
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL34
	.4byte	.LVL35-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL35-1
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL40
	.4byte	.LFE9
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL34
	.4byte	.LVL35-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL35-1
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL37
	.4byte	.LVL40
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL40
	.4byte	.LFE9
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL27
	.4byte	.LVL29-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL29-1
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL32
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL27
	.4byte	.LVL29-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL29-1
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL28
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL33
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL31
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL19
	.4byte	.LVL21-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL21-1
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL23
	.4byte	.LVL25
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LFE7
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL19
	.4byte	.LVL21-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL21-1
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL20
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LFE7
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL11
	.4byte	.LVL13-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL13-1
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL15
	.4byte	.LVL17
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL11
	.4byte	.LVL13-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL13-1
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL12
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL6
	.4byte	.LVL7-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL7-1
	.4byte	.LVL7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL10
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL6
	.4byte	.LVL7-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL7-1
	.4byte	.LVL7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL6
	.4byte	.LVL7-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL7-1
	.4byte	.LVL7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL6
	.4byte	.LVL7-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL7-1
	.4byte	.LVL7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1
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
	.4byte	.LVL5
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL96
	.4byte	.LVL98
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL98
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL101
	.4byte	.LVL102-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL102-1
	.4byte	.LVL102
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL102
	.4byte	.LFE14
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL97
	.4byte	.LVL98
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL98
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL101
	.4byte	.LVL102-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL102-1
	.4byte	.LVL102
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x7c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
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
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
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
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB7
	.4byte	.LFE7
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
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF9:
	.string	"size_t"
.LASF18:
	.string	"next"
.LASF38:
	.string	"mbedtls_platform_zeroize"
.LASF14:
	.string	"mbedtls_asn1_buf"
.LASF37:
	.string	"memset"
.LASF3:
	.string	"short unsigned int"
.LASF13:
	.string	"mbedtls_mpi"
.LASF26:
	.string	"mbedtls_asn1_get_alg"
.LASF29:
	.string	"mbedtls_asn1_get_bitstring"
.LASF20:
	.string	"next_merged"
.LASF1:
	.string	"unsigned char"
.LASF17:
	.string	"mbedtls_asn1_sequence"
.LASF43:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/mbedtls_lts"
.LASF5:
	.string	"long unsigned int"
.LASF34:
	.string	"mbedtls_asn1_get_len"
.LASF21:
	.string	"list"
.LASF36:
	.string	"mbedtls_free"
.LASF30:
	.string	"mbedtls_asn1_get_mpi"
.LASF25:
	.string	"params"
.LASF35:
	.string	"memcmp"
.LASF42:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/mbedtls_lts/mbedtls/library/asn1parse.c"
.LASF45:
	.string	"mbedtls_asn1_free_named_data"
.LASF22:
	.string	"head"
.LASF8:
	.string	"unsigned int"
.LASF16:
	.string	"unused_bits"
.LASF7:
	.string	"long long unsigned int"
.LASF15:
	.string	"mbedtls_asn1_bitstring"
.LASF23:
	.string	"mbedtls_asn1_find_named_data"
.LASF28:
	.string	"mbedtls_asn1_get_bitstring_null"
.LASF32:
	.string	"mbedtls_asn1_get_bool"
.LASF12:
	.string	"mbedtls_mpi_uint"
.LASF27:
	.string	"mbedtls_asn1_get_sequence_of"
.LASF6:
	.string	"long long int"
.LASF41:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
.LASF11:
	.string	"char"
.LASF31:
	.string	"mbedtls_asn1_get_int"
.LASF19:
	.string	"mbedtls_asn1_named_data"
.LASF2:
	.string	"short int"
.LASF39:
	.string	"mbedtls_calloc"
.LASF44:
	.string	"mbedtls_asn1_free_named_data_list"
.LASF40:
	.string	"mbedtls_mpi_read_binary"
.LASF10:
	.string	"uint32_t"
.LASF4:
	.string	"long int"
.LASF0:
	.string	"signed char"
.LASF24:
	.string	"mbedtls_asn1_get_alg_null"
.LASF33:
	.string	"mbedtls_asn1_get_tag"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
