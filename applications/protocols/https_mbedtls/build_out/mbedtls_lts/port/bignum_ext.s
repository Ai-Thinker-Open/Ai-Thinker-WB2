	.file	"bignum_ext.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.rodata.dump_mpi.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"%s: "
	.align	2
.LC1:
	.string	"<null>"
	.align	2
.LC2:
	.string	"\r\n"
	.section	.text.dump_mpi,"ax",@progbits
	.align	1
	.globl	dump_mpi
	.type	dump_mpi, @function
dump_mpi:
.LFB4:
	.file 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/mbedtls_lts/port/bignum_ext.c"
	.loc 1 7 1
	.cfi_startproc
.LVL0:
	.loc 1 8 5
	.loc 1 9 5
	.loc 1 7 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s2,16(sp)
	.cfi_offset 18, -16
	mv	s2,a0
	.loc 1 9 25
	li	a0,4096
.LVL1:
	addi	a0,a0,1
	.loc 1 7 1
	sw	s1,20(sp)
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 9, -12
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.loc 1 7 1
	mv	s1,a1
	.loc 1 9 25
	call	pvPortMalloc
.LVL2:
	.loc 1 10 5 is_stmt 1
	.loc 1 10 8 is_stmt 0
	beq	a0,zero,.L1
	mv	s0,a0
	.loc 1 12 5 is_stmt 1
	.loc 1 13 5
	.loc 1 13 8 is_stmt 0
	beq	s2,zero,.L4
	.loc 1 14 9 is_stmt 1
	lui	a0,%hi(.LC0)
.LVL3:
	mv	a1,s2
	addi	a0,a0,%lo(.LC0)
	call	printf
.LVL4:
.L4:
	.loc 1 15 5
	.loc 1 15 8 is_stmt 0
	beq	s1,zero,.L5
	.loc 1 16 9 is_stmt 1
	li	a3,4096
	addi	a4,sp,12
	addi	a3,a3,1
	mv	a2,s0
	li	a1,16
	mv	a0,s1
	call	mbedtls_mpi_write_string
.LVL5:
.L6:
	.loc 1 20 5
	mv	a0,s0
	call	puts
.LVL6:
	.loc 1 21 5
	lui	a0,%hi(.LC2)
	addi	a0,a0,%lo(.LC2)
	call	puts
.LVL7:
	.loc 1 22 5
	mv	a0,s0
	call	vPortFree
.LVL8:
.L1:
	.loc 1 23 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	lw	s1,20(sp)
	.cfi_restore 9
.LVL9:
	lw	s2,16(sp)
	.cfi_restore 18
.LVL10:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL11:
.L5:
	.cfi_restore_state
	.loc 1 18 9 is_stmt 1
	lui	a1,%hi(.LC1)
	addi	a1,a1,%lo(.LC1)
	mv	a0,s0
	call	strcpy
.LVL12:
	j	.L6
	.cfi_endproc
.LFE4:
	.size	dump_mpi, .-dump_mpi
	.section	.text.mpi_words,"ax",@progbits
	.align	1
	.globl	mpi_words
	.type	mpi_words, @function
mpi_words:
.LFB5:
	.loc 1 26 1
	.cfi_startproc
.LVL13:
	.loc 1 27 5
.LBB2:
	.loc 1 27 10
.LBE2:
	.loc 1 26 1 is_stmt 0
	mv	a5,a0
.LBB3:
	.loc 1 27 17
	lw	a0,4(a0)
.LVL14:
.L12:
	.loc 1 27 29 is_stmt 1 discriminator 1
	.loc 1 27 5 is_stmt 0 discriminator 1
	bne	a0,zero,.L14
.L11:
.LBE3:
	.loc 1 33 1
	ret
.L14:
.LBB4:
	.loc 1 28 9 is_stmt 1
	.loc 1 28 19 is_stmt 0
	lw	a4,8(a5)
	slli	a3,a0,2
	add	a4,a4,a3
	.loc 1 28 12
	lw	a4,-4(a4)
	bne	a4,zero,.L11
	.loc 1 27 36 is_stmt 1 discriminator 2
	.loc 1 27 37 is_stmt 0 discriminator 2
	addi	a0,a0,-1
.LVL15:
	j	.L12
.LBE4:
	.cfi_endproc
.LFE5:
	.size	mpi_words, .-mpi_words
	.section	.text.mpi_clear_upper_bits,"ax",@progbits
	.align	1
	.globl	mpi_clear_upper_bits
	.type	mpi_clear_upper_bits, @function
mpi_clear_upper_bits:
.LFB6:
	.loc 1 37 1 is_stmt 1
	.cfi_startproc
.LVL16:
	.loc 1 38 5
	.loc 1 40 5
	.loc 1 37 1 is_stmt 0
	mv	a4,a0
	.loc 1 40 8
	beq	a0,zero,.L19
	.loc 1 42 5 is_stmt 1
	.loc 1 42 47 is_stmt 0
	addi	a5,a1,31
	.loc 1 42 12
	srli	a5,a5,5
.LVL17:
	.loc 1 44 5 is_stmt 1
.LBB5:
	.loc 1 44 10
	.loc 1 44 17 is_stmt 0
	mv	a3,a5
.LVL18:
.L17:
	.loc 1 44 38 is_stmt 1 discriminator 1
	.loc 1 44 43 is_stmt 0 discriminator 1
	lw	a2,4(a4)
	.loc 1 44 5 discriminator 1
	bgtu	a2,a3,.L18
.LBE5:
	.loc 1 47 5 is_stmt 1
	.loc 1 47 12 is_stmt 0
	andi	a1,a1,31
.LVL19:
	.loc 1 48 5 is_stmt 1
	.loc 1 55 12 is_stmt 0
	li	a0,0
	.loc 1 48 8
	beq	a1,zero,.L15
	.loc 1 48 39 discriminator 1
	addi	a3,a5,-1
.LVL20:
	.loc 1 48 20 discriminator 1
	bleu	a2,a3,.L15
.LBB6:
	.loc 1 49 9 is_stmt 1
.LVL21:
	.loc 1 50 9
	.loc 1 51 9
	.loc 1 52 9
	.loc 1 52 35 is_stmt 0
	lw	a4,8(a4)
.LVL22:
	slli	a5,a5,2
.LVL23:
	addi	a5,a5,-4
	add	a5,a4,a5
	li	a4,-1
	sll	a1,a4,a1
.LVL24:
	lw	a4,0(a5)
	not	a1,a1
	and	a1,a4,a1
	sw	a1,0(a5)
	ret
.LVL25:
.L18:
.LBE6:
.LBB7:
	.loc 1 45 9 is_stmt 1 discriminator 3
	.loc 1 45 17 is_stmt 0 discriminator 3
	lw	a2,8(a4)
	slli	a0,a3,2
	.loc 1 44 48 discriminator 3
	addi	a3,a3,1
.LVL26:
	.loc 1 45 17 discriminator 3
	add	a2,a2,a0
	sw	zero,0(a2)
	.loc 1 44 48 is_stmt 1 discriminator 3
.LVL27:
	j	.L17
.LVL28:
.L19:
.LBE7:
	.loc 1 41 16 is_stmt 0
	li	a0,-1
.LVL29:
.L15:
	.loc 1 56 1
	ret
	.cfi_endproc
.LFE6:
	.size	mpi_clear_upper_bits, .-mpi_clear_upper_bits
	.section	.text.mpi_mod_2n,"ax",@progbits
	.align	1
	.globl	mpi_mod_2n
	.type	mpi_mod_2n, @function
mpi_mod_2n:
.LFB7:
	.loc 1 59 1 is_stmt 1
	.cfi_startproc
.LVL30:
	.loc 1 60 5
	.loc 1 61 5
	.loc 1 62 5
	.loc 1 59 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	ra,28(sp)
	sw	s1,20(sp)
	sw	s2,16(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.loc 1 63 16
	li	s0,-1
	.loc 1 62 8
	beq	a0,zero,.L23
	mv	s1,a0
	mv	s2,a1
	.loc 1 65 5 is_stmt 1
	call	mpi_clear_upper_bits
.LVL31:
	.loc 1 66 5
	addi	a0,sp,4
	call	mbedtls_mpi_init
.LVL32:
	.loc 1 67 5
	.loc 1 67 8 is_stmt 0
	lw	a5,0(s1)
	.loc 1 60 9
	li	s0,0
	.loc 1 67 8
	bge	a5,zero,.L25
	.loc 1 68 9 is_stmt 1
	.loc 1 68 14
	.loc 1 68 27 is_stmt 0
	li	a2,1
	mv	a1,s2
	addi	a0,sp,4
	call	mbedtls_mpi_set_bit
.LVL33:
	mv	s0,a0
.LVL34:
	.loc 1 68 16
	bne	a0,zero,.L25
	.loc 1 68 88 is_stmt 1 discriminator 2
	.loc 1 69 9 discriminator 2
	.loc 1 69 14 discriminator 2
	.loc 1 69 27 is_stmt 0 discriminator 2
	addi	a2,sp,4
	mv	a1,s1
	mv	a0,s1
	call	mbedtls_mpi_add_mpi
.LVL35:
	mv	s0,a0
.LVL36:
	.loc 1 69 16 discriminator 2
	bne	a0,zero,.L25
	.loc 1 69 88 is_stmt 1 discriminator 2
	.loc 1 70 9 discriminator 2
	.loc 1 70 14 discriminator 2
	.loc 1 70 27 is_stmt 0 discriminator 2
	li	a2,0
	mv	a1,s2
	mv	a0,s1
	call	mbedtls_mpi_set_bit
.LVL37:
	mv	s0,a0
.LVL38:
.L25:
	.loc 1 70 87 is_stmt 1 discriminator 3
	.loc 1 73 5 discriminator 3
	addi	a0,sp,4
	call	mbedtls_mpi_free
.LVL39:
	.loc 1 74 5 discriminator 3
.L23:
	.loc 1 75 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_restore 1
	mv	a0,s0
	lw	s0,24(sp)
	.cfi_restore 8
	lw	s1,20(sp)
	.cfi_restore 9
	lw	s2,16(sp)
	.cfi_restore 18
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE7:
	.size	mpi_mod_2n, .-mpi_mod_2n
	.section	.text.mpi_hensel_quad_mod_inv_prime_n,"ax",@progbits
	.align	1
	.globl	mpi_hensel_quad_mod_inv_prime_n
	.type	mpi_hensel_quad_mod_inv_prime_n, @function
mpi_hensel_quad_mod_inv_prime_n:
.LFB8:
	.loc 1 78 1 is_stmt 1
	.cfi_startproc
.LVL40:
	.loc 1 79 5
	.loc 1 80 5
	.loc 1 80 8 is_stmt 0
	beq	a0,zero,.L35
	.loc 1 78 1 discriminator 1
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	s0,56(sp)
	sw	s2,48(sp)
	sw	ra,60(sp)
	sw	s1,52(sp)
	sw	s3,44(sp)
	.cfi_offset 8, -8
	.cfi_offset 18, -16
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	.cfi_offset 19, -20
	mv	s0,a0
	mv	s2,a1
	.loc 1 81 16 discriminator 1
	li	a0,-1
.LVL41:
	.loc 1 80 13 discriminator 1
	beq	a1,zero,.L29
	mv	s1,a2
	.loc 1 80 9 discriminator 2
	beq	a2,zero,.L29
	.loc 1 83 5 is_stmt 1
	.loc 1 83 14 is_stmt 0
	lw	a5,8(a1)
	.loc 1 83 18
	lw	a5,0(a5)
	andi	a5,a5,1
	.loc 1 83 8
	beq	a5,zero,.L29
	.loc 1 86 5 is_stmt 1
	.loc 1 87 5
	addi	a0,sp,8
	call	mbedtls_mpi_init
.LVL42:
	.loc 1 89 5
	.loc 1 89 10
	.loc 1 89 23 is_stmt 0
	li	a1,1
	mv	a0,s0
	call	mbedtls_mpi_lset
.LVL43:
.LBB8:
	.loc 1 90 17
	li	s3,2
.LBE8:
	.loc 1 89 12
	beq	a0,zero,.L31
.LVL44:
.L32:
	.loc 1 112 71 is_stmt 1 discriminator 3
	.loc 1 115 5 discriminator 3
	addi	a0,sp,8
	call	mbedtls_mpi_free
.LVL45:
	.loc 1 117 5 discriminator 3
	.loc 1 117 12 is_stmt 0 discriminator 3
	li	a0,0
.LVL46:
.L29:
	.loc 1 118 1
	lw	ra,60(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
.LVL47:
	lw	s1,52(sp)
	.cfi_restore 9
	lw	s2,48(sp)
	.cfi_restore 18
.LVL48:
	lw	s3,44(sp)
	.cfi_restore 19
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
.LVL49:
.L34:
	.cfi_restore_state
.LBB9:
	.loc 1 91 9 is_stmt 1
	.loc 1 91 14
	.loc 1 91 27 is_stmt 0
	call	mbedtls_mpi_mul_mpi
.LVL50:
	.loc 1 91 16
	bne	a0,zero,.L32
	.loc 1 91 90 is_stmt 1 discriminator 2
	.loc 1 92 9 discriminator 2
	.loc 1 92 14 discriminator 2
	.loc 1 92 27 is_stmt 0 discriminator 2
	mv	a1,s3
	addi	a0,sp,8
.LVL51:
	call	mpi_mod_2n
.LVL52:
	.loc 1 92 16 discriminator 2
	bne	a0,zero,.L32
	.loc 1 92 78 is_stmt 1 discriminator 2
	.loc 1 93 9 discriminator 2
	.loc 1 93 14 discriminator 2
	.loc 1 93 27 is_stmt 0 discriminator 2
	addi	a1,sp,8
	mv	a2,s2
	mv	a0,a1
.LVL53:
	call	mbedtls_mpi_mul_mpi
.LVL54:
	.loc 1 93 16 discriminator 2
	bne	a0,zero,.L32
	.loc 1 93 93 is_stmt 1 discriminator 2
	.loc 1 94 9 discriminator 2
	.loc 1 94 14 discriminator 2
	.loc 1 94 27 is_stmt 0 discriminator 2
	mv	a1,s3
	addi	a0,sp,8
.LVL55:
	call	mpi_mod_2n
.LVL56:
	.loc 1 94 16 discriminator 2
	bne	a0,zero,.L32
	.loc 1 94 78 is_stmt 1 discriminator 2
	.loc 1 95 9 discriminator 2
	.loc 1 95 14 discriminator 2
	.loc 1 95 27 is_stmt 0 discriminator 2
	li	a1,1
	mv	a0,s0
.LVL57:
	call	mbedtls_mpi_shift_l
.LVL58:
	.loc 1 95 16 discriminator 2
	bne	a0,zero,.L32
	.loc 1 95 84 is_stmt 1 discriminator 2
	.loc 1 96 9 discriminator 2
	.loc 1 96 14 discriminator 2
	.loc 1 96 27 is_stmt 0 discriminator 2
	addi	a2,sp,8
	mv	a1,s0
	mv	a0,s0
.LVL59:
	call	mbedtls_mpi_sub_mpi
.LVL60:
	.loc 1 96 16 discriminator 2
	bne	a0,zero,.L32
	.loc 1 96 90 is_stmt 1 discriminator 2
	.loc 1 90 31 discriminator 2
	.loc 1 90 33 is_stmt 0 discriminator 2
	slli	s3,s3,1
.LVL61:
.L31:
	.loc 1 90 24 is_stmt 1 discriminator 2
	.loc 1 91 27 is_stmt 0 discriminator 2
	mv	a2,s0
	mv	a1,s0
	addi	a0,sp,8
.LVL62:
	.loc 1 90 5 discriminator 2
	bltu	s3,s1,.L34
.LBE9:
	.loc 1 98 5 is_stmt 1
	.loc 1 98 10
	.loc 1 98 23 is_stmt 0
	call	mbedtls_mpi_mul_mpi
.LVL63:
	.loc 1 98 12
	bne	a0,zero,.L32
	.loc 1 98 86 is_stmt 1 discriminator 2
	.loc 1 99 5 discriminator 2
	.loc 1 99 10 discriminator 2
	.loc 1 99 23 is_stmt 0 discriminator 2
	mv	a1,s1
	addi	a0,sp,8
.LVL64:
	call	mpi_mod_2n
.LVL65:
	.loc 1 99 12 discriminator 2
	bne	a0,zero,.L32
	.loc 1 99 74 is_stmt 1 discriminator 2
	.loc 1 100 5 discriminator 2
	.loc 1 100 10 discriminator 2
	.loc 1 100 23 is_stmt 0 discriminator 2
	addi	a1,sp,8
	mv	a2,s2
	mv	a0,a1
.LVL66:
	call	mbedtls_mpi_mul_mpi
.LVL67:
	.loc 1 100 12 discriminator 2
	bne	a0,zero,.L32
	.loc 1 100 89 is_stmt 1 discriminator 2
	.loc 1 101 5 discriminator 2
	.loc 1 101 10 discriminator 2
	.loc 1 101 23 is_stmt 0 discriminator 2
	mv	a1,s1
	addi	a0,sp,8
.LVL68:
	call	mpi_mod_2n
.LVL69:
	.loc 1 101 12 discriminator 2
	bne	a0,zero,.L32
	.loc 1 101 74 is_stmt 1 discriminator 2
	.loc 1 102 5 discriminator 2
	.loc 1 102 10 discriminator 2
	.loc 1 102 23 is_stmt 0 discriminator 2
	li	a1,1
	mv	a0,s0
.LVL70:
	call	mbedtls_mpi_shift_l
.LVL71:
	.loc 1 102 12 discriminator 2
	bne	a0,zero,.L32
	.loc 1 102 80 is_stmt 1 discriminator 2
	.loc 1 103 5 discriminator 2
	.loc 1 103 10 discriminator 2
	.loc 1 103 23 is_stmt 0 discriminator 2
	addi	a2,sp,8
	mv	a1,s0
	mv	a0,s0
.LVL72:
	call	mbedtls_mpi_sub_mpi
.LVL73:
	.loc 1 103 12 discriminator 2
	bne	a0,zero,.L32
	.loc 1 103 86 is_stmt 1 discriminator 2
	.loc 1 104 5 discriminator 2
	.loc 1 104 10 discriminator 2
	.loc 1 104 23 is_stmt 0 discriminator 2
	mv	a1,s1
	mv	a0,s0
.LVL74:
	call	mpi_mod_2n
.LVL75:
	.loc 1 104 12 discriminator 2
	bne	a0,zero,.L32
	.loc 1 104 71 is_stmt 1 discriminator 2
	.loc 1 106 5 discriminator 2
	.loc 1 107 5 discriminator 2
	.loc 1 108 12 is_stmt 0 discriminator 2
	li	a5,1
	sw	a5,20(sp)
	.loc 1 109 12 discriminator 2
	sw	a5,24(sp)
	.loc 1 111 23 discriminator 2
	mv	a2,s0
	.loc 1 110 12 discriminator 2
	addi	a5,sp,4
	.loc 1 111 23 discriminator 2
	addi	a1,sp,20
	mv	a0,s0
.LVL76:
	.loc 1 107 22 discriminator 2
	sw	zero,4(sp)
	.loc 1 108 5 is_stmt 1 discriminator 2
	.loc 1 109 5 discriminator 2
	.loc 1 110 5 discriminator 2
	.loc 1 110 12 is_stmt 0 discriminator 2
	sw	a5,28(sp)
	.loc 1 111 5 is_stmt 1 discriminator 2
	.loc 1 111 10 discriminator 2
	.loc 1 111 23 is_stmt 0 discriminator 2
	call	mbedtls_mpi_sub_mpi
.LVL77:
	.loc 1 111 12 discriminator 2
	bne	a0,zero,.L32
	.loc 1 111 87 is_stmt 1 discriminator 2
	.loc 1 112 5 discriminator 2
	.loc 1 112 10 discriminator 2
	.loc 1 112 23 is_stmt 0 discriminator 2
	mv	a1,s1
	mv	a0,s0
.LVL78:
	call	mpi_mod_2n
.LVL79:
	.loc 1 114 1 discriminator 2
	j	.L32
.LVL80:
.L35:
	.cfi_def_cfa_offset 0
	.cfi_restore 1
	.cfi_restore 8
	.cfi_restore 9
	.cfi_restore 18
	.cfi_restore 19
	.loc 1 81 16
	li	a0,-1
.LVL81:
	.loc 1 118 1
	ret
	.cfi_endproc
.LFE8:
	.size	mpi_hensel_quad_mod_inv_prime_n, .-mpi_hensel_quad_mod_inv_prime_n
	.section	.text.mpi_scalar_encode,"ax",@progbits
	.align	1
	.globl	mpi_scalar_encode
	.type	mpi_scalar_encode, @function
mpi_scalar_encode:
.LFB9:
	.loc 1 123 1 is_stmt 1
	.cfi_startproc
.LVL82:
	.loc 1 124 5
	.loc 1 124 8 is_stmt 0
	beq	a0,zero,.L56
	.loc 1 123 1 discriminator 1
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s3,12(sp)
	sw	s4,8(sp)
	sw	ra,28(sp)
	sw	s0,24(sp)
	sw	s1,20(sp)
	sw	s2,16(sp)
	sw	s5,4(sp)
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 21, -28
	mv	s4,a0
	mv	s3,a1
	.loc 1 125 16 discriminator 1
	li	a0,-1
.LVL83:
	.loc 1 124 18 discriminator 1
	beq	a1,zero,.L46
	mv	s0,a3
	.loc 1 124 32 discriminator 2
	beq	a3,zero,.L46
	mv	s2,a4
	.loc 1 124 9 discriminator 3
	beq	a4,zero,.L46
	.loc 1 126 9
	addi	a5,a2,-2
	.loc 1 126 8
	li	a4,6
.LVL84:
	mv	s1,a2
	.loc 1 126 5 is_stmt 1
	.loc 1 126 8 is_stmt 0
	bgtu	a5,a4,.L46
	.loc 1 129 5 is_stmt 1
	.loc 1 129 18 is_stmt 0
	slli	s5,a1,5
.LVL85:
	.loc 1 130 5 is_stmt 1
	addi	a2,s5,1
.LVL86:
	li	a1,0
.LVL87:
	mv	a0,a3
	call	memset
.LVL88:
	.loc 1 131 5
	.loc 1 131 30 is_stmt 0
	li	a4,1
	sll	a4,a4,s1
.LVL89:
	.loc 1 132 5 is_stmt 1
.LBB10:
	.loc 1 141 26 is_stmt 0
	li	t1,32
.LBE10:
	.loc 1 132 20
	addi	t4,a4,-1
.LVL90:
	.loc 1 134 5 is_stmt 1
	.loc 1 135 5
	.loc 1 136 5
	.loc 1 137 5
.LBB11:
	.loc 1 156 28 is_stmt 0
	srli	t3,a4,1
.LBE11:
	.loc 1 136 14
	li	a7,0
	.loc 1 135 12
	li	a6,0
	.loc 1 134 12
	li	a2,0
.LBB12:
	.loc 1 141 26
	sub	t5,t1,s1
.LVL91:
.L48:
.LBE12:
	.loc 1 137 11 is_stmt 1
	bltu	a6,s5,.L53
	.loc 1 166 5
	.loc 1 166 8 is_stmt 0
	beq	a7,zero,.L54
	.loc 1 167 9 is_stmt 1
	.loc 1 167 21 is_stmt 0
	add	s0,s0,a6
.LVL92:
	li	a5,1
	sb	a5,0(s0)
	.loc 1 168 9 is_stmt 1
	.loc 1 168 20 is_stmt 0
	addi	a2,a6,1
.LVL93:
.L54:
	.loc 1 170 5 is_stmt 1
	.loc 1 170 8 is_stmt 0
	beq	a2,zero,.L55
	.loc 1 171 9 is_stmt 1
	.loc 1 171 18 is_stmt 0
	sw	a2,0(s2)
.L71:
	.loc 1 174 12
	li	a0,0
.LVL94:
.L46:
	.loc 1 175 1
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	lw	s1,20(sp)
	.cfi_restore 9
	lw	s2,16(sp)
	.cfi_restore 18
	lw	s3,12(sp)
	.cfi_restore 19
.LVL95:
	lw	s4,8(sp)
	.cfi_restore 20
.LVL96:
	lw	s5,4(sp)
	.cfi_restore 21
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL97:
.L53:
	.cfi_restore_state
.LBB13:
	.loc 1 138 9 is_stmt 1
	.loc 1 138 16 is_stmt 0
	srli	a0,a6,5
.LVL98:
	.loc 1 139 9 is_stmt 1
	.loc 1 142 29 is_stmt 0
	slli	a1,a0,2
	add	a1,s4,a1
	.loc 1 142 21
	lw	a5,0(a1)
	.loc 1 139 16
	andi	a3,a6,31
.LVL99:
	.loc 1 140 9 is_stmt 1
	.loc 1 141 9
	.loc 1 142 21 is_stmt 0
	srl	a5,a5,a3
	.loc 1 141 12
	bgtu	t5,a3,.L49
	.loc 1 144 13 is_stmt 1
	.loc 1 144 25 is_stmt 0
	addi	a0,a0,1
.LVL100:
	.loc 1 144 16
	bgeu	a0,s3,.L49
	.loc 1 145 17 is_stmt 1
	.loc 1 145 79 is_stmt 0
	lw	a1,4(a1)
	.loc 1 145 86
	sub	a3,t1,a3
.LVL101:
	.loc 1 145 79
	sll	a3,a1,a3
	.loc 1 145 25
	or	a5,a5,a3
.LVL102:
.L49:
	.loc 1 150 9 is_stmt 1
	.loc 1 150 50 is_stmt 0
	and	a5,a5,t4
.LVL103:
	.loc 1 150 24
	add	a5,a5,a7
.LVL104:
	.loc 1 151 9 is_stmt 1
	.loc 1 151 21 is_stmt 0
	andi	a1,a5,1
	.loc 1 152 17
	addi	a3,a6,1
	.loc 1 151 12
	beq	a1,zero,.L50
	.loc 1 155 9 is_stmt 1
.LVL105:
	.loc 1 156 9
	.loc 1 158 19 is_stmt 0
	add	a2,s0,a6
	.loc 1 156 12
	bleu	t3,a5,.L51
	.loc 1 157 13 is_stmt 1
.LVL106:
	.loc 1 158 13
	.loc 1 158 25 is_stmt 0
	sb	a5,0(a2)
	.loc 1 157 19
	li	a1,0
.LVL107:
.L52:
	.loc 1 164 9 is_stmt 1
	.loc 1 155 20 is_stmt 0
	mv	a2,a3
	.loc 1 164 13
	mv	a7,a1
	add	a3,s1,a6
.LVL108:
.L50:
	mv	a6,a3
	j	.L48
.LVL109:
.L51:
	.loc 1 160 13 is_stmt 1
	.loc 1 161 13
	.loc 1 161 34 is_stmt 0
	sub	a5,a5,a4
.LVL110:
	.loc 1 161 25
	sb	a5,0(a2)
	j	.L52
.LVL111:
.L55:
.LBE13:
	.loc 1 173 9 is_stmt 1
	.loc 1 173 18 is_stmt 0
	li	a5,1
	sw	a5,0(s2)
	j	.L71
.LVL112:
.L56:
	.cfi_def_cfa_offset 0
	.cfi_restore 1
	.cfi_restore 8
	.cfi_restore 9
	.cfi_restore 18
	.cfi_restore 19
	.cfi_restore 20
	.cfi_restore 21
	.loc 1 125 16
	li	a0,-1
.LVL113:
	.loc 1 175 1
	ret
	.cfi_endproc
.LFE9:
	.size	mpi_scalar_encode, .-mpi_scalar_encode
	.text
.Letext0:
	.file 2 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h"
	.file 3 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.file 4 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/mbedtls_lts/mbedtls/include/mbedtls/bignum.h"
	.file 5 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h"
	.file 6 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/portable.h"
	.file 7 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x866
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF56
	.byte	0xc
	.4byte	.LASF57
	.4byte	.LASF58
	.4byte	.Ldebug_ranges0+0x78
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
	.byte	0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.byte	0x4
	.4byte	.LASF9
	.byte	0x2
	.byte	0xd1
	.byte	0x16
	.4byte	0x64
	.byte	0x5
	.4byte	0x6b
	.byte	0x4
	.4byte	.LASF10
	.byte	0x3
	.byte	0x22
	.byte	0x15
	.4byte	0x25
	.byte	0x4
	.4byte	.LASF11
	.byte	0x3
	.byte	0x34
	.byte	0x1b
	.4byte	0x48
	.byte	0x5
	.4byte	0x88
	.byte	0x6
	.byte	0x4
	.4byte	0x9f
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.byte	0x5
	.4byte	0x9f
	.byte	0x6
	.byte	0x4
	.4byte	0xa6
	.byte	0x4
	.4byte	.LASF13
	.byte	0x4
	.byte	0xb2
	.byte	0x16
	.4byte	0x88
	.byte	0x7
	.4byte	.LASF14
	.byte	0xc
	.byte	0x4
	.byte	0xc0
	.byte	0x10
	.4byte	0xec
	.byte	0x8
	.string	"s"
	.byte	0x4
	.byte	0xc2
	.byte	0x9
	.4byte	0x5d
	.byte	0
	.byte	0x8
	.string	"n"
	.byte	0x4
	.byte	0xc3
	.byte	0xc
	.4byte	0x6b
	.byte	0x4
	.byte	0x8
	.string	"p"
	.byte	0x4
	.byte	0xc4
	.byte	0x17
	.4byte	0xec
	.byte	0x8
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0xb1
	.byte	0x4
	.4byte	.LASF14
	.byte	0x4
	.byte	0xc6
	.byte	0x1
	.4byte	0xbd
	.byte	0x5
	.4byte	0xf2
	.byte	0x9
	.4byte	.LASF28
	.byte	0x1
	.byte	0x7a
	.byte	0x5
	.4byte	0x5d
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0x231
	.byte	0xa
	.4byte	.LASF15
	.byte	0x1
	.byte	0x7a
	.byte	0x27
	.4byte	0x231
	.4byte	.LLST18
	.byte	0xa
	.4byte	.LASF16
	.byte	0x1
	.byte	0x7a
	.byte	0x36
	.4byte	0x6b
	.4byte	.LLST19
	.byte	0xb
	.string	"w"
	.byte	0x1
	.byte	0x7a
	.byte	0x46
	.4byte	0x5d
	.4byte	.LLST20
	.byte	0xa
	.4byte	.LASF17
	.byte	0x1
	.byte	0x7a
	.byte	0x51
	.4byte	0x237
	.4byte	.LLST21
	.byte	0xa
	.4byte	.LASF18
	.byte	0x1
	.byte	0x7a
	.byte	0x61
	.4byte	0x23d
	.4byte	.LLST22
	.byte	0xc
	.4byte	.LASF19
	.byte	0x1
	.byte	0x81
	.byte	0x12
	.4byte	0x77
	.4byte	.LLST23
	.byte	0xc
	.4byte	.LASF20
	.byte	0x1
	.byte	0x83
	.byte	0x14
	.4byte	0x94
	.4byte	.LLST24
	.byte	0xc
	.4byte	.LASF21
	.byte	0x1
	.byte	0x84
	.byte	0x14
	.4byte	0x94
	.4byte	.LLST25
	.byte	0xc
	.4byte	.LASF22
	.byte	0x1
	.byte	0x86
	.byte	0xc
	.4byte	0x6b
	.4byte	.LLST26
	.byte	0xd
	.string	"pos"
	.byte	0x1
	.byte	0x87
	.byte	0xc
	.4byte	0x6b
	.4byte	.LLST27
	.byte	0xc
	.4byte	.LASF23
	.byte	0x1
	.byte	0x88
	.byte	0xe
	.4byte	0x88
	.4byte	.LLST28
	.byte	0xe
	.4byte	.Ldebug_ranges0+0x50
	.4byte	0x215
	.byte	0xc
	.4byte	.LASF24
	.byte	0x1
	.byte	0x8a
	.byte	0x10
	.4byte	0x6b
	.4byte	.LLST29
	.byte	0xc
	.4byte	.LASF25
	.byte	0x1
	.byte	0x8b
	.byte	0x10
	.4byte	0x6b
	.4byte	.LLST30
	.byte	0xc
	.4byte	.LASF26
	.byte	0x1
	.byte	0x8c
	.byte	0x12
	.4byte	0x88
	.4byte	.LLST31
	.byte	0xc
	.4byte	.LASF27
	.byte	0x1
	.byte	0x96
	.byte	0x18
	.4byte	0x94
	.4byte	.LLST32
	.byte	0
	.byte	0xf
	.4byte	.LVL88
	.4byte	0x7ae
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x10
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x85
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x94
	.byte	0x6
	.byte	0x4
	.4byte	0x7c
	.byte	0x6
	.byte	0x4
	.4byte	0x6b
	.byte	0x9
	.4byte	.LASF29
	.byte	0x1
	.byte	0x4d
	.byte	0x5
	.4byte	0x5d
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0x4b8
	.byte	0xb
	.string	"U"
	.byte	0x1
	.byte	0x4d
	.byte	0x32
	.4byte	0x4b8
	.4byte	.LLST13
	.byte	0xb
	.string	"a"
	.byte	0x1
	.byte	0x4d
	.byte	0x48
	.4byte	0x4be
	.4byte	.LLST14
	.byte	0xb
	.string	"m"
	.byte	0x1
	.byte	0x4d
	.byte	0x5c
	.4byte	0xb1
	.4byte	.LLST15
	.byte	0xd
	.string	"ret"
	.byte	0x1
	.byte	0x4f
	.byte	0x9
	.4byte	0x5d
	.4byte	.LLST16
	.byte	0x11
	.string	"tmp"
	.byte	0x1
	.byte	0x56
	.byte	0x11
	.4byte	0xf2
	.byte	0x2
	.byte	0x91
	.byte	0x48
	.byte	0x12
	.4byte	.LASF32
	.byte	0x1
	.byte	0x72
	.byte	0x1
	.4byte	.L32
	.byte	0x13
	.4byte	.LASF30
	.byte	0x1
	.byte	0x6a
	.byte	0x11
	.4byte	0xf2
	.byte	0x2
	.byte	0x91
	.byte	0x54
	.byte	0x11
	.string	"z_"
	.byte	0x1
	.byte	0x6b
	.byte	0x16
	.4byte	0xb1
	.byte	0x2
	.byte	0x91
	.byte	0x44
	.byte	0xe
	.4byte	.Ldebug_ranges0+0x38
	.4byte	0x379
	.byte	0xd
	.string	"i"
	.byte	0x1
	.byte	0x5a
	.byte	0x11
	.4byte	0x6b
	.4byte	.LLST17
	.byte	0x14
	.4byte	.LVL50
	.4byte	0x7ba
	.byte	0x15
	.4byte	.LVL52
	.4byte	0x4c4
	.4byte	0x309
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x48
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0
	.byte	0x15
	.4byte	.LVL54
	.4byte	0x7ba
	.4byte	0x329
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x48
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x48
	.byte	0x10
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x15
	.4byte	.LVL56
	.4byte	0x4c4
	.4byte	0x343
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x48
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0
	.byte	0x15
	.4byte	.LVL58
	.4byte	0x7c7
	.4byte	0x35c
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0xf
	.4byte	.LVL60
	.4byte	0x7d4
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x10
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x48
	.byte	0
	.byte	0
	.byte	0x15
	.4byte	.LVL42
	.4byte	0x7e1
	.4byte	0x38d
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x48
	.byte	0
	.byte	0x15
	.4byte	.LVL43
	.4byte	0x7ed
	.4byte	0x3a6
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x15
	.4byte	.LVL45
	.4byte	0x7fa
	.4byte	0x3ba
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x48
	.byte	0
	.byte	0x15
	.4byte	.LVL63
	.4byte	0x7ba
	.4byte	0x3da
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x48
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x10
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x15
	.4byte	.LVL65
	.4byte	0x4c4
	.4byte	0x3f4
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x48
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x15
	.4byte	.LVL67
	.4byte	0x7ba
	.4byte	0x414
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x48
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x48
	.byte	0x10
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x15
	.4byte	.LVL69
	.4byte	0x4c4
	.4byte	0x42e
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x48
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x15
	.4byte	.LVL71
	.4byte	0x7c7
	.4byte	0x447
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x15
	.4byte	.LVL73
	.4byte	0x7d4
	.4byte	0x467
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x10
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x48
	.byte	0
	.byte	0x15
	.4byte	.LVL75
	.4byte	0x4c4
	.4byte	0x481
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x15
	.4byte	.LVL77
	.4byte	0x7d4
	.4byte	0x4a1
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x54
	.byte	0x10
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0xf
	.4byte	.LVL79
	.4byte	0x4c4
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0xf2
	.byte	0x6
	.byte	0x4
	.4byte	0xfe
	.byte	0x9
	.4byte	.LASF31
	.byte	0x1
	.byte	0x3a
	.byte	0x5
	.4byte	0x5d
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.4byte	0x5c0
	.byte	0xb
	.string	"X"
	.byte	0x1
	.byte	0x3a
	.byte	0x1d
	.4byte	0x4b8
	.4byte	.LLST10
	.byte	0xb
	.string	"n"
	.byte	0x1
	.byte	0x3a
	.byte	0x31
	.4byte	0xb1
	.4byte	.LLST11
	.byte	0xd
	.string	"ret"
	.byte	0x1
	.byte	0x3c
	.byte	0x9
	.4byte	0x5d
	.4byte	.LLST12
	.byte	0x11
	.string	"R"
	.byte	0x1
	.byte	0x3d
	.byte	0x11
	.4byte	0xf2
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0x12
	.4byte	.LASF32
	.byte	0x1
	.byte	0x48
	.byte	0x1
	.4byte	.L25
	.byte	0x15
	.4byte	.LVL31
	.4byte	0x5c0
	.4byte	0x53d
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x15
	.4byte	.LVL32
	.4byte	0x7e1
	.4byte	0x551
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0
	.byte	0x15
	.4byte	.LVL33
	.4byte	0x806
	.4byte	0x570
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x10
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x15
	.4byte	.LVL35
	.4byte	0x813
	.4byte	0x590
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x10
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0
	.byte	0x15
	.4byte	.LVL37
	.4byte	0x806
	.4byte	0x5af
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x10
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0xf
	.4byte	.LVL39
	.4byte	0x7fa
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0
	.byte	0
	.byte	0x9
	.4byte	.LASF33
	.byte	0x1
	.byte	0x24
	.byte	0x5
	.4byte	0x5d
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0x658
	.byte	0xb
	.string	"X"
	.byte	0x1
	.byte	0x24
	.byte	0x27
	.4byte	0x4b8
	.4byte	.LLST4
	.byte	0xb
	.string	"bit"
	.byte	0x1
	.byte	0x24
	.byte	0x31
	.4byte	0x6b
	.4byte	.LLST5
	.byte	0x16
	.4byte	.LASF34
	.byte	0x1
	.byte	0x26
	.byte	0x12
	.4byte	0x77
	.byte	0x20
	.byte	0xc
	.4byte	.LASF35
	.byte	0x1
	.byte	0x2a
	.byte	0xc
	.4byte	0x6b
	.4byte	.LLST6
	.byte	0xc
	.4byte	.LASF36
	.byte	0x1
	.byte	0x2f
	.byte	0xc
	.4byte	0x6b
	.4byte	.LLST7
	.byte	0xe
	.4byte	.Ldebug_ranges0+0x20
	.4byte	0x63d
	.byte	0xd
	.string	"i"
	.byte	0x1
	.byte	0x2c
	.byte	0x11
	.4byte	0x6b
	.4byte	.LLST8
	.byte	0
	.byte	0x17
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.byte	0xc
	.4byte	.LASF37
	.byte	0x1
	.byte	0x31
	.byte	0x1a
	.4byte	0xb1
	.4byte	.LLST9
	.byte	0
	.byte	0
	.byte	0x9
	.4byte	.LASF38
	.byte	0x1
	.byte	0x19
	.byte	0x8
	.4byte	0x6b
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0x695
	.byte	0xb
	.string	"mpi"
	.byte	0x1
	.byte	0x19
	.byte	0x25
	.4byte	0x4be
	.4byte	.LLST3
	.byte	0x18
	.4byte	.Ldebug_ranges0+0
	.byte	0x11
	.string	"i"
	.byte	0x1
	.byte	0x1b
	.byte	0x11
	.4byte	0x6b
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0
	.byte	0x19
	.4byte	.LASF59
	.byte	0x1
	.byte	0x6
	.byte	0x6
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0x7ae
	.byte	0xb
	.string	"tag"
	.byte	0x1
	.byte	0x6
	.byte	0x1b
	.4byte	0xab
	.4byte	.LLST0
	.byte	0xb
	.string	"bn"
	.byte	0x1
	.byte	0x6
	.byte	0x33
	.4byte	0x4be
	.4byte	.LLST1
	.byte	0x1a
	.4byte	.LASF39
	.byte	0x1
	.byte	0x8
	.byte	0x12
	.4byte	0x77
	.2byte	0x1001
	.byte	0xd
	.string	"buf"
	.byte	0x1
	.byte	0x9
	.byte	0xb
	.4byte	0x99
	.4byte	.LLST2
	.byte	0x13
	.4byte	.LASF40
	.byte	0x1
	.byte	0xc
	.byte	0xc
	.4byte	0x6b
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x15
	.4byte	.LVL2
	.4byte	0x820
	.4byte	0x70c
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xa
	.2byte	0x1001
	.byte	0
	.byte	0x15
	.4byte	.LVL4
	.4byte	0x82c
	.4byte	0x729
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x15
	.4byte	.LVL5
	.4byte	0x838
	.4byte	0x755
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x40
	.byte	0x10
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x10
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0xa
	.2byte	0x1001
	.byte	0x10
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0x15
	.4byte	.LVL6
	.4byte	0x845
	.4byte	0x769
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x15
	.4byte	.LVL7
	.4byte	0x845
	.4byte	0x780
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0x15
	.4byte	.LVL8
	.4byte	0x851
	.4byte	0x794
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0xf
	.4byte	.LVL12
	.4byte	0x85d
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.byte	0
	.byte	0x1b
	.4byte	.LASF41
	.4byte	.LASF41
	.byte	0x5
	.byte	0x21
	.byte	0x8
	.byte	0x1c
	.4byte	.LASF42
	.4byte	.LASF42
	.byte	0x4
	.2byte	0x2db
	.byte	0x5
	.byte	0x1c
	.4byte	.LASF43
	.4byte	.LASF43
	.byte	0x4
	.2byte	0x235
	.byte	0x5
	.byte	0x1c
	.4byte	.LASF44
	.4byte	.LASF44
	.byte	0x4
	.2byte	0x2af
	.byte	0x5
	.byte	0x1b
	.4byte	.LASF45
	.4byte	.LASF45
	.byte	0x4
	.byte	0xd0
	.byte	0x6
	.byte	0x1c
	.4byte	.LASF46
	.4byte	.LASF46
	.byte	0x4
	.2byte	0x14f
	.byte	0x5
	.byte	0x1b
	.4byte	.LASF47
	.4byte	.LASF47
	.byte	0x4
	.byte	0xd9
	.byte	0x6
	.byte	0x1c
	.4byte	.LASF48
	.4byte	.LASF48
	.byte	0x4
	.2byte	0x16c
	.byte	0x5
	.byte	0x1c
	.4byte	.LASF49
	.4byte	.LASF49
	.byte	0x4
	.2byte	0x2a1
	.byte	0x5
	.byte	0x1b
	.4byte	.LASF50
	.4byte	.LASF50
	.byte	0x6
	.byte	0x91
	.byte	0x7
	.byte	0x1b
	.4byte	.LASF51
	.4byte	.LASF51
	.byte	0x7
	.byte	0xc8
	.byte	0x5
	.byte	0x1c
	.4byte	.LASF52
	.4byte	.LASF52
	.byte	0x4
	.2byte	0x1bb
	.byte	0x5
	.byte	0x1b
	.4byte	.LASF53
	.4byte	.LASF53
	.byte	0x7
	.byte	0xdd
	.byte	0x5
	.byte	0x1b
	.4byte	.LASF54
	.4byte	.LASF54
	.byte	0x6
	.byte	0x94
	.byte	0x6
	.byte	0x1b
	.4byte	.LASF55
	.4byte	.LASF55
	.byte	0x5
	.byte	0x26
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
	.byte	0x26
	.byte	0
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
	.byte	0xb
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
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0xd
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
	.byte	0xe
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xf
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x10
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
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
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x12
	.byte	0xa
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x11
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x13
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
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x17
	.byte	0xb
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0x18
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
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
	.byte	0x1c
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0x1b
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
	.byte	0x1c
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
.LLST18:
	.4byte	.LVL82
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL83
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL96
	.4byte	.LVL97
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL97
	.4byte	.LVL112
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL112
	.4byte	.LVL113
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL113
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL82
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL87
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL95
	.4byte	.LVL97
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL97
	.4byte	.LVL112
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL112
	.4byte	.LFE9
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL82
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL86
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL94
	.4byte	.LVL97
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL97
	.4byte	.LVL112
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL112
	.4byte	.LFE9
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL82
	.4byte	.LVL88-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL88-1
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL92
	.4byte	.LVL97
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL97
	.4byte	.LVL111
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL111
	.4byte	.LVL112
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL112
	.4byte	.LFE9
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL82
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL84
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL94
	.4byte	.LVL97
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	.LVL97
	.4byte	.LVL112
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL112
	.4byte	.LFE9
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL85
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL97
	.4byte	.LVL112
	.2byte	0x1
	.byte	0x65
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL89
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL97
	.4byte	.LVL112
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL90
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL97
	.4byte	.LVL112
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL90
	.4byte	.LVL91
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL91
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL97
	.4byte	.LVL105
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL105
	.4byte	.LVL108
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL108
	.4byte	.LVL109
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL109
	.4byte	.LVL111
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL111
	.4byte	.LVL112
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL90
	.4byte	.LVL91
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL91
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL97
	.4byte	.LVL107
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL107
	.4byte	.LVL108
	.2byte	0x6
	.byte	0x79
	.byte	0
	.byte	0x80
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL109
	.4byte	.LVL112
	.2byte	0x1
	.byte	0x60
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL90
	.4byte	.LVL91
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL91
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x61
	.4byte	.LVL97
	.4byte	.LVL106
	.2byte	0x1
	.byte	0x61
	.4byte	.LVL106
	.4byte	.LVL107
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL107
	.4byte	.LVL108
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL108
	.4byte	.LVL109
	.2byte	0x1
	.byte	0x61
	.4byte	.LVL109
	.4byte	.LVL111
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL111
	.4byte	.LVL112
	.2byte	0x1
	.byte	0x61
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL98
	.4byte	.LVL100
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL100
	.4byte	.LVL102
	.2byte	0x3
	.byte	0x7a
	.byte	0x7f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL99
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL101
	.4byte	.LVL102
	.2byte	0x5
	.byte	0x80
	.byte	0
	.byte	0x4f
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL102
	.4byte	.LVL103
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL104
	.4byte	.LVL107
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL109
	.4byte	.LVL110
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL41
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL47
	.4byte	.LVL49
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL49
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL80
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL81
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL40
	.4byte	.LVL42-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL42-1
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL49
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL80
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL40
	.4byte	.LVL42-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL42-1
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL46
	.4byte	.LVL49
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL49
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL80
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL50
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL54
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL56
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL58
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL60
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL63
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL65
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL67
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL69
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL71
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL73
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL75
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL77
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL49
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL30
	.4byte	.LVL31-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL31-1
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL39
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL30
	.4byte	.LVL31-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL31-1
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL39
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL30
	.4byte	.LVL34
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL16
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL18
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL22
	.4byte	.LVL25
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL29
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL16
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL19
	.4byte	.LVL25
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL29
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL17
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL23
	.4byte	.LVL25
	.2byte	0x3
	.byte	0x7d
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL19
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x6
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x4f
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL18
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x3
	.byte	0x7d
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL21
	.4byte	.LVL24
	.2byte	0x7
	.byte	0x31
	.byte	0x7b
	.byte	0
	.byte	0x24
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0xa
	.byte	0x31
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x4f
	.byte	0x1a
	.byte	0x24
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL14
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL2-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL2-1
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL9
	.4byte	.LVL11
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL3
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL11
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x58
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
	.4byte	.LBB7
	.4byte	.LBE7
	.4byte	0
	.4byte	0
	.4byte	.LBB8
	.4byte	.LBE8
	.4byte	.LBB9
	.4byte	.LBE9
	.4byte	0
	.4byte	0
	.4byte	.LBB10
	.4byte	.LBE10
	.4byte	.LBB11
	.4byte	.LBE11
	.4byte	.LBB12
	.4byte	.LBE12
	.4byte	.LBB13
	.4byte	.LBE13
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF28:
	.string	"mpi_scalar_encode"
.LASF34:
	.string	"limb_bits"
.LASF22:
	.string	"output_len"
.LASF26:
	.string	"bit_buf"
.LASF42:
	.string	"mbedtls_mpi_mul_mpi"
.LASF58:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/mbedtls_lts"
.LASF2:
	.string	"short int"
.LASF9:
	.string	"size_t"
.LASF18:
	.string	"out_len"
.LASF10:
	.string	"int8_t"
.LASF35:
	.string	"higher_limb_idx"
.LASF48:
	.string	"mbedtls_mpi_set_bit"
.LASF15:
	.string	"scalar"
.LASF16:
	.string	"scalar_len"
.LASF33:
	.string	"mpi_clear_upper_bits"
.LASF20:
	.string	"width"
.LASF24:
	.string	"u32_idx"
.LASF14:
	.string	"mbedtls_mpi"
.LASF6:
	.string	"long long int"
.LASF40:
	.string	"olen"
.LASF19:
	.string	"bits"
.LASF36:
	.string	"bit_offset"
.LASF41:
	.string	"memset"
.LASF59:
	.string	"dump_mpi"
.LASF51:
	.string	"printf"
.LASF47:
	.string	"mbedtls_mpi_free"
.LASF1:
	.string	"unsigned char"
.LASF32:
	.string	"cleanup"
.LASF21:
	.string	"window_mask"
.LASF0:
	.string	"signed char"
.LASF7:
	.string	"long long unsigned int"
.LASF11:
	.string	"uint32_t"
.LASF8:
	.string	"unsigned int"
.LASF31:
	.string	"mpi_mod_2n"
.LASF5:
	.string	"long unsigned int"
.LASF53:
	.string	"puts"
.LASF3:
	.string	"short unsigned int"
.LASF23:
	.string	"carry"
.LASF12:
	.string	"char"
.LASF4:
	.string	"long int"
.LASF55:
	.string	"strcpy"
.LASF39:
	.string	"buf_len"
.LASF49:
	.string	"mbedtls_mpi_add_mpi"
.LASF57:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/mbedtls_lts/port/bignum_ext.c"
.LASF25:
	.string	"bit_idx"
.LASF54:
	.string	"vPortFree"
.LASF38:
	.string	"mpi_words"
.LASF45:
	.string	"mbedtls_mpi_init"
.LASF37:
	.string	"mask"
.LASF13:
	.string	"mbedtls_mpi_uint"
.LASF44:
	.string	"mbedtls_mpi_sub_mpi"
.LASF27:
	.string	"window"
.LASF43:
	.string	"mbedtls_mpi_shift_l"
.LASF17:
	.string	"output"
.LASF46:
	.string	"mbedtls_mpi_lset"
.LASF50:
	.string	"pvPortMalloc"
.LASF30:
	.string	"zero"
.LASF29:
	.string	"mpi_hensel_quad_mod_inv_prime_n"
.LASF52:
	.string	"mbedtls_mpi_write_string"
.LASF56:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
