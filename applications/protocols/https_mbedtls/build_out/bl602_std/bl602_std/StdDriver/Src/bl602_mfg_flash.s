	.file	"bl602_mfg_flash.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.PtTable_Flash_Read,"ax",@progbits
	.align	1
	.type	PtTable_Flash_Read, @function
PtTable_Flash_Read:
.LFB8:
	.file 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_mfg_flash.c"
	.loc 1 26 1
	.cfi_startproc
.LVL0:
	.loc 1 27 5
	lui	a5,%hi(.LANCHOR0)
	.loc 1 26 1 is_stmt 0
	mv	a3,a2
	.loc 1 27 5
	mv	a2,a1
.LVL1:
	mv	a1,a0
.LVL2:
	lw	a0,%lo(.LANCHOR0)(a5)
.LVL3:
	.loc 1 26 1
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 27 5
	call	XIP_SFlash_Read_Need_Lock_Ext
.LVL4:
	.loc 1 28 5 is_stmt 1
	.loc 1 29 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE8:
	.size	PtTable_Flash_Read, .-PtTable_Flash_Read
	.section	.text.mfg_flash_read,"ax",@progbits
	.align	1
	.type	mfg_flash_read, @function
mfg_flash_read:
.LFB11:
	.loc 1 79 1 is_stmt 1
	.cfi_startproc
	.loc 1 80 5
	.loc 1 84 6
	.loc 1 84 10 is_stmt 0
	lui	a5,%hi(.LANCHOR2)
	lw	a1,%lo(.LANCHOR2)(a5)
	lui	a5,%hi(.LANCHOR0)
	lw	a0,%lo(.LANCHOR0)(a5)
	lui	a2,%hi(.LANCHOR1)
	.loc 1 79 1
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 84 10
	li	a3,24
	addi	a2,a2,%lo(.LANCHOR1)
	.loc 1 79 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 84 10
	call	XIP_SFlash_Read_Need_Lock_Ext
.LVL5:
	.loc 1 85 6 is_stmt 1
	.loc 1 91 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 85 8
	snez	a0,a0
.LVL6:
	.loc 1 91 1
	neg	a0,a0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE11:
	.size	mfg_flash_read, .-mfg_flash_read
	.section	.text.mfg_flash_program,"ax",@progbits
	.align	1
	.type	mfg_flash_program, @function
mfg_flash_program:
.LFB10:
	.loc 1 58 1 is_stmt 1
	.cfi_startproc
	.loc 1 59 5
	.loc 1 63 6
	.loc 1 58 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s1,4(sp)
	.cfi_offset 9, -12
	.loc 1 63 10
	lui	s1,%hi(.LANCHOR2)
	.loc 1 58 1
	sw	s0,8(sp)
	.loc 1 63 10
	addi	s1,s1,%lo(.LANCHOR2)
	.cfi_offset 8, -8
	lui	s0,%hi(.LANCHOR0)
	lw	a1,0(s1)
	addi	s0,s0,%lo(.LANCHOR0)
	lw	a0,0(s0)
	addi	a2,a1,15
	.loc 1 58 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 63 10
	call	XIP_SFlash_Erase_Need_Lock_Ext
.LVL7:
	mv	a5,a0
.LVL8:
	.loc 1 64 6 is_stmt 1
	li	a0,-1
.LVL9:
	.loc 1 64 8 is_stmt 0
	bne	a5,zero,.L6
	.loc 1 69 6 is_stmt 1
	.loc 1 69 10 is_stmt 0
	lw	a1,0(s1)
	lw	a0,0(s0)
	lui	a2,%hi(.LANCHOR1)
	li	a3,24
	addi	a2,a2,%lo(.LANCHOR1)
	call	XIP_SFlash_Write_Need_Lock_Ext
.LVL10:
	.loc 1 70 6 is_stmt 1
	.loc 1 70 8 is_stmt 0
	snez	a0,a0
.LVL11:
	neg	a0,a0
.L6:
	.loc 1 76 1
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	lw	s1,4(sp)
	.cfi_restore 9
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE10:
	.size	mfg_flash_program, .-mfg_flash_program
	.section	.rodata.mfg_flash_init.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"rf_para"
	.section	.text.mfg_flash_init,"ax",@progbits
	.align	1
	.globl	mfg_flash_init
	.type	mfg_flash_init, @function
mfg_flash_init:
.LFB9:
	.loc 1 32 1 is_stmt 1
	.cfi_startproc
.LVL12:
	.loc 1 33 5
	.loc 1 34 5
	.loc 1 36 5
	.loc 1 36 14 is_stmt 0
	lui	a5,%hi(.LANCHOR0)
	sw	a0,%lo(.LANCHOR0)(a5)
	.loc 1 37 5 is_stmt 1
	.loc 1 37 7 is_stmt 0
	bne	a0,zero,.L11
	.loc 1 54 12
	li	a0,-1
.LVL13:
	.loc 1 55 1
	ret
.LVL14:
.L13:
	.cfi_def_cfa_offset 16
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.loc 1 54 12
	li	a0,-1
.L12:
	.loc 1 55 1
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	lw	s1,4(sp)
	.cfi_restore 9
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL15:
.L11:
	.loc 1 38 9 is_stmt 1
	lui	a2,%hi(PtTable_Flash_Read)
	.loc 1 32 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 38 9
	addi	a2,a2,%lo(PtTable_Flash_Read)
	li	a1,0
	li	a0,0
.LVL16:
	.loc 1 32 1
	sw	ra,12(sp)
	sw	s0,8(sp)
	sw	s1,4(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.loc 1 39 18
	lui	s0,%hi(ptTableStuff)
	.loc 1 38 9
	call	PtTable_Set_Flash_Operation
.LVL17:
	.loc 1 39 9 is_stmt 1
	.loc 1 39 18 is_stmt 0
	addi	a0,s0,%lo(ptTableStuff)
	call	PtTable_Get_Active_Partition_Need_Lock
.LVL18:
	.loc 1 40 9 is_stmt 1
	.loc 1 40 11 is_stmt 0
	li	a5,2
	beq	a0,a5,.L13
	.loc 1 44 9 is_stmt 1
	.loc 1 44 13 is_stmt 0
	li	a5,596
	mul	a0,a0,a5
.LVL19:
	lui	a2,%hi(.LANCHOR3)
	addi	s0,s0,%lo(ptTableStuff)
	lui	a1,%hi(.LC0)
	addi	s1,a2,%lo(.LANCHOR3)
	addi	a1,a1,%lo(.LC0)
	addi	a2,a2,%lo(.LANCHOR3)
	add	a0,s0,a0
	call	PtTable_Get_Active_Entries_By_Name
.LVL20:
	.loc 1 45 9 is_stmt 1
	.loc 1 45 11 is_stmt 0
	bne	a0,zero,.L13
	.loc 1 46 13 is_stmt 1
	.loc 1 46 25 is_stmt 0
	lw	a4,12(s1)
	lui	a5,%hi(.LANCHOR2)
	sw	a4,%lo(.LANCHOR2)(a5)
	.loc 1 48 13 is_stmt 1
	.loc 1 48 20 is_stmt 0
	j	.L12
	.cfi_endproc
.LFE9:
	.size	mfg_flash_init, .-mfg_flash_init
	.section	.text.mfg_flash_write_xtal_capcode_pre,"ax",@progbits
	.align	1
	.globl	mfg_flash_write_xtal_capcode_pre
	.type	mfg_flash_write_xtal_capcode_pre, @function
mfg_flash_write_xtal_capcode_pre:
.LFB12:
	.loc 1 94 1 is_stmt 1
	.cfi_startproc
.LVL21:
	.loc 1 95 5
	.loc 1 94 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	.cfi_offset 8, -8
	.loc 1 95 18
	lui	s0,%hi(.LANCHOR1)
	addi	s0,s0,%lo(.LANCHOR1)
	li	a5,65
	.loc 1 94 1
	sw	s1,4(sp)
	.loc 1 95 18
	sw	a5,0(s0)
	.loc 1 96 5 is_stmt 1
	.loc 1 97 20 is_stmt 0
	sb	a0,5(s0)
	.loc 1 96 26
	li	a5,90
	.cfi_offset 9, -12
	.loc 1 94 1
	mv	s1,a1
	.loc 1 98 19
	addi	a0,s0,4
.LVL22:
	li	a1,16
.LVL23:
	.loc 1 94 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 96 26
	sb	a5,4(s0)
	.loc 1 97 5 is_stmt 1
	.loc 1 98 5
	.loc 1 98 19 is_stmt 0
	call	BFLB_Soft_CRC32
.LVL24:
	.loc 1 98 18
	sw	a0,20(s0)
	.loc 1 100 5 is_stmt 1
	.loc 1 100 7 is_stmt 0
	beq	s1,zero,.L18
	.loc 1 101 9 is_stmt 1
	.loc 1 105 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_remember_state
	.cfi_restore 8
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s1,4(sp)
	.cfi_restore 9
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 101 16
	tail	mfg_flash_program
.LVL25:
.L18:
	.cfi_restore_state
	.loc 1 105 1
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	lw	s1,4(sp)
	.cfi_restore 9
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE12:
	.size	mfg_flash_write_xtal_capcode_pre, .-mfg_flash_write_xtal_capcode_pre
	.section	.text.mfg_flash_write_xtal_capcode,"ax",@progbits
	.align	1
	.globl	mfg_flash_write_xtal_capcode
	.type	mfg_flash_write_xtal_capcode, @function
mfg_flash_write_xtal_capcode:
.LFB13:
	.loc 1 108 1 is_stmt 1
	.cfi_startproc
	.loc 1 109 5
	tail	mfg_flash_program
.LVL26:
	.cfi_endproc
.LFE13:
	.size	mfg_flash_write_xtal_capcode, .-mfg_flash_write_xtal_capcode
	.section	.text.mfg_flash_read_xtal_capcode,"ax",@progbits
	.align	1
	.globl	mfg_flash_read_xtal_capcode
	.type	mfg_flash_read_xtal_capcode, @function
mfg_flash_read_xtal_capcode:
.LFB14:
	.loc 1 113 1
	.cfi_startproc
.LVL27:
	.loc 1 114 5
	.loc 1 113 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s1,4(sp)
	sw	ra,12(sp)
	sw	s0,8(sp)
	sw	s2,0(sp)
	.cfi_offset 9, -12
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 18, -16
	.loc 1 113 1
	mv	s1,a0
	.loc 1 114 7
	bne	a1,zero,.L22
.LVL28:
.L25:
	.loc 1 117 5 is_stmt 1
	.loc 1 117 15 is_stmt 0
	lui	s0,%hi(.LANCHOR1)
	addi	s0,s0,%lo(.LANCHOR1)
	.loc 1 117 7
	lw	a4,0(s0)
	li	a5,65
	beq	a4,a5,.L23
.L24:
	.loc 1 115 16
	li	a0,-1
.L26:
	.loc 1 126 1
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	lw	s1,4(sp)
	.cfi_restore 9
.LVL29:
	lw	s2,0(sp)
	.cfi_restore 18
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL30:
.L22:
	.cfi_restore_state
	.loc 1 114 22 discriminator 1
	call	mfg_flash_read
.LVL31:
	.loc 1 114 19 discriminator 1
	beq	a0,zero,.L25
	j	.L24
.L23:
	.loc 1 118 9 is_stmt 1
	.loc 1 118 19 is_stmt 0
	lw	s2,20(s0)
	.loc 1 118 28
	li	a1,16
	addi	a0,s0,4
	call	BFLB_Soft_CRC32
.LVL32:
	.loc 1 118 11
	bne	s2,a0,.L24
	.loc 1 119 13 is_stmt 1
	.loc 1 119 15 is_stmt 0
	lbu	a4,4(s0)
	li	a5,90
	bne	a4,a5,.L24
	.loc 1 120 17 is_stmt 1
	.loc 1 120 33 is_stmt 0
	lbu	a5,5(s0)
	.loc 1 121 24
	li	a0,0
	.loc 1 120 25
	sb	a5,0(s1)
	.loc 1 121 17 is_stmt 1
	.loc 1 121 24 is_stmt 0
	j	.L26
	.cfi_endproc
.LFE14:
	.size	mfg_flash_read_xtal_capcode, .-mfg_flash_read_xtal_capcode
	.section	.text.mfg_flash_write_poweroffset_pre,"ax",@progbits
	.align	1
	.globl	mfg_flash_write_poweroffset_pre
	.type	mfg_flash_write_poweroffset_pre, @function
mfg_flash_write_poweroffset_pre:
.LFB15:
	.loc 1 129 1 is_stmt 1
	.cfi_startproc
.LVL33:
	.loc 1 130 5
	.loc 1 129 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	.cfi_offset 8, -8
	.loc 1 130 18
	lui	s0,%hi(.LANCHOR1)
	addi	s0,s0,%lo(.LANCHOR1)
	li	a5,65
	sw	a5,0(s0)
	.loc 1 131 5 is_stmt 1
	.loc 1 131 30 is_stmt 0
	li	a5,90
	.loc 1 129 1
	sw	s1,4(sp)
	sw	ra,12(sp)
	.cfi_offset 9, -12
	.cfi_offset 1, -4
	.loc 1 131 30
	sb	a5,6(s0)
	.loc 1 132 5 is_stmt 1
	.loc 1 132 37 is_stmt 0
	lb	a5,0(a0)
	.loc 1 129 1
	mv	s1,a1
	.loc 1 135 19
	li	a1,16
.LVL34:
	.loc 1 132 27
	sb	a5,7(s0)
	.loc 1 133 5 is_stmt 1
	.loc 1 133 27 is_stmt 0
	lb	a5,6(a0)
	sb	a5,8(s0)
	.loc 1 134 5 is_stmt 1
	.loc 1 134 27 is_stmt 0
	lbu	a5,12(a0)
	.loc 1 135 19
	addi	a0,s0,4
.LVL35:
	.loc 1 134 27
	sb	a5,9(s0)
	.loc 1 135 5 is_stmt 1
	.loc 1 135 19 is_stmt 0
	call	BFLB_Soft_CRC32
.LVL36:
	.loc 1 135 18
	sw	a0,20(s0)
	.loc 1 137 5 is_stmt 1
	.loc 1 137 7 is_stmt 0
	beq	s1,zero,.L32
	.loc 1 138 9 is_stmt 1
	.loc 1 142 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_remember_state
	.cfi_restore 8
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s1,4(sp)
	.cfi_restore 9
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 138 16
	tail	mfg_flash_program
.LVL37:
.L32:
	.cfi_restore_state
	.loc 1 142 1
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	lw	s1,4(sp)
	.cfi_restore 9
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE15:
	.size	mfg_flash_write_poweroffset_pre, .-mfg_flash_write_poweroffset_pre
	.section	.text.mfg_flash_write_poweroffset,"ax",@progbits
	.align	1
	.globl	mfg_flash_write_poweroffset
	.type	mfg_flash_write_poweroffset, @function
mfg_flash_write_poweroffset:
.LFB22:
	.cfi_startproc
	tail	mfg_flash_program
	.cfi_endproc
.LFE22:
	.size	mfg_flash_write_poweroffset, .-mfg_flash_write_poweroffset
	.section	.text.mfg_flash_read_poweroffset,"ax",@progbits
	.align	1
	.globl	mfg_flash_read_poweroffset
	.type	mfg_flash_read_poweroffset, @function
mfg_flash_read_poweroffset:
.LFB17:
	.loc 1 150 1 is_stmt 1
	.cfi_startproc
.LVL38:
	.loc 1 151 5
	.loc 1 152 5
	.loc 1 154 5
	.loc 1 150 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	sw	s1,4(sp)
	sw	s2,0(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.loc 1 150 1
	mv	s0,a0
	.loc 1 154 7
	bne	a1,zero,.L36
.LVL39:
.L39:
	.loc 1 157 5 is_stmt 1
	.loc 1 157 15 is_stmt 0
	lui	s1,%hi(.LANCHOR1)
	addi	s1,s1,%lo(.LANCHOR1)
	.loc 1 157 7
	lw	a4,0(s1)
	li	a5,65
	beq	a4,a5,.L37
.L38:
	.loc 1 155 16
	li	a0,-1
.LVL40:
.L40:
	.loc 1 191 1
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
.LVL41:
	lw	s1,4(sp)
	.cfi_restore 9
	lw	s2,0(sp)
	.cfi_restore 18
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL42:
.L36:
	.cfi_restore_state
	.loc 1 154 22 discriminator 1
	call	mfg_flash_read
.LVL43:
	.loc 1 154 19 discriminator 1
	beq	a0,zero,.L39
	j	.L38
.L37:
	.loc 1 158 9 is_stmt 1
	.loc 1 158 19 is_stmt 0
	lw	s2,20(s1)
	.loc 1 158 28
	li	a1,16
	addi	a0,s1,4
	call	BFLB_Soft_CRC32
.LVL44:
	.loc 1 158 11
	bne	s2,a0,.L38
	.loc 1 159 13 is_stmt 1
	.loc 1 159 15 is_stmt 0
	lbu	a4,6(s1)
	li	a5,90
	bne	a4,a5,.L38
	.loc 1 160 17 is_stmt 1
	li	a2,14
	li	a1,0
	mv	a0,s0
	call	memset
.LVL45:
	.loc 1 161 17
	.loc 1 162 52 is_stmt 0
	lb	a7,8(s1)
	.loc 1 161 52
	lb	a3,7(s1)
.LVL46:
	.loc 1 162 17 is_stmt 1
	.loc 1 163 17
	.loc 1 167 55 is_stmt 0
	li	a0,100
	.loc 1 167 21
	li	t3,6
	.loc 1 167 38
	sub	a4,a7,a3
	.loc 1 167 55
	mul	a4,a4,a0
	.loc 1 169 41
	li	t1,50
	.loc 1 163 52
	lb	a6,9(s1)
.LVL47:
	.loc 1 165 17 is_stmt 1
	.loc 1 165 29 is_stmt 0
	sb	a3,0(s0)
	.loc 1 167 17 is_stmt 1
	.loc 1 168 56 is_stmt 0
	andi	a3,a3,0xff
.LVL48:
	.loc 1 170 35
	li	a1,3
	.loc 1 174 29
	sb	a7,6(s0)
	.loc 1 183 30
	sb	a6,12(s0)
	.loc 1 167 21
	div	a4,a4,t3
.LVL49:
	.loc 1 168 17 is_stmt 1
	.loc 1 169 37 is_stmt 0
	addi	a2,a4,25
	.loc 1 169 41
	div	a2,a2,t1
	.loc 1 168 35
	addi	a5,a4,50
	.loc 1 169 45
	add	a2,a3,a2
	.loc 1 169 29
	sb	a2,2(s0)
	.loc 1 170 35
	mul	a2,a4,a1
	.loc 1 170 37
	addi	a2,a2,50
	.loc 1 170 41
	div	a2,a2,a0
	.loc 1 170 45
	add	a2,a3,a2
	.loc 1 170 29
	sb	a2,3(s0)
	.loc 1 171 35
	slli	a2,a4,2
	.loc 1 171 37
	addi	a2,a2,50
	.loc 1 171 41
	div	a2,a2,a0
	.loc 1 168 39
	div	a5,a5,a0
	.loc 1 171 45
	add	a2,a3,a2
	.loc 1 171 29
	sb	a2,4(s0)
	.loc 1 172 35
	li	a2,5
	.loc 1 168 43
	add	a5,a3,a5
	.loc 1 172 35
	mul	a4,a4,a2
.LVL50:
	.loc 1 168 29
	sb	a5,1(s0)
	.loc 1 169 17 is_stmt 1
	.loc 1 170 17
	.loc 1 171 17
	.loc 1 172 17
	.loc 1 176 38 is_stmt 0
	sub	a5,a6,a7
	.loc 1 176 55
	mul	a5,a5,a0
	.loc 1 172 37
	addi	a4,a4,50
	.loc 1 172 41
	div	a4,a4,a0
	.loc 1 176 21
	div	a5,a5,t3
	.loc 1 172 45
	add	a3,a3,a4
	.loc 1 172 29
	sb	a3,5(s0)
	.loc 1 174 17 is_stmt 1
	.loc 1 176 17
.LVL51:
	.loc 1 177 17
	.loc 1 177 56 is_stmt 0
	andi	a4,a7,0xff
	.loc 1 178 37
	addi	a3,a5,25
	.loc 1 178 41
	div	a3,a3,t1
	.loc 1 177 35
	addi	a7,a5,50
.LVL52:
	.loc 1 178 45
	add	a3,a4,a3
	.loc 1 178 29
	sb	a3,8(s0)
	.loc 1 180 36
	slli	a3,a5,2
	.loc 1 180 38
	addi	a3,a3,50
	.loc 1 180 42
	div	a3,a3,a0
	.loc 1 180 46
	add	a3,a4,a3
	.loc 1 180 30
	sb	a3,10(s0)
	.loc 1 185 36
	li	a3,7
	.loc 1 179 35
	mul	a1,a5,a1
	.loc 1 181 36
	mul	a2,a5,a2
	.loc 1 179 37
	addi	a1,a1,50
	.loc 1 185 36
	mul	a5,a5,a3
.LVL53:
	.loc 1 181 38
	addi	a2,a2,50
	.loc 1 185 38
	addi	a5,a5,50
	.loc 1 177 39
	div	a7,a7,a0
.LVL54:
	.loc 1 179 41
	div	a1,a1,a0
	.loc 1 177 43
	add	a7,a4,a7
	.loc 1 177 29
	sb	a7,7(s0)
	.loc 1 178 17 is_stmt 1
	.loc 1 179 17
	.loc 1 181 42 is_stmt 0
	div	a2,a2,a0
	.loc 1 179 45
	add	a1,a4,a1
	.loc 1 179 29
	sb	a1,9(s0)
	.loc 1 180 17 is_stmt 1
	.loc 1 181 17
	.loc 1 185 42 is_stmt 0
	div	a5,a5,a0
	.loc 1 181 46
	add	a2,a4,a2
	.loc 1 181 30
	sb	a2,11(s0)
	.loc 1 183 17 is_stmt 1
	.loc 1 185 17
	.loc 1 186 24 is_stmt 0
	li	a0,0
	.loc 1 185 46
	add	a5,a4,a5
	.loc 1 185 30
	sb	a5,13(s0)
	.loc 1 186 17 is_stmt 1
	.loc 1 186 24 is_stmt 0
	j	.L40
	.cfi_endproc
.LFE17:
	.size	mfg_flash_read_poweroffset, .-mfg_flash_read_poweroffset
	.section	.text.mfg_flash_write_macaddr_pre,"ax",@progbits
	.align	1
	.globl	mfg_flash_write_macaddr_pre
	.type	mfg_flash_write_macaddr_pre, @function
mfg_flash_write_macaddr_pre:
.LFB18:
	.loc 1 194 1 is_stmt 1
	.cfi_startproc
.LVL55:
	.loc 1 195 5
	.loc 1 194 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	.cfi_offset 8, -8
	.loc 1 195 18
	lui	s0,%hi(.LANCHOR1)
	addi	s0,s0,%lo(.LANCHOR1)
	li	a5,65
	.loc 1 194 1
	sw	s1,4(sp)
	.loc 1 195 18
	sw	a5,0(s0)
	.loc 1 196 5 is_stmt 1
	.loc 1 197 5 is_stmt 0
	li	a2,6
	.loc 1 196 22
	li	a5,90
	.cfi_offset 9, -12
	.loc 1 194 1
	mv	s1,a1
	.loc 1 197 5
	mv	a1,a0
.LVL56:
	addi	a0,s0,11
.LVL57:
	.loc 1 194 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 196 22
	sb	a5,10(s0)
	.loc 1 197 5 is_stmt 1
	call	memcpy
.LVL58:
	.loc 1 198 5
	.loc 1 198 19 is_stmt 0
	li	a1,16
	addi	a0,s0,4
	call	BFLB_Soft_CRC32
.LVL59:
	.loc 1 198 18
	sw	a0,20(s0)
	.loc 1 200 5 is_stmt 1
	.loc 1 200 7 is_stmt 0
	beq	s1,zero,.L46
	.loc 1 201 9 is_stmt 1
	.loc 1 205 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_remember_state
	.cfi_restore 8
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s1,4(sp)
	.cfi_restore 9
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 201 16
	tail	mfg_flash_program
.LVL60:
.L46:
	.cfi_restore_state
	.loc 1 205 1
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	lw	s1,4(sp)
	.cfi_restore 9
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE18:
	.size	mfg_flash_write_macaddr_pre, .-mfg_flash_write_macaddr_pre
	.section	.text.mfg_flash_write_macaddr,"ax",@progbits
	.align	1
	.globl	mfg_flash_write_macaddr
	.type	mfg_flash_write_macaddr, @function
mfg_flash_write_macaddr:
.LFB24:
	.cfi_startproc
	tail	mfg_flash_program
	.cfi_endproc
.LFE24:
	.size	mfg_flash_write_macaddr, .-mfg_flash_write_macaddr
	.section	.text.mfg_flash_read_macaddr,"ax",@progbits
	.align	1
	.globl	mfg_flash_read_macaddr
	.type	mfg_flash_read_macaddr, @function
mfg_flash_read_macaddr:
.LFB20:
	.loc 1 213 1 is_stmt 1
	.cfi_startproc
.LVL61:
	.loc 1 214 5
	.loc 1 213 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s1,4(sp)
	sw	ra,12(sp)
	sw	s0,8(sp)
	sw	s2,0(sp)
	.cfi_offset 9, -12
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 18, -16
	.loc 1 213 1
	mv	s1,a0
	.loc 1 214 7
	bne	a1,zero,.L50
.LVL62:
.L53:
	.loc 1 218 5 is_stmt 1
	.loc 1 218 15 is_stmt 0
	lui	s0,%hi(.LANCHOR1)
	addi	s0,s0,%lo(.LANCHOR1)
	.loc 1 218 7
	lw	a4,0(s0)
	li	a5,65
	beq	a4,a5,.L51
.L52:
	.loc 1 216 16
	li	a0,-1
.L54:
	.loc 1 227 1
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	lw	s1,4(sp)
	.cfi_restore 9
.LVL63:
	lw	s2,0(sp)
	.cfi_restore 18
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL64:
.L50:
	.cfi_restore_state
	.loc 1 214 22 discriminator 1
	call	mfg_flash_read
.LVL65:
	.loc 1 214 19 discriminator 1
	beq	a0,zero,.L53
	j	.L52
.L51:
	.loc 1 219 9 is_stmt 1
	.loc 1 219 19 is_stmt 0
	lw	s2,20(s0)
	.loc 1 219 28
	li	a1,16
	addi	a0,s0,4
	call	BFLB_Soft_CRC32
.LVL66:
	.loc 1 219 11
	bne	s2,a0,.L52
	.loc 1 220 13 is_stmt 1
	.loc 1 220 15 is_stmt 0
	lbu	a4,10(s0)
	li	a5,90
	bne	a4,a5,.L52
	.loc 1 221 17 is_stmt 1
	li	a2,6
	addi	a1,s0,11
	mv	a0,s1
	call	memcpy
.LVL67:
	.loc 1 222 17
	.loc 1 222 24 is_stmt 0
	li	a0,0
	j	.L54
	.cfi_endproc
.LFE20:
	.size	mfg_flash_read_macaddr, .-mfg_flash_read_macaddr
	.globl	ptEntry
	.comm	ptTableStuff,1192,4
	.section	.bss.ptEntry,"aw",@nobits
	.align	2
	.set	.LANCHOR3,. + 0
	.type	ptEntry, @object
	.size	ptEntry, 36
ptEntry:
	.zero	36
	.section	.bss.rf_para,"aw",@nobits
	.align	2
	.set	.LANCHOR1,. + 0
	.type	rf_para, @object
	.size	rf_para, 24
rf_para:
	.zero	24
	.section	.sbss.pFlashCfg,"aw",@nobits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	pFlashCfg, @object
	.size	pFlashCfg, 4
pFlashCfg:
	.zero	4
	.section	.sbss.rf_para_addr,"aw",@nobits
	.align	2
	.set	.LANCHOR2,. + 0
	.type	rf_para_addr, @object
	.size	rf_para_addr, 4
rf_para_addr:
	.zero	4
	.text
.Letext0:
	.file 2 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.file 3 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_common.h"
	.file 4 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_sflash.h"
	.file 5 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_mfg_flash.h"
	.file 6 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/Common/partition/partition.h"
	.file 7 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/Common/soft_crc/softcrc.h"
	.file 8 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h"
	.file 9 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_xip_sflash_ext.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xc98
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF166
	.byte	0xc
	.4byte	.LASF167
	.4byte	.LASF168
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.4byte	.LASF2
	.byte	0x2
	.byte	0x22
	.byte	0x15
	.4byte	0x31
	.byte	0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.byte	0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF1
	.byte	0x2
	.4byte	.LASF3
	.byte	0x2
	.byte	0x28
	.byte	0x12
	.4byte	0x4b
	.byte	0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF4
	.byte	0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.byte	0x2
	.4byte	.LASF6
	.byte	0x2
	.byte	0x2e
	.byte	0x17
	.4byte	0x65
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF7
	.byte	0x2
	.4byte	.LASF8
	.byte	0x2
	.byte	0x31
	.byte	0x1c
	.4byte	0x78
	.byte	0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF9
	.byte	0x2
	.4byte	.LASF10
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0x8b
	.byte	0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.byte	0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF12
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.byte	0x5
	.byte	0x7
	.byte	0x4
	.4byte	0xa0
	.byte	0x3
	.byte	0x17
	.byte	0x1
	.4byte	0xcf
	.byte	0x6
	.4byte	.LASF15
	.byte	0
	.byte	0x6
	.4byte	.LASF16
	.byte	0x1
	.byte	0x6
	.4byte	.LASF17
	.byte	0x2
	.byte	0
	.byte	0x2
	.4byte	.LASF18
	.byte	0x3
	.byte	0x1b
	.byte	0x2
	.4byte	0xae
	.byte	0x7
	.4byte	0x7f
	.4byte	0xeb
	.byte	0x8
	.4byte	0xa0
	.byte	0x1
	.byte	0
	.byte	0x9
	.byte	0x54
	.byte	0x4
	.byte	0x39
	.byte	0x9
	.4byte	0x49d
	.byte	0xa
	.4byte	.LASF19
	.byte	0x4
	.byte	0x3a
	.byte	0xd
	.4byte	0x59
	.byte	0
	.byte	0xa
	.4byte	.LASF20
	.byte	0x4
	.byte	0x3b
	.byte	0xd
	.4byte	0x59
	.byte	0x1
	.byte	0xa
	.4byte	.LASF21
	.byte	0x4
	.byte	0x3c
	.byte	0xd
	.4byte	0x59
	.byte	0x2
	.byte	0xa
	.4byte	.LASF22
	.byte	0x4
	.byte	0x3d
	.byte	0xd
	.4byte	0x59
	.byte	0x3
	.byte	0xa
	.4byte	.LASF23
	.byte	0x4
	.byte	0x3e
	.byte	0xd
	.4byte	0x59
	.byte	0x4
	.byte	0xa
	.4byte	.LASF24
	.byte	0x4
	.byte	0x3f
	.byte	0xd
	.4byte	0x59
	.byte	0x5
	.byte	0xa
	.4byte	.LASF25
	.byte	0x4
	.byte	0x40
	.byte	0xd
	.4byte	0x59
	.byte	0x6
	.byte	0xa
	.4byte	.LASF26
	.byte	0x4
	.byte	0x41
	.byte	0xd
	.4byte	0x59
	.byte	0x7
	.byte	0xa
	.4byte	.LASF27
	.byte	0x4
	.byte	0x42
	.byte	0xd
	.4byte	0x59
	.byte	0x8
	.byte	0xa
	.4byte	.LASF28
	.byte	0x4
	.byte	0x43
	.byte	0xd
	.4byte	0x59
	.byte	0x9
	.byte	0xa
	.4byte	.LASF29
	.byte	0x4
	.byte	0x44
	.byte	0xd
	.4byte	0x59
	.byte	0xa
	.byte	0xa
	.4byte	.LASF30
	.byte	0x4
	.byte	0x45
	.byte	0xd
	.4byte	0x59
	.byte	0xb
	.byte	0xa
	.4byte	.LASF31
	.byte	0x4
	.byte	0x46
	.byte	0xd
	.4byte	0x59
	.byte	0xc
	.byte	0xb
	.string	"mid"
	.byte	0x4
	.byte	0x47
	.byte	0xd
	.4byte	0x59
	.byte	0xd
	.byte	0xa
	.4byte	.LASF32
	.byte	0x4
	.byte	0x48
	.byte	0xe
	.4byte	0x6c
	.byte	0xe
	.byte	0xa
	.4byte	.LASF33
	.byte	0x4
	.byte	0x49
	.byte	0xd
	.4byte	0x59
	.byte	0x10
	.byte	0xa
	.4byte	.LASF34
	.byte	0x4
	.byte	0x4a
	.byte	0xd
	.4byte	0x59
	.byte	0x11
	.byte	0xa
	.4byte	.LASF35
	.byte	0x4
	.byte	0x4b
	.byte	0xd
	.4byte	0x59
	.byte	0x12
	.byte	0xa
	.4byte	.LASF36
	.byte	0x4
	.byte	0x4c
	.byte	0xd
	.4byte	0x59
	.byte	0x13
	.byte	0xa
	.4byte	.LASF37
	.byte	0x4
	.byte	0x4d
	.byte	0xd
	.4byte	0x59
	.byte	0x14
	.byte	0xa
	.4byte	.LASF38
	.byte	0x4
	.byte	0x4e
	.byte	0xd
	.4byte	0x59
	.byte	0x15
	.byte	0xa
	.4byte	.LASF39
	.byte	0x4
	.byte	0x4f
	.byte	0xd
	.4byte	0x59
	.byte	0x16
	.byte	0xa
	.4byte	.LASF40
	.byte	0x4
	.byte	0x50
	.byte	0xd
	.4byte	0x59
	.byte	0x17
	.byte	0xa
	.4byte	.LASF41
	.byte	0x4
	.byte	0x51
	.byte	0xd
	.4byte	0x59
	.byte	0x18
	.byte	0xa
	.4byte	.LASF42
	.byte	0x4
	.byte	0x52
	.byte	0xd
	.4byte	0x59
	.byte	0x19
	.byte	0xa
	.4byte	.LASF43
	.byte	0x4
	.byte	0x53
	.byte	0xd
	.4byte	0x59
	.byte	0x1a
	.byte	0xa
	.4byte	.LASF44
	.byte	0x4
	.byte	0x54
	.byte	0xd
	.4byte	0x59
	.byte	0x1b
	.byte	0xa
	.4byte	.LASF45
	.byte	0x4
	.byte	0x55
	.byte	0xd
	.4byte	0x59
	.byte	0x1c
	.byte	0xa
	.4byte	.LASF46
	.byte	0x4
	.byte	0x56
	.byte	0xd
	.4byte	0x59
	.byte	0x1d
	.byte	0xa
	.4byte	.LASF47
	.byte	0x4
	.byte	0x57
	.byte	0xd
	.4byte	0x59
	.byte	0x1e
	.byte	0xa
	.4byte	.LASF48
	.byte	0x4
	.byte	0x58
	.byte	0xd
	.4byte	0x59
	.byte	0x1f
	.byte	0xa
	.4byte	.LASF49
	.byte	0x4
	.byte	0x59
	.byte	0xd
	.4byte	0x59
	.byte	0x20
	.byte	0xa
	.4byte	.LASF50
	.byte	0x4
	.byte	0x5a
	.byte	0xd
	.4byte	0x59
	.byte	0x21
	.byte	0xa
	.4byte	.LASF51
	.byte	0x4
	.byte	0x5b
	.byte	0xd
	.4byte	0x59
	.byte	0x22
	.byte	0xa
	.4byte	.LASF52
	.byte	0x4
	.byte	0x5c
	.byte	0xd
	.4byte	0x59
	.byte	0x23
	.byte	0xa
	.4byte	.LASF53
	.byte	0x4
	.byte	0x5d
	.byte	0xd
	.4byte	0x59
	.byte	0x24
	.byte	0xa
	.4byte	.LASF54
	.byte	0x4
	.byte	0x5e
	.byte	0xd
	.4byte	0x59
	.byte	0x25
	.byte	0xa
	.4byte	.LASF55
	.byte	0x4
	.byte	0x5f
	.byte	0xd
	.4byte	0x59
	.byte	0x26
	.byte	0xa
	.4byte	.LASF56
	.byte	0x4
	.byte	0x60
	.byte	0xd
	.4byte	0x59
	.byte	0x27
	.byte	0xa
	.4byte	.LASF57
	.byte	0x4
	.byte	0x61
	.byte	0xd
	.4byte	0x59
	.byte	0x28
	.byte	0xa
	.4byte	.LASF58
	.byte	0x4
	.byte	0x62
	.byte	0xd
	.4byte	0x59
	.byte	0x29
	.byte	0xa
	.4byte	.LASF59
	.byte	0x4
	.byte	0x63
	.byte	0xd
	.4byte	0x59
	.byte	0x2a
	.byte	0xa
	.4byte	.LASF60
	.byte	0x4
	.byte	0x64
	.byte	0xd
	.4byte	0x59
	.byte	0x2b
	.byte	0xa
	.4byte	.LASF61
	.byte	0x4
	.byte	0x65
	.byte	0xd
	.4byte	0x59
	.byte	0x2c
	.byte	0xa
	.4byte	.LASF62
	.byte	0x4
	.byte	0x66
	.byte	0xd
	.4byte	0x59
	.byte	0x2d
	.byte	0xa
	.4byte	.LASF63
	.byte	0x4
	.byte	0x67
	.byte	0xd
	.4byte	0x59
	.byte	0x2e
	.byte	0xa
	.4byte	.LASF64
	.byte	0x4
	.byte	0x68
	.byte	0xd
	.4byte	0x59
	.byte	0x2f
	.byte	0xa
	.4byte	.LASF65
	.byte	0x4
	.byte	0x69
	.byte	0xd
	.4byte	0x59
	.byte	0x30
	.byte	0xa
	.4byte	.LASF66
	.byte	0x4
	.byte	0x6a
	.byte	0xd
	.4byte	0x59
	.byte	0x31
	.byte	0xa
	.4byte	.LASF67
	.byte	0x4
	.byte	0x6b
	.byte	0xd
	.4byte	0x59
	.byte	0x32
	.byte	0xa
	.4byte	.LASF68
	.byte	0x4
	.byte	0x6c
	.byte	0xd
	.4byte	0x59
	.byte	0x33
	.byte	0xa
	.4byte	.LASF69
	.byte	0x4
	.byte	0x6d
	.byte	0xd
	.4byte	0x49d
	.byte	0x34
	.byte	0xa
	.4byte	.LASF70
	.byte	0x4
	.byte	0x6e
	.byte	0xd
	.4byte	0x49d
	.byte	0x38
	.byte	0xa
	.4byte	.LASF71
	.byte	0x4
	.byte	0x6f
	.byte	0xd
	.4byte	0x59
	.byte	0x3c
	.byte	0xa
	.4byte	.LASF72
	.byte	0x4
	.byte	0x70
	.byte	0xd
	.4byte	0x59
	.byte	0x3d
	.byte	0xa
	.4byte	.LASF73
	.byte	0x4
	.byte	0x71
	.byte	0xd
	.4byte	0x59
	.byte	0x3e
	.byte	0xa
	.4byte	.LASF74
	.byte	0x4
	.byte	0x72
	.byte	0xd
	.4byte	0x59
	.byte	0x3f
	.byte	0xa
	.4byte	.LASF75
	.byte	0x4
	.byte	0x73
	.byte	0xd
	.4byte	0x59
	.byte	0x40
	.byte	0xa
	.4byte	.LASF76
	.byte	0x4
	.byte	0x74
	.byte	0xd
	.4byte	0x59
	.byte	0x41
	.byte	0xa
	.4byte	.LASF77
	.byte	0x4
	.byte	0x75
	.byte	0xd
	.4byte	0x59
	.byte	0x42
	.byte	0xa
	.4byte	.LASF78
	.byte	0x4
	.byte	0x76
	.byte	0xd
	.4byte	0x59
	.byte	0x43
	.byte	0xa
	.4byte	.LASF79
	.byte	0x4
	.byte	0x77
	.byte	0xd
	.4byte	0x59
	.byte	0x44
	.byte	0xa
	.4byte	.LASF80
	.byte	0x4
	.byte	0x78
	.byte	0xd
	.4byte	0x59
	.byte	0x45
	.byte	0xa
	.4byte	.LASF81
	.byte	0x4
	.byte	0x79
	.byte	0xd
	.4byte	0x59
	.byte	0x46
	.byte	0xa
	.4byte	.LASF82
	.byte	0x4
	.byte	0x7a
	.byte	0xd
	.4byte	0x59
	.byte	0x47
	.byte	0xa
	.4byte	.LASF83
	.byte	0x4
	.byte	0x7b
	.byte	0xe
	.4byte	0x6c
	.byte	0x48
	.byte	0xa
	.4byte	.LASF84
	.byte	0x4
	.byte	0x7c
	.byte	0xe
	.4byte	0x6c
	.byte	0x4a
	.byte	0xa
	.4byte	.LASF85
	.byte	0x4
	.byte	0x7d
	.byte	0xe
	.4byte	0x6c
	.byte	0x4c
	.byte	0xa
	.4byte	.LASF86
	.byte	0x4
	.byte	0x7e
	.byte	0xe
	.4byte	0x6c
	.byte	0x4e
	.byte	0xa
	.4byte	.LASF87
	.byte	0x4
	.byte	0x7f
	.byte	0xe
	.4byte	0x6c
	.byte	0x50
	.byte	0xa
	.4byte	.LASF88
	.byte	0x4
	.byte	0x80
	.byte	0xd
	.4byte	0x59
	.byte	0x52
	.byte	0xa
	.4byte	.LASF89
	.byte	0x4
	.byte	0x81
	.byte	0xd
	.4byte	0x59
	.byte	0x53
	.byte	0
	.byte	0x7
	.4byte	0x59
	.4byte	0x4ad
	.byte	0x8
	.4byte	0xa0
	.byte	0x3
	.byte	0
	.byte	0x2
	.4byte	.LASF90
	.byte	0x4
	.byte	0x82
	.byte	0x1b
	.4byte	0xeb
	.byte	0xc
	.byte	0x4
	.4byte	0x59
	.byte	0xd
	.4byte	.LASF169
	.byte	0x18
	.byte	0x5
	.byte	0x8
	.byte	0x10
	.4byte	0x542
	.byte	0xa
	.4byte	.LASF91
	.byte	0x5
	.byte	0x9
	.byte	0xe
	.4byte	0x7f
	.byte	0
	.byte	0xa
	.4byte	.LASF92
	.byte	0x5
	.byte	0xa
	.byte	0xd
	.4byte	0x59
	.byte	0x4
	.byte	0xa
	.4byte	.LASF93
	.byte	0x5
	.byte	0xb
	.byte	0xd
	.4byte	0x59
	.byte	0x5
	.byte	0xa
	.4byte	.LASF94
	.byte	0x5
	.byte	0xc
	.byte	0xd
	.4byte	0x59
	.byte	0x6
	.byte	0xa
	.4byte	.LASF95
	.byte	0x5
	.byte	0xd
	.byte	0xc
	.4byte	0x542
	.byte	0x7
	.byte	0xa
	.4byte	.LASF96
	.byte	0x5
	.byte	0xe
	.byte	0xd
	.4byte	0x59
	.byte	0xa
	.byte	0xb
	.string	"mac"
	.byte	0x5
	.byte	0xf
	.byte	0xd
	.4byte	0x552
	.byte	0xb
	.byte	0xa
	.4byte	.LASF97
	.byte	0x5
	.byte	0x10
	.byte	0xd
	.4byte	0x562
	.byte	0x11
	.byte	0xa
	.4byte	.LASF98
	.byte	0x5
	.byte	0x11
	.byte	0xe
	.4byte	0x7f
	.byte	0x14
	.byte	0
	.byte	0x7
	.4byte	0x25
	.4byte	0x552
	.byte	0x8
	.4byte	0xa0
	.byte	0x2
	.byte	0
	.byte	0x7
	.4byte	0x59
	.4byte	0x562
	.byte	0x8
	.4byte	0xa0
	.byte	0x5
	.byte	0
	.byte	0x7
	.4byte	0x59
	.4byte	0x572
	.byte	0x8
	.4byte	0xa0
	.byte	0x2
	.byte	0
	.byte	0x2
	.4byte	.LASF99
	.byte	0x5
	.byte	0x12
	.byte	0x2
	.4byte	0x4bf
	.byte	0x5
	.byte	0x7
	.byte	0x4
	.4byte	0xa0
	.byte	0x6
	.byte	0x3b
	.byte	0xe
	.4byte	0x5c3
	.byte	0x6
	.4byte	.LASF100
	.byte	0
	.byte	0x6
	.4byte	.LASF101
	.byte	0x1
	.byte	0x6
	.4byte	.LASF102
	.byte	0x2
	.byte	0x6
	.4byte	.LASF103
	.byte	0x3
	.byte	0x6
	.4byte	.LASF104
	.byte	0x4
	.byte	0x6
	.4byte	.LASF105
	.byte	0x5
	.byte	0x6
	.4byte	.LASF106
	.byte	0x6
	.byte	0x6
	.4byte	.LASF107
	.byte	0x7
	.byte	0x6
	.4byte	.LASF108
	.byte	0x8
	.byte	0
	.byte	0x2
	.4byte	.LASF109
	.byte	0x6
	.byte	0x45
	.byte	0x2
	.4byte	0x57e
	.byte	0x5
	.byte	0x7
	.byte	0x4
	.4byte	0xa0
	.byte	0x6
	.byte	0x4a
	.byte	0xe
	.4byte	0x5f0
	.byte	0x6
	.4byte	.LASF110
	.byte	0
	.byte	0x6
	.4byte	.LASF111
	.byte	0x1
	.byte	0x6
	.4byte	.LASF112
	.byte	0x2
	.byte	0
	.byte	0x2
	.4byte	.LASF113
	.byte	0x6
	.byte	0x4e
	.byte	0x2
	.4byte	0x5cf
	.byte	0x5
	.byte	0x7
	.byte	0x4
	.4byte	0xa0
	.byte	0x6
	.byte	0x53
	.byte	0xe
	.4byte	0x61d
	.byte	0x6
	.4byte	.LASF114
	.byte	0
	.byte	0x6
	.4byte	.LASF115
	.byte	0x1
	.byte	0x6
	.4byte	.LASF116
	.byte	0x10
	.byte	0
	.byte	0x9
	.byte	0x10
	.byte	0x6
	.byte	0x5c
	.byte	0x9
	.4byte	0x668
	.byte	0xa
	.4byte	.LASF117
	.byte	0x6
	.byte	0x5d
	.byte	0xe
	.4byte	0x7f
	.byte	0
	.byte	0xa
	.4byte	.LASF118
	.byte	0x6
	.byte	0x5e
	.byte	0xe
	.4byte	0x6c
	.byte	0x4
	.byte	0xa
	.4byte	.LASF119
	.byte	0x6
	.byte	0x5f
	.byte	0xe
	.4byte	0x6c
	.byte	0x6
	.byte	0xb
	.string	"age"
	.byte	0x6
	.byte	0x60
	.byte	0xe
	.4byte	0x7f
	.byte	0x8
	.byte	0xa
	.4byte	.LASF98
	.byte	0x6
	.byte	0x61
	.byte	0xe
	.4byte	0x7f
	.byte	0xc
	.byte	0
	.byte	0x2
	.4byte	.LASF120
	.byte	0x6
	.byte	0x62
	.byte	0x2
	.4byte	0x61d
	.byte	0x9
	.byte	0x24
	.byte	0x6
	.byte	0x67
	.byte	0x9
	.4byte	0x6e6
	.byte	0xa
	.4byte	.LASF121
	.byte	0x6
	.byte	0x68
	.byte	0xd
	.4byte	0x59
	.byte	0
	.byte	0xa
	.4byte	.LASF122
	.byte	0x6
	.byte	0x69
	.byte	0xd
	.4byte	0x59
	.byte	0x1
	.byte	0xa
	.4byte	.LASF123
	.byte	0x6
	.byte	0x6a
	.byte	0xd
	.4byte	0x59
	.byte	0x2
	.byte	0xa
	.4byte	.LASF124
	.byte	0x6
	.byte	0x6b
	.byte	0xd
	.4byte	0x6e6
	.byte	0x3
	.byte	0xa
	.4byte	.LASF125
	.byte	0x6
	.byte	0x6c
	.byte	0xe
	.4byte	0xdb
	.byte	0xc
	.byte	0xa
	.4byte	.LASF126
	.byte	0x6
	.byte	0x6d
	.byte	0xe
	.4byte	0xdb
	.byte	0x14
	.byte	0xb
	.string	"len"
	.byte	0x6
	.byte	0x6e
	.byte	0xe
	.4byte	0x7f
	.byte	0x1c
	.byte	0xb
	.string	"age"
	.byte	0x6
	.byte	0x6f
	.byte	0xe
	.4byte	0x7f
	.byte	0x20
	.byte	0
	.byte	0x7
	.4byte	0x59
	.4byte	0x6f6
	.byte	0x8
	.4byte	0xa0
	.byte	0x8
	.byte	0
	.byte	0x2
	.4byte	.LASF127
	.byte	0x6
	.byte	0x70
	.byte	0x2
	.4byte	0x674
	.byte	0xe
	.2byte	0x254
	.byte	0x6
	.byte	0x75
	.byte	0x9
	.4byte	0x735
	.byte	0xa
	.4byte	.LASF128
	.byte	0x6
	.byte	0x76
	.byte	0x14
	.4byte	0x668
	.byte	0
	.byte	0xa
	.4byte	.LASF129
	.byte	0x6
	.byte	0x77
	.byte	0x1a
	.4byte	0x735
	.byte	0x10
	.byte	0xf
	.4byte	.LASF98
	.byte	0x6
	.byte	0x78
	.byte	0xe
	.4byte	0x7f
	.2byte	0x250
	.byte	0
	.byte	0x7
	.4byte	0x6f6
	.4byte	0x745
	.byte	0x8
	.4byte	0xa0
	.byte	0xf
	.byte	0
	.byte	0x2
	.4byte	.LASF130
	.byte	0x6
	.byte	0x79
	.byte	0x2
	.4byte	0x702
	.byte	0x10
	.4byte	.LASF131
	.byte	0x1
	.byte	0x5
	.byte	0x18
	.4byte	0x572
	.byte	0x5
	.byte	0x3
	.4byte	rf_para
	.byte	0x10
	.4byte	.LASF132
	.byte	0x1
	.byte	0x6
	.byte	0x11
	.4byte	0x7f
	.byte	0x5
	.byte	0x3
	.4byte	rf_para_addr
	.byte	0x10
	.4byte	.LASF133
	.byte	0x1
	.byte	0x7
	.byte	0x1c
	.4byte	0x787
	.byte	0x5
	.byte	0x3
	.4byte	pFlashCfg
	.byte	0xc
	.byte	0x4
	.4byte	0x4ad
	.byte	0x7
	.4byte	0x745
	.4byte	0x79d
	.byte	0x8
	.4byte	0xa0
	.byte	0x1
	.byte	0
	.byte	0x11
	.4byte	.LASF134
	.byte	0x1
	.byte	0x15
	.byte	0x16
	.4byte	0x78d
	.byte	0x5
	.byte	0x3
	.4byte	ptTableStuff
	.byte	0x11
	.4byte	.LASF135
	.byte	0x1
	.byte	0x16
	.byte	0x16
	.4byte	0x6f6
	.byte	0x5
	.byte	0x3
	.4byte	ptEntry
	.byte	0x12
	.4byte	.LASF137
	.byte	0x1
	.byte	0xd4
	.byte	0x8
	.4byte	0x25
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x1
	.byte	0x9c
	.4byte	0x839
	.byte	0x13
	.string	"mac"
	.byte	0x1
	.byte	0xd4
	.byte	0x27
	.4byte	0x4b9
	.4byte	.LLST19
	.byte	0x14
	.4byte	.LASF136
	.byte	0x1
	.byte	0xd4
	.byte	0x36
	.4byte	0x59
	.4byte	.LLST20
	.byte	0x15
	.4byte	.LVL65
	.4byte	0xa7f
	.byte	0x16
	.4byte	.LVL66
	.4byte	0xc2f
	.4byte	0x81d
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x4
	.byte	0x17
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x40
	.byte	0
	.byte	0x18
	.4byte	.LVL67
	.4byte	0xc3b
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x17
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0xb
	.byte	0x17
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x36
	.byte	0
	.byte	0
	.byte	0x19
	.4byte	.LASF144
	.byte	0x1
	.byte	0xcf
	.byte	0x6
	.byte	0x12
	.4byte	.LASF138
	.byte	0x1
	.byte	0xc1
	.byte	0x8
	.4byte	0x25
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x1
	.byte	0x9c
	.4byte	0x8be
	.byte	0x13
	.string	"mac"
	.byte	0x1
	.byte	0xc1
	.byte	0x2c
	.4byte	0x4b9
	.4byte	.LLST17
	.byte	0x14
	.4byte	.LASF139
	.byte	0x1
	.byte	0xc1
	.byte	0x3b
	.4byte	0x59
	.4byte	.LLST18
	.byte	0x16
	.4byte	.LVL58
	.4byte	0xc3b
	.4byte	0x89b
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0xb
	.byte	0x17
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x17
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x36
	.byte	0
	.byte	0x16
	.4byte	.LVL59
	.4byte	0xc2f
	.4byte	0x8b4
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x4
	.byte	0x17
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x40
	.byte	0
	.byte	0x1a
	.4byte	.LVL60
	.4byte	0xac2
	.byte	0
	.byte	0x12
	.4byte	.LASF140
	.byte	0x1
	.byte	0x95
	.byte	0x8
	.4byte	0x25
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x1
	.byte	0x9c
	.4byte	0x955
	.byte	0x14
	.4byte	.LASF141
	.byte	0x1
	.byte	0x95
	.byte	0x2a
	.4byte	0x955
	.4byte	.LLST13
	.byte	0x14
	.4byte	.LASF136
	.byte	0x1
	.byte	0x95
	.byte	0x40
	.4byte	0x59
	.4byte	.LLST14
	.byte	0x1b
	.4byte	.LASF142
	.byte	0x1
	.byte	0x97
	.byte	0xc
	.4byte	0x542
	.4byte	.LLST15
	.byte	0x1b
	.4byte	.LASF143
	.byte	0x1
	.byte	0x98
	.byte	0xd
	.4byte	0x3f
	.4byte	.LLST16
	.byte	0x15
	.4byte	.LVL43
	.4byte	0xa7f
	.byte	0x16
	.4byte	.LVL44
	.4byte	0xc2f
	.4byte	0x93a
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0x4
	.byte	0x17
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x40
	.byte	0
	.byte	0x18
	.4byte	.LVL45
	.4byte	0xc47
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x17
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x17
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x3e
	.byte	0
	.byte	0
	.byte	0xc
	.byte	0x4
	.4byte	0x25
	.byte	0x19
	.4byte	.LASF145
	.byte	0x1
	.byte	0x90
	.byte	0x6
	.byte	0x12
	.4byte	.LASF146
	.byte	0x1
	.byte	0x80
	.byte	0x8
	.4byte	0x25
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x1
	.byte	0x9c
	.4byte	0x9c0
	.byte	0x14
	.4byte	.LASF141
	.byte	0x1
	.byte	0x80
	.byte	0x2f
	.4byte	0x955
	.4byte	.LLST11
	.byte	0x14
	.4byte	.LASF139
	.byte	0x1
	.byte	0x80
	.byte	0x45
	.4byte	0x59
	.4byte	.LLST12
	.byte	0x16
	.4byte	.LVL36
	.4byte	0xc2f
	.4byte	0x9b6
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x4
	.byte	0x17
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x40
	.byte	0
	.byte	0x1a
	.4byte	.LVL37
	.4byte	0xac2
	.byte	0
	.byte	0x12
	.4byte	.LASF147
	.byte	0x1
	.byte	0x70
	.byte	0x8
	.4byte	0x25
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x1
	.byte	0x9c
	.4byte	0xa19
	.byte	0x14
	.4byte	.LASF93
	.byte	0x1
	.byte	0x70
	.byte	0x2d
	.4byte	0x4b9
	.4byte	.LLST9
	.byte	0x14
	.4byte	.LASF136
	.byte	0x1
	.byte	0x70
	.byte	0x3d
	.4byte	0x59
	.4byte	.LLST10
	.byte	0x15
	.4byte	.LVL31
	.4byte	0xa7f
	.byte	0x18
	.4byte	.LVL32
	.4byte	0xc2f
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x4
	.byte	0x17
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x40
	.byte	0
	.byte	0
	.byte	0x1c
	.4byte	.LASF170
	.byte	0x1
	.byte	0x6b
	.byte	0x6
	.byte	0x1
	.byte	0x12
	.4byte	.LASF148
	.byte	0x1
	.byte	0x5d
	.byte	0x8
	.4byte	0x25
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x1
	.byte	0x9c
	.4byte	0xa7f
	.byte	0x14
	.4byte	.LASF93
	.byte	0x1
	.byte	0x5d
	.byte	0x31
	.4byte	0x59
	.4byte	.LLST7
	.byte	0x14
	.4byte	.LASF139
	.byte	0x1
	.byte	0x5d
	.byte	0x41
	.4byte	0x59
	.4byte	.LLST8
	.byte	0x16
	.4byte	.LVL24
	.4byte	0xc2f
	.4byte	0xa75
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x4
	.byte	0x17
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x40
	.byte	0
	.byte	0x1a
	.4byte	.LVL25
	.4byte	0xac2
	.byte	0
	.byte	0x1d
	.4byte	.LASF149
	.byte	0x1
	.byte	0x4e
	.byte	0xf
	.4byte	0x25
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x1
	.byte	0x9c
	.4byte	0xac2
	.byte	0x1e
	.string	"ret"
	.byte	0x1
	.byte	0x50
	.byte	0x11
	.4byte	0xcf
	.4byte	.LLST3
	.byte	0x18
	.4byte	.LVL5
	.4byte	0xc53
	.byte	0x17
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR1
	.byte	0x17
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x48
	.byte	0
	.byte	0
	.byte	0x1d
	.4byte	.LASF150
	.byte	0x1
	.byte	0x39
	.byte	0xf
	.4byte	0x25
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x1
	.byte	0x9c
	.4byte	0xb0e
	.byte	0x1e
	.string	"ret"
	.byte	0x1
	.byte	0x3b
	.byte	0x11
	.4byte	0xcf
	.4byte	.LLST4
	.byte	0x15
	.4byte	.LVL7
	.4byte	0xc5f
	.byte	0x18
	.4byte	.LVL10
	.4byte	0xc6b
	.byte	0x17
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR1
	.byte	0x17
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x48
	.byte	0
	.byte	0
	.byte	0x12
	.4byte	.LASF151
	.byte	0x1
	.byte	0x1f
	.byte	0x8
	.4byte	0x25
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0xba8
	.byte	0x14
	.4byte	.LASF152
	.byte	0x1
	.byte	0x1f
	.byte	0x2c
	.4byte	0x787
	.4byte	.LLST5
	.byte	0x1b
	.4byte	.LASF153
	.byte	0x1
	.byte	0x21
	.byte	0x15
	.4byte	0x5f0
	.4byte	.LLST6
	.byte	0x1f
	.string	"ret"
	.byte	0x1
	.byte	0x22
	.byte	0x18
	.4byte	0x5c3
	.byte	0x1
	.byte	0x5a
	.byte	0x16
	.4byte	.LVL17
	.4byte	0xc77
	.4byte	0xb77
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0x17
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x17
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	PtTable_Flash_Read
	.byte	0
	.byte	0x16
	.4byte	.LVL18
	.4byte	0xc83
	.4byte	0xb8e
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	ptTableStuff
	.byte	0
	.byte	0x18
	.4byte	.LVL20
	.4byte	0xc8f
	.byte	0x17
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x17
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0
	.byte	0x1d
	.4byte	.LASF154
	.byte	0x1
	.byte	0x19
	.byte	0x14
	.4byte	0xcf
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0xc12
	.byte	0x14
	.4byte	.LASF155
	.byte	0x1
	.byte	0x19
	.byte	0x31
	.4byte	0x7f
	.4byte	.LLST0
	.byte	0x14
	.4byte	.LASF156
	.byte	0x1
	.byte	0x19
	.byte	0x3f
	.4byte	0x4b9
	.4byte	.LLST1
	.byte	0x13
	.string	"len"
	.byte	0x1
	.byte	0x19
	.byte	0x4e
	.4byte	0x7f
	.4byte	.LLST2
	.byte	0x18
	.4byte	.LVL4
	.4byte	0xc53
	.byte	0x17
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x17
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x17
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0
	.byte	0
	.byte	0x20
	.4byte	0xa19
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x1
	.byte	0x9c
	.4byte	0xc2f
	.byte	0x1a
	.4byte	.LVL26
	.4byte	0xac2
	.byte	0
	.byte	0x21
	.4byte	.LASF157
	.4byte	.LASF157
	.byte	0x7
	.byte	0x7
	.byte	0xa
	.byte	0x21
	.4byte	.LASF158
	.4byte	.LASF158
	.byte	0x8
	.byte	0x1f
	.byte	0x8
	.byte	0x21
	.4byte	.LASF159
	.4byte	.LASF159
	.byte	0x8
	.byte	0x21
	.byte	0x8
	.byte	0x21
	.4byte	.LASF160
	.4byte	.LASF160
	.byte	0x9
	.byte	0x4f
	.byte	0xd
	.byte	0x21
	.4byte	.LASF161
	.4byte	.LASF161
	.byte	0x9
	.byte	0x4b
	.byte	0xd
	.byte	0x21
	.4byte	.LASF162
	.4byte	.LASF162
	.byte	0x9
	.byte	0x4d
	.byte	0xd
	.byte	0x21
	.4byte	.LASF163
	.4byte	.LASF163
	.byte	0x6
	.byte	0xad
	.byte	0x6
	.byte	0x21
	.4byte	.LASF164
	.4byte	.LASF164
	.byte	0x6
	.byte	0xae
	.byte	0x11
	.byte	0x21
	.4byte	.LASF165
	.4byte	.LASF165
	.byte	0x6
	.byte	0xb2
	.byte	0x14
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
	.byte	0x6
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xb
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
	.byte	0xc
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xd
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
	.byte	0xe
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
	.byte	0xf
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
	.byte	0x5
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
	.byte	0x3f
	.byte	0x19
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
	.byte	0x13
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
	.byte	0x14
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
	.byte	0x15
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x16
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
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x19
	.byte	0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.byte	0x1a
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
	.byte	0x2e
	.byte	0
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
	.byte	0x20
	.byte	0xb
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
	.byte	0x1f
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
	.byte	0x20
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
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST19:
	.4byte	.LVL61
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL63
	.4byte	.LVL64
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL64
	.4byte	.LFE20
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL61
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL62
	.4byte	.LVL64
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL64
	.4byte	.LVL65-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL65-1
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL55
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL57
	.4byte	.LVL58-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL58-1
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL55
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL56
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL39
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL42
	.4byte	.LFE17
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL39
	.4byte	.LVL42
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL42
	.4byte	.LVL43-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL43-1
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x8
	.byte	0x5d
	.byte	0x93
	.byte	0x1
	.byte	0x61
	.byte	0x93
	.byte	0x1
	.byte	0x93
	.byte	0x1
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x9
	.byte	0x5d
	.byte	0x93
	.byte	0x1
	.byte	0x61
	.byte	0x93
	.byte	0x1
	.byte	0x60
	.byte	0x93
	.byte	0x1
	.4byte	.LVL48
	.4byte	.LVL52
	.2byte	0xa
	.byte	0x78
	.byte	0
	.byte	0x93
	.byte	0x1
	.byte	0x61
	.byte	0x93
	.byte	0x1
	.byte	0x60
	.byte	0x93
	.byte	0x1
	.4byte	.LVL52
	.4byte	.LFE17
	.2byte	0xb
	.byte	0x78
	.byte	0
	.byte	0x93
	.byte	0x1
	.byte	0x78
	.byte	0x6
	.byte	0x93
	.byte	0x1
	.byte	0x60
	.byte	0x93
	.byte	0x1
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL38
	.4byte	.LVL40
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL42
	.4byte	.LVL49
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL51
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x3
	.byte	0x81
	.byte	0x4e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL33
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL35
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL34
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LFE14
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL28
	.4byte	.LVL30
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LVL31-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL31-1
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL22
	.4byte	.LVL24-1
	.2byte	0x5
	.byte	0x3
	.4byte	rf_para+5
	.4byte	.LVL24-1
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL21
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL23
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL9
	.4byte	.LVL10-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x5
	.byte	0x3
	.4byte	pFlashCfg
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL16
	.4byte	.LVL17-1
	.2byte	0x5
	.byte	0x3
	.4byte	pFlashCfg
	.4byte	.LVL17-1
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL3
	.4byte	.LVL4-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL4-1
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
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL2
	.4byte	.LVL4-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL4-1
	.4byte	.LFE8
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
	.4byte	.LVL4-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL4-1
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x6c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF123:
	.string	"activeIndex"
.LASF79:
	.string	"deBurstWrapCmd"
.LASF138:
	.string	"mfg_flash_write_macaddr_pre"
.LASF36:
	.string	"blk64EraseCmd"
.LASF168:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/bl602_std"
.LASF150:
	.string	"mfg_flash_program"
.LASF44:
	.string	"qpiFrDmyClk"
.LASF110:
	.string	"PT_TABLE_ID_0"
.LASF111:
	.string	"PT_TABLE_ID_1"
.LASF157:
	.string	"BFLB_Soft_CRC32"
.LASF128:
	.string	"ptTable"
.LASF64:
	.string	"wrEnableReadRegLen"
.LASF47:
	.string	"fastReadDioCmd"
.LASF121:
	.string	"type"
.LASF88:
	.string	"pdDelay"
.LASF60:
	.string	"wrEnableBit"
.LASF50:
	.string	"frQoDmyClk"
.LASF116:
	.string	"PT_ENTRY_MAX"
.LASF12:
	.string	"long long unsigned int"
.LASF45:
	.string	"fastReadDoCmd"
.LASF22:
	.string	"clkInvert"
.LASF155:
	.string	"addr"
.LASF20:
	.string	"cReadSupport"
.LASF133:
	.string	"pFlashCfg"
.LASF29:
	.string	"qpiJedecIdCmd"
.LASF56:
	.string	"writeVregEnableCmd"
.LASF59:
	.string	"busyIndex"
.LASF71:
	.string	"enterQpi"
.LASF165:
	.string	"PtTable_Get_Active_Entries_By_Name"
.LASF25:
	.string	"resetCreadCmd"
.LASF5:
	.string	"long long int"
.LASF0:
	.string	"signed char"
.LASF139:
	.string	"program"
.LASF27:
	.string	"jedecIdCmd"
.LASF97:
	.string	"rsvd"
.LASF75:
	.string	"burstWrapCmd"
.LASF126:
	.string	"maxLen"
.LASF18:
	.string	"BL_Err_Type"
.LASF4:
	.string	"long int"
.LASF103:
	.string	"PT_ERROR_ENTRY_UPDATE_FAIL"
.LASF90:
	.string	"SPI_Flash_Cfg_Type"
.LASF67:
	.string	"releasePowerDown"
.LASF53:
	.string	"qpiFastReadQioCmd"
.LASF160:
	.string	"XIP_SFlash_Read_Need_Lock_Ext"
.LASF23:
	.string	"resetEnCmd"
.LASF70:
	.string	"writeRegCmd"
.LASF161:
	.string	"XIP_SFlash_Erase_Need_Lock_Ext"
.LASF100:
	.string	"PT_ERROR_SUCCESS"
.LASF72:
	.string	"exitQpi"
.LASF21:
	.string	"clkDelay"
.LASF130:
	.string	"PtTable_Stuff_Config"
.LASF49:
	.string	"fastReadQoCmd"
.LASF144:
	.string	"mfg_flash_write_macaddr"
.LASF98:
	.string	"crc32"
.LASF34:
	.string	"sectorEraseCmd"
.LASF30:
	.string	"qpiJedecIdCmdDmyClk"
.LASF77:
	.string	"burstWrapDataMode"
.LASF106:
	.string	"PT_ERROR_FALSH_READ"
.LASF13:
	.string	"unsigned int"
.LASF8:
	.string	"uint16_t"
.LASF170:
	.string	"mfg_flash_write_xtal_capcode"
.LASF82:
	.string	"deBurstWrapData"
.LASF101:
	.string	"PT_ERROR_TABLE_NOT_VALID"
.LASF24:
	.string	"resetCmd"
.LASF11:
	.string	"long unsigned int"
.LASF163:
	.string	"PtTable_Set_Flash_Operation"
.LASF136:
	.string	"reload"
.LASF89:
	.string	"qeData"
.LASF129:
	.string	"ptEntries"
.LASF124:
	.string	"name"
.LASF120:
	.string	"PtTable_Config"
.LASF31:
	.string	"sectorSize"
.LASF156:
	.string	"data"
.LASF17:
	.string	"TIMEOUT"
.LASF122:
	.string	"device"
.LASF39:
	.string	"qpageProgramCmd"
.LASF145:
	.string	"mfg_flash_write_poweroffset"
.LASF127:
	.string	"PtTable_Entry_Config"
.LASF117:
	.string	"magicCode"
.LASF63:
	.string	"wrEnableWriteRegLen"
.LASF35:
	.string	"blk32EraseCmd"
.LASF166:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
.LASF149:
	.string	"mfg_flash_read"
.LASF125:
	.string	"Address"
.LASF19:
	.string	"ioMode"
.LASF55:
	.string	"qpiPageProgramCmd"
.LASF92:
	.string	"capcode_valid"
.LASF61:
	.string	"qeBit"
.LASF43:
	.string	"qpiFastReadCmd"
.LASF54:
	.string	"qpiFrQioDmyClk"
.LASF148:
	.string	"mfg_flash_write_xtal_capcode_pre"
.LASF146:
	.string	"mfg_flash_write_poweroffset_pre"
.LASF118:
	.string	"version"
.LASF109:
	.string	"PtTable_Error_Type"
.LASF26:
	.string	"resetCreadCmdSize"
.LASF66:
	.string	"qeReadRegLen"
.LASF68:
	.string	"busyReadRegLen"
.LASF16:
	.string	"ERROR"
.LASF83:
	.string	"timeEsector"
.LASF104:
	.string	"PT_ERROR_CRC32"
.LASF73:
	.string	"cReadMode"
.LASF80:
	.string	"deBurstWrapCmdDmyClk"
.LASF93:
	.string	"capcode"
.LASF105:
	.string	"PT_ERROR_PARAMETER"
.LASF78:
	.string	"burstWrapData"
.LASF62:
	.string	"busyBit"
.LASF112:
	.string	"PT_TABLE_ID_INVALID"
.LASF113:
	.string	"PtTable_ID_Type"
.LASF153:
	.string	"activeID"
.LASF3:
	.string	"int32_t"
.LASF7:
	.string	"unsigned char"
.LASF58:
	.string	"qeIndex"
.LASF143:
	.string	"step"
.LASF1:
	.string	"short int"
.LASF91:
	.string	"magic"
.LASF147:
	.string	"mfg_flash_read_xtal_capcode"
.LASF132:
	.string	"rf_para_addr"
.LASF134:
	.string	"ptTableStuff"
.LASF167:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_mfg_flash.c"
.LASF41:
	.string	"fastReadCmd"
.LASF32:
	.string	"pageSize"
.LASF37:
	.string	"writeEnableCmd"
.LASF52:
	.string	"frQioDmyClk"
.LASF46:
	.string	"frDoDmyClk"
.LASF114:
	.string	"PT_ENTRY_FW_CPU0"
.LASF115:
	.string	"PT_ENTRY_FW_CPU1"
.LASF38:
	.string	"pageProgramCmd"
.LASF169:
	.string	"rf_para_flash_tag"
.LASF99:
	.string	"rf_para_flash_t"
.LASF65:
	.string	"qeWriteRegLen"
.LASF141:
	.string	"pwrOffset"
.LASF140:
	.string	"mfg_flash_read_poweroffset"
.LASF131:
	.string	"rf_para"
.LASF84:
	.string	"timeE32k"
.LASF14:
	.string	"char"
.LASF57:
	.string	"wrEnableIndex"
.LASF164:
	.string	"PtTable_Get_Active_Partition_Need_Lock"
.LASF48:
	.string	"frDioDmyClk"
.LASF42:
	.string	"frDmyClk"
.LASF108:
	.string	"PT_ERROR_FALSH_ERASE"
.LASF107:
	.string	"PT_ERROR_FALSH_WRITE"
.LASF152:
	.string	"flashCfg"
.LASF95:
	.string	"poweroffset"
.LASF162:
	.string	"XIP_SFlash_Write_Need_Lock_Ext"
.LASF85:
	.string	"timeE64k"
.LASF28:
	.string	"jedecIdCmdDmyClk"
.LASF158:
	.string	"memcpy"
.LASF74:
	.string	"cRExit"
.LASF119:
	.string	"entryCnt"
.LASF9:
	.string	"short unsigned int"
.LASF135:
	.string	"ptEntry"
.LASF2:
	.string	"int8_t"
.LASF102:
	.string	"PT_ERROR_ENTRY_NOT_FOUND"
.LASF96:
	.string	"mac_valid"
.LASF51:
	.string	"fastReadQioCmd"
.LASF10:
	.string	"uint32_t"
.LASF33:
	.string	"chipEraseCmd"
.LASF87:
	.string	"timeCe"
.LASF159:
	.string	"memset"
.LASF81:
	.string	"deBurstWrapDataMode"
.LASF76:
	.string	"burstWrapCmdDmyClk"
.LASF151:
	.string	"mfg_flash_init"
.LASF6:
	.string	"uint8_t"
.LASF15:
	.string	"SUCCESS"
.LASF154:
	.string	"PtTable_Flash_Read"
.LASF137:
	.string	"mfg_flash_read_macaddr"
.LASF94:
	.string	"poweroffset_valid"
.LASF86:
	.string	"timePagePgm"
.LASF69:
	.string	"readRegCmd"
.LASF40:
	.string	"qppAddrMode"
.LASF142:
	.string	"pwrOffsetTmp"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
