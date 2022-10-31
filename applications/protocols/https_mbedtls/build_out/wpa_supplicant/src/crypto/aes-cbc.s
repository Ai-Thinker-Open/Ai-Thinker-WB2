	.file	"aes-cbc.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.aes_128_cbc_encrypt,"ax",@progbits
	.align	1
	.globl	aes_128_cbc_encrypt
	.type	aes_128_cbc_encrypt, @function
aes_128_cbc_encrypt:
.LFB69:
	.file 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/crypto/aes-cbc.c"
	.loc 1 113 1
	.cfi_startproc
.LVL0:
	.loc 1 114 2
	.loc 1 115 2
	.loc 1 116 2
	.loc 1 113 1 is_stmt 0
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s2,32(sp)
	.cfi_offset 18, -16
	mv	s2,a1
	.loc 1 119 8
	li	a1,16
.LVL1:
	.loc 1 113 1
	sw	s1,36(sp)
	sw	s4,24(sp)
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s3,28(sp)
	sw	s5,20(sp)
	.cfi_offset 9, -12
	.cfi_offset 20, -24
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 19, -20
	.cfi_offset 21, -28
	.loc 1 113 1
	mv	s4,a2
.LVL2:
	.loc 1 117 2 is_stmt 1
	.loc 1 119 2
	.loc 1 113 1 is_stmt 0
	mv	s1,a3
	.loc 1 119 8
	call	wpa_aes_encrypt_init
.LVL3:
	.loc 1 120 2 is_stmt 1
	.loc 1 120 5 is_stmt 0
	beq	a0,zero,.L6
	.loc 1 122 2
	mv	a1,s2
	mv	s0,a0
	.loc 1 122 2 is_stmt 1
	li	a2,16
	mv	a0,sp
.LVL4:
	call	memcpy
.LVL5:
	.loc 1 124 2
	.loc 1 124 20 is_stmt 0
	srli	s1,s1,4
.LVL6:
	.loc 1 125 2 is_stmt 1
	.loc 1 125 9 is_stmt 0
	li	s2,0
.LVL7:
	.loc 1 126 3
	li	s5,16
.LVL8:
.L3:
	slli	s3,s2,4
	add	s3,s4,s3
.LVL9:
	.loc 1 125 14 is_stmt 1 discriminator 1
	.loc 1 125 2 is_stmt 0 discriminator 1
	blt	s2,s1,.L5
	.loc 1 132 2 is_stmt 1
	mv	a0,s0
	call	wpa_aes_encrypt_deinit
.LVL10:
	.loc 1 133 2
	.loc 1 133 9 is_stmt 0
	li	a0,0
.LVL11:
.L1:
	.loc 1 134 1
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
.LVL12:
	lw	s5,20(sp)
	.cfi_restore 21
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
.LVL13:
.L5:
	.cfi_restore_state
	mv	a4,sp
	.loc 1 126 10
	li	a5,0
.L4:
.LVL14:
	.loc 1 127 4 is_stmt 1 discriminator 3
	.loc 1 127 17 is_stmt 0 discriminator 3
	add	a3,s3,a5
	.loc 1 127 11 discriminator 3
	lbu	a2,0(a4)
	lbu	a3,0(a3)
	.loc 1 126 24 discriminator 3
	addi	a5,a5,1
.LVL15:
	.loc 1 126 3 discriminator 3
	addi	a4,a4,1
	.loc 1 127 11 discriminator 3
	xor	a3,a3,a2
	sb	a3,-1(a4)
	.loc 1 126 23 is_stmt 1 discriminator 3
.LVL16:
	.loc 1 126 15 discriminator 3
	.loc 1 126 3 is_stmt 0 discriminator 3
	bne	a5,s5,.L4
	.loc 1 128 9 is_stmt 1 discriminator 2
	mv	a2,sp
	mv	a1,sp
	mv	a0,s0
	call	wpa_aes_encrypt
.LVL17:
	.loc 1 129 3 discriminator 2
	li	a2,16
	mv	a1,sp
	mv	a0,s3
	call	memcpy
.LVL18:
	.loc 1 130 3 discriminator 2
	.loc 1 125 26 discriminator 2
	.loc 1 125 27 is_stmt 0 discriminator 2
	addi	s2,s2,1
.LVL19:
	j	.L3
.LVL20:
.L6:
	.loc 1 121 10
	li	a0,-1
.LVL21:
	j	.L1
	.cfi_endproc
.LFE69:
	.size	aes_128_cbc_encrypt, .-aes_128_cbc_encrypt
	.section	.text.aes_128_cbc_decrypt,"ax",@progbits
	.align	1
	.globl	aes_128_cbc_decrypt
	.type	aes_128_cbc_decrypt, @function
aes_128_cbc_decrypt:
.LFB70:
	.loc 1 147 1 is_stmt 1
	.cfi_startproc
.LVL22:
	.loc 1 148 2
	.loc 1 149 2
	.loc 1 150 2
	.loc 1 147 1 is_stmt 0
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	s0,56(sp)
	.cfi_offset 8, -8
	mv	s0,a1
	.loc 1 153 8
	li	a1,16
.LVL23:
	.loc 1 147 1
	sw	s2,48(sp)
	sw	s4,40(sp)
	sw	ra,60(sp)
	sw	s1,52(sp)
	sw	s3,44(sp)
	.cfi_offset 18, -16
	.cfi_offset 20, -24
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	.cfi_offset 19, -20
	.loc 1 147 1
	mv	s4,a2
.LVL24:
	.loc 1 151 2 is_stmt 1
	.loc 1 153 2
	.loc 1 147 1 is_stmt 0
	mv	s2,a3
	.loc 1 153 8
	call	wpa_aes_decrypt_init
.LVL25:
	.loc 1 154 2 is_stmt 1
	.loc 1 154 5 is_stmt 0
	beq	a0,zero,.L14
	mv	s1,a0
	.loc 1 156 2 is_stmt 1
	li	a2,16
	mv	a1,s0
	mv	a0,sp
.LVL26:
	call	memcpy
.LVL27:
	.loc 1 158 2
	.loc 1 158 20 is_stmt 0
	srli	s2,s2,4
.LVL28:
	.loc 1 159 2 is_stmt 1
	.loc 1 159 9 is_stmt 0
	li	s3,0
.LVL29:
.L11:
	slli	s0,s3,4
	add	s0,s4,s0
.LVL30:
	.loc 1 159 14 is_stmt 1 discriminator 1
	.loc 1 159 2 is_stmt 0 discriminator 1
	blt	s3,s2,.L13
	.loc 1 167 5 is_stmt 1
	mv	a0,s1
	call	wpa_aes_decrypt_deinit
.LVL31:
	.loc 1 168 2
	.loc 1 168 9 is_stmt 0
	li	a0,0
.LVL32:
.L9:
	.loc 1 169 1
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
	lw	s4,40(sp)
	.cfi_restore 20
.LVL33:
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
.LVL34:
.L13:
	.cfi_restore_state
	.loc 1 160 3 is_stmt 1
	li	a2,16
	mv	a1,s0
	addi	a0,sp,16
	call	memcpy
.LVL35:
	.loc 1 161 9
	mv	a2,s0
	mv	a1,s0
	mv	a0,s1
	call	wpa_aes_decrypt
.LVL36:
	.loc 1 162 3
	.loc 1 162 15
	.loc 1 162 10 is_stmt 0
	li	a5,0
	.loc 1 162 3
	li	a2,16
.LVL37:
.L12:
	.loc 1 163 4 is_stmt 1 discriminator 3
	add	a3,s0,a5
	.loc 1 163 17 is_stmt 0 discriminator 3
	add	a4,sp,a5
	.loc 1 163 11 discriminator 3
	lbu	a1,0(a3)
	lbu	a4,0(a4)
	.loc 1 162 24 discriminator 3
	addi	a5,a5,1
.LVL38:
	.loc 1 163 11 discriminator 3
	xor	a4,a4,a1
	sb	a4,0(a3)
	.loc 1 162 23 is_stmt 1 discriminator 3
.LVL39:
	.loc 1 162 15 discriminator 3
	.loc 1 162 3 is_stmt 0 discriminator 3
	bne	a5,a2,.L12
	.loc 1 164 3 is_stmt 1 discriminator 2
	li	a2,16
	addi	a1,sp,16
	mv	a0,sp
	call	memcpy
.LVL40:
	.loc 1 165 3 discriminator 2
	.loc 1 159 26 discriminator 2
	.loc 1 159 27 is_stmt 0 discriminator 2
	addi	s3,s3,1
.LVL41:
	j	.L11
.LVL42:
.L14:
	.loc 1 155 10
	li	a0,-1
.LVL43:
	j	.L9
	.cfi_endproc
.LFE70:
	.size	aes_128_cbc_decrypt, .-aes_128_cbc_decrypt
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
	.4byte	0x3be
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF25
	.byte	0xc
	.4byte	.LASF26
	.4byte	.LASF27
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.4byte	.LASF2
	.byte	0x2
	.byte	0xd1
	.byte	0x16
	.4byte	0x31
	.byte	0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1
	.byte	0x2
	.4byte	.LASF3
	.byte	0x3
	.byte	0x2b
	.byte	0x17
	.4byte	0x52
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF4
	.byte	0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF5
	.byte	0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF6
	.byte	0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.byte	0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.byte	0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF9
	.byte	0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.byte	0x5
	.byte	0x4
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF11
	.byte	0x2
	.4byte	.LASF12
	.byte	0x4
	.byte	0x18
	.byte	0x13
	.4byte	0x46
	.byte	0x6
	.string	"u8"
	.byte	0x7
	.byte	0x16
	.byte	0x11
	.4byte	0x8c
	.byte	0x7
	.4byte	0x98
	.byte	0x8
	.byte	0x4
	.4byte	0x98
	.byte	0x9
	.4byte	.LASF16
	.byte	0x1
	.byte	0x92
	.byte	0x1
	.4byte	0x38
	.4byte	.LFB70
	.4byte	.LFE70-.LFB70
	.byte	0x1
	.byte	0x9c
	.4byte	0x219
	.byte	0xa
	.string	"key"
	.byte	0x1
	.byte	0x92
	.byte	0x1f
	.4byte	0x219
	.4byte	.LLST9
	.byte	0xa
	.string	"iv"
	.byte	0x1
	.byte	0x92
	.byte	0x2e
	.4byte	0x219
	.4byte	.LLST10
	.byte	0xb
	.4byte	.LASF13
	.byte	0x1
	.byte	0x92
	.byte	0x36
	.4byte	0xa8
	.4byte	.LLST11
	.byte	0xb
	.4byte	.LASF14
	.byte	0x1
	.byte	0x92
	.byte	0x43
	.4byte	0x25
	.4byte	.LLST12
	.byte	0xc
	.string	"ctx"
	.byte	0x1
	.byte	0x94
	.byte	0x8
	.4byte	0x83
	.4byte	.LLST13
	.byte	0xd
	.string	"cbc"
	.byte	0x1
	.byte	0x95
	.byte	0x5
	.4byte	0x21f
	.byte	0x2
	.byte	0x91
	.byte	0x40
	.byte	0xd
	.string	"tmp"
	.byte	0x1
	.byte	0x95
	.byte	0xe
	.4byte	0x21f
	.byte	0x2
	.byte	0x91
	.byte	0x50
	.byte	0xc
	.string	"pos"
	.byte	0x1
	.byte	0x96
	.byte	0x6
	.4byte	0xa8
	.4byte	.LLST14
	.byte	0xc
	.string	"i"
	.byte	0x1
	.byte	0x97
	.byte	0x6
	.4byte	0x38
	.4byte	.LLST15
	.byte	0xc
	.string	"j"
	.byte	0x1
	.byte	0x97
	.byte	0x9
	.4byte	0x38
	.4byte	.LLST16
	.byte	0xe
	.4byte	.LASF15
	.byte	0x1
	.byte	0x97
	.byte	0xc
	.4byte	0x38
	.4byte	.LLST17
	.byte	0xf
	.4byte	.LVL25
	.4byte	0x36d
	.4byte	0x18b
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x40
	.byte	0
	.byte	0xf
	.4byte	.LVL27
	.4byte	0x379
	.4byte	0x1aa
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x72
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
	.byte	0x1
	.byte	0x40
	.byte	0
	.byte	0xf
	.4byte	.LVL31
	.4byte	0x385
	.4byte	0x1be
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0xf
	.4byte	.LVL35
	.4byte	0x379
	.4byte	0x1dd
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x50
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x10
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x40
	.byte	0
	.byte	0xf
	.4byte	.LVL36
	.4byte	0x391
	.4byte	0x1fd
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
	.byte	0x78
	.byte	0
	.byte	0x10
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x11
	.4byte	.LVL40
	.4byte	0x379
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x50
	.byte	0x10
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x40
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0x4
	.4byte	0xa3
	.byte	0x12
	.4byte	0x98
	.4byte	0x22f
	.byte	0x13
	.4byte	0x31
	.byte	0xf
	.byte	0
	.byte	0x9
	.4byte	.LASF17
	.byte	0x1
	.byte	0x70
	.byte	0x1
	.4byte	0x38
	.4byte	.LFB69
	.4byte	.LFE69-.LFB69
	.byte	0x1
	.byte	0x9c
	.4byte	0x36d
	.byte	0xa
	.string	"key"
	.byte	0x1
	.byte	0x70
	.byte	0x1f
	.4byte	0x219
	.4byte	.LLST0
	.byte	0xa
	.string	"iv"
	.byte	0x1
	.byte	0x70
	.byte	0x2e
	.4byte	0x219
	.4byte	.LLST1
	.byte	0xb
	.4byte	.LASF13
	.byte	0x1
	.byte	0x70
	.byte	0x36
	.4byte	0xa8
	.4byte	.LLST2
	.byte	0xb
	.4byte	.LASF14
	.byte	0x1
	.byte	0x70
	.byte	0x43
	.4byte	0x25
	.4byte	.LLST3
	.byte	0xc
	.string	"ctx"
	.byte	0x1
	.byte	0x72
	.byte	0x8
	.4byte	0x83
	.4byte	.LLST4
	.byte	0xd
	.string	"cbc"
	.byte	0x1
	.byte	0x73
	.byte	0x5
	.4byte	0x21f
	.byte	0x2
	.byte	0x91
	.byte	0x50
	.byte	0xc
	.string	"pos"
	.byte	0x1
	.byte	0x74
	.byte	0x6
	.4byte	0xa8
	.4byte	.LLST5
	.byte	0xc
	.string	"i"
	.byte	0x1
	.byte	0x75
	.byte	0x6
	.4byte	0x38
	.4byte	.LLST6
	.byte	0xc
	.string	"j"
	.byte	0x1
	.byte	0x75
	.byte	0x9
	.4byte	0x38
	.4byte	.LLST7
	.byte	0xe
	.4byte	.LASF15
	.byte	0x1
	.byte	0x75
	.byte	0xc
	.4byte	0x38
	.4byte	.LLST8
	.byte	0xf
	.4byte	.LVL3
	.4byte	0x39d
	.4byte	0x2fd
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x40
	.byte	0
	.byte	0xf
	.4byte	.LVL5
	.4byte	0x379
	.4byte	0x31c
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x72
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
	.byte	0x40
	.byte	0
	.byte	0xf
	.4byte	.LVL10
	.4byte	0x3a9
	.4byte	0x330
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0xf
	.4byte	.LVL17
	.4byte	0x3b5
	.4byte	0x350
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
	.byte	0x72
	.byte	0
	.byte	0x10
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0
	.byte	0x11
	.4byte	.LVL18
	.4byte	0x379
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0x10
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0
	.byte	0
	.byte	0x14
	.4byte	.LASF18
	.4byte	.LASF18
	.byte	0x5
	.byte	0x1a
	.byte	0x8
	.byte	0x14
	.4byte	.LASF19
	.4byte	.LASF19
	.byte	0x6
	.byte	0x1f
	.byte	0x8
	.byte	0x14
	.4byte	.LASF20
	.4byte	.LASF20
	.byte	0x5
	.byte	0x1c
	.byte	0x6
	.byte	0x14
	.4byte	.LASF21
	.4byte	.LASF21
	.byte	0x5
	.byte	0x1b
	.byte	0x6
	.byte	0x14
	.4byte	.LASF22
	.4byte	.LASF22
	.byte	0x5
	.byte	0x17
	.byte	0x8
	.byte	0x14
	.4byte	.LASF23
	.4byte	.LASF23
	.byte	0x5
	.byte	0x19
	.byte	0x6
	.byte	0x14
	.4byte	.LASF24
	.4byte	.LASF24
	.byte	0x5
	.byte	0x18
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
	.byte	0
	.byte	0
	.byte	0x6
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
	.byte	0x7
	.byte	0x26
	.byte	0
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
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0xe
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
	.byte	0xf
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
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x12
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x13
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x14
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
.LLST9:
	.4byte	.LVL22
	.4byte	.LVL25-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL25-1
	.4byte	.LFE70
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL23
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL29
	.4byte	.LVL42
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL42
	.4byte	.LFE70
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL22
	.4byte	.LVL25-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL25-1
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LFE70
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL22
	.4byte	.LVL25-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL25-1
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL28
	.4byte	.LVL42
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL42
	.4byte	.LFE70
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL26
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL34
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL24
	.4byte	.LVL25-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL25-1
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL30
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL34
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0xa
	.byte	0x83
	.byte	0
	.byte	0x34
	.byte	0x24
	.byte	0x84
	.byte	0
	.byte	0x22
	.byte	0x23
	.byte	0x10
	.byte	0x9f
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0xa
	.byte	0x83
	.byte	0x7f
	.byte	0x34
	.byte	0x24
	.byte	0x84
	.byte	0
	.byte	0x22
	.byte	0x23
	.byte	0x10
	.byte	0x9f
	.4byte	.LVL42
	.4byte	.LFE70
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL34
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x3
	.byte	0x7f
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL39
	.4byte	.LVL40-1
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL28
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL34
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL3-1
	.4byte	.LFE69
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL1
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL7
	.4byte	.LVL20
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LFE69
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL3-1
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LFE69
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL0
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL3-1
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL6
	.4byte	.LVL20
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LFE69
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL4
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL13
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL2
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL3-1
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL9
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL13
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0xa
	.byte	0x82
	.byte	0
	.byte	0x34
	.byte	0x24
	.byte	0x84
	.byte	0
	.byte	0x22
	.byte	0x23
	.byte	0x10
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0xa
	.byte	0x82
	.byte	0x7f
	.byte	0x34
	.byte	0x24
	.byte	0x84
	.byte	0
	.byte	0x22
	.byte	0x23
	.byte	0x10
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LFE69
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL6
	.4byte	.LVL8
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL13
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x3
	.byte	0x7f
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL17-1
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL6
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL13
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x24
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB69
	.4byte	.LFE69-.LFB69
	.4byte	.LFB70
	.4byte	.LFE70-.LFB70
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB69
	.4byte	.LFE69
	.4byte	.LFB70
	.4byte	.LFE70
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF3:
	.string	"__uint8_t"
.LASF2:
	.string	"size_t"
.LASF18:
	.string	"wpa_aes_decrypt_init"
.LASF26:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/crypto/aes-cbc.c"
.LASF16:
	.string	"aes_128_cbc_decrypt"
.LASF17:
	.string	"aes_128_cbc_encrypt"
.LASF14:
	.string	"data_len"
.LASF13:
	.string	"data"
.LASF1:
	.string	"signed char"
.LASF20:
	.string	"wpa_aes_decrypt_deinit"
.LASF4:
	.string	"unsigned char"
.LASF8:
	.string	"long unsigned int"
.LASF6:
	.string	"short unsigned int"
.LASF27:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/wpa_supplicant"
.LASF24:
	.string	"wpa_aes_encrypt"
.LASF0:
	.string	"unsigned int"
.LASF10:
	.string	"long long unsigned int"
.LASF12:
	.string	"uint8_t"
.LASF21:
	.string	"wpa_aes_decrypt"
.LASF15:
	.string	"blocks"
.LASF22:
	.string	"wpa_aes_encrypt_init"
.LASF9:
	.string	"long long int"
.LASF25:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
.LASF11:
	.string	"char"
.LASF19:
	.string	"memcpy"
.LASF5:
	.string	"short int"
.LASF7:
	.string	"long int"
.LASF23:
	.string	"wpa_aes_encrypt_deinit"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
