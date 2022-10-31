	.file	"sha512.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.mbedtls_sha512_init,"ax",@progbits
	.align	1
	.globl	mbedtls_sha512_init
	.type	mbedtls_sha512_init, @function
mbedtls_sha512_init:
.LFB1:
	.file 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/mbedtls_lts/mbedtls/library/sha512.c"
	.loc 1 121 1
	.cfi_startproc
.LVL0:
	.loc 1 122 5
	.loc 1 122 10
	.loc 1 122 17
	.loc 1 124 5
	li	a2,216
	li	a1,0
	tail	memset
.LVL1:
	.cfi_endproc
.LFE1:
	.size	mbedtls_sha512_init, .-mbedtls_sha512_init
	.section	.text.mbedtls_sha512_free,"ax",@progbits
	.align	1
	.globl	mbedtls_sha512_free
	.type	mbedtls_sha512_free, @function
mbedtls_sha512_free:
.LFB2:
	.loc 1 128 1
	.cfi_startproc
.LVL2:
	.loc 1 129 5
	.loc 1 129 7 is_stmt 0
	beq	a0,zero,.L2
	.loc 1 132 5 is_stmt 1
	li	a1,216
	tail	mbedtls_platform_zeroize
.LVL3:
.L2:
	.loc 1 133 1 is_stmt 0
	ret
	.cfi_endproc
.LFE2:
	.size	mbedtls_sha512_free, .-mbedtls_sha512_free
	.section	.text.mbedtls_sha512_clone,"ax",@progbits
	.align	1
	.globl	mbedtls_sha512_clone
	.type	mbedtls_sha512_clone, @function
mbedtls_sha512_clone:
.LFB3:
	.loc 1 137 1 is_stmt 1
	.cfi_startproc
.LVL4:
	.loc 1 138 5
	.loc 1 138 10
	.loc 1 138 17
	.loc 1 139 5
	.loc 1 139 10
	.loc 1 139 17
	.loc 1 141 5
	.loc 1 137 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 141 10
	li	a2,216
	.loc 1 137 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 141 10
	call	memcpy
.LVL5:
	.loc 1 142 1
	lw	ra,12(sp)
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE3:
	.size	mbedtls_sha512_clone, .-mbedtls_sha512_clone
	.section	.text.mbedtls_sha512_starts_ret,"ax",@progbits
	.align	1
	.globl	mbedtls_sha512_starts_ret
	.type	mbedtls_sha512_starts_ret, @function
mbedtls_sha512_starts_ret:
.LFB4:
	.loc 1 148 1 is_stmt 1
	.cfi_startproc
.LVL6:
	.loc 1 149 5
	.loc 1 149 10
	.loc 1 149 17
	.loc 1 150 5
	.loc 1 150 10
	.loc 1 150 17
	.loc 1 152 5
	.loc 1 152 19 is_stmt 0
	li	a5,0
	li	a6,0
	sw	a5,0(a0)
	sw	a6,4(a0)
	.loc 1 153 5 is_stmt 1
	.loc 1 153 19 is_stmt 0
	sw	a5,8(a0)
	sw	a6,12(a0)
	.loc 1 155 5 is_stmt 1
	.loc 1 155 7 is_stmt 0
	bne	a1,zero,.L7
	.loc 1 158 9 is_stmt 1
	.loc 1 158 23 is_stmt 0
	lui	a5,%hi(.LC0)
	lw	a4,%lo(.LC0)(a5)
	lw	a5,%lo(.LC0+4)(a5)
	sw	a4,16(a0)
	sw	a5,20(a0)
	.loc 1 159 9 is_stmt 1
	.loc 1 159 23 is_stmt 0
	lui	a5,%hi(.LC1)
	lw	a4,%lo(.LC1)(a5)
	lw	a5,%lo(.LC1+4)(a5)
	sw	a4,24(a0)
	sw	a5,28(a0)
	.loc 1 160 9 is_stmt 1
	.loc 1 160 23 is_stmt 0
	lui	a5,%hi(.LC2)
	lw	a4,%lo(.LC2)(a5)
	lw	a5,%lo(.LC2+4)(a5)
	sw	a4,32(a0)
	sw	a5,36(a0)
	.loc 1 161 9 is_stmt 1
	.loc 1 161 23 is_stmt 0
	lui	a5,%hi(.LC3)
	lw	a4,%lo(.LC3)(a5)
	lw	a5,%lo(.LC3+4)(a5)
	sw	a4,40(a0)
	sw	a5,44(a0)
	.loc 1 162 9 is_stmt 1
	.loc 1 162 23 is_stmt 0
	lui	a5,%hi(.LC4)
	lw	a4,%lo(.LC4)(a5)
	lw	a5,%lo(.LC4+4)(a5)
	sw	a4,48(a0)
	sw	a5,52(a0)
	.loc 1 163 9 is_stmt 1
	.loc 1 163 23 is_stmt 0
	lui	a5,%hi(.LC5)
	lw	a4,%lo(.LC5)(a5)
	lw	a5,%lo(.LC5+4)(a5)
	sw	a4,56(a0)
	sw	a5,60(a0)
	.loc 1 164 9 is_stmt 1
	.loc 1 164 23 is_stmt 0
	lui	a5,%hi(.LC6)
	lw	a4,%lo(.LC6)(a5)
	lw	a5,%lo(.LC6+4)(a5)
	sw	a4,64(a0)
	sw	a5,68(a0)
	.loc 1 165 9 is_stmt 1
	.loc 1 165 23 is_stmt 0
	lui	a5,%hi(.LC7)
	lw	a4,%lo(.LC7)(a5)
	lw	a5,%lo(.LC7+4)(a5)
.L9:
	.loc 1 177 23
	sw	a4,72(a0)
	sw	a5,76(a0)
	.loc 1 180 5 is_stmt 1
	.loc 1 180 16 is_stmt 0
	sw	a1,208(a0)
	.loc 1 182 5 is_stmt 1
	.loc 1 183 1 is_stmt 0
	li	a0,0
.LVL7:
	ret
.LVL8:
.L7:
	.loc 1 170 9 is_stmt 1
	.loc 1 170 23 is_stmt 0
	lui	a5,%hi(.LC8)
	lw	a4,%lo(.LC8)(a5)
	lw	a5,%lo(.LC8+4)(a5)
	sw	a4,16(a0)
	sw	a5,20(a0)
	.loc 1 171 9 is_stmt 1
	.loc 1 171 23 is_stmt 0
	lui	a5,%hi(.LC9)
	lw	a4,%lo(.LC9)(a5)
	lw	a5,%lo(.LC9+4)(a5)
	sw	a4,24(a0)
	sw	a5,28(a0)
	.loc 1 172 9 is_stmt 1
	.loc 1 172 23 is_stmt 0
	lui	a5,%hi(.LC10)
	lw	a4,%lo(.LC10)(a5)
	lw	a5,%lo(.LC10+4)(a5)
	sw	a4,32(a0)
	sw	a5,36(a0)
	.loc 1 173 9 is_stmt 1
	.loc 1 173 23 is_stmt 0
	lui	a5,%hi(.LC11)
	lw	a4,%lo(.LC11)(a5)
	lw	a5,%lo(.LC11+4)(a5)
	sw	a4,40(a0)
	sw	a5,44(a0)
	.loc 1 174 9 is_stmt 1
	.loc 1 174 23 is_stmt 0
	lui	a5,%hi(.LC12)
	lw	a4,%lo(.LC12)(a5)
	lw	a5,%lo(.LC12+4)(a5)
	sw	a4,48(a0)
	sw	a5,52(a0)
	.loc 1 175 9 is_stmt 1
	.loc 1 175 23 is_stmt 0
	lui	a5,%hi(.LC13)
	lw	a4,%lo(.LC13)(a5)
	lw	a5,%lo(.LC13+4)(a5)
	sw	a4,56(a0)
	sw	a5,60(a0)
	.loc 1 176 9 is_stmt 1
	.loc 1 176 23 is_stmt 0
	lui	a5,%hi(.LC14)
	lw	a4,%lo(.LC14)(a5)
	lw	a5,%lo(.LC14+4)(a5)
	sw	a4,64(a0)
	sw	a5,68(a0)
	.loc 1 177 9 is_stmt 1
	.loc 1 177 23 is_stmt 0
	lui	a5,%hi(.LC15)
	lw	a4,%lo(.LC15)(a5)
	lw	a5,%lo(.LC15+4)(a5)
	j	.L9
	.cfi_endproc
.LFE4:
	.size	mbedtls_sha512_starts_ret, .-mbedtls_sha512_starts_ret
	.section	.text.mbedtls_sha512_starts,"ax",@progbits
	.align	1
	.globl	mbedtls_sha512_starts
	.type	mbedtls_sha512_starts, @function
mbedtls_sha512_starts:
.LFB5:
	.loc 1 188 1 is_stmt 1
	.cfi_startproc
.LVL9:
	.loc 1 189 5
	tail	mbedtls_sha512_starts_ret
.LVL10:
	.cfi_endproc
.LFE5:
	.size	mbedtls_sha512_starts, .-mbedtls_sha512_starts
	.section	.text.mbedtls_internal_sha512_process,"ax",@progbits
	.align	1
	.globl	mbedtls_internal_sha512_process
	.type	mbedtls_internal_sha512_process, @function
mbedtls_internal_sha512_process:
.LFB6:
	.loc 1 244 1
	.cfi_startproc
.LVL11:
	.loc 1 245 5
	.loc 1 246 5
	.loc 1 252 5
	.loc 1 252 10
	.loc 1 252 17
	.loc 1 253 5
	.loc 1 253 10
	.loc 1 253 17
	.loc 1 275 5
	.loc 1 275 17
	.loc 1 244 1 is_stmt 0
	addi	sp,sp,-848
	.cfi_def_cfa_offset 848
	sw	s6,816(sp)
	.cfi_offset 22, -32
	addi	s6,sp,64
	sw	ra,844(sp)
	sw	s0,840(sp)
	sw	s1,836(sp)
	sw	s2,832(sp)
	sw	s3,828(sp)
	sw	s4,824(sp)
	sw	s5,820(sp)
	sw	s7,812(sp)
	sw	s8,808(sp)
	sw	s9,804(sp)
	sw	s10,800(sp)
	sw	s11,796(sp)
	.cfi_offset 1, -4
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
	addi	a6,a1,128
	.loc 1 244 1
	mv	a3,s6
.LVL12:
.L12:
	.loc 1 277 11 is_stmt 1 discriminator 3
	.loc 1 277 28 is_stmt 0 discriminator 3
	lbu	a5,0(a1)
	.loc 1 277 69 discriminator 3
	lbu	a4,1(a1)
	.loc 1 277 113 discriminator 3
	lbu	a2,2(a1)
	.loc 1 277 57 discriminator 3
	slli	a5,a5,24
	.loc 1 277 101 discriminator 3
	slli	a4,a4,16
	.loc 1 277 328 discriminator 3
	or	a5,a5,a4
	.loc 1 277 145 discriminator 3
	slli	a2,a2,8
	.loc 1 277 328 discriminator 3
	or	a5,a5,a2
	.loc 1 277 201 discriminator 3
	lbu	a2,4(a1)
	.loc 1 277 332 discriminator 3
	lbu	a4,7(a1)
	.loc 1 277 157 discriminator 3
	lbu	a7,3(a1)
	.loc 1 277 233 discriminator 3
	slli	a2,a2,24
	.loc 1 277 328 discriminator 3
	or	a4,a4,a2
	.loc 1 277 245 discriminator 3
	lbu	a2,5(a1)
	.loc 1 277 328 discriminator 3
	or	a5,a5,a7
	sw	a5,20(a3)
	.loc 1 277 368 is_stmt 1 discriminator 3
	.loc 1 275 25 discriminator 3
	.loc 1 275 17 discriminator 3
	.loc 1 277 277 is_stmt 0 discriminator 3
	slli	a2,a2,16
	.loc 1 277 328 discriminator 3
	or	a4,a4,a2
	.loc 1 277 289 discriminator 3
	lbu	a2,6(a1)
	.loc 1 275 5 discriminator 3
	addi	a1,a1,8
	addi	a3,a3,8
	.loc 1 277 321 discriminator 3
	slli	a2,a2,8
	.loc 1 277 328 discriminator 3
	or	a4,a4,a2
	sw	a4,8(a3)
	.loc 1 275 5 discriminator 3
	bne	a6,a1,.L12
	addi	t3,s6,512
	.loc 1 275 5
	mv	a7,s6
.LVL13:
.L13:
	.loc 1 282 9 is_stmt 1 discriminator 2
	.loc 1 282 34 is_stmt 0 discriminator 2
	lw	a6,132(a7)
	lw	a1,128(a7)
	.loc 1 283 34 discriminator 2
	lw	t5,28(a7)
	.loc 1 282 55 discriminator 2
	slli	a4,a6,13
	srli	a5,a1,19
	or	a4,a4,a5
	slli	a2,a1,13
	srli	a5,a6,19
	.loc 1 282 126 discriminator 2
	slli	a3,a6,3
	.loc 1 282 55 discriminator 2
	or	a2,a2,a5
	.loc 1 282 126 discriminator 2
	srli	a5,a1,29
	or	a5,a5,a3
	slli	t6,a1,3
	srli	a3,a6,29
	or	a3,a3,t6
	.loc 1 282 92 discriminator 2
	xor	a2,a2,a5
	.loc 1 282 183 discriminator 2
	srli	a1,a1,6
	slli	a5,a6,26
	or	a1,a5,a1
	.loc 1 282 92 discriminator 2
	xor	a4,a4,a3
	.loc 1 283 193 discriminator 2
	lw	a5,88(a7)
	lw	a3,16(a7)
	.loc 1 282 183 discriminator 2
	srli	a6,a6,6
	.loc 1 282 163 discriminator 2
	xor	a4,a4,a1
	xor	a2,a2,a6
	.loc 1 283 193 discriminator 2
	lw	a1,92(a7)
	lw	a6,20(a7)
	.loc 1 283 34 discriminator 2
	lw	t4,24(a7)
	.loc 1 283 193 discriminator 2
	add	a3,a5,a3
	add	a1,a1,a6
	sltu	a5,a3,a5
	add	t6,a4,a3
	add	a5,a5,a1
	add	a2,a2,a5
	.loc 1 283 55 discriminator 2
	srli	a3,t4,1
	.loc 1 283 193 discriminator 2
	sltu	a4,t6,a4
	.loc 1 283 55 discriminator 2
	slli	a5,t5,31
	.loc 1 283 193 discriminator 2
	add	a4,a4,a2
	.loc 1 283 55 discriminator 2
	or	a5,a5,a3
	srli	a6,t5,1
	.loc 1 283 126 discriminator 2
	srli	a2,t4,8
	.loc 1 283 55 discriminator 2
	slli	a1,t4,31
	.loc 1 283 126 discriminator 2
	slli	a3,t5,24
	.loc 1 283 55 discriminator 2
	or	a1,a1,a6
	.loc 1 283 126 discriminator 2
	or	a3,a3,a2
	slli	a6,t4,24
	srli	a2,t5,8
	or	a6,a6,a2
	.loc 1 283 92 discriminator 2
	xor	a5,a5,a3
	.loc 1 283 184 discriminator 2
	slli	a2,t5,25
	srli	a3,t4,7
	or	a3,a2,a3
	.loc 1 283 92 discriminator 2
	xor	a6,a1,a6
	.loc 1 283 163 discriminator 2
	xor	a5,a5,a3
	.loc 1 283 184 discriminator 2
	srli	a1,t5,7
	.loc 1 283 193 discriminator 2
	add	a5,t6,a5
	.loc 1 283 163 discriminator 2
	xor	a1,a6,a1
	.loc 1 283 193 discriminator 2
	sltu	a3,a5,t6
	add	a1,a4,a1
	add	a4,a3,a1
	.loc 1 282 20 discriminator 2
	sw	a5,144(a7)
	sw	a4,148(a7)
	.loc 1 280 20 is_stmt 1 discriminator 2
	.loc 1 280 12 discriminator 2
	.loc 1 280 5 is_stmt 0 discriminator 2
	addi	a7,a7,8
	bne	t3,a7,.L13
	.loc 1 286 5 is_stmt 1
	.loc 1 286 25 is_stmt 0
	lw	a5,20(a0)
	lw	s11,16(a0)
	lui	s7,%hi(.LANCHOR0)
	sw	a5,28(sp)
	.loc 1 286 13
	sw	a5,724(sp)
	.loc 1 287 5 is_stmt 1
	.loc 1 287 25 is_stmt 0
	lw	a5,24(a0)
	.loc 1 286 13
	sw	s11,720(sp)
	addi	s7,s7,%lo(.LANCHOR0)
	.loc 1 287 25
	sw	a5,0(sp)
	lw	a5,28(a0)
	.loc 1 293 13
	mv	s2,s11
	.loc 1 287 25
	sw	a5,32(sp)
	.loc 1 287 13
	lw	a5,0(sp)
	sw	a5,728(sp)
	lw	a5,32(sp)
	sw	a5,732(sp)
	.loc 1 288 5 is_stmt 1
	.loc 1 288 25 is_stmt 0
	lw	a5,32(a0)
	sw	a5,4(sp)
	lw	a5,36(a0)
	sw	a5,36(sp)
	.loc 1 288 13
	lw	a5,4(sp)
	sw	a5,736(sp)
	lw	a5,36(sp)
	sw	a5,740(sp)
	.loc 1 289 5 is_stmt 1
	.loc 1 289 25 is_stmt 0
	lw	a5,40(a0)
	sw	a5,8(sp)
	lw	a5,44(a0)
	sw	a5,40(sp)
	.loc 1 289 13
	lw	a5,8(sp)
	sw	a5,744(sp)
	lw	a5,40(sp)
	sw	a5,748(sp)
	.loc 1 290 5 is_stmt 1
	.loc 1 290 25 is_stmt 0
	lw	a5,48(a0)
	sw	a5,12(sp)
	lw	a5,52(a0)
	sw	a5,44(sp)
	.loc 1 290 13
	lw	a5,12(sp)
	.loc 1 293 13
	lw	t2,40(sp)
	lw	a4,4(sp)
	.loc 1 290 13
	sw	a5,752(sp)
	lw	a5,44(sp)
	sw	a5,756(sp)
	.loc 1 291 5 is_stmt 1
	.loc 1 291 25 is_stmt 0
	lw	a5,56(a0)
	sw	a5,16(sp)
	lw	a5,60(a0)
	sw	a5,48(sp)
	.loc 1 291 13
	lw	a5,16(sp)
	sw	a5,760(sp)
	lw	a5,48(sp)
	sw	a5,764(sp)
	.loc 1 292 5 is_stmt 1
	.loc 1 292 25 is_stmt 0
	lw	a5,64(a0)
	sw	a5,20(sp)
	lw	a5,68(a0)
	sw	a5,52(sp)
	.loc 1 292 13
	lw	a5,20(sp)
	sw	a5,768(sp)
	lw	a5,52(sp)
	sw	a5,772(sp)
	.loc 1 293 5 is_stmt 1
	.loc 1 293 25 is_stmt 0
	lw	a5,72(a0)
	sw	a5,24(sp)
	lw	a5,76(a0)
	sw	a5,56(sp)
	.loc 1 293 13
	lw	a5,24(sp)
	sw	a5,776(sp)
	lw	a5,56(sp)
	sw	a5,780(sp)
	.loc 1 294 5 is_stmt 1
.LVL14:
	addi	a5,s6,640
	sw	a5,60(sp)
	.loc 1 293 13 is_stmt 0
	lw	a5,8(sp)
	lw	ra,36(sp)
	lw	t5,0(sp)
	lw	s0,32(sp)
	lw	s8,28(sp)
	lw	t6,16(sp)
	lw	a1,48(sp)
	lw	t1,20(sp)
	lw	a3,52(sp)
	lw	t0,12(sp)
	lw	t3,44(sp)
	lw	s1,24(sp)
	lw	a6,56(sp)
.LVL15:
.L14:
	.loc 1 296 5 is_stmt 1 discriminator 1
	.loc 1 298 9 discriminator 1
	.loc 1 298 14 discriminator 1
	.loc 1 298 66 is_stmt 0 discriminator 1
	srli	a2,t0,14
	slli	a7,t3,18
	slli	t4,t0,18
	or	a7,a7,a2
	srli	a2,t3,14
	or	a2,t4,a2
	.loc 1 298 123 discriminator 1
	slli	s3,t3,14
	srli	t4,t0,18
	or	s3,s3,t4
	slli	s4,t0,14
	srli	t4,t3,18
	or	t4,s4,t4
	.loc 1 298 96 discriminator 1
	xor	a7,a7,s3
	xor	t4,a2,t4
	.loc 1 298 180 discriminator 1
	srli	s3,t0,9
	slli	a2,t3,23
	or	a2,s3,a2
	slli	s4,t0,23
	srli	s3,t3,9
	or	s3,s3,s4
	.loc 1 298 153 discriminator 1
	xor	t4,t4,a2
	.loc 1 298 282 discriminator 1
	lw	s4,0(s7)
	lw	a2,16(s6)
	lw	s5,20(s6)
	.loc 1 298 153 discriminator 1
	xor	a7,a7,s3
	.loc 1 298 282 discriminator 1
	lw	s3,4(s7)
	add	a2,s4,a2
	sltu	s4,a2,s4
	add	s3,s3,s5
	add	a2,a7,a2
	add	s3,s4,s3
	sltu	a7,a2,a7
	.loc 1 298 256 discriminator 1
	xor	s9,t1,t6
	.loc 1 298 282 discriminator 1
	add	s3,t4,s3
	add	s3,a7,s3
	.loc 1 298 241 discriminator 1
	and	s9,s9,t0
	.loc 1 298 256 discriminator 1
	xor	a7,a3,a1
	.loc 1 298 241 discriminator 1
	and	a7,a7,t3
	.loc 1 298 226 discriminator 1
	xor	s9,s9,t1
	xor	a7,a7,a3
	.loc 1 298 282 discriminator 1
	add	s9,a2,s9
	add	s3,s3,a7
	sltu	a2,s9,a2
	add	a7,s9,s1
	add	a2,a2,s3
	sltu	s9,a7,s9
	add	a2,a2,a6
	add	a2,s9,a2
	.loc 1 298 298 is_stmt 1 discriminator 1
	.loc 1 298 562 discriminator 1
	.loc 1 298 572 is_stmt 0 discriminator 1
	add	s9,a5,a7
	add	t2,t2,a2
	sltu	a5,s9,a5
	add	a5,a5,t2
	.loc 1 298 588 is_stmt 1 discriminator 1
	.loc 1 298 338 is_stmt 0 discriminator 1
	srli	a6,s2,28
	slli	t2,s8,4
	or	t2,t2,a6
	slli	t4,s2,4
	srli	a6,s8,28
	or	t4,t4,a6
	.loc 1 298 395 discriminator 1
	srli	s1,s2,2
	slli	a6,s8,30
	or	s1,s1,a6
	slli	s3,s2,30
	srli	a6,s8,2
	or	a6,a6,s3
	.loc 1 298 368 discriminator 1
	xor	t2,t2,a6
	.loc 1 298 452 discriminator 1
	srli	s5,s2,7
	slli	a6,s8,25
	or	s5,s5,a6
	.loc 1 298 368 discriminator 1
	xor	t4,t4,s1
	.loc 1 298 452 discriminator 1
	srli	a6,s8,7
	slli	s1,s2,25
	or	a6,a6,s1
	.loc 1 298 425 discriminator 1
	xor	t2,t2,a6
	.loc 1 298 544 discriminator 1
	or	a6,s2,t5
	.loc 1 298 425 discriminator 1
	xor	t4,t4,s5
	.loc 1 298 544 discriminator 1
	or	s1,s8,s0
	.loc 1 298 499 discriminator 1
	and	s5,s2,t5
	.loc 1 298 529 discriminator 1
	and	a6,a6,a4
	.loc 1 298 499 discriminator 1
	and	s3,s8,s0
	.loc 1 298 529 discriminator 1
	and	s1,s1,ra
	.loc 1 298 514 discriminator 1
	or	a6,a6,s5
	.loc 1 298 483 discriminator 1
	add	a6,t2,a6
	.loc 1 298 514 discriminator 1
	or	s1,s1,s3
	.loc 1 298 483 discriminator 1
	add	s1,t4,s1
	sltu	t2,a6,t2
	.loc 1 298 612 discriminator 1
	add	a7,a6,a7
	.loc 1 298 483 discriminator 1
	add	t2,t2,s1
	.loc 1 300 282 discriminator 1
	lw	t4,8(s7)
	.loc 1 298 612 discriminator 1
	sltu	a6,a7,a6
	add	t2,t2,a2
	.loc 1 300 282 discriminator 1
	lw	a2,24(s6)
	.loc 1 298 612 discriminator 1
	add	s5,a6,t2
	.loc 1 298 634 is_stmt 1 discriminator 1
	.loc 1 299 59 discriminator 1
	.loc 1 300 9 discriminator 1
	.loc 1 300 14 discriminator 1
	.loc 1 300 282 is_stmt 0 discriminator 1
	lw	s1,28(s6)
	lw	t2,12(s7)
	add	a2,t4,a2
	sltu	a6,a2,t4
	add	t4,t2,s1
	add	t4,a6,t4
	add	t1,a2,t1
	add	a3,t4,a3
	sltu	a2,t1,a2
	.loc 1 300 256 discriminator 1
	xor	t4,t0,t6
	.loc 1 300 282 discriminator 1
	add	a2,a2,a3
	.loc 1 300 241 discriminator 1
	and	t4,t4,s9
	.loc 1 300 256 discriminator 1
	xor	a3,t3,a1
	.loc 1 300 241 discriminator 1
	and	a3,a3,a5
	.loc 1 300 226 discriminator 1
	xor	t4,t4,t6
	.loc 1 300 282 discriminator 1
	add	t4,t1,t4
	.loc 1 300 226 discriminator 1
	xor	a3,a3,a1
	.loc 1 300 282 discriminator 1
	add	a3,a2,a3
	sltu	t1,t4,t1
	add	t1,t1,a3
	.loc 1 300 66 discriminator 1
	slli	t2,a5,18
	srli	a3,s9,14
	or	s1,t2,a3
	slli	a6,s9,18
	.loc 1 300 123 discriminator 1
	slli	t2,a5,14
	.loc 1 300 66 discriminator 1
	srli	a3,a5,14
	.loc 1 300 123 discriminator 1
	srli	a2,s9,18
	.loc 1 300 66 discriminator 1
	or	a3,a6,a3
	.loc 1 300 123 discriminator 1
	or	a2,t2,a2
	srli	a6,a5,18
	slli	t2,s9,14
	or	a6,t2,a6
	.loc 1 300 96 discriminator 1
	xor	a6,a3,a6
	.loc 1 300 180 discriminator 1
	srli	s4,s9,9
	slli	a3,a5,23
	.loc 1 300 96 discriminator 1
	xor	t2,s1,a2
	.loc 1 300 180 discriminator 1
	or	s4,s4,a3
	slli	a2,s9,23
	srli	a3,a5,9
	or	a2,a3,a2
	.loc 1 300 153 discriminator 1
	xor	a2,t2,a2
	.loc 1 300 282 discriminator 1
	add	a2,t4,a2
	.loc 1 300 153 discriminator 1
	xor	s4,a6,s4
	.loc 1 300 282 discriminator 1
	sltu	t4,a2,t4
	add	a6,t1,s4
	add	a6,t4,a6
	.loc 1 300 298 is_stmt 1 discriminator 1
	.loc 1 300 562 discriminator 1
	.loc 1 300 572 is_stmt 0 discriminator 1
	add	t1,a4,a2
	.loc 1 300 338 discriminator 1
	srli	a3,a7,28
	slli	t2,s5,4
	.loc 1 300 572 discriminator 1
	add	ra,ra,a6
	sltu	a4,t1,a4
	.loc 1 300 338 discriminator 1
	or	t2,t2,a3
	slli	t4,a7,4
	srli	a3,s5,28
	.loc 1 300 572 discriminator 1
	add	a4,a4,ra
	.loc 1 300 588 is_stmt 1 discriminator 1
	.loc 1 300 338 is_stmt 0 discriminator 1
	or	t4,t4,a3
	.loc 1 300 395 discriminator 1
	srli	ra,a7,2
	slli	a3,s5,30
	or	ra,ra,a3
	slli	s1,a7,30
	srli	a3,s5,2
	or	a3,a3,s1
	.loc 1 300 368 discriminator 1
	xor	t2,t2,a3
	.loc 1 300 452 discriminator 1
	srli	s4,a7,7
	slli	a3,s5,25
	or	s4,s4,a3
	.loc 1 300 368 discriminator 1
	xor	t4,t4,ra
	.loc 1 300 452 discriminator 1
	srli	a3,s5,7
	slli	ra,a7,25
	or	a3,a3,ra
	.loc 1 300 425 discriminator 1
	xor	t2,t2,a3
	.loc 1 300 544 discriminator 1
	or	a3,s2,a7
	.loc 1 300 425 discriminator 1
	xor	t4,t4,s4
	.loc 1 300 544 discriminator 1
	or	ra,s8,s5
	.loc 1 300 499 discriminator 1
	and	s4,s2,a7
	.loc 1 300 529 discriminator 1
	and	a3,a3,t5
	.loc 1 300 499 discriminator 1
	and	s1,s8,s5
	.loc 1 300 529 discriminator 1
	and	ra,ra,s0
	.loc 1 300 514 discriminator 1
	or	a3,a3,s4
	.loc 1 300 483 discriminator 1
	add	a3,t2,a3
	.loc 1 300 514 discriminator 1
	or	ra,ra,s1
	.loc 1 300 483 discriminator 1
	add	ra,t4,ra
	sltu	t2,a3,t2
	.loc 1 300 612 discriminator 1
	add	a2,a3,a2
	.loc 1 300 483 discriminator 1
	add	t2,t2,ra
	.loc 1 302 282 discriminator 1
	lw	t4,16(s7)
	.loc 1 300 612 discriminator 1
	sltu	a3,a2,a3
	add	t2,t2,a6
	.loc 1 302 282 discriminator 1
	lw	a6,32(s6)
	.loc 1 300 612 discriminator 1
	add	s4,a3,t2
	.loc 1 300 634 is_stmt 1 discriminator 1
	.loc 1 301 59 discriminator 1
	.loc 1 302 9 discriminator 1
	.loc 1 302 14 discriminator 1
	.loc 1 302 282 is_stmt 0 discriminator 1
	lw	ra,36(s6)
	lw	t2,20(s7)
	add	a6,t4,a6
	sltu	a3,a6,t4
	add	t4,t2,ra
	add	t6,a6,t6
	add	t4,a3,t4
	sltu	a6,t6,a6
	add	t4,t4,a1
	add	t4,a6,t4
	.loc 1 302 256 discriminator 1
	xor	a6,t0,s9
	xor	a1,t3,a5
	.loc 1 302 241 discriminator 1
	and	a6,a6,t1
	and	a1,a1,a4
	.loc 1 302 226 discriminator 1
	xor	a6,a6,t0
	.loc 1 302 282 discriminator 1
	add	a6,t6,a6
	.loc 1 302 226 discriminator 1
	xor	a1,a1,t3
	.loc 1 302 282 discriminator 1
	add	a1,t4,a1
	.loc 1 302 66 discriminator 1
	slli	t2,a4,18
	srli	a3,t1,14
	.loc 1 302 282 discriminator 1
	sltu	t6,a6,t6
	.loc 1 302 66 discriminator 1
	or	ra,t2,a3
	.loc 1 302 282 discriminator 1
	add	t6,t6,a1
	.loc 1 302 66 discriminator 1
	srli	a3,a4,14
	slli	a1,t1,18
	or	a1,a1,a3
	.loc 1 302 123 discriminator 1
	slli	t2,a4,14
	srli	a3,t1,18
	or	t4,t2,a3
	slli	t2,t1,14
	srli	a3,a4,18
	or	a3,t2,a3
	.loc 1 302 96 discriminator 1
	xor	a3,a1,a3
	.loc 1 302 180 discriminator 1
	srli	s3,t1,9
	slli	a1,a4,23
	.loc 1 302 96 discriminator 1
	xor	t2,ra,t4
	.loc 1 302 180 discriminator 1
	or	s3,s3,a1
	slli	t4,t1,23
	srli	a1,a4,9
	or	t4,a1,t4
	.loc 1 302 153 discriminator 1
	xor	t4,t2,t4
	.loc 1 302 282 discriminator 1
	add	t4,a6,t4
	.loc 1 302 153 discriminator 1
	xor	s3,a3,s3
	.loc 1 302 282 discriminator 1
	sltu	a6,t4,a6
	add	a3,t6,s3
	.loc 1 302 338 discriminator 1
	srli	a1,a2,28
	slli	t2,s4,4
	.loc 1 302 572 discriminator 1
	add	t6,t5,t4
	.loc 1 302 282 discriminator 1
	add	a3,a6,a3
	.loc 1 302 298 is_stmt 1 discriminator 1
	.loc 1 302 562 discriminator 1
	.loc 1 302 338 is_stmt 0 discriminator 1
	or	t2,t2,a1
	slli	a6,a2,4
	srli	a1,s4,28
	.loc 1 302 572 discriminator 1
	add	s0,s0,a3
	sltu	t5,t6,t5
	.loc 1 302 338 discriminator 1
	or	a6,a6,a1
	.loc 1 302 395 discriminator 1
	srli	ra,a2,2
	slli	a1,s4,30
	.loc 1 302 572 discriminator 1
	add	t5,t5,s0
	.loc 1 302 588 is_stmt 1 discriminator 1
	.loc 1 302 395 is_stmt 0 discriminator 1
	or	ra,ra,a1
	slli	s0,a2,30
	srli	a1,s4,2
	or	a1,a1,s0
	.loc 1 302 368 discriminator 1
	xor	t2,t2,a1
	.loc 1 302 452 discriminator 1
	srli	s3,a2,7
	slli	a1,s4,25
	or	s3,s3,a1
	.loc 1 302 368 discriminator 1
	xor	a6,a6,ra
	.loc 1 302 452 discriminator 1
	srli	a1,s4,7
	slli	ra,a2,25
	or	a1,a1,ra
	.loc 1 302 425 discriminator 1
	xor	t2,t2,a1
	.loc 1 302 544 discriminator 1
	or	a1,a7,a2
	.loc 1 302 425 discriminator 1
	xor	a6,a6,s3
	.loc 1 302 544 discriminator 1
	or	ra,s5,s4
	.loc 1 302 499 discriminator 1
	and	s3,a7,a2
	.loc 1 302 529 discriminator 1
	and	a1,a1,s2
	.loc 1 302 499 discriminator 1
	and	s0,s5,s4
	.loc 1 302 529 discriminator 1
	and	ra,ra,s8
	.loc 1 302 514 discriminator 1
	or	a1,a1,s3
	.loc 1 302 483 discriminator 1
	add	a1,t2,a1
	.loc 1 302 514 discriminator 1
	or	ra,ra,s0
	.loc 1 302 483 discriminator 1
	add	ra,a6,ra
	sltu	t2,a1,t2
	.loc 1 302 612 discriminator 1
	add	t4,a1,t4
	.loc 1 302 483 discriminator 1
	add	t2,t2,ra
	.loc 1 302 612 discriminator 1
	sltu	a1,t4,a1
	add	t2,t2,a3
	add	s3,a1,t2
	.loc 1 302 634 is_stmt 1 discriminator 1
	.loc 1 303 59 discriminator 1
	.loc 1 304 9 discriminator 1
	.loc 1 304 14 discriminator 1
	.loc 1 304 282 is_stmt 0 discriminator 1
	lw	a6,24(s7)
	lw	a1,40(s6)
	lw	t2,28(s7)
	lw	ra,44(s6)
	add	a1,a6,a1
	sltu	a3,a1,a6
	add	a6,t2,ra
	add	a6,a3,a6
	add	t0,a1,t0
	sltu	a1,t0,a1
	add	t3,a6,t3
	add	t3,a1,t3
	.loc 1 304 256 discriminator 1
	xor	a6,a5,a4
	xor	a1,s9,t1
	.loc 1 304 241 discriminator 1
	and	a1,a1,t6
	and	a6,a6,t5
	.loc 1 304 226 discriminator 1
	xor	a6,a6,a5
	.loc 1 304 66 discriminator 1
	slli	t2,t5,18
	srli	a3,t6,14
	.loc 1 304 226 discriminator 1
	xor	a1,a1,s9
	.loc 1 304 66 discriminator 1
	or	ra,t2,a3
	.loc 1 304 282 discriminator 1
	add	a1,t0,a1
	add	t3,t3,a6
	.loc 1 304 66 discriminator 1
	srli	a3,t5,14
	slli	a6,t6,18
	or	a6,a6,a3
	.loc 1 304 123 discriminator 1
	slli	t2,t5,14
	srli	a3,t6,18
	.loc 1 304 282 discriminator 1
	sltu	t0,a1,t0
	add	t0,t0,t3
	.loc 1 304 123 discriminator 1
	or	t3,t2,a3
	slli	t2,t6,14
	srli	a3,t5,18
	or	a3,t2,a3
	.loc 1 304 96 discriminator 1
	xor	a3,a6,a3
	.loc 1 304 180 discriminator 1
	srli	s10,t6,9
	slli	a6,t5,23
	.loc 1 304 96 discriminator 1
	xor	t2,ra,t3
	.loc 1 304 180 discriminator 1
	or	s10,s10,a6
	slli	t3,t6,23
	srli	a6,t5,9
	or	t3,a6,t3
	.loc 1 304 153 discriminator 1
	xor	t3,t2,t3
	.loc 1 304 282 discriminator 1
	add	t3,a1,t3
	.loc 1 304 153 discriminator 1
	xor	s10,a3,s10
	.loc 1 304 282 discriminator 1
	sltu	a1,t3,a1
	add	a3,t0,s10
	add	a3,a1,a3
	.loc 1 304 298 is_stmt 1 discriminator 1
	.loc 1 304 562 discriminator 1
	.loc 1 304 338 is_stmt 0 discriminator 1
	slli	a6,s3,4
	srli	a1,t4,28
	slli	t2,t4,4
	or	a6,a6,a1
	srli	a1,s3,28
	or	a1,t2,a1
	.loc 1 304 395 discriminator 1
	srli	ra,t4,2
	slli	t2,s3,30
	or	ra,ra,t2
	slli	s0,t4,30
	srli	t2,s3,2
	or	t2,t2,s0
	.loc 1 304 368 discriminator 1
	xor	a6,a6,t2
	.loc 1 304 452 discriminator 1
	srli	s10,t4,7
	slli	t2,s3,25
	or	s10,s10,t2
	.loc 1 304 368 discriminator 1
	xor	a1,a1,ra
	.loc 1 304 452 discriminator 1
	srli	t2,s3,7
	slli	ra,t4,25
	or	t2,t2,ra
	.loc 1 304 544 discriminator 1
	or	ra,a2,t4
	.loc 1 304 425 discriminator 1
	xor	a6,a6,t2
	xor	a1,a1,s10
	.loc 1 304 544 discriminator 1
	or	t2,s4,s3
	.loc 1 304 499 discriminator 1
	and	s10,a2,t4
	.loc 1 304 529 discriminator 1
	and	ra,ra,a7
	.loc 1 304 499 discriminator 1
	and	s0,s4,s3
	.loc 1 304 529 discriminator 1
	and	t2,t2,s5
	.loc 1 304 514 discriminator 1
	or	ra,ra,s10
	.loc 1 304 483 discriminator 1
	add	ra,a6,ra
	.loc 1 304 514 discriminator 1
	or	t2,t2,s0
	.loc 1 304 483 discriminator 1
	add	t2,a1,t2
	sltu	a6,ra,a6
	.loc 1 304 572 discriminator 1
	add	t0,s2,t3
	.loc 1 304 483 discriminator 1
	add	a6,a6,t2
	.loc 1 304 612 discriminator 1
	add	t3,ra,t3
	.loc 1 306 282 discriminator 1
	lw	t2,32(s7)
	.loc 1 304 572 discriminator 1
	add	s8,s8,a3
	.loc 1 304 612 discriminator 1
	sltu	ra,t3,ra
	add	a6,a6,a3
	.loc 1 306 282 discriminator 1
	lw	a3,48(s6)
	.loc 1 304 612 discriminator 1
	add	s10,ra,a6
	.loc 1 306 282 discriminator 1
	lw	a6,36(s7)
	lw	ra,52(s6)
	add	a3,t2,a3
	sltu	a1,a3,t2
	add	t2,a6,ra
	add	t2,a1,t2
	.loc 1 304 572 discriminator 1
	sltu	s2,t0,s2
	.loc 1 306 282 discriminator 1
	add	a5,t2,a5
	.loc 1 306 256 discriminator 1
	xor	t2,t1,t6
	.loc 1 304 572 discriminator 1
	add	s2,s2,s8
	.loc 1 304 588 is_stmt 1 discriminator 1
	.loc 1 304 634 discriminator 1
	.loc 1 305 59 discriminator 1
	.loc 1 306 9 discriminator 1
	.loc 1 306 14 discriminator 1
	.loc 1 306 282 is_stmt 0 discriminator 1
	add	s9,a3,s9
	.loc 1 306 256 discriminator 1
	xor	a1,a4,t5
	.loc 1 306 241 discriminator 1
	and	t2,t2,t0
	.loc 1 306 282 discriminator 1
	sltu	a3,s9,a3
	.loc 1 306 241 discriminator 1
	and	a1,a1,s2
	.loc 1 306 226 discriminator 1
	xor	t2,t2,t1
	xor	a1,a1,a4
	.loc 1 306 282 discriminator 1
	add	t2,s9,t2
	add	a5,a3,a5
	add	a5,a5,a1
	sltu	s9,t2,s9
	.loc 1 306 66 discriminator 1
	slli	ra,s2,18
	.loc 1 306 282 discriminator 1
	add	s9,s9,a5
	.loc 1 306 66 discriminator 1
	srli	a5,t0,14
	or	a6,ra,a5
	slli	a3,t0,18
	srli	a5,s2,14
	or	a1,a3,a5
	.loc 1 306 123 discriminator 1
	slli	ra,s2,14
	srli	a5,t0,18
	or	a5,ra,a5
	srli	a3,s2,18
	slli	ra,t0,14
	or	a3,ra,a3
	.loc 1 306 96 discriminator 1
	xor	ra,a6,a5
	.loc 1 306 180 discriminator 1
	slli	a5,s2,23
	srli	a6,t0,9
	.loc 1 306 96 discriminator 1
	xor	a3,a1,a3
	.loc 1 306 180 discriminator 1
	or	a6,a6,a5
	srli	a1,s2,9
	slli	a5,t0,23
	or	a5,a1,a5
	.loc 1 306 153 discriminator 1
	xor	a5,ra,a5
	.loc 1 306 282 discriminator 1
	add	a5,t2,a5
	.loc 1 306 153 discriminator 1
	xor	a6,a3,a6
	.loc 1 306 282 discriminator 1
	sltu	t2,a5,t2
	add	a3,s9,a6
	.loc 1 306 572 discriminator 1
	add	s1,a7,a5
	.loc 1 306 282 discriminator 1
	add	a3,t2,a3
	.loc 1 306 298 is_stmt 1 discriminator 1
	.loc 1 306 562 discriminator 1
	.loc 1 306 572 is_stmt 0 discriminator 1
	add	a6,s5,a3
	.loc 1 306 338 discriminator 1
	srli	a1,t3,28
	.loc 1 306 572 discriminator 1
	sltu	a7,s1,a7
	.loc 1 306 338 discriminator 1
	slli	ra,s10,4
	.loc 1 306 572 discriminator 1
	add	a6,a7,a6
	.loc 1 306 588 is_stmt 1 discriminator 1
	.loc 1 306 338 is_stmt 0 discriminator 1
	or	ra,ra,a1
	slli	a7,t3,4
	srli	a1,s10,28
	or	a1,a7,a1
	.loc 1 306 395 discriminator 1
	srli	t2,t3,2
	slli	a7,s10,30
	or	t2,t2,a7
	slli	s0,t3,30
	srli	a7,s10,2
	or	a7,a7,s0
	.loc 1 306 368 discriminator 1
	xor	ra,ra,a7
	xor	a1,a1,t2
	.loc 1 306 452 discriminator 1
	slli	a7,s10,25
	srli	t2,t3,7
	or	t2,t2,a7
	slli	s0,t3,25
	srli	a7,s10,7
	or	a7,a7,s0
	.loc 1 306 425 discriminator 1
	xor	ra,ra,a7
	.loc 1 306 544 discriminator 1
	or	a7,t4,t3
	.loc 1 306 425 discriminator 1
	xor	a1,a1,t2
	.loc 1 306 544 discriminator 1
	or	s5,s3,s10
	.loc 1 306 529 discriminator 1
	and	a7,a7,a2
	.loc 1 306 499 discriminator 1
	and	t2,t4,t3
	.loc 1 306 529 discriminator 1
	and	s5,s5,s4
	.loc 1 306 499 discriminator 1
	and	s0,s3,s10
	.loc 1 306 514 discriminator 1
	or	t2,a7,t2
	.loc 1 306 483 discriminator 1
	add	t2,ra,t2
	.loc 1 306 514 discriminator 1
	or	s0,s5,s0
	.loc 1 306 483 discriminator 1
	add	s0,a1,s0
	sltu	ra,t2,ra
	.loc 1 306 612 discriminator 1
	add	a5,t2,a5
	.loc 1 306 483 discriminator 1
	add	ra,ra,s0
	.loc 1 306 612 discriminator 1
	add	ra,ra,a3
	sltu	t2,a5,t2
	add	t2,t2,ra
	.loc 1 306 634 is_stmt 1 discriminator 1
	.loc 1 307 59 discriminator 1
	.loc 1 308 9 discriminator 1
	.loc 1 308 14 discriminator 1
	.loc 1 308 282 is_stmt 0 discriminator 1
	lw	a3,56(s6)
	lw	ra,40(s7)
	lw	a7,44(s7)
	lw	s0,60(s6)
	add	a3,ra,a3
	sltu	a1,a3,ra
	add	ra,a7,s0
	add	ra,a1,ra
	add	t1,a3,t1
	add	a4,ra,a4
	sltu	a3,t1,a3
	.loc 1 308 256 discriminator 1
	xor	ra,t6,t0
	.loc 1 308 282 discriminator 1
	add	a3,a3,a4
	.loc 1 308 241 discriminator 1
	and	ra,ra,s1
	.loc 1 308 256 discriminator 1
	xor	a4,t5,s2
	.loc 1 308 226 discriminator 1
	xor	ra,ra,t6
	.loc 1 308 241 discriminator 1
	and	a4,a4,a6
	.loc 1 308 282 discriminator 1
	add	ra,t1,ra
	.loc 1 308 226 discriminator 1
	xor	a4,a4,t5
	.loc 1 308 282 discriminator 1
	add	a4,a3,a4
	sltu	t1,ra,t1
	add	t1,t1,a4
	.loc 1 308 66 discriminator 1
	slli	s0,a6,18
	srli	a4,s1,14
	or	a7,s0,a4
	slli	a1,s1,18
	srli	a4,a6,14
	or	a3,a1,a4
	.loc 1 308 123 discriminator 1
	slli	s0,a6,14
	srli	a4,s1,18
	or	a4,s0,a4
	srli	a1,a6,18
	slli	s0,s1,14
	or	a1,s0,a1
	.loc 1 308 96 discriminator 1
	xor	s0,a7,a4
	.loc 1 308 180 discriminator 1
	slli	a4,a6,23
	srli	a7,s1,9
	.loc 1 308 96 discriminator 1
	xor	a1,a3,a1
	.loc 1 308 180 discriminator 1
	or	a7,a7,a4
	srli	a3,a6,9
	slli	a4,s1,23
	or	a4,a3,a4
	.loc 1 308 153 discriminator 1
	xor	a4,s0,a4
	.loc 1 308 282 discriminator 1
	add	a4,ra,a4
	.loc 1 308 153 discriminator 1
	xor	a7,a1,a7
	.loc 1 308 282 discriminator 1
	sltu	ra,a4,ra
	add	a1,t1,a7
	add	a1,ra,a1
	.loc 1 308 298 is_stmt 1 discriminator 1
	.loc 1 308 562 discriminator 1
	.loc 1 308 572 is_stmt 0 discriminator 1
	add	t1,a2,a4
	add	a3,s4,a1
	sltu	a2,t1,a2
	add	a3,a2,a3
	.loc 1 308 588 is_stmt 1 discriminator 1
	.loc 1 308 338 is_stmt 0 discriminator 1
	slli	s0,t2,4
	srli	a2,a5,28
	or	s0,s0,a2
	slli	a7,a5,4
	srli	a2,t2,28
	or	a2,a7,a2
	.loc 1 308 395 discriminator 1
	srli	ra,a5,2
	slli	a7,t2,30
	or	ra,ra,a7
	slli	s4,a5,30
	srli	a7,t2,2
	or	a7,a7,s4
	.loc 1 308 368 discriminator 1
	xor	s0,s0,a7
	xor	a2,a2,ra
	.loc 1 308 452 discriminator 1
	slli	a7,t2,25
	srli	ra,a5,7
	or	ra,ra,a7
	slli	s4,a5,25
	srli	a7,t2,7
	or	a7,a7,s4
	.loc 1 308 425 discriminator 1
	xor	s0,s0,a7
	.loc 1 308 544 discriminator 1
	or	a7,t3,a5
	.loc 1 308 425 discriminator 1
	xor	a2,a2,ra
	.loc 1 308 529 discriminator 1
	and	a7,a7,t4
	.loc 1 308 544 discriminator 1
	or	s5,s10,t2
	.loc 1 308 499 discriminator 1
	and	ra,t3,a5
	.loc 1 308 529 discriminator 1
	and	s5,s5,s3
	.loc 1 308 499 discriminator 1
	and	s4,s10,t2
	.loc 1 308 514 discriminator 1
	or	ra,a7,ra
	.loc 1 308 483 discriminator 1
	add	ra,s0,ra
	.loc 1 308 514 discriminator 1
	or	s4,s5,s4
	.loc 1 308 483 discriminator 1
	add	s4,a2,s4
	sltu	s0,ra,s0
	.loc 1 308 612 discriminator 1
	add	a4,ra,a4
	.loc 1 308 483 discriminator 1
	add	s0,s0,s4
	.loc 1 308 612 discriminator 1
	add	s0,s0,a1
	sltu	ra,a4,ra
	add	ra,ra,s0
	.loc 1 308 634 is_stmt 1 discriminator 1
	.loc 1 309 59 discriminator 1
	.loc 1 310 9 discriminator 1
	.loc 1 310 14 discriminator 1
	.loc 1 310 282 is_stmt 0 discriminator 1
	lw	a2,64(s6)
	lw	s0,48(s7)
	lw	a7,52(s7)
	lw	s4,68(s6)
	add	a2,s0,a2
	sltu	a1,a2,s0
	add	s0,a7,s4
	add	s0,a1,s0
	add	t5,s0,t5
	.loc 1 310 256 discriminator 1
	xor	s0,t0,s1
	.loc 1 310 282 discriminator 1
	add	t6,a2,t6
	.loc 1 310 256 discriminator 1
	xor	a1,s2,a6
	.loc 1 310 241 discriminator 1
	and	s0,s0,t1
	.loc 1 310 282 discriminator 1
	sltu	a2,t6,a2
	.loc 1 310 226 discriminator 1
	xor	s0,s0,t0
	.loc 1 310 241 discriminator 1
	and	a1,a1,a3
	.loc 1 310 226 discriminator 1
	xor	a1,a1,s2
	.loc 1 310 282 discriminator 1
	add	s0,t6,s0
	add	t5,a2,t5
	add	t5,t5,a1
	sltu	t6,s0,t6
	.loc 1 310 66 discriminator 1
	slli	s4,a3,18
	srli	a2,t1,14
	.loc 1 310 282 discriminator 1
	add	t6,t6,t5
	.loc 1 310 66 discriminator 1
	slli	a1,t1,18
	or	t5,s4,a2
	srli	a2,a3,14
	or	a1,a1,a2
	.loc 1 310 123 discriminator 1
	slli	s4,a3,14
	srli	a2,t1,18
	or	a7,s4,a2
	slli	s4,t1,14
	srli	a2,a3,18
	or	a2,s4,a2
	.loc 1 310 96 discriminator 1
	xor	a2,a1,a2
	xor	s4,t5,a7
	.loc 1 310 180 discriminator 1
	slli	a1,a3,23
	srli	a7,t1,9
	or	a7,a7,a1
	slli	t5,t1,23
	srli	a1,a3,9
	or	t5,a1,t5
	.loc 1 310 153 discriminator 1
	xor	t5,s4,t5
	.loc 1 310 282 discriminator 1
	add	t5,s0,t5
	.loc 1 310 153 discriminator 1
	xor	a7,a2,a7
	.loc 1 310 282 discriminator 1
	sltu	s0,t5,s0
	add	a2,t6,a7
	add	a2,s0,a2
	.loc 1 310 298 is_stmt 1 discriminator 1
	.loc 1 310 562 discriminator 1
	.loc 1 310 572 is_stmt 0 discriminator 1
	add	t6,t4,t5
	add	a1,s3,a2
	sltu	t4,t6,t4
	.loc 1 310 338 discriminator 1
	srli	a7,a4,28
	slli	s3,ra,4
	.loc 1 310 572 discriminator 1
	add	a1,t4,a1
	.loc 1 310 588 is_stmt 1 discriminator 1
	.loc 1 310 338 is_stmt 0 discriminator 1
	or	s3,s3,a7
	slli	t4,a4,4
	srli	a7,ra,28
	or	a7,t4,a7
	.loc 1 310 395 discriminator 1
	srli	s0,a4,2
	slli	t4,ra,30
	or	s0,s0,t4
	slli	s4,a4,30
	srli	t4,ra,2
	or	t4,t4,s4
	.loc 1 310 368 discriminator 1
	xor	s3,s3,t4
	xor	a7,a7,s0
	.loc 1 310 452 discriminator 1
	slli	t4,ra,25
	srli	s0,a4,7
	or	s0,s0,t4
	slli	s4,a4,25
	srli	t4,ra,7
	or	t4,t4,s4
	.loc 1 310 425 discriminator 1
	xor	s3,s3,t4
	.loc 1 310 544 discriminator 1
	or	t4,a5,a4
	.loc 1 310 425 discriminator 1
	xor	a7,a7,s0
	.loc 1 310 529 discriminator 1
	and	t4,t4,t3
	.loc 1 310 544 discriminator 1
	or	s5,t2,ra
	.loc 1 310 499 discriminator 1
	and	s0,a5,a4
	.loc 1 310 529 discriminator 1
	and	s5,s5,s10
	.loc 1 310 514 discriminator 1
	or	s0,t4,s0
	.loc 1 310 499 discriminator 1
	and	s4,t2,ra
	.loc 1 310 483 discriminator 1
	add	s0,s3,s0
	.loc 1 310 514 discriminator 1
	or	s4,s5,s4
	.loc 1 310 483 discriminator 1
	add	s4,a7,s4
	sltu	s3,s0,s3
	.loc 1 310 612 discriminator 1
	add	t5,s0,t5
	.loc 1 310 483 discriminator 1
	add	s3,s3,s4
	.loc 1 312 282 discriminator 1
	lw	s8,56(s7)
	.loc 1 310 612 discriminator 1
	add	s3,s3,a2
	sltu	s0,t5,s0
	.loc 1 312 282 discriminator 1
	lw	a2,72(s6)
	.loc 1 310 612 discriminator 1
	add	s0,s0,s3
	.loc 1 310 634 is_stmt 1 discriminator 1
	.loc 1 311 59 discriminator 1
	.loc 1 312 9 discriminator 1
	.loc 1 312 14 discriminator 1
	.loc 1 312 282 is_stmt 0 discriminator 1
	lw	t4,60(s7)
	lw	s3,76(s6)
	add	a2,s8,a2
	sltu	a7,a2,s8
	add	s8,t4,s3
	add	s8,a7,s8
	.loc 1 312 256 discriminator 1
	xor	t4,s1,t1
	.loc 1 312 282 discriminator 1
	add	t0,a2,t0
	add	s8,s8,s2
	.loc 1 312 241 discriminator 1
	and	t4,t4,t6
	.loc 1 312 256 discriminator 1
	xor	s2,a6,a3
	.loc 1 312 282 discriminator 1
	sltu	a2,t0,a2
	.loc 1 312 241 discriminator 1
	and	s2,s2,a1
	.loc 1 312 226 discriminator 1
	xor	t4,t4,s1
	.loc 1 312 282 discriminator 1
	add	s8,a2,s8
	add	t4,t0,t4
	.loc 1 312 226 discriminator 1
	xor	s2,s2,a6
	.loc 1 312 282 discriminator 1
	add	s2,s8,s2
	sltu	t0,t4,t0
	.loc 1 312 66 discriminator 1
	slli	s4,a1,18
	srli	a2,t6,14
	or	s3,s4,a2
	.loc 1 312 282 discriminator 1
	add	t0,t0,s2
	.loc 1 312 66 discriminator 1
	srli	a2,a1,14
	slli	s2,t6,18
	or	s2,s2,a2
	.loc 1 312 123 discriminator 1
	slli	s4,a1,14
	srli	a2,t6,18
	or	a7,s4,a2
	slli	s4,t6,14
	srli	a2,a1,18
	or	a2,s4,a2
	.loc 1 312 96 discriminator 1
	xor	s4,s3,a7
	.loc 1 312 180 discriminator 1
	slli	a7,a1,23
	srli	s3,t6,9
	.loc 1 312 96 discriminator 1
	xor	a2,s2,a2
	.loc 1 312 180 discriminator 1
	or	s3,s3,a7
	srli	s2,a1,9
	slli	a7,t6,23
	or	a7,s2,a7
	.loc 1 312 153 discriminator 1
	xor	a7,s4,a7
	.loc 1 312 282 discriminator 1
	add	a7,t4,a7
	.loc 1 312 153 discriminator 1
	xor	s3,a2,s3
	.loc 1 312 282 discriminator 1
	add	a2,t0,s3
	sltu	t4,a7,t4
	add	a2,t4,a2
	.loc 1 312 298 is_stmt 1 discriminator 1
	.loc 1 312 338 is_stmt 0 discriminator 1
	slli	t0,s0,4
	srli	t4,t5,28
	or	t0,t0,t4
	slli	s4,t5,4
	srli	t4,s0,28
	or	s4,s4,t4
	.loc 1 312 395 discriminator 1
	srli	s3,t5,2
	slli	t4,s0,30
	or	s3,s3,t4
	srli	s2,s0,2
	slli	t4,t5,30
	or	s2,s2,t4
	.loc 1 312 368 discriminator 1
	xor	t0,t0,s2
	xor	t4,s4,s3
	.loc 1 312 452 discriminator 1
	slli	s2,s0,25
	srli	s3,t5,7
	or	s3,s3,s2
	slli	s4,t5,25
	srli	s2,s0,7
	or	s2,s2,s4
	.loc 1 312 544 discriminator 1
	or	s4,a4,t5
	.loc 1 312 425 discriminator 1
	xor	t0,t0,s2
	xor	t4,t4,s3
	.loc 1 312 529 discriminator 1
	and	s4,s4,a5
	.loc 1 312 544 discriminator 1
	or	s2,ra,s0
	.loc 1 312 499 discriminator 1
	and	s3,a4,t5
	.loc 1 312 514 discriminator 1
	or	s3,s4,s3
	.loc 1 312 529 discriminator 1
	and	s2,s2,t2
	.loc 1 312 499 discriminator 1
	and	s5,ra,s0
	.loc 1 312 514 discriminator 1
	or	s2,s2,s5
	.loc 1 312 483 discriminator 1
	add	s3,t0,s3
	sltu	t0,s3,t0
	add	t4,t4,s2
	add	t4,t0,t4
	.loc 1 312 562 is_stmt 1 discriminator 1
	.loc 1 312 612 is_stmt 0 discriminator 1
	add	s2,a7,s3
	add	s4,a2,t4
	sltu	s8,s2,a7
	add	s8,s8,s4
	.loc 1 315 5 discriminator 1
	lw	s4,60(sp)
	.loc 1 312 572 discriminator 1
	add	t0,t3,a7
	sltu	t3,t0,t3
	add	s10,s10,a2
	.loc 1 315 5 discriminator 1
	addi	s6,s6,64
	.loc 1 312 572 discriminator 1
	add	t3,t3,s10
	.loc 1 312 588 is_stmt 1 discriminator 1
	.loc 1 312 634 discriminator 1
	.loc 1 313 59 discriminator 1
	.loc 1 315 10 discriminator 1
	.loc 1 315 5 is_stmt 0 discriminator 1
	addi	s7,s7,64
	bne	s4,s6,.L14
	sw	a2,68(sp)
	.loc 1 317 19
	lw	a2,28(sp)
	sw	s8,724(sp)
	sw	a7,64(sp)
	add	s8,a2,s8
	.loc 1 318 19
	lw	a2,0(sp)
	lw	a7,32(sp)
	sw	t5,728(sp)
	add	t5,a2,t5
	sw	s0,732(sp)
	sltu	a2,t5,a2
	add	s0,a7,s0
	add	s0,a2,s0
	.loc 1 319 19
	lw	a2,4(sp)
	.loc 1 318 19
	sw	s0,28(a0)
	.loc 1 319 19
	lw	s0,36(sp)
	sw	s2,720(sp)
	sw	a4,736(sp)
	.loc 1 317 19
	add	s2,s11,s2
	.loc 1 319 19
	add	a4,a2,a4
	sw	ra,740(sp)
	sltu	a2,a4,a2
	.loc 1 317 19
	sltu	s11,s2,s11
	.loc 1 319 19
	add	ra,s0,ra
	add	ra,a2,ra
	.loc 1 317 19
	add	s11,s11,s8
	.loc 1 319 19
	sw	a4,32(a0)
	.loc 1 320 19
	lw	a4,8(sp)
	.loc 1 319 19
	sw	ra,36(a0)
	sw	s1,776(sp)
	sw	a6,780(sp)
	sw	t0,752(sp)
	sw	t3,756(sp)
	sw	t1,768(sp)
	sw	a3,772(sp)
	sw	t6,760(sp)
	sw	a1,764(sp)
	sw	a5,744(sp)
	sw	t2,748(sp)
	sw	s3,72(sp)
	sw	t4,76(sp)
	.loc 1 317 5 is_stmt 1
	.loc 1 317 19 is_stmt 0
	sw	s2,16(a0)
	sw	s11,20(a0)
	.loc 1 318 5 is_stmt 1
	.loc 1 319 5
	.loc 1 320 5
	.loc 1 318 19 is_stmt 0
	sw	t5,24(a0)
	.loc 1 320 19
	lw	a2,40(sp)
	add	a5,a4,a5
	sltu	a4,a5,a4
	sw	a5,40(a0)
	add	t2,a2,t2
	.loc 1 321 19
	lw	a5,12(sp)
	.loc 1 320 19
	add	t2,a4,t2
	.loc 1 321 19
	lw	a4,44(sp)
	add	t0,a5,t0
	sltu	a5,t0,a5
	add	t3,a4,t3
	add	t3,a5,t3
	.loc 1 322 19
	lw	a5,16(sp)
	lw	a4,48(sp)
	.loc 1 320 19
	sw	t2,44(a0)
	.loc 1 321 5 is_stmt 1
	.loc 1 322 19 is_stmt 0
	add	t6,a5,t6
	sltu	a5,t6,a5
	add	a1,a4,a1
	add	a1,a5,a1
	.loc 1 323 19
	lw	a5,20(sp)
	lw	a4,52(sp)
	.loc 1 322 19
	sw	a1,60(a0)
	.loc 1 323 19
	add	t1,a5,t1
	sltu	a5,t1,a5
	add	a3,a4,a3
	add	a3,a5,a3
	.loc 1 324 19
	lw	a5,24(sp)
	lw	a4,56(sp)
	.loc 1 321 19
	sw	t0,48(a0)
	.loc 1 324 19
	add	s1,a5,s1
	sltu	a5,s1,a5
	add	a6,a4,a6
	add	a6,a5,a6
	sw	s1,72(a0)
	.loc 1 321 19
	sw	t3,52(a0)
	.loc 1 322 5 is_stmt 1
	.loc 1 323 5
	.loc 1 322 19 is_stmt 0
	sw	t6,56(a0)
	.loc 1 323 19
	sw	t1,64(a0)
	sw	a3,68(a0)
	.loc 1 324 5 is_stmt 1
	.loc 1 324 19 is_stmt 0
	sw	a6,76(a0)
	.loc 1 327 5 is_stmt 1
	li	a1,720
	addi	a0,sp,64
.LVL16:
	call	mbedtls_platform_zeroize
.LVL17:
	.loc 1 329 5
	.loc 1 330 1 is_stmt 0
	lw	ra,844(sp)
	.cfi_restore 1
	lw	s0,840(sp)
	.cfi_restore 8
	lw	s1,836(sp)
	.cfi_restore 9
	lw	s2,832(sp)
	.cfi_restore 18
	lw	s3,828(sp)
	.cfi_restore 19
	lw	s4,824(sp)
	.cfi_restore 20
	lw	s5,820(sp)
	.cfi_restore 21
	lw	s6,816(sp)
	.cfi_restore 22
	lw	s7,812(sp)
	.cfi_restore 23
	lw	s8,808(sp)
	.cfi_restore 24
	lw	s9,804(sp)
	.cfi_restore 25
	lw	s10,800(sp)
	.cfi_restore 26
	lw	s11,796(sp)
	.cfi_restore 27
	li	a0,0
	addi	sp,sp,848
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE6:
	.size	mbedtls_internal_sha512_process, .-mbedtls_internal_sha512_process
	.section	.text.mbedtls_sha512_process,"ax",@progbits
	.align	1
	.globl	mbedtls_sha512_process
	.type	mbedtls_sha512_process, @function
mbedtls_sha512_process:
.LFB7:
	.loc 1 335 1 is_stmt 1
	.cfi_startproc
.LVL18:
	.loc 1 336 5
	tail	mbedtls_internal_sha512_process
.LVL19:
	.cfi_endproc
.LFE7:
	.size	mbedtls_sha512_process, .-mbedtls_sha512_process
	.section	.text.mbedtls_sha512_update_ret,"ax",@progbits
	.align	1
	.globl	mbedtls_sha512_update_ret
	.type	mbedtls_sha512_update_ret, @function
mbedtls_sha512_update_ret:
.LFB8:
	.loc 1 347 1
	.cfi_startproc
.LVL20:
	.loc 1 348 5
	.loc 1 349 5
	.loc 1 350 5
	.loc 1 352 5
	.loc 1 352 10
	.loc 1 352 17
	.loc 1 353 5
	.loc 1 353 10
	.loc 1 353 17
	.loc 1 355 5
	.loc 1 355 7 is_stmt 0
	bne	a2,zero,.L21
	.loc 1 356 15
	li	a0,0
.LVL21:
	.loc 1 391 1
	ret
.LVL22:
.L21:
	.loc 1 347 1
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	s1,20(sp)
	sw	s2,16(sp)
	sw	s3,12(sp)
	sw	ra,28(sp)
	sw	s4,8(sp)
	sw	s5,4(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 1, -4
	.cfi_offset 20, -24
	.cfi_offset 21, -28
.LBB4:
.LBB5:
	.loc 1 358 38
	lw	a5,0(a0)
	lw	a3,4(a0)
	mv	s1,a0
	.loc 1 361 19
	add	a4,a5,a2
	.loc 1 358 10
	andi	s3,a5,127
	.loc 1 361 19
	sltu	a5,a4,a5
	add	a5,a5,a3
	sw	a4,0(a0)
	sw	a5,4(a0)
	mv	s2,a1
	mv	s0,a2
.LVL23:
	.loc 1 358 5 is_stmt 1
	.loc 1 359 5
	.loc 1 361 5
	.loc 1 363 5
	.loc 1 363 7 is_stmt 0
	bne	a5,zero,.L23
.LVL24:
	bleu	a2,a4,.L23
	.loc 1 364 9 is_stmt 1
	.loc 1 364 22 is_stmt 0
	lw	a5,8(a0)
	lw	a3,12(a0)
	addi	a4,a5,1
	sltu	a5,a4,a5
	add	a5,a5,a3
	sw	a4,8(a0)
	sw	a5,12(a0)
.L23:
	.loc 1 366 5 is_stmt 1
	.loc 1 366 7 is_stmt 0
	beq	s3,zero,.L25
	.loc 1 359 10
	li	s4,128
	sub	s4,s4,s3
	.loc 1 366 14
	bltu	s0,s4,.L25
	.loc 1 368 9 is_stmt 1
	.loc 1 368 27 is_stmt 0
	addi	s5,s1,80
	.loc 1 368 9
	mv	a1,s2
.LVL25:
	mv	a2,s4
	add	a0,s5,s3
	call	memcpy
.LVL26:
	.loc 1 370 9 is_stmt 1
	.loc 1 370 21 is_stmt 0
	mv	a1,s5
	mv	a0,s1
	call	mbedtls_internal_sha512_process
.LVL27:
	.loc 1 370 11
	bne	a0,zero,.L20
	.loc 1 373 9 is_stmt 1
.LVL28:
	.loc 1 374 14 is_stmt 0
	addi	s0,s0,-128
.LVL29:
	add	s0,s0,s3
.LVL30:
	.loc 1 373 15
	add	s2,s2,s4
.LVL31:
	.loc 1 374 9 is_stmt 1
	.loc 1 375 9
	.loc 1 375 14 is_stmt 0
	li	s3,0
.LVL32:
.L25:
	add	s2,s2,s0
.LVL33:
	.loc 1 378 10
	li	s4,127
	j	.L26
.LVL34:
.L27:
	.loc 1 380 9 is_stmt 1
	.loc 1 380 21 is_stmt 0
	mv	a0,s1
	call	mbedtls_internal_sha512_process
.LVL35:
	.loc 1 380 11
	bne	a0,zero,.L20
	.loc 1 383 9 is_stmt 1
.LVL36:
	.loc 1 384 9
	.loc 1 384 14 is_stmt 0
	addi	s0,s0,-128
.LVL37:
.L26:
	sub	a1,s2,s0
.LVL38:
	.loc 1 378 10 is_stmt 1
	bgtu	s0,s4,.L27
	.loc 1 387 5
	.loc 1 387 7 is_stmt 0
	beq	s0,zero,.L39
	.loc 1 388 9 is_stmt 1
	.loc 1 388 27 is_stmt 0
	addi	a0,s1,80
	.loc 1 388 9
	mv	a2,s0
	add	a0,a0,s3
	call	memcpy
.LVL39:
.L39:
	.loc 1 390 11
	li	a0,0
.LVL40:
.L20:
.LBE5:
.LBE4:
	.loc 1 391 1
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	lw	s1,20(sp)
	.cfi_restore 9
.LVL41:
	lw	s2,16(sp)
	.cfi_restore 18
	lw	s3,12(sp)
	.cfi_restore 19
	lw	s4,8(sp)
	.cfi_restore 20
	lw	s5,4(sp)
	.cfi_restore 21
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE8:
	.size	mbedtls_sha512_update_ret, .-mbedtls_sha512_update_ret
	.section	.text.mbedtls_sha512_update,"ax",@progbits
	.align	1
	.globl	mbedtls_sha512_update
	.type	mbedtls_sha512_update, @function
mbedtls_sha512_update:
.LFB9:
	.loc 1 397 1 is_stmt 1
	.cfi_startproc
.LVL42:
	.loc 1 398 5
	tail	mbedtls_sha512_update_ret
.LVL43:
	.cfi_endproc
.LFE9:
	.size	mbedtls_sha512_update, .-mbedtls_sha512_update
	.section	.text.mbedtls_sha512_finish_ret,"ax",@progbits
	.align	1
	.globl	mbedtls_sha512_finish_ret
	.type	mbedtls_sha512_finish_ret, @function
mbedtls_sha512_finish_ret:
.LFB10:
	.loc 1 407 1
	.cfi_startproc
.LVL44:
	.loc 1 408 5
	.loc 1 409 5
	.loc 1 410 5
	.loc 1 412 5
	.loc 1 412 10
	.loc 1 412 17
	.loc 1 413 5
	.loc 1 413 10
	.loc 1 413 17
	.loc 1 418 5
	.loc 1 407 1 is_stmt 0
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
	.loc 1 418 10
	lw	a5,0(a0)
	.loc 1 420 25
	li	a3,-128
	.loc 1 425 17
	addi	s2,a0,80
	.loc 1 418 10
	andi	a5,a5,127
.LVL45:
	.loc 1 420 5 is_stmt 1
	.loc 1 420 21 is_stmt 0
	addi	a4,a5,1
.LVL46:
	.loc 1 420 25
	add	a5,a0,a5
	sb	a3,80(a5)
	.loc 1 422 5 is_stmt 1
	.loc 1 422 7 is_stmt 0
	li	a2,112
	.loc 1 407 1
	mv	s0,a0
	mv	s1,a1
	.loc 1 425 9
	add	a0,s2,a4
.LVL47:
	.loc 1 422 7
	bgtu	a4,a2,.L42
	.loc 1 425 9 is_stmt 1
	sub	a2,a2,a4
	li	a1,0
.LVL48:
.L46:
	.loc 1 435 9 is_stmt 0
	call	memset
.LVL49:
	.loc 1 441 5 is_stmt 1
	.loc 1 442 28 is_stmt 0
	lw	a3,8(s0)
	lw	a2,12(s0)
	.loc 1 441 24
	lw	a5,4(s0)
	.loc 1 442 28
	srli	a4,a3,29
	slli	a2,a2,3
	or	a2,a4,a2
	.loc 1 445 56
	srli	a6,a2,24
	.loc 1 442 28
	slli	a3,a3,3
	.loc 1 441 28
	srli	a4,a5,29
	.loc 1 445 31
	sb	a6,192(s0)
	.loc 1 445 117
	srli	a6,a2,16
	.loc 1 441 24
	lw	a1,0(s0)
	.loc 1 441 10
	or	a4,a3,a4
.LVL50:
	.loc 1 443 5 is_stmt 1
	.loc 1 445 92 is_stmt 0
	sb	a6,193(s0)
	.loc 1 445 214
	sb	a2,195(s0)
	.loc 1 445 178
	srli	a6,a2,8
	.loc 1 445 300
	srli	a2,a3,24
.LVL51:
	.loc 1 445 361
	srli	a3,a3,16
	.loc 1 445 336
	sb	a3,197(s0)
	.loc 1 445 395
	slli	a3,a4,8
	slli	a4,a4,16
.LVL52:
	srli	a4,a4,16
	.loc 1 443 9
	srli	a0,a1,29
	slli	a5,a5,3
.LVL53:
	.loc 1 445 395
	srli	a4,a4,8
	.loc 1 443 9
	or	a5,a0,a5
	.loc 1 445 395
	or	a4,a3,a4
	sh	a4,198(s0)
	.loc 1 446 55
	srli	a4,a5,24
	.loc 1 443 9
	slli	a0,a1,3
.LVL54:
	.loc 1 445 7 is_stmt 1
	.loc 1 445 65
	.loc 1 445 126
	.loc 1 446 31 is_stmt 0
	sb	a4,200(s0)
	.loc 1 446 115
	srli	a4,a5,16
	.loc 1 446 91
	sb	a4,201(s0)
	.loc 1 446 211
	sb	a5,203(s0)
	.loc 1 446 175
	srli	a4,a5,8
	.loc 1 446 295
	srli	a5,a0,24
.LVL55:
	.loc 1 446 271
	sb	a5,204(s0)
	.loc 1 446 355
	srli	a5,a0,16
	.loc 1 446 389
	slli	a0,a0,16
.LVL56:
	srli	a0,a0,16
	srli	a0,a0,8
	slli	a1,a1,11
.LVL57:
	or	a1,a1,a0
	sh	a1,206(s0)
	.loc 1 445 153
	sb	a6,194(s0)
	.loc 1 445 187 is_stmt 1
	.loc 1 445 248
	.loc 1 445 275 is_stmt 0
	sb	a2,196(s0)
	.loc 1 445 309 is_stmt 1
	.loc 1 445 370
	.loc 1 445 430
	.loc 1 445 486
	.loc 1 446 7
	.loc 1 446 64
	.loc 1 446 124
	.loc 1 446 151 is_stmt 0
	sb	a4,202(s0)
	.loc 1 446 184 is_stmt 1
	.loc 1 446 244
	.loc 1 446 304
	.loc 1 446 331 is_stmt 0
	sb	a5,205(s0)
	.loc 1 446 364 is_stmt 1
	.loc 1 446 423
	.loc 1 446 478
	.loc 1 448 5
	.loc 1 448 17 is_stmt 0
	mv	a1,s2
	mv	a0,s0
	call	mbedtls_internal_sha512_process
.LVL58:
	.loc 1 448 7
	bne	a0,zero,.L41
	.loc 1 454 7 is_stmt 1
	.loc 1 454 58 is_stmt 0
	lbu	a5,23(s0)
	.loc 1 454 24
	sb	a5,0(s1)
	.loc 1 454 67 is_stmt 1
	.loc 1 454 121 is_stmt 0
	lhu	a5,22(s0)
	.loc 1 454 87
	sb	a5,1(s1)
	.loc 1 454 130 is_stmt 1
	.loc 1 454 184 is_stmt 0
	lw	a5,20(s0)
	srli	a5,a5,8
	.loc 1 454 150
	sb	a5,2(s1)
	.loc 1 454 193 is_stmt 1
	.loc 1 454 247 is_stmt 0
	lw	a5,20(s0)
	.loc 1 454 213
	sb	a5,3(s1)
	.loc 1 454 256 is_stmt 1
	.loc 1 454 310 is_stmt 0
	lbu	a5,19(s0)
	.loc 1 454 276
	sb	a5,4(s1)
	.loc 1 454 319 is_stmt 1
	.loc 1 454 373 is_stmt 0
	lhu	a5,18(s0)
	.loc 1 454 339
	sb	a5,5(s1)
	.loc 1 454 382 is_stmt 1
	.loc 1 454 436 is_stmt 0
	lw	a5,16(s0)
	srli	a5,a5,8
	.loc 1 454 402
	sb	a5,6(s1)
	.loc 1 454 444 is_stmt 1
	.loc 1 454 464 is_stmt 0
	lw	a5,16(s0)
	sb	a5,7(s1)
	.loc 1 454 502 is_stmt 1
	.loc 1 455 7
	.loc 1 455 58 is_stmt 0
	lbu	a5,31(s0)
	.loc 1 455 24
	sb	a5,8(s1)
	.loc 1 455 67 is_stmt 1
	.loc 1 455 121 is_stmt 0
	lhu	a5,30(s0)
	.loc 1 455 87
	sb	a5,9(s1)
	.loc 1 455 130 is_stmt 1
	.loc 1 455 184 is_stmt 0
	lw	a5,28(s0)
	srli	a5,a5,8
	.loc 1 455 150
	sb	a5,10(s1)
	.loc 1 455 193 is_stmt 1
	.loc 1 455 247 is_stmt 0
	lw	a5,28(s0)
	.loc 1 455 213
	sb	a5,11(s1)
	.loc 1 455 256 is_stmt 1
	.loc 1 455 310 is_stmt 0
	lbu	a5,27(s0)
	.loc 1 455 276
	sb	a5,12(s1)
	.loc 1 455 319 is_stmt 1
	.loc 1 455 373 is_stmt 0
	lhu	a5,26(s0)
	.loc 1 455 339
	sb	a5,13(s1)
	.loc 1 455 382 is_stmt 1
	.loc 1 455 436 is_stmt 0
	lw	a5,24(s0)
	srli	a5,a5,8
	.loc 1 455 402
	sb	a5,14(s1)
	.loc 1 455 444 is_stmt 1
	.loc 1 455 464 is_stmt 0
	lw	a5,24(s0)
	sb	a5,15(s1)
	.loc 1 455 502 is_stmt 1
	.loc 1 456 7
	.loc 1 456 59 is_stmt 0
	lbu	a5,39(s0)
	.loc 1 456 25
	sb	a5,16(s1)
	.loc 1 456 68 is_stmt 1
	.loc 1 456 123 is_stmt 0
	lhu	a5,38(s0)
	.loc 1 456 89
	sb	a5,17(s1)
	.loc 1 456 132 is_stmt 1
	.loc 1 456 187 is_stmt 0
	lw	a5,36(s0)
	srli	a5,a5,8
	.loc 1 456 153
	sb	a5,18(s1)
	.loc 1 456 196 is_stmt 1
	.loc 1 456 251 is_stmt 0
	lw	a5,36(s0)
	.loc 1 456 217
	sb	a5,19(s1)
	.loc 1 456 260 is_stmt 1
	.loc 1 456 315 is_stmt 0
	lbu	a5,35(s0)
	.loc 1 456 281
	sb	a5,20(s1)
	.loc 1 456 324 is_stmt 1
	.loc 1 456 379 is_stmt 0
	lhu	a5,34(s0)
	.loc 1 456 345
	sb	a5,21(s1)
	.loc 1 456 388 is_stmt 1
	.loc 1 456 443 is_stmt 0
	lw	a5,32(s0)
	srli	a5,a5,8
	.loc 1 456 409
	sb	a5,22(s1)
	.loc 1 456 451 is_stmt 1
	.loc 1 456 472 is_stmt 0
	lw	a5,32(s0)
	sb	a5,23(s1)
	.loc 1 456 510 is_stmt 1
	.loc 1 457 7
	.loc 1 457 59 is_stmt 0
	lbu	a5,47(s0)
	.loc 1 457 25
	sb	a5,24(s1)
	.loc 1 457 68 is_stmt 1
	.loc 1 457 123 is_stmt 0
	lhu	a5,46(s0)
	.loc 1 457 89
	sb	a5,25(s1)
	.loc 1 457 132 is_stmt 1
	.loc 1 457 187 is_stmt 0
	lw	a5,44(s0)
	srli	a5,a5,8
	.loc 1 457 153
	sb	a5,26(s1)
	.loc 1 457 196 is_stmt 1
	.loc 1 457 251 is_stmt 0
	lw	a5,44(s0)
	.loc 1 457 217
	sb	a5,27(s1)
	.loc 1 457 260 is_stmt 1
	.loc 1 457 315 is_stmt 0
	lbu	a5,43(s0)
	.loc 1 457 281
	sb	a5,28(s1)
	.loc 1 457 324 is_stmt 1
	.loc 1 457 379 is_stmt 0
	lhu	a5,42(s0)
	.loc 1 457 345
	sb	a5,29(s1)
	.loc 1 457 388 is_stmt 1
	.loc 1 457 443 is_stmt 0
	lw	a5,40(s0)
	srli	a5,a5,8
	.loc 1 457 409
	sb	a5,30(s1)
	.loc 1 457 451 is_stmt 1
	.loc 1 457 472 is_stmt 0
	lw	a5,40(s0)
	sb	a5,31(s1)
	.loc 1 457 510 is_stmt 1
	.loc 1 458 7
	.loc 1 458 59 is_stmt 0
	lbu	a5,55(s0)
	.loc 1 458 25
	sb	a5,32(s1)
	.loc 1 458 68 is_stmt 1
	.loc 1 458 123 is_stmt 0
	lhu	a5,54(s0)
	.loc 1 458 89
	sb	a5,33(s1)
	.loc 1 458 132 is_stmt 1
	.loc 1 458 187 is_stmt 0
	lw	a5,52(s0)
	srli	a5,a5,8
	.loc 1 458 153
	sb	a5,34(s1)
	.loc 1 458 196 is_stmt 1
	.loc 1 458 251 is_stmt 0
	lw	a5,52(s0)
	.loc 1 458 217
	sb	a5,35(s1)
	.loc 1 458 260 is_stmt 1
	.loc 1 458 315 is_stmt 0
	lbu	a5,51(s0)
	.loc 1 458 281
	sb	a5,36(s1)
	.loc 1 458 324 is_stmt 1
	.loc 1 458 379 is_stmt 0
	lhu	a5,50(s0)
	.loc 1 458 345
	sb	a5,37(s1)
	.loc 1 458 388 is_stmt 1
	.loc 1 458 443 is_stmt 0
	lw	a5,48(s0)
	srli	a5,a5,8
	.loc 1 458 409
	sb	a5,38(s1)
	.loc 1 458 451 is_stmt 1
	.loc 1 458 472 is_stmt 0
	lw	a5,48(s0)
	sb	a5,39(s1)
	.loc 1 458 510 is_stmt 1
	.loc 1 459 7
	.loc 1 459 59 is_stmt 0
	lbu	a5,63(s0)
	.loc 1 459 25
	sb	a5,40(s1)
	.loc 1 459 68 is_stmt 1
	.loc 1 459 123 is_stmt 0
	lhu	a5,62(s0)
	.loc 1 459 89
	sb	a5,41(s1)
	.loc 1 459 132 is_stmt 1
	.loc 1 459 187 is_stmt 0
	lw	a5,60(s0)
	srli	a5,a5,8
	.loc 1 459 153
	sb	a5,42(s1)
	.loc 1 459 196 is_stmt 1
	.loc 1 459 251 is_stmt 0
	lw	a5,60(s0)
	.loc 1 459 217
	sb	a5,43(s1)
	.loc 1 459 260 is_stmt 1
	.loc 1 459 315 is_stmt 0
	lbu	a5,59(s0)
	.loc 1 459 281
	sb	a5,44(s1)
	.loc 1 459 324 is_stmt 1
	.loc 1 459 379 is_stmt 0
	lhu	a5,58(s0)
	.loc 1 459 345
	sb	a5,45(s1)
	.loc 1 459 388 is_stmt 1
	.loc 1 459 443 is_stmt 0
	lw	a5,56(s0)
	srli	a5,a5,8
	.loc 1 459 409
	sb	a5,46(s1)
	.loc 1 459 451 is_stmt 1
	.loc 1 459 472 is_stmt 0
	lw	a5,56(s0)
	sb	a5,47(s1)
	.loc 1 459 510 is_stmt 1
	.loc 1 461 5
	.loc 1 461 12 is_stmt 0
	lw	a5,208(s0)
	.loc 1 461 7
	bne	a5,zero,.L41
	.loc 1 463 11 is_stmt 1
	.loc 1 463 63 is_stmt 0
	lbu	a5,71(s0)
	.loc 1 463 29
	sb	a5,48(s1)
	.loc 1 463 72 is_stmt 1
	.loc 1 463 127 is_stmt 0
	lhu	a5,70(s0)
	.loc 1 463 93
	sb	a5,49(s1)
	.loc 1 463 136 is_stmt 1
	.loc 1 463 191 is_stmt 0
	lw	a5,68(s0)
	srli	a5,a5,8
	.loc 1 463 157
	sb	a5,50(s1)
	.loc 1 463 200 is_stmt 1
	.loc 1 463 255 is_stmt 0
	lw	a5,68(s0)
	.loc 1 463 221
	sb	a5,51(s1)
	.loc 1 463 264 is_stmt 1
	.loc 1 463 319 is_stmt 0
	lbu	a5,67(s0)
	.loc 1 463 285
	sb	a5,52(s1)
	.loc 1 463 328 is_stmt 1
	.loc 1 463 383 is_stmt 0
	lhu	a5,66(s0)
	.loc 1 463 349
	sb	a5,53(s1)
	.loc 1 463 392 is_stmt 1
	.loc 1 463 447 is_stmt 0
	lw	a5,64(s0)
	srli	a5,a5,8
	.loc 1 463 413
	sb	a5,54(s1)
	.loc 1 463 455 is_stmt 1
	.loc 1 463 476 is_stmt 0
	lw	a5,64(s0)
	sb	a5,55(s1)
	.loc 1 463 514 is_stmt 1
	.loc 1 464 11
	.loc 1 464 63 is_stmt 0
	lbu	a5,79(s0)
	.loc 1 464 29
	sb	a5,56(s1)
	.loc 1 464 72 is_stmt 1
	.loc 1 464 127 is_stmt 0
	lhu	a5,78(s0)
	.loc 1 464 93
	sb	a5,57(s1)
	.loc 1 464 136 is_stmt 1
	.loc 1 464 191 is_stmt 0
	lw	a5,76(s0)
	srli	a5,a5,8
	.loc 1 464 157
	sb	a5,58(s1)
	.loc 1 464 200 is_stmt 1
	.loc 1 464 255 is_stmt 0
	lw	a5,76(s0)
	.loc 1 464 221
	sb	a5,59(s1)
	.loc 1 464 264 is_stmt 1
	.loc 1 464 319 is_stmt 0
	lbu	a5,75(s0)
	.loc 1 464 285
	sb	a5,60(s1)
	.loc 1 464 328 is_stmt 1
	.loc 1 464 383 is_stmt 0
	lhu	a5,74(s0)
	.loc 1 464 349
	sb	a5,61(s1)
	.loc 1 464 392 is_stmt 1
	.loc 1 464 447 is_stmt 0
	lw	a5,72(s0)
	srli	a5,a5,8
	.loc 1 464 413
	sb	a5,62(s1)
	.loc 1 464 455 is_stmt 1
	.loc 1 464 476 is_stmt 0
	lw	a5,72(s0)
	sb	a5,63(s1)
.L41:
	.loc 1 468 1
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
.LVL59:
	lw	s1,4(sp)
	.cfi_restore 9
.LVL60:
	lw	s2,0(sp)
	.cfi_restore 18
.LVL61:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL62:
.L42:
	.cfi_restore_state
	.loc 1 430 9 is_stmt 1
	li	a2,128
	li	a1,0
	sub	a2,a2,a4
	call	memset
.LVL63:
	.loc 1 432 9
	.loc 1 432 21 is_stmt 0
	mv	a1,s2
	mv	a0,s0
	call	mbedtls_internal_sha512_process
.LVL64:
	.loc 1 432 11
	bne	a0,zero,.L41
	.loc 1 435 9 is_stmt 1
	li	a2,112
	li	a1,0
	mv	a0,s2
.LVL65:
	j	.L46
	.cfi_endproc
.LFE10:
	.size	mbedtls_sha512_finish_ret, .-mbedtls_sha512_finish_ret
	.section	.text.mbedtls_sha512_finish,"ax",@progbits
	.align	1
	.globl	mbedtls_sha512_finish
	.type	mbedtls_sha512_finish, @function
mbedtls_sha512_finish:
.LFB11:
	.loc 1 473 1
	.cfi_startproc
.LVL66:
	.loc 1 474 5
	tail	mbedtls_sha512_finish_ret
.LVL67:
	.cfi_endproc
.LFE11:
	.size	mbedtls_sha512_finish, .-mbedtls_sha512_finish
	.section	.text.mbedtls_sha512_ret,"ax",@progbits
	.align	1
	.globl	mbedtls_sha512_ret
	.type	mbedtls_sha512_ret, @function
mbedtls_sha512_ret:
.LFB12:
	.loc 1 487 1
	.cfi_startproc
.LVL68:
	.loc 1 488 5
	.loc 1 489 5
	.loc 1 491 5
	.loc 1 491 10
	.loc 1 491 17
	.loc 1 492 5
	.loc 1 492 10
	.loc 1 492 17
	.loc 1 493 5
	.loc 1 493 10
	.loc 1 493 17
	.loc 1 495 5
	.loc 1 487 1 is_stmt 0
	addi	sp,sp,-272
	.cfi_def_cfa_offset 272
	sw	s2,256(sp)
	.cfi_offset 18, -16
	mv	s2,a0
	.loc 1 495 5
	addi	a0,sp,24
.LVL69:
	.loc 1 487 1
	sw	ra,268(sp)
	sw	s0,264(sp)
	sw	s1,260(sp)
	sw	s3,252(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 19, -20
	.loc 1 487 1
	mv	s1,a2
	mv	s3,a1
	sw	a3,12(sp)
	.loc 1 495 5
	call	mbedtls_sha512_init
.LVL70:
	.loc 1 497 5 is_stmt 1
	.loc 1 497 17 is_stmt 0
	lw	a1,12(sp)
	addi	a0,sp,24
	call	mbedtls_sha512_starts_ret
.LVL71:
	mv	s0,a0
.LVL72:
	.loc 1 497 7
	bne	a0,zero,.L49
	.loc 1 500 5 is_stmt 1
	.loc 1 500 17 is_stmt 0
	mv	a2,s3
	mv	a1,s2
	addi	a0,sp,24
	call	mbedtls_sha512_update_ret
.LVL73:
	mv	s0,a0
.LVL74:
	.loc 1 500 7
	bne	a0,zero,.L49
	.loc 1 503 5 is_stmt 1
	.loc 1 503 17 is_stmt 0
	mv	a1,s1
	addi	a0,sp,24
	call	mbedtls_sha512_finish_ret
.LVL75:
	mv	s0,a0
.LVL76:
.L49:
	.loc 1 507 5 is_stmt 1
	addi	a0,sp,24
	call	mbedtls_sha512_free
.LVL77:
	.loc 1 509 5
	.loc 1 510 1 is_stmt 0
	lw	ra,268(sp)
	.cfi_restore 1
	mv	a0,s0
	lw	s0,264(sp)
	.cfi_restore 8
.LVL78:
	lw	s1,260(sp)
	.cfi_restore 9
.LVL79:
	lw	s2,256(sp)
	.cfi_restore 18
.LVL80:
	lw	s3,252(sp)
	.cfi_restore 19
.LVL81:
	addi	sp,sp,272
	.cfi_def_cfa_offset 0
.LVL82:
	jr	ra
	.cfi_endproc
.LFE12:
	.size	mbedtls_sha512_ret, .-mbedtls_sha512_ret
	.section	.text.mbedtls_sha512,"ax",@progbits
	.align	1
	.globl	mbedtls_sha512
	.type	mbedtls_sha512, @function
mbedtls_sha512:
.LFB13:
	.loc 1 517 1 is_stmt 1
	.cfi_startproc
.LVL83:
	.loc 1 518 5
	tail	mbedtls_sha512_ret
.LVL84:
	.cfi_endproc
.LFE13:
	.size	mbedtls_sha512, .-mbedtls_sha512
	.section	.srodata.cst8,"aM",@progbits,8
	.align	3
.LC0:
	.word	-205731576
	.word	1779033703
	.align	3
.LC1:
	.word	-2067093701
	.word	-1150833019
	.align	3
.LC2:
	.word	-23791573
	.word	1013904242
	.align	3
.LC3:
	.word	1595750129
	.word	-1521486534
	.align	3
.LC4:
	.word	-1377402159
	.word	1359893119
	.align	3
.LC5:
	.word	725511199
	.word	-1694144372
	.align	3
.LC6:
	.word	-79577749
	.word	528734635
	.align	3
.LC7:
	.word	327033209
	.word	1541459225
	.align	3
.LC8:
	.word	-1056596264
	.word	-876896931
	.align	3
.LC9:
	.word	914150663
	.word	1654270250
	.align	3
.LC10:
	.word	812702999
	.word	-1856437926
	.align	3
.LC11:
	.word	-150054599
	.word	355462360
	.align	3
.LC12:
	.word	-4191439
	.word	1731405415
	.align	3
.LC13:
	.word	1750603025
	.word	-1900787065
	.align	3
.LC14:
	.word	1694076839
	.word	-619958771
	.align	3
.LC15:
	.word	-1090891868
	.word	1203062813
	.section	.rodata.K,"a"
	.align	3
	.set	.LANCHOR0,. + 0
	.type	K, @object
	.size	K, 640
K:
	.word	-685199838
	.word	1116352408
	.word	602891725
	.word	1899447441
	.word	-330482897
	.word	-1245643825
	.word	-2121671748
	.word	-373957723
	.word	-213338824
	.word	961987163
	.word	-1241133031
	.word	1508970993
	.word	-1357295717
	.word	-1841331548
	.word	-630357736
	.word	-1424204075
	.word	-1560083902
	.word	-670586216
	.word	1164996542
	.word	310598401
	.word	1323610764
	.word	607225278
	.word	-704662302
	.word	1426881987
	.word	-226784913
	.word	1925078388
	.word	991336113
	.word	-2132889090
	.word	633803317
	.word	-1680079193
	.word	-815192428
	.word	-1046744716
	.word	-1628353838
	.word	-459576895
	.word	944711139
	.word	-272742522
	.word	-1953704523
	.word	264347078
	.word	2007800933
	.word	604807628
	.word	1495990901
	.word	770255983
	.word	1856431235
	.word	1249150122
	.word	-1119749164
	.word	1555081692
	.word	-2096016459
	.word	1996064986
	.word	-295247957
	.word	-1740746414
	.word	766784016
	.word	-1473132947
	.word	-1728372417
	.word	-1341970488
	.word	-1091629340
	.word	-1084653625
	.word	1034457026
	.word	-958395405
	.word	-1828018395
	.word	-710438585
	.word	-536640913
	.word	113926993
	.word	168717936
	.word	338241895
	.word	1188179964
	.word	666307205
	.word	1546045734
	.word	773529912
	.word	1522805485
	.word	1294757372
	.word	-1651133473
	.word	1396182291
	.word	-1951439906
	.word	1695183700
	.word	1014477480
	.word	1986661051
	.word	1206759142
	.word	-2117940946
	.word	344077627
	.word	-1838011259
	.word	1290863460
	.word	-1564481375
	.word	-1136513023
	.word	-1474664885
	.word	-789014639
	.word	-1035236496
	.word	106217008
	.word	-949202525
	.word	-688958952
	.word	-778901479
	.word	1432725776
	.word	-694614492
	.word	1467031594
	.word	-200395387
	.word	851169720
	.word	275423344
	.word	-1194143544
	.word	430227734
	.word	1363258195
	.word	506948616
	.word	-544281703
	.word	659060556
	.word	-509917016
	.word	883997877
	.word	-976659869
	.word	958139571
	.word	-482243893
	.word	1322822218
	.word	2003034995
	.word	1537002063
	.word	-692930397
	.word	1747873779
	.word	1575990012
	.word	1955562222
	.word	1125592928
	.word	2024104815
	.word	-1578062990
	.word	-2067236844
	.word	442776044
	.word	-1933114872
	.word	593698344
	.word	-1866530822
	.word	-561857047
	.word	-1538233109
	.word	-1295615723
	.word	-1090935817
	.word	-479046869
	.word	-965641998
	.word	-366583396
	.word	-903397682
	.word	566280711
	.word	-779700025
	.word	-840897762
	.word	-354779690
	.word	-294727304
	.word	-176337025
	.word	1914138554
	.word	116418474
	.word	-1563912026
	.word	174292421
	.word	-1090974290
	.word	289380356
	.word	320620315
	.word	460393269
	.word	587496836
	.word	685471733
	.word	1086792851
	.word	852142971
	.word	365543100
	.word	1017036298
	.word	-1676669620
	.word	1126000580
	.word	-885112138
	.word	1288033470
	.word	-60457430
	.word	1501505948
	.word	987167468
	.word	1607167915
	.word	1246189591
	.word	1816402316
	.text
.Letext0:
	.file 2 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h"
	.file 3 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.file 4 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/mbedtls_lts/mbedtls/include/mbedtls/sha512.h"
	.file 5 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h"
	.file 6 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/mbedtls_lts/mbedtls/include/mbedtls/platform_util.h"
	.file 7 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x8bc
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF43
	.byte	0xc
	.4byte	.LASF44
	.4byte	.LASF45
	.4byte	.Ldebug_ranges0+0
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
	.byte	0x37
	.byte	0x20
	.4byte	0x5b
	.byte	0x3
	.4byte	0x7c
	.byte	0x6
	.4byte	.LASF15
	.byte	0xd8
	.byte	0x4
	.byte	0x52
	.byte	0x10
	.4byte	0xcf
	.byte	0x7
	.4byte	.LASF11
	.byte	0x4
	.byte	0x54
	.byte	0xe
	.4byte	0xcf
	.byte	0
	.byte	0x7
	.4byte	.LASF12
	.byte	0x4
	.byte	0x55
	.byte	0xe
	.4byte	0xdf
	.byte	0x10
	.byte	0x7
	.4byte	.LASF13
	.byte	0x4
	.byte	0x56
	.byte	0x13
	.4byte	0xef
	.byte	0x50
	.byte	0x7
	.4byte	.LASF14
	.byte	0x4
	.byte	0x57
	.byte	0x9
	.4byte	0x62
	.byte	0xd0
	.byte	0
	.byte	0x8
	.4byte	0x7c
	.4byte	0xdf
	.byte	0x9
	.4byte	0x69
	.byte	0x1
	.byte	0
	.byte	0x8
	.4byte	0x7c
	.4byte	0xef
	.byte	0x9
	.4byte	0x69
	.byte	0x7
	.byte	0
	.byte	0x8
	.4byte	0x2c
	.4byte	0xff
	.byte	0x9
	.4byte	0x69
	.byte	0x7f
	.byte	0
	.byte	0x5
	.4byte	.LASF15
	.byte	0x4
	.byte	0x5a
	.byte	0x1
	.4byte	0x8d
	.byte	0x3
	.4byte	0xff
	.byte	0xa
	.byte	0x4
	.4byte	0x2c
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF16
	.byte	0x8
	.4byte	0x88
	.4byte	0x12d
	.byte	0x9
	.4byte	0x69
	.byte	0x4f
	.byte	0
	.byte	0x3
	.4byte	0x11d
	.byte	0xb
	.string	"K"
	.byte	0x1
	.byte	0xc6
	.byte	0x17
	.4byte	0x12d
	.byte	0x5
	.byte	0x3
	.4byte	K
	.byte	0xc
	.4byte	.LASF20
	.byte	0x1
	.2byte	0x201
	.byte	0x6
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x1
	.byte	0x9c
	.4byte	0x1c4
	.byte	0xd
	.4byte	.LASF17
	.byte	0x1
	.2byte	0x201
	.byte	0x2b
	.4byte	0x1c4
	.4byte	.LLST37
	.byte	0xd
	.4byte	.LASF18
	.byte	0x1
	.2byte	0x202
	.byte	0x1d
	.4byte	0x70
	.4byte	.LLST38
	.byte	0xd
	.4byte	.LASF19
	.byte	0x1
	.2byte	0x203
	.byte	0x24
	.4byte	0x110
	.4byte	.LLST39
	.byte	0xd
	.4byte	.LASF14
	.byte	0x1
	.2byte	0x204
	.byte	0x1a
	.4byte	0x62
	.4byte	.LLST40
	.byte	0xe
	.4byte	.LVL84
	.4byte	0x1ca
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0xf
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0xf
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x4
	.4byte	0x33
	.byte	0x10
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x1e3
	.byte	0x5
	.4byte	0x62
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x1
	.byte	0x9c
	.4byte	0x2d8
	.byte	0xd
	.4byte	.LASF17
	.byte	0x1
	.2byte	0x1e3
	.byte	0x2e
	.4byte	0x1c4
	.4byte	.LLST32
	.byte	0xd
	.4byte	.LASF18
	.byte	0x1
	.2byte	0x1e4
	.byte	0x1c
	.4byte	0x70
	.4byte	.LLST33
	.byte	0xd
	.4byte	.LASF19
	.byte	0x1
	.2byte	0x1e5
	.byte	0x23
	.4byte	0x110
	.4byte	.LLST34
	.byte	0xd
	.4byte	.LASF14
	.byte	0x1
	.2byte	0x1e6
	.byte	0x19
	.4byte	0x62
	.4byte	.LLST35
	.byte	0x11
	.string	"ret"
	.byte	0x1
	.2byte	0x1e8
	.byte	0x9
	.4byte	0x62
	.4byte	.LLST36
	.byte	0x12
	.string	"ctx"
	.byte	0x1
	.2byte	0x1e9
	.byte	0x1c
	.4byte	0xff
	.byte	0x3
	.byte	0x91
	.byte	0x88,0x7e
	.byte	0x13
	.4byte	.LASF46
	.byte	0x1
	.2byte	0x1fa
	.byte	0x1
	.4byte	.L49
	.byte	0x14
	.4byte	.LVL70
	.4byte	0x752
	.4byte	0x26d
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0x88,0x7e
	.byte	0
	.byte	0x14
	.4byte	.LVL71
	.4byte	0x680
	.4byte	0x28a
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0x88,0x7e
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x4
	.byte	0x91
	.byte	0xfc,0x7d
	.byte	0x6
	.byte	0
	.byte	0x14
	.4byte	.LVL73
	.4byte	0x468
	.4byte	0x2ab
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0x88,0x7e
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0xf
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0
	.byte	0x14
	.4byte	.LVL75
	.4byte	0x330
	.4byte	0x2c6
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0x88,0x7e
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x15
	.4byte	.LVL77
	.4byte	0x714
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0x88,0x7e
	.byte	0
	.byte	0
	.byte	0xc
	.4byte	.LASF21
	.byte	0x1
	.2byte	0x1d7
	.byte	0x6
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x1
	.byte	0x9c
	.4byte	0x32a
	.byte	0x16
	.string	"ctx"
	.byte	0x1
	.2byte	0x1d7
	.byte	0x35
	.4byte	0x32a
	.4byte	.LLST30
	.byte	0xd
	.4byte	.LASF19
	.byte	0x1
	.2byte	0x1d8
	.byte	0x2b
	.4byte	0x110
	.4byte	.LLST31
	.byte	0xe
	.4byte	.LVL67
	.4byte	0x330
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x4
	.4byte	0xff
	.byte	0x10
	.4byte	.LASF23
	.byte	0x1
	.2byte	0x195
	.byte	0x5
	.4byte	0x62
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x1
	.byte	0x9c
	.4byte	0x3fe
	.byte	0x16
	.string	"ctx"
	.byte	0x1
	.2byte	0x195
	.byte	0x38
	.4byte	0x32a
	.4byte	.LLST24
	.byte	0xd
	.4byte	.LASF19
	.byte	0x1
	.2byte	0x196
	.byte	0x2e
	.4byte	0x110
	.4byte	.LLST25
	.byte	0x11
	.string	"ret"
	.byte	0x1
	.2byte	0x198
	.byte	0x9
	.4byte	0x62
	.4byte	.LLST26
	.byte	0x17
	.4byte	.LASF24
	.byte	0x1
	.2byte	0x199
	.byte	0xe
	.4byte	0x69
	.4byte	.LLST27
	.byte	0x17
	.4byte	.LASF25
	.byte	0x1
	.2byte	0x19a
	.byte	0xe
	.4byte	0x7c
	.4byte	.LLST28
	.byte	0x11
	.string	"low"
	.byte	0x1
	.2byte	0x19a
	.byte	0x14
	.4byte	0x7c
	.4byte	.LLST29
	.byte	0x18
	.4byte	.LVL49
	.4byte	0x890
	.byte	0x14
	.4byte	.LVL58
	.4byte	0x51b
	.4byte	0x3d4
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x14
	.4byte	.LVL63
	.4byte	0x890
	.4byte	0x3e7
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x15
	.4byte	.LVL64
	.4byte	0x51b
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0
	.byte	0xc
	.4byte	.LASF26
	.byte	0x1
	.2byte	0x18a
	.byte	0x6
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0x468
	.byte	0x16
	.string	"ctx"
	.byte	0x1
	.2byte	0x18a
	.byte	0x35
	.4byte	0x32a
	.4byte	.LLST21
	.byte	0xd
	.4byte	.LASF17
	.byte	0x1
	.2byte	0x18b
	.byte	0x32
	.4byte	0x1c4
	.4byte	.LLST22
	.byte	0xd
	.4byte	.LASF18
	.byte	0x1
	.2byte	0x18c
	.byte	0x24
	.4byte	0x70
	.4byte	.LLST23
	.byte	0xe
	.4byte	.LVL43
	.4byte	0x468
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0xf
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0
	.byte	0
	.byte	0x19
	.4byte	.LASF47
	.byte	0x1
	.2byte	0x158
	.byte	0x5
	.4byte	0x62
	.byte	0x1
	.4byte	0x4c9
	.byte	0x1a
	.string	"ctx"
	.byte	0x1
	.2byte	0x158
	.byte	0x38
	.4byte	0x32a
	.byte	0x1b
	.4byte	.LASF17
	.byte	0x1
	.2byte	0x159
	.byte	0x35
	.4byte	0x1c4
	.byte	0x1b
	.4byte	.LASF18
	.byte	0x1
	.2byte	0x15a
	.byte	0x27
	.4byte	0x70
	.byte	0x1c
	.string	"ret"
	.byte	0x1
	.2byte	0x15c
	.byte	0x9
	.4byte	0x62
	.byte	0x1d
	.4byte	.LASF27
	.byte	0x1
	.2byte	0x15d
	.byte	0xc
	.4byte	0x70
	.byte	0x1d
	.4byte	.LASF28
	.byte	0x1
	.2byte	0x15e
	.byte	0x12
	.4byte	0x69
	.byte	0
	.byte	0xc
	.4byte	.LASF29
	.byte	0x1
	.2byte	0x14d
	.byte	0x6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.4byte	0x51b
	.byte	0x16
	.string	"ctx"
	.byte	0x1
	.2byte	0x14d
	.byte	0x36
	.4byte	0x32a
	.4byte	.LLST10
	.byte	0xd
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x14e
	.byte	0x32
	.4byte	0x1c4
	.4byte	.LLST11
	.byte	0xe
	.4byte	.LVL19
	.4byte	0x51b
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0
	.byte	0
	.byte	0x1e
	.4byte	.LASF31
	.byte	0x1
	.byte	0xf2
	.byte	0x5
	.4byte	0x62
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0x621
	.byte	0x1f
	.string	"ctx"
	.byte	0x1
	.byte	0xf2
	.byte	0x3e
	.4byte	0x32a
	.4byte	.LLST7
	.byte	0x20
	.4byte	.LASF30
	.byte	0x1
	.byte	0xf3
	.byte	0x3a
	.4byte	0x1c4
	.4byte	.LLST8
	.byte	0x21
	.string	"i"
	.byte	0x1
	.byte	0xf5
	.byte	0x9
	.4byte	0x62
	.4byte	.LLST9
	.byte	0x22
	.2byte	0x2d0
	.byte	0x1
	.byte	0xf6
	.byte	0x5
	.4byte	0x5f3
	.byte	0x7
	.4byte	.LASF32
	.byte	0x1
	.byte	0xf8
	.byte	0x12
	.4byte	0x7c
	.byte	0
	.byte	0x7
	.4byte	.LASF33
	.byte	0x1
	.byte	0xf8
	.byte	0x19
	.4byte	0x7c
	.byte	0x8
	.byte	0x23
	.string	"W"
	.byte	0x1
	.byte	0xf8
	.byte	0x20
	.4byte	0x621
	.byte	0x10
	.byte	0x24
	.string	"A"
	.byte	0x1
	.byte	0xf9
	.byte	0x12
	.4byte	0x7c
	.2byte	0x290
	.byte	0x24
	.string	"B"
	.byte	0x1
	.byte	0xf9
	.byte	0x15
	.4byte	0x7c
	.2byte	0x298
	.byte	0x24
	.string	"C"
	.byte	0x1
	.byte	0xf9
	.byte	0x18
	.4byte	0x7c
	.2byte	0x2a0
	.byte	0x24
	.string	"D"
	.byte	0x1
	.byte	0xf9
	.byte	0x1b
	.4byte	0x7c
	.2byte	0x2a8
	.byte	0x24
	.string	"E"
	.byte	0x1
	.byte	0xf9
	.byte	0x1e
	.4byte	0x7c
	.2byte	0x2b0
	.byte	0x24
	.string	"F"
	.byte	0x1
	.byte	0xf9
	.byte	0x21
	.4byte	0x7c
	.2byte	0x2b8
	.byte	0x24
	.string	"G"
	.byte	0x1
	.byte	0xf9
	.byte	0x24
	.4byte	0x7c
	.2byte	0x2c0
	.byte	0x24
	.string	"H"
	.byte	0x1
	.byte	0xf9
	.byte	0x27
	.4byte	0x7c
	.2byte	0x2c8
	.byte	0
	.byte	0x25
	.4byte	.LASF34
	.byte	0x1
	.byte	0xfa
	.byte	0x7
	.4byte	0x563
	.byte	0x3
	.byte	0x91
	.byte	0xf0,0x79
	.byte	0x15
	.4byte	.LVL17
	.4byte	0x89c
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x8
	.byte	0x91
	.byte	0xec,0x79
	.byte	0x6
	.byte	0xa
	.2byte	0x280
	.byte	0x1c
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xa
	.2byte	0x2d0
	.byte	0
	.byte	0
	.byte	0x8
	.4byte	0x7c
	.4byte	0x631
	.byte	0x9
	.4byte	0x69
	.byte	0x4f
	.byte	0
	.byte	0x26
	.4byte	.LASF35
	.byte	0x1
	.byte	0xba
	.byte	0x6
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0x680
	.byte	0x1f
	.string	"ctx"
	.byte	0x1
	.byte	0xba
	.byte	0x35
	.4byte	0x32a
	.4byte	.LLST5
	.byte	0x20
	.4byte	.LASF14
	.byte	0x1
	.byte	0xbb
	.byte	0x21
	.4byte	0x62
	.4byte	.LLST6
	.byte	0xe
	.4byte	.LVL10
	.4byte	0x680
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0
	.byte	0
	.byte	0x1e
	.4byte	.LASF36
	.byte	0x1
	.byte	0x93
	.byte	0x5
	.4byte	0x62
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0x6b9
	.byte	0x1f
	.string	"ctx"
	.byte	0x1
	.byte	0x93
	.byte	0x38
	.4byte	0x32a
	.4byte	.LLST4
	.byte	0x27
	.4byte	.LASF14
	.byte	0x1
	.byte	0x93
	.byte	0x41
	.4byte	0x62
	.byte	0x1
	.byte	0x5b
	.byte	0
	.byte	0x26
	.4byte	.LASF37
	.byte	0x1
	.byte	0x87
	.byte	0x6
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x1
	.byte	0x9c
	.4byte	0x70e
	.byte	0x1f
	.string	"dst"
	.byte	0x1
	.byte	0x87
	.byte	0x34
	.4byte	0x32a
	.4byte	.LLST2
	.byte	0x1f
	.string	"src"
	.byte	0x1
	.byte	0x88
	.byte	0x3a
	.4byte	0x70e
	.4byte	.LLST3
	.byte	0x15
	.4byte	.LVL5
	.4byte	0x8a8
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0xf
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0xd8
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x4
	.4byte	0x10b
	.byte	0x26
	.4byte	.LASF38
	.byte	0x1
	.byte	0x7f
	.byte	0x6
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x1
	.byte	0x9c
	.4byte	0x752
	.byte	0x1f
	.string	"ctx"
	.byte	0x1
	.byte	0x7f
	.byte	0x33
	.4byte	0x32a
	.4byte	.LLST1
	.byte	0xe
	.4byte	.LVL3
	.4byte	0x89c
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x8
	.byte	0xd8
	.byte	0
	.byte	0
	.byte	0x26
	.4byte	.LASF39
	.byte	0x1
	.byte	0x78
	.byte	0x6
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x1
	.byte	0x9c
	.4byte	0x795
	.byte	0x1f
	.string	"ctx"
	.byte	0x1
	.byte	0x78
	.byte	0x33
	.4byte	0x32a
	.4byte	.LLST0
	.byte	0xe
	.4byte	.LVL1
	.4byte	0x890
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0xf
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0xd8
	.byte	0
	.byte	0
	.byte	0x28
	.4byte	0x468
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0x890
	.byte	0x29
	.4byte	0x47a
	.4byte	.LLST12
	.byte	0x29
	.4byte	0x487
	.4byte	.LLST13
	.byte	0x29
	.4byte	0x494
	.4byte	.LLST14
	.byte	0x2a
	.4byte	0x4a1
	.byte	0x2a
	.4byte	0x4ae
	.byte	0x2a
	.4byte	0x4bb
	.byte	0x2b
	.4byte	0x468
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.byte	0x1
	.2byte	0x158
	.byte	0x5
	.byte	0x29
	.4byte	0x494
	.4byte	.LLST15
	.byte	0x29
	.4byte	0x487
	.4byte	.LLST16
	.byte	0x29
	.4byte	0x47a
	.4byte	.LLST17
	.byte	0x2c
	.4byte	0x4a1
	.4byte	.LLST18
	.byte	0x2c
	.4byte	0x4ae
	.4byte	.LLST19
	.byte	0x2c
	.4byte	0x4bb
	.4byte	.LLST20
	.byte	0x14
	.4byte	.LVL26
	.4byte	0x8b3
	.4byte	0x83c
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x85
	.byte	0
	.byte	0x83
	.byte	0
	.byte	0x22
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0xf
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0
	.byte	0x14
	.4byte	.LVL27
	.4byte	0x51b
	.4byte	0x856
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0
	.byte	0x14
	.4byte	.LVL35
	.4byte	0x51b
	.4byte	0x86a
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x15
	.4byte	.LVL39
	.4byte	0x8b3
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x7
	.byte	0x79
	.byte	0
	.byte	0x83
	.byte	0
	.byte	0x22
	.byte	0x23
	.byte	0x50
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x82
	.byte	0
	.byte	0x78
	.byte	0
	.byte	0x1c
	.byte	0xf
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x2d
	.4byte	.LASF40
	.4byte	.LASF40
	.byte	0x5
	.byte	0x21
	.byte	0x8
	.byte	0x2d
	.4byte	.LASF41
	.4byte	.LASF41
	.byte	0x6
	.byte	0xb8
	.byte	0x6
	.byte	0x2e
	.4byte	.LASF42
	.4byte	.LASF48
	.byte	0x7
	.byte	0
	.byte	0x2d
	.4byte	.LASF42
	.4byte	.LASF42
	.byte	0x5
	.byte	0x1f
	.byte	0x8
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
	.byte	0x7
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
	.byte	0x8
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x9
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
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
	.byte	0xc
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
	.byte	0xd
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
	.byte	0xe
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
	.byte	0xf
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x10
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
	.byte	0x11
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
	.byte	0x12
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
	.byte	0x13
	.byte	0xa
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x11
	.byte	0x1
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
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x16
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
	.byte	0x17
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
	.byte	0x1a
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
	.byte	0x1b
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
	.byte	0x1c
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
	.byte	0
	.byte	0
	.byte	0x1d
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
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x22
	.byte	0x13
	.byte	0x1
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
	.byte	0x23
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
	.byte	0x24
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
	.byte	0x5
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
	.byte	0x27
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
	.byte	0x28
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
	.byte	0x29
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x2a
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x2b
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
	.byte	0
	.byte	0
	.byte	0x2c
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
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
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x2e
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST37:
	.4byte	.LVL83
	.4byte	.LVL84-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL84-1
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL83
	.4byte	.LVL84-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL84-1
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL83
	.4byte	.LVL84-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL84-1
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL83
	.4byte	.LVL84-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL84-1
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL68
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL69
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL80
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL68
	.4byte	.LVL70-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL70-1
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL81
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL68
	.4byte	.LVL70-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL70-1
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL79
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL68
	.4byte	.LVL70-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL70-1
	.4byte	.LVL82
	.2byte	0x3
	.byte	0x91
	.byte	0xfc,0x7d
	.4byte	.LVL82
	.4byte	.LFE12
	.2byte	0x3
	.byte	0x72
	.byte	0xfc,0x7d
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL72
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL78
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL66
	.4byte	.LVL67-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL67-1
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL66
	.4byte	.LVL67-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL67-1
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL44
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL47
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL59
	.4byte	.LVL61
	.2byte	0x4
	.byte	0x82
	.byte	0xb0,0x7f
	.byte	0x9f
	.4byte	.LVL61
	.4byte	.LVL62
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL62
	.4byte	.LFE10
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL44
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL48
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL60
	.4byte	.LVL62
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL62
	.4byte	.LFE10
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL58
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL64
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL46
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL62
	.4byte	.LVL63-1
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL50
	.4byte	.LVL51
	.2byte	0x6
	.byte	0x5e
	.byte	0x93
	.byte	0x4
	.byte	0x5c
	.byte	0x93
	.byte	0x4
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL54
	.4byte	.LVL55
	.2byte	0x6
	.byte	0x5a
	.byte	0x93
	.byte	0x4
	.byte	0x5f
	.byte	0x93
	.byte	0x4
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL42
	.4byte	.LVL43-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL43-1
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL42
	.4byte	.LVL43-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL43-1
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL42
	.4byte	.LVL43-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL43-1
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL18
	.4byte	.LVL19-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL19-1
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL18
	.4byte	.LVL19-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL19-1
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL11
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL16
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x4
	.byte	0x80
	.byte	0x80,0x7f
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL9
	.4byte	.LVL10-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL10-1
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL9
	.4byte	.LVL10-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL10-1
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL4
	.4byte	.LVL5-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL5-1
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL4
	.4byte	.LVL5-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL5-1
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL2
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL3-1
	.4byte	.LVL3
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LFE2
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1-1
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL24
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL41
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL20
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL25
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL31
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL20
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL24
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x4
	.byte	0x78
	.byte	0x80,0x1
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL24
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x4
	.byte	0x78
	.byte	0x80,0x1
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL38
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL23
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL25
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL28
	.4byte	.LVL31
	.2byte	0x6
	.byte	0x82
	.byte	0
	.byte	0x84
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL34
	.4byte	.LVL35-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL35-1
	.4byte	.LVL36
	.2byte	0x6
	.byte	0x82
	.byte	0
	.byte	0x78
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL38
	.4byte	.LVL39-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL39-1
	.4byte	.LVL40
	.2byte	0x6
	.byte	0x82
	.byte	0
	.byte	0x78
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL23
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL27
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL35
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL23
	.4byte	.LVL32
	.2byte	0x6
	.byte	0x8
	.byte	0x80
	.byte	0x83
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL23
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL38
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x63
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
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
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
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LFB3
	.4byte	.LFE3
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF9:
	.string	"size_t"
.LASF14:
	.string	"is384"
.LASF10:
	.string	"uint64_t"
.LASF26:
	.string	"mbedtls_sha512_update"
.LASF7:
	.string	"long long unsigned int"
.LASF23:
	.string	"mbedtls_sha512_finish_ret"
.LASF6:
	.string	"long long int"
.LASF0:
	.string	"signed char"
.LASF31:
	.string	"mbedtls_internal_sha512_process"
.LASF45:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/mbedtls_lts"
.LASF34:
	.string	"local"
.LASF12:
	.string	"state"
.LASF4:
	.string	"long int"
.LASF42:
	.string	"memcpy"
.LASF8:
	.string	"unsigned int"
.LASF35:
	.string	"mbedtls_sha512_starts"
.LASF5:
	.string	"long unsigned int"
.LASF29:
	.string	"mbedtls_sha512_process"
.LASF30:
	.string	"data"
.LASF3:
	.string	"short unsigned int"
.LASF39:
	.string	"mbedtls_sha512_init"
.LASF22:
	.string	"mbedtls_sha512_ret"
.LASF43:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
.LASF38:
	.string	"mbedtls_sha512_free"
.LASF11:
	.string	"total"
.LASF37:
	.string	"mbedtls_sha512_clone"
.LASF47:
	.string	"mbedtls_sha512_update_ret"
.LASF19:
	.string	"output"
.LASF24:
	.string	"used"
.LASF20:
	.string	"mbedtls_sha512"
.LASF44:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/mbedtls_lts/mbedtls/library/sha512.c"
.LASF1:
	.string	"unsigned char"
.LASF2:
	.string	"short int"
.LASF21:
	.string	"mbedtls_sha512_finish"
.LASF33:
	.string	"temp2"
.LASF27:
	.string	"fill"
.LASF46:
	.string	"exit"
.LASF17:
	.string	"input"
.LASF48:
	.string	"__builtin_memcpy"
.LASF32:
	.string	"temp1"
.LASF16:
	.string	"char"
.LASF41:
	.string	"mbedtls_platform_zeroize"
.LASF13:
	.string	"buffer"
.LASF25:
	.string	"high"
.LASF36:
	.string	"mbedtls_sha512_starts_ret"
.LASF15:
	.string	"mbedtls_sha512_context"
.LASF40:
	.string	"memset"
.LASF18:
	.string	"ilen"
.LASF28:
	.string	"left"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
