	.file	"base64.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.mbedtls_base64_table_lookup,"ax",@progbits
	.align	1
	.type	mbedtls_base64_table_lookup, @function
mbedtls_base64_table_lookup:
.LFB3:
	.file 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/mbedtls_lts/mbedtls/library/base64.c"
	.loc 1 180 1
	.cfi_startproc
.LVL0:
	.loc 1 181 5
	.loc 1 182 5
	.loc 1 184 5
	.loc 1 184 17
	.loc 1 180 1 is_stmt 0
	mv	a6,a0
	.loc 1 184 12
	li	a4,0
	.loc 1 182 19
	li	a0,0
.LVL1:
.L2:
	.loc 1 186 9 is_stmt 1 discriminator 3
.LBB6:
.LBB7:
	.loc 1 154 5 discriminator 3
	.loc 1 154 12 is_stmt 0 discriminator 3
	xor	a5,a4,a2
.LVL2:
	.loc 1 163 5 is_stmt 1 discriminator 3
	.loc 1 163 19 is_stmt 0 discriminator 3
	neg	a3,a5
	.loc 1 163 16 discriminator 3
	or	a5,a5,a3
.LVL3:
	.loc 1 170 5 is_stmt 1 discriminator 3
	.loc 1 172 5 discriminator 3
.LBE7:
.LBE6:
.LBB9:
.LBB10:
	.loc 1 121 33 is_stmt 0 discriminator 3
	add	a3,a6,a4
	lbu	a3,0(a3)
.LBE10:
.LBE9:
.LBB13:
.LBB8:
	.loc 1 170 16 discriminator 3
	srli	a5,a5,31
.LVL4:
.LBE8:
.LBE13:
.LBB14:
.LBB11:
	.loc 1 113 5 is_stmt 1 discriminator 3
	.loc 1 113 38 is_stmt 0 discriminator 3
	addi	a5,a5,-1
.LVL5:
	.loc 1 114 5 is_stmt 1 discriminator 3
	.loc 1 115 5 discriminator 3
	.loc 1 121 5 discriminator 3
	.loc 1 121 33 is_stmt 0 discriminator 3
	and	a3,a5,a3
	.loc 1 121 47 discriminator 3
	not	a5,a5
.LVL6:
	and	a5,a5,a0
.LVL7:
	.loc 1 121 33 discriminator 3
	or	a5,a3,a5
.LBE11:
.LBE14:
	.loc 1 184 33 discriminator 3
	addi	a4,a4,1
.LVL8:
.LBB15:
.LBB12:
	.loc 1 121 33 discriminator 3
	andi	a0,a5,0xff
.LVL9:
.LBE12:
.LBE15:
	.loc 1 184 33 is_stmt 1 discriminator 3
	.loc 1 184 17 discriminator 3
	.loc 1 184 5 is_stmt 0 discriminator 3
	bne	a1,a4,.L2
	.loc 1 189 5 is_stmt 1
.LVL10:
	.loc 1 190 1 is_stmt 0
	ret
	.cfi_endproc
.LFE3:
	.size	mbedtls_base64_table_lookup, .-mbedtls_base64_table_lookup
	.section	.text.mbedtls_base64_encode,"ax",@progbits
	.align	1
	.globl	mbedtls_base64_encode
	.type	mbedtls_base64_encode, @function
mbedtls_base64_encode:
.LFB4:
	.loc 1 197 1 is_stmt 1
	.cfi_startproc
.LVL11:
	.loc 1 198 5
	.loc 1 199 5
	.loc 1 200 5
	.loc 1 202 5
	.loc 1 197 1 is_stmt 0
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s5,20(sp)
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s1,36(sp)
	sw	s2,32(sp)
	sw	s3,28(sp)
	sw	s4,24(sp)
	sw	s6,16(sp)
	sw	s7,12(sp)
	sw	s8,8(sp)
	sw	s9,4(sp)
	sw	s10,0(sp)
	.cfi_offset 21, -28
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 22, -32
	.cfi_offset 23, -36
	.cfi_offset 24, -40
	.cfi_offset 25, -44
	.cfi_offset 26, -48
	.loc 1 197 1
	mv	s5,a2
	.loc 1 202 7
	bne	a4,zero,.L5
	.loc 1 204 9 is_stmt 1
	.loc 1 204 15 is_stmt 0
	sw	zero,0(a2)
	.loc 1 205 9 is_stmt 1
.LVL12:
.L18:
	.loc 1 267 5
	.loc 1 267 11 is_stmt 0
	li	a0,0
	j	.L4
.LVL13:
.L5:
	mv	s2,a4
	.loc 1 208 5 is_stmt 1
	.loc 1 208 14 is_stmt 0
	li	s10,3
	.loc 1 208 27
	remu	a5,s2,s10
	mv	s1,a3
	.loc 1 210 7
	li	a3,1073741824
.LVL14:
	.loc 1 208 14
	divu	a4,a4,s10
.LVL15:
	.loc 1 208 31
	snez	a5,a5
	.loc 1 208 7
	add	a5,a5,a4
.LVL16:
	.loc 1 210 5 is_stmt 1
	.loc 1 210 7 is_stmt 0
	bltu	a5,a3,.L7
	.loc 1 212 9 is_stmt 1
	.loc 1 212 15 is_stmt 0
	li	a5,-1
.LVL17:
.L8:
	.loc 1 220 9 is_stmt 1
	.loc 1 220 15 is_stmt 0
	sw	a5,0(s5)
	.loc 1 221 9 is_stmt 1
	.loc 1 221 15 is_stmt 0
	li	a0,-42
.LVL18:
.L4:
	.loc 1 268 1
	lw	ra,44(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	lw	s1,36(sp)
	.cfi_restore 9
	lw	s2,32(sp)
	.cfi_restore 18
	lw	s3,28(sp)
	.cfi_restore 19
	lw	s4,24(sp)
	.cfi_restore 20
	lw	s5,20(sp)
	.cfi_restore 21
.LVL19:
	lw	s6,16(sp)
	.cfi_restore 22
	lw	s7,12(sp)
	.cfi_restore 23
	lw	s8,8(sp)
	.cfi_restore 24
	lw	s9,4(sp)
	.cfi_restore 25
	lw	s10,0(sp)
	.cfi_restore 26
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
.LVL20:
.L7:
	.cfi_restore_state
	.loc 1 216 5 is_stmt 1
	.loc 1 218 5
	.loc 1 216 7 is_stmt 0
	slli	a5,a5,2
.LVL21:
	.loc 1 218 20
	addi	a5,a5,1
.LVL22:
	.loc 1 218 7
	bgtu	a5,a1,.L8
	mv	s4,a0
	.loc 1 218 26 discriminator 1
	beq	a0,zero,.L8
	.loc 1 224 5 is_stmt 1
	.loc 1 224 7 is_stmt 0
	mul	s10,a4,s10
.LVL23:
	.loc 1 226 5 is_stmt 1
	mv	s0,a0
	.loc 1 226 12 is_stmt 0
	li	s3,0
	.loc 1 232 16
	lui	s8,%hi(.LANCHOR0)
.LVL24:
.L10:
	.loc 1 226 26 is_stmt 1 discriminator 1
	.loc 1 226 5 is_stmt 0 discriminator 1
	bltu	s3,s10,.L11
	.loc 1 245 5 is_stmt 1
	.loc 1 245 7 is_stmt 0
	bgeu	s3,s2,.L12
	.loc 1 247 9 is_stmt 1
.LVL25:
	.loc 1 248 20 is_stmt 0
	addi	s3,s3,1
.LVL26:
	.loc 1 247 12
	lbu	s6,0(s1)
.LVL27:
	.loc 1 248 9 is_stmt 1
	.loc 1 248 44 is_stmt 0
	li	s7,0
	bgeu	s3,s2,.L13
.LVL28:
	.loc 1 248 44 discriminator 1
	lbu	s7,1(s1)
.LVL29:
.L13:
	.loc 1 250 9 is_stmt 1 discriminator 4
	.loc 1 250 16 is_stmt 0 discriminator 4
	lui	s1,%hi(.LANCHOR0)
	srli	a2,s6,2
	li	a1,64
	addi	a0,s1,%lo(.LANCHOR0)
	call	mbedtls_base64_table_lookup
.LVL30:
	.loc 1 254 62 discriminator 4
	slli	s6,s6,4
.LVL31:
	andi	s6,s6,48
	.loc 1 254 76 discriminator 4
	srai	a2,s7,4
	.loc 1 250 14 discriminator 4
	sb	a0,0(s0)
	.loc 1 253 9 is_stmt 1 discriminator 4
.LVL32:
	.loc 1 253 16 is_stmt 0 discriminator 4
	add	a2,s6,a2
	li	a1,64
	addi	a0,s1,%lo(.LANCHOR0)
	call	mbedtls_base64_table_lookup
.LVL33:
	.loc 1 253 14 discriminator 4
	sb	a0,1(s0)
	.loc 1 256 9 is_stmt 1 discriminator 4
	.loc 1 259 19 is_stmt 0 discriminator 4
	li	a0,61
	.loc 1 256 11 discriminator 4
	bgeu	s3,s2,.L14
	.loc 1 257 14 is_stmt 1
.LVL34:
	.loc 1 258 66 is_stmt 0
	slli	a2,s7,2
	.loc 1 257 21
	andi	a2,a2,60
	li	a1,64
	addi	a0,s1,%lo(.LANCHOR0)
	call	mbedtls_base64_table_lookup
.LVL35:
.L14:
	.loc 1 261 14
	li	a5,61
	sb	a0,2(s0)
.LVL36:
	.loc 1 261 9 is_stmt 1
	.loc 1 261 14 is_stmt 0
	sb	a5,3(s0)
	.loc 1 261 11
	addi	s0,s0,4
.LVL37:
.L12:
	.loc 1 264 5 is_stmt 1
	.loc 1 264 15 is_stmt 0
	sub	s4,s0,s4
.LVL38:
	.loc 1 264 11
	sw	s4,0(s5)
	.loc 1 265 5 is_stmt 1
	.loc 1 265 8 is_stmt 0
	sb	zero,0(s0)
	j	.L18
.LVL39:
.L11:
	.loc 1 228 9 is_stmt 1 discriminator 3
	.loc 1 228 12 is_stmt 0 discriminator 3
	lbu	s7,0(s1)
.LVL40:
	.loc 1 229 9 is_stmt 1 discriminator 3
	.loc 1 229 12 is_stmt 0 discriminator 3
	lbu	s6,1(s1)
.LVL41:
	.loc 1 230 9 is_stmt 1 discriminator 3
	.loc 1 232 16 is_stmt 0 discriminator 3
	li	a1,64
	srli	a2,s7,2
	addi	a0,s8,%lo(.LANCHOR0)
	call	mbedtls_base64_table_lookup
.LVL42:
	.loc 1 236 62 discriminator 3
	slli	s7,s7,4
.LVL43:
	.loc 1 230 14 discriminator 3
	lbu	s9,2(s1)
	.loc 1 236 76 discriminator 3
	srai	a2,s6,4
	.loc 1 236 62 discriminator 3
	andi	s7,s7,48
	.loc 1 232 14 discriminator 3
	sb	a0,0(s0)
	.loc 1 235 16 discriminator 3
	add	a2,s7,a2
	li	a1,64
	addi	a0,s8,%lo(.LANCHOR0)
	call	mbedtls_base64_table_lookup
.LVL44:
	.loc 1 239 63 discriminator 3
	slli	s6,s6,2
.LVL45:
	andi	s6,s6,60
	.loc 1 239 77 discriminator 3
	srai	a2,s9,6
	.loc 1 235 14 discriminator 3
	sb	a0,1(s0)
	.loc 1 238 16 discriminator 3
	add	a2,s6,a2
	li	a1,64
	addi	a0,s8,%lo(.LANCHOR0)
	call	mbedtls_base64_table_lookup
.LVL46:
	.loc 1 238 14 discriminator 3
	sb	a0,2(s0)
	.loc 1 241 16 discriminator 3
	andi	a2,s9,63
	li	a1,64
	addi	a0,s8,%lo(.LANCHOR0)
	addi	s0,s0,4
.LVL47:
	call	mbedtls_base64_table_lookup
.LVL48:
	addi	s1,s1,3
.LVL49:
	.loc 1 232 9 is_stmt 1 discriminator 3
	.loc 1 235 9 discriminator 3
	.loc 1 238 9 discriminator 3
	.loc 1 241 9 discriminator 3
	.loc 1 241 14 is_stmt 0 discriminator 3
	sb	a0,-1(s0)
	.loc 1 226 33 is_stmt 1 discriminator 3
	.loc 1 226 35 is_stmt 0 discriminator 3
	addi	s3,s3,3
.LVL50:
	j	.L10
	.cfi_endproc
.LFE4:
	.size	mbedtls_base64_encode, .-mbedtls_base64_encode
	.section	.text.mbedtls_base64_decode,"ax",@progbits
	.align	1
	.globl	mbedtls_base64_decode
	.type	mbedtls_base64_decode, @function
mbedtls_base64_decode:
.LFB5:
	.loc 1 275 1 is_stmt 1
	.cfi_startproc
.LVL51:
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	s0,56(sp)
	sw	s1,52(sp)
	sw	s2,48(sp)
	sw	s3,44(sp)
	sw	s4,40(sp)
	sw	s5,36(sp)
	sw	s7,28(sp)
	sw	s8,24(sp)
	sw	s9,20(sp)
	sw	s10,16(sp)
	sw	s11,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 23, -36
	.cfi_offset 24, -40
	.cfi_offset 25, -44
	.cfi_offset 26, -48
	.cfi_offset 27, -52
	mv	s3,a3
	.loc 1 276 5
	.loc 1 277 5
	.loc 1 278 5
	.loc 1 279 5
	.loc 1 282 5
.LVL52:
	.loc 1 275 1 is_stmt 0
	sw	ra,60(sp)
	sw	s6,32(sp)
	.cfi_offset 1, -4
	.cfi_offset 22, -32
	.loc 1 275 1
	mv	s5,a0
	mv	s8,a1
	mv	s4,a2
	mv	s0,a4
	.loc 1 282 20
	li	s7,0
	.loc 1 282 16
	li	s1,0
	.loc 1 282 12
	li	s2,0
	.loc 1 286 25
	li	s10,32
	.loc 1 296 11
	li	s11,1
	.loc 1 307 11
	li	a3,61
.LVL53:
	.loc 1 310 26
	lui	a6,%hi(.LANCHOR1)
	.loc 1 307 27
	li	t3,2
	.loc 1 300 11
	li	s9,10
	.loc 1 296 31
	li	t4,13
.LVL54:
.L20:
	.loc 1 282 25 is_stmt 1 discriminator 1
	.loc 1 282 5 is_stmt 0 discriminator 1
	bltu	s2,s0,.L43
	mv	s0,s2
.LVL55:
	j	.L21
.LVL56:
.L22:
	.loc 1 288 13 is_stmt 1
	addi	s2,s2,1
.LVL57:
	.loc 1 289 13
	addi	a5,a5,1
.LVL58:
	.loc 1 286 14
	bne	s0,s2,.L29
.LVL59:
.L21:
	.loc 1 321 5
	.loc 1 321 7 is_stmt 0
	bne	s1,zero,.L30
	.loc 1 323 9 is_stmt 1
	.loc 1 323 15 is_stmt 0
	sw	zero,0(s4)
	.loc 1 324 9 is_stmt 1
.LVL60:
.L53:
	.loc 1 361 5
	.loc 1 361 11 is_stmt 0
	li	a0,0
	j	.L19
.LVL61:
.L43:
	.loc 1 285 11
	li	a5,0
.L29:
.LVL62:
	.loc 1 286 31 discriminator 1
	add	a4,s3,s2
	.loc 1 286 25 discriminator 1
	lbu	s6,0(a4)
	beq	s6,s10,.L22
	.loc 1 293 9 is_stmt 1
	.loc 1 293 11 is_stmt 0
	beq	s0,s2,.L21
	.loc 1 296 9 is_stmt 1
	.loc 1 296 20 is_stmt 0
	sub	a2,s0,s2
	.loc 1 296 11
	beq	a2,s11,.L23
	.loc 1 296 31 discriminator 1
	bne	s6,t4,.L23
	.loc 1 297 28
	lbu	a4,1(a4)
	bne	a4,s9,.L25
.LVL63:
.L24:
	.loc 1 282 35 is_stmt 1 discriminator 2
	.loc 1 282 36 is_stmt 0 discriminator 2
	addi	s2,s2,1
.LVL64:
	j	.L20
.LVL65:
.L23:
	.loc 1 300 9 is_stmt 1
	.loc 1 300 11 is_stmt 0
	beq	s6,s9,.L24
.L25:
	.loc 1 304 9 is_stmt 1
	.loc 1 304 11 is_stmt 0
	bne	a5,zero,.L42
	.loc 1 307 9 is_stmt 1
	.loc 1 307 11 is_stmt 0
	bne	s6,a3,.L27
	.loc 1 307 30 discriminator 1
	addi	s7,s7,1
.LVL66:
	.loc 1 307 27 discriminator 1
	bgtu	s7,t3,.L42
.L27:
	.loc 1 310 9 is_stmt 1
	.loc 1 310 26 is_stmt 0
	mv	a2,s6
	.loc 1 312 11
	slli	s6,s6,24
	.loc 1 310 26
	li	a1,128
	addi	a0,a6,%lo(.LANCHOR1)
	.loc 1 312 11
	srai	s6,s6,24
	.loc 1 310 26
	call	mbedtls_base64_table_lookup
.LVL67:
	.loc 1 312 9 is_stmt 1
	.loc 1 312 11 is_stmt 0
	blt	s6,zero,.L42
	.loc 1 312 26 discriminator 1
	li	a7,127
	beq	a0,a7,.L42
	.loc 1 315 9 is_stmt 1
	.loc 1 315 11 is_stmt 0
	li	t1,63
	lui	a6,%hi(.LANCHOR1)
	li	a3,61
	li	t3,2
	li	t4,13
	bgtu	a0,t1,.L28
	.loc 1 315 33 discriminator 1
	bne	s7,zero,.L42
.L28:
	.loc 1 318 9 is_stmt 1
	.loc 1 318 10 is_stmt 0
	addi	s1,s1,1
.LVL68:
	j	.L24
.LVL69:
.L30:
	.loc 1 331 5 is_stmt 1
	.loc 1 331 42 is_stmt 0
	andi	a5,s1,7
	.loc 1 331 36
	li	a4,6
	mul	a5,a5,a4
	.loc 1 331 19
	srli	s1,s1,3
.LVL70:
	.loc 1 331 13
	mul	s1,s1,a4
	.loc 1 331 50
	addi	a5,a5,7
	.loc 1 331 56
	srli	a5,a5,3
	.loc 1 332 5 is_stmt 1
	sub	s1,s1,s7
	.loc 1 332 7 is_stmt 0
	add	s1,a5,s1
.LVL71:
	.loc 1 334 5 is_stmt 1
	.loc 1 334 7 is_stmt 0
	beq	s5,zero,.L31
	.loc 1 334 20 discriminator 1
	bgtu	s1,s8,.L31
	.loc 1 342 26
	li	s8,4194304
.LVL72:
	add	s1,s3,s0
.LVL73:
	.loc 1 340 11
	li	s6,3
	.loc 1 334 20
	mv	s0,s5
.LVL74:
	.loc 1 340 22
	li	s2,0
	.loc 1 340 18
	li	s7,0
.LVL75:
	.loc 1 342 26
	li	s9,22
	.loc 1 345 26
	lui	s10,%hi(.LANCHOR1)
	.loc 1 350 11
	li	s11,4
	.loc 1 342 26
	addi	s8,s8,9
.L32:
.LVL76:
	.loc 1 340 36 is_stmt 1 discriminator 1
	.loc 1 340 4 is_stmt 0 discriminator 1
	bne	s3,s1,.L37
	.loc 1 359 5 is_stmt 1
	.loc 1 359 15 is_stmt 0
	sub	s0,s0,s5
.LVL77:
	.loc 1 359 11
	sw	s0,0(s4)
	j	.L53
.LVL78:
.L31:
	.loc 1 336 9 is_stmt 1
	.loc 1 336 15 is_stmt 0
	sw	s1,0(s4)
	.loc 1 337 9 is_stmt 1
	.loc 1 337 15 is_stmt 0
	li	a0,-42
.LVL79:
.L19:
	.loc 1 362 1
	lw	ra,60(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
	lw	s1,52(sp)
	.cfi_restore 9
	lw	s2,48(sp)
	.cfi_restore 18
	lw	s3,44(sp)
	.cfi_restore 19
.LVL80:
	lw	s4,40(sp)
	.cfi_restore 20
.LVL81:
	lw	s5,36(sp)
	.cfi_restore 21
.LVL82:
	lw	s6,32(sp)
	.cfi_restore 22
	lw	s7,28(sp)
	.cfi_restore 23
	lw	s8,24(sp)
	.cfi_restore 24
	lw	s9,20(sp)
	.cfi_restore 25
	lw	s10,16(sp)
	.cfi_restore 26
	lw	s11,12(sp)
	.cfi_restore 27
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
.LVL83:
.L37:
	.cfi_restore_state
	.loc 1 342 9 is_stmt 1
	.loc 1 342 13 is_stmt 0
	lbu	a2,0(s3)
	.loc 1 342 26
	addi	a4,a2,-10
	andi	a4,a4,0xff
	bgtu	a4,s9,.L33
	.loc 1 342 26 discriminator 1
	srl	a4,s8,a4
	andi	a4,a4,1
	bne	a4,zero,.L34
.L33:
	.loc 1 345 9 is_stmt 1
	.loc 1 345 26 is_stmt 0
	li	a1,128
	addi	a0,s10,%lo(.LANCHOR1)
	call	mbedtls_base64_table_lookup
.LVL84:
	.loc 1 347 9 is_stmt 1
.LBB20:
.LBB21:
	.loc 1 154 5
	.loc 1 154 12 is_stmt 0
	xori	a5,a0,64
	andi	a5,a5,0xff
.LVL85:
	.loc 1 163 5 is_stmt 1
	.loc 1 170 5
	.loc 1 172 5
.LBE21:
.LBE20:
.LBB22:
.LBB23:
	.loc 1 138 5
	.loc 1 139 5
	.loc 1 139 10 is_stmt 0
	seqz	a5,a5
.LVL86:
	.loc 1 140 5 is_stmt 1
	.loc 1 146 5
.LBE23:
.LBE22:
	.loc 1 347 9 is_stmt 0
	addi	a4,s6,-1
.LVL87:
.LBB26:
.LBB24:
	.loc 1 140 10
	neg	a2,a5
.LVL88:
	.loc 1 146 42
	addi	a5,a5,-1
.LVL89:
	.loc 1 146 19
	and	a4,a4,a2
.LVL90:
	.loc 1 146 42
	and	a5,a5,s6
.LVL91:
.LBE24:
.LBE26:
	.loc 1 348 17
	slli	s2,s2,6
.LVL92:
	.loc 1 348 43
	andi	a0,a0,63
.LVL93:
	.loc 1 350 11
	addi	s7,s7,1
.LVL94:
.LBB27:
.LBB25:
	.loc 1 146 28
	or	s6,a4,a5
.LVL95:
.LBE25:
.LBE27:
	.loc 1 348 9 is_stmt 1
	.loc 1 348 11 is_stmt 0
	or	s2,a0,s2
.LVL96:
	.loc 1 350 9 is_stmt 1
	.loc 1 350 11 is_stmt 0
	li	a3,1
	li	a6,2
	bne	s7,s11,.L34
	.loc 1 352 13 is_stmt 1
.LVL97:
	.loc 1 353 13
	.loc 1 352 15 is_stmt 0
	li	s7,0
	.loc 1 353 15
	beq	s6,zero,.L34
	.loc 1 353 25 is_stmt 1 discriminator 1
.LVL98:
	.loc 1 353 51 is_stmt 0 discriminator 1
	srli	a5,s2,16
	.loc 1 353 32 discriminator 1
	sb	a5,0(s0)
	.loc 1 354 13 is_stmt 1 discriminator 1
	.loc 1 354 15 is_stmt 0 discriminator 1
	bne	s6,a3,.L35
	.loc 1 353 27
	addi	s0,s0,1
.LVL99:
.L34:
	.loc 1 340 43 is_stmt 1 discriminator 2
	.loc 1 340 51 is_stmt 0 discriminator 2
	addi	s3,s3,1
.LVL100:
	j	.L32
.LVL101:
.L35:
	.loc 1 354 25 is_stmt 1 discriminator 1
	.loc 1 354 51 is_stmt 0 discriminator 1
	srli	a5,s2,8
	.loc 1 354 32 discriminator 1
	sb	a5,1(s0)
	.loc 1 355 13 is_stmt 1 discriminator 1
	.loc 1 355 15 is_stmt 0 discriminator 1
	bne	s6,a6,.L36
	.loc 1 354 27
	addi	s0,s0,2
.LVL102:
	j	.L34
.LVL103:
.L36:
	.loc 1 355 25 is_stmt 1 discriminator 1
	.loc 1 355 32 is_stmt 0 discriminator 1
	sb	s2,2(s0)
	.loc 1 355 27 discriminator 1
	addi	s0,s0,3
.LVL104:
	j	.L34
.LVL105:
.L42:
	.loc 1 305 19
	li	a0,-44
.LVL106:
	j	.L19
	.cfi_endproc
.LFE5:
	.size	mbedtls_base64_decode, .-mbedtls_base64_decode
	.section	.rodata.base64_dec_map,"a"
	.align	2
	.set	.LANCHOR1,. + 0
	.type	base64_dec_map, @object
	.size	base64_dec_map, 128
base64_dec_map:
	.string	"\177\177\177\177\177\177\177\177\177\177\177\177\177\177\177\177\177\177\177\177\177\177\177\177\177\177\177\177\177\177\177\177\177\177\177\177\177\177\177\177\177\177\177>\177\177\177?456789:;<=\177\177\177@\177\177\177"
	.ascii	"\001\002\003\004\005\006\007\b\t\n\013\f\r\016\017\020\021\022"
	.ascii	"\023\024\025\026\027\030\031\177\177\177\177\177\177\032\033"
	.ascii	"\034\035\036\037 !\"#$%&'()*+,-./0123\177\177\177\177\177"
	.section	.rodata.base64_enc_map,"a"
	.align	2
	.set	.LANCHOR0,. + 0
	.type	base64_enc_map, @object
	.size	base64_enc_map, 64
base64_enc_map:
	.ascii	"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz01234567"
	.ascii	"89+/"
	.text
.Letext0:
	.file 2 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h"
	.file 3 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x5c4
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF29
	.byte	0xc
	.4byte	.LASF30
	.4byte	.LASF31
	.4byte	.Ldebug_ranges0+0x58
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
	.byte	0x3
	.4byte	0x70
	.byte	0x5
	.4byte	.LASF10
	.byte	0x3
	.byte	0x34
	.byte	0x1b
	.4byte	0x4d
	.byte	0x3
	.4byte	0x81
	.byte	0x6
	.4byte	0x33
	.4byte	0xa2
	.byte	0x7
	.4byte	0x69
	.byte	0x3f
	.byte	0
	.byte	0x3
	.4byte	0x92
	.byte	0x8
	.4byte	.LASF11
	.byte	0x1
	.byte	0x45
	.byte	0x1c
	.4byte	0xa2
	.byte	0x5
	.byte	0x3
	.4byte	base64_enc_map
	.byte	0x6
	.4byte	0x33
	.4byte	0xc9
	.byte	0x7
	.4byte	0x69
	.byte	0x7f
	.byte	0
	.byte	0x3
	.4byte	0xb9
	.byte	0x8
	.4byte	.LASF12
	.byte	0x1
	.byte	0x50
	.byte	0x1c
	.4byte	0xc9
	.byte	0x5
	.byte	0x3
	.4byte	base64_dec_map
	.byte	0x9
	.4byte	.LASF17
	.byte	0x1
	.2byte	0x111
	.byte	0x5
	.4byte	0x62
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0x250
	.byte	0xa
	.string	"dst"
	.byte	0x1
	.2byte	0x111
	.byte	0x2b
	.4byte	0x250
	.4byte	.LLST20
	.byte	0xb
	.4byte	.LASF13
	.byte	0x1
	.2byte	0x111
	.byte	0x37
	.4byte	0x70
	.4byte	.LLST21
	.byte	0xb
	.4byte	.LASF14
	.byte	0x1
	.2byte	0x111
	.byte	0x45
	.4byte	0x256
	.4byte	.LLST22
	.byte	0xa
	.string	"src"
	.byte	0x1
	.2byte	0x112
	.byte	0x29
	.4byte	0x25c
	.4byte	.LLST23
	.byte	0xb
	.4byte	.LASF15
	.byte	0x1
	.2byte	0x112
	.byte	0x35
	.4byte	0x70
	.4byte	.LLST24
	.byte	0xc
	.string	"i"
	.byte	0x1
	.2byte	0x114
	.byte	0xc
	.4byte	0x70
	.4byte	.LLST25
	.byte	0xc
	.string	"n"
	.byte	0x1
	.2byte	0x114
	.byte	0xf
	.4byte	0x70
	.4byte	.LLST26
	.byte	0xc
	.string	"j"
	.byte	0x1
	.2byte	0x115
	.byte	0xe
	.4byte	0x81
	.4byte	.LLST27
	.byte	0xc
	.string	"x"
	.byte	0x1
	.2byte	0x115
	.byte	0x11
	.4byte	0x81
	.4byte	.LLST28
	.byte	0xc
	.string	"p"
	.byte	0x1
	.2byte	0x116
	.byte	0x14
	.4byte	0x250
	.4byte	.LLST29
	.byte	0xd
	.4byte	.LASF16
	.byte	0x1
	.2byte	0x117
	.byte	0x13
	.4byte	0x2c
	.4byte	.LLST30
	.byte	0xe
	.4byte	0x513
	.4byte	.LBB20
	.4byte	.LBE20-.LBB20
	.byte	0x1
	.2byte	0x15b
	.byte	0x37
	.4byte	0x1d9
	.byte	0xf
	.4byte	0x530
	.4byte	.LLST31
	.byte	0xf
	.4byte	0x524
	.4byte	.LLST32
	.byte	0x10
	.4byte	0x53c
	.byte	0
	.byte	0x11
	.4byte	0x549
	.4byte	.LBB22
	.4byte	.Ldebug_ranges0+0x38
	.byte	0x1
	.2byte	0x15b
	.byte	0x9
	.4byte	0x219
	.byte	0xf
	.4byte	0x56e
	.4byte	.LLST33
	.byte	0xf
	.4byte	0x562
	.4byte	.LLST34
	.byte	0xf
	.4byte	0x556
	.4byte	.LLST35
	.byte	0x12
	.4byte	.Ldebug_ranges0+0x38
	.byte	0x13
	.4byte	0x57a
	.4byte	.LLST36
	.byte	0
	.byte	0
	.byte	0x14
	.4byte	.LVL67
	.4byte	0x438
	.4byte	0x236
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR1
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x8
	.byte	0x80
	.byte	0
	.byte	0x16
	.4byte	.LVL84
	.4byte	0x438
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR1
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x8
	.byte	0x80
	.byte	0
	.byte	0
	.byte	0x17
	.byte	0x4
	.4byte	0x2c
	.byte	0x17
	.byte	0x4
	.4byte	0x70
	.byte	0x17
	.byte	0x4
	.4byte	0x33
	.byte	0x3
	.4byte	0x25c
	.byte	0x18
	.4byte	.LASF18
	.byte	0x1
	.byte	0xc3
	.byte	0x5
	.4byte	0x62
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0x438
	.byte	0x19
	.string	"dst"
	.byte	0x1
	.byte	0xc3
	.byte	0x2b
	.4byte	0x250
	.4byte	.LLST10
	.byte	0x1a
	.4byte	.LASF13
	.byte	0x1
	.byte	0xc3
	.byte	0x37
	.4byte	0x70
	.4byte	.LLST11
	.byte	0x1a
	.4byte	.LASF14
	.byte	0x1
	.byte	0xc3
	.byte	0x45
	.4byte	0x256
	.4byte	.LLST12
	.byte	0x19
	.string	"src"
	.byte	0x1
	.byte	0xc4
	.byte	0x29
	.4byte	0x25c
	.4byte	.LLST13
	.byte	0x1a
	.4byte	.LASF15
	.byte	0x1
	.byte	0xc4
	.byte	0x35
	.4byte	0x70
	.4byte	.LLST14
	.byte	0x1b
	.string	"i"
	.byte	0x1
	.byte	0xc6
	.byte	0xc
	.4byte	0x70
	.4byte	.LLST15
	.byte	0x1b
	.string	"n"
	.byte	0x1
	.byte	0xc6
	.byte	0xf
	.4byte	0x70
	.4byte	.LLST16
	.byte	0x1b
	.string	"C1"
	.byte	0x1
	.byte	0xc7
	.byte	0x9
	.4byte	0x62
	.4byte	.LLST17
	.byte	0x1b
	.string	"C2"
	.byte	0x1
	.byte	0xc7
	.byte	0xd
	.4byte	0x62
	.4byte	.LLST18
	.byte	0x1c
	.string	"C3"
	.byte	0x1
	.byte	0xc7
	.byte	0x11
	.4byte	0x62
	.byte	0x6
	.byte	0x89
	.byte	0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.byte	0x1b
	.string	"p"
	.byte	0x1
	.byte	0xc8
	.byte	0x14
	.4byte	0x250
	.4byte	.LLST19
	.byte	0x14
	.4byte	.LVL30
	.4byte	0x438
	.4byte	0x350
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x8
	.byte	0x40
	.byte	0x15
	.byte	0x1
	.byte	0x5c
	.byte	0x4
	.byte	0x86
	.byte	0
	.byte	0x32
	.byte	0x25
	.byte	0
	.byte	0x14
	.4byte	.LVL33
	.4byte	0x438
	.4byte	0x378
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x8
	.byte	0x40
	.byte	0x15
	.byte	0x1
	.byte	0x5c
	.byte	0x7
	.byte	0x87
	.byte	0
	.byte	0x34
	.byte	0x26
	.byte	0x86
	.byte	0
	.byte	0x22
	.byte	0
	.byte	0x14
	.4byte	.LVL35
	.4byte	0x438
	.4byte	0x3a0
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x8
	.byte	0x40
	.byte	0x15
	.byte	0x1
	.byte	0x5c
	.byte	0x7
	.byte	0x87
	.byte	0
	.byte	0x32
	.byte	0x24
	.byte	0x8
	.byte	0x3c
	.byte	0x1a
	.byte	0
	.byte	0x14
	.4byte	.LVL42
	.4byte	0x438
	.4byte	0x3c5
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x8
	.byte	0x40
	.byte	0x15
	.byte	0x1
	.byte	0x5c
	.byte	0x4
	.byte	0x87
	.byte	0
	.byte	0x32
	.byte	0x25
	.byte	0
	.byte	0x14
	.4byte	.LVL44
	.4byte	0x438
	.4byte	0x3ed
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x8
	.byte	0x40
	.byte	0x15
	.byte	0x1
	.byte	0x5c
	.byte	0x7
	.byte	0x86
	.byte	0
	.byte	0x34
	.byte	0x26
	.byte	0x87
	.byte	0
	.byte	0x22
	.byte	0
	.byte	0x14
	.4byte	.LVL46
	.4byte	0x438
	.4byte	0x415
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x8
	.byte	0x40
	.byte	0x15
	.byte	0x1
	.byte	0x5c
	.byte	0x7
	.byte	0x89
	.byte	0
	.byte	0x36
	.byte	0x26
	.byte	0x86
	.byte	0
	.byte	0x22
	.byte	0
	.byte	0x16
	.4byte	.LVL48
	.4byte	0x438
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x8
	.byte	0x40
	.byte	0x15
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x89
	.byte	0
	.byte	0x8
	.byte	0x3f
	.byte	0x1a
	.byte	0
	.byte	0
	.byte	0x1d
	.4byte	.LASF32
	.byte	0x1
	.byte	0xb2
	.byte	0x16
	.4byte	0x2c
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x1
	.byte	0x9c
	.4byte	0x513
	.byte	0x1a
	.4byte	.LASF19
	.byte	0x1
	.byte	0xb2
	.byte	0x4f
	.4byte	0x262
	.4byte	.LLST0
	.byte	0x1e
	.4byte	.LASF20
	.byte	0x1
	.byte	0xb3
	.byte	0x3f
	.4byte	0x7c
	.byte	0x1
	.byte	0x5b
	.byte	0x1e
	.4byte	.LASF21
	.byte	0x1
	.byte	0xb3
	.byte	0x58
	.4byte	0x7c
	.byte	0x1
	.byte	0x5c
	.byte	0x1b
	.string	"i"
	.byte	0x1
	.byte	0xb5
	.byte	0xc
	.4byte	0x70
	.4byte	.LLST1
	.byte	0x1f
	.4byte	.LASF22
	.byte	0x1
	.byte	0xb6
	.byte	0x13
	.4byte	0x2c
	.4byte	.LLST2
	.byte	0x20
	.4byte	0x513
	.4byte	.LBB6
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0xba
	.byte	0x9
	.4byte	0x4d2
	.byte	0xf
	.4byte	0x530
	.4byte	.LLST3
	.byte	0xf
	.4byte	0x524
	.4byte	.LLST4
	.byte	0x12
	.4byte	.Ldebug_ranges0+0
	.byte	0x13
	.4byte	0x53c
	.4byte	.LLST5
	.byte	0
	.byte	0
	.byte	0x21
	.4byte	0x58d
	.4byte	.LBB9
	.4byte	.Ldebug_ranges0+0x18
	.byte	0x1
	.byte	0xba
	.byte	0x9
	.byte	0x22
	.4byte	0x5a2
	.byte	0xf
	.4byte	0x5a2
	.4byte	.LLST6
	.byte	0xf
	.4byte	0x5ae
	.4byte	.LLST7
	.byte	0xf
	.4byte	0x596
	.4byte	.LLST8
	.byte	0x12
	.4byte	.Ldebug_ranges0+0x18
	.byte	0x13
	.4byte	0x5ba
	.4byte	.LLST9
	.byte	0
	.byte	0
	.byte	0
	.byte	0x23
	.4byte	.LASF33
	.byte	0x1
	.byte	0x98
	.byte	0x16
	.4byte	0x2c
	.byte	0x1
	.4byte	0x549
	.byte	0x24
	.4byte	.LASF23
	.byte	0x1
	.byte	0x98
	.byte	0x30
	.4byte	0x70
	.byte	0x24
	.4byte	.LASF24
	.byte	0x1
	.byte	0x98
	.byte	0x3d
	.4byte	0x70
	.byte	0x25
	.4byte	.LASF27
	.byte	0x1
	.byte	0x9a
	.byte	0xc
	.4byte	0x70
	.byte	0
	.byte	0x26
	.4byte	.LASF34
	.byte	0x1
	.byte	0x7f
	.byte	0xd
	.byte	0x1
	.4byte	0x587
	.byte	0x24
	.4byte	.LASF25
	.byte	0x1
	.byte	0x7f
	.byte	0x3b
	.4byte	0x587
	.byte	0x27
	.string	"src"
	.byte	0x1
	.byte	0x7f
	.byte	0x50
	.4byte	0x8d
	.byte	0x24
	.4byte	.LASF26
	.byte	0x1
	.byte	0x80
	.byte	0x31
	.4byte	0x81
	.byte	0x25
	.4byte	.LASF28
	.byte	0x1
	.byte	0x8a
	.byte	0xe
	.4byte	0x81
	.byte	0
	.byte	0x17
	.byte	0x4
	.4byte	0x81
	.byte	0x28
	.4byte	.LASF35
	.byte	0x1
	.byte	0x66
	.byte	0xd
	.byte	0x1
	.byte	0x24
	.4byte	.LASF25
	.byte	0x1
	.byte	0x66
	.byte	0x3f
	.4byte	0x250
	.byte	0x27
	.string	"src"
	.byte	0x1
	.byte	0x66
	.byte	0x61
	.4byte	0x262
	.byte	0x24
	.4byte	.LASF26
	.byte	0x1
	.byte	0x67
	.byte	0x36
	.4byte	0x2c
	.byte	0x25
	.4byte	.LASF28
	.byte	0x1
	.byte	0x71
	.byte	0x13
	.4byte	0x2c
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
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x8
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
	.byte	0xa
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
	.byte	0xd
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
	.byte	0xe
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
	.byte	0x5
	.byte	0x57
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xf
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x10
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
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
	.byte	0x5
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
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x15
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
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
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x18
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
	.byte	0x19
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
	.byte	0x1a
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
	.byte	0x1d
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
	.byte	0x1e
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
	.byte	0x1f
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
	.byte	0
	.byte	0
	.byte	0x22
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x23
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
	.byte	0x24
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
	.byte	0x25
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
	.byte	0x26
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
	.byte	0x20
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x27
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
	.byte	0x28
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
	.byte	0x20
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST20:
	.4byte	.LVL51
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL54
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL82
	.4byte	.LVL83
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL83
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x65
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL51
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL54
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL60
	.4byte	.LVL61
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL61
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL72
	.4byte	.LVL78
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL78
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL79
	.4byte	.LVL105
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL105
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x68
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL51
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL54
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL81
	.4byte	.LVL83
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL83
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL51
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL53
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL83
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL51
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL54
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL55
	.4byte	.LVL56
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	.LVL56
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL59
	.4byte	.LVL61
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	.LVL61
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL69
	.4byte	.LVL105
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	.LVL105
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL52
	.4byte	.LVL54
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL54
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL59
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL61
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL69
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL78
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL105
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL52
	.4byte	.LVL54
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL54
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL61
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL71
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL76
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL78
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL83
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL94
	.4byte	.LVL96
	.2byte	0x3
	.byte	0x87
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL96
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL97
	.4byte	.LVL99
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL99
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL101
	.4byte	.LVL105
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL105
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL52
	.4byte	.LVL54
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL54
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL61
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL76
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL78
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL83
	.4byte	.LVL105
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL105
	.4byte	.LVL106
	.2byte	0x1
	.byte	0x67
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL56
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL65
	.4byte	.LVL67-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL76
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL83
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL96
	.4byte	.LVL105
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL76
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL83
	.4byte	.LVL98
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL98
	.4byte	.LVL99
	.2byte	0x3
	.byte	0x78
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL99
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL101
	.4byte	.LVL102
	.2byte	0x3
	.byte	0x78
	.byte	0x2
	.byte	0x9f
	.4byte	.LVL102
	.4byte	.LVL103
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL103
	.4byte	.LVL104
	.2byte	0x3
	.byte	0x78
	.byte	0x3
	.byte	0x9f
	.4byte	.LVL104
	.4byte	.LVL105
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL67
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL84
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL84
	.4byte	.LVL85
	.2byte	0x3
	.byte	0x8
	.byte	0x40
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL84
	.4byte	.LVL85
	.2byte	0x6
	.byte	0x7a
	.byte	0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL85
	.4byte	.LVL86
	.2byte	0x5
	.byte	0x7f
	.byte	0
	.byte	0x30
	.byte	0x29
	.byte	0x9f
	.4byte	.LVL86
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL89
	.4byte	.LVL91
	.2byte	0x3
	.byte	0x7f
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL91
	.4byte	.LVL95
	.2byte	0x4
	.byte	0x7c
	.byte	0
	.byte	0x1f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL85
	.4byte	.LVL87
	.2byte	0x3
	.byte	0x86
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL87
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL90
	.4byte	.LVL95
	.2byte	0x3
	.byte	0x86
	.byte	0x7f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL85
	.4byte	.LVL95
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+366
	.byte	0
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL85
	.4byte	.LVL86
	.2byte	0x6
	.byte	0x7f
	.byte	0
	.byte	0x30
	.byte	0x29
	.byte	0x1f
	.byte	0x9f
	.4byte	.LVL86
	.4byte	.LVL88
	.2byte	0xc
	.byte	0x7a
	.byte	0
	.byte	0x8
	.byte	0x40
	.byte	0x27
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x30
	.byte	0x29
	.byte	0x1f
	.byte	0x9f
	.4byte	.LVL88
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL18
	.4byte	.LVL20
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL24
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL39
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL18
	.4byte	.LVL20
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL24
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL13
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL24
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x65
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL14
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL20
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL25
	.4byte	.LVL28
	.2byte	0x3
	.byte	0x79
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x3
	.byte	0x79
	.byte	0x2
	.byte	0x9f
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x3
	.byte	0x79
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL40
	.4byte	.LVL49
	.2byte	0x3
	.byte	0x79
	.byte	0x2
	.byte	0x9f
	.4byte	.LVL49
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL15
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL18
	.4byte	.LVL20
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL26
	.4byte	.LVL37
	.2byte	0x3
	.byte	0x83
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL39
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x5
	.byte	0x7f
	.byte	0
	.byte	0x32
	.byte	0x24
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x3
	.byte	0x7f
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x6a
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL27
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL40
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x67
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL29
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL41
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x66
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL24
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL29
	.4byte	.LVL32
	.2byte	0x3
	.byte	0x78
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL32
	.4byte	.LVL34
	.2byte	0x3
	.byte	0x78
	.byte	0x2
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x3
	.byte	0x78
	.byte	0x3
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x3
	.byte	0x78
	.byte	0x4
	.byte	0x9f
	.4byte	.LVL37
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL47
	.4byte	.LVL49
	.2byte	0x3
	.byte	0x78
	.byte	0x7c
	.byte	0x9f
	.4byte	.LVL49
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1
	.4byte	.LFE3
	.2byte	0x1
	.byte	0x60
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL1
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x3
	.byte	0x7e
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LFE3
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL1
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL4
	.4byte	.LVL8
	.2byte	0x6
	.byte	0x80
	.byte	0
	.byte	0x7e
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x8
	.byte	0x80
	.byte	0
	.byte	0x7e
	.byte	0
	.byte	0x22
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x5
	.byte	0x7f
	.byte	0
	.byte	0x31
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x5
	.byte	0x7f
	.byte	0x1
	.byte	0x31
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x6
	.byte	0x7f
	.byte	0
	.byte	0x1f
	.byte	0x31
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0xf
	.byte	0x7e
	.byte	0
	.byte	0x7c
	.byte	0
	.byte	0x27
	.byte	0x7e
	.byte	0
	.byte	0x7c
	.byte	0
	.byte	0x27
	.byte	0x1f
	.byte	0x21
	.byte	0x30
	.byte	0x2a
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0xf
	.byte	0x7e
	.byte	0x7f
	.byte	0x7c
	.byte	0
	.byte	0x27
	.byte	0x7e
	.byte	0x7f
	.byte	0x7c
	.byte	0
	.byte	0x27
	.byte	0x1f
	.byte	0x21
	.byte	0x30
	.byte	0x2a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL3
	.4byte	.LVL9
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+1164
	.byte	0
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x5
	.byte	0x7f
	.byte	0
	.byte	0x1f
	.byte	0x1f
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x4
	.byte	0x7f
	.byte	0x1
	.byte	0x1f
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x12
	.byte	0x31
	.byte	0x7e
	.byte	0
	.byte	0x7c
	.byte	0
	.byte	0x27
	.byte	0x7e
	.byte	0
	.byte	0x7c
	.byte	0
	.byte	0x27
	.byte	0x1f
	.byte	0x21
	.byte	0x4f
	.byte	0x25
	.byte	0x1c
	.byte	0x1f
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x12
	.byte	0x31
	.byte	0x7e
	.byte	0x7f
	.byte	0x7c
	.byte	0
	.byte	0x27
	.byte	0x7e
	.byte	0x7f
	.byte	0x7c
	.byte	0
	.byte	0x27
	.byte	0x1f
	.byte	0x21
	.byte	0x4f
	.byte	0x25
	.byte	0x1c
	.byte	0x1f
	.byte	0x9f
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
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB6
	.4byte	.LBE6
	.4byte	.LBB13
	.4byte	.LBE13
	.4byte	0
	.4byte	0
	.4byte	.LBB9
	.4byte	.LBE9
	.4byte	.LBB14
	.4byte	.LBE14
	.4byte	.LBB15
	.4byte	.LBE15
	.4byte	0
	.4byte	0
	.4byte	.LBB22
	.4byte	.LBE22
	.4byte	.LBB26
	.4byte	.LBE26
	.4byte	.LBB27
	.4byte	.LBE27
	.4byte	0
	.4byte	0
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF17:
	.string	"mbedtls_base64_decode"
.LASF22:
	.string	"result"
.LASF25:
	.string	"dest"
.LASF23:
	.string	"in_a"
.LASF31:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/mbedtls_lts"
.LASF2:
	.string	"short int"
.LASF9:
	.string	"size_t"
.LASF27:
	.string	"difference"
.LASF33:
	.string	"mbedtls_base64_eq"
.LASF12:
	.string	"base64_dec_map"
.LASF16:
	.string	"dec_map_lookup"
.LASF13:
	.string	"dlen"
.LASF6:
	.string	"long long int"
.LASF14:
	.string	"olen"
.LASF4:
	.string	"long int"
.LASF1:
	.string	"unsigned char"
.LASF0:
	.string	"signed char"
.LASF7:
	.string	"long long unsigned int"
.LASF10:
	.string	"uint32_t"
.LASF8:
	.string	"unsigned int"
.LASF3:
	.string	"short unsigned int"
.LASF26:
	.string	"condition"
.LASF35:
	.string	"mbedtls_base64_cond_assign_uchar"
.LASF18:
	.string	"mbedtls_base64_encode"
.LASF11:
	.string	"base64_enc_map"
.LASF5:
	.string	"long unsigned int"
.LASF28:
	.string	"mask"
.LASF20:
	.string	"table_size"
.LASF34:
	.string	"mbedtls_base64_cond_assign_uint32"
.LASF32:
	.string	"mbedtls_base64_table_lookup"
.LASF15:
	.string	"slen"
.LASF21:
	.string	"table_index"
.LASF19:
	.string	"table"
.LASF24:
	.string	"in_b"
.LASF30:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/mbedtls_lts/mbedtls/library/base64.c"
.LASF29:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
