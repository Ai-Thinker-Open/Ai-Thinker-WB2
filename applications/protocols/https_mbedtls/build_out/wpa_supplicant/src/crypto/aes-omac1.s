	.file	"aes-omac1.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.gf_mulx,"ax",@progbits
	.align	1
	.type	gf_mulx, @function
gf_mulx:
.LFB46:
	.file 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/crypto/aes-omac1.c"
	.loc 1 16 1
	.cfi_startproc
.LVL0:
	.loc 1 17 2
	.loc 1 19 2
	.loc 1 19 13 is_stmt 0
	lbu	a3,0(a0)
.LVL1:
	.loc 1 20 2 is_stmt 1
	.loc 1 20 14
	mv	a5,a0
	addi	a1,a0,15
.LVL2:
.L2:
	.loc 1 21 3 discriminator 3
	.loc 1 21 16 is_stmt 0 discriminator 3
	lbu	a4,0(a5)
	.loc 1 21 26 discriminator 3
	lbu	a2,1(a5)
	.loc 1 20 2 discriminator 3
	addi	a5,a5,1
.LVL3:
	.loc 1 21 20 discriminator 3
	slli	a4,a4,1
	.loc 1 21 26 discriminator 3
	srli	a2,a2,7
	or	a4,a4,a2
	.loc 1 21 10 discriminator 3
	sb	a4,-1(a5)
	.loc 1 20 26 is_stmt 1 discriminator 3
.LVL4:
	.loc 1 20 14 discriminator 3
	.loc 1 20 2 is_stmt 0 discriminator 3
	bne	a1,a5,.L2
	.loc 1 22 2 is_stmt 1
	.loc 1 22 14 is_stmt 0
	lbu	a5,15(a0)
	.loc 1 23 5
	slli	a4,a3,24
	srai	a4,a4,24
	.loc 1 22 14
	slli	a5,a5,1
	andi	a5,a5,0xff
	.loc 1 23 2 is_stmt 1
	.loc 1 23 5 is_stmt 0
	blt	a4,zero,.L3
.L6:
	.loc 1 24 15
	sb	a5,15(a0)
	.loc 1 25 1
	ret
.L3:
	.loc 1 24 3 is_stmt 1
	.loc 1 24 15 is_stmt 0
	xori	a5,a5,-121
	j	.L6
	.cfi_endproc
.LFE46:
	.size	gf_mulx, .-gf_mulx
	.section	.text.omac1_aes_vector,"ax",@progbits
	.align	1
	.globl	omac1_aes_vector
	.type	omac1_aes_vector, @function
omac1_aes_vector:
.LFB47:
	.loc 1 44 1 is_stmt 1
	.cfi_startproc
.LVL5:
	.loc 1 45 2
	.loc 1 46 2
	.loc 1 47 2
	.loc 1 48 2
	.loc 1 50 2
	.loc 1 44 1 is_stmt 0
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sw	s0,72(sp)
	sw	s5,52(sp)
	sw	s7,44(sp)
	sw	s8,40(sp)
	sw	ra,76(sp)
	sw	s1,68(sp)
	sw	s2,64(sp)
	sw	s3,60(sp)
	sw	s4,56(sp)
	sw	s6,48(sp)
	sw	s9,36(sp)
	sw	s10,32(sp)
	.cfi_offset 8, -8
	.cfi_offset 21, -28
	.cfi_offset 23, -36
	.cfi_offset 24, -40
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 22, -32
	.cfi_offset 25, -44
	.cfi_offset 26, -48
	.loc 1 44 1
	mv	s0,a2
	mv	s7,a3
	mv	s5,a4
	mv	s8,a5
	.loc 1 50 8
	call	wpa_aes_encrypt_init
.LVL6:
	.loc 1 51 2 is_stmt 1
	.loc 1 51 5 is_stmt 0
	beq	a0,zero,.L23
	mv	s3,a0
	.loc 1 53 2 is_stmt 1
	li	a2,16
	li	a1,0
	mv	a0,sp
.LVL7:
	call	memset
.LVL8:
	.loc 1 55 2
	.loc 1 56 2
	.loc 1 55 12 is_stmt 0
	li	s6,0
	.loc 1 56 9
	li	a5,0
.LVL9:
.L9:
	.loc 1 56 14 is_stmt 1 discriminator 1
	.loc 1 56 2 is_stmt 0 discriminator 1
	bne	a5,s0,.L10
	.loc 1 58 2 is_stmt 1
.LVL10:
	.loc 1 60 2
	.loc 1 61 2
	.loc 1 61 6 is_stmt 0
	lw	s0,0(s7)
.LVL11:
	.loc 1 62 2 is_stmt 1
	.loc 1 62 6 is_stmt 0
	lw	s2,0(s5)
	.loc 1 64 8
	mv	s1,s6
	.loc 1 60 4
	li	s4,0
	.loc 1 62 6
	add	s2,s0,s2
.LVL12:
	.loc 1 64 2 is_stmt 1
	.loc 1 64 8 is_stmt 0
	li	s10,15
	.loc 1 72 21
	li	s9,16
.LVL13:
.L11:
	.loc 1 64 8 is_stmt 1
	bgtu	s1,s10,.L16
	li	a5,-16
	srli	s1,s6,4
.LVL14:
	mul	s1,s1,a5
	.loc 1 85 2 is_stmt 0
	li	a2,16
	li	a1,0
	addi	a0,sp,16
	call	memset
.LVL15:
	.loc 1 86 2
	addi	a2,sp,16
	mv	a0,s3
	mv	a1,a2
	call	wpa_aes_encrypt
.LVL16:
	.loc 1 87 2
	addi	a0,sp,16
	add	s1,s1,s6
	.loc 1 85 2 is_stmt 1
	.loc 1 86 2
	.loc 1 87 2
	call	gf_mulx
.LVL17:
	.loc 1 89 2
	.loc 1 89 5 is_stmt 0
	beq	s1,zero,.L17
	mv	a4,sp
.LVL18:
	.loc 1 90 15 is_stmt 1
	.loc 1 89 5 is_stmt 0
	li	a5,0
.LVL19:
.L18:
	.loc 1 91 4 is_stmt 1
	.loc 1 91 11 is_stmt 0
	lbu	a3,0(a4)
	lbu	a1,0(s0)
	.loc 1 91 18
	addi	a2,s0,1
.LVL20:
	.loc 1 97 11
	addi	a5,a5,1
.LVL21:
	.loc 1 91 11
	xor	a3,a3,a1
	sb	a3,0(a4)
	.loc 1 92 4 is_stmt 1
	.loc 1 92 7 is_stmt 0
	bltu	a2,s2,.L26
	.loc 1 97 5 is_stmt 1
	.loc 1 97 8 is_stmt 0
	beq	s1,a5,.L21
	.loc 1 99 5 is_stmt 1
	.loc 1 99 6 is_stmt 0
	addi	s4,s4,1
.LVL22:
	.loc 1 100 5 is_stmt 1
	.loc 1 100 15 is_stmt 0
	slli	a3,s4,2
	.loc 1 100 9
	add	a2,s7,a3
.LVL23:
	.loc 1 101 20
	add	a3,s5,a3
	.loc 1 100 9
	lw	s0,0(a2)
.LVL24:
	.loc 1 101 5 is_stmt 1
	.loc 1 101 9 is_stmt 0
	lw	s2,0(a3)
.LVL25:
	add	s2,s0,s2
.LVL26:
.L20:
	.loc 1 90 25 is_stmt 1 discriminator 2
	addi	a4,a4,1
.LVL27:
	.loc 1 90 15 discriminator 2
	.loc 1 90 3 is_stmt 0 discriminator 2
	bne	s1,a5,.L18
	j	.L21
.LVL28:
.L10:
	.loc 1 57 3 is_stmt 1 discriminator 3
	.loc 1 57 19 is_stmt 0 discriminator 3
	slli	a4,a5,2
	add	a4,s5,a4
	.loc 1 57 13 discriminator 3
	lw	a4,0(a4)
	.loc 1 56 29 discriminator 3
	addi	a5,a5,1
.LVL29:
	.loc 1 57 13 discriminator 3
	add	s6,s6,a4
.LVL30:
	.loc 1 56 28 is_stmt 1 discriminator 3
	j	.L9
.LVL31:
.L16:
	mv	a4,sp
	.loc 1 65 10 is_stmt 0
	li	a5,0
.L15:
.LVL32:
	.loc 1 66 4 is_stmt 1
	.loc 1 66 11 is_stmt 0
	lbu	a2,0(a4)
	lbu	a1,0(s0)
	.loc 1 66 18
	addi	a3,s0,1
.LVL33:
	.loc 1 66 11
	xor	a2,a2,a1
	sb	a2,0(a4)
	.loc 1 67 4 is_stmt 1
	.loc 1 67 7 is_stmt 0
	bltu	a3,s2,.L24
	.loc 1 72 5 is_stmt 1
	.loc 1 72 8 is_stmt 0
	bne	a5,s10,.L13
	.loc 1 72 21 discriminator 1
	beq	s1,s9,.L25
.L13:
	.loc 1 75 5 is_stmt 1
	.loc 1 75 6 is_stmt 0
	addi	s4,s4,1
.LVL34:
	.loc 1 76 5 is_stmt 1
	.loc 1 76 15 is_stmt 0
	slli	a3,s4,2
.LVL35:
	.loc 1 76 9
	add	a2,s7,a3
	.loc 1 77 20
	add	a3,s5,a3
	.loc 1 76 9
	lw	s0,0(a2)
.LVL36:
	.loc 1 77 5 is_stmt 1
	.loc 1 77 9 is_stmt 0
	lw	s2,0(a3)
.LVL37:
	add	s2,s0,s2
.LVL38:
.L12:
	.loc 1 65 23 is_stmt 1 discriminator 2
	.loc 1 65 24 is_stmt 0 discriminator 2
	addi	a5,a5,1
.LVL39:
	.loc 1 65 15 is_stmt 1 discriminator 2
	.loc 1 65 3 is_stmt 0 discriminator 2
	addi	a4,a4,1
	bne	a5,s9,.L15
	.loc 1 80 3 is_stmt 1
	.loc 1 80 6 is_stmt 0
	beq	s1,s9,.L14
	.loc 1 81 4 is_stmt 1
	mv	a2,sp
	mv	a1,sp
	mv	a0,s3
	call	wpa_aes_encrypt
.LVL40:
.L14:
	.loc 1 82 3
	.loc 1 82 8 is_stmt 0
	addi	s1,s1,-16
.LVL41:
	j	.L11
.LVL42:
.L24:
	mv	s0,a3
	j	.L12
.L25:
	mv	s0,a3
	j	.L14
.LVL43:
.L17:
	.loc 1 89 11 discriminator 1
	bne	s6,zero,.L19
.LVL44:
.L21:
	.loc 1 104 3 is_stmt 1
	.loc 1 104 13 is_stmt 0
	addi	a5,sp,32
	add	s1,a5,s1
	lbu	a5,-32(s1)
	.loc 1 105 3
	addi	a0,sp,16
	.loc 1 104 13
	xori	a5,a5,-128
	sb	a5,-32(s1)
	.loc 1 105 3 is_stmt 1
	call	gf_mulx
.LVL45:
.L19:
	addi	a4,sp,16
	li	a5,0
	.loc 1 108 2 is_stmt 0 discriminator 3
	li	a2,16
.L22:
.LVL46:
	.loc 1 109 3 is_stmt 1 discriminator 3
	.loc 1 109 16 is_stmt 0 discriminator 3
	add	a3,sp,a5
	.loc 1 109 10 discriminator 3
	lbu	a1,0(a4)
	lbu	a3,0(a3)
	.loc 1 108 23 discriminator 3
	addi	a5,a5,1
.LVL47:
	.loc 1 108 2 discriminator 3
	addi	a4,a4,1
	.loc 1 109 10 discriminator 3
	xor	a3,a3,a1
	sb	a3,-1(a4)
	.loc 1 108 22 is_stmt 1 discriminator 3
.LVL48:
	.loc 1 108 14 discriminator 3
	.loc 1 108 2 is_stmt 0 discriminator 3
	bne	a5,a2,.L22
	.loc 1 110 2 is_stmt 1
	mv	a2,s8
	addi	a1,sp,16
	mv	a0,s3
	call	wpa_aes_encrypt
.LVL49:
	.loc 1 111 2
	mv	a0,s3
	call	wpa_aes_encrypt_deinit
.LVL50:
	.loc 1 112 2
	.loc 1 112 9 is_stmt 0
	li	a0,0
.LVL51:
.L7:
	.loc 1 113 1
	lw	ra,76(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,72(sp)
	.cfi_restore 8
	lw	s1,68(sp)
	.cfi_restore 9
	lw	s2,64(sp)
	.cfi_restore 18
	lw	s3,60(sp)
	.cfi_restore 19
	lw	s4,56(sp)
	.cfi_restore 20
	lw	s5,52(sp)
	.cfi_restore 21
.LVL52:
	lw	s6,48(sp)
	.cfi_restore 22
	lw	s7,44(sp)
	.cfi_restore 23
.LVL53:
	lw	s8,40(sp)
	.cfi_restore 24
.LVL54:
	lw	s9,36(sp)
	.cfi_restore 25
	lw	s10,32(sp)
	.cfi_restore 26
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
.LVL55:
.L26:
	.cfi_restore_state
	mv	s0,a2
	j	.L20
.LVL56:
.L23:
	.loc 1 52 10
	li	a0,-1
.LVL57:
	j	.L7
	.cfi_endproc
.LFE47:
	.size	omac1_aes_vector, .-omac1_aes_vector
	.section	.text.omac1_aes_128_vector,"ax",@progbits
	.align	1
	.globl	omac1_aes_128_vector
	.type	omac1_aes_128_vector, @function
omac1_aes_128_vector:
.LFB48:
	.loc 1 131 1 is_stmt 1
	.cfi_startproc
.LVL58:
	.loc 1 132 2
	.loc 1 131 1 is_stmt 0
	mv	a5,a4
	.loc 1 132 9
	mv	a4,a3
.LVL59:
	mv	a3,a2
.LVL60:
	mv	a2,a1
.LVL61:
	li	a1,16
.LVL62:
	tail	omac1_aes_vector
.LVL63:
	.cfi_endproc
.LFE48:
	.size	omac1_aes_128_vector, .-omac1_aes_128_vector
	.section	.text.omac1_aes_128,"ax",@progbits
	.align	1
	.globl	omac1_aes_128
	.type	omac1_aes_128, @function
omac1_aes_128:
.LFB49:
	.loc 1 149 1 is_stmt 1
	.cfi_startproc
.LVL64:
	.loc 1 150 2
	.loc 1 149 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	a1,12(sp)
	sw	a2,8(sp)
	mv	a4,a3
	.loc 1 150 9
	addi	a2,sp,12
.LVL65:
	addi	a3,sp,8
.LVL66:
	li	a1,1
.LVL67:
	.loc 1 149 1
	sw	ra,28(sp)
	.cfi_offset 1, -4
	.loc 1 150 9
	call	omac1_aes_128_vector
.LVL68:
	.loc 1 151 1
	lw	ra,28(sp)
	.cfi_restore 1
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE49:
	.size	omac1_aes_128, .-omac1_aes_128
	.section	.text.omac1_aes_256,"ax",@progbits
	.align	1
	.globl	omac1_aes_256
	.type	omac1_aes_256, @function
omac1_aes_256:
.LFB50:
	.loc 1 167 1 is_stmt 1
	.cfi_startproc
.LVL69:
	.loc 1 168 2
	.loc 1 167 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	a1,12(sp)
	sw	a2,8(sp)
	mv	a5,a3
	.loc 1 168 9
	addi	a4,sp,8
	addi	a3,sp,12
.LVL70:
	li	a2,1
.LVL71:
	li	a1,32
.LVL72:
	.loc 1 167 1
	sw	ra,28(sp)
	.cfi_offset 1, -4
	.loc 1 168 9
	call	omac1_aes_vector
.LVL73:
	.loc 1 169 1
	lw	ra,28(sp)
	.cfi_restore 1
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE50:
	.size	omac1_aes_256, .-omac1_aes_256
	.text
.Letext0:
	.file 2 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h"
	.file 3 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 4 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 5 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/crypto/aes.h"
	.file 6 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h"
	.file 7 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/utils/common.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x4ed
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF29
	.byte	0xc
	.4byte	.LASF30
	.4byte	.LASF31
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x3
	.4byte	.LASF2
	.byte	0x2
	.byte	0xd1
	.byte	0x16
	.4byte	0x3d
	.byte	0x4
	.4byte	0x2c
	.byte	0x5
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.byte	0x5
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1
	.byte	0x3
	.4byte	.LASF3
	.byte	0x3
	.byte	0x2b
	.byte	0x17
	.4byte	0x57
	.byte	0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF4
	.byte	0x5
	.byte	0x2
	.byte	0x5
	.4byte	.LASF5
	.byte	0x5
	.byte	0x2
	.byte	0x7
	.4byte	.LASF6
	.byte	0x5
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.byte	0x5
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.byte	0x5
	.byte	0x8
	.byte	0x5
	.4byte	.LASF9
	.byte	0x5
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.byte	0x6
	.byte	0x4
	.byte	0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF11
	.byte	0x3
	.4byte	.LASF12
	.byte	0x4
	.byte	0x18
	.byte	0x13
	.4byte	0x4b
	.byte	0x7
	.string	"u8"
	.byte	0x7
	.byte	0x16
	.byte	0x11
	.4byte	0x91
	.byte	0x4
	.4byte	0x9d
	.byte	0x8
	.byte	0x4
	.4byte	0x9d
	.byte	0x9
	.4byte	.LASF15
	.byte	0x1
	.byte	0xa6
	.byte	0x5
	.4byte	0x25
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.byte	0x1
	.byte	0x9c
	.4byte	0x13d
	.byte	0xa
	.string	"key"
	.byte	0x1
	.byte	0xa6
	.byte	0x1d
	.4byte	0x13d
	.4byte	.LLST23
	.byte	0xb
	.4byte	.LASF13
	.byte	0x1
	.byte	0xa6
	.byte	0x2c
	.4byte	0x13d
	.4byte	.LLST24
	.byte	0xb
	.4byte	.LASF14
	.byte	0x1
	.byte	0xa6
	.byte	0x39
	.4byte	0x2c
	.4byte	.LLST25
	.byte	0xa
	.string	"mac"
	.byte	0x1
	.byte	0xa6
	.byte	0x47
	.4byte	0xad
	.4byte	.LLST26
	.byte	0xc
	.4byte	.LVL73
	.4byte	0x270
	.byte	0xd
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0xd
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0xd
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x31
	.byte	0xd
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0xd
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0xd
	.byte	0x1
	.byte	0x5f
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0x4
	.4byte	0xa8
	.byte	0x9
	.4byte	.LASF16
	.byte	0x1
	.byte	0x94
	.byte	0x5
	.4byte	0x25
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.byte	0x1
	.byte	0x9c
	.4byte	0x1c7
	.byte	0xa
	.string	"key"
	.byte	0x1
	.byte	0x94
	.byte	0x1d
	.4byte	0x13d
	.4byte	.LLST19
	.byte	0xb
	.4byte	.LASF13
	.byte	0x1
	.byte	0x94
	.byte	0x2c
	.4byte	0x13d
	.4byte	.LLST20
	.byte	0xb
	.4byte	.LASF14
	.byte	0x1
	.byte	0x94
	.byte	0x39
	.4byte	0x2c
	.4byte	.LLST21
	.byte	0xa
	.string	"mac"
	.byte	0x1
	.byte	0x94
	.byte	0x47
	.4byte	0xad
	.4byte	.LLST22
	.byte	0xc
	.4byte	.LVL68
	.4byte	0x1c7
	.byte	0xd
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0xd
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0xd
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0xd
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0xd
	.byte	0x1
	.byte	0x5e
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0
	.byte	0
	.byte	0x9
	.4byte	.LASF17
	.byte	0x1
	.byte	0x81
	.byte	0x5
	.4byte	0x25
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.byte	0x1
	.byte	0x9c
	.4byte	0x264
	.byte	0xa
	.string	"key"
	.byte	0x1
	.byte	0x81
	.byte	0x24
	.4byte	0x13d
	.4byte	.LLST14
	.byte	0xb
	.4byte	.LASF18
	.byte	0x1
	.byte	0x81
	.byte	0x30
	.4byte	0x2c
	.4byte	.LLST15
	.byte	0xb
	.4byte	.LASF19
	.byte	0x1
	.byte	0x82
	.byte	0xf
	.4byte	0x264
	.4byte	.LLST16
	.byte	0xa
	.string	"len"
	.byte	0x1
	.byte	0x82
	.byte	0x25
	.4byte	0x26a
	.4byte	.LLST17
	.byte	0xa
	.string	"mac"
	.byte	0x1
	.byte	0x82
	.byte	0x2e
	.4byte	0xad
	.4byte	.LLST18
	.byte	0xe
	.4byte	.LVL63
	.4byte	0x270
	.byte	0xd
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0xd
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x40
	.byte	0xd
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0xd
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0xd
	.byte	0x1
	.byte	0x5e
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0xd
	.byte	0x1
	.byte	0x5f
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0x4
	.4byte	0x13d
	.byte	0x8
	.byte	0x4
	.4byte	0x38
	.byte	0x9
	.4byte	.LASF20
	.byte	0x1
	.byte	0x2a
	.byte	0x5
	.4byte	0x25
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.byte	0x1
	.byte	0x9c
	.4byte	0x467
	.byte	0xa
	.string	"key"
	.byte	0x1
	.byte	0x2a
	.byte	0x20
	.4byte	0x13d
	.4byte	.LLST1
	.byte	0xb
	.4byte	.LASF21
	.byte	0x1
	.byte	0x2a
	.byte	0x2c
	.4byte	0x2c
	.4byte	.LLST2
	.byte	0xb
	.4byte	.LASF18
	.byte	0x1
	.byte	0x2a
	.byte	0x3c
	.4byte	0x2c
	.4byte	.LLST3
	.byte	0xb
	.4byte	.LASF19
	.byte	0x1
	.byte	0x2b
	.byte	0x12
	.4byte	0x264
	.4byte	.LLST4
	.byte	0xa
	.string	"len"
	.byte	0x1
	.byte	0x2b
	.byte	0x28
	.4byte	0x26a
	.4byte	.LLST5
	.byte	0xa
	.string	"mac"
	.byte	0x1
	.byte	0x2b
	.byte	0x31
	.4byte	0xad
	.4byte	.LLST6
	.byte	0xf
	.string	"ctx"
	.byte	0x1
	.byte	0x2d
	.byte	0x8
	.4byte	0x88
	.4byte	.LLST7
	.byte	0x10
	.string	"cbc"
	.byte	0x1
	.byte	0x2e
	.byte	0x5
	.4byte	0x467
	.byte	0x3
	.byte	0x91
	.byte	0xb0,0x7f
	.byte	0x10
	.string	"pad"
	.byte	0x1
	.byte	0x2e
	.byte	0xe
	.4byte	0x467
	.byte	0x2
	.byte	0x91
	.byte	0x40
	.byte	0xf
	.string	"pos"
	.byte	0x1
	.byte	0x2f
	.byte	0xc
	.4byte	0x13d
	.4byte	.LLST8
	.byte	0xf
	.string	"end"
	.byte	0x1
	.byte	0x2f
	.byte	0x12
	.4byte	0x13d
	.4byte	.LLST9
	.byte	0xf
	.string	"i"
	.byte	0x1
	.byte	0x30
	.byte	0x9
	.4byte	0x2c
	.4byte	.LLST10
	.byte	0xf
	.string	"e"
	.byte	0x1
	.byte	0x30
	.byte	0xc
	.4byte	0x2c
	.4byte	.LLST11
	.byte	0x11
	.4byte	.LASF22
	.byte	0x1
	.byte	0x30
	.byte	0xf
	.4byte	0x2c
	.4byte	.LLST12
	.byte	0x11
	.4byte	.LASF23
	.byte	0x1
	.byte	0x30
	.byte	0x15
	.4byte	0x2c
	.4byte	.LLST13
	.byte	0x12
	.4byte	.LVL6
	.4byte	0x4c0
	.4byte	0x391
	.byte	0xd
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0xd
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0
	.byte	0x12
	.4byte	.LVL8
	.4byte	0x4cc
	.4byte	0x3af
	.byte	0xd
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0xd
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0xd
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x40
	.byte	0
	.byte	0x12
	.4byte	.LVL15
	.4byte	0x4cc
	.4byte	0x3ce
	.byte	0xd
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x40
	.byte	0xd
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0xd
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x89
	.byte	0
	.byte	0
	.byte	0x12
	.4byte	.LVL16
	.4byte	0x4d8
	.4byte	0x3ee
	.byte	0xd
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0xd
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x40
	.byte	0xd
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x40
	.byte	0
	.byte	0x12
	.4byte	.LVL17
	.4byte	0x477
	.4byte	0x402
	.byte	0xd
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x40
	.byte	0
	.byte	0x12
	.4byte	.LVL40
	.4byte	0x4d8
	.4byte	0x422
	.byte	0xd
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0xd
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0xd
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0
	.byte	0x12
	.4byte	.LVL45
	.4byte	0x477
	.4byte	0x436
	.byte	0xd
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x40
	.byte	0
	.byte	0x12
	.4byte	.LVL49
	.4byte	0x4d8
	.4byte	0x456
	.byte	0xd
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0xd
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x40
	.byte	0xd
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x88
	.byte	0
	.byte	0
	.byte	0xc
	.4byte	.LVL50
	.4byte	0x4e4
	.byte	0xd
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0
	.byte	0
	.byte	0x13
	.4byte	0x9d
	.4byte	0x477
	.byte	0x14
	.4byte	0x3d
	.byte	0xf
	.byte	0
	.byte	0x15
	.4byte	.LASF32
	.byte	0x1
	.byte	0xf
	.byte	0xd
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.byte	0x1
	.byte	0x9c
	.4byte	0x4c0
	.byte	0x16
	.string	"pad"
	.byte	0x1
	.byte	0xf
	.byte	0x19
	.4byte	0xad
	.byte	0x1
	.byte	0x5a
	.byte	0xf
	.string	"i"
	.byte	0x1
	.byte	0x11
	.byte	0x6
	.4byte	0x25
	.4byte	.LLST0
	.byte	0x17
	.4byte	.LASF24
	.byte	0x1
	.byte	0x11
	.byte	0x9
	.4byte	0x25
	.byte	0x9
	.byte	0x7d
	.byte	0
	.byte	0x9
	.byte	0x80
	.byte	0x1a
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.byte	0
	.byte	0x18
	.4byte	.LASF25
	.4byte	.LASF25
	.byte	0x5
	.byte	0x17
	.byte	0x8
	.byte	0x18
	.4byte	.LASF26
	.4byte	.LASF26
	.byte	0x6
	.byte	0x21
	.byte	0x8
	.byte	0x18
	.4byte	.LASF27
	.4byte	.LASF27
	.byte	0x5
	.byte	0x18
	.byte	0x6
	.byte	0x18
	.4byte	.LASF28
	.4byte	.LASF28
	.byte	0x5
	.byte	0x19
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
	.byte	0xe
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
	.byte	0x16
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
	.byte	0x8
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
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
	.byte	0xb
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
	.byte	0xc
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xd
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
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
	.byte	0x11
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
	.byte	0x12
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
	.byte	0x13
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x14
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x15
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
	.byte	0x16
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
	.byte	0x17
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
	.byte	0x18
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
.LLST23:
	.4byte	.LVL69
	.4byte	.LVL73-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL73-1
	.4byte	.LFE50
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL69
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL72
	.4byte	.LVL73-1
	.2byte	0x2
	.byte	0x7d
	.byte	0
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL69
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL71
	.4byte	.LVL73-1
	.2byte	0x2
	.byte	0x7e
	.byte	0
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL69
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL70
	.4byte	.LVL73-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL73-1
	.4byte	.LFE50
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL64
	.4byte	.LVL68-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL68-1
	.4byte	.LFE49
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL64
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL67
	.4byte	.LVL68-1
	.2byte	0x2
	.byte	0x7c
	.byte	0
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL64
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL65
	.4byte	.LVL66
	.2byte	0x2
	.byte	0x91
	.byte	0x68
	.4byte	.LVL66
	.4byte	.LVL68-1
	.2byte	0x2
	.byte	0x7d
	.byte	0
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL64
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL66
	.4byte	.LVL68-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL68-1
	.4byte	.LFE49
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL58
	.4byte	.LVL63-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL63-1
	.4byte	.LFE48
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL58
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL62
	.4byte	.LVL63-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL63-1
	.4byte	.LFE48
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL58
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL61
	.4byte	.LVL63-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL63-1
	.4byte	.LFE48
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL58
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL60
	.4byte	.LVL63-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL63-1
	.4byte	.LFE48
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL58
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL59
	.4byte	.LVL63-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL63-1
	.4byte	.LFE48
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL5
	.4byte	.LVL6-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL6-1
	.4byte	.LFE47
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL5
	.4byte	.LVL6-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL6-1
	.4byte	.LFE47
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL5
	.4byte	.LVL6-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL6-1
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL11
	.4byte	.LVL28
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL31
	.4byte	.LVL56
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL56
	.4byte	.LFE47
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL5
	.4byte	.LVL6-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL6-1
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL53
	.4byte	.LVL55
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL55
	.4byte	.LFE47
	.2byte	0x1
	.byte	0x67
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL5
	.4byte	.LVL6-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL6-1
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL52
	.4byte	.LVL55
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	.LVL55
	.4byte	.LFE47
	.2byte	0x1
	.byte	0x65
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL5
	.4byte	.LVL6-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL6-1
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL54
	.4byte	.LVL55
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5f
	.byte	0x9f
	.4byte	.LVL55
	.4byte	.LFE47
	.2byte	0x1
	.byte	0x68
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL7
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL55
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL56
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL11
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL20
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x3
	.byte	0x78
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL31
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL33
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x3
	.byte	0x78
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL55
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL12
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL26
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL31
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL38
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL55
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL21
	.4byte	.LVL26
	.2byte	0x3
	.byte	0x7f
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x3
	.byte	0x7f
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL32
	.4byte	.LVL40-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x3
	.byte	0x7f
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL48
	.4byte	.LVL49-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL55
	.4byte	.LVL56
	.2byte	0x3
	.byte	0x7f
	.byte	0x7f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL10
	.4byte	.LVL13
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x3
	.byte	0x7f
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL31
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL55
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL10
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL31
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL55
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x66
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x6
	.byte	0x7f
	.byte	0
	.byte	0x7a
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x7
	.byte	0x7a
	.byte	0
	.byte	0x20
	.byte	0x7f
	.byte	0
	.byte	0x22
	.byte	0x9f
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
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB46
	.4byte	.LFE46
	.4byte	.LFB47
	.4byte	.LFE47
	.4byte	.LFB48
	.4byte	.LFE48
	.4byte	.LFB49
	.4byte	.LFE49
	.4byte	.LFB50
	.4byte	.LFE50
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF15:
	.string	"omac1_aes_256"
.LASF3:
	.string	"__uint8_t"
.LASF16:
	.string	"omac1_aes_128"
.LASF22:
	.string	"left"
.LASF6:
	.string	"short unsigned int"
.LASF14:
	.string	"data_len"
.LASF24:
	.string	"carry"
.LASF13:
	.string	"data"
.LASF4:
	.string	"unsigned char"
.LASF32:
	.string	"gf_mulx"
.LASF8:
	.string	"long unsigned int"
.LASF19:
	.string	"addr"
.LASF2:
	.string	"size_t"
.LASF31:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/wpa_supplicant"
.LASF23:
	.string	"total_len"
.LASF26:
	.string	"memset"
.LASF27:
	.string	"wpa_aes_encrypt"
.LASF0:
	.string	"unsigned int"
.LASF10:
	.string	"long long unsigned int"
.LASF12:
	.string	"uint8_t"
.LASF30:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/crypto/aes-omac1.c"
.LASF18:
	.string	"num_elem"
.LASF25:
	.string	"wpa_aes_encrypt_init"
.LASF9:
	.string	"long long int"
.LASF29:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
.LASF17:
	.string	"omac1_aes_128_vector"
.LASF5:
	.string	"short int"
.LASF21:
	.string	"key_len"
.LASF7:
	.string	"long int"
.LASF11:
	.string	"char"
.LASF1:
	.string	"signed char"
.LASF20:
	.string	"omac1_aes_vector"
.LASF28:
	.string	"wpa_aes_encrypt_deinit"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
