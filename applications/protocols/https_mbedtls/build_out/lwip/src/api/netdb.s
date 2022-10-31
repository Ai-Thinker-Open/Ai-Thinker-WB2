	.file	"netdb.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.lwip_gethostbyname,"ax",@progbits
	.align	1
	.globl	lwip_gethostbyname
	.type	lwip_gethostbyname, @function
lwip_gethostbyname:
.LFB5:
	.file 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/api/netdb.c"
	.loc 1 88 1
	.cfi_startproc
.LVL0:
	.loc 1 89 3
	.loc 1 90 3
	.loc 1 93 3
	.loc 1 94 3
	.loc 1 95 3
	.loc 1 96 3
	.loc 1 97 3
	.loc 1 100 3
	.loc 1 88 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	.loc 1 100 9
	addi	a1,sp,12
	.loc 1 88 1
	sw	s1,20(sp)
	sw	ra,28(sp)
	sw	s0,24(sp)
	sw	s2,16(sp)
	.cfi_offset 9, -12
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 18, -16
	.loc 1 88 1
	mv	s1,a0
	.loc 1 100 9
	call	netconn_gethostbyname
.LVL1:
	.loc 1 101 3 is_stmt 1
	.loc 1 101 6 is_stmt 0
	beq	a0,zero,.L2
	.loc 1 102 5 is_stmt 1
	.loc 1 103 5
	.loc 1 103 13 is_stmt 0
	lui	a5,%hi(h_errno)
	li	a4,210
	sw	a4,%lo(h_errno)(a5)
	.loc 1 104 5 is_stmt 1
	.loc 1 104 11 is_stmt 0
	li	a0,0
.LVL2:
.L1:
	.loc 1 143 1
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	lw	s1,20(sp)
	.cfi_restore 9
.LVL3:
	lw	s2,16(sp)
	.cfi_restore 18
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL4:
.L2:
	.cfi_restore_state
	.loc 1 108 3 is_stmt 1
	.loc 1 108 18 is_stmt 0
	lw	a4,12(sp)
	.loc 1 111 3
	lui	a0,%hi(.LANCHOR3)
.LVL5:
	.loc 1 108 18
	lui	a5,%hi(.LANCHOR1)
	.loc 1 109 22
	lui	s0,%hi(.LANCHOR2)
	.loc 1 108 18
	addi	a5,a5,%lo(.LANCHOR1)
	.loc 1 109 22
	addi	s0,s0,%lo(.LANCHOR2)
	.loc 1 111 3
	addi	s2,a0,%lo(.LANCHOR3)
	li	a2,256
	mv	a1,s1
	addi	a0,a0,%lo(.LANCHOR3)
	.loc 1 108 18
	sw	a4,0(a5)
	.loc 1 109 3 is_stmt 1
	.loc 1 109 22 is_stmt 0
	sw	a5,0(s0)
	.loc 1 110 3 is_stmt 1
	.loc 1 110 22 is_stmt 0
	sw	zero,4(s0)
	.loc 1 111 3 is_stmt 1
	call	strncpy
.LVL6:
	.loc 1 112 3
	.loc 1 113 20 is_stmt 0
	lui	a0,%hi(.LANCHOR0)
	.loc 1 114 13
	lui	a4,%hi(.LANCHOR4)
	.loc 1 113 20
	addi	a5,a0,%lo(.LANCHOR0)
	.loc 1 114 13
	addi	a4,a4,%lo(.LANCHOR4)
	sw	zero,0(a4)
	.loc 1 115 23
	sw	a4,4(a5)
	.loc 1 116 24
	li	a4,2
	sw	a4,8(a5)
	.loc 1 117 22
	li	a4,4
	.loc 1 112 19
	sb	zero,256(s2)
	.loc 1 113 3 is_stmt 1
	.loc 1 113 20 is_stmt 0
	sw	s2,0(a5)
	.loc 1 114 3 is_stmt 1
	.loc 1 115 3
	.loc 1 116 3
	.loc 1 117 3
	.loc 1 117 22 is_stmt 0
	sw	a4,12(a5)
	.loc 1 118 3 is_stmt 1
	.loc 1 118 25 is_stmt 0
	sw	s0,16(a5)
	.loc 1 141 3 is_stmt 1
	.loc 1 141 10 is_stmt 0
	addi	a0,a0,%lo(.LANCHOR0)
	j	.L1
	.cfi_endproc
.LFE5:
	.size	lwip_gethostbyname, .-lwip_gethostbyname
	.section	.text.lwip_gethostbyname_r,"ax",@progbits
	.align	1
	.globl	lwip_gethostbyname_r
	.type	lwip_gethostbyname_r, @function
lwip_gethostbyname_r:
.LFB6:
	.loc 1 164 1 is_stmt 1
	.cfi_startproc
.LVL7:
	.loc 1 165 3
	.loc 1 166 3
	.loc 1 167 3
	.loc 1 168 3
	.loc 1 169 3
	.loc 1 171 3
	.loc 1 164 1 is_stmt 0
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	s0,56(sp)
	sw	s1,52(sp)
	sw	s2,48(sp)
	sw	s4,40(sp)
	sw	s5,36(sp)
	sw	s6,32(sp)
	sw	ra,60(sp)
	sw	s3,44(sp)
	sw	s7,28(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 1, -4
	.cfi_offset 19, -20
	.cfi_offset 23, -36
	.loc 1 164 1
	mv	s4,a0
	mv	s1,a1
	mv	s0,a2
	mv	s6,a3
	mv	s5,a4
	.loc 1 173 14
	addi	s2,sp,12
	.loc 1 171 6
	beq	a5,zero,.L6
	mv	s2,a5
.L6:
.LVL8:
	.loc 1 176 3 is_stmt 1
	.loc 1 176 6 is_stmt 0
	bne	s5,zero,.L7
.L9:
	.loc 1 185 5 is_stmt 1
	.loc 1 185 15 is_stmt 0
	li	a5,22
.LVL9:
.L21:
	.loc 1 203 15
	sw	a5,0(s2)
	.loc 1 204 5 is_stmt 1
	.loc 1 204 12 is_stmt 0
	li	a0,-1
.L5:
	.loc 1 226 1
	lw	ra,60(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
	lw	s1,52(sp)
	.cfi_restore 9
.LVL10:
	lw	s2,48(sp)
	.cfi_restore 18
.LVL11:
	lw	s3,44(sp)
	.cfi_restore 19
	lw	s4,40(sp)
	.cfi_restore 20
.LVL12:
	lw	s5,36(sp)
	.cfi_restore 21
.LVL13:
	lw	s6,32(sp)
	.cfi_restore 22
	lw	s7,28(sp)
	.cfi_restore 23
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
.LVL14:
.L7:
	.cfi_restore_state
	.loc 1 182 3 is_stmt 1
	.loc 1 182 11 is_stmt 0
	sw	zero,0(s5)
	.loc 1 183 3 is_stmt 1
	.loc 1 183 6 is_stmt 0
	beq	s4,zero,.L9
	.loc 1 183 21 discriminator 1
	beq	s1,zero,.L9
	.loc 1 183 38 discriminator 2
	beq	s0,zero,.L9
	.loc 1 189 3 is_stmt 1
	.loc 1 189 13 is_stmt 0
	mv	a0,s4
.LVL15:
	call	strlen
.LVL16:
	.loc 1 190 55
	addi	a5,a0,20
	.loc 1 189 13
	mv	s3,a0
.LVL17:
	.loc 1 190 3 is_stmt 1
	.loc 1 190 6 is_stmt 0
	bleu	a5,s6,.L11
	.loc 1 192 5 is_stmt 1
	.loc 1 192 15 is_stmt 0
	li	a5,34
	j	.L21
.L11:
	.loc 1 196 3 is_stmt 1
	.loc 1 196 72 is_stmt 0
	addi	s0,s0,3
.LVL18:
	.loc 1 196 77
	andi	s0,s0,-4
.LVL19:
	.loc 1 197 3 is_stmt 1
	.loc 1 200 9 is_stmt 0
	addi	s7,s0,8
	mv	a1,s7
	mv	a0,s4
.LVL20:
	.loc 1 197 12
	addi	s6,s0,16
.LVL21:
	.loc 1 200 3 is_stmt 1
	.loc 1 200 9 is_stmt 0
	call	netconn_gethostbyname
.LVL22:
	.loc 1 201 3 is_stmt 1
	.loc 1 201 6 is_stmt 0
	beq	a0,zero,.L12
	.loc 1 202 5 is_stmt 1
	.loc 1 203 5
	.loc 1 203 15 is_stmt 0
	li	a5,210
	j	.L21
.L12:
	.loc 1 208 3 is_stmt 1
	mv	a2,s3
	mv	a1,s4
	mv	a0,s6
.LVL23:
	.loc 1 209 21 is_stmt 0
	add	s3,s6,s3
.LVL24:
	.loc 1 208 3
	call	memcpy
.LVL25:
	.loc 1 209 3 is_stmt 1
	.loc 1 209 21 is_stmt 0
	sb	zero,0(s3)
	.loc 1 212 3 is_stmt 1
	.loc 1 212 19 is_stmt 0
	sw	s7,0(s0)
	.loc 1 213 3 is_stmt 1
	.loc 1 213 19 is_stmt 0
	sw	zero,4(s0)
	.loc 1 214 3 is_stmt 1
	.loc 1 214 14 is_stmt 0
	sw	zero,12(s0)
	.loc 1 215 3 is_stmt 1
	.loc 1 216 20 is_stmt 0
	addi	a5,s0,12
	.loc 1 216 18
	sw	a5,4(s1)
	.loc 1 217 19
	li	a5,2
	sw	a5,8(s1)
	.loc 1 218 17
	li	a5,4
	.loc 1 215 15
	sw	s6,0(s1)
	.loc 1 216 3 is_stmt 1
	.loc 1 217 3
	.loc 1 218 3
	.loc 1 218 17 is_stmt 0
	sw	a5,12(s1)
	.loc 1 219 3 is_stmt 1
	.loc 1 219 20 is_stmt 0
	sw	s0,16(s1)
	.loc 1 222 3 is_stmt 1
	.loc 1 222 11 is_stmt 0
	sw	s1,0(s5)
	.loc 1 225 3 is_stmt 1
	.loc 1 225 10 is_stmt 0
	li	a0,0
	j	.L5
	.cfi_endproc
.LFE6:
	.size	lwip_gethostbyname_r, .-lwip_gethostbyname_r
	.section	.text.lwip_freeaddrinfo,"ax",@progbits
	.align	1
	.globl	lwip_freeaddrinfo
	.type	lwip_freeaddrinfo, @function
lwip_freeaddrinfo:
.LFB7:
	.loc 1 237 1 is_stmt 1
	.cfi_startproc
.LVL26:
	.loc 1 238 3
	.loc 1 240 3
	.loc 1 240 9
	.loc 1 237 1 is_stmt 0
	mv	a1,a0
	.loc 1 240 9
	bne	a0,zero,.L27
	ret
.L27:
	.loc 1 237 1
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
.LVL27:
.L24:
	.loc 1 241 5 is_stmt 1
	.loc 1 241 10 is_stmt 0
	lw	s0,28(a1)
.LVL28:
	.loc 1 242 5 is_stmt 1
	li	a0,12
	call	memp_free
.LVL29:
	.loc 1 243 5
	.loc 1 243 8 is_stmt 0
	mv	a1,s0
	.loc 1 240 9 is_stmt 1
	bne	s0,zero,.L24
	.loc 1 245 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
.LVL30:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE7:
	.size	lwip_freeaddrinfo, .-lwip_freeaddrinfo
	.section	.text.lwip_getaddrinfo,"ax",@progbits
	.align	1
	.globl	lwip_getaddrinfo
	.type	lwip_getaddrinfo, @function
lwip_getaddrinfo:
.LFB8:
	.loc 1 271 1 is_stmt 1
	.cfi_startproc
.LVL31:
	.loc 1 272 3
	.loc 1 273 3
	.loc 1 274 3
	.loc 1 275 3
	.loc 1 276 3
	.loc 1 277 3
	.loc 1 278 3
	.loc 1 279 3
	.loc 1 281 3
	.loc 1 281 6 is_stmt 0
	bne	a3,zero,.L29
	.loc 1 282 12
	li	a5,202
	.loc 1 412 1
	mv	a0,a5
.LVL32:
	ret
.LVL33:
.L29:
	.loc 1 271 1
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	s1,52(sp)
	sw	s2,48(sp)
	sw	s5,36(sp)
	sw	ra,60(sp)
	sw	s0,56(sp)
	sw	s3,44(sp)
	sw	s4,40(sp)
	sw	s6,32(sp)
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 21, -28
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 22, -32
	mv	s2,a0
	.loc 1 284 8
	sw	zero,0(a3)
	mv	a0,a1
.LVL34:
	mv	s1,a2
	mv	s5,a3
	.loc 1 284 3 is_stmt 1
	.loc 1 285 3
	.loc 1 285 6 is_stmt 0
	bne	s2,zero,.L31
.LVL35:
	.loc 1 285 25 discriminator 1
	bne	a1,zero,.L32
.LVL36:
.L37:
	.loc 1 286 12
	li	a5,200
	j	.L28
.LVL37:
.L31:
	.loc 1 289 3 is_stmt 1
	.loc 1 289 6 is_stmt 0
	beq	a2,zero,.L33
.L45:
	.loc 1 290 5 is_stmt 1
.LVL38:
	.loc 1 291 5
	.loc 1 291 8 is_stmt 0
	lw	s3,4(s1)
	.loc 1 299 14
	li	a5,204
	.loc 1 291 8
	andi	s3,s3,-3
	bne	s3,zero,.L28
.LVL39:
	.loc 1 305 3 is_stmt 1
	.loc 1 305 6 is_stmt 0
	beq	a0,zero,.L34
.L46:
	.loc 1 308 5 is_stmt 1
	.loc 1 308 15 is_stmt 0
	call	atoi
.LVL40:
	.loc 1 309 8
	li	a4,65536
	.loc 1 309 24
	addi	a3,a0,-1
	.loc 1 309 8
	addi	a4,a4,-2
	.loc 1 308 15
	mv	s3,a0
.LVL41:
	.loc 1 309 5 is_stmt 1
	.loc 1 310 14 is_stmt 0
	li	a5,201
	.loc 1 309 8
	bgtu	a3,a4,.L28
	.loc 1 314 3 is_stmt 1
	.loc 1 314 6 is_stmt 0
	beq	s2,zero,.L35
	.loc 1 316 5 is_stmt 1
	.loc 1 316 8 is_stmt 0
	beq	s1,zero,.L36
.LVL42:
.L47:
	.loc 1 316 44 discriminator 1
	lw	a5,0(s1)
	andi	a5,a5,4
	.loc 1 316 24 discriminator 1
	beq	a5,zero,.L36
	.loc 1 318 7 is_stmt 1
	.loc 1 318 12 is_stmt 0
	addi	a1,sp,28
	mv	a0,s2
	call	ip4addr_aton
.LVL43:
	.loc 1 318 10
	beq	a0,zero,.L37
.L38:
	.loc 1 351 3 is_stmt 1
.LVL44:
	.loc 1 352 3
	.loc 1 353 5
	.loc 1 353 15 is_stmt 0
	mv	a0,s2
	call	strlen
.LVL45:
	.loc 1 354 8
	li	a5,256
	.loc 1 353 15
	mv	s4,a0
.LVL46:
	.loc 1 354 5 is_stmt 1
	.loc 1 358 37 is_stmt 0
	addi	a2,a0,49
	.loc 1 354 8
	bleu	a0,a5,.L43
	j	.L39
.LVL47:
.L51:
	.loc 1 347 24
	li	a5,16777216
	addi	a5,a5,127
	j	.L40
.LVL48:
.L32:
	.loc 1 289 3 is_stmt 1
	.loc 1 289 6 is_stmt 0
	bne	a2,zero,.L45
	j	.L46
.L33:
	.loc 1 305 3 is_stmt 1
	.loc 1 276 7 is_stmt 0
	li	s3,0
	.loc 1 305 6
	bne	a1,zero,.L46
.LVL49:
.L36:
	.loc 1 337 7 is_stmt 1
	.loc 1 337 13 is_stmt 0
	addi	a1,sp,28
	mv	a0,s2
	call	netconn_gethostbyname
.LVL50:
	.loc 1 338 7 is_stmt 1
	.loc 1 338 10 is_stmt 0
	beq	a0,zero,.L38
.LVL51:
.L39:
	.loc 1 282 12
	li	a5,202
.LVL52:
.L28:
	.loc 1 412 1
	lw	ra,60(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
	lw	s1,52(sp)
	.cfi_restore 9
.LVL53:
	lw	s2,48(sp)
	.cfi_restore 18
.LVL54:
	lw	s3,44(sp)
	.cfi_restore 19
	lw	s4,40(sp)
	.cfi_restore 20
	lw	s5,36(sp)
	.cfi_restore 21
.LVL55:
	lw	s6,32(sp)
	.cfi_restore 22
	mv	a0,a5
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
.LVL56:
.L34:
	.cfi_restore_state
	.loc 1 314 3 is_stmt 1
	.loc 1 314 6 is_stmt 0
	bne	s2,zero,.L47
.LVL57:
.L35:
	.loc 1 344 5 is_stmt 1
	.loc 1 344 8 is_stmt 0
	beq	s1,zero,.L51
	.loc 1 344 44 discriminator 1
	lw	a5,0(s1)
	andi	a5,a5,1
	.loc 1 344 24 discriminator 1
	beq	a5,zero,.L51
	.loc 1 345 24
	li	a5,0
.L40:
	sw	a5,28(sp)
	.loc 1 351 3 is_stmt 1
.LVL58:
	.loc 1 352 3
	.loc 1 278 10 is_stmt 0
	li	s4,0
	.loc 1 351 14
	li	a2,48
.LVL59:
.L43:
	.loc 1 364 27 discriminator 1
	li	a0,12
	sw	a2,12(sp)
.LVL60:
	.loc 1 362 3 is_stmt 1 discriminator 1
	.loc 1 362 8 discriminator 1
	.loc 1 362 102 discriminator 1
	.loc 1 362 112 discriminator 1
	.loc 1 364 3 discriminator 1
	.loc 1 364 27 is_stmt 0 discriminator 1
	call	memp_malloc
.LVL61:
	mv	s0,a0
.LVL62:
	.loc 1 365 3 is_stmt 1 discriminator 1
	.loc 1 366 12 is_stmt 0 discriminator 1
	li	a5,203
	.loc 1 365 6 discriminator 1
	beq	a0,zero,.L28
	.loc 1 368 3 is_stmt 1
	lw	a2,12(sp)
	li	a1,0
	.loc 1 370 6 is_stmt 0
	addi	s6,s0,32
	.loc 1 368 3
	call	memset
.LVL63:
	.loc 1 370 3 is_stmt 1
	.loc 1 371 3
.LBB2:
	.loc 1 384 5
	.loc 1 386 5
	.loc 1 386 31 is_stmt 0
	lw	a5,28(sp)
	.loc 1 389 21
	slli	a0,s3,16
	srli	a0,a0,16
	.loc 1 386 31
	sw	a5,36(s0)
	.loc 1 387 5 is_stmt 1
	.loc 1 388 5
	.loc 1 388 18 is_stmt 0
	li	a5,528
	sh	a5,32(s0)
	.loc 1 389 5 is_stmt 1
	.loc 1 389 21 is_stmt 0
	call	lwip_htons
.LVL64:
	.loc 1 390 19
	li	a5,2
	.loc 1 389 19
	sh	a0,34(s0)
	.loc 1 390 5 is_stmt 1
	.loc 1 390 19 is_stmt 0
	sw	a5,4(s0)
.LBE2:
	.loc 1 395 3 is_stmt 1
	.loc 1 395 6 is_stmt 0
	beq	s1,zero,.L41
	.loc 1 397 5 is_stmt 1
	.loc 1 397 28 is_stmt 0
	lw	a5,8(s1)
	.loc 1 397 21
	sw	a5,8(s0)
	.loc 1 398 5 is_stmt 1
	.loc 1 398 28 is_stmt 0
	lw	a5,12(s1)
	.loc 1 398 21
	sw	a5,12(s0)
.L41:
	.loc 1 400 3 is_stmt 1
	.loc 1 400 6 is_stmt 0
	beq	s2,zero,.L42
	.loc 1 402 5 is_stmt 1
	.loc 1 402 62 is_stmt 0
	addi	a0,s0,48
	.loc 1 403 5
	mv	a2,s4
	.loc 1 402 22
	sw	a0,24(s0)
	.loc 1 403 5 is_stmt 1
	mv	a1,s2
	call	memcpy
.LVL65:
	.loc 1 404 5
	.loc 1 404 31 is_stmt 0
	lw	a0,24(s0)
	add	s4,a0,s4
.LVL66:
	sb	zero,0(s4)
.L42:
	.loc 1 406 3 is_stmt 1
	.loc 1 406 18 is_stmt 0
	li	a5,16
	sw	a5,16(s0)
	.loc 1 407 3 is_stmt 1
	.loc 1 407 15 is_stmt 0
	sw	s6,20(s0)
	.loc 1 409 3 is_stmt 1
	.loc 1 409 8 is_stmt 0
	sw	s0,0(s5)
	.loc 1 411 3 is_stmt 1
	.loc 1 411 10 is_stmt 0
	li	a5,0
	j	.L28
	.cfi_endproc
.LFE8:
	.size	lwip_getaddrinfo, .-lwip_getaddrinfo
	.comm	h_errno,4,4
	.section	.bss.s_hostent.1,"aw",@nobits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	s_hostent.1, @object
	.size	s_hostent.1, 20
s_hostent.1:
	.zero	20
	.section	.bss.s_hostname.2,"aw",@nobits
	.align	2
	.set	.LANCHOR3,. + 0
	.type	s_hostname.2, @object
	.size	s_hostname.2, 257
s_hostname.2:
	.zero	257
	.section	.sbss.s_aliases.0,"aw",@nobits
	.align	2
	.set	.LANCHOR4,. + 0
	.type	s_aliases.0, @object
	.size	s_aliases.0, 4
s_aliases.0:
	.zero	4
	.section	.sbss.s_hostent_addr.4,"aw",@nobits
	.align	2
	.set	.LANCHOR1,. + 0
	.type	s_hostent_addr.4, @object
	.size	s_hostent_addr.4, 4
s_hostent_addr.4:
	.zero	4
	.section	.sbss.s_phostent_addr.3,"aw",@nobits
	.align	2
	.set	.LANCHOR2,. + 0
	.type	s_phostent_addr.3, @object
	.size	s_phostent_addr.3, 8
s_phostent_addr.3:
	.zero	8
	.text
.Letext0:
	.file 2 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 3 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h"
	.file 4 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 5 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/types.h"
	.file 6 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/arch.h"
	.file 7 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/ip4_addr.h"
	.file 8 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/ip_addr.h"
	.file 9 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/inet.h"
	.file 10 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/err.h"
	.file 11 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/memp.h"
	.file 12 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/sockets.h"
	.file 13 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/netdb.h"
	.file 14 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/def.h"
	.file 15 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdlib.h"
	.file 16 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h"
	.file 17 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/api.h"
	.file 18 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/netif.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x9b1
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF137
	.byte	0xc
	.4byte	.LASF138
	.4byte	.LASF139
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x3
	.4byte	.LASF1
	.byte	0x2
	.byte	0x29
	.byte	0x15
	.4byte	0x38
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.byte	0x3
	.4byte	.LASF2
	.byte	0x2
	.byte	0x2b
	.byte	0x17
	.4byte	0x4b
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.byte	0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.byte	0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0x39
	.byte	0x1c
	.4byte	0x65
	.byte	0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF6
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.byte	0x3
	.4byte	.LASF8
	.byte	0x2
	.byte	0x4f
	.byte	0x1b
	.4byte	0x7f
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.byte	0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF10
	.byte	0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.byte	0x3
	.4byte	.LASF12
	.byte	0x2
	.byte	0xe8
	.byte	0x16
	.4byte	0xa0
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.byte	0x3
	.4byte	.LASF14
	.byte	0x3
	.byte	0xd1
	.byte	0x16
	.4byte	0xa0
	.byte	0x5
	.byte	0x4
	.4byte	0xb9
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.byte	0x6
	.4byte	0xb9
	.byte	0x5
	.byte	0x4
	.4byte	0xc0
	.byte	0x7
	.4byte	0xb9
	.4byte	0xdb
	.byte	0x8
	.4byte	0xa0
	.byte	0x7
	.byte	0
	.byte	0x3
	.4byte	.LASF16
	.byte	0x4
	.byte	0x14
	.byte	0x12
	.4byte	0x2c
	.byte	0x3
	.4byte	.LASF17
	.byte	0x4
	.byte	0x18
	.byte	0x13
	.4byte	0x3f
	.byte	0x3
	.4byte	.LASF18
	.byte	0x4
	.byte	0x24
	.byte	0x14
	.4byte	0x59
	.byte	0x3
	.4byte	.LASF19
	.byte	0x4
	.byte	0x30
	.byte	0x14
	.4byte	0x73
	.byte	0x3
	.4byte	.LASF20
	.byte	0x4
	.byte	0x52
	.byte	0x15
	.4byte	0x94
	.byte	0x3
	.4byte	.LASF21
	.byte	0x5
	.byte	0x37
	.byte	0x14
	.4byte	0x73
	.byte	0x3
	.4byte	.LASF22
	.byte	0x5
	.byte	0x3c
	.byte	0x14
	.4byte	0x59
	.byte	0x3
	.4byte	.LASF23
	.byte	0x6
	.byte	0x7d
	.byte	0x11
	.4byte	0xe7
	.byte	0x3
	.4byte	.LASF24
	.byte	0x6
	.byte	0x7e
	.byte	0x10
	.4byte	0xdb
	.byte	0x3
	.4byte	.LASF25
	.byte	0x6
	.byte	0x7f
	.byte	0x12
	.4byte	0xf3
	.byte	0x3
	.4byte	.LASF26
	.byte	0x6
	.byte	0x81
	.byte	0x12
	.4byte	0xff
	.byte	0x3
	.4byte	.LASF27
	.byte	0x6
	.byte	0x87
	.byte	0x13
	.4byte	0x10b
	.byte	0x9
	.4byte	.LASF30
	.byte	0x4
	.byte	0x7
	.byte	0x33
	.byte	0x8
	.4byte	0x186
	.byte	0xa
	.4byte	.LASF32
	.byte	0x7
	.byte	0x34
	.byte	0x9
	.4byte	0x153
	.byte	0
	.byte	0
	.byte	0x3
	.4byte	.LASF28
	.byte	0x7
	.byte	0x39
	.byte	0x19
	.4byte	0x16b
	.byte	0xb
	.4byte	.LASF29
	.byte	0x8
	.2byte	0x10e
	.byte	0x14
	.4byte	0x186
	.byte	0x9
	.4byte	.LASF31
	.byte	0x4
	.byte	0x9
	.byte	0x3a
	.byte	0x8
	.4byte	0x1ba
	.byte	0xa
	.4byte	.LASF33
	.byte	0x9
	.byte	0x3b
	.byte	0xd
	.4byte	0x117
	.byte	0
	.byte	0
	.byte	0xc
	.byte	0x5
	.byte	0x4
	.4byte	0x25
	.byte	0xa
	.byte	0x35
	.byte	0xe
	.4byte	0x22f
	.byte	0xd
	.4byte	.LASF34
	.byte	0
	.byte	0xe
	.4byte	.LASF35
	.byte	0x7f
	.byte	0xe
	.4byte	.LASF36
	.byte	0x7e
	.byte	0xe
	.4byte	.LASF37
	.byte	0x7d
	.byte	0xe
	.4byte	.LASF38
	.byte	0x7c
	.byte	0xe
	.4byte	.LASF39
	.byte	0x7b
	.byte	0xe
	.4byte	.LASF40
	.byte	0x7a
	.byte	0xe
	.4byte	.LASF41
	.byte	0x79
	.byte	0xe
	.4byte	.LASF42
	.byte	0x78
	.byte	0xe
	.4byte	.LASF43
	.byte	0x77
	.byte	0xe
	.4byte	.LASF44
	.byte	0x76
	.byte	0xe
	.4byte	.LASF45
	.byte	0x75
	.byte	0xe
	.4byte	.LASF46
	.byte	0x74
	.byte	0xe
	.4byte	.LASF47
	.byte	0x73
	.byte	0xe
	.4byte	.LASF48
	.byte	0x72
	.byte	0xe
	.4byte	.LASF49
	.byte	0x71
	.byte	0xe
	.4byte	.LASF50
	.byte	0x70
	.byte	0
	.byte	0x3
	.4byte	.LASF51
	.byte	0xa
	.byte	0x60
	.byte	0xe
	.4byte	0x13b
	.byte	0xc
	.byte	0x7
	.byte	0x4
	.4byte	0xa0
	.byte	0xb
	.byte	0x34
	.byte	0xe
	.4byte	0x2aa
	.byte	0xd
	.4byte	.LASF52
	.byte	0
	.byte	0xd
	.4byte	.LASF53
	.byte	0x1
	.byte	0xd
	.4byte	.LASF54
	.byte	0x2
	.byte	0xd
	.4byte	.LASF55
	.byte	0x3
	.byte	0xd
	.4byte	.LASF56
	.byte	0x4
	.byte	0xd
	.4byte	.LASF57
	.byte	0x5
	.byte	0xd
	.4byte	.LASF58
	.byte	0x6
	.byte	0xd
	.4byte	.LASF59
	.byte	0x7
	.byte	0xd
	.4byte	.LASF60
	.byte	0x8
	.byte	0xd
	.4byte	.LASF61
	.byte	0x9
	.byte	0xd
	.4byte	.LASF62
	.byte	0xa
	.byte	0xd
	.4byte	.LASF63
	.byte	0xb
	.byte	0xd
	.4byte	.LASF64
	.byte	0xc
	.byte	0xd
	.4byte	.LASF65
	.byte	0xd
	.byte	0xd
	.4byte	.LASF66
	.byte	0xe
	.byte	0xd
	.4byte	.LASF67
	.byte	0xf
	.byte	0
	.byte	0xf
	.4byte	.LASF140
	.byte	0x7
	.byte	0x4
	.4byte	0xa0
	.byte	0x12
	.byte	0x71
	.byte	0x6
	.4byte	0x2cf
	.byte	0xd
	.4byte	.LASF68
	.byte	0
	.byte	0xd
	.4byte	.LASF69
	.byte	0x1
	.byte	0xd
	.4byte	.LASF70
	.byte	0x2
	.byte	0
	.byte	0x7
	.4byte	0xb9
	.4byte	0x2df
	.byte	0x8
	.4byte	0xa0
	.byte	0x1
	.byte	0
	.byte	0x3
	.4byte	.LASF71
	.byte	0xc
	.byte	0x3d
	.byte	0xe
	.4byte	0x12f
	.byte	0x9
	.4byte	.LASF72
	.byte	0x10
	.byte	0xc
	.byte	0x47
	.byte	0x8
	.4byte	0x33a
	.byte	0xa
	.4byte	.LASF73
	.byte	0xc
	.byte	0x48
	.byte	0x8
	.4byte	0x12f
	.byte	0
	.byte	0xa
	.4byte	.LASF74
	.byte	0xc
	.byte	0x49
	.byte	0xf
	.4byte	0x2df
	.byte	0x1
	.byte	0xa
	.4byte	.LASF75
	.byte	0xc
	.byte	0x4a
	.byte	0xd
	.4byte	0x123
	.byte	0x2
	.byte	0xa
	.4byte	.LASF76
	.byte	0xc
	.byte	0x4b
	.byte	0x12
	.4byte	0x19f
	.byte	0x4
	.byte	0xa
	.4byte	.LASF77
	.byte	0xc
	.byte	0x4d
	.byte	0x8
	.4byte	0xcb
	.byte	0x8
	.byte	0
	.byte	0x9
	.4byte	.LASF78
	.byte	0x10
	.byte	0xc
	.byte	0x5c
	.byte	0x8
	.4byte	0x36f
	.byte	0xa
	.4byte	.LASF79
	.byte	0xc
	.byte	0x5d
	.byte	0x8
	.4byte	0x12f
	.byte	0
	.byte	0xa
	.4byte	.LASF80
	.byte	0xc
	.byte	0x5e
	.byte	0xf
	.4byte	0x2df
	.byte	0x1
	.byte	0xa
	.4byte	.LASF81
	.byte	0xc
	.byte	0x5f
	.byte	0x8
	.4byte	0x36f
	.byte	0x2
	.byte	0
	.byte	0x7
	.4byte	0xb9
	.4byte	0x37f
	.byte	0x8
	.4byte	0xa0
	.byte	0xd
	.byte	0
	.byte	0x9
	.4byte	.LASF82
	.byte	0x10
	.byte	0xc
	.byte	0x62
	.byte	0x8
	.4byte	0x3c1
	.byte	0xa
	.4byte	.LASF83
	.byte	0xc
	.byte	0x63
	.byte	0x8
	.4byte	0x12f
	.byte	0
	.byte	0xa
	.4byte	.LASF84
	.byte	0xc
	.byte	0x64
	.byte	0xf
	.4byte	0x2df
	.byte	0x1
	.byte	0xa
	.4byte	.LASF85
	.byte	0xc
	.byte	0x65
	.byte	0x8
	.4byte	0x2cf
	.byte	0x2
	.byte	0xa
	.4byte	.LASF86
	.byte	0xc
	.byte	0x66
	.byte	0x9
	.4byte	0x3c1
	.byte	0x4
	.byte	0
	.byte	0x7
	.4byte	0x153
	.4byte	0x3d1
	.byte	0x8
	.4byte	0xa0
	.byte	0x2
	.byte	0
	.byte	0x3
	.4byte	.LASF87
	.byte	0xc
	.byte	0x6f
	.byte	0xf
	.4byte	0x153
	.byte	0x9
	.4byte	.LASF88
	.byte	0x14
	.byte	0xd
	.byte	0x5c
	.byte	0x8
	.4byte	0x42c
	.byte	0xa
	.4byte	.LASF89
	.byte	0xd
	.byte	0x5d
	.byte	0xb
	.4byte	0xb3
	.byte	0
	.byte	0xa
	.4byte	.LASF90
	.byte	0xd
	.byte	0x5e
	.byte	0xc
	.4byte	0x42c
	.byte	0x4
	.byte	0xa
	.4byte	.LASF91
	.byte	0xd
	.byte	0x60
	.byte	0x9
	.4byte	0x25
	.byte	0x8
	.byte	0xa
	.4byte	.LASF92
	.byte	0xd
	.byte	0x61
	.byte	0x9
	.4byte	0x25
	.byte	0xc
	.byte	0xa
	.4byte	.LASF93
	.byte	0xd
	.byte	0x62
	.byte	0xc
	.4byte	0x42c
	.byte	0x10
	.byte	0
	.byte	0x5
	.byte	0x4
	.4byte	0xb3
	.byte	0x9
	.4byte	.LASF94
	.byte	0x20
	.byte	0xd
	.byte	0x67
	.byte	0x8
	.4byte	0x4a8
	.byte	0xa
	.4byte	.LASF95
	.byte	0xd
	.byte	0x68
	.byte	0x9
	.4byte	0x25
	.byte	0
	.byte	0xa
	.4byte	.LASF96
	.byte	0xd
	.byte	0x69
	.byte	0x9
	.4byte	0x25
	.byte	0x4
	.byte	0xa
	.4byte	.LASF97
	.byte	0xd
	.byte	0x6a
	.byte	0x9
	.4byte	0x25
	.byte	0x8
	.byte	0xa
	.4byte	.LASF98
	.byte	0xd
	.byte	0x6b
	.byte	0x9
	.4byte	0x25
	.byte	0xc
	.byte	0xa
	.4byte	.LASF99
	.byte	0xd
	.byte	0x6c
	.byte	0xf
	.4byte	0x3d1
	.byte	0x10
	.byte	0xa
	.4byte	.LASF100
	.byte	0xd
	.byte	0x6d
	.byte	0x16
	.4byte	0x4ad
	.byte	0x14
	.byte	0xa
	.4byte	.LASF101
	.byte	0xd
	.byte	0x6e
	.byte	0xb
	.4byte	0xb3
	.byte	0x18
	.byte	0xa
	.4byte	.LASF102
	.byte	0xd
	.byte	0x6f
	.byte	0x16
	.4byte	0x4b3
	.byte	0x1c
	.byte	0
	.byte	0x6
	.4byte	0x432
	.byte	0x5
	.byte	0x4
	.4byte	0x33a
	.byte	0x5
	.byte	0x4
	.4byte	0x432
	.byte	0x10
	.4byte	.LASF141
	.byte	0xd
	.byte	0x77
	.byte	0xc
	.4byte	0x25
	.byte	0x9
	.4byte	.LASF103
	.byte	0x10
	.byte	0x1
	.byte	0x35
	.byte	0x8
	.4byte	0x4fa
	.byte	0xa
	.4byte	.LASF104
	.byte	0x1
	.byte	0x36
	.byte	0xe
	.4byte	0x4fa
	.byte	0
	.byte	0xa
	.4byte	.LASF32
	.byte	0x1
	.byte	0x37
	.byte	0xd
	.4byte	0x192
	.byte	0x8
	.byte	0xa
	.4byte	.LASF105
	.byte	0x1
	.byte	0x38
	.byte	0x9
	.4byte	0xb3
	.byte	0xc
	.byte	0
	.byte	0x7
	.4byte	0x50a
	.4byte	0x50a
	.byte	0x8
	.4byte	0xa0
	.byte	0x1
	.byte	0
	.byte	0x5
	.byte	0x4
	.4byte	0x192
	.byte	0x11
	.4byte	0x4b9
	.byte	0x1
	.byte	0x3d
	.byte	0x5
	.byte	0x5
	.byte	0x3
	.4byte	h_errno
	.byte	0x12
	.4byte	.LASF113
	.byte	0x1
	.2byte	0x10d
	.byte	0x1
	.4byte	0x25
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0x6d2
	.byte	0x13
	.4byte	.LASF106
	.byte	0x1
	.2byte	0x10d
	.byte	0x1e
	.4byte	0xc5
	.4byte	.LLST12
	.byte	0x13
	.4byte	.LASF107
	.byte	0x1
	.2byte	0x10d
	.byte	0x34
	.4byte	0xc5
	.4byte	.LLST13
	.byte	0x13
	.4byte	.LASF108
	.byte	0x1
	.2byte	0x10e
	.byte	0x29
	.4byte	0x6d2
	.4byte	.LLST14
	.byte	0x14
	.string	"res"
	.byte	0x1
	.2byte	0x10e
	.byte	0x42
	.4byte	0x6d8
	.4byte	.LLST15
	.byte	0x15
	.string	"err"
	.byte	0x1
	.2byte	0x110
	.byte	0x9
	.4byte	0x22f
	.4byte	.LLST16
	.byte	0x16
	.4byte	.LASF32
	.byte	0x1
	.2byte	0x111
	.byte	0xd
	.4byte	0x192
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x17
	.string	"ai"
	.byte	0x1
	.2byte	0x112
	.byte	0x14
	.4byte	0x4b3
	.byte	0x1
	.byte	0x58
	.byte	0x15
	.string	"sa"
	.byte	0x1
	.2byte	0x113
	.byte	0x1c
	.4byte	0x6de
	.4byte	.LLST17
	.byte	0x18
	.4byte	.LASF109
	.byte	0x1
	.2byte	0x114
	.byte	0x7
	.4byte	0x25
	.4byte	.LLST18
	.byte	0x18
	.4byte	.LASF110
	.byte	0x1
	.2byte	0x115
	.byte	0xa
	.4byte	0xa7
	.4byte	.LLST19
	.byte	0x18
	.4byte	.LASF111
	.byte	0x1
	.2byte	0x116
	.byte	0xa
	.4byte	0xa7
	.4byte	.LLST20
	.byte	0x18
	.4byte	.LASF96
	.byte	0x1
	.2byte	0x117
	.byte	0x7
	.4byte	0x25
	.4byte	.LLST21
	.byte	0x19
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.4byte	0x631
	.byte	0x17
	.string	"sa4"
	.byte	0x1
	.2byte	0x180
	.byte	0x19
	.4byte	0x6e4
	.byte	0x1
	.byte	0x66
	.byte	0x1a
	.4byte	.LVL64
	.4byte	0x93b
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x6
	.byte	0x83
	.byte	0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x25
	.byte	0
	.byte	0
	.byte	0x1c
	.4byte	.LVL40
	.4byte	0x947
	.byte	0x1d
	.4byte	.LVL43
	.4byte	0x953
	.4byte	0x654
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x1b
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0
	.byte	0x1d
	.4byte	.LVL45
	.4byte	0x95f
	.4byte	0x668
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x1d
	.4byte	.LVL50
	.4byte	0x96b
	.4byte	0x682
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x1b
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0
	.byte	0x1d
	.4byte	.LVL61
	.4byte	0x978
	.4byte	0x695
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x3c
	.byte	0
	.byte	0x1d
	.4byte	.LVL63
	.4byte	0x984
	.4byte	0x6b5
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x1b
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x1b
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0x91
	.byte	0x4c
	.byte	0x6
	.byte	0
	.byte	0x1a
	.4byte	.LVL65
	.4byte	0x990
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x30
	.byte	0x1b
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x1b
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0
	.byte	0
	.byte	0x5
	.byte	0x4
	.4byte	0x4a8
	.byte	0x5
	.byte	0x4
	.4byte	0x4b3
	.byte	0x5
	.byte	0x4
	.4byte	0x37f
	.byte	0x5
	.byte	0x4
	.4byte	0x2eb
	.byte	0x1e
	.4byte	.LASF142
	.byte	0x1
	.byte	0xec
	.byte	0x1
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.4byte	0x72f
	.byte	0x1f
	.string	"ai"
	.byte	0x1
	.byte	0xec
	.byte	0x24
	.4byte	0x4b3
	.4byte	.LLST10
	.byte	0x20
	.4byte	.LASF112
	.byte	0x1
	.byte	0xee
	.byte	0x14
	.4byte	0x4b3
	.4byte	.LLST11
	.byte	0x1a
	.4byte	.LVL29
	.4byte	0x99c
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x3c
	.byte	0
	.byte	0
	.byte	0x21
	.4byte	.LASF114
	.byte	0x1
	.byte	0xa2
	.byte	0x1
	.4byte	0x25
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0x837
	.byte	0x22
	.4byte	.LASF115
	.byte	0x1
	.byte	0xa2
	.byte	0x22
	.4byte	0xc5
	.4byte	.LLST2
	.byte	0x1f
	.string	"ret"
	.byte	0x1
	.byte	0xa2
	.byte	0x38
	.4byte	0x837
	.4byte	.LLST3
	.byte	0x1f
	.string	"buf"
	.byte	0x1
	.byte	0xa2
	.byte	0x43
	.4byte	0xb3
	.4byte	.LLST4
	.byte	0x22
	.4byte	.LASF116
	.byte	0x1
	.byte	0xa3
	.byte	0x1d
	.4byte	0xa7
	.4byte	.LLST5
	.byte	0x22
	.4byte	.LASF117
	.byte	0x1
	.byte	0xa3
	.byte	0x36
	.4byte	0x83d
	.4byte	.LLST6
	.byte	0x22
	.4byte	.LASF118
	.byte	0x1
	.byte	0xa3
	.byte	0x43
	.4byte	0x843
	.4byte	.LLST7
	.byte	0x23
	.string	"err"
	.byte	0x1
	.byte	0xa5
	.byte	0x9
	.4byte	0x22f
	.4byte	.LLST8
	.byte	0x24
	.string	"h"
	.byte	0x1
	.byte	0xa6
	.byte	0x22
	.4byte	0x849
	.byte	0x1
	.byte	0x58
	.byte	0x25
	.4byte	.LASF119
	.byte	0x1
	.byte	0xa7
	.byte	0x9
	.4byte	0xb3
	.byte	0x1
	.byte	0x66
	.byte	0x20
	.4byte	.LASF111
	.byte	0x1
	.byte	0xa8
	.byte	0xa
	.4byte	0xa7
	.4byte	.LLST9
	.byte	0x25
	.4byte	.LASF120
	.byte	0x1
	.byte	0xa9
	.byte	0x7
	.4byte	0x25
	.byte	0x2
	.byte	0x91
	.byte	0x4c
	.byte	0x1d
	.4byte	.LVL16
	.4byte	0x95f
	.4byte	0x806
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0
	.byte	0x1d
	.4byte	.LVL22
	.4byte	0x96b
	.4byte	0x820
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0x1b
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x87
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LVL25
	.4byte	0x990
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x86
	.byte	0
	.byte	0x1b
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0
	.byte	0
	.byte	0x5
	.byte	0x4
	.4byte	0x3dd
	.byte	0x5
	.byte	0x4
	.4byte	0x837
	.byte	0x5
	.byte	0x4
	.4byte	0x25
	.byte	0x5
	.byte	0x4
	.4byte	0x4c5
	.byte	0x21
	.4byte	.LASF121
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.4byte	0x837
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0x92a
	.byte	0x22
	.4byte	.LASF115
	.byte	0x1
	.byte	0x57
	.byte	0x20
	.4byte	0xc5
	.4byte	.LLST0
	.byte	0x23
	.string	"err"
	.byte	0x1
	.byte	0x59
	.byte	0x9
	.4byte	0x22f
	.4byte	.LLST1
	.byte	0x25
	.4byte	.LASF32
	.byte	0x1
	.byte	0x5a
	.byte	0xd
	.4byte	0x192
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x25
	.4byte	.LASF122
	.byte	0x1
	.byte	0x5d
	.byte	0x19
	.4byte	0x3dd
	.byte	0x5
	.byte	0x3
	.4byte	s_hostent.1
	.byte	0x25
	.4byte	.LASF123
	.byte	0x1
	.byte	0x5e
	.byte	0x10
	.4byte	0xb3
	.byte	0x5
	.byte	0x3
	.4byte	s_aliases.0
	.byte	0x25
	.4byte	.LASF124
	.byte	0x1
	.byte	0x5f
	.byte	0x14
	.4byte	0x192
	.byte	0x5
	.byte	0x3
	.4byte	s_hostent_addr.4
	.byte	0x25
	.4byte	.LASF125
	.byte	0x1
	.byte	0x60
	.byte	0x15
	.4byte	0x4fa
	.byte	0x5
	.byte	0x3
	.4byte	s_phostent_addr.3
	.byte	0x25
	.4byte	.LASF126
	.byte	0x1
	.byte	0x61
	.byte	0xf
	.4byte	0x92a
	.byte	0x5
	.byte	0x3
	.4byte	s_hostname.2
	.byte	0x1d
	.4byte	.LVL1
	.4byte	0x96b
	.4byte	0x90c
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x1b
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0x1a
	.4byte	.LVL6
	.4byte	0x9a8
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x1b
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x1b
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xa
	.2byte	0x100
	.byte	0
	.byte	0
	.byte	0x7
	.4byte	0xb9
	.4byte	0x93b
	.byte	0x26
	.4byte	0xa0
	.2byte	0x100
	.byte	0
	.byte	0x27
	.4byte	.LASF127
	.4byte	.LASF127
	.byte	0xe
	.byte	0x60
	.byte	0x7
	.byte	0x27
	.4byte	.LASF128
	.4byte	.LASF128
	.byte	0xf
	.byte	0x51
	.byte	0x5
	.byte	0x27
	.4byte	.LASF129
	.4byte	.LASF129
	.byte	0x7
	.byte	0xcd
	.byte	0x5
	.byte	0x27
	.4byte	.LASF130
	.4byte	.LASF130
	.byte	0x10
	.byte	0x29
	.byte	0x8
	.byte	0x28
	.4byte	.LASF131
	.4byte	.LASF131
	.byte	0x11
	.2byte	0x16c
	.byte	0x7
	.byte	0x27
	.4byte	.LASF132
	.4byte	.LASF132
	.byte	0xb
	.byte	0x93
	.byte	0x7
	.byte	0x27
	.4byte	.LASF133
	.4byte	.LASF133
	.byte	0x10
	.byte	0x21
	.byte	0x8
	.byte	0x27
	.4byte	.LASF134
	.4byte	.LASF134
	.byte	0x10
	.byte	0x1f
	.byte	0x8
	.byte	0x27
	.4byte	.LASF135
	.4byte	.LASF135
	.byte	0xb
	.byte	0x95
	.byte	0x6
	.byte	0x27
	.4byte	.LASF136
	.4byte	.LASF136
	.byte	0x10
	.byte	0x2c
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
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
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
	.byte	0xc
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
	.byte	0xd
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xe
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xd
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
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
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
	.byte	0x3f
	.byte	0x19
	.byte	0x3c
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x11
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
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x14
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
	.byte	0x17
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
	.byte	0x18
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
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x18
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
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x19
	.byte	0xb
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1a
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1b
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x1c
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1d
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
	.byte	0x20
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
	.byte	0x21
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
	.byte	0x17
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
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x24
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
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x26
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0x5
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
	.byte	0x28
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
.LLST12:
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
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL54
	.4byte	.LVL56
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL56
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL31
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL37
	.4byte	.LVL40-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL40-1
	.4byte	.LVL48
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL49
	.4byte	.LVL56
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL56
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL57
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL31
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL35
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL53
	.4byte	.LVL56
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL56
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL31
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL37
	.4byte	.LVL40-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL40-1
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL49
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL55
	.4byte	.LVL56
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL56
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL57
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x65
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL50
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL31
	.4byte	.LVL52
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL56
	.4byte	.LVL63
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL63
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x66
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL31
	.4byte	.LVL36
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL37
	.4byte	.LVL41
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL56
	.4byte	.LVL57
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL44
	.4byte	.LVL47
	.2byte	0x3
	.byte	0x8
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL58
	.4byte	.LVL60
	.2byte	0x3
	.byte	0x8
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL60
	.4byte	.LVL61-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL61-1
	.4byte	.LFE8
	.2byte	0x2
	.byte	0x91
	.byte	0x4c
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL31
	.4byte	.LVL46
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL47
	.4byte	.LVL51
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL56
	.4byte	.LVL59
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL60
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x2
	.byte	0x79
	.byte	0x4
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL27
	.4byte	.LVL29-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL30
	.4byte	.LFE7
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL28
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL30
	.4byte	.LFE7
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL7
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL9
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL12
	.4byte	.LVL14
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL15
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL7
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL10
	.4byte	.LVL14
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL7
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL9
	.4byte	.LVL14
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x3
	.byte	0x78
	.byte	0x7d
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL7
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL9
	.4byte	.LVL14
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL16-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL16-1
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL21
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL7
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL9
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL16-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL16-1
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x65
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL8
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL14
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL17
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL20
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL24
	.4byte	.LVL25-1
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1-1
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x34
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
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF53:
	.string	"MEMP_UDP_PCB"
.LASF104:
	.string	"addr_list"
.LASF63:
	.string	"MEMP_SYS_TIMEOUT"
.LASF27:
	.string	"mem_ptr_t"
.LASF95:
	.string	"ai_flags"
.LASF14:
	.string	"size_t"
.LASF112:
	.string	"next"
.LASF20:
	.string	"uintptr_t"
.LASF64:
	.string	"MEMP_NETDB"
.LASF105:
	.string	"aliases"
.LASF94:
	.string	"addrinfo"
.LASF2:
	.string	"__uint8_t"
.LASF135:
	.string	"memp_free"
.LASF82:
	.string	"sockaddr_storage"
.LASF136:
	.string	"strncpy"
.LASF11:
	.string	"long long unsigned int"
.LASF21:
	.string	"in_addr_t"
.LASF109:
	.string	"port_nr"
.LASF56:
	.string	"MEMP_TCP_SEG"
.LASF87:
	.string	"socklen_t"
.LASF1:
	.string	"__int8_t"
.LASF138:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/api/netdb.c"
.LASF110:
	.string	"total_size"
.LASF10:
	.string	"long long int"
.LASF0:
	.string	"signed char"
.LASF9:
	.string	"long unsigned int"
.LASF42:
	.string	"ERR_USE"
.LASF123:
	.string	"s_aliases"
.LASF37:
	.string	"ERR_TIMEOUT"
.LASF119:
	.string	"hostname"
.LASF7:
	.string	"long int"
.LASF52:
	.string	"MEMP_RAW_PCB"
.LASF30:
	.string	"ip4_addr"
.LASF134:
	.string	"memcpy"
.LASF88:
	.string	"hostent"
.LASF70:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_MAX"
.LASF46:
	.string	"ERR_IF"
.LASF34:
	.string	"ERR_OK"
.LASF67:
	.string	"MEMP_MAX"
.LASF62:
	.string	"MEMP_IGMP_GROUP"
.LASF8:
	.string	"__uint32_t"
.LASF55:
	.string	"MEMP_TCP_PCB_LISTEN"
.LASF77:
	.string	"sin_zero"
.LASF132:
	.string	"memp_malloc"
.LASF13:
	.string	"unsigned int"
.LASF33:
	.string	"s_addr"
.LASF18:
	.string	"uint16_t"
.LASF120:
	.string	"lh_errno"
.LASF130:
	.string	"strlen"
.LASF97:
	.string	"ai_socktype"
.LASF89:
	.string	"h_name"
.LASF43:
	.string	"ERR_ALREADY"
.LASF26:
	.string	"u32_t"
.LASF122:
	.string	"s_hostent"
.LASF115:
	.string	"name"
.LASF54:
	.string	"MEMP_TCP_PCB"
.LASF6:
	.string	"short unsigned int"
.LASF76:
	.string	"sin_addr"
.LASF28:
	.string	"ip4_addr_t"
.LASF91:
	.string	"h_addrtype"
.LASF137:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
.LASF22:
	.string	"in_port_t"
.LASF127:
	.string	"lwip_htons"
.LASF129:
	.string	"ip4addr_aton"
.LASF23:
	.string	"u8_t"
.LASF79:
	.string	"sa_len"
.LASF74:
	.string	"sin_family"
.LASF29:
	.string	"ip_addr_t"
.LASF51:
	.string	"err_t"
.LASF126:
	.string	"s_hostname"
.LASF125:
	.string	"s_phostent_addr"
.LASF90:
	.string	"h_aliases"
.LASF73:
	.string	"sin_len"
.LASF85:
	.string	"s2_data1"
.LASF86:
	.string	"s2_data2"
.LASF71:
	.string	"sa_family_t"
.LASF99:
	.string	"ai_addrlen"
.LASF39:
	.string	"ERR_INPROGRESS"
.LASF75:
	.string	"sin_port"
.LASF80:
	.string	"sa_family"
.LASF92:
	.string	"h_length"
.LASF93:
	.string	"h_addr_list"
.LASF40:
	.string	"ERR_VAL"
.LASF32:
	.string	"addr"
.LASF128:
	.string	"atoi"
.LASF3:
	.string	"unsigned char"
.LASF50:
	.string	"ERR_ARG"
.LASF45:
	.string	"ERR_CONN"
.LASF69:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_IGMP"
.LASF100:
	.string	"ai_addr"
.LASF4:
	.string	"short int"
.LASF98:
	.string	"ai_protocol"
.LASF102:
	.string	"ai_next"
.LASF116:
	.string	"buflen"
.LASF68:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_DHCP"
.LASF24:
	.string	"s8_t"
.LASF142:
	.string	"lwip_freeaddrinfo"
.LASF48:
	.string	"ERR_RST"
.LASF19:
	.string	"uint32_t"
.LASF12:
	.string	"__uintptr_t"
.LASF15:
	.string	"char"
.LASF60:
	.string	"MEMP_TCPIP_MSG_API"
.LASF121:
	.string	"lwip_gethostbyname"
.LASF47:
	.string	"ERR_ABRT"
.LASF84:
	.string	"ss_family"
.LASF58:
	.string	"MEMP_NETBUF"
.LASF5:
	.string	"__uint16_t"
.LASF35:
	.string	"ERR_MEM"
.LASF59:
	.string	"MEMP_NETCONN"
.LASF57:
	.string	"MEMP_ALTCP_PCB"
.LASF66:
	.string	"MEMP_PBUF_POOL"
.LASF96:
	.string	"ai_family"
.LASF131:
	.string	"netconn_gethostbyname"
.LASF111:
	.string	"namelen"
.LASF141:
	.string	"h_errno"
.LASF49:
	.string	"ERR_CLSD"
.LASF38:
	.string	"ERR_RTE"
.LASF16:
	.string	"int8_t"
.LASF107:
	.string	"servname"
.LASF25:
	.string	"u16_t"
.LASF36:
	.string	"ERR_BUF"
.LASF108:
	.string	"hints"
.LASF139:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/lwip"
.LASF133:
	.string	"memset"
.LASF140:
	.string	"lwip_internal_netif_client_data_index"
.LASF44:
	.string	"ERR_ISCONN"
.LASF78:
	.string	"sockaddr"
.LASF72:
	.string	"sockaddr_in"
.LASF17:
	.string	"uint8_t"
.LASF113:
	.string	"lwip_getaddrinfo"
.LASF106:
	.string	"nodename"
.LASF114:
	.string	"lwip_gethostbyname_r"
.LASF124:
	.string	"s_hostent_addr"
.LASF41:
	.string	"ERR_WOULDBLOCK"
.LASF83:
	.string	"s2_len"
.LASF81:
	.string	"sa_data"
.LASF101:
	.string	"ai_canonname"
.LASF118:
	.string	"h_errnop"
.LASF65:
	.string	"MEMP_PBUF"
.LASF117:
	.string	"result"
.LASF103:
	.string	"gethostbyname_r_helper"
.LASF61:
	.string	"MEMP_TCPIP_MSG_INPKT"
.LASF31:
	.string	"in_addr"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
