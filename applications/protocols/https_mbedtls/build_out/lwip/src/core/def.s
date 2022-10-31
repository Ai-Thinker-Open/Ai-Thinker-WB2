	.file	"def.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.lwip_htons,"ax",@progbits
	.align	1
	.globl	lwip_htons
	.type	lwip_htons, @function
lwip_htons:
.LFB5:
	.file 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/core/def.c"
	.loc 1 77 1
	.cfi_startproc
.LVL0:
	.loc 1 78 3
	.loc 1 78 11 is_stmt 0
	slli	a5,a0,8
	srli	a0,a0,8
.LVL1:
	or	a0,a5,a0
	.loc 1 79 1
	slli	a0,a0,16
	srli	a0,a0,16
	ret
	.cfi_endproc
.LFE5:
	.size	lwip_htons, .-lwip_htons
	.section	.text.lwip_htonl,"ax",@progbits
	.align	1
	.globl	lwip_htonl
	.type	lwip_htonl, @function
lwip_htonl:
.LFB6:
	.loc 1 91 1 is_stmt 1
	.cfi_startproc
.LVL2:
	.loc 1 92 3
	.loc 1 92 152 is_stmt 0
	srli	a4,a0,24
	.loc 1 92 40
	slli	a5,a0,24
	.loc 1 92 121
	or	a5,a5,a4
	.loc 1 92 78
	li	a3,16711680
	slli	a4,a0,8
	and	a4,a4,a3
	.loc 1 92 121
	or	a5,a5,a4
	.loc 1 92 115
	li	a4,65536
	addi	a4,a4,-256
	srli	a0,a0,8
.LVL3:
	and	a0,a0,a4
	.loc 1 93 1
	or	a0,a5,a0
	ret
	.cfi_endproc
.LFE6:
	.size	lwip_htonl, .-lwip_htonl
	.section	.text.lwip_strnstr,"ax",@progbits
	.align	1
	.globl	lwip_strnstr
	.type	lwip_strnstr, @function
lwip_strnstr:
.LFB7:
	.loc 1 106 1 is_stmt 1
	.cfi_startproc
.LVL4:
	.loc 1 107 3
	.loc 1 108 3
	.loc 1 106 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	.cfi_offset 8, -8
	mv	s0,a0
	.loc 1 108 21
	mv	a0,a1
.LVL5:
	.loc 1 106 1
	sw	s1,20(sp)
	sw	s3,12(sp)
	sw	ra,28(sp)
	sw	s2,16(sp)
	.cfi_offset 9, -12
	.cfi_offset 19, -20
	.cfi_offset 1, -4
	.cfi_offset 18, -16
	.loc 1 106 1
	mv	s3,a1
	mv	s1,a2
	.loc 1 108 21
	call	strlen
.LVL6:
	.loc 1 109 3 is_stmt 1
	.loc 1 109 6 is_stmt 0
	beq	a0,zero,.L3
	mv	s2,a0
	.loc 1 112 50
	add	s1,s0,s1
.LVL7:
.L5:
	.loc 1 112 20 is_stmt 1 discriminator 1
	lbu	a5,0(s0)
	.loc 1 112 3 is_stmt 0 discriminator 1
	beq	a5,zero,.L10
	.loc 1 112 23 discriminator 3
	add	a4,s0,s2
	bgeu	s1,a4,.L8
.L10:
	.loc 1 117 9
	li	s0,0
.LVL8:
	j	.L3
.LVL9:
.L8:
	.loc 1 113 5 is_stmt 1
	.loc 1 113 8 is_stmt 0
	lbu	a4,0(s3)
	beq	a4,a5,.L6
.L7:
	.loc 1 112 56 is_stmt 1
	.loc 1 112 57 is_stmt 0
	addi	s0,s0,1
.LVL10:
	j	.L5
.L6:
	.loc 1 113 28 discriminator 1
	mv	a2,s2
	mv	a1,s3
	mv	a0,s0
	call	strncmp
.LVL11:
	.loc 1 113 24 discriminator 1
	bne	a0,zero,.L7
.LVL12:
.L3:
	.loc 1 118 1
	lw	ra,28(sp)
	.cfi_restore 1
	mv	a0,s0
	lw	s0,24(sp)
	.cfi_restore 8
	lw	s1,20(sp)
	.cfi_restore 9
	lw	s2,16(sp)
	.cfi_restore 18
	lw	s3,12(sp)
	.cfi_restore 19
.LVL13:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE7:
	.size	lwip_strnstr, .-lwip_strnstr
	.section	.text.lwip_stricmp,"ax",@progbits
	.align	1
	.globl	lwip_stricmp
	.type	lwip_stricmp, @function
lwip_stricmp:
.LFB8:
	.loc 1 129 1 is_stmt 1
	.cfi_startproc
.LVL14:
.LBB2:
	.loc 1 137 10 is_stmt 0
	li	a6,25
.L18:
.LBE2:
	.loc 1 130 3 is_stmt 1
	.loc 1 132 3
	.loc 1 133 5
	.loc 1 133 8 is_stmt 0
	lbu	a4,0(a0)
	.loc 1 134 8
	lbu	a5,0(a1)
	.loc 1 133 15
	addi	a0,a0,1
.LVL15:
	.loc 1 134 5 is_stmt 1
	.loc 1 134 15 is_stmt 0
	addi	a1,a1,1
.LVL16:
	.loc 1 135 5 is_stmt 1
	.loc 1 135 8 is_stmt 0
	beq	a4,a5,.L16
.LBB4:
	.loc 1 136 7 is_stmt 1
	.loc 1 136 12 is_stmt 0
	ori	a2,a4,32
.LVL17:
	.loc 1 137 7 is_stmt 1
	.loc 1 137 27 is_stmt 0
	addi	a3,a2,-97
	.loc 1 137 10
	andi	a3,a3,0xff
	bgtu	a3,a6,.L20
.LBB3:
	.loc 1 140 9 is_stmt 1
.LVL18:
	.loc 1 141 9
	.loc 1 141 12 is_stmt 0
	ori	a5,a5,32
.LVL19:
	bne	a2,a5,.L20
.LVL20:
.L16:
.LBE3:
.LBE4:
	.loc 1 151 11 is_stmt 1
	.loc 1 151 3 is_stmt 0
	bne	a4,zero,.L18
	.loc 1 152 10
	li	a0,0
.LVL21:
	ret
.LVL22:
.L20:
.LBB5:
	.loc 1 148 16
	li	a0,1
.LVL23:
.LBE5:
	.loc 1 153 1
	ret
	.cfi_endproc
.LFE8:
	.size	lwip_stricmp, .-lwip_stricmp
	.section	.text.lwip_strnicmp,"ax",@progbits
	.align	1
	.globl	lwip_strnicmp
	.type	lwip_strnicmp, @function
lwip_strnicmp:
.LFB9:
	.loc 1 164 1 is_stmt 1
	.cfi_startproc
.LVL24:
	addi	a2,a2,-1
.LVL25:
	.loc 1 164 1 is_stmt 0
	li	a5,0
.LBB6:
	.loc 1 172 10
	li	t1,25
.LVL26:
.L25:
.LBE6:
	.loc 1 165 3 is_stmt 1
	.loc 1 167 3
	.loc 1 168 5
	.loc 1 168 8 is_stmt 0
	add	a4,a0,a5
	lbu	a3,0(a4)
.LVL27:
	.loc 1 169 5 is_stmt 1
	.loc 1 169 8 is_stmt 0
	add	a4,a1,a5
	lbu	a4,0(a4)
.LVL28:
	.loc 1 170 5 is_stmt 1
	.loc 1 170 8 is_stmt 0
	beq	a3,a4,.L23
.LBB8:
	.loc 1 171 7 is_stmt 1
	.loc 1 171 12 is_stmt 0
	ori	a7,a3,32
.LVL29:
	.loc 1 172 7 is_stmt 1
	.loc 1 172 27 is_stmt 0
	addi	a6,a7,-97
	.loc 1 172 10
	andi	a6,a6,0xff
	bgtu	a6,t1,.L27
.LBB7:
	.loc 1 175 9 is_stmt 1
.LVL30:
	.loc 1 176 9
	.loc 1 176 12 is_stmt 0
	ori	a4,a4,32
.LVL31:
	bne	a7,a4,.L27
.LVL32:
.L23:
.LBE7:
.LBE8:
	.loc 1 186 5 is_stmt 1
	.loc 1 187 11
	.loc 1 187 3 is_stmt 0
	beq	a2,a5,.L28
	.loc 1 187 23 discriminator 1
	addi	a5,a5,1
.LVL33:
	bne	a3,zero,.L25
.LVL34:
.L28:
	.loc 1 188 10
	li	a0,0
	.loc 1 189 1
	ret
.LVL35:
.L27:
.LBB9:
	.loc 1 183 16
	li	a0,1
.LVL36:
	ret
.LBE9:
	.cfi_endproc
.LFE9:
	.size	lwip_strnicmp, .-lwip_strnicmp
	.section	.text.lwip_itoa,"ax",@progbits
	.align	1
	.globl	lwip_itoa
	.type	lwip_itoa, @function
lwip_itoa:
.LFB10:
	.loc 1 200 1 is_stmt 1
	.cfi_startproc
.LVL37:
	.loc 1 201 3
	.loc 1 202 3
	.loc 1 203 3
	.loc 1 206 3
	.loc 1 206 6 is_stmt 0
	li	a5,1
	.loc 1 200 1
	mv	a4,a0
	mv	a3,a1
	.loc 1 206 6
	bgtu	a1,a5,.L31
	.loc 1 207 5 is_stmt 1
	.loc 1 207 8 is_stmt 0
	bne	a1,a5,.L30
.LVL38:
.L37:
	.loc 1 208 7 is_stmt 1
	.loc 1 208 15 is_stmt 0
	sb	zero,0(a4)
	ret
.LVL39:
.L31:
	.loc 1 214 3 is_stmt 1
	.loc 1 214 6 is_stmt 0
	bge	a2,zero,.L33
	.loc 1 215 5 is_stmt 1
	.loc 1 215 12 is_stmt 0
	li	a5,45
	.loc 1 215 9
	addi	a0,a0,1
.LVL40:
	.loc 1 215 12
	sb	a5,0(a4)
.L33:
	.loc 1 202 32
	addi	a5,a3,-1
	.loc 1 202 9
	add	a1,a4,a5
.LVL41:
	.loc 1 203 7
	srai	a5,a2,31
	xor	a2,a5,a2
.LVL42:
	sub	a2,a2,a5
	.loc 1 219 3 is_stmt 1
	.loc 1 219 8 is_stmt 0
	sb	zero,0(a1)
	.loc 1 220 3 is_stmt 1
.LBB10:
	.loc 1 221 32 is_stmt 0
	li	a6,10
.LVL43:
.L34:
.LBE10:
	.loc 1 220 9 is_stmt 1
	beq	a2,zero,.L35
	.loc 1 220 19 is_stmt 0 discriminator 1
	bgeu	a0,a1,.L37
.LBB11:
	.loc 1 221 5 is_stmt 1
.LVL44:
	.loc 1 222 5
	.loc 1 221 32 is_stmt 0
	rem	a5,a2,a6
	.loc 1 222 8
	addi	a1,a1,-1
.LVL45:
	.loc 1 223 5 is_stmt 1
	.loc 1 221 10 is_stmt 0
	addi	a5,a5,48
	.loc 1 224 7
	div	a2,a2,a6
.LVL46:
	.loc 1 223 10
	sb	a5,0(a1)
	.loc 1 224 5 is_stmt 1
.LVL47:
	j	.L34
.L38:
.LBE11:
	.loc 1 233 5
.LVL48:
	.loc 1 233 12 is_stmt 0
	li	a5,48
	sb	a5,0(a0)
	.loc 1 234 5 is_stmt 1
.LVL49:
	.loc 1 234 12 is_stmt 0
	sb	zero,1(a0)
	.loc 1 235 5 is_stmt 1
	ret
.LVL50:
.L35:
	.loc 1 226 3
	.loc 1 231 3
	.loc 1 231 6 is_stmt 0
	lbu	a5,0(a1)
	beq	a5,zero,.L38
	.loc 1 238 3 is_stmt 1
	.loc 1 238 38 is_stmt 0
	add	a2,a4,a3
.LVL51:
	.loc 1 238 3
	sub	a2,a2,a1
	tail	memmove
.LVL52:
.L30:
	.loc 1 239 1
	ret
	.cfi_endproc
.LFE10:
	.size	lwip_itoa, .-lwip_itoa
	.text
.Letext0:
	.file 2 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 3 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h"
	.file 4 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 5 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/arch.h"
	.file 6 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x3a3
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF36
	.byte	0xc
	.4byte	.LASF37
	.4byte	.LASF38
	.4byte	.Ldebug_ranges0+0x58
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.byte	0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.byte	0x4
	.4byte	.LASF5
	.byte	0x2
	.byte	0x39
	.byte	0x1c
	.4byte	0x4d
	.byte	0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.byte	0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF4
	.byte	0x4
	.4byte	.LASF6
	.byte	0x2
	.byte	0x4f
	.byte	0x1b
	.4byte	0x67
	.byte	0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.byte	0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.byte	0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.byte	0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.byte	0x4
	.4byte	.LASF11
	.byte	0x3
	.byte	0xd1
	.byte	0x16
	.4byte	0x7c
	.byte	0x4
	.4byte	.LASF12
	.byte	0x3
	.byte	0x8f
	.byte	0xd
	.4byte	0x25
	.byte	0x5
	.byte	0x4
	.4byte	0xa1
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.byte	0x6
	.4byte	0xa1
	.byte	0x5
	.byte	0x4
	.4byte	0xa8
	.byte	0x4
	.4byte	.LASF14
	.byte	0x4
	.byte	0x24
	.byte	0x14
	.4byte	0x41
	.byte	0x4
	.4byte	.LASF15
	.byte	0x4
	.byte	0x30
	.byte	0x14
	.4byte	0x5b
	.byte	0x4
	.4byte	.LASF16
	.byte	0x5
	.byte	0x7f
	.byte	0x12
	.4byte	0xb3
	.byte	0x4
	.4byte	.LASF17
	.byte	0x5
	.byte	0x81
	.byte	0x12
	.4byte	0xbf
	.byte	0x7
	.4byte	.LASF39
	.byte	0x1
	.byte	0xc7
	.byte	0x1
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x1
	.byte	0x9c
	.4byte	0x17b
	.byte	0x8
	.4byte	.LASF18
	.byte	0x1
	.byte	0xc7
	.byte	0x11
	.4byte	0x9b
	.4byte	.LLST18
	.byte	0x8
	.4byte	.LASF19
	.byte	0x1
	.byte	0xc7
	.byte	0x20
	.4byte	0x83
	.4byte	.LLST19
	.byte	0x8
	.4byte	.LASF20
	.byte	0x1
	.byte	0xc7
	.byte	0x2d
	.4byte	0x25
	.4byte	.LLST20
	.byte	0x9
	.string	"res"
	.byte	0x1
	.byte	0xc9
	.byte	0x9
	.4byte	0x9b
	.4byte	.LLST21
	.byte	0x9
	.string	"tmp"
	.byte	0x1
	.byte	0xca
	.byte	0x9
	.4byte	0x9b
	.4byte	.LLST22
	.byte	0x9
	.string	"n"
	.byte	0x1
	.byte	0xcb
	.byte	0x7
	.4byte	0x25
	.4byte	.LLST23
	.byte	0xa
	.4byte	.Ldebug_ranges0+0x40
	.4byte	0x171
	.byte	0x9
	.string	"val"
	.byte	0x1
	.byte	0xdd
	.byte	0xa
	.4byte	0xa1
	.4byte	.LLST24
	.byte	0
	.byte	0xb
	.4byte	.LVL52
	.4byte	0x382
	.byte	0
	.byte	0xc
	.4byte	.LASF25
	.byte	0x1
	.byte	0xa3
	.byte	0x1
	.4byte	0x25
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0x212
	.byte	0x8
	.4byte	.LASF21
	.byte	0x1
	.byte	0xa3
	.byte	0x1b
	.4byte	0xad
	.4byte	.LLST12
	.byte	0x8
	.4byte	.LASF22
	.byte	0x1
	.byte	0xa3
	.byte	0x2d
	.4byte	0xad
	.4byte	.LLST13
	.byte	0xd
	.string	"len"
	.byte	0x1
	.byte	0xa3
	.byte	0x3a
	.4byte	0x83
	.4byte	.LLST14
	.byte	0xe
	.string	"c1"
	.byte	0x1
	.byte	0xa5
	.byte	0x8
	.4byte	0xa1
	.byte	0x1
	.byte	0x5d
	.byte	0x9
	.string	"c2"
	.byte	0x1
	.byte	0xa5
	.byte	0xc
	.4byte	0xa1
	.4byte	.LLST15
	.byte	0xf
	.4byte	.Ldebug_ranges0+0x20
	.byte	0x10
	.4byte	.LASF23
	.byte	0x1
	.byte	0xab
	.byte	0xc
	.4byte	0xa1
	.4byte	.LLST16
	.byte	0x11
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.byte	0x10
	.4byte	.LASF24
	.byte	0x1
	.byte	0xaf
	.byte	0xe
	.4byte	0xa1
	.4byte	.LLST17
	.byte	0
	.byte	0
	.byte	0
	.byte	0xc
	.4byte	.LASF26
	.byte	0x1
	.byte	0x80
	.byte	0x1
	.4byte	0x25
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0x299
	.byte	0x8
	.4byte	.LASF21
	.byte	0x1
	.byte	0x80
	.byte	0x1a
	.4byte	0xad
	.4byte	.LLST7
	.byte	0x8
	.4byte	.LASF22
	.byte	0x1
	.byte	0x80
	.byte	0x2c
	.4byte	0xad
	.4byte	.LLST8
	.byte	0xe
	.string	"c1"
	.byte	0x1
	.byte	0x82
	.byte	0x8
	.4byte	0xa1
	.byte	0x1
	.byte	0x5e
	.byte	0x9
	.string	"c2"
	.byte	0x1
	.byte	0x82
	.byte	0xc
	.4byte	0xa1
	.4byte	.LLST9
	.byte	0xf
	.4byte	.Ldebug_ranges0+0
	.byte	0x10
	.4byte	.LASF23
	.byte	0x1
	.byte	0x88
	.byte	0xc
	.4byte	0xa1
	.4byte	.LLST10
	.byte	0x11
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.byte	0x10
	.4byte	.LASF24
	.byte	0x1
	.byte	0x8c
	.byte	0xe
	.4byte	0xa1
	.4byte	.LLST11
	.byte	0
	.byte	0
	.byte	0
	.byte	0xc
	.4byte	.LASF27
	.byte	0x1
	.byte	0x69
	.byte	0x1
	.4byte	0x9b
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.4byte	0x330
	.byte	0x8
	.4byte	.LASF28
	.byte	0x1
	.byte	0x69
	.byte	0x1a
	.4byte	0xad
	.4byte	.LLST2
	.byte	0x8
	.4byte	.LASF29
	.byte	0x1
	.byte	0x69
	.byte	0x2e
	.4byte	0xad
	.4byte	.LLST3
	.byte	0xd
	.string	"n"
	.byte	0x1
	.byte	0x69
	.byte	0x3c
	.4byte	0x83
	.4byte	.LLST4
	.byte	0x9
	.string	"p"
	.byte	0x1
	.byte	0x6b
	.byte	0xf
	.4byte	0xad
	.4byte	.LLST5
	.byte	0x10
	.4byte	.LASF30
	.byte	0x1
	.byte	0x6c
	.byte	0xa
	.4byte	0x83
	.4byte	.LLST6
	.byte	0x12
	.4byte	.LVL6
	.4byte	0x38e
	.4byte	0x313
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0
	.byte	0x14
	.4byte	.LVL11
	.4byte	0x39a
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x13
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x13
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0
	.byte	0xc
	.4byte	.LASF31
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.4byte	0xd7
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0x359
	.byte	0xd
	.string	"n"
	.byte	0x1
	.byte	0x5a
	.byte	0x12
	.4byte	0xd7
	.4byte	.LLST1
	.byte	0
	.byte	0xc
	.4byte	.LASF32
	.byte	0x1
	.byte	0x4c
	.byte	0x1
	.4byte	0xcb
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0x382
	.byte	0xd
	.string	"n"
	.byte	0x1
	.byte	0x4c
	.byte	0x12
	.4byte	0xcb
	.4byte	.LLST0
	.byte	0
	.byte	0x15
	.4byte	.LASF33
	.4byte	.LASF33
	.byte	0x6
	.byte	0x20
	.byte	0x8
	.byte	0x15
	.4byte	.LASF34
	.4byte	.LASF34
	.byte	0x6
	.byte	0x29
	.byte	0x8
	.byte	0x15
	.4byte	.LASF35
	.4byte	.LASF35
	.byte	0x6
	.byte	0x2b
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
	.byte	0x8
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
	.byte	0x8
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
	.byte	0x9
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
	.byte	0xa
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xb
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x95,0x42
	.byte	0x19
	.byte	0x31
	.byte	0x13
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
	.byte	0xd
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
	.byte	0xe
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
	.byte	0xf
	.byte	0xb
	.byte	0x1
	.byte	0x55
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
	.byte	0xb
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
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
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x14
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x15
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
.LLST18:
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL40
	.4byte	.LVL52-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL52-1
	.4byte	.LVL52
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL52
	.4byte	.LFE10
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL39
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL41
	.4byte	.LVL52-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL52-1
	.4byte	.LVL52
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL52
	.4byte	.LFE10
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL39
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL42
	.4byte	.LVL52
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL52
	.4byte	.LFE10
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL37
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x3
	.byte	0x7a
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x3
	.byte	0x7a
	.byte	0x2
	.byte	0x9f
	.4byte	.LVL50
	.4byte	.LVL52-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL52
	.4byte	.LFE10
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x8
	.byte	0x7a
	.byte	0
	.byte	0x7b
	.byte	0
	.byte	0x22
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x8
	.byte	0x7a
	.byte	0
	.byte	0x7b
	.byte	0
	.byte	0x22
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x8
	.byte	0x7e
	.byte	0
	.byte	0x7b
	.byte	0
	.byte	0x22
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL41
	.4byte	.LVL43
	.2byte	0x8
	.byte	0x7e
	.byte	0
	.byte	0x7d
	.byte	0
	.byte	0x22
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL43
	.4byte	.LVL52-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL52
	.4byte	.LFE10
	.2byte	0x8
	.byte	0x7a
	.byte	0
	.byte	0x7b
	.byte	0
	.byte	0x22
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x4
	.byte	0x7c
	.byte	0
	.byte	0x19
	.byte	0x9f
	.4byte	.LVL39
	.4byte	.LVL42
	.2byte	0x4
	.byte	0x7c
	.byte	0
	.byte	0x19
	.byte	0x9f
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x5
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x19
	.byte	0x9f
	.4byte	.LVL43
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL47
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL52
	.4byte	.LFE10
	.2byte	0x4
	.byte	0x7c
	.byte	0
	.byte	0x19
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL44
	.4byte	.LVL46
	.2byte	0xb
	.byte	0x7c
	.byte	0
	.byte	0x3a
	.byte	0x14
	.byte	0x14
	.byte	0x1b
	.byte	0x1e
	.byte	0x1c
	.byte	0x23
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL24
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL26
	.4byte	.LVL33
	.2byte	0x8
	.byte	0x7a
	.byte	0
	.byte	0x7f
	.byte	0
	.byte	0x22
	.byte	0x23
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x6
	.byte	0x7a
	.byte	0
	.byte	0x7f
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x8
	.byte	0x7a
	.byte	0
	.byte	0x7f
	.byte	0
	.byte	0x22
	.byte	0x23
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LFE9
	.2byte	0x9
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x7f
	.byte	0
	.byte	0x22
	.byte	0x23
	.byte	0x1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL24
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x6
	.byte	0x7b
	.byte	0
	.byte	0x7f
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LVL33
	.2byte	0x8
	.byte	0x7b
	.byte	0
	.byte	0x7f
	.byte	0
	.byte	0x22
	.byte	0x23
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x6
	.byte	0x7b
	.byte	0
	.byte	0x7f
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LFE9
	.2byte	0x8
	.byte	0x7b
	.byte	0
	.byte	0x7f
	.byte	0
	.byte	0x22
	.byte	0x23
	.byte	0x1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x3
	.byte	0x7c
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LVL32
	.2byte	0x8
	.byte	0x7c
	.byte	0
	.byte	0x7f
	.byte	0
	.byte	0x1c
	.byte	0x23
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x6
	.byte	0x7c
	.byte	0
	.byte	0x7f
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x8
	.byte	0x7c
	.byte	0
	.byte	0x7f
	.byte	0
	.byte	0x1c
	.byte	0x23
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LFE9
	.2byte	0x8
	.byte	0x7c
	.byte	0
	.byte	0x7f
	.byte	0
	.byte	0x1c
	.byte	0x23
	.byte	0x1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL28
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL31
	.4byte	.LVL33
	.2byte	0x5
	.byte	0x7b
	.byte	0
	.byte	0x7f
	.byte	0
	.byte	0x22
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x7
	.byte	0x7b
	.byte	0
	.byte	0x7f
	.byte	0
	.byte	0x22
	.byte	0x31
	.byte	0x1c
	.4byte	.LVL35
	.4byte	.LFE9
	.2byte	0x5
	.byte	0x7b
	.byte	0
	.byte	0x7f
	.byte	0
	.byte	0x22
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL29
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x61
	.4byte	.LVL35
	.4byte	.LFE9
	.2byte	0x1
	.byte	0x61
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x6
	.byte	0x7e
	.byte	0
	.byte	0x8
	.byte	0x20
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0xb
	.byte	0x7b
	.byte	0
	.byte	0x7f
	.byte	0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0x20
	.byte	0x21
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL15
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL14
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL16
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL16
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL19
	.4byte	.LFE8
	.2byte	0x2
	.byte	0x7b
	.byte	0x7f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL17
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL22
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x6
	.byte	0x7f
	.byte	0
	.byte	0x8
	.byte	0x20
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x8
	.byte	0x7b
	.byte	0x7f
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0x20
	.byte	0x21
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL5
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL7
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL4
	.4byte	.LVL6-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL6-1
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL13
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL4
	.4byte	.LVL6-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL6-1
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL7
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL9
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL7
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL3
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
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
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB2
	.4byte	.LBE2
	.4byte	.LBB4
	.4byte	.LBE4
	.4byte	.LBB5
	.4byte	.LBE5
	.4byte	0
	.4byte	0
	.4byte	.LBB6
	.4byte	.LBE6
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
	.4byte	0
	.4byte	0
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF33:
	.string	"memmove"
.LASF18:
	.string	"result"
.LASF27:
	.string	"lwip_strnstr"
.LASF30:
	.string	"tokenlen"
.LASF24:
	.string	"c2_upc"
.LASF34:
	.string	"strlen"
.LASF1:
	.string	"unsigned char"
.LASF7:
	.string	"long unsigned int"
.LASF3:
	.string	"short unsigned int"
.LASF11:
	.string	"size_t"
.LASF32:
	.string	"lwip_htons"
.LASF6:
	.string	"__uint32_t"
.LASF5:
	.string	"__uint16_t"
.LASF16:
	.string	"u16_t"
.LASF21:
	.string	"str1"
.LASF22:
	.string	"str2"
.LASF12:
	.string	"ptrdiff_t"
.LASF10:
	.string	"unsigned int"
.LASF38:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/lwip"
.LASF9:
	.string	"long long unsigned int"
.LASF19:
	.string	"bufsize"
.LASF29:
	.string	"token"
.LASF20:
	.string	"number"
.LASF8:
	.string	"long long int"
.LASF36:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
.LASF13:
	.string	"char"
.LASF25:
	.string	"lwip_strnicmp"
.LASF35:
	.string	"strncmp"
.LASF37:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/core/def.c"
.LASF2:
	.string	"short int"
.LASF39:
	.string	"lwip_itoa"
.LASF28:
	.string	"buffer"
.LASF14:
	.string	"uint16_t"
.LASF17:
	.string	"u32_t"
.LASF26:
	.string	"lwip_stricmp"
.LASF15:
	.string	"uint32_t"
.LASF4:
	.string	"long int"
.LASF0:
	.string	"signed char"
.LASF23:
	.string	"c1_upc"
.LASF31:
	.string	"lwip_htonl"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
