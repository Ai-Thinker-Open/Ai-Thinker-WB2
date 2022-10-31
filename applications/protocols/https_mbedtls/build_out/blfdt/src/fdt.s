	.file	"fdt.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.fdt32_ld,"ax",@progbits
	.align	1
	.type	fdt32_ld, @function
fdt32_ld:
.LFB8:
	.file 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/blfdt/inc/libfdt.h"
	.loc 1 165 1
	.cfi_startproc
.LVL0:
	.loc 1 166 5
	.loc 1 168 5
	.loc 1 168 13 is_stmt 0
	lbu	a5,0(a0)
	.loc 1 169 12
	lbu	a4,1(a0)
	.loc 1 168 29
	slli	a5,a5,24
	.loc 1 169 28
	slli	a4,a4,16
	.loc 1 169 9
	or	a5,a5,a4
	.loc 1 171 13
	lbu	a4,3(a0)
	.loc 1 170 12
	lbu	a0,2(a0)
.LVL1:
	.loc 1 171 9
	or	a5,a5,a4
	.loc 1 170 28
	slli	a0,a0,8
	.loc 1 172 1
	or	a0,a5,a0
	ret
	.cfi_endproc
.LFE8:
	.size	fdt32_ld, .-fdt32_ld
	.section	.text.fdt_ro_probe_,"ax",@progbits
	.align	1
	.globl	fdt_ro_probe_
	.type	fdt_ro_probe_, @function
fdt_ro_probe_:
.LFB40:
	.file 2 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/blfdt/src/fdt.c"
	.loc 2 64 1 is_stmt 1
	.cfi_startproc
.LVL2:
	.loc 2 65 5
	.loc 2 64 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	.loc 2 64 1
	mv	s0,a0
	.loc 2 65 11
	call	fdt32_ld
.LVL3:
	.loc 2 65 8
	li	a5,-804388864
	addi	a5,a5,-275
	bne	a0,a5,.L3
	.loc 2 67 9 is_stmt 1
	.loc 2 67 15 is_stmt 0
	addi	a0,s0,20
	call	fdt32_ld
.LVL4:
	.loc 2 67 12
	li	a4,1
.LBB12:
.LBB13:
	.loc 2 70 20
	li	a5,-10
.LBE13:
.LBE12:
	.loc 2 67 12
	bleu	a0,a4,.L2
.LVL5:
.LBB16:
.LBB14:
	.loc 2 69 9 is_stmt 1
	.loc 2 69 15 is_stmt 0
	addi	a0,s0,24
	call	fdt32_ld
.LVL6:
	.loc 2 69 12
	li	a4,17
	.loc 2 79 12
	li	a5,0
	.loc 2 69 12
	bleu	a0,a4,.L2
	.loc 2 70 20
	li	a5,-10
.LVL7:
.L2:
.LBE14:
.LBE16:
	.loc 2 80 1
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
.LVL8:
	mv	a0,a5
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL9:
.L3:
	.cfi_restore_state
	.loc 2 71 12 is_stmt 1
	.loc 2 71 15 is_stmt 0
	li	a4,804388864
	addi	a4,a4,274
	.loc 2 76 16
	li	a5,-9
	.loc 2 71 15
	bne	a0,a4,.L2
	.loc 2 73 9 is_stmt 1
	.loc 2 73 15 is_stmt 0
	addi	a0,s0,36
	call	fdt32_ld
.LVL10:
.LBB17:
.LBB15:
	.loc 2 79 12
	li	a5,0
.LBE15:
.LBE17:
	.loc 2 73 12
	bne	a0,zero,.L2
	.loc 2 74 20
	li	a5,-7
	j	.L2
	.cfi_endproc
.LFE40:
	.size	fdt_ro_probe_, .-fdt_ro_probe_
	.section	.text.fdt_header_size_,"ax",@progbits
	.align	1
	.globl	fdt_header_size_
	.type	fdt_header_size_, @function
fdt_header_size_:
.LFB43:
	.loc 2 100 1 is_stmt 1
	.cfi_startproc
.LVL11:
	.loc 2 101 5
	.loc 2 101 8 is_stmt 0
	li	a4,1
	.loc 2 100 1
	mv	a5,a0
	.loc 2 101 8
	bleu	a0,a4,.L12
	.loc 2 103 10 is_stmt 1
	.loc 2 103 13 is_stmt 0
	li	a4,2
	.loc 2 104 16
	li	a0,32
.LVL12:
	.loc 2 103 13
	beq	a5,a4,.L10
.LVL13:
.LBB20:
.LBB21:
	.loc 2 105 10 is_stmt 1
	.loc 2 107 10
	.loc 2 107 13 is_stmt 0
	li	a4,16
	.loc 2 108 16
	li	a0,36
	.loc 2 107 13
	bleu	a5,a4,.L10
	.loc 2 110 16
	li	a0,40
	ret
.LVL14:
.L12:
.LBE21:
.LBE20:
	.loc 2 102 16
	li	a0,28
.LVL15:
.L10:
	.loc 2 111 1
	ret
	.cfi_endproc
.LFE43:
	.size	fdt_header_size_, .-fdt_header_size_
	.section	.text.fdt_check_header,"ax",@progbits
	.align	1
	.globl	fdt_check_header
	.type	fdt_check_header, @function
fdt_check_header:
.LFB44:
	.loc 2 114 1 is_stmt 1
	.cfi_startproc
.LVL16:
	.loc 2 115 5
	.loc 2 117 5
	.loc 2 114 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	s2,16(sp)
	sw	ra,28(sp)
	sw	s1,20(sp)
	sw	s3,12(sp)
	sw	s4,8(sp)
	sw	s5,4(sp)
	.cfi_offset 8, -8
	.cfi_offset 18, -16
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.loc 2 114 1
	mv	s2,a0
	.loc 2 117 11
	call	fdt32_ld
.LVL17:
	.loc 2 117 8
	li	a5,-804388864
	addi	a5,a5,-275
	.loc 2 118 16
	li	s0,-9
	.loc 2 117 8
	bne	a0,a5,.L15
	.loc 2 119 5 is_stmt 1
.LVL18:
.LBB40:
.LBB41:
	.loc 1 285 5
	.loc 1 285 12 is_stmt 0
	addi	a0,s2,20
	call	fdt32_ld
.LVL19:
	mv	s5,a0
	call	fdt_header_size_
.LVL20:
.LBE41:
.LBE40:
	.loc 2 120 8
	li	a5,1
.LBB43:
.LBB42:
	.loc 1 285 12
	mv	s4,a0
.LVL21:
.LBE42:
.LBE43:
	.loc 2 120 5 is_stmt 1
	.loc 2 122 16 is_stmt 0
	li	s0,-10
	.loc 2 120 8
	bleu	s5,a5,.L15
	.loc 2 121 15
	addi	a0,s2,24
.LVL22:
	call	fdt32_ld
.LVL23:
	.loc 2 121 9
	li	a5,17
	bgtu	a0,a5,.L15
	.loc 2 123 5 is_stmt 1
	.loc 2 123 8 is_stmt 0
	bgtu	a0,s5,.L15
	.loc 2 126 5 is_stmt 1
	.loc 2 126 12 is_stmt 0
	addi	a0,s2,4
	call	fdt32_ld
.LVL24:
	mv	s1,a0
	.loc 2 149 16
	li	s0,-8
	.loc 2 126 8
	bltu	a0,s4,.L15
	.loc 2 127 9
	blt	a0,zero,.L15
	.loc 2 131 5 is_stmt 1
	.loc 2 131 10 is_stmt 0
	addi	a0,s2,16
	call	fdt32_ld
.LVL25:
.LBB44:
.LBB45:
	.loc 2 84 5 is_stmt 1
	.loc 2 84 29 is_stmt 0
	bltu	a0,s4,.L15
	bltu	s1,a0,.L15
.LVL26:
.LBE45:
.LBE44:
	.loc 2 135 5 is_stmt 1
	.loc 2 136 14 is_stmt 0
	addi	a0,s2,8
	call	fdt32_ld
.LVL27:
	.loc 2 135 8
	li	a5,16
	.loc 2 136 14
	mv	s3,a0
	.loc 2 135 8
	bgtu	s5,a5,.L17
	.loc 2 136 9 is_stmt 1
.LVL28:
.LBB46:
.LBB47:
	.loc 2 84 5
	.loc 2 84 29 is_stmt 0
	bgtu	s4,a0,.L15
	bgeu	s1,a0,.L18
.LVL29:
.L15:
.LBE47:
.LBE46:
	.loc 2 152 1
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	mv	a0,s0
	lw	s0,24(sp)
	.cfi_restore 8
	lw	s1,20(sp)
	.cfi_restore 9
	lw	s2,16(sp)
	.cfi_restore 18
.LVL30:
	lw	s3,12(sp)
	.cfi_restore 19
	lw	s4,8(sp)
	.cfi_restore 20
	lw	s5,4(sp)
	.cfi_restore 21
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL31:
.L17:
	.cfi_restore_state
	.loc 2 140 9 is_stmt 1
	.loc 2 140 14 is_stmt 0
	addi	a0,s2,36
	call	fdt32_ld
.LVL32:
.LBB48:
.LBB49:
	.loc 2 90 5 is_stmt 1
.LBB50:
.LBB51:
	.loc 2 84 5
	.loc 2 84 29 is_stmt 0
	bgtu	s4,s3,.L15
.LBE51:
.LBE50:
.LBE49:
.LBE48:
	.loc 2 149 16
	li	s0,-8
.LBB57:
.LBB56:
.LBB53:
.LBB52:
	.loc 2 84 29
	bltu	s1,s3,.L15
.LVL33:
.LBE52:
.LBE53:
	.loc 2 92 5 is_stmt 1
	.loc 2 92 15 is_stmt 0
	add	a0,a0,s3
.LVL34:
	.loc 2 92 8
	bltu	a0,s3,.L15
	.loc 2 94 5 is_stmt 1
.LVL35:
.LBB54:
.LBB55:
	.loc 2 84 5
	.loc 2 84 29 is_stmt 0
	bltu	s1,a0,.L15
.LVL36:
.L18:
.LBE55:
.LBE54:
.LBE56:
.LBE57:
	.loc 2 147 5 is_stmt 1
	.loc 2 147 10 is_stmt 0
	addi	a0,s2,12
	call	fdt32_ld
.LVL37:
	mv	s3,a0
	addi	a0,s2,32
	call	fdt32_ld
.LVL38:
.LBB58:
.LBB59:
	.loc 2 90 5 is_stmt 1
.LBB60:
.LBB61:
	.loc 2 84 5
.LBE61:
.LBE60:
.LBE59:
.LBE58:
	.loc 2 149 16 is_stmt 0
	li	s0,-8
.LBB67:
.LBB66:
.LBB63:
.LBB62:
	.loc 2 84 29
	bltu	s3,s4,.L15
	bltu	s1,s3,.L15
.LVL39:
.LBE62:
.LBE63:
	.loc 2 92 5 is_stmt 1
	.loc 2 92 15 is_stmt 0
	add	a5,s3,a0
	.loc 2 92 8
	bgtu	s3,a5,.L15
	.loc 2 94 5 is_stmt 1
.LVL40:
.LBB64:
.LBB65:
	.loc 2 84 5
	.loc 2 84 29 is_stmt 0
	bltu	s1,a5,.L15
.LBE65:
.LBE64:
.LBE66:
.LBE67:
	.loc 2 151 12
	li	s0,0
	j	.L15
	.cfi_endproc
.LFE44:
	.size	fdt_check_header, .-fdt_check_header
	.section	.text.fdt_offset_ptr,"ax",@progbits
	.align	1
	.globl	fdt_offset_ptr
	.type	fdt_offset_ptr, @function
fdt_offset_ptr:
.LFB45:
	.loc 2 155 1 is_stmt 1
	.cfi_startproc
.LVL41:
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	.cfi_offset 8, -8
	mv	s0,a0
	.loc 2 156 5
	.loc 2 156 37 is_stmt 0
	addi	a0,a0,8
.LVL42:
	.loc 2 155 1
	sw	s1,20(sp)
	sw	s2,16(sp)
	sw	s3,12(sp)
	sw	ra,28(sp)
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 1, -4
	mv	s3,a1
	sw	s4,8(sp)
	.cfi_offset 20, -24
	.loc 2 155 1
	mv	s1,a2
	.loc 2 156 37
	call	fdt32_ld
.LVL43:
	.loc 2 156 14
	add	s2,a0,s3
.LVL44:
	.loc 2 158 5 is_stmt 1
	.loc 2 161 15 is_stmt 0
	li	a5,0
	.loc 2 158 8
	bgtu	s3,s2,.L37
	.loc 2 159 24
	add	s4,s2,s1
	.loc 2 161 15
	li	a5,0
	.loc 2 159 9
	bltu	s4,s2,.L37
	.loc 2 160 34
	addi	a0,s0,4
	call	fdt32_ld
.LVL45:
	.loc 2 161 15
	li	a5,0
	.loc 2 160 9
	bgtu	s4,a0,.L37
	.loc 2 163 5 is_stmt 1
	.loc 2 163 11 is_stmt 0
	addi	a0,s0,20
	call	fdt32_ld
.LVL46:
	.loc 2 163 8
	li	a5,16
	bleu	a0,a5,.L39
	.loc 2 164 9 is_stmt 1
	.loc 2 164 22 is_stmt 0
	add	s1,s3,s1
.LVL47:
	.loc 2 161 15
	li	a5,0
	.loc 2 164 12
	bgtu	s3,s1,.L37
	.loc 2 165 36
	addi	a0,s0,36
	call	fdt32_ld
.LVL48:
	.loc 2 161 15
	li	a5,0
	.loc 2 165 13
	bgtu	s1,a0,.L37
.L39:
	.loc 2 168 5 is_stmt 1
.LVL49:
.LBB70:
.LBB71:
	.file 3 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/blfdt/inc/libfdt_internal.h"
	.loc 3 73 5
	.loc 3 73 97 is_stmt 0
	add	a5,s0,s2
.LVL50:
.L37:
.LBE71:
.LBE70:
	.loc 2 169 1
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
.LVL51:
	lw	s1,20(sp)
	.cfi_restore 9
	lw	s2,16(sp)
	.cfi_restore 18
.LVL52:
	lw	s3,12(sp)
	.cfi_restore 19
.LVL53:
	lw	s4,8(sp)
	.cfi_restore 20
	mv	a0,a5
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE45:
	.size	fdt_offset_ptr, .-fdt_offset_ptr
	.section	.text.fdt_next_tag,"ax",@progbits
	.align	1
	.globl	fdt_next_tag
	.type	fdt_next_tag, @function
fdt_next_tag:
.LFB46:
	.loc 2 172 1 is_stmt 1
	.cfi_startproc
.LVL54:
	.loc 2 173 5
	.loc 2 174 5
	.loc 2 175 5
	.loc 2 172 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s2,16(sp)
	sw	s3,12(sp)
	sw	s4,8(sp)
	sw	ra,28(sp)
	sw	s0,24(sp)
	sw	s1,20(sp)
	sw	s5,4(sp)
	sw	s6,0(sp)
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.loc 2 178 17
	li	a5,-8
	.loc 2 172 1
	mv	s2,a2
	.loc 2 178 17
	sw	a5,0(a2)
	.loc 2 179 12
	li	a2,4
.LVL55:
	.loc 2 172 1
	mv	s3,a0
	mv	s4,a1
.LVL56:
	.loc 2 176 5 is_stmt 1
	.loc 2 178 5
	.loc 2 179 5
	.loc 2 179 12 is_stmt 0
	call	fdt_offset_ptr
.LVL57:
	.loc 2 180 5 is_stmt 1
	.loc 2 180 8 is_stmt 0
	bne	a0,zero,.L47
.LVL58:
.L54:
	.loc 2 185 17
	li	s1,9
	j	.L46
.LVL59:
.L47:
	.loc 2 182 5 is_stmt 1
	.loc 2 182 11 is_stmt 0
	lw	a5,0(a0)
.LVL60:
.LBB76:
.LBB77:
	.file 4 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/blfdt/inc/libfdt_env.h"
	.loc 4 93 5 is_stmt 1
.LBE77:
.LBE76:
	.loc 2 183 12 is_stmt 0
	addi	s0,s4,4
.LBB79:
.LBB78:
	.loc 4 93 212
	srli	a4,a5,24
	.loc 4 93 12
	slli	s1,a5,24
	or	s1,s1,a4
	.loc 4 93 112
	srli	a4,a5,8
	andi	a4,a4,0xff
	.loc 4 93 163
	srli	a5,a5,16
.LVL61:
	.loc 4 93 117
	slli	a4,a4,16
	.loc 4 93 163
	andi	a5,a5,0xff
	.loc 4 93 12
	or	s1,s1,a4
	.loc 4 93 168
	slli	a5,a5,8
	.loc 4 93 12
	or	s1,s1,a5
.LVL62:
.LBE78:
.LBE79:
	.loc 2 183 5 is_stmt 1
	.loc 2 185 5
	.loc 2 185 17 is_stmt 0
	li	a5,-11
	sw	a5,0(s2)
	.loc 2 186 5 is_stmt 1
	li	a4,8
	addi	a5,s1,-1
	bgtu	a5,a4,.L54
	lui	a4,%hi(.L50)
	slli	a5,a5,2
	addi	a4,a4,%lo(.L50)
	add	a5,a5,a4
	lw	a5,0(a5)
	jr	a5
	.section	.rodata.fdt_next_tag,"a",@progbits
	.align	2
	.align	2
.L50:
	.word	.L52
	.word	.L49
	.word	.L51
	.word	.L49
	.word	.L54
	.word	.L54
	.word	.L54
	.word	.L54
	.word	.L49
	.section	.text.fdt_next_tag
.LVL63:
.L52:
	.loc 2 189 9 discriminator 2
	.loc 2 190 13 discriminator 2
	mv	a1,s0
	.loc 2 190 17 is_stmt 0 discriminator 2
	li	a2,1
	mv	a0,s3
	addi	s0,s0,1
.LVL64:
	call	fdt_offset_ptr
.LVL65:
	.loc 2 191 17 is_stmt 1 discriminator 2
	.loc 2 191 9 is_stmt 0 discriminator 2
	beq	a0,zero,.L54
	.loc 2 191 20 discriminator 1
	lbu	a5,0(a0)
	bne	a5,zero,.L52
.LVL66:
.L49:
	.loc 2 217 5 is_stmt 1
	.loc 2 217 10 is_stmt 0
	sub	a2,s0,s4
	mv	a1,s4
	mv	a0,s3
	call	fdt_offset_ptr
.LVL67:
	.loc 2 217 8
	beq	a0,zero,.L54
	.loc 2 220 5 is_stmt 1
	.loc 2 220 53 is_stmt 0
	addi	s0,s0,3
.LVL68:
	.loc 2 220 58
	andi	s0,s0,-4
.LVL69:
	.loc 2 220 17
	sw	s0,0(s2)
	.loc 2 221 5 is_stmt 1
.LVL70:
.L46:
	.loc 2 222 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	lw	s2,16(sp)
	.cfi_restore 18
.LVL71:
	lw	s3,12(sp)
	.cfi_restore 19
.LVL72:
	lw	s4,8(sp)
	.cfi_restore 20
.LVL73:
	lw	s5,4(sp)
	.cfi_restore 21
	lw	s6,0(sp)
	.cfi_restore 22
	mv	a0,s1
	lw	s1,20(sp)
	.cfi_restore 9
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL74:
.L51:
	.cfi_restore_state
	.loc 2 197 9 is_stmt 1
	.loc 2 197 16 is_stmt 0
	li	a2,4
	mv	a1,s0
	mv	a0,s3
.LVL75:
	call	fdt_offset_ptr
.LVL76:
	.loc 2 198 9 is_stmt 1
	.loc 2 198 12 is_stmt 0
	beq	a0,zero,.L54
	.loc 2 201 9 is_stmt 1
	.loc 2 202 15 is_stmt 0
	lw	a5,0(a0)
.LVL77:
.LBB80:
.LBB81:
	.loc 4 93 5 is_stmt 1
.LBE81:
.LBE80:
	.loc 2 203 15 is_stmt 0
	addi	a0,s3,20
.LVL78:
	addi	s6,s4,12
.LBB83:
.LBB82:
	.loc 4 93 212
	srli	a4,a5,24
	.loc 4 93 12
	slli	s5,a5,24
	or	s5,s5,a4
	.loc 4 93 112
	srli	a4,a5,8
	andi	a4,a4,0xff
	.loc 4 93 163
	srli	a5,a5,16
.LVL79:
	.loc 4 93 117
	slli	a4,a4,16
	.loc 4 93 163
	andi	a5,a5,0xff
	.loc 4 93 168
	slli	a5,a5,8
	.loc 4 93 12
	or	s5,s5,a4
	or	s5,s5,a5
.LBE82:
.LBE83:
	.loc 2 203 15
	call	fdt32_ld
.LVL80:
	.loc 2 203 12
	li	a5,15
	.loc 2 201 16
	add	s0,s6,s5
.LVL81:
	.loc 2 203 9 is_stmt 1
	.loc 2 203 12 is_stmt 0
	bgtu	a0,a5,.L49
	.loc 2 203 79 discriminator 1
	li	a5,7
	bleu	s5,a5,.L49
	.loc 2 204 45 discriminator 2
	andi	s6,s6,7
	.loc 2 203 107 discriminator 2
	beq	s6,zero,.L49
	.loc 2 205 13 is_stmt 1
	.loc 2 205 20 is_stmt 0
	addi	s0,s0,4
.LVL82:
	j	.L49
	.cfi_endproc
.LFE46:
	.size	fdt_next_tag, .-fdt_next_tag
	.section	.text.fdt_check_node_offset_,"ax",@progbits
	.align	1
	.globl	fdt_check_node_offset_
	.type	fdt_check_node_offset_, @function
fdt_check_node_offset_:
.LFB47:
	.loc 2 225 1 is_stmt 1
	.cfi_startproc
.LVL83:
	.loc 2 226 5
	.loc 2 225 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	.cfi_offset 1, -4
	.loc 2 225 1
	sw	a1,12(sp)
	.loc 2 226 8
	bge	a1,zero,.L71
.LVL84:
.L73:
	.loc 2 228 16
	li	a0,-4
.L70:
	.loc 2 231 1
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL85:
.L71:
	.cfi_restore_state
	.loc 2 226 33 discriminator 1
	andi	a5,a1,3
	.loc 2 226 22 discriminator 1
	bne	a5,zero,.L73
	.loc 2 227 13
	addi	a2,sp,12
	call	fdt_next_tag
.LVL86:
	.loc 2 227 9
	li	a5,1
	bne	a0,a5,.L73
	.loc 2 230 5 is_stmt 1
	.loc 2 230 12 is_stmt 0
	lw	a0,12(sp)
	j	.L70
	.cfi_endproc
.LFE47:
	.size	fdt_check_node_offset_, .-fdt_check_node_offset_
	.section	.text.fdt_check_prop_offset_,"ax",@progbits
	.align	1
	.globl	fdt_check_prop_offset_
	.type	fdt_check_prop_offset_, @function
fdt_check_prop_offset_:
.LFB48:
	.loc 2 234 1 is_stmt 1
	.cfi_startproc
.LVL87:
	.loc 2 235 5
	.loc 2 234 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	.cfi_offset 1, -4
	.loc 2 234 1
	sw	a1,12(sp)
	.loc 2 235 8
	bge	a1,zero,.L76
.LVL88:
.L78:
	.loc 2 237 16
	li	a0,-4
.L75:
	.loc 2 240 1
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL89:
.L76:
	.cfi_restore_state
	.loc 2 235 33 discriminator 1
	andi	a5,a1,3
	.loc 2 235 22 discriminator 1
	bne	a5,zero,.L78
	.loc 2 236 13
	addi	a2,sp,12
	call	fdt_next_tag
.LVL90:
	.loc 2 236 9
	li	a5,3
	bne	a0,a5,.L78
	.loc 2 239 5 is_stmt 1
	.loc 2 239 12 is_stmt 0
	lw	a0,12(sp)
	j	.L75
	.cfi_endproc
.LFE48:
	.size	fdt_check_prop_offset_, .-fdt_check_prop_offset_
	.section	.text.fdt_next_node,"ax",@progbits
	.align	1
	.globl	fdt_next_node
	.type	fdt_next_node, @function
fdt_next_node:
.LFB49:
	.loc 2 243 1 is_stmt 1
	.cfi_startproc
.LVL91:
	.loc 2 244 5
	.loc 2 243 1 is_stmt 0
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s1,36(sp)
	sw	s2,32(sp)
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s3,28(sp)
	sw	s4,24(sp)
	sw	s5,20(sp)
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.loc 2 244 9
	sw	zero,12(sp)
	.loc 2 245 5 is_stmt 1
	.loc 2 247 5
	.loc 2 243 1 is_stmt 0
	mv	s2,a0
	mv	s1,a2
	.loc 2 247 8
	bge	a1,zero,.L81
.LVL92:
.L84:
	.loc 2 255 9
	li	s3,2
	li	s4,9
	li	s5,1
.LVL93:
.L82:
	.loc 2 251 5 is_stmt 1
	.loc 2 252 9
	.loc 2 252 16 is_stmt 0
	lw	s0,12(sp)
.LVL94:
	.loc 2 253 9 is_stmt 1
	.loc 2 253 15 is_stmt 0
	addi	a2,sp,12
	mv	a0,s2
	mv	a1,s0
	call	fdt_next_tag
.LVL95:
	.loc 2 255 9 is_stmt 1
	beq	a0,s3,.L85
	beq	a0,s4,.L86
	bne	a0,s5,.L82
	.loc 2 261 13
	.loc 2 261 16 is_stmt 0
	beq	s1,zero,.L80
	.loc 2 262 17 is_stmt 1
	.loc 2 262 25 is_stmt 0
	lw	a5,0(s1)
	addi	a5,a5,1
	sw	a5,0(s1)
	j	.L80
.LVL96:
.L81:
	.loc 2 248 9 is_stmt 1
	.loc 2 248 27 is_stmt 0
	call	fdt_check_node_offset_
.LVL97:
	.loc 2 248 25
	sw	a0,12(sp)
	.loc 2 248 27
	mv	s0,a0
	.loc 2 248 12
	bge	a0,zero,.L84
.LVL98:
.L80:
	.loc 2 280 1
	lw	ra,44(sp)
	.cfi_remember_state
	.cfi_restore 1
	mv	a0,s0
	lw	s0,40(sp)
	.cfi_restore 8
	lw	s1,36(sp)
	.cfi_restore 9
.LVL99:
	lw	s2,32(sp)
	.cfi_restore 18
.LVL100:
	lw	s3,28(sp)
	.cfi_restore 19
	lw	s4,24(sp)
	.cfi_restore 20
	lw	s5,20(sp)
	.cfi_restore 21
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
.LVL101:
.L85:
	.cfi_restore_state
	.loc 2 266 13 is_stmt 1
	.loc 2 266 16 is_stmt 0
	beq	s1,zero,.L82
	.loc 2 266 28 discriminator 1
	lw	a5,0(s1)
	addi	a5,a5,-1
	.loc 2 266 23 discriminator 1
	sw	a5,0(s1)
	bge	a5,zero,.L82
	.loc 2 267 17 is_stmt 1
	.loc 2 267 24 is_stmt 0
	lw	s0,12(sp)
.LVL102:
	j	.L80
.LVL103:
.L86:
	.loc 2 271 13 is_stmt 1
	.loc 2 271 29 is_stmt 0
	lw	s0,12(sp)
.LVL104:
	.loc 2 271 16
	bge	s0,zero,.L90
	.loc 2 272 17
	li	a5,-8
	bne	s0,a5,.L80
	.loc 2 272 40 discriminator 1
	bne	s1,zero,.L80
.L90:
	.loc 2 273 24
	li	s0,-1
	j	.L80
	.cfi_endproc
.LFE49:
	.size	fdt_next_node, .-fdt_next_node
	.section	.text.fdt_first_subnode,"ax",@progbits
	.align	1
	.globl	fdt_first_subnode
	.type	fdt_first_subnode, @function
fdt_first_subnode:
.LFB50:
	.loc 2 283 1 is_stmt 1
	.cfi_startproc
.LVL105:
	.loc 2 284 5
	.loc 2 283 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	.loc 2 286 14
	addi	a2,sp,12
	.loc 2 283 1
	sw	ra,28(sp)
	.cfi_offset 1, -4
	.loc 2 284 9
	sw	zero,12(sp)
	.loc 2 286 5 is_stmt 1
	.loc 2 286 14 is_stmt 0
	call	fdt_next_node
.LVL106:
	.loc 2 287 5 is_stmt 1
	.loc 2 287 8 is_stmt 0
	blt	a0,zero,.L98
	.loc 2 287 20 discriminator 1
	lw	a4,12(sp)
	li	a5,1
	beq	a4,a5,.L95
.L98:
	.loc 2 288 16
	li	a0,-1
.LVL107:
.L95:
	.loc 2 291 1
	lw	ra,28(sp)
	.cfi_restore 1
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE50:
	.size	fdt_first_subnode, .-fdt_first_subnode
	.section	.text.fdt_next_subnode,"ax",@progbits
	.align	1
	.globl	fdt_next_subnode
	.type	fdt_next_subnode, @function
fdt_next_subnode:
.LFB51:
	.loc 2 294 1 is_stmt 1
	.cfi_startproc
.LVL108:
	.loc 2 295 5
	.loc 2 294 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	.loc 2 295 9
	li	a5,1
	.loc 2 294 1
	sw	s0,24(sp)
	sw	s1,20(sp)
	sw	ra,28(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 1, -4
	.loc 2 294 1
	mv	s0,a0
	.loc 2 295 9
	sw	a5,12(sp)
	.loc 2 305 5
	li	s1,1
.LVL109:
.L102:
	.loc 2 301 5 is_stmt 1
	.loc 2 302 9
	.loc 2 302 18 is_stmt 0
	addi	a2,sp,12
	mv	a0,s0
	call	fdt_next_node
.LVL110:
	mv	a1,a0
.LVL111:
	.loc 2 303 9 is_stmt 1
	.loc 2 303 12 is_stmt 0
	blt	a0,zero,.L104
	.loc 2 303 33 discriminator 1
	lw	a5,12(sp)
	.loc 2 303 24 discriminator 1
	ble	a5,zero,.L104
	.loc 2 305 13 is_stmt 1
	.loc 2 305 5 is_stmt 0
	bne	a5,s1,.L102
.L100:
	.loc 2 308 1
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
.LVL112:
	lw	s1,20(sp)
	.cfi_restore 9
	mv	a0,a1
.LVL113:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL114:
.L104:
	.cfi_restore_state
	.loc 2 304 20
	li	a1,-1
	j	.L100
	.cfi_endproc
.LFE51:
	.size	fdt_next_subnode, .-fdt_next_subnode
	.section	.text.fdt_find_string_,"ax",@progbits
	.align	1
	.globl	fdt_find_string_
	.type	fdt_find_string_, @function
fdt_find_string_:
.LFB52:
	.loc 2 311 1 is_stmt 1
	.cfi_startproc
.LVL115:
	.loc 2 312 5
	.loc 2 311 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	.cfi_offset 8, -8
	mv	s0,a0
	.loc 2 312 15
	mv	a0,a2
.LVL116:
	.loc 2 311 1
	sw	s1,20(sp)
	sw	s2,16(sp)
	sw	s3,12(sp)
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	mv	s1,a1
	sw	ra,28(sp)
	.cfi_offset 1, -4
	.loc 2 311 1
	mv	s3,a2
	.loc 2 312 15
	call	strlen
.LVL117:
	.loc 2 312 25
	addi	s2,a0,1
.LVL118:
	.loc 2 313 5 is_stmt 1
	.loc 2 313 41 is_stmt 0
	sub	s1,s1,s2
.LVL119:
	.loc 2 313 17
	add	s1,s0,s1
.LVL120:
	.loc 2 314 5 is_stmt 1
	.loc 2 316 5
.L108:
	.loc 2 316 22 discriminator 1
	.loc 2 316 5 is_stmt 0 discriminator 1
	bleu	s0,s1,.L110
	.loc 2 319 11
	li	s0,0
.LVL121:
.L109:
	.loc 2 320 1
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	mv	a0,s0
	lw	s0,24(sp)
	.cfi_restore 8
	lw	s1,20(sp)
	.cfi_restore 9
.LVL122:
	lw	s2,16(sp)
	.cfi_restore 18
.LVL123:
	lw	s3,12(sp)
	.cfi_restore 19
.LVL124:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL125:
.L110:
	.cfi_restore_state
	.loc 2 317 9 is_stmt 1
	.loc 2 317 13 is_stmt 0
	mv	a2,s2
	mv	a1,s3
	mv	a0,s0
	call	memcmp
.LVL126:
	.loc 2 317 12
	beq	a0,zero,.L109
	.loc 2 316 33 is_stmt 1 discriminator 2
	.loc 2 316 34 is_stmt 0 discriminator 2
	addi	s0,s0,1
.LVL127:
	j	.L108
	.cfi_endproc
.LFE52:
	.size	fdt_find_string_, .-fdt_find_string_
	.section	.text.fdt_move,"ax",@progbits
	.align	1
	.globl	fdt_move
	.type	fdt_move, @function
fdt_move:
.LFB53:
	.loc 2 323 1 is_stmt 1
	.cfi_startproc
.LVL128:
.LBB84:
	.loc 2 324 7
	.loc 2 324 17
.LBE84:
	.loc 2 323 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	s1,20(sp)
	sw	s2,16(sp)
	sw	s3,12(sp)
	sw	ra,28(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 1, -4
	.loc 2 323 1
	mv	s1,a0
	mv	s2,a1
	mv	s3,a2
.LBB85:
	.loc 2 324 29
	call	fdt_ro_probe_
.LVL129:
	mv	s0,a0
.LVL130:
	.loc 2 324 20
	bne	a0,zero,.L115
.LBE85:
	.loc 2 324 69 is_stmt 1 discriminator 2
	.loc 2 326 5 discriminator 2
	.loc 2 326 11 is_stmt 0 discriminator 2
	addi	a0,s1,4
	call	fdt32_ld
.LVL131:
	mv	a2,a0
	.loc 2 326 8 discriminator 2
	bgtu	a0,s3,.L117
	.loc 2 329 5 is_stmt 1
	mv	a1,s1
	mv	a0,s2
	call	memmove
.LVL132:
	.loc 2 330 5
.L115:
	.loc 2 331 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	mv	a0,s0
	lw	s0,24(sp)
	.cfi_restore 8
	lw	s1,20(sp)
	.cfi_restore 9
.LVL133:
	lw	s2,16(sp)
	.cfi_restore 18
.LVL134:
	lw	s3,12(sp)
	.cfi_restore 19
.LVL135:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL136:
.L117:
	.cfi_restore_state
	.loc 2 327 16
	li	s0,-3
.LVL137:
	j	.L115
	.cfi_endproc
.LFE53:
	.size	fdt_move, .-fdt_move
	.text
.Letext0:
	.file 5 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h"
	.file 6 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.file 7 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/blfdt/inc/fdt.h"
	.file 8 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xba4
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF59
	.byte	0xc
	.4byte	.LASF60
	.4byte	.LASF61
	.4byte	.Ldebug_ranges0+0xe0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x3
	.4byte	.LASF5
	.byte	0x5
	.byte	0xd1
	.byte	0x16
	.4byte	0x38
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1
	.byte	0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF3
	.byte	0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF4
	.byte	0x3
	.4byte	.LASF6
	.byte	0x6
	.byte	0x2e
	.byte	0x17
	.4byte	0x6c
	.byte	0x5
	.4byte	0x5b
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF7
	.byte	0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF8
	.byte	0x3
	.4byte	.LASF9
	.byte	0x6
	.byte	0x34
	.byte	0x1b
	.4byte	0x86
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.byte	0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.byte	0x6
	.byte	0x4
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.byte	0x5
	.4byte	0x96
	.byte	0x7
	.byte	0x4
	.4byte	0x9d
	.byte	0x7
	.byte	0x4
	.4byte	0xae
	.byte	0x8
	.byte	0x3
	.4byte	.LASF13
	.byte	0x4
	.byte	0x46
	.byte	0x12
	.4byte	0x7a
	.byte	0x5
	.4byte	0xaf
	.byte	0x9
	.4byte	.LASF62
	.byte	0x28
	.byte	0x7
	.byte	0x3a
	.byte	0x8
	.4byte	0x150
	.byte	0xa
	.4byte	.LASF14
	.byte	0x7
	.byte	0x3b
	.byte	0xd
	.4byte	0xaf
	.byte	0
	.byte	0xa
	.4byte	.LASF15
	.byte	0x7
	.byte	0x3c
	.byte	0xd
	.4byte	0xaf
	.byte	0x4
	.byte	0xa
	.4byte	.LASF16
	.byte	0x7
	.byte	0x3d
	.byte	0xd
	.4byte	0xaf
	.byte	0x8
	.byte	0xa
	.4byte	.LASF17
	.byte	0x7
	.byte	0x3e
	.byte	0xd
	.4byte	0xaf
	.byte	0xc
	.byte	0xa
	.4byte	.LASF18
	.byte	0x7
	.byte	0x3f
	.byte	0xd
	.4byte	0xaf
	.byte	0x10
	.byte	0xa
	.4byte	.LASF19
	.byte	0x7
	.byte	0x40
	.byte	0xd
	.4byte	0xaf
	.byte	0x14
	.byte	0xa
	.4byte	.LASF20
	.byte	0x7
	.byte	0x41
	.byte	0xd
	.4byte	0xaf
	.byte	0x18
	.byte	0xa
	.4byte	.LASF21
	.byte	0x7
	.byte	0x44
	.byte	0xd
	.4byte	0xaf
	.byte	0x1c
	.byte	0xa
	.4byte	.LASF22
	.byte	0x7
	.byte	0x47
	.byte	0xd
	.4byte	0xaf
	.byte	0x20
	.byte	0xa
	.4byte	.LASF23
	.byte	0x7
	.byte	0x4a
	.byte	0xd
	.4byte	0xaf
	.byte	0x24
	.byte	0
	.byte	0xb
	.4byte	.LASF25
	.byte	0x2
	.2byte	0x142
	.byte	0x5
	.4byte	0x25
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.byte	0x1
	.byte	0x9c
	.4byte	0x1f4
	.byte	0xc
	.string	"fdt"
	.byte	0x2
	.2byte	0x142
	.byte	0x1a
	.4byte	0xa8
	.4byte	.LLST59
	.byte	0xc
	.string	"buf"
	.byte	0x2
	.2byte	0x142
	.byte	0x25
	.4byte	0x94
	.4byte	.LLST60
	.byte	0xd
	.4byte	.LASF24
	.byte	0x2
	.2byte	0x142
	.byte	0x2e
	.4byte	0x25
	.4byte	.LLST61
	.byte	0xe
	.4byte	.Ldebug_ranges0+0xc8
	.4byte	0x1c9
	.byte	0xf
	.4byte	.LASF29
	.byte	0x2
	.2byte	0x144
	.byte	0xb
	.4byte	0x25
	.4byte	.LLST62
	.byte	0x10
	.4byte	.LVL129
	.4byte	0xa07
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0
	.byte	0x12
	.4byte	.LVL131
	.4byte	0xa6f
	.4byte	0x1dd
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0x4
	.byte	0
	.byte	0x10
	.4byte	.LVL132
	.4byte	0xb83
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0
	.byte	0xb
	.4byte	.LASF26
	.byte	0x2
	.2byte	0x136
	.byte	0xd
	.4byte	0xa2
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.byte	0x1
	.byte	0x9c
	.4byte	0x2a2
	.byte	0xd
	.4byte	.LASF27
	.byte	0x2
	.2byte	0x136
	.byte	0x2a
	.4byte	0xa2
	.4byte	.LLST53
	.byte	0xd
	.4byte	.LASF28
	.byte	0x2
	.2byte	0x136
	.byte	0x36
	.4byte	0x25
	.4byte	.LLST54
	.byte	0xc
	.string	"s"
	.byte	0x2
	.2byte	0x136
	.byte	0x4b
	.4byte	0xa2
	.4byte	.LLST55
	.byte	0x13
	.string	"len"
	.byte	0x2
	.2byte	0x138
	.byte	0x9
	.4byte	0x25
	.4byte	.LLST56
	.byte	0xf
	.4byte	.LASF30
	.byte	0x2
	.2byte	0x139
	.byte	0x11
	.4byte	0xa2
	.4byte	.LLST57
	.byte	0x13
	.string	"p"
	.byte	0x2
	.2byte	0x13a
	.byte	0x11
	.4byte	0xa2
	.4byte	.LLST58
	.byte	0x12
	.4byte	.LVL117
	.4byte	0xb8f
	.4byte	0x285
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0
	.byte	0x10
	.4byte	.LVL126
	.4byte	0xb9b
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0
	.byte	0xb
	.4byte	.LASF31
	.byte	0x2
	.2byte	0x125
	.byte	0x5
	.4byte	0x25
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.byte	0x1
	.byte	0x9c
	.4byte	0x306
	.byte	0xc
	.string	"fdt"
	.byte	0x2
	.2byte	0x125
	.byte	0x22
	.4byte	0xa8
	.4byte	.LLST51
	.byte	0xd
	.4byte	.LASF32
	.byte	0x2
	.2byte	0x125
	.byte	0x2b
	.4byte	0x25
	.4byte	.LLST52
	.byte	0x14
	.4byte	.LASF33
	.byte	0x2
	.2byte	0x127
	.byte	0x9
	.4byte	0x25
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x10
	.4byte	.LVL110
	.4byte	0x372
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0
	.byte	0xb
	.4byte	.LASF34
	.byte	0x2
	.2byte	0x11a
	.byte	0x5
	.4byte	0x25
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.byte	0x1
	.byte	0x9c
	.4byte	0x372
	.byte	0xc
	.string	"fdt"
	.byte	0x2
	.2byte	0x11a
	.byte	0x23
	.4byte	0xa8
	.4byte	.LLST49
	.byte	0xd
	.4byte	.LASF32
	.byte	0x2
	.2byte	0x11a
	.byte	0x2c
	.4byte	0x25
	.4byte	.LLST50
	.byte	0x14
	.4byte	.LASF33
	.byte	0x2
	.2byte	0x11c
	.byte	0x9
	.4byte	0x25
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x10
	.4byte	.LVL106
	.4byte	0x372
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x11
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x11
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0
	.byte	0x15
	.4byte	.LASF35
	.byte	0x2
	.byte	0xf2
	.byte	0x5
	.4byte	0x25
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.byte	0x1
	.byte	0x9c
	.4byte	0x405
	.byte	0x16
	.string	"fdt"
	.byte	0x2
	.byte	0xf2
	.byte	0x1f
	.4byte	0xa8
	.4byte	.LLST45
	.byte	0x17
	.4byte	.LASF32
	.byte	0x2
	.byte	0xf2
	.byte	0x28
	.4byte	0x25
	.4byte	.LLST46
	.byte	0x17
	.4byte	.LASF33
	.byte	0x2
	.byte	0xf2
	.byte	0x35
	.4byte	0x405
	.4byte	.LLST47
	.byte	0x18
	.4byte	.LASF36
	.byte	0x2
	.byte	0xf4
	.byte	0x9
	.4byte	0x25
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x19
	.string	"tag"
	.byte	0x2
	.byte	0xf5
	.byte	0xe
	.4byte	0x7a
	.4byte	.LLST48
	.byte	0x12
	.4byte	.LVL95
	.4byte	0x4af
	.4byte	0x3fb
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0
	.byte	0x1a
	.4byte	.LVL97
	.4byte	0x45d
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x15
	.4byte	.LASF37
	.byte	0x2
	.byte	0xe9
	.byte	0x5
	.4byte	0x25
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.byte	0x1
	.byte	0x9c
	.4byte	0x45d
	.byte	0x16
	.string	"fdt"
	.byte	0x2
	.byte	0xe9
	.byte	0x28
	.4byte	0xa8
	.4byte	.LLST43
	.byte	0x17
	.4byte	.LASF32
	.byte	0x2
	.byte	0xe9
	.byte	0x31
	.4byte	0x25
	.4byte	.LLST44
	.byte	0x10
	.4byte	.LVL90
	.4byte	0x4af
	.byte	0x11
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x11
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0
	.byte	0x15
	.4byte	.LASF38
	.byte	0x2
	.byte	0xe0
	.byte	0x5
	.4byte	0x25
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.byte	0x1
	.byte	0x9c
	.4byte	0x4af
	.byte	0x16
	.string	"fdt"
	.byte	0x2
	.byte	0xe0
	.byte	0x28
	.4byte	0xa8
	.4byte	.LLST41
	.byte	0x17
	.4byte	.LASF32
	.byte	0x2
	.byte	0xe0
	.byte	0x31
	.4byte	0x25
	.4byte	.LLST42
	.byte	0x10
	.4byte	.LVL86
	.4byte	0x4af
	.byte	0x11
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x11
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0
	.byte	0x15
	.4byte	.LASF39
	.byte	0x2
	.byte	0xab
	.byte	0xa
	.4byte	0x7a
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.byte	0x1
	.byte	0x9c
	.4byte	0x614
	.byte	0x16
	.string	"fdt"
	.byte	0x2
	.byte	0xab
	.byte	0x23
	.4byte	0xa8
	.4byte	.LLST31
	.byte	0x17
	.4byte	.LASF40
	.byte	0x2
	.byte	0xab
	.byte	0x2c
	.4byte	0x25
	.4byte	.LLST32
	.byte	0x17
	.4byte	.LASF36
	.byte	0x2
	.byte	0xab
	.byte	0x3e
	.4byte	0x405
	.4byte	.LLST33
	.byte	0x1b
	.4byte	.LASF41
	.byte	0x2
	.byte	0xad
	.byte	0x14
	.4byte	0x614
	.4byte	.LLST34
	.byte	0x1b
	.4byte	.LASF42
	.byte	0x2
	.byte	0xad
	.byte	0x1b
	.4byte	0x614
	.4byte	.LLST35
	.byte	0x19
	.string	"tag"
	.byte	0x2
	.byte	0xae
	.byte	0xe
	.4byte	0x7a
	.4byte	.LLST36
	.byte	0x1b
	.4byte	.LASF32
	.byte	0x2
	.byte	0xaf
	.byte	0x9
	.4byte	0x25
	.4byte	.LLST37
	.byte	0x19
	.string	"p"
	.byte	0x2
	.byte	0xb0
	.byte	0x11
	.4byte	0xa2
	.4byte	.LLST38
	.byte	0x1c
	.4byte	0xaad
	.4byte	.LBB76
	.4byte	.Ldebug_ranges0+0x98
	.byte	0x2
	.byte	0xb6
	.byte	0xb
	.4byte	0x565
	.byte	0x1d
	.4byte	0xabe
	.4byte	.LLST39
	.byte	0
	.byte	0x1c
	.4byte	0xaad
	.4byte	.LBB80
	.4byte	.Ldebug_ranges0+0xb0
	.byte	0x2
	.byte	0xca
	.byte	0xf
	.4byte	0x583
	.byte	0x1d
	.4byte	0xabe
	.4byte	.LLST40
	.byte	0
	.byte	0x12
	.4byte	.LVL57
	.4byte	0x61a
	.4byte	0x5a2
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x34
	.byte	0
	.byte	0x12
	.4byte	.LVL65
	.4byte	0x61a
	.4byte	0x5c1
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0x7f
	.byte	0x11
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x12
	.4byte	.LVL67
	.4byte	0x61a
	.4byte	0x5e4
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x78
	.byte	0
	.byte	0x84
	.byte	0
	.byte	0x1c
	.byte	0
	.byte	0x12
	.4byte	.LVL76
	.4byte	0x61a
	.4byte	0x603
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x34
	.byte	0
	.byte	0x10
	.4byte	.LVL80
	.4byte	0xa6f
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x83
	.byte	0x14
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0xbb
	.byte	0x15
	.4byte	.LASF43
	.byte	0x2
	.byte	0x9a
	.byte	0xd
	.4byte	0xa8
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.byte	0x1
	.byte	0x9c
	.4byte	0x6e8
	.byte	0x16
	.string	"fdt"
	.byte	0x2
	.byte	0x9a
	.byte	0x28
	.4byte	0xa8
	.4byte	.LLST25
	.byte	0x17
	.4byte	.LASF32
	.byte	0x2
	.byte	0x9a
	.byte	0x31
	.4byte	0x25
	.4byte	.LLST26
	.byte	0x16
	.string	"len"
	.byte	0x2
	.byte	0x9a
	.byte	0x46
	.4byte	0x38
	.4byte	.LLST27
	.byte	0x1b
	.4byte	.LASF44
	.byte	0x2
	.byte	0x9c
	.byte	0xe
	.4byte	0x38
	.4byte	.LLST28
	.byte	0x1e
	.4byte	0xa25
	.4byte	.LBB70
	.4byte	.LBE70-.LBB70
	.byte	0x2
	.byte	0xa8
	.byte	0xc
	.4byte	0x69b
	.byte	0x1d
	.4byte	0xa42
	.4byte	.LLST29
	.byte	0x1d
	.4byte	0xa36
	.4byte	.LLST30
	.byte	0
	.byte	0x12
	.4byte	.LVL43
	.4byte	0xa6f
	.4byte	0x6af
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x8
	.byte	0
	.byte	0x12
	.4byte	.LVL45
	.4byte	0xa6f
	.4byte	0x6c3
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x4
	.byte	0
	.byte	0x12
	.4byte	.LVL46
	.4byte	0xa6f
	.4byte	0x6d7
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x14
	.byte	0
	.byte	0x10
	.4byte	.LVL48
	.4byte	0xa6f
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x24
	.byte	0
	.byte	0
	.byte	0x15
	.4byte	.LASF45
	.byte	0x2
	.byte	0x71
	.byte	0x5
	.4byte	0x25
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.byte	0x1
	.byte	0x9c
	.4byte	0x971
	.byte	0x16
	.string	"fdt"
	.byte	0x2
	.byte	0x71
	.byte	0x22
	.4byte	0xa8
	.4byte	.LLST6
	.byte	0x1b
	.4byte	.LASF46
	.byte	0x2
	.byte	0x73
	.byte	0xc
	.4byte	0x2c
	.4byte	.LLST7
	.byte	0x1c
	.4byte	0xa4f
	.4byte	.LBB40
	.4byte	.Ldebug_ranges0+0x20
	.byte	0x2
	.byte	0x77
	.byte	0xf
	.4byte	0x764
	.byte	0x1d
	.4byte	0xa61
	.4byte	.LLST8
	.byte	0x12
	.4byte	.LVL19
	.4byte	0xa6f
	.4byte	0x753
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0x14
	.byte	0
	.byte	0x10
	.4byte	.LVL20
	.4byte	0x971
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0
	.byte	0
	.byte	0x1e
	.4byte	0x9d1
	.4byte	.LBB44
	.4byte	.LBE44-.LBB44
	.byte	0x2
	.byte	0x83
	.byte	0xa
	.4byte	0x794
	.byte	0x1d
	.4byte	0x9fa
	.4byte	.LLST9
	.byte	0x1d
	.4byte	0x9ee
	.4byte	.LLST10
	.byte	0x1d
	.4byte	0x9e2
	.4byte	.LLST11
	.byte	0
	.byte	0x1e
	.4byte	0x9d1
	.4byte	.LBB46
	.4byte	.LBE46-.LBB46
	.byte	0x2
	.byte	0x88
	.byte	0xe
	.4byte	0x7c0
	.byte	0x1f
	.4byte	0x9fa
	.byte	0x1d
	.4byte	0x9ee
	.4byte	.LLST12
	.byte	0x1d
	.4byte	0x9e2
	.4byte	.LLST13
	.byte	0
	.byte	0x1c
	.4byte	0x98f
	.4byte	.LBB48
	.4byte	.Ldebug_ranges0+0x38
	.byte	0x2
	.byte	0x8c
	.byte	0xe
	.4byte	0x84d
	.byte	0x1d
	.4byte	0x9c4
	.4byte	.LLST14
	.byte	0x1f
	.4byte	0x9b8
	.byte	0x1d
	.4byte	0x9ac
	.4byte	.LLST15
	.byte	0x1d
	.4byte	0x9a0
	.4byte	.LLST16
	.byte	0x1c
	.4byte	0x9d1
	.4byte	.LBB50
	.4byte	.Ldebug_ranges0+0x50
	.byte	0x2
	.byte	0x5a
	.byte	0xa
	.4byte	0x820
	.byte	0x1f
	.4byte	0x9fa
	.byte	0x1d
	.4byte	0x9ee
	.4byte	.LLST17
	.byte	0x1d
	.4byte	0x9e2
	.4byte	.LLST18
	.byte	0
	.byte	0x20
	.4byte	0x9d1
	.4byte	.LBB54
	.4byte	.LBE54-.LBB54
	.byte	0x2
	.byte	0x5e
	.byte	0xa
	.byte	0x1d
	.4byte	0x9fa
	.4byte	.LLST19
	.byte	0x1d
	.4byte	0x9ee
	.4byte	.LLST20
	.byte	0x1d
	.4byte	0x9e2
	.4byte	.LLST21
	.byte	0
	.byte	0
	.byte	0x1c
	.4byte	0x98f
	.4byte	.LBB58
	.4byte	.Ldebug_ranges0+0x68
	.byte	0x2
	.byte	0x93
	.byte	0xa
	.4byte	0x8d4
	.byte	0x21
	.4byte	0x9c4
	.byte	0x1
	.byte	0x5a
	.byte	0x21
	.4byte	0x9b8
	.byte	0x1
	.byte	0x63
	.byte	0x21
	.4byte	0x9ac
	.byte	0x1
	.byte	0x59
	.byte	0x21
	.4byte	0x9a0
	.byte	0x1
	.byte	0x64
	.byte	0x1c
	.4byte	0x9d1
	.4byte	.LBB60
	.4byte	.Ldebug_ranges0+0x80
	.byte	0x2
	.byte	0x5a
	.byte	0xa
	.4byte	0x8ad
	.byte	0x1d
	.4byte	0x9fa
	.4byte	.LLST22
	.byte	0x1d
	.4byte	0x9ee
	.4byte	.LLST23
	.byte	0x1d
	.4byte	0x9e2
	.4byte	.LLST24
	.byte	0
	.byte	0x20
	.4byte	0x9d1
	.4byte	.LBB64
	.4byte	.LBE64-.LBB64
	.byte	0x2
	.byte	0x5e
	.byte	0xa
	.byte	0x21
	.4byte	0x9fa
	.byte	0x1
	.byte	0x5f
	.byte	0x21
	.4byte	0x9ee
	.byte	0x1
	.byte	0x59
	.byte	0x21
	.4byte	0x9e2
	.byte	0x1
	.byte	0x64
	.byte	0
	.byte	0
	.byte	0x12
	.4byte	.LVL17
	.4byte	0xa6f
	.4byte	0x8e8
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x12
	.4byte	.LVL23
	.4byte	0xa6f
	.4byte	0x8fc
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0x18
	.byte	0
	.byte	0x12
	.4byte	.LVL24
	.4byte	0xa6f
	.4byte	0x910
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0x4
	.byte	0
	.byte	0x12
	.4byte	.LVL25
	.4byte	0xa6f
	.4byte	0x924
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0x10
	.byte	0
	.byte	0x12
	.4byte	.LVL27
	.4byte	0xa6f
	.4byte	0x938
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0x8
	.byte	0
	.byte	0x12
	.4byte	.LVL32
	.4byte	0xa6f
	.4byte	0x94c
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0x24
	.byte	0
	.byte	0x12
	.4byte	.LVL37
	.4byte	0xa6f
	.4byte	0x960
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0xc
	.byte	0
	.byte	0x10
	.4byte	.LVL38
	.4byte	0xa6f
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0x22
	.4byte	.LASF51
	.byte	0x2
	.byte	0x63
	.byte	0x8
	.4byte	0x2c
	.byte	0x1
	.4byte	0x98f
	.byte	0x23
	.4byte	.LASF19
	.byte	0x2
	.byte	0x63
	.byte	0x22
	.4byte	0x7a
	.byte	0
	.byte	0x24
	.4byte	.LASF49
	.byte	0x2
	.byte	0x57
	.byte	0xc
	.4byte	0x25
	.byte	0x1
	.4byte	0x9d1
	.byte	0x23
	.4byte	.LASF46
	.byte	0x2
	.byte	0x57
	.byte	0x22
	.4byte	0x7a
	.byte	0x23
	.4byte	.LASF15
	.byte	0x2
	.byte	0x57
	.byte	0x34
	.4byte	0x7a
	.byte	0x23
	.4byte	.LASF47
	.byte	0x2
	.byte	0x58
	.byte	0x16
	.4byte	0x7a
	.byte	0x23
	.4byte	.LASF48
	.byte	0x2
	.byte	0x58
	.byte	0x25
	.4byte	0x7a
	.byte	0
	.byte	0x24
	.4byte	.LASF50
	.byte	0x2
	.byte	0x52
	.byte	0xc
	.4byte	0x25
	.byte	0x1
	.4byte	0xa07
	.byte	0x23
	.4byte	.LASF46
	.byte	0x2
	.byte	0x52
	.byte	0x20
	.4byte	0x7a
	.byte	0x23
	.4byte	.LASF15
	.byte	0x2
	.byte	0x52
	.byte	0x32
	.4byte	0x7a
	.byte	0x25
	.string	"off"
	.byte	0x2
	.byte	0x52
	.byte	0x46
	.4byte	0x7a
	.byte	0
	.byte	0x22
	.4byte	.LASF52
	.byte	0x2
	.byte	0x3f
	.byte	0x5
	.4byte	0x25
	.byte	0x1
	.4byte	0xa25
	.byte	0x25
	.string	"fdt"
	.byte	0x2
	.byte	0x3f
	.byte	0x1f
	.4byte	0xa8
	.byte	0
	.byte	0x24
	.4byte	.LASF53
	.byte	0x3
	.byte	0x47
	.byte	0x1b
	.4byte	0xa8
	.byte	0x3
	.4byte	0xa4f
	.byte	0x25
	.string	"fdt"
	.byte	0x3
	.byte	0x47
	.byte	0x37
	.4byte	0xa8
	.byte	0x23
	.4byte	.LASF32
	.byte	0x3
	.byte	0x47
	.byte	0x40
	.4byte	0x25
	.byte	0
	.byte	0x26
	.4byte	.LASF54
	.byte	0x1
	.2byte	0x11b
	.byte	0x16
	.4byte	0x2c
	.byte	0x3
	.4byte	0xa6f
	.byte	0x27
	.string	"fdt"
	.byte	0x1
	.2byte	0x11b
	.byte	0x32
	.4byte	0xa8
	.byte	0
	.byte	0x28
	.4byte	.LASF63
	.byte	0x1
	.byte	0xa4
	.byte	0x18
	.4byte	0x7a
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0xaa7
	.byte	0x16
	.string	"p"
	.byte	0x1
	.byte	0xa4
	.byte	0x30
	.4byte	0x614
	.4byte	.LLST0
	.byte	0x19
	.string	"bp"
	.byte	0x1
	.byte	0xa6
	.byte	0x14
	.4byte	0xaa7
	.4byte	.LLST1
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x67
	.byte	0x24
	.4byte	.LASF55
	.byte	0x4
	.byte	0x5b
	.byte	0x18
	.4byte	0x7a
	.byte	0x3
	.4byte	0xac9
	.byte	0x25
	.string	"x"
	.byte	0x4
	.byte	0x5b
	.byte	0x2d
	.4byte	0xaf
	.byte	0
	.byte	0x29
	.4byte	0xa07
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.byte	0x1
	.byte	0x9c
	.4byte	0xb4c
	.byte	0x1d
	.4byte	0xa18
	.4byte	.LLST2
	.byte	0x1c
	.4byte	0xa07
	.4byte	.LBB12
	.4byte	.Ldebug_ranges0+0
	.byte	0x2
	.byte	0x3f
	.byte	0x5
	.4byte	0xb13
	.byte	0x1d
	.4byte	0xa18
	.4byte	.LLST3
	.byte	0x10
	.4byte	.LVL6
	.4byte	0xa6f
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x12
	.4byte	.LVL3
	.4byte	0xa6f
	.4byte	0xb27
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x12
	.4byte	.LVL4
	.4byte	0xa6f
	.4byte	0xb3b
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x14
	.byte	0
	.byte	0x10
	.4byte	.LVL10
	.4byte	0xa6f
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x24
	.byte	0
	.byte	0
	.byte	0x29
	.4byte	0x971
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.byte	0x1
	.byte	0x9c
	.4byte	0xb83
	.byte	0x1d
	.4byte	0x982
	.4byte	.LLST4
	.byte	0x20
	.4byte	0x971
	.4byte	.LBB20
	.4byte	.LBE20-.LBB20
	.byte	0x2
	.byte	0x63
	.byte	0x8
	.byte	0x1d
	.4byte	0x982
	.4byte	.LLST5
	.byte	0
	.byte	0
	.byte	0x2a
	.4byte	.LASF56
	.4byte	.LASF56
	.byte	0x8
	.byte	0x20
	.byte	0x8
	.byte	0x2a
	.4byte	.LASF57
	.4byte	.LASF57
	.byte	0x8
	.byte	0x29
	.byte	0x8
	.byte	0x2a
	.4byte	.LASF58
	.4byte	.LASF58
	.byte	0x8
	.byte	0x1e
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
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0x26
	.byte	0
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
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xf
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
	.byte	0x10
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x11
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
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
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x17
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
	.byte	0x18
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
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x1a
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1b
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
	.byte	0x1c
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
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
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
	.byte	0x1f
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x20
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
	.byte	0xb
	.byte	0x57
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x21
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x22
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
	.byte	0x20
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x23
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
	.byte	0x24
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
	.byte	0x25
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
	.byte	0x26
	.byte	0x2e
	.byte	0x1
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
	.byte	0x27
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
	.byte	0x29
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
	.byte	0x2a
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
.LLST59:
	.4byte	.LVL128
	.4byte	.LVL129-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL129-1
	.4byte	.LVL133
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL133
	.4byte	.LVL136
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL136
	.4byte	.LFE53
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST60:
	.4byte	.LVL128
	.4byte	.LVL129-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL129-1
	.4byte	.LVL134
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL134
	.4byte	.LVL136
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL136
	.4byte	.LFE53
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST61:
	.4byte	.LVL128
	.4byte	.LVL129-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL129-1
	.4byte	.LVL135
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL135
	.4byte	.LVL136
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL136
	.4byte	.LFE53
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST62:
	.4byte	.LVL130
	.4byte	.LVL132
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL136
	.4byte	.LVL137
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LVL115
	.4byte	.LVL116
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL116
	.4byte	.LVL120
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL120
	.4byte	.LFE52
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST54:
	.4byte	.LVL115
	.4byte	.LVL117-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL117-1
	.4byte	.LVL119
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL119
	.4byte	.LFE52
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST55:
	.4byte	.LVL115
	.4byte	.LVL117-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL117-1
	.4byte	.LVL124
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL124
	.4byte	.LVL125
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL125
	.4byte	.LFE52
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST56:
	.4byte	.LVL118
	.4byte	.LVL123
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL125
	.4byte	.LFE52
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST57:
	.4byte	.LVL120
	.4byte	.LVL122
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL122
	.4byte	.LVL123
	.2byte	0xb
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x22
	.byte	0x82
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL125
	.4byte	.LFE52
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST58:
	.4byte	.LVL120
	.4byte	.LVL121
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL125
	.4byte	.LFE52
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL108
	.4byte	.LVL109
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL109
	.4byte	.LVL112
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL112
	.4byte	.LVL114
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL114
	.4byte	.LFE51
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LVL108
	.4byte	.LVL110-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL111
	.4byte	.LVL113
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL114
	.4byte	.LFE51
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL105
	.4byte	.LVL106-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL106-1
	.4byte	.LFE50
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL105
	.4byte	.LVL106-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL106-1
	.4byte	.LVL106
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL106
	.4byte	.LVL107
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL91
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL92
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL96
	.4byte	.LVL97-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL97-1
	.4byte	.LVL100
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL100
	.4byte	.LVL101
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL101
	.4byte	.LFE49
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL91
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL92
	.4byte	.LVL93
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL94
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL96
	.4byte	.LVL97-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL97-1
	.4byte	.LVL98
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL101
	.4byte	.LVL102
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL103
	.4byte	.LVL104
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL91
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL92
	.4byte	.LVL99
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL99
	.4byte	.LVL101
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL101
	.4byte	.LFE49
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL95
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL101
	.4byte	.LFE49
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL87
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL88
	.4byte	.LVL89
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL89
	.4byte	.LVL90-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL90-1
	.4byte	.LFE48
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL87
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL89
	.4byte	.LVL90-1
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL83
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL84
	.4byte	.LVL85
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL85
	.4byte	.LVL86-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL86-1
	.4byte	.LFE47
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL83
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL85
	.4byte	.LVL86-1
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL54
	.4byte	.LVL57-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL57-1
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL72
	.4byte	.LVL74
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL74
	.4byte	.LFE46
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL54
	.4byte	.LVL57-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL57-1
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL73
	.4byte	.LVL74
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL74
	.4byte	.LFE46
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL54
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL55
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL71
	.4byte	.LVL74
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL74
	.4byte	.LFE46
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL57
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL59
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL74
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL76
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL62
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL74
	.4byte	.LFE46
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL56
	.4byte	.LVL57-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL57-1
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL59
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL62
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL64
	.4byte	.LVL65-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL65-1
	.4byte	.LVL66
	.2byte	0x3
	.byte	0x78
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL66
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL68
	.4byte	.LVL69
	.2byte	0x3
	.byte	0x78
	.byte	0x7d
	.byte	0x9f
	.4byte	.LVL74
	.4byte	.LFE46
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL65
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL60
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL61
	.4byte	.LVL62
	.2byte	0x2
	.byte	0x7a
	.byte	0
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL77
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL42
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL51
	.4byte	.LFE45
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL41
	.4byte	.LVL43-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL43-1
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL53
	.4byte	.LFE45
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL41
	.4byte	.LVL43-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL43-1
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL47
	.4byte	.LFE45
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL44
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL16
	.4byte	.LVL17-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL17-1
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LFE44
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL22
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL31
	.4byte	.LFE44
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL18
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL32
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL32
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL32
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1
	.4byte	.LFE8
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
	.byte	0x5a
	.4byte	.LVL1
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL2
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL3-1
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LFE40
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL5
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL12
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL15
	.4byte	.LFE43
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x5f
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
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
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
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB12
	.4byte	.LBE12
	.4byte	.LBB16
	.4byte	.LBE16
	.4byte	.LBB17
	.4byte	.LBE17
	.4byte	0
	.4byte	0
	.4byte	.LBB40
	.4byte	.LBE40
	.4byte	.LBB43
	.4byte	.LBE43
	.4byte	0
	.4byte	0
	.4byte	.LBB48
	.4byte	.LBE48
	.4byte	.LBB57
	.4byte	.LBE57
	.4byte	0
	.4byte	0
	.4byte	.LBB50
	.4byte	.LBE50
	.4byte	.LBB53
	.4byte	.LBE53
	.4byte	0
	.4byte	0
	.4byte	.LBB58
	.4byte	.LBE58
	.4byte	.LBB67
	.4byte	.LBE67
	.4byte	0
	.4byte	0
	.4byte	.LBB60
	.4byte	.LBE60
	.4byte	.LBB63
	.4byte	.LBE63
	.4byte	0
	.4byte	0
	.4byte	.LBB76
	.4byte	.LBE76
	.4byte	.LBB79
	.4byte	.LBE79
	.4byte	0
	.4byte	0
	.4byte	.LBB80
	.4byte	.LBE80
	.4byte	.LBB83
	.4byte	.LBE83
	.4byte	0
	.4byte	0
	.4byte	.LBB84
	.4byte	.LBE84
	.4byte	.LBB85
	.4byte	.LBE85
	.4byte	0
	.4byte	0
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB40
	.4byte	.LFE40
	.4byte	.LFB43
	.4byte	.LFE43
	.4byte	.LFB44
	.4byte	.LFE44
	.4byte	.LFB45
	.4byte	.LFE45
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
	.4byte	.LFB51
	.4byte	.LFE51
	.4byte	.LFB52
	.4byte	.LFE52
	.4byte	.LFB53
	.4byte	.LFE53
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF42:
	.string	"lenp"
.LASF5:
	.string	"size_t"
.LASF28:
	.string	"tabsize"
.LASF60:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/blfdt/src/fdt.c"
.LASF51:
	.string	"fdt_header_size_"
.LASF15:
	.string	"totalsize"
.LASF11:
	.string	"long long unsigned int"
.LASF20:
	.string	"last_comp_version"
.LASF4:
	.string	"long long int"
.LASF1:
	.string	"signed char"
.LASF48:
	.string	"size"
.LASF55:
	.string	"fdt32_to_cpu"
.LASF34:
	.string	"fdt_first_subnode"
.LASF3:
	.string	"long int"
.LASF38:
	.string	"fdt_check_node_offset_"
.LASF24:
	.string	"bufsize"
.LASF45:
	.string	"fdt_check_header"
.LASF41:
	.string	"tagp"
.LASF31:
	.string	"fdt_next_subnode"
.LASF46:
	.string	"hdrsize"
.LASF0:
	.string	"unsigned int"
.LASF57:
	.string	"strlen"
.LASF27:
	.string	"strtab"
.LASF10:
	.string	"long unsigned int"
.LASF17:
	.string	"off_dt_strings"
.LASF44:
	.string	"absoffset"
.LASF8:
	.string	"short unsigned int"
.LASF33:
	.string	"depth"
.LASF49:
	.string	"check_block_"
.LASF30:
	.string	"last"
.LASF59:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
.LASF47:
	.string	"base"
.LASF23:
	.string	"size_dt_struct"
.LASF19:
	.string	"version"
.LASF50:
	.string	"check_off_"
.LASF25:
	.string	"fdt_move"
.LASF16:
	.string	"off_dt_struct"
.LASF22:
	.string	"size_dt_strings"
.LASF7:
	.string	"unsigned char"
.LASF18:
	.string	"off_mem_rsvmap"
.LASF2:
	.string	"short int"
.LASF14:
	.string	"magic"
.LASF26:
	.string	"fdt_find_string_"
.LASF9:
	.string	"uint32_t"
.LASF36:
	.string	"nextoffset"
.LASF12:
	.string	"char"
.LASF61:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/blfdt"
.LASF52:
	.string	"fdt_ro_probe_"
.LASF32:
	.string	"offset"
.LASF62:
	.string	"fdt_header"
.LASF54:
	.string	"fdt_header_size"
.LASF40:
	.string	"startoffset"
.LASF56:
	.string	"memmove"
.LASF35:
	.string	"fdt_next_node"
.LASF6:
	.string	"uint8_t"
.LASF21:
	.string	"boot_cpuid_phys"
.LASF63:
	.string	"fdt32_ld"
.LASF29:
	.string	"err_"
.LASF53:
	.string	"fdt_offset_ptr_"
.LASF43:
	.string	"fdt_offset_ptr"
.LASF39:
	.string	"fdt_next_tag"
.LASF13:
	.string	"fdt32_t"
.LASF37:
	.string	"fdt_check_prop_offset_"
.LASF58:
	.string	"memcmp"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
