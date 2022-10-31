	.file	"blog.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.rodata.cmd_blog_info_dump.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"blog code1 = %p - %p\r\n"
	.align	2
.LC1:
	.string	"blog code2 = %p - %p\r\n"
	.align	2
.LC2:
	.string	"blog code3 = %p - %p\r\n"
	.align	2
.LC3:
	.string	"name too long.\r\n"
	.align	2
.LC4:
	.string	"[%-48s] = [%d]\r\n"
	.section	.text.cmd_blog_info_dump,"ax",@progbits
	.align	1
	.globl	cmd_blog_info_dump
	.type	cmd_blog_info_dump, @function
cmd_blog_info_dump:
.LFB7:
	.file 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/blog/blog.c"
	.loc 1 198 1
	.cfi_startproc
.LVL0:
	.loc 1 199 5
	.loc 1 200 5
	.loc 1 198 1 is_stmt 0
	addi	sp,sp,-176
	.cfi_def_cfa_offset 176
	.loc 1 200 10
	li	a2,124
.LVL1:
	li	a1,0
.LVL2:
	addi	a0,sp,4
.LVL3:
	.loc 1 198 1
	sw	ra,172(sp)
	sw	s0,168(sp)
	sw	s3,156(sp)
	sw	s4,152(sp)
	sw	s5,148(sp)
	sw	s6,144(sp)
	sw	s7,140(sp)
	sw	s8,136(sp)
	sw	s9,132(sp)
	sw	s1,164(sp)
	sw	s2,160(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 23, -36
	.cfi_offset 24, -40
	.cfi_offset 25, -44
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.loc 1 200 10
	sw	zero,0(sp)
	call	memset
.LVL4:
	.loc 1 202 5 is_stmt 1
	.loc 1 203 5
	.loc 1 204 5
	.loc 1 205 5
	.loc 1 206 5
	.loc 1 207 5
	.loc 1 209 5
	lui	s3,%hi(_ld_bl_static_blogcomponent_code_end)
	lui	s0,%hi(_ld_bl_static_blogcomponent_code_start)
	lui	a0,%hi(.LC0)
	addi	a2,s3,%lo(_ld_bl_static_blogcomponent_code_end)
	addi	a1,s0,%lo(_ld_bl_static_blogcomponent_code_start)
	addi	a0,a0,%lo(.LC0)
	call	bl_printk
.LVL5:
	.loc 1 210 5
	lui	s6,%hi(_ld_bl_static_blogfile_code_end)
	lui	s4,%hi(_ld_bl_static_blogfile_code_start)
	lui	a0,%hi(.LC1)
	addi	a2,s6,%lo(_ld_bl_static_blogfile_code_end)
	addi	a1,s4,%lo(_ld_bl_static_blogfile_code_start)
	addi	a0,a0,%lo(.LC1)
	call	bl_printk
.LVL6:
	.loc 1 211 5
	lui	s7,%hi(_ld_bl_static_blogpri_code_end)
	lui	s5,%hi(_ld_bl_static_blogpri_code_start)
	lui	a0,%hi(.LC2)
	addi	a2,s7,%lo(_ld_bl_static_blogpri_code_end)
	addi	a1,s5,%lo(_ld_bl_static_blogpri_code_start)
	addi	a0,a0,%lo(.LC2)
	call	bl_printk
.LVL7:
	.loc 1 213 5
	.loc 1 213 17 is_stmt 0
	addi	s0,s0,%lo(_ld_bl_static_blogcomponent_code_start)
	.loc 1 213 5
	addi	s3,s3,%lo(_ld_bl_static_blogcomponent_code_end)
	.loc 1 216 12
	li	s9,128
	.loc 1 235 9
	lui	s8,%hi(.LC4)
	.loc 1 243 9
	addi	s6,s6,%lo(_ld_bl_static_blogfile_code_end)
	.loc 1 252 17
	addi	s7,s7,%lo(_ld_bl_static_blogpri_code_end)
.LVL8:
.L2:
	.loc 1 214 10 is_stmt 1 discriminator 1
	.loc 1 213 5 is_stmt 0 discriminator 1
	bgeu	s0,s3,.L1
	.loc 1 216 9 is_stmt 1
	.loc 1 216 13 is_stmt 0
	lw	a0,4(s0)
	call	strlen
.LVL9:
	.loc 1 216 12
	bleu	a0,s9,.L3
	.loc 1 218 13 is_stmt 1
	lui	a0,%hi(.LC3)
	addi	a0,a0,%lo(.LC3)
	call	bl_printk
.LVL10:
	.loc 1 219 13
.L1:
	.loc 1 264 1 is_stmt 0
	lw	ra,172(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,168(sp)
	.cfi_restore 8
.LVL11:
	lw	s1,164(sp)
	.cfi_restore 9
	lw	s2,160(sp)
	.cfi_restore 18
	lw	s3,156(sp)
	.cfi_restore 19
	lw	s4,152(sp)
	.cfi_restore 20
	lw	s5,148(sp)
	.cfi_restore 21
	lw	s6,144(sp)
	.cfi_restore 22
	lw	s7,140(sp)
	.cfi_restore 23
	lw	s8,136(sp)
	.cfi_restore 24
	lw	s9,132(sp)
	.cfi_restore 25
	addi	sp,sp,176
	.cfi_def_cfa_offset 0
	jr	ra
.LVL12:
.L3:
	.cfi_restore_state
	.loc 1 221 9 is_stmt 1
	.loc 1 221 12 is_stmt 0
	lbu	a5,0(sp)
	beq	a5,zero,.L5
	.loc 1 223 13 is_stmt 1
	.loc 1 223 22 is_stmt 0
	lw	a1,4(s0)
	mv	a0,sp
	call	strcmp
.LVL13:
	.loc 1 223 16
	bne	a0,zero,.L6
.L9:
	.loc 1 214 78 is_stmt 1
	.loc 1 214 84 is_stmt 0
	addi	s0,s0,8
.LVL14:
	j	.L2
.L6:
	.loc 1 231 17 is_stmt 1
	mv	a0,sp
	call	strlen
.LVL15:
	mv	a2,a0
	li	a1,0
	mv	a0,sp
	call	memset
.LVL16:
.L5:
	.loc 1 235 9
	lw	a5,0(s0)
	lw	a1,4(s0)
	addi	a0,s8,%lo(.LC4)
	lw	a2,0(a5)
	call	bl_printk
.LVL17:
	.loc 1 237 9
	.loc 1 237 12 is_stmt 0
	lbu	a5,0(sp)
	bne	a5,zero,.L7
.L10:
	.loc 1 241 9 is_stmt 1
	lw	a1,4(s0)
	mv	a0,sp
	.loc 1 243 21 is_stmt 0
	addi	s1,s4,%lo(_ld_bl_static_blogfile_code_start)
	.loc 1 241 9
	call	strcpy
.LVL18:
	.loc 1 243 9 is_stmt 1
.L8:
	.loc 1 244 14 discriminator 1
	.loc 1 243 9 is_stmt 0 discriminator 1
	bgeu	s1,s6,.L9
	.loc 1 247 13 is_stmt 1
	.loc 1 247 17 is_stmt 0
	lw	a1,4(s0)
	lw	a0,4(s1)
	call	strstr
.LVL19:
	.loc 1 247 61
	lw	a5,4(s1)
	.loc 1 247 17
	mv	a1,a0
	.loc 1 247 16
	beq	a0,a5,.L11
.L15:
	.loc 1 244 77 is_stmt 1
	.loc 1 244 83 is_stmt 0
	addi	s1,s1,8
.LVL20:
	j	.L8
.LVL21:
.L7:
	.loc 1 237 36 discriminator 1
	lw	a0,4(s0)
	mv	a1,sp
	call	strcmp
.LVL22:
	.loc 1 237 32 discriminator 1
	beq	a0,zero,.L9
	j	.L10
.LVL23:
.L11:
	.loc 1 250 17 is_stmt 1
	lw	a5,0(s1)
	addi	a0,s8,%lo(.LC4)
	.loc 1 252 29 is_stmt 0
	addi	s2,s5,%lo(_ld_bl_static_blogpri_code_start)
	.loc 1 250 17
	lw	a2,0(a5)
	call	bl_printk
.LVL24:
	.loc 1 252 17 is_stmt 1
.L12:
	.loc 1 253 22 discriminator 1
	.loc 1 252 17 is_stmt 0 discriminator 1
	bgeu	s2,s7,.L15
	.loc 1 256 21 is_stmt 1
	.loc 1 256 25 is_stmt 0
	lw	a1,4(s1)
	lw	a0,4(s2)
	call	strstr
.LVL25:
	.loc 1 256 69
	lw	a5,4(s2)
	.loc 1 256 25
	mv	a1,a0
	.loc 1 256 24
	bne	a0,a5,.L13
	.loc 1 258 25 is_stmt 1
	lw	a5,0(s2)
	addi	a0,s8,%lo(.LC4)
	lw	a2,0(a5)
	call	bl_printk
.LVL26:
.L13:
	.loc 1 253 84 discriminator 1
	.loc 1 253 90 is_stmt 0 discriminator 1
	addi	s2,s2,8
.LVL27:
	j	.L12
	.cfi_endproc
.LFE7:
	.size	cmd_blog_info_dump, .-cmd_blog_info_dump
	.section	.rodata.cmd_blog_set_level.str1.4,"aMS",@progbits,1
	.align	2
.LC5:
	.string	"argc = [%d]\r\n"
	.align	2
.LC6:
	.string	"argv[1] = [%s]\r\n"
	.align	2
.LC7:
	.string	"argv[2] = [%s]\r\n"
	.align	2
.LC8:
	.string	"arg error.\r\n"
	.align	2
.LC9:
	.string	"all"
	.align	2
.LC10:
	.string	"debug"
	.align	2
.LC11:
	.string	"info"
	.align	2
.LC12:
	.string	"warn"
	.align	2
.LC13:
	.string	"error"
	.align	2
.LC14:
	.string	"assert"
	.align	2
.LC15:
	.string	"never"
	.align	2
.LC16:
	.string	"input level = %s not support.\r\n"
	.align	2
.LC17:
	.string	"input name = %s not support.\r\n"
	.align	2
.LC18:
	.string	"set blog error.\r\n"
	.align	2
.LC19:
	.string	"-input name = %s not find.\r\n"
	.align	2
.LC20:
	.string	"set %s = %d\r\n"
	.section	.text.cmd_blog_set_level,"ax",@progbits
	.align	1
	.globl	cmd_blog_set_level
	.type	cmd_blog_set_level, @function
cmd_blog_set_level:
.LFB6:
	.loc 1 190 1 is_stmt 1
	.cfi_startproc
.LVL28:
	.loc 1 191 5
.LBB6:
.LBB7:
	.loc 1 66 5 is_stmt 0
	lui	a0,%hi(.LC5)
.LVL29:
.LBE7:
.LBE6:
	.loc 1 190 1
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
.LBB19:
.LBB12:
	.loc 1 66 5
	mv	a1,a2
.LVL30:
	addi	a0,a0,%lo(.LC5)
.LBE12:
.LBE19:
	.loc 1 190 1
	sw	ra,28(sp)
	sw	s0,24(sp)
	sw	s1,20(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	mv	s0,a2
	mv	s1,a3
.LVL31:
.LBB20:
.LBB13:
	.loc 1 66 5 is_stmt 1
.LBE13:
.LBE20:
	.loc 1 190 1 is_stmt 0
	sw	s2,16(sp)
	sw	s3,12(sp)
	sw	s4,8(sp)
	sw	s5,4(sp)
	sw	s6,0(sp)
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 22, -32
.LBB21:
.LBB14:
	.loc 1 66 5
	call	bl_printk
.LVL32:
	.loc 1 67 5 is_stmt 1
	lw	a1,4(s1)
	lui	a0,%hi(.LC6)
	addi	a0,a0,%lo(.LC6)
	call	bl_printk
.LVL33:
	.loc 1 68 5
	lw	a1,8(s1)
	lui	a0,%hi(.LC7)
	addi	a0,a0,%lo(.LC7)
	call	bl_printk
.LVL34:
	.loc 1 70 5
	.loc 1 71 5
	.loc 1 72 5
	.loc 1 73 5
	.loc 1 74 5
	.loc 1 75 5
	.loc 1 77 5
	.loc 1 78 5
	.loc 1 79 5
	.loc 1 81 5
	.loc 1 82 5
	.loc 1 83 5
	.loc 1 84 5
	.loc 1 85 5
	.loc 1 87 5
	.loc 1 89 5
	.loc 1 89 8 is_stmt 0
	li	a5,3
	beq	s0,a5,.L26
	.loc 1 91 9 is_stmt 1
	lui	a0,%hi(.LC8)
	addi	a0,a0,%lo(.LC8)
	call	bl_printk
.LVL35:
	.loc 1 92 9
.L27:
.LBE14:
.LBE21:
	.loc 1 193 9
	.loc 1 195 1 is_stmt 0
	lw	s0,24(sp)
	.cfi_remember_state
	.cfi_restore 8
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s1,20(sp)
	.cfi_restore 9
.LVL36:
	lw	s2,16(sp)
	.cfi_restore 18
	lw	s3,12(sp)
	.cfi_restore 19
	lw	s4,8(sp)
	.cfi_restore 20
	lw	s5,4(sp)
	.cfi_restore 21
	lw	s6,0(sp)
	.cfi_restore 22
	.loc 1 193 9
	lui	a0,%hi(.LC18)
	.loc 1 195 1
	.loc 1 193 9
	addi	a0,a0,%lo(.LC18)
	.loc 1 195 1
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	.loc 1 193 9
	tail	bl_printk
.LVL37:
.L26:
	.cfi_restore_state
.LBB22:
.LBB15:
	.loc 1 96 5 is_stmt 1
	.loc 1 96 14 is_stmt 0
	lw	a0,4(s1)
	lui	a1,%hi(.LC9)
	addi	a1,a1,%lo(.LC9)
	call	strcmp
.LVL38:
	.loc 1 96 8
	beq	a0,zero,.L39
	.loc 1 100 10 is_stmt 1
	.loc 1 100 19 is_stmt 0
	lw	a0,4(s1)
	lui	a1,%hi(.LC10)
	addi	a1,a1,%lo(.LC10)
	call	strcmp
.LVL39:
	.loc 1 102 15
	li	s3,1
	.loc 1 100 13
	beq	a0,zero,.L28
	.loc 1 104 10 is_stmt 1
	.loc 1 104 19 is_stmt 0
	lw	a0,4(s1)
	lui	a1,%hi(.LC11)
	addi	a1,a1,%lo(.LC11)
	call	strcmp
.LVL40:
	.loc 1 106 15
	li	s3,2
	.loc 1 104 13
	beq	a0,zero,.L28
	.loc 1 108 10 is_stmt 1
	.loc 1 108 19 is_stmt 0
	lw	a0,4(s1)
	lui	a1,%hi(.LC12)
	addi	a1,a1,%lo(.LC12)
	call	strcmp
.LVL41:
	.loc 1 110 15
	li	s3,3
	.loc 1 108 13
	beq	a0,zero,.L28
	.loc 1 112 10 is_stmt 1
	.loc 1 112 19 is_stmt 0
	lw	a0,4(s1)
	lui	a1,%hi(.LC13)
	addi	a1,a1,%lo(.LC13)
	call	strcmp
.LVL42:
	.loc 1 114 15
	li	s3,4
	.loc 1 112 13
	beq	a0,zero,.L28
	.loc 1 116 10 is_stmt 1
	.loc 1 116 19 is_stmt 0
	lw	a0,4(s1)
	lui	a1,%hi(.LC14)
	addi	a1,a1,%lo(.LC14)
	call	strcmp
.LVL43:
	.loc 1 118 15
	li	s3,5
	.loc 1 116 13
	beq	a0,zero,.L28
	.loc 1 120 10 is_stmt 1
	.loc 1 120 19 is_stmt 0
	lw	a0,4(s1)
	lui	a1,%hi(.LC15)
	addi	a1,a1,%lo(.LC15)
	call	strcmp
.LVL44:
	.loc 1 122 15
	li	s3,6
	.loc 1 120 13
	beq	a0,zero,.L28
	.loc 1 126 9 is_stmt 1
	lw	a1,4(s1)
	lui	a0,%hi(.LC16)
	addi	a0,a0,%lo(.LC16)
.LVL45:
.L57:
	.loc 1 152 9 is_stmt 0
	call	bl_printk
.LVL46:
	.loc 1 153 9 is_stmt 1
	j	.L27
.LVL47:
.L39:
	.loc 1 98 15 is_stmt 0
	li	s3,0
.L28:
.LVL48:
	.loc 1 133 5 is_stmt 1
	.loc 1 133 14 is_stmt 0
	lw	s0,8(s1)
.LVL49:
.LBB8:
.LBB9:
	.loc 1 49 5 is_stmt 1
	.loc 1 50 5
	.loc 1 50 15 is_stmt 0
	mv	a0,s0
	call	strlen
.LVL50:
	.loc 1 51 5 is_stmt 1
	.loc 1 53 5
	.loc 1 51 9 is_stmt 0
	li	a5,0
	.loc 1 53 12
	li	a4,0
	.loc 1 55 12
	li	a3,46
.LVL51:
.L29:
	.loc 1 53 17 is_stmt 1
	.loc 1 53 5 is_stmt 0
	bgt	a0,a4,.L31
	.loc 1 61 5 is_stmt 1
.LVL52:
.LBE9:
.LBE8:
	.loc 1 135 5
	.loc 1 135 8 is_stmt 0
	beq	a5,zero,.L46
	.loc 1 140 10 is_stmt 1
	.loc 1 140 13 is_stmt 0
	li	a4,1
	beq	a5,a4,.L47
	.loc 1 145 10 is_stmt 1
	.loc 1 145 13 is_stmt 0
	li	a4,2
	beq	a5,a4,.L48
	.loc 1 152 9 is_stmt 1
	lui	a0,%hi(.LC17)
	lw	a1,8(s1)
	addi	a0,a0,%lo(.LC17)
	j	.L57
.LVL53:
.L31:
.LBB11:
.LBB10:
	.loc 1 55 9
	.loc 1 55 16 is_stmt 0
	add	a2,s0,a4
	.loc 1 55 12
	lbu	a2,0(a2)
	bne	a2,a3,.L30
	.loc 1 57 13 is_stmt 1
	.loc 1 57 16 is_stmt 0
	addi	a5,a5,1
.LVL54:
.L30:
	.loc 1 53 26 is_stmt 1
	.loc 1 53 27 is_stmt 0
	addi	a4,a4,1
.LVL55:
	j	.L29
.LVL56:
.L46:
.LBE10:
.LBE11:
	.loc 1 138 13
	lui	s0,%hi(_ld_bl_static_blogcomponent_code_end)
	.loc 1 137 15
	lui	s2,%hi(_ld_bl_static_blogcomponent_code_start)
	.loc 1 138 13
	addi	s0,s0,%lo(_ld_bl_static_blogcomponent_code_end)
	.loc 1 137 15
	addi	s2,s2,%lo(_ld_bl_static_blogcomponent_code_start)
.L32:
.LVL57:
	.loc 1 156 5 is_stmt 1
	.loc 1 157 5
	.loc 1 157 17 is_stmt 0
	sub	s0,s0,s2
.LVL58:
	srai	s0,s0,3
	.loc 1 157 11
	addi	s0,s0,-1
.LVL59:
	.loc 1 158 5 is_stmt 1
	.loc 1 156 10 is_stmt 0
	li	s6,0
.LVL60:
.L33:
	.loc 1 158 11 is_stmt 1
	.loc 1 161 19 is_stmt 0
	lw	a1,8(s1)
	.loc 1 158 11
	ble	s6,s0,.L37
	.loc 1 177 5 is_stmt 1
	.loc 1 179 9
	lui	a0,%hi(.LC19)
	addi	a0,a0,%lo(.LC19)
	j	.L57
.LVL61:
.L47:
	.loc 1 143 13 is_stmt 0
	lui	s0,%hi(_ld_bl_static_blogfile_code_end)
	.loc 1 142 15
	lui	s2,%hi(_ld_bl_static_blogfile_code_start)
	.loc 1 143 13
	addi	s0,s0,%lo(_ld_bl_static_blogfile_code_end)
	.loc 1 142 15
	addi	s2,s2,%lo(_ld_bl_static_blogfile_code_start)
	j	.L32
.L48:
	.loc 1 148 13
	lui	s0,%hi(_ld_bl_static_blogpri_code_end)
	.loc 1 147 15
	lui	s2,%hi(_ld_bl_static_blogpri_code_start)
	.loc 1 148 13
	addi	s0,s0,%lo(_ld_bl_static_blogpri_code_end)
	.loc 1 147 15
	addi	s2,s2,%lo(_ld_bl_static_blogpri_code_start)
	j	.L32
.LVL62:
.L37:
	.loc 1 160 9 is_stmt 1
	.loc 1 160 21 is_stmt 0
	add	s5,s6,s0
	.loc 1 160 30
	srai	s5,s5,1
.LVL63:
	.loc 1 161 9 is_stmt 1
	.loc 1 161 31 is_stmt 0
	slli	s4,s5,3
	add	s4,s2,s4
	.loc 1 161 19
	lw	a0,4(s4)
	call	strcmp
.LVL64:
	.loc 1 162 9 is_stmt 1
	.loc 1 162 12 is_stmt 0
	bge	a0,zero,.L34
	.loc 1 164 13 is_stmt 1
	.loc 1 164 24 is_stmt 0
	addi	s6,s5,1
.LVL65:
	j	.L33
.L34:
	.loc 1 166 14 is_stmt 1
	.loc 1 166 17 is_stmt 0
	beq	a0,zero,.L36
	.loc 1 168 13 is_stmt 1
	.loc 1 168 25 is_stmt 0
	addi	s0,s5,-1
.LVL66:
	j	.L33
.L36:
.LVL67:
	.loc 1 177 5 is_stmt 1
	.loc 1 184 5
	.loc 1 184 11 is_stmt 0
	lw	a5,0(s4)
	.loc 1 185 5
	lui	a0,%hi(.LC20)
.LVL68:
	addi	a0,a0,%lo(.LC20)
	.loc 1 184 20
	sw	s3,0(a5)
	.loc 1 185 5 is_stmt 1
	lw	a5,0(s4)
.LBE15:
.LBE22:
	.loc 1 195 1 is_stmt 0
	lw	s0,24(sp)
	.cfi_restore 8
.LVL69:
.LBB23:
.LBB16:
	.loc 1 185 5
	lw	a1,4(s4)
.LBE16:
.LBE23:
	.loc 1 195 1
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s1,20(sp)
	.cfi_restore 9
.LVL70:
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
.LVL74:
	lw	s6,0(sp)
	.cfi_restore 22
.LVL75:
.LBB24:
.LBB17:
	.loc 1 185 5
	lw	a2,0(a5)
.LBE17:
.LBE24:
	.loc 1 195 1
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
.LBB25:
.LBB18:
	.loc 1 185 5
	tail	bl_printk
.LVL76:
.LBE18:
.LBE25:
	.cfi_endproc
.LFE6:
	.size	cmd_blog_set_level, .-cmd_blog_set_level
	.section	.text.blog_set_level_log_component,"ax",@progbits
	.align	1
	.globl	blog_set_level_log_component
	.type	blog_set_level_log_component, @function
blog_set_level_log_component:
.LFB8:
	.loc 1 274 1 is_stmt 1
	.cfi_startproc
.LVL77:
	.loc 1 276 5
	.loc 1 277 5
	.loc 1 279 5
	.loc 1 280 5
	.loc 1 281 5
	.loc 1 283 5
	.loc 1 284 5
	.loc 1 285 5
	.loc 1 286 5
	.loc 1 287 5
	.loc 1 290 5
	.loc 1 274 1 is_stmt 0
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s1,36(sp)
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s2,32(sp)
	sw	s3,28(sp)
	sw	s4,24(sp)
	sw	s5,20(sp)
	.cfi_offset 9, -12
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.loc 1 290 8
	li	a5,6
	.loc 1 274 1
	mv	s1,a0
	.loc 1 290 8
	ble	a0,a5,.L59
	.loc 1 292 9 is_stmt 1
	mv	a1,a0
.LVL78:
	lui	a0,%hi(.LC16)
.LVL79:
	addi	a0,a0,%lo(.LC16)
.L68:
	.loc 1 326 9 is_stmt 0
	call	bl_printk
.LVL80:
	.loc 1 327 9 is_stmt 1
	.loc 1 327 16 is_stmt 0
	li	a0,-1
.L58:
	.loc 1 334 1
	lw	ra,44(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	lw	s1,36(sp)
	.cfi_restore 9
.LVL81:
	lw	s2,32(sp)
	.cfi_restore 18
	lw	s3,28(sp)
	.cfi_restore 19
	lw	s4,24(sp)
	.cfi_restore 20
	lw	s5,20(sp)
	.cfi_restore 21
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
.LVL82:
.L59:
	.cfi_restore_state
	.loc 1 297 9 is_stmt 1
	.loc 1 300 5
	.loc 1 301 5
	.loc 1 303 5
	.loc 1 304 5
	.loc 1 304 17 is_stmt 0
	lui	a5,%hi(_ld_bl_static_blogcomponent_code_start)
	lui	s0,%hi(_ld_bl_static_blogcomponent_code_end)
	addi	a4,a5,%lo(_ld_bl_static_blogcomponent_code_start)
	addi	s0,s0,%lo(_ld_bl_static_blogcomponent_code_end)
	sub	s0,s0,a4
	srai	s0,s0,3
	.loc 1 304 11
	addi	s0,s0,-1
.LVL83:
	.loc 1 305 5 is_stmt 1
	.loc 1 303 10 is_stmt 0
	li	s5,0
	addi	s4,a5,%lo(_ld_bl_static_blogcomponent_code_start)
.LVL84:
.L61:
	.loc 1 305 11 is_stmt 1
	ble	s5,s0,.L65
	.loc 1 324 5
	.loc 1 326 9
	lui	a0,%hi(.LC19)
	addi	a0,a0,%lo(.LC19)
	j	.L68
.L65:
	.loc 1 307 9
	.loc 1 307 21 is_stmt 0
	add	s2,s5,s0
	.loc 1 307 30
	srai	s2,s2,1
.LVL85:
	.loc 1 308 9 is_stmt 1
	.loc 1 308 31 is_stmt 0
	slli	s3,s2,3
	add	s3,s4,s3
	.loc 1 308 19
	lw	a0,4(s3)
	sw	a1,12(sp)
	call	strcmp
.LVL86:
	.loc 1 309 9 is_stmt 1
	.loc 1 309 12 is_stmt 0
	lw	a1,12(sp)
	bge	a0,zero,.L62
	.loc 1 311 13 is_stmt 1
	.loc 1 311 24 is_stmt 0
	addi	s5,s2,1
.LVL87:
	j	.L61
.L62:
	.loc 1 313 14 is_stmt 1
	.loc 1 313 17 is_stmt 0
	beq	a0,zero,.L64
	.loc 1 315 13 is_stmt 1
	.loc 1 315 25 is_stmt 0
	addi	s0,s2,-1
.LVL88:
	j	.L61
.L64:
.LVL89:
	.loc 1 324 5 is_stmt 1
	.loc 1 331 5
	.loc 1 331 11 is_stmt 0
	lw	a5,0(s3)
	.loc 1 331 20
	sw	s1,0(a5)
	.loc 1 333 5 is_stmt 1
	.loc 1 333 12 is_stmt 0
	j	.L58
	.cfi_endproc
.LFE8:
	.size	blog_set_level_log_component, .-blog_set_level_log_component
	.section	.rodata.blog_port_output.str1.4,"aMS",@progbits,1
	.align	2
.LC21:
	.string	"%.*s"
	.section	.text.blog_port_output,"ax",@progbits
	.align	1
	.globl	blog_port_output
	.type	blog_port_output, @function
blog_port_output:
.LFB10:
	.loc 1 375 1 is_stmt 1
	.cfi_startproc
.LVL90:
	.loc 1 377 5
	.loc 1 375 1 is_stmt 0
	mv	a2,a0
	.loc 1 377 5
	lui	a0,%hi(.LC21)
.LVL91:
	addi	a0,a0,%lo(.LC21)
	tail	bl_printk
.LVL92:
	.cfi_endproc
.LFE10:
	.size	blog_port_output, .-blog_port_output
	.section	.rodata.blog_strcpy.str1.4,"aMS",@progbits,1
	.align	2
.LC22:
	.string	"assert.\r\n"
	.section	.text.blog_strcpy,"ax",@progbits
	.align	1
	.globl	blog_strcpy
	.type	blog_strcpy, @function
blog_strcpy:
.LFB11:
	.loc 1 391 1 is_stmt 1
	.cfi_startproc
.LVL93:
	.loc 1 392 5
	.loc 1 394 5
	.loc 1 394 8 is_stmt 0
	beq	a1,zero,.L71
	mv	a5,a2
	.loc 1 394 16 discriminator 1
	beq	a2,zero,.L71
.LBB28:
.LBB29:
	.loc 1 403 12
	sub	a0,a0,a2
.LVL94:
	li	a3,255
.LVL95:
.L72:
	.loc 1 400 11 is_stmt 1
	.loc 1 400 12 is_stmt 0
	lbu	a4,0(a5)
	.loc 1 400 11
	beq	a4,zero,.L76
	.loc 1 403 9 is_stmt 1
.LVL96:
	.loc 1 403 12 is_stmt 0
	add	a6,a5,a0
	bleu	a6,a3,.L74
.LVL97:
.L76:
	.loc 1 412 5 is_stmt 1
	.loc 1 412 16 is_stmt 0
	sub	a0,a5,a2
.LVL98:
.LBE29:
.LBE28:
	.loc 1 413 1
	ret
.LVL99:
.L71:
	.loc 1 396 9 is_stmt 1
	lui	a0,%hi(.LC22)
.LVL100:
	.loc 1 391 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 396 9
	addi	a0,a0,%lo(.LC22)
	.loc 1 391 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 396 9
	call	bl_printk
.LVL101:
	.loc 1 397 9 is_stmt 1
	.loc 1 413 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 397 16
	li	a0,0
	.loc 1 413 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL102:
.L74:
.LBB31:
.LBB30:
	.loc 1 405 13 is_stmt 1
	.loc 1 405 17 is_stmt 0
	addi	a1,a1,1
.LVL103:
	.loc 1 405 26
	addi	a5,a5,1
.LVL104:
	.loc 1 405 20
	sb	a4,-1(a1)
	j	.L72
.LBE30:
.LBE31:
	.cfi_endproc
.LFE11:
	.size	blog_strcpy, .-blog_strcpy
	.section	.rodata.blog_hexdump_out.str1.4,"aMS",@progbits,1
	.align	2
.LC23:
	.string	"[%s]: %04X-%04X: "
	.align	2
.LC24:
	.string	"%02X "
	.align	2
.LC25:
	.string	"   "
	.align	2
.LC26:
	.string	" "
	.align	2
.LC27:
	.string	"  "
	.align	2
.LC28:
	.string	"%c"
	.align	2
.LC29:
	.string	"\r\n"
	.section	.text.blog_hexdump_out,"ax",@progbits
	.align	1
	.globl	blog_hexdump_out
	.type	blog_hexdump_out, @function
blog_hexdump_out:
.LFB12:
	.loc 1 423 1 is_stmt 1
	.cfi_startproc
.LVL105:
	.loc 1 426 5
	.loc 1 427 5
	.loc 1 428 5
	.loc 1 423 1 is_stmt 0
	addi	sp,sp,-96
	.cfi_def_cfa_offset 96
	sw	s0,88(sp)
	sw	s1,84(sp)
	sw	s5,68(sp)
	sw	s6,64(sp)
	sw	s8,56(sp)
	sw	s11,44(sp)
	sw	ra,92(sp)
	sw	s2,80(sp)
	sw	s3,76(sp)
	sw	s4,72(sp)
	sw	s7,60(sp)
	sw	s9,52(sp)
	sw	s10,48(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 24, -40
	.cfi_offset 27, -52
	.cfi_offset 1, -4
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 23, -36
	.cfi_offset 25, -44
	.cfi_offset 26, -48
	.loc 1 423 1
	sw	a0,12(sp)
	mv	s5,a1
	mv	s6,a2
	mv	s1,a3
	.loc 1 428 10
	sw	zero,24(sp)
	sw	zero,28(sp)
	.loc 1 429 5 is_stmt 1
	.loc 1 433 5
.LVL106:
	.loc 1 433 12 is_stmt 0
	li	s0,0
	.loc 1 436 22
	lui	s8,%hi(.LANCHOR0)
	.loc 1 460 28
	lui	s11,%hi(.LC26)
.LVL107:
.L86:
	.loc 1 433 17 is_stmt 1 discriminator 1
	.loc 1 433 5 is_stmt 0 discriminator 1
	bltu	s0,s1,.L98
	.loc 1 486 1
	lw	ra,92(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,88(sp)
	.cfi_restore 8
.LVL108:
	lw	s1,84(sp)
	.cfi_restore 9
	lw	s2,80(sp)
	.cfi_restore 18
	lw	s3,76(sp)
	.cfi_restore 19
	lw	s4,72(sp)
	.cfi_restore 20
	lw	s5,68(sp)
	.cfi_restore 21
	lw	s6,64(sp)
	.cfi_restore 22
.LVL109:
	lw	s7,60(sp)
	.cfi_restore 23
	lw	s8,56(sp)
	.cfi_restore 24
	lw	s9,52(sp)
	.cfi_restore 25
	lw	s10,48(sp)
	.cfi_restore 26
	lw	s11,44(sp)
	.cfi_restore 27
	addi	sp,sp,96
	.cfi_def_cfa_offset 0
.LVL110:
	jr	ra
.LVL111:
.L98:
	.cfi_restore_state
	.loc 1 436 9 is_stmt 1
	.loc 1 436 22 is_stmt 0
	lw	a3,12(sp)
	.loc 1 436 79
	add	a5,s5,s0
	.loc 1 436 22
	lui	a2,%hi(.LC23)
	addi	a5,a5,-1
	mv	a4,s0
	addi	a2,a2,%lo(.LC23)
	li	a1,256
	addi	a0,s8,%lo(.LANCHOR0)
	call	snprintf
.LVL112:
	.loc 1 438 9 is_stmt 1
	.loc 1 438 12 is_stmt 0
	li	a5,256
	bleu	a0,a5,.L87
	li	a0,256
.LVL113:
.L87:
	slli	s10,a0,16
	.loc 1 447 23 discriminator 1
	slli	s2,s5,16
	srli	s10,s10,16
	mv	s4,s0
	mv	s7,s0
	li	s9,0
	srli	s2,s2,16
	addi	s3,s8,%lo(.LANCHOR0)
.L88:
.LVL114:
	.loc 1 447 21 is_stmt 1 discriminator 1
	.loc 1 447 9 is_stmt 0 discriminator 1
	bgtu	s2,s9,.L92
	.loc 1 463 9 is_stmt 1
	.loc 1 463 20 is_stmt 0
	lui	a2,%hi(.LC27)
	addi	a2,a2,%lo(.LC27)
	add	a1,s3,s10
	mv	a0,s10
	call	blog_strcpy
.LVL115:
	.loc 1 463 17
	add	a5,s10,a0
	slli	s7,a5,16
	srli	s7,s7,16
.LVL116:
	.loc 1 465 9 is_stmt 1
	.loc 1 469 17 is_stmt 0
	li	s9,94
	lui	a4,%hi(.LC28)
.LVL117:
.L93:
	.loc 1 465 21 is_stmt 1 discriminator 1
	.loc 1 465 9 is_stmt 0 discriminator 1
	sub	a5,s4,s0
	slli	a5,a5,16
	srli	a5,a5,16
	bgtu	s2,a5,.L96
	.loc 1 474 9 is_stmt 1
	.loc 1 474 23 is_stmt 0
	lui	s4,%hi(.LC29)
.LVL118:
	addi	a0,s4,%lo(.LC29)
	call	strlen
.LVL119:
	.loc 1 474 21
	add	a0,s7,a0
	.loc 1 474 12
	li	a5,256
	bleu	a0,a5,.L97
	.loc 1 476 13 is_stmt 1
	.loc 1 476 31 is_stmt 0
	addi	a0,s4,%lo(.LC29)
	call	strlen
.LVL120:
	.loc 1 476 21
	li	s7,256
.LVL121:
	sub	s7,s7,a0
	slli	s7,s7,16
	srli	s7,s7,16
.LVL122:
.L97:
	.loc 1 479 9 is_stmt 1 discriminator 2
	.loc 1 479 20 is_stmt 0 discriminator 2
	addi	a2,s4,%lo(.LC29)
	add	a1,s3,s7
	mv	a0,s7
	call	blog_strcpy
.LVL123:
	.loc 1 482 9 is_stmt 1 discriminator 2
	.loc 1 479 17 is_stmt 0 discriminator 2
	add	a1,s7,a0
	.loc 1 482 9 discriminator 2
	slli	a1,a1,16
	.loc 1 433 29 discriminator 2
	add	s0,s2,s0
.LVL124:
	.loc 1 482 9 discriminator 2
	srli	a1,a1,16
	addi	a0,s8,%lo(.LANCHOR0)
.LVL125:
	.loc 1 433 29 discriminator 2
	slli	s0,s0,16
	.loc 1 482 9 discriminator 2
	call	blog_port_output
.LVL126:
	.loc 1 433 27 is_stmt 1 discriminator 2
	.loc 1 433 29 is_stmt 0 discriminator 2
	srli	s0,s0,16
.LVL127:
	j	.L86
.LVL128:
.L92:
	.loc 1 449 13 is_stmt 1
	.loc 1 449 16 is_stmt 0
	ble	s1,s7,.L89
	.loc 1 451 17 is_stmt 1
	.loc 1 451 72 is_stmt 0
	add	a4,s6,s7
	.loc 1 451 17
	lbu	a3,0(a4)
	lui	a5,%hi(.LC24)
	addi	a2,a5,%lo(.LC24)
	li	a1,8
	addi	a0,sp,24
	call	snprintf
.LVL129:
.L90:
	.loc 1 457 13 is_stmt 1
	.loc 1 457 24 is_stmt 0
	add	a1,s3,s10
	mv	a0,s10
	addi	a2,sp,24
	call	blog_strcpy
.LVL130:
	addi	a4,s9,1
	.loc 1 457 21
	add	a5,s10,a0
	slli	s9,a4,16
.LVL131:
	slli	s10,a5,16
.LVL132:
	.loc 1 458 16
	andi	a4,a4,7
	.loc 1 457 21
	srli	s10,s10,16
.LVL133:
	.loc 1 458 13 is_stmt 1
	srli	s9,s9,16
	.loc 1 458 16 is_stmt 0
	bne	a4,zero,.L91
	.loc 1 460 17 is_stmt 1
	.loc 1 460 28 is_stmt 0
	add	a1,s3,s10
	mv	a0,s10
	addi	a2,s11,%lo(.LC26)
	call	blog_strcpy
.LVL134:
	.loc 1 460 25
	add	a5,s10,a0
	slli	s10,a5,16
.LVL135:
	srli	s10,s10,16
.LVL136:
.L91:
	.loc 1 447 32 is_stmt 1 discriminator 2
	addi	s7,s7,1
	j	.L88
.L89:
	.loc 1 455 17
	lui	a5,%hi(.LC25)
	li	a2,8
	addi	a1,a5,%lo(.LC25)
	addi	a0,sp,24
	call	strncpy
.LVL137:
	j	.L90
.LVL138:
.L96:
	.loc 1 467 13
	.loc 1 467 16 is_stmt 0
	ble	s1,s4,.L94
	.loc 1 469 17 is_stmt 1
	.loc 1 469 86 is_stmt 0
	add	a5,s6,s4
	lbu	a3,0(a5)
	.loc 1 469 95
	addi	a5,a3,-32
	.loc 1 469 17
	bleu	a5,s9,.L95
	li	a3,46
.L95:
	.loc 1 469 17 discriminator 4
	addi	a2,a4,%lo(.LC28)
	li	a1,8
	addi	a0,sp,24
	call	snprintf
.LVL139:
	.loc 1 470 17 is_stmt 1 discriminator 4
	.loc 1 470 28 is_stmt 0 discriminator 4
	add	a1,s3,s7
	mv	a0,s7
	addi	a2,sp,24
	call	blog_strcpy
.LVL140:
	.loc 1 470 25 discriminator 4
	add	s7,s7,a0
.LVL141:
	slli	s7,s7,16
	srli	s7,s7,16
	lui	a4,%hi(.LC28)
.LVL142:
.L94:
	.loc 1 465 32 is_stmt 1 discriminator 2
	addi	s4,s4,1
.LVL143:
	j	.L93
	.cfi_endproc
.LFE12:
	.size	blog_hexdump_out, .-blog_hexdump_out
	.section	.rodata.blog_init.str1.4,"aMS",@progbits,1
	.align	2
.LC30:
	.string	"\r\nblog init set power on level %d, %d, %d.\r\n"
	.section	.text.blog_init,"ax",@progbits
	.align	1
	.globl	blog_init
	.type	blog_init, @function
blog_init:
.LFB13:
	.loc 1 489 1
	.cfi_startproc
	.loc 1 490 5
.LBB34:
.LBB35:
	.loc 1 338 5
	.loc 1 340 5
	.loc 1 341 5
	.loc 1 342 5
	.loc 1 343 5
	.loc 1 344 5
	.loc 1 345 5
	.loc 1 347 5
	lui	a0,%hi(.LC30)
.LBE35:
.LBE34:
	.loc 1 489 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
.LBB39:
.LBB36:
	.loc 1 347 5
	li	a3,2
	li	a2,2
	li	a1,2
	addi	a0,a0,%lo(.LC30)
.LBE36:
.LBE39:
	.loc 1 489 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
.LBB40:
.LBB37:
	.loc 1 347 5
	call	bl_printk
.LVL144:
	.loc 1 349 5 is_stmt 1
	.loc 1 349 15 is_stmt 0
	lui	a5,%hi(_ld_bl_static_blogcomponent_code_start)
	.loc 1 349 5
	lui	a4,%hi(_ld_bl_static_blogcomponent_code_end)
	.loc 1 349 15
	addi	a5,a5,%lo(_ld_bl_static_blogcomponent_code_start)
	.loc 1 349 5
	addi	a4,a4,%lo(_ld_bl_static_blogcomponent_code_end)
	.loc 1 352 24
	li	a3,2
.LVL145:
.L103:
	.loc 1 350 10 is_stmt 1
	.loc 1 349 5 is_stmt 0
	bltu	a5,a4,.L104
	.loc 1 355 15
	lui	a5,%hi(_ld_bl_static_blogfile_code_start)
.LVL146:
	.loc 1 355 5
	lui	a4,%hi(_ld_bl_static_blogfile_code_end)
	.loc 1 355 15
	addi	a5,a5,%lo(_ld_bl_static_blogfile_code_start)
	.loc 1 355 5
	addi	a4,a4,%lo(_ld_bl_static_blogfile_code_end)
	.loc 1 358 24
	li	a3,2
.L105:
.LVL147:
	.loc 1 356 10 is_stmt 1
	.loc 1 355 5 is_stmt 0
	bltu	a5,a4,.L106
	.loc 1 361 15
	lui	a5,%hi(_ld_bl_static_blogpri_code_start)
.LVL148:
	.loc 1 361 5
	lui	a4,%hi(_ld_bl_static_blogpri_code_end)
	.loc 1 361 15
	addi	a5,a5,%lo(_ld_bl_static_blogpri_code_start)
	.loc 1 361 5
	addi	a4,a4,%lo(_ld_bl_static_blogpri_code_end)
	.loc 1 364 24
	li	a3,2
.L107:
.LVL149:
	.loc 1 362 10 is_stmt 1
	.loc 1 361 5 is_stmt 0
	bltu	a5,a4,.L108
.LBE37:
.LBE40:
	.loc 1 491 1
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.L104:
	.cfi_restore_state
.LBB41:
.LBB38:
	.loc 1 352 9 is_stmt 1
	.loc 1 352 15 is_stmt 0
	lw	a2,0(a5)
	.loc 1 350 80
	addi	a5,a5,8
.LVL150:
	.loc 1 352 24
	sw	a3,0(a2)
	.loc 1 350 76 is_stmt 1
.LVL151:
	j	.L103
.L106:
	.loc 1 358 9
	.loc 1 358 15 is_stmt 0
	lw	a2,0(a5)
	.loc 1 356 75
	addi	a5,a5,8
.LVL152:
	.loc 1 358 24
	sw	a3,0(a2)
	.loc 1 356 71 is_stmt 1
.LVL153:
	j	.L105
.L108:
	.loc 1 364 9
	.loc 1 364 15 is_stmt 0
	lw	a2,0(a5)
	.loc 1 362 74
	addi	a5,a5,8
.LVL154:
	.loc 1 364 24
	sw	a3,0(a2)
	.loc 1 362 70 is_stmt 1
.LVL155:
	j	.L107
.LBE38:
.LBE41:
	.cfi_endproc
.LFE13:
	.size	blog_init, .-blog_init
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	2
.LC31:
	.string	"blogset"
	.align	2
.LC32:
	.string	"blog pri set level"
	.align	2
.LC33:
	.string	"blogdump"
	.align	2
.LC34:
	.string	"blog info dump"
	.section	.bss.log_buf,"aw",@nobits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	log_buf, @object
	.size	log_buf, 256
log_buf:
	.zero	256
	.section	.static_cli_cmds,"a"
	.align	2
	.type	cmds_user, @object
	.size	cmds_user, 24
cmds_user:
	.word	.LC31
	.word	.LC32
	.word	cmd_blog_set_level
	.word	.LC33
	.word	.LC34
	.word	cmd_blog_info_dump
	.text
.Letext0:
	.file 2 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 3 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h"
	.file 4 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 5 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/cli/cli/include/cli.h"
	.file 6 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/blog/blog_type.h"
	.file 7 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/utils/include/utils_log.h"
	.file 8 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h"
	.file 9 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h"
	.file 10 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xdb0
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF76
	.byte	0xc
	.4byte	.LASF77
	.4byte	.LASF78
	.4byte	.Ldebug_ranges0+0xa0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.byte	0x3
	.4byte	.LASF3
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
	.byte	0x3
	.4byte	.LASF4
	.byte	0x2
	.byte	0x39
	.byte	0x1c
	.4byte	0x52
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.byte	0x3
	.4byte	.LASF7
	.byte	0x2
	.byte	0x4f
	.byte	0x1b
	.4byte	0x6c
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF9
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.byte	0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0xd1
	.byte	0x16
	.4byte	0x88
	.byte	0x5
	.byte	0x4
	.4byte	0xa1
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.byte	0x6
	.4byte	0xa1
	.byte	0x5
	.byte	0x4
	.4byte	0xa8
	.byte	0x7
	.4byte	0xa1
	.4byte	0xc3
	.byte	0x8
	.4byte	0x88
	.byte	0x7
	.byte	0
	.byte	0x3
	.4byte	.LASF14
	.byte	0x4
	.byte	0x18
	.byte	0x13
	.4byte	0x2c
	.byte	0x6
	.4byte	0xc3
	.byte	0x3
	.4byte	.LASF15
	.byte	0x4
	.byte	0x24
	.byte	0x14
	.4byte	0x46
	.byte	0x3
	.4byte	.LASF16
	.byte	0x4
	.byte	0x30
	.byte	0x14
	.4byte	0x60
	.byte	0x9
	.4byte	.LASF28
	.byte	0xc
	.byte	0x5
	.byte	0x32
	.byte	0x8
	.4byte	0x121
	.byte	0xa
	.4byte	.LASF17
	.byte	0x5
	.byte	0x33
	.byte	0x11
	.4byte	0xad
	.byte	0
	.byte	0xa
	.4byte	.LASF18
	.byte	0x5
	.byte	0x34
	.byte	0x11
	.4byte	0xad
	.byte	0x4
	.byte	0xa
	.4byte	.LASF19
	.byte	0x5
	.byte	0x36
	.byte	0xc
	.4byte	0x146
	.byte	0x8
	.byte	0
	.byte	0x6
	.4byte	0xec
	.byte	0xb
	.4byte	0x140
	.byte	0xc
	.4byte	0x9b
	.byte	0xc
	.4byte	0x81
	.byte	0xc
	.4byte	0x81
	.byte	0xc
	.4byte	0x140
	.byte	0
	.byte	0x5
	.byte	0x4
	.4byte	0x9b
	.byte	0x5
	.byte	0x4
	.4byte	0x126
	.byte	0x7
	.4byte	0xa1
	.4byte	0x15c
	.byte	0x8
	.4byte	0x88
	.byte	0xff
	.byte	0
	.byte	0xd
	.4byte	.LASF79
	.byte	0x7
	.byte	0x4
	.4byte	0x88
	.byte	0x6
	.byte	0x22
	.byte	0xe
	.4byte	0x199
	.byte	0xe
	.4byte	.LASF20
	.byte	0
	.byte	0xe
	.4byte	.LASF21
	.byte	0x1
	.byte	0xe
	.4byte	.LASF22
	.byte	0x2
	.byte	0xe
	.4byte	.LASF23
	.byte	0x3
	.byte	0xe
	.4byte	.LASF24
	.byte	0x4
	.byte	0xe
	.4byte	.LASF25
	.byte	0x5
	.byte	0xe
	.4byte	.LASF26
	.byte	0x6
	.byte	0
	.byte	0x3
	.4byte	.LASF27
	.byte	0x6
	.byte	0x2a
	.byte	0x3
	.4byte	0x15c
	.byte	0x9
	.4byte	.LASF29
	.byte	0x8
	.byte	0x6
	.byte	0x2c
	.byte	0x10
	.4byte	0x1cd
	.byte	0xa
	.4byte	.LASF30
	.byte	0x6
	.byte	0x2d
	.byte	0x13
	.4byte	0x1cd
	.byte	0
	.byte	0xa
	.4byte	.LASF17
	.byte	0x6
	.byte	0x2e
	.byte	0xb
	.4byte	0x9b
	.byte	0x4
	.byte	0
	.byte	0x5
	.byte	0x4
	.4byte	0x199
	.byte	0x3
	.4byte	.LASF31
	.byte	0x6
	.byte	0x2f
	.byte	0x3
	.4byte	0x1a5
	.byte	0xf
	.4byte	.LASF32
	.byte	0x1
	.byte	0x2d
	.byte	0xd
	.4byte	0x14c
	.byte	0x5
	.byte	0x3
	.4byte	log_buf
	.byte	0x7
	.4byte	0x121
	.4byte	0x201
	.byte	0x8
	.4byte	0x88
	.byte	0x1
	.byte	0
	.byte	0x6
	.4byte	0x1f1
	.byte	0x10
	.4byte	.LASF33
	.byte	0x1
	.2byte	0x1ed
	.byte	0x21
	.4byte	0x201
	.byte	0x5
	.byte	0x3
	.4byte	cmds_user
	.byte	0x11
	.4byte	.LASF34
	.byte	0x1
	.2byte	0x1e8
	.byte	0x6
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x1
	.byte	0x9c
	.4byte	0x292
	.byte	0x12
	.4byte	0x58b
	.4byte	.LBB34
	.4byte	.Ldebug_ranges0+0x78
	.byte	0x1
	.2byte	0x1ea
	.byte	0x5
	.byte	0x13
	.4byte	.Ldebug_ranges0+0x78
	.byte	0x14
	.4byte	0x599
	.4byte	.LLST46
	.byte	0x15
	.4byte	0x5a6
	.byte	0x15
	.4byte	0x5b3
	.byte	0x15
	.4byte	0x5c0
	.byte	0x15
	.4byte	0x5cd
	.byte	0x15
	.4byte	0x5da
	.byte	0x15
	.4byte	0x5e7
	.byte	0x16
	.4byte	.LVL144
	.4byte	0xd47
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC30
	.byte	0x17
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x32
	.byte	0x17
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x32
	.byte	0x17
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x11
	.4byte	.LASF35
	.byte	0x1
	.2byte	0x1a6
	.byte	0x6
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x1
	.byte	0x9c
	.4byte	0x4e3
	.byte	0x18
	.4byte	.LASF17
	.byte	0x1
	.2byte	0x1a6
	.byte	0x23
	.4byte	0xad
	.4byte	.LLST38
	.byte	0x18
	.4byte	.LASF36
	.byte	0x1
	.2byte	0x1a6
	.byte	0x31
	.4byte	0xc3
	.4byte	.LLST39
	.byte	0x19
	.string	"buf"
	.byte	0x1
	.2byte	0x1a6
	.byte	0x47
	.4byte	0x4e3
	.4byte	.LLST40
	.byte	0x18
	.4byte	.LASF37
	.byte	0x1
	.2byte	0x1a6
	.byte	0x55
	.4byte	0xd4
	.4byte	.LLST41
	.byte	0x1a
	.string	"i"
	.byte	0x1
	.2byte	0x1aa
	.byte	0xe
	.4byte	0xd4
	.4byte	.LLST42
	.byte	0x1a
	.string	"j"
	.byte	0x1
	.2byte	0x1aa
	.byte	0x11
	.4byte	0xd4
	.4byte	.LLST43
	.byte	0x1b
	.4byte	.LASF38
	.byte	0x1
	.2byte	0x1ab
	.byte	0xe
	.4byte	0xd4
	.4byte	.LLST44
	.byte	0x10
	.4byte	.LASF39
	.byte	0x1
	.2byte	0x1ac
	.byte	0xa
	.4byte	0xb3
	.byte	0x3
	.byte	0x91
	.byte	0xb8,0x7f
	.byte	0x1b
	.4byte	.LASF40
	.byte	0x1
	.2byte	0x1ad
	.byte	0x9
	.4byte	0x81
	.4byte	.LLST45
	.byte	0x1c
	.4byte	.LVL112
	.4byte	0xd53
	.4byte	0x37e
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0x17
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xa
	.2byte	0x100
	.byte	0x17
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC23
	.byte	0x17
	.byte	0x1
	.byte	0x5d
	.byte	0x4
	.byte	0x91
	.byte	0xac,0x7f
	.byte	0x6
	.byte	0x17
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x17
	.byte	0x1
	.byte	0x5f
	.byte	0x7
	.byte	0x78
	.byte	0
	.byte	0x85
	.byte	0
	.byte	0x22
	.byte	0x31
	.byte	0x1c
	.byte	0
	.byte	0x1c
	.4byte	.LVL115
	.4byte	0x4e9
	.4byte	0x3a4
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8a
	.byte	0
	.byte	0x17
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x83
	.byte	0
	.byte	0x8a
	.byte	0
	.byte	0x22
	.byte	0x17
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC27
	.byte	0
	.byte	0x1c
	.4byte	.LVL119
	.4byte	0xd60
	.4byte	0x3bb
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC29
	.byte	0
	.byte	0x1c
	.4byte	.LVL120
	.4byte	0xd60
	.4byte	0x3d2
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC29
	.byte	0
	.byte	0x1c
	.4byte	.LVL123
	.4byte	0x4e9
	.4byte	0x3f8
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x87
	.byte	0
	.byte	0x17
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x83
	.byte	0
	.byte	0x87
	.byte	0
	.byte	0x22
	.byte	0x17
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC29
	.byte	0
	.byte	0x1c
	.4byte	.LVL126
	.4byte	0x530
	.4byte	0x40f
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0
	.byte	0x1c
	.4byte	.LVL129
	.4byte	0xd53
	.4byte	0x432
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xb8,0x7f
	.byte	0x17
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x38
	.byte	0x17
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC24
	.byte	0
	.byte	0x1c
	.4byte	.LVL130
	.4byte	0x4e9
	.4byte	0x456
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8a
	.byte	0
	.byte	0x17
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x83
	.byte	0
	.byte	0x8a
	.byte	0
	.byte	0x22
	.byte	0x17
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0x91
	.byte	0xb8,0x7f
	.byte	0
	.byte	0x1c
	.4byte	.LVL134
	.4byte	0x4e9
	.4byte	0x47c
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8a
	.byte	0
	.byte	0x17
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x83
	.byte	0
	.byte	0x8a
	.byte	0
	.byte	0x22
	.byte	0x17
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC26
	.byte	0
	.byte	0x1c
	.4byte	.LVL137
	.4byte	0xd6c
	.4byte	0x49f
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xb8,0x7f
	.byte	0x17
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC25
	.byte	0x17
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x38
	.byte	0
	.byte	0x1c
	.4byte	.LVL139
	.4byte	0xd53
	.4byte	0x4c2
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xb8,0x7f
	.byte	0x17
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x38
	.byte	0x17
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC28
	.byte	0
	.byte	0x16
	.4byte	.LVL140
	.4byte	0x4e9
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x87
	.byte	0
	.byte	0x17
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x83
	.byte	0
	.byte	0x87
	.byte	0
	.byte	0x22
	.byte	0x17
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0x91
	.byte	0xb8,0x7f
	.byte	0
	.byte	0
	.byte	0x5
	.byte	0x4
	.4byte	0xcf
	.byte	0x1d
	.4byte	.LASF80
	.byte	0x1
	.2byte	0x186
	.byte	0x8
	.4byte	0x8f
	.byte	0x1
	.4byte	0x530
	.byte	0x1e
	.4byte	.LASF41
	.byte	0x1
	.2byte	0x186
	.byte	0x1b
	.4byte	0x8f
	.byte	0x1f
	.string	"dst"
	.byte	0x1
	.2byte	0x186
	.byte	0x2a
	.4byte	0x9b
	.byte	0x1f
	.string	"src"
	.byte	0x1
	.2byte	0x186
	.byte	0x3b
	.4byte	0xad
	.byte	0x20
	.4byte	.LASF43
	.byte	0x1
	.2byte	0x188
	.byte	0x11
	.4byte	0xad
	.byte	0
	.byte	0x11
	.4byte	.LASF42
	.byte	0x1
	.2byte	0x176
	.byte	0x6
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x1
	.byte	0x9c
	.4byte	0x58b
	.byte	0x19
	.string	"log"
	.byte	0x1
	.2byte	0x176
	.byte	0x23
	.4byte	0xad
	.4byte	.LLST29
	.byte	0x18
	.4byte	.LASF37
	.byte	0x1
	.2byte	0x176
	.byte	0x2f
	.4byte	0x8f
	.4byte	.LLST30
	.byte	0x21
	.4byte	.LVL92
	.4byte	0xd47
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC21
	.byte	0x17
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x17
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0
	.byte	0x22
	.4byte	.LASF81
	.byte	0x1
	.2byte	0x150
	.byte	0xd
	.byte	0x1
	.4byte	0x5f5
	.byte	0x20
	.4byte	.LASF44
	.byte	0x1
	.2byte	0x152
	.byte	0x12
	.4byte	0x5f5
	.byte	0x23
	.4byte	.LASF45
	.byte	0x1
	.2byte	0x154
	.byte	0x11
	.4byte	0xa1
	.byte	0x23
	.4byte	.LASF46
	.byte	0x1
	.2byte	0x155
	.byte	0x11
	.4byte	0xa1
	.byte	0x23
	.4byte	.LASF47
	.byte	0x1
	.2byte	0x156
	.byte	0x11
	.4byte	0xa1
	.byte	0x23
	.4byte	.LASF48
	.byte	0x1
	.2byte	0x157
	.byte	0x11
	.4byte	0xa1
	.byte	0x23
	.4byte	.LASF49
	.byte	0x1
	.2byte	0x158
	.byte	0x11
	.4byte	0xa1
	.byte	0x23
	.4byte	.LASF50
	.byte	0x1
	.2byte	0x159
	.byte	0x11
	.4byte	0xa1
	.byte	0
	.byte	0x5
	.byte	0x4
	.4byte	0x1d3
	.byte	0x24
	.4byte	.LASF82
	.byte	0x1
	.2byte	0x111
	.byte	0x5
	.4byte	0x81
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0x6e3
	.byte	0x18
	.4byte	.LASF51
	.byte	0x1
	.2byte	0x111
	.byte	0x26
	.4byte	0x81
	.4byte	.LLST26
	.byte	0x18
	.4byte	.LASF52
	.byte	0x1
	.2byte	0x111
	.byte	0x37
	.4byte	0x9b
	.4byte	.LLST27
	.byte	0x23
	.4byte	.LASF45
	.byte	0x1
	.2byte	0x114
	.byte	0x11
	.4byte	0xa1
	.byte	0x23
	.4byte	.LASF46
	.byte	0x1
	.2byte	0x115
	.byte	0x11
	.4byte	0xa1
	.byte	0x20
	.4byte	.LASF53
	.byte	0x1
	.2byte	0x117
	.byte	0x12
	.4byte	0x5f5
	.byte	0x25
	.string	"end"
	.byte	0x1
	.2byte	0x118
	.byte	0x12
	.4byte	0x5f5
	.byte	0x10
	.4byte	.LASF44
	.byte	0x1
	.2byte	0x119
	.byte	0x12
	.4byte	0x5f5
	.byte	0x1
	.byte	0x63
	.byte	0x1b
	.4byte	.LASF54
	.byte	0x1
	.2byte	0x11b
	.byte	0x9
	.4byte	0x81
	.4byte	.LLST28
	.byte	0x10
	.4byte	.LASF55
	.byte	0x1
	.2byte	0x11c
	.byte	0x9
	.4byte	0x81
	.byte	0x1
	.byte	0x58
	.byte	0x26
	.string	"mid"
	.byte	0x1
	.2byte	0x11d
	.byte	0xe
	.4byte	0xe0
	.byte	0x1
	.byte	0x62
	.byte	0x10
	.4byte	.LASF56
	.byte	0x1
	.2byte	0x11e
	.byte	0x9
	.4byte	0x81
	.byte	0x1
	.byte	0x5a
	.byte	0x10
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x11f
	.byte	0x12
	.4byte	0x199
	.byte	0x1
	.byte	0x59
	.byte	0x27
	.4byte	.LVL80
	.4byte	0xd47
	.byte	0x16
	.4byte	.LVL86
	.4byte	0xd78
	.byte	0x17
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0x5c
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0x28
	.4byte	.LASF57
	.byte	0x1
	.byte	0xc5
	.byte	0x6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.4byte	0x901
	.byte	0x29
	.string	"buf"
	.byte	0x1
	.byte	0xc5
	.byte	0x1f
	.4byte	0x9b
	.4byte	.LLST0
	.byte	0x29
	.string	"len"
	.byte	0x1
	.byte	0xc5
	.byte	0x28
	.4byte	0x81
	.4byte	.LLST1
	.byte	0x2a
	.4byte	.LASF58
	.byte	0x1
	.byte	0xc5
	.byte	0x31
	.4byte	0x81
	.4byte	.LLST2
	.byte	0x2a
	.4byte	.LASF59
	.byte	0x1
	.byte	0xc5
	.byte	0x3e
	.4byte	0x140
	.4byte	.LLST3
	.byte	0x2b
	.4byte	.LASF60
	.byte	0x1
	.byte	0xc7
	.byte	0x12
	.4byte	0x5f5
	.4byte	.LLST4
	.byte	0x2b
	.4byte	.LASF61
	.byte	0x1
	.byte	0xc7
	.byte	0x1b
	.4byte	0x5f5
	.4byte	.LLST5
	.byte	0xf
	.4byte	.LASF62
	.byte	0x1
	.byte	0xc7
	.byte	0x24
	.4byte	0x5f5
	.byte	0x1
	.byte	0x62
	.byte	0xf
	.4byte	.LASF63
	.byte	0x1
	.byte	0xc8
	.byte	0xa
	.4byte	0x901
	.byte	0x3
	.byte	0x91
	.byte	0xd0,0x7e
	.byte	0x2c
	.4byte	.LASF45
	.byte	0x1
	.byte	0xca
	.byte	0x11
	.4byte	0xa1
	.byte	0x2c
	.4byte	.LASF46
	.byte	0x1
	.byte	0xcb
	.byte	0x11
	.4byte	0xa1
	.byte	0x2c
	.4byte	.LASF47
	.byte	0x1
	.byte	0xcc
	.byte	0x11
	.4byte	0xa1
	.byte	0x2c
	.4byte	.LASF48
	.byte	0x1
	.byte	0xcd
	.byte	0x11
	.4byte	0xa1
	.byte	0x2c
	.4byte	.LASF49
	.byte	0x1
	.byte	0xce
	.byte	0x11
	.4byte	0xa1
	.byte	0x2c
	.4byte	.LASF50
	.byte	0x1
	.byte	0xcf
	.byte	0x11
	.4byte	0xa1
	.byte	0x1c
	.4byte	.LVL4
	.4byte	0xd84
	.4byte	0x7df
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xd4,0x7e
	.byte	0x17
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x17
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x7c
	.byte	0
	.byte	0x1c
	.4byte	.LVL5
	.4byte	0xd47
	.4byte	0x7f6
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0x1c
	.4byte	.LVL6
	.4byte	0xd47
	.4byte	0x80d
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.byte	0x1c
	.4byte	.LVL7
	.4byte	0xd47
	.4byte	0x824
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0x27
	.4byte	.LVL9
	.4byte	0xd60
	.byte	0x1c
	.4byte	.LVL10
	.4byte	0xd47
	.4byte	0x844
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0x1c
	.4byte	.LVL13
	.4byte	0xd78
	.4byte	0x858
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0
	.byte	0x1c
	.4byte	.LVL15
	.4byte	0xd60
	.4byte	0x86c
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0
	.byte	0x1c
	.4byte	.LVL16
	.4byte	0xd8f
	.4byte	0x885
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0x17
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x1c
	.4byte	.LVL17
	.4byte	0xd47
	.4byte	0x89c
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.byte	0x1c
	.4byte	.LVL18
	.4byte	0xd9b
	.4byte	0x8b0
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0
	.byte	0x27
	.4byte	.LVL19
	.4byte	0xda7
	.byte	0x1c
	.4byte	.LVL22
	.4byte	0xd78
	.4byte	0x8cd
	.byte	0x17
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0
	.byte	0x1c
	.4byte	.LVL24
	.4byte	0xd47
	.4byte	0x8e4
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.byte	0x27
	.4byte	.LVL25
	.4byte	0xda7
	.byte	0x16
	.4byte	.LVL26
	.4byte	0xd47
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.byte	0
	.byte	0x7
	.4byte	0xa1
	.4byte	0x911
	.byte	0x8
	.4byte	0x88
	.byte	0x7f
	.byte	0
	.byte	0x28
	.4byte	.LASF64
	.byte	0x1
	.byte	0xbd
	.byte	0x6
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0xb97
	.byte	0x29
	.string	"buf"
	.byte	0x1
	.byte	0xbd
	.byte	0x1f
	.4byte	0x9b
	.4byte	.LLST6
	.byte	0x29
	.string	"len"
	.byte	0x1
	.byte	0xbd
	.byte	0x28
	.4byte	0x81
	.4byte	.LLST7
	.byte	0x2a
	.4byte	.LASF58
	.byte	0x1
	.byte	0xbd
	.byte	0x31
	.4byte	0x81
	.4byte	.LLST8
	.byte	0x2a
	.4byte	.LASF59
	.byte	0x1
	.byte	0xbd
	.byte	0x3e
	.4byte	0x140
	.4byte	.LLST9
	.byte	0x2d
	.4byte	0xb97
	.4byte	.LBB6
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0xbf
	.byte	0xe
	.4byte	0xb83
	.byte	0x2e
	.4byte	0xbb4
	.4byte	.LLST10
	.byte	0x2e
	.4byte	0xba8
	.4byte	.LLST11
	.byte	0x13
	.4byte	.Ldebug_ranges0+0
	.byte	0x14
	.4byte	0xc08
	.4byte	.LLST12
	.byte	0x14
	.4byte	0xc14
	.4byte	.LLST13
	.byte	0x14
	.4byte	0xc20
	.4byte	.LLST14
	.byte	0x14
	.4byte	0xc2c
	.4byte	.LLST15
	.byte	0x14
	.4byte	0xc38
	.4byte	.LLST16
	.byte	0x14
	.4byte	0xc44
	.4byte	.LLST17
	.byte	0x14
	.4byte	0xc50
	.4byte	.LLST18
	.byte	0x14
	.4byte	0xc5c
	.4byte	.LLST19
	.byte	0x14
	.4byte	0xc68
	.4byte	.LLST20
	.byte	0x15
	.4byte	0xbc0
	.byte	0x15
	.4byte	0xbcc
	.byte	0x15
	.4byte	0xbd8
	.byte	0x15
	.4byte	0xbe4
	.byte	0x15
	.4byte	0xbf0
	.byte	0x15
	.4byte	0xbfc
	.byte	0x2d
	.4byte	0xc75
	.4byte	.LBB8
	.4byte	.Ldebug_ranges0+0x48
	.byte	0x1
	.byte	0x85
	.byte	0xe
	.4byte	0xa59
	.byte	0x2e
	.4byte	0xc92
	.4byte	.LLST21
	.byte	0x2e
	.4byte	0xc86
	.4byte	.LLST22
	.byte	0x13
	.4byte	.Ldebug_ranges0+0x48
	.byte	0x14
	.4byte	0xc9d
	.4byte	.LLST23
	.byte	0x14
	.4byte	0xca7
	.4byte	.LLST24
	.byte	0x14
	.4byte	0xcb3
	.4byte	.LLST25
	.byte	0x16
	.4byte	.LVL50
	.4byte	0xd60
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x1c
	.4byte	.LVL32
	.4byte	0xd47
	.4byte	0xa76
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0x17
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x1c
	.4byte	.LVL33
	.4byte	0xd47
	.4byte	0xa8d
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0
	.byte	0x1c
	.4byte	.LVL34
	.4byte	0xd47
	.4byte	0xaa4
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0
	.byte	0x1c
	.4byte	.LVL35
	.4byte	0xd47
	.4byte	0xabb
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC8
	.byte	0
	.byte	0x1c
	.4byte	.LVL38
	.4byte	0xd78
	.4byte	0xad2
	.byte	0x17
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0
	.byte	0x1c
	.4byte	.LVL39
	.4byte	0xd78
	.4byte	0xae9
	.byte	0x17
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC10
	.byte	0
	.byte	0x1c
	.4byte	.LVL40
	.4byte	0xd78
	.4byte	0xb00
	.byte	0x17
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC11
	.byte	0
	.byte	0x1c
	.4byte	.LVL41
	.4byte	0xd78
	.4byte	0xb17
	.byte	0x17
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC12
	.byte	0
	.byte	0x1c
	.4byte	.LVL42
	.4byte	0xd78
	.4byte	0xb2e
	.byte	0x17
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC13
	.byte	0
	.byte	0x1c
	.4byte	.LVL43
	.4byte	0xd78
	.4byte	0xb45
	.byte	0x17
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC14
	.byte	0
	.byte	0x1c
	.4byte	.LVL44
	.4byte	0xd78
	.4byte	0xb5c
	.byte	0x17
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC15
	.byte	0
	.byte	0x27
	.4byte	.LVL46
	.4byte	0xd47
	.byte	0x27
	.4byte	.LVL64
	.4byte	0xd78
	.byte	0x21
	.4byte	.LVL76
	.4byte	0xd47
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC20
	.byte	0
	.byte	0
	.byte	0
	.byte	0x21
	.4byte	.LVL37
	.4byte	0xd47
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC18
	.byte	0
	.byte	0
	.byte	0x2f
	.4byte	.LASF66
	.byte	0x1
	.byte	0x3f
	.byte	0xc
	.4byte	0x81
	.byte	0x1
	.4byte	0xc75
	.byte	0x30
	.4byte	.LASF58
	.byte	0x1
	.byte	0x3f
	.byte	0x1a
	.4byte	0x81
	.byte	0x30
	.4byte	.LASF59
	.byte	0x1
	.byte	0x3f
	.byte	0x27
	.4byte	0x140
	.byte	0x2c
	.4byte	.LASF45
	.byte	0x1
	.byte	0x46
	.byte	0x11
	.4byte	0xa1
	.byte	0x2c
	.4byte	.LASF46
	.byte	0x1
	.byte	0x47
	.byte	0x11
	.4byte	0xa1
	.byte	0x2c
	.4byte	.LASF47
	.byte	0x1
	.byte	0x48
	.byte	0x11
	.4byte	0xa1
	.byte	0x2c
	.4byte	.LASF48
	.byte	0x1
	.byte	0x49
	.byte	0x11
	.4byte	0xa1
	.byte	0x2c
	.4byte	.LASF49
	.byte	0x1
	.byte	0x4a
	.byte	0x11
	.4byte	0xa1
	.byte	0x2c
	.4byte	.LASF50
	.byte	0x1
	.byte	0x4b
	.byte	0x11
	.4byte	0xa1
	.byte	0x31
	.4byte	.LASF53
	.byte	0x1
	.byte	0x4d
	.byte	0x12
	.4byte	0x5f5
	.byte	0x32
	.string	"end"
	.byte	0x1
	.byte	0x4e
	.byte	0x12
	.4byte	0x5f5
	.byte	0x31
	.4byte	.LASF44
	.byte	0x1
	.byte	0x4f
	.byte	0x12
	.4byte	0x5f5
	.byte	0x31
	.4byte	.LASF54
	.byte	0x1
	.byte	0x51
	.byte	0x9
	.4byte	0x81
	.byte	0x31
	.4byte	.LASF55
	.byte	0x1
	.byte	0x52
	.byte	0x9
	.4byte	0x81
	.byte	0x32
	.string	"mid"
	.byte	0x1
	.byte	0x53
	.byte	0xe
	.4byte	0xe0
	.byte	0x31
	.4byte	.LASF56
	.byte	0x1
	.byte	0x54
	.byte	0x9
	.4byte	0x81
	.byte	0x31
	.4byte	.LASF30
	.byte	0x1
	.byte	0x55
	.byte	0x12
	.4byte	0x199
	.byte	0x31
	.4byte	.LASF65
	.byte	0x1
	.byte	0x57
	.byte	0x9
	.4byte	0x81
	.byte	0
	.byte	0x2f
	.4byte	.LASF67
	.byte	0x1
	.byte	0x2f
	.byte	0xc
	.4byte	0x81
	.byte	0x1
	.4byte	0xcc0
	.byte	0x33
	.string	"str"
	.byte	0x1
	.byte	0x2f
	.byte	0x23
	.4byte	0xad
	.byte	0x33
	.string	"ch"
	.byte	0x1
	.byte	0x2f
	.byte	0x2d
	.4byte	0xa1
	.byte	0x32
	.string	"i"
	.byte	0x1
	.byte	0x31
	.byte	0x9
	.4byte	0x81
	.byte	0x32
	.string	"len"
	.byte	0x1
	.byte	0x32
	.byte	0x9
	.4byte	0x81
	.byte	0x32
	.string	"ret"
	.byte	0x1
	.byte	0x33
	.byte	0x9
	.4byte	0x81
	.byte	0
	.byte	0x34
	.4byte	0x4e9
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x1
	.byte	0x9c
	.4byte	0xd47
	.byte	0x2e
	.4byte	0x4fb
	.4byte	.LLST31
	.byte	0x2e
	.4byte	0x508
	.4byte	.LLST32
	.byte	0x2e
	.4byte	0x515
	.4byte	.LLST33
	.byte	0x14
	.4byte	0x522
	.4byte	.LLST34
	.byte	0x35
	.4byte	0x4e9
	.4byte	.LBB28
	.4byte	.Ldebug_ranges0+0x60
	.byte	0x1
	.2byte	0x186
	.byte	0x8
	.4byte	0xd33
	.byte	0x2e
	.4byte	0x515
	.4byte	.LLST35
	.byte	0x2e
	.4byte	0x508
	.4byte	.LLST36
	.byte	0x2e
	.4byte	0x4fb
	.4byte	.LLST37
	.byte	0x13
	.4byte	.Ldebug_ranges0+0x60
	.byte	0x36
	.4byte	0x522
	.byte	0
	.byte	0
	.byte	0x16
	.4byte	.LVL101
	.4byte	0xd47
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC22
	.byte	0
	.byte	0
	.byte	0x37
	.4byte	.LASF68
	.4byte	.LASF68
	.byte	0x7
	.byte	0x81
	.byte	0x6
	.byte	0x38
	.4byte	.LASF69
	.4byte	.LASF69
	.byte	0x8
	.2byte	0x10a
	.byte	0x5
	.byte	0x37
	.4byte	.LASF70
	.4byte	.LASF70
	.byte	0x9
	.byte	0x29
	.byte	0x8
	.byte	0x37
	.4byte	.LASF71
	.4byte	.LASF71
	.byte	0x9
	.byte	0x2c
	.byte	0x7
	.byte	0x37
	.4byte	.LASF72
	.4byte	.LASF72
	.byte	0x9
	.byte	0x24
	.byte	0x5
	.byte	0x39
	.4byte	.LASF73
	.4byte	.LASF83
	.byte	0xa
	.byte	0
	.byte	0x37
	.4byte	.LASF73
	.4byte	.LASF73
	.byte	0x9
	.byte	0x21
	.byte	0x8
	.byte	0x37
	.4byte	.LASF74
	.4byte	.LASF74
	.byte	0x9
	.byte	0x26
	.byte	0x7
	.byte	0x37
	.4byte	.LASF75
	.4byte	.LASF75
	.byte	0x9
	.byte	0x30
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
	.byte	0x15
	.byte	0x1
	.byte	0x27
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xc
	.byte	0x5
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xd
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
	.byte	0xe
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xb
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
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x18
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
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x11
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
	.byte	0x12
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
	.byte	0x13
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x14
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x15
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x3c
	.byte	0x19
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
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x18
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
	.byte	0x19
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
	.byte	0x1a
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
	.byte	0x1b
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
	.byte	0x1e
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
	.byte	0x1f
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
	.byte	0x20
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
	.byte	0x21
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
	.byte	0x22
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
	.byte	0x20
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x23
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
	.byte	0x3f
	.byte	0x19
	.byte	0x3c
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x24
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
	.byte	0x25
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
	.byte	0x26
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
	.byte	0x27
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x28
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
	.byte	0x29
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
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x2b
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
	.byte	0x2c
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
	.byte	0x2d
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
	.byte	0x2e
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x2f
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
	.byte	0x30
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
	.byte	0x31
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
	.byte	0x32
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
	.byte	0x33
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
	.byte	0x34
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
	.byte	0x35
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
	.byte	0x36
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x37
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
	.byte	0x38
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
	.byte	0x39
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
.LLST46:
	.4byte	.LVL145
	.4byte	.LVL146
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL147
	.4byte	.LVL148
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL149
	.4byte	.LVL150
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL150
	.4byte	.LVL151
	.2byte	0x3
	.byte	0x7f
	.byte	0x78
	.byte	0x9f
	.4byte	.LVL151
	.4byte	.LVL152
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL152
	.4byte	.LVL153
	.2byte	0x3
	.byte	0x7f
	.byte	0x78
	.byte	0x9f
	.4byte	.LVL153
	.4byte	.LVL154
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL154
	.4byte	.LVL155
	.2byte	0x3
	.byte	0x7f
	.byte	0x78
	.byte	0x9f
	.4byte	.LVL155
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL105
	.4byte	.LVL107
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL107
	.4byte	.LVL110
	.2byte	0x3
	.byte	0x91
	.byte	0xac,0x7f
	.4byte	.LVL110
	.4byte	.LVL111
	.2byte	0x3
	.byte	0x72
	.byte	0xac,0x7f
	.4byte	.LVL111
	.4byte	.LFE12
	.2byte	0x3
	.byte	0x91
	.byte	0xac,0x7f
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL105
	.4byte	.LVL107
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL107
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL105
	.4byte	.LVL107
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL107
	.4byte	.LVL109
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL109
	.4byte	.LVL111
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL111
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x66
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL105
	.4byte	.LVL107
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL107
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL106
	.4byte	.LVL107
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL107
	.4byte	.LVL108
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL111
	.4byte	.LVL124
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL127
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL114
	.4byte	.LVL116
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL116
	.4byte	.LVL117
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL117
	.4byte	.LVL118
	.2byte	0x6
	.byte	0x84
	.byte	0
	.byte	0x78
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL128
	.4byte	.LVL131
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL136
	.4byte	.LVL138
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL138
	.4byte	.LVL142
	.2byte	0x6
	.byte	0x84
	.byte	0
	.byte	0x78
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL142
	.4byte	.LVL143
	.2byte	0x8
	.byte	0x84
	.byte	0
	.byte	0x78
	.byte	0
	.byte	0x1c
	.byte	0x23
	.byte	0x1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL105
	.4byte	.LVL107
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL114
	.4byte	.LVL116
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL116
	.4byte	.LVL121
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL122
	.4byte	.LVL123
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL123
	.4byte	.LVL125
	.2byte	0x6
	.byte	0x7a
	.byte	0
	.byte	0x87
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL128
	.4byte	.LVL132
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL133
	.4byte	.LVL135
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL136
	.4byte	.LVL138
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL138
	.4byte	.LVL141
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL142
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x67
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL112
	.4byte	.LVL113
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL90
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL91
	.4byte	.LVL92-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL92-1
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL90
	.4byte	.LVL92-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL92-1
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL77
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL79
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL81
	.4byte	.LVL82
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL82
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL77
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL78
	.4byte	.LVL82
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL82
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL84
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL82
	.4byte	.LVL84
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL84
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x65
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL3
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL2
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL1
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL0
	.4byte	.LVL4-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL4-1
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL8
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL12
	.4byte	.LFE7
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL18
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL23
	.4byte	.LFE7
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL29
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL28
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL30
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL28
	.4byte	.LVL32-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL32-1
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL35
	.4byte	.LVL37
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL37
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL45
	.4byte	.LVL47
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL49
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL28
	.4byte	.LVL32-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL32-1
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL37
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL70
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL31
	.4byte	.LVL32-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL32-1
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL37
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL47
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL70
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL28
	.4byte	.LVL32-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL32-1
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL37
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL49
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL57
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL62
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL57
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL67
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL57
	.4byte	.LVL60
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL60
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL62
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x66
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL59
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL62
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL63
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x65
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL64
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL48
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL56
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL61
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL49
	.4byte	.LVL52
	.2byte	0x3
	.byte	0x8
	.byte	0x2e
	.byte	0x9f
	.4byte	.LVL53
	.4byte	.LVL56
	.2byte	0x3
	.byte	0x8
	.byte	0x2e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL49
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL53
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL49
	.4byte	.LVL51
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL53
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL50
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL53
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL50
	.4byte	.LVL51
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL53
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL93
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL94
	.4byte	.LVL99
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL99
	.4byte	.LVL100
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL100
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL93
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL95
	.4byte	.LVL99
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL99
	.4byte	.LVL101-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL101-1
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL93
	.4byte	.LVL101-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL101-1
	.4byte	.LVL102
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL102
	.4byte	.LFE11
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL93
	.4byte	.LVL101-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL101-1
	.4byte	.LVL102
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL102
	.4byte	.LFE11
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL95
	.4byte	.LVL98
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL102
	.4byte	.LFE11
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL95
	.4byte	.LVL98
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL102
	.4byte	.LVL103
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL103
	.4byte	.LVL104
	.2byte	0x3
	.byte	0x7b
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL104
	.4byte	.LFE11
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL95
	.4byte	.LVL96
	.2byte	0xa
	.byte	0x7f
	.byte	0
	.byte	0x7c
	.byte	0
	.byte	0x1c
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL96
	.4byte	.LVL97
	.2byte	0xc
	.byte	0x7f
	.byte	0
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x22
	.byte	0x7c
	.byte	0
	.byte	0x1c
	.byte	0x23
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL102
	.4byte	.LVL104
	.2byte	0xc
	.byte	0x7f
	.byte	0
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x22
	.byte	0x7c
	.byte	0
	.byte	0x1c
	.byte	0x23
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL104
	.4byte	.LFE11
	.2byte	0xa
	.byte	0x7f
	.byte	0
	.byte	0x7c
	.byte	0
	.byte	0x1c
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x4c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
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
	.4byte	.LBB6
	.4byte	.LBE6
	.4byte	.LBB19
	.4byte	.LBE19
	.4byte	.LBB20
	.4byte	.LBE20
	.4byte	.LBB21
	.4byte	.LBE21
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
	.4byte	.LBB8
	.4byte	.LBE8
	.4byte	.LBB11
	.4byte	.LBE11
	.4byte	0
	.4byte	0
	.4byte	.LBB28
	.4byte	.LBE28
	.4byte	.LBB31
	.4byte	.LBE31
	.4byte	0
	.4byte	0
	.4byte	.LBB34
	.4byte	.LBE34
	.4byte	.LBB39
	.4byte	.LBE39
	.4byte	.LBB40
	.4byte	.LBE40
	.4byte	.LBB41
	.4byte	.LBE41
	.4byte	0
	.4byte	0
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB8
	.4byte	.LFE8
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
.LASF29:
	.string	"_blog_info"
.LASF71:
	.string	"strncpy"
.LASF61:
	.string	"info_f"
.LASF56:
	.string	"cmp_val"
.LASF79:
	.string	"_blog_leve"
.LASF50:
	.string	"_ld_bl_static_blogpri_code_end"
.LASF2:
	.string	"short int"
.LASF12:
	.string	"size_t"
.LASF51:
	.string	"level_set"
.LASF7:
	.string	"__uint32_t"
.LASF4:
	.string	"__uint16_t"
.LASF18:
	.string	"help"
.LASF83:
	.string	"__builtin_memset"
.LASF14:
	.string	"uint8_t"
.LASF24:
	.string	"BLOG_LEVEL_ERROR"
.LASF16:
	.string	"uint32_t"
.LASF46:
	.string	"_ld_bl_static_blogcomponent_code_end"
.LASF48:
	.string	"_ld_bl_static_blogfile_code_end"
.LASF36:
	.string	"width"
.LASF62:
	.string	"info_p"
.LASF45:
	.string	"_ld_bl_static_blogcomponent_code_start"
.LASF9:
	.string	"long long int"
.LASF44:
	.string	"info"
.LASF73:
	.string	"memset"
.LASF6:
	.string	"long int"
.LASF82:
	.string	"blog_set_level_log_component"
.LASF32:
	.string	"log_buf"
.LASF60:
	.string	"info_c"
.LASF3:
	.string	"__uint8_t"
.LASF41:
	.string	"cur_len"
.LASF69:
	.string	"snprintf"
.LASF17:
	.string	"name"
.LASF78:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/blog"
.LASF55:
	.string	"right"
.LASF1:
	.string	"unsigned char"
.LASF39:
	.string	"dump_string"
.LASF58:
	.string	"argc"
.LASF25:
	.string	"BLOG_LEVEL_ASSERT"
.LASF0:
	.string	"signed char"
.LASF10:
	.string	"long long unsigned int"
.LASF66:
	.string	"set_level"
.LASF11:
	.string	"unsigned int"
.LASF15:
	.string	"uint16_t"
.LASF77:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/blog/blog.c"
.LASF34:
	.string	"blog_init"
.LASF22:
	.string	"BLOG_LEVEL_INFO"
.LASF59:
	.string	"argv"
.LASF65:
	.string	"ch_sum"
.LASF38:
	.string	"log_len"
.LASF53:
	.string	"start"
.LASF5:
	.string	"short unsigned int"
.LASF13:
	.string	"char"
.LASF21:
	.string	"BLOG_LEVEL_DEBUG"
.LASF19:
	.string	"function"
.LASF70:
	.string	"strlen"
.LASF54:
	.string	"left"
.LASF74:
	.string	"strcpy"
.LASF43:
	.string	"src_old"
.LASF63:
	.string	"name_buf"
.LASF47:
	.string	"_ld_bl_static_blogfile_code_start"
.LASF35:
	.string	"blog_hexdump_out"
.LASF40:
	.string	"fmt_result"
.LASF20:
	.string	"BLOG_LEVEL_ALL"
.LASF31:
	.string	"blog_info_t"
.LASF8:
	.string	"long unsigned int"
.LASF49:
	.string	"_ld_bl_static_blogpri_code_start"
.LASF37:
	.string	"size"
.LASF57:
	.string	"cmd_blog_info_dump"
.LASF67:
	.string	"findch_sum"
.LASF64:
	.string	"cmd_blog_set_level"
.LASF30:
	.string	"level"
.LASF72:
	.string	"strcmp"
.LASF28:
	.string	"cli_command"
.LASF80:
	.string	"blog_strcpy"
.LASF33:
	.string	"cmds_user"
.LASF75:
	.string	"strstr"
.LASF42:
	.string	"blog_port_output"
.LASF68:
	.string	"bl_printk"
.LASF23:
	.string	"BLOG_LEVEL_WARN"
.LASF26:
	.string	"BLOG_LEVEL_NEVER"
.LASF27:
	.string	"blog_level_t"
.LASF52:
	.string	"component_name"
.LASF81:
	.string	"blog_set_poweron_softlevel"
.LASF76:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
