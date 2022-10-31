	.file	"bl_mtd.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.rodata.bl_mtd_open.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"[MTD] [PART] [XIP] error when get %s partition %d\r\n"
	.align	2
.LC1:
	.string	"[MTD] [PART] [XIP] Dead Loop. Reason: no Valid %s partition found\r\n"
	.align	2
.LC2:
	.string	"[MTD] >>>>>> Hanlde info Dump >>>>>>\r\n"
	.align	2
.LC3:
	.string	"      name %s\r\n"
	.align	2
.LC4:
	.string	"      id %d\r\n"
	.align	2
.LC5:
	.string	"      offset %p(%u)\r\n"
	.align	2
.LC6:
	.string	"      size %p(%uKbytes)\r\n"
	.align	2
.LC7:
	.string	"      xip_addr %p\r\n"
	.align	2
.LC8:
	.string	"[MTD] <<<<<< Hanlde info End <<<<<<\r\n"
	.section	.text.bl_mtd_open,"ax",@progbits
	.align	1
	.globl	bl_mtd_open
	.type	bl_mtd_open, @function
bl_mtd_open:
.LFB7:
	.file 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/sys/blmtd/bl_mtd.c"
	.loc 1 64 1
	.cfi_startproc
.LVL0:
	.loc 1 65 5
	.loc 1 64 1 is_stmt 0
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s1,36(sp)
	.cfi_offset 9, -12
	mv	s1,a0
	.loc 1 70 40
	li	a0,32
.LVL1:
	.loc 1 64 1
	sw	s2,32(sp)
	sw	s3,28(sp)
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.loc 1 64 1
	mv	s3,a1
	mv	s2,a2
	.loc 1 65 14
	sw	zero,8(sp)
	.loc 1 66 5 is_stmt 1
	.loc 1 66 14 is_stmt 0
	sw	zero,12(sp)
	.loc 1 67 5 is_stmt 1
	.loc 1 68 5
	.loc 1 70 5
	.loc 1 70 40 is_stmt 0
	call	pvPortMalloc
.LVL2:
	.loc 1 72 5 is_stmt 1
	.loc 1 72 8 is_stmt 0
	beq	a0,zero,.L21
	.loc 1 75 5
	li	a2,32
	li	a1,0
	mv	s0,a0
	.loc 1 75 5 is_stmt 1
	call	memset
.LVL3:
	.loc 1 76 5
	li	a2,16
	mv	a1,s1
	mv	a0,s0
	call	strncpy
.LVL4:
	.loc 1 78 5
	.loc 1 80 19 is_stmt 0
	andi	a5,s2,2
	.loc 1 78 15
	andi	s2,s2,1
.LVL5:
	.loc 1 78 8
	beq	s2,zero,.L3
	.loc 1 80 9 is_stmt 1
	.loc 1 80 12 is_stmt 0
	beq	a5,zero,.L4
	.loc 1 81 13 is_stmt 1
	.loc 1 81 24 is_stmt 0
	addi	a2,sp,12
	addi	a1,sp,8
	mv	a0,s1
	call	hal_boot2_partition_bus_addr_inactive
.LVL6:
	mv	a2,a0
.LVL7:
	.loc 1 81 16
	bne	a0,zero,.L5
	.loc 1 81 88 discriminator 1
	lw	a5,8(sp)
	.loc 1 81 83 discriminator 1
	bne	a5,zero,.L6
.L5:
	.loc 1 82 17 is_stmt 1
	lui	a0,%hi(.LC0)
.LVL8:
	mv	a1,s1
	addi	a0,a0,%lo(.LC0)
	call	printf
.LVL9:
	.loc 1 83 17
	lui	a0,%hi(.LC1)
	mv	a1,s1
	addi	a0,a0,%lo(.LC1)
	call	printf
.LVL10:
.L7:
	.loc 1 84 17 discriminator 1
	.loc 1 85 17 discriminator 1
	.loc 1 84 23 discriminator 1
	j	.L7
.LVL11:
.L6:
	.loc 1 87 13
	.loc 1 87 34 is_stmt 0
	sw	a5,28(s0)
.LVL12:
.L8:
	.loc 1 91 9 is_stmt 1
	.loc 1 91 20 is_stmt 0
	addi	a2,sp,12
	addi	a1,sp,8
	mv	a0,s1
	call	hal_boot2_partition_addr_inactive
.LVL13:
	mv	a2,a0
.LVL14:
	.loc 1 91 12
	bne	a0,zero,.L9
	.loc 1 91 80 discriminator 1
	lw	a5,8(sp)
	.loc 1 91 75 discriminator 1
	bne	a5,zero,.L19
.L9:
	.loc 1 92 13 is_stmt 1
	lui	a0,%hi(.LC0)
.LVL15:
	mv	a1,s1
	addi	a0,a0,%lo(.LC0)
	call	printf
.LVL16:
	.loc 1 93 13
	lui	a0,%hi(.LC1)
	mv	a1,s1
	addi	a0,a0,%lo(.LC1)
	call	printf
.LVL17:
.L11:
	.loc 1 94 13 discriminator 2
	.loc 1 95 13 discriminator 2
	.loc 1 94 19 discriminator 2
	j	.L11
.L4:
	.loc 1 89 13
	.loc 1 89 34 is_stmt 0
	sw	zero,28(s0)
	j	.L8
.L3:
	.loc 1 101 9 is_stmt 1
	.loc 1 101 12 is_stmt 0
	beq	a5,zero,.L13
	.loc 1 102 13 is_stmt 1
	.loc 1 102 24 is_stmt 0
	addi	a2,sp,12
	addi	a1,sp,8
	mv	a0,s1
	call	hal_boot2_partition_bus_addr_active
.LVL18:
	mv	a2,a0
.LVL19:
	.loc 1 102 16
	bne	a0,zero,.L14
	.loc 1 102 86 discriminator 1
	lw	a5,8(sp)
	.loc 1 102 81 discriminator 1
	bne	a5,zero,.L15
.L14:
	.loc 1 103 17 is_stmt 1
	lui	a0,%hi(.LC0)
.LVL20:
	mv	a1,s1
	addi	a0,a0,%lo(.LC0)
	call	printf
.LVL21:
	.loc 1 104 17
	lui	a0,%hi(.LC1)
	mv	a1,s1
	addi	a0,a0,%lo(.LC1)
	call	printf
.LVL22:
.L16:
	.loc 1 105 17 discriminator 3
	.loc 1 106 17 discriminator 3
	.loc 1 105 23 discriminator 3
	j	.L16
.LVL23:
.L15:
	.loc 1 108 13
	.loc 1 108 34 is_stmt 0
	sw	a5,28(s0)
.LVL24:
.L17:
	.loc 1 112 9 is_stmt 1
	.loc 1 112 20 is_stmt 0
	addi	a2,sp,12
	addi	a1,sp,8
	mv	a0,s1
	call	hal_boot2_partition_addr_active
.LVL25:
	mv	a2,a0
.LVL26:
	.loc 1 112 12
	bne	a0,zero,.L18
	.loc 1 112 78 discriminator 1
	lw	a5,8(sp)
	.loc 1 112 73 discriminator 1
	bne	a5,zero,.L19
.L18:
	.loc 1 113 13 is_stmt 1
	lui	a0,%hi(.LC0)
.LVL27:
	mv	a1,s1
	addi	a0,a0,%lo(.LC0)
	call	printf
.LVL28:
	.loc 1 114 13
	lui	a0,%hi(.LC1)
	mv	a1,s1
	addi	a0,a0,%lo(.LC1)
	call	printf
.LVL29:
.L20:
	.loc 1 115 13 discriminator 4
	.loc 1 116 13 discriminator 4
	.loc 1 115 19 discriminator 4
	j	.L20
.L13:
	.loc 1 110 13
	.loc 1 110 34 is_stmt 0
	sw	zero,28(s0)
	j	.L17
.LVL30:
.L19:
	.loc 1 118 9 is_stmt 1
	.loc 1 118 28 is_stmt 0
	sw	a5,20(s0)
	.loc 1 119 9 is_stmt 1
	.loc 1 119 26 is_stmt 0
	lw	a5,12(sp)
.LBB6:
.LBB7:
	.loc 1 22 5
	lui	a0,%hi(.LC2)
.LVL31:
	addi	a0,a0,%lo(.LC2)
.LBE7:
.LBE6:
	.loc 1 119 26
	sw	a5,24(s0)
	.loc 1 121 5 is_stmt 1
.LVL32:
.LBB9:
.LBB8:
	.loc 1 22 5
	call	puts
.LVL33:
	.loc 1 23 5
	lui	a0,%hi(.LC3)
	mv	a1,s0
	addi	a0,a0,%lo(.LC3)
	call	printf
.LVL34:
	.loc 1 24 5
	lw	a1,16(s0)
	lui	a0,%hi(.LC4)
	addi	a0,a0,%lo(.LC4)
	call	printf
.LVL35:
	.loc 1 25 5
	lw	a2,20(s0)
	lui	a0,%hi(.LC5)
	addi	a0,a0,%lo(.LC5)
	mv	a1,a2
	call	printf
.LVL36:
	.loc 1 26 5
	.loc 1 26 60 is_stmt 0
	lw	a1,24(s0)
	.loc 1 26 5
	lui	a0,%hi(.LC6)
	addi	a0,a0,%lo(.LC6)
	srli	a2,a1,10
	call	printf
.LVL37:
	.loc 1 27 5 is_stmt 1
	lw	a1,28(s0)
	lui	a0,%hi(.LC7)
	addi	a0,a0,%lo(.LC7)
	call	printf
.LVL38:
	.loc 1 28 5
	lui	a0,%hi(.LC8)
	addi	a0,a0,%lo(.LC8)
	call	puts
.LVL39:
.LBE8:
.LBE9:
	.loc 1 122 5
	.loc 1 124 12 is_stmt 0
	li	a0,0
	.loc 1 122 13
	sw	s0,0(s3)
	.loc 1 124 5 is_stmt 1
.LVL40:
.L1:
	.loc 1 125 1 is_stmt 0
	lw	ra,44(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	lw	s1,36(sp)
	.cfi_restore 9
.LVL41:
	lw	s2,32(sp)
	.cfi_restore 18
	lw	s3,28(sp)
	.cfi_restore 19
.LVL42:
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
.LVL43:
.L21:
	.cfi_restore_state
	.loc 1 73 16
	li	a0,-1
.LVL44:
	j	.L1
	.cfi_endproc
.LFE7:
	.size	bl_mtd_open, .-bl_mtd_open
	.section	.text.bl_mtd_close,"ax",@progbits
	.align	1
	.globl	bl_mtd_close
	.type	bl_mtd_close, @function
bl_mtd_close:
.LFB8:
	.loc 1 128 1 is_stmt 1
	.cfi_startproc
.LVL45:
	.loc 1 129 5
	.loc 1 128 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 129 5
	call	vPortFree
.LVL46:
	.loc 1 131 5 is_stmt 1
	.loc 1 132 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE8:
	.size	bl_mtd_close, .-bl_mtd_close
	.section	.text.bl_mtd_info,"ax",@progbits
	.align	1
	.globl	bl_mtd_info
	.type	bl_mtd_info, @function
bl_mtd_info:
.LFB9:
	.loc 1 135 1 is_stmt 1
	.cfi_startproc
.LVL47:
	.loc 1 136 5
	.loc 1 138 5
	.loc 1 135 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	.cfi_offset 8, -8
	mv	s0,a1
	sw	s1,4(sp)
	.loc 1 138 5
	mv	a1,a0
.LVL48:
	.cfi_offset 9, -12
	.loc 1 135 1
	mv	s1,a0
	.loc 1 138 5
	mv	a0,s0
.LVL49:
	.loc 1 135 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 138 5
	call	strcpy
.LVL50:
	.loc 1 139 5 is_stmt 1
	.loc 1 139 30 is_stmt 0
	lw	a5,20(s1)
	.loc 1 144 1
	lw	ra,12(sp)
	.cfi_restore 1
	li	a0,0
	.loc 1 139 18
	sw	a5,16(s0)
	.loc 1 140 5 is_stmt 1
	.loc 1 140 28 is_stmt 0
	lw	a5,24(s1)
	.loc 1 140 16
	sw	a5,20(s0)
	.loc 1 141 5 is_stmt 1
	.loc 1 141 32 is_stmt 0
	lw	a5,28(s1)
	.loc 1 144 1
	lw	s1,4(sp)
	.cfi_restore 9
.LVL51:
	.loc 1 141 20
	sw	a5,24(s0)
	.loc 1 143 5 is_stmt 1
	.loc 1 144 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_restore 8
.LVL52:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE9:
	.size	bl_mtd_info, .-bl_mtd_info
	.section	.text.bl_mtd_erase,"ax",@progbits
	.align	1
	.globl	bl_mtd_erase
	.type	bl_mtd_erase, @function
bl_mtd_erase:
.LFB10:
	.loc 1 147 1 is_stmt 1
	.cfi_startproc
.LVL53:
	.loc 1 148 5
	.loc 1 150 5
	.loc 1 147 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 151 32
	lw	a0,20(a0)
.LVL54:
	.loc 1 147 1
	mv	a4,a1
	.loc 1 150 5
	mv	a1,a2
.LVL55:
	add	a0,a4,a0
	call	bl_flash_erase
.LVL56:
	.loc 1 155 5 is_stmt 1
	.loc 1 156 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE10:
	.size	bl_mtd_erase, .-bl_mtd_erase
	.section	.text.bl_mtd_erase_all,"ax",@progbits
	.align	1
	.globl	bl_mtd_erase_all
	.type	bl_mtd_erase_all, @function
bl_mtd_erase_all:
.LFB11:
	.loc 1 159 1 is_stmt 1
	.cfi_startproc
.LVL57:
	.loc 1 160 5
	.loc 1 162 5
	.loc 1 159 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 162 5
	lw	a1,24(a0)
	lw	a0,20(a0)
.LVL58:
	call	bl_flash_erase
.LVL59:
	.loc 1 167 5 is_stmt 1
	.loc 1 168 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE11:
	.size	bl_mtd_erase_all, .-bl_mtd_erase_all
	.section	.rodata.bl_mtd_write.str1.4,"aMS",@progbits,1
	.align	2
.LC9:
	.string	"bl_mtd.c"
	.align	2
.LC10:
	.string	"WARN  "
	.align	2
.LC11:
	.string	"[%10u][%s: %s:%4d] addr@%p is xip flash, size %d\r\n"
	.section	.text.bl_mtd_write,"ax",@progbits
	.align	1
	.globl	bl_mtd_write
	.type	bl_mtd_write, @function
bl_mtd_write:
.LFB12:
	.loc 1 171 1 is_stmt 1
	.cfi_startproc
.LVL60:
	.loc 1 172 5
	.loc 1 173 5
	.loc 1 171 1 is_stmt 0
	addi	sp,sp,-96
	.cfi_def_cfa_offset 96
	sw	s0,88(sp)
	sw	s1,84(sp)
	sw	s2,80(sp)
	sw	ra,92(sp)
	sw	s3,76(sp)
	sw	s4,72(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 1, -4
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.loc 1 173 14
	lw	a5,20(a0)
	.loc 1 175 9
	mv	a0,a3
.LVL61:
	.loc 1 171 1
	mv	s0,a2
	mv	s1,a3
	.loc 1 173 14
	add	s2,a1,a5
.LVL62:
	.loc 1 175 5 is_stmt 1
	.loc 1 175 9 is_stmt 0
	call	bl_sys_isxipaddr
.LVL63:
	.loc 1 175 8
	beq	a0,zero,.L32
	.loc 1 176 9 is_stmt 1
	.loc 1 176 14
	.loc 1 176 16
	.loc 1 176 86 is_stmt 0
	call	xPortIsInsideInterrupt
.LVL64:
	.loc 1 176 16
	beq	a0,zero,.L33
	.loc 1 176 113 discriminator 1
	call	xTaskGetTickCountFromISR
.LVL65:
.L40:
	.loc 1 176 142 discriminator 2
	mv	a1,a0
	.loc 1 176 16 discriminator 2
	lui	a3,%hi(.LC9)
	lui	a2,%hi(.LC10)
	lui	a0,%hi(.LC11)
	mv	a6,s0
	mv	a5,s1
	li	a4,176
	addi	a3,a3,%lo(.LC9)
	addi	a2,a2,%lo(.LC10)
	addi	a0,a0,%lo(.LC11)
	call	bl_printk
.LVL66:
	.loc 1 176 204 is_stmt 1 discriminator 2
	.loc 1 176 213 discriminator 2
	.loc 1 177 9 discriminator 2
	li	s4,64
.LVL67:
.L35:
.LBB14:
.LBB15:
	.loc 1 36 11
	bne	s0,zero,.L37
.LVL68:
.L38:
.LBE15:
.LBE14:
	.loc 1 182 5
	.loc 1 183 1 is_stmt 0
	lw	ra,92(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,88(sp)
	.cfi_restore 8
	lw	s1,84(sp)
	.cfi_restore 9
	lw	s2,80(sp)
	.cfi_restore 18
	lw	s3,76(sp)
	.cfi_restore 19
	lw	s4,72(sp)
	.cfi_restore 20
	li	a0,0
	addi	sp,sp,96
	.cfi_def_cfa_offset 0
	jr	ra
.LVL69:
.L33:
	.cfi_restore_state
	.loc 1 176 142 discriminator 2
	call	xTaskGetTickCount
.LVL70:
	j	.L40
.LVL71:
.L37:
.LBB17:
.LBB16:
	.loc 1 37 9 is_stmt 1
	mv	s3,s0
	bleu	s0,s4,.L36
	li	s3,64
.L36:
.LVL72:
	.loc 1 43 9
	mv	a1,s1
	mv	a2,s3
	mv	a0,sp
	call	memcpy
.LVL73:
	.loc 1 45 9
	mv	a0,s2
	mv	a2,s3
	mv	a1,sp
	call	bl_flash_write
.LVL74:
	.loc 1 47 9
	.loc 1 47 14 is_stmt 0
	add	s2,s2,s3
.LVL75:
	.loc 1 48 9 is_stmt 1
	.loc 1 48 13 is_stmt 0
	add	s1,s1,s3
.LVL76:
	.loc 1 49 9 is_stmt 1
	.loc 1 49 13 is_stmt 0
	sub	s0,s0,s3
.LVL77:
	j	.L35
.LVL78:
.L32:
.LBE16:
.LBE17:
	.loc 1 179 9 is_stmt 1
.LBB18:
.LBB19:
	.loc 1 58 5
	mv	a2,s0
	mv	a1,s1
	mv	a0,s2
	call	bl_flash_write
.LVL79:
	.loc 1 60 5
	.loc 1 60 12 is_stmt 0
	j	.L38
.LBE19:
.LBE18:
	.cfi_endproc
.LFE12:
	.size	bl_mtd_write, .-bl_mtd_write
	.section	.text.bl_mtd_read,"ax",@progbits
	.align	1
	.globl	bl_mtd_read
	.type	bl_mtd_read, @function
bl_mtd_read:
.LFB13:
	.loc 1 186 1 is_stmt 1
	.cfi_startproc
.LVL80:
	.loc 1 187 5
	.loc 1 189 5
	.loc 1 186 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 190 32
	lw	a0,20(a0)
.LVL81:
	.loc 1 186 1
	mv	a4,a1
	.loc 1 189 5
	mv	a1,a3
.LVL82:
	add	a0,a4,a0
	call	bl_flash_read
.LVL83:
	.loc 1 195 5 is_stmt 1
	.loc 1 196 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE13:
	.size	bl_mtd_read, .-bl_mtd_read
	.section	.text.bl_mtd_size,"ax",@progbits
	.align	1
	.globl	bl_mtd_size
	.type	bl_mtd_size, @function
bl_mtd_size:
.LFB14:
	.loc 1 199 1 is_stmt 1
	.cfi_startproc
.LVL84:
	.loc 1 200 5
	.loc 1 201 5
	.loc 1 201 8 is_stmt 0
	beq	a0,zero,.L45
	.loc 1 204 5 is_stmt 1
	.loc 1 204 23 is_stmt 0
	lw	a5,24(a0)
	.loc 1 206 12
	li	a0,0
.LVL85:
	.loc 1 204 11
	sw	a5,0(a1)
	.loc 1 206 5 is_stmt 1
	.loc 1 206 12 is_stmt 0
	ret
.LVL86:
.L45:
	.loc 1 202 16
	li	a0,-1
.LVL87:
	.loc 1 207 1
	ret
	.cfi_endproc
.LFE14:
	.size	bl_mtd_size, .-bl_mtd_size
	.text
.Letext0:
	.file 2 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 3 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 4 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/sys/blmtd/include/bl_mtd.h"
	.file 5 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/bl602_hal/bl_flash.h"
	.file 6 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h"
	.file 7 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/bl602_hal/bl_sys.h"
	.file 8 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h"
	.file 9 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
	.file 10 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/utils/include/utils_log.h"
	.file 11 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/portable.h"
	.file 12 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h"
	.file 13 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/bl602_hal/hal_boot2.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x9fd
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF60
	.byte	0xc
	.4byte	.LASF61
	.4byte	.LASF62
	.4byte	.Ldebug_ranges0+0x30
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.byte	0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1
	.byte	0x4
	.4byte	.LASF6
	.byte	0x2
	.byte	0x2b
	.byte	0x17
	.4byte	0x46
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF2
	.byte	0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF3
	.byte	0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF4
	.byte	0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF5
	.byte	0x4
	.4byte	.LASF7
	.byte	0x2
	.byte	0x4f
	.byte	0x1b
	.4byte	0x6e
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
	.byte	0x6
	.4byte	0x85
	.byte	0x7
	.byte	0x4
	.4byte	0x8c
	.byte	0x4
	.4byte	.LASF12
	.byte	0x3
	.byte	0x18
	.byte	0x13
	.4byte	0x3a
	.byte	0x6
	.4byte	0x97
	.byte	0x4
	.4byte	.LASF13
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x62
	.byte	0x7
	.byte	0x4
	.4byte	0x97
	.byte	0x4
	.4byte	.LASF14
	.byte	0x4
	.byte	0x5
	.byte	0xf
	.4byte	0x83
	.byte	0x8
	.byte	0x1c
	.byte	0x4
	.byte	0x6
	.byte	0x9
	.4byte	0x104
	.byte	0x9
	.4byte	.LASF15
	.byte	0x4
	.byte	0x7
	.byte	0xa
	.4byte	0x104
	.byte	0
	.byte	0x9
	.4byte	.LASF16
	.byte	0x4
	.byte	0x8
	.byte	0x12
	.4byte	0x2c
	.byte	0x10
	.byte	0x9
	.4byte	.LASF17
	.byte	0x4
	.byte	0x9
	.byte	0x12
	.4byte	0x2c
	.byte	0x14
	.byte	0x9
	.4byte	.LASF18
	.byte	0x4
	.byte	0xa
	.byte	0xb
	.4byte	0x83
	.byte	0x18
	.byte	0
	.byte	0xa
	.4byte	0x85
	.4byte	0x114
	.byte	0xb
	.4byte	0x2c
	.byte	0xf
	.byte	0
	.byte	0x4
	.4byte	.LASF19
	.byte	0x4
	.byte	0xb
	.byte	0x3
	.4byte	0xc6
	.byte	0xc
	.4byte	.LASF63
	.byte	0x20
	.byte	0x1
	.byte	0xb
	.byte	0x8
	.4byte	0x16e
	.byte	0x9
	.4byte	.LASF15
	.byte	0x1
	.byte	0xc
	.byte	0xa
	.4byte	0x104
	.byte	0
	.byte	0xd
	.string	"id"
	.byte	0x1
	.byte	0xd
	.byte	0x9
	.4byte	0x25
	.byte	0x10
	.byte	0x9
	.4byte	.LASF16
	.byte	0x1
	.byte	0xe
	.byte	0x12
	.4byte	0x2c
	.byte	0x14
	.byte	0x9
	.4byte	.LASF17
	.byte	0x1
	.byte	0xf
	.byte	0x12
	.4byte	0x2c
	.byte	0x18
	.byte	0x9
	.4byte	.LASF18
	.byte	0x1
	.byte	0x10
	.byte	0xb
	.4byte	0x83
	.byte	0x1c
	.byte	0
	.byte	0x4
	.4byte	.LASF20
	.byte	0x1
	.byte	0x12
	.byte	0x24
	.4byte	0x17a
	.byte	0x7
	.byte	0x4
	.4byte	0x120
	.byte	0xe
	.4byte	.LASF22
	.byte	0x1
	.byte	0xc6
	.byte	0x5
	.4byte	0x25
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x1
	.byte	0x9c
	.4byte	0x1c9
	.byte	0xf
	.4byte	.LASF21
	.byte	0x1
	.byte	0xc6
	.byte	0x21
	.4byte	0xba
	.4byte	.LLST31
	.byte	0x10
	.4byte	.LASF17
	.byte	0x1
	.byte	0xc6
	.byte	0x37
	.4byte	0x1c9
	.byte	0x1
	.byte	0x5b
	.byte	0x11
	.4byte	.LASF26
	.byte	0x1
	.byte	0xc8
	.byte	0x1a
	.4byte	0x16e
	.4byte	.LLST32
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0xe
	.4byte	.LASF23
	.byte	0x1
	.byte	0xb9
	.byte	0x5
	.4byte	0x25
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x1
	.byte	0x9c
	.4byte	0x252
	.byte	0xf
	.4byte	.LASF21
	.byte	0x1
	.byte	0xb9
	.byte	0x21
	.4byte	0xba
	.4byte	.LLST26
	.byte	0xf
	.4byte	.LASF24
	.byte	0x1
	.byte	0xb9
	.byte	0x36
	.4byte	0x2c
	.4byte	.LLST27
	.byte	0xf
	.4byte	.LASF17
	.byte	0x1
	.byte	0xb9
	.byte	0x49
	.4byte	0x2c
	.4byte	.LLST28
	.byte	0xf
	.4byte	.LASF25
	.byte	0x1
	.byte	0xb9
	.byte	0x58
	.4byte	0xb4
	.4byte	.LLST29
	.byte	0x11
	.4byte	.LASF26
	.byte	0x1
	.byte	0xbb
	.byte	0x1a
	.4byte	0x16e
	.4byte	.LLST30
	.byte	0x12
	.4byte	.LVL83
	.4byte	0x90e
	.byte	0x13
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x13
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0
	.byte	0
	.byte	0xe
	.4byte	.LASF27
	.byte	0x1
	.byte	0xaa
	.byte	0x5
	.4byte	0x25
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x1
	.byte	0x9c
	.4byte	0x401
	.byte	0xf
	.4byte	.LASF21
	.byte	0x1
	.byte	0xaa
	.byte	0x22
	.4byte	0xba
	.4byte	.LLST16
	.byte	0xf
	.4byte	.LASF24
	.byte	0x1
	.byte	0xaa
	.byte	0x37
	.4byte	0x2c
	.4byte	.LLST17
	.byte	0xf
	.4byte	.LASF17
	.byte	0x1
	.byte	0xaa
	.byte	0x4a
	.4byte	0x2c
	.4byte	.LLST18
	.byte	0xf
	.4byte	.LASF25
	.byte	0x1
	.byte	0xaa
	.byte	0x5f
	.4byte	0x401
	.4byte	.LLST19
	.byte	0x11
	.4byte	.LASF26
	.byte	0x1
	.byte	0xac
	.byte	0x1a
	.4byte	0x16e
	.4byte	.LLST20
	.byte	0x11
	.4byte	.LASF28
	.byte	0x1
	.byte	0xad
	.byte	0xe
	.4byte	0xa8
	.4byte	.LLST21
	.byte	0x14
	.4byte	0x896
	.4byte	.LBB14
	.4byte	.Ldebug_ranges0+0x18
	.byte	0x1
	.byte	0xb1
	.byte	0x9
	.4byte	0x350
	.byte	0x15
	.4byte	0x8bf
	.4byte	.LLST22
	.byte	0x15
	.4byte	0x8b3
	.4byte	.LLST23
	.byte	0x15
	.4byte	0x8a7
	.4byte	.LLST24
	.byte	0x16
	.4byte	.Ldebug_ranges0+0x18
	.byte	0x17
	.4byte	0x8cb
	.byte	0x3
	.byte	0x91
	.byte	0xa0,0x7f
	.byte	0x18
	.4byte	0x8d7
	.4byte	.LLST25
	.byte	0x19
	.4byte	.LVL73
	.4byte	0x91a
	.4byte	0x332
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0x13
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x13
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0
	.byte	0x12
	.4byte	.LVL74
	.4byte	0x926
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x13
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0x13
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	0x860
	.4byte	.LBB18
	.4byte	.LBE18-.LBB18
	.byte	0x1
	.byte	0xb3
	.byte	0x9
	.4byte	0x396
	.byte	0x1b
	.4byte	0x889
	.byte	0x1
	.byte	0x58
	.byte	0x1b
	.4byte	0x87d
	.byte	0x1
	.byte	0x59
	.byte	0x1b
	.4byte	0x871
	.byte	0x1
	.byte	0x62
	.byte	0x12
	.4byte	.LVL79
	.4byte	0x926
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x13
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x13
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0
	.byte	0x19
	.4byte	.LVL63
	.4byte	0x932
	.4byte	0x3aa
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x1c
	.4byte	.LVL64
	.4byte	0x93e
	.byte	0x1c
	.4byte	.LVL65
	.4byte	0x94a
	.byte	0x19
	.4byte	.LVL66
	.4byte	0x957
	.4byte	0x3f7
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC11
	.byte	0x13
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC10
	.byte	0x13
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0x13
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0xb0
	.byte	0x13
	.byte	0x1
	.byte	0x5f
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x13
	.byte	0x1
	.byte	0x60
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x1c
	.4byte	.LVL70
	.4byte	0x963
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0xa3
	.byte	0xe
	.4byte	.LASF29
	.byte	0x1
	.byte	0x9e
	.byte	0x5
	.4byte	0x25
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x1
	.byte	0x9c
	.4byte	0x44b
	.byte	0xf
	.4byte	.LASF21
	.byte	0x1
	.byte	0x9e
	.byte	0x26
	.4byte	0xba
	.4byte	.LLST14
	.byte	0x11
	.4byte	.LASF26
	.byte	0x1
	.byte	0xa0
	.byte	0x1a
	.4byte	0x16e
	.4byte	.LLST15
	.byte	0x1c
	.4byte	.LVL59
	.4byte	0x970
	.byte	0
	.byte	0xe
	.4byte	.LASF30
	.byte	0x1
	.byte	0x92
	.byte	0x5
	.4byte	0x25
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x1
	.byte	0x9c
	.4byte	0x4b7
	.byte	0xf
	.4byte	.LASF21
	.byte	0x1
	.byte	0x92
	.byte	0x22
	.4byte	0xba
	.4byte	.LLST10
	.byte	0xf
	.4byte	.LASF24
	.byte	0x1
	.byte	0x92
	.byte	0x37
	.4byte	0x2c
	.4byte	.LLST11
	.byte	0xf
	.4byte	.LASF17
	.byte	0x1
	.byte	0x92
	.byte	0x4a
	.4byte	0x2c
	.4byte	.LLST12
	.byte	0x11
	.4byte	.LASF26
	.byte	0x1
	.byte	0x94
	.byte	0x1a
	.4byte	0x16e
	.4byte	.LLST13
	.byte	0x12
	.4byte	.LVL56
	.4byte	0x970
	.byte	0x13
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0
	.byte	0
	.byte	0xe
	.4byte	.LASF31
	.byte	0x1
	.byte	0x86
	.byte	0x5
	.4byte	0x25
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0x518
	.byte	0xf
	.4byte	.LASF21
	.byte	0x1
	.byte	0x86
	.byte	0x21
	.4byte	0xba
	.4byte	.LLST7
	.byte	0xf
	.4byte	.LASF32
	.byte	0x1
	.byte	0x86
	.byte	0x38
	.4byte	0x518
	.4byte	.LLST8
	.byte	0x11
	.4byte	.LASF26
	.byte	0x1
	.byte	0x88
	.byte	0x1a
	.4byte	0x16e
	.4byte	.LLST9
	.byte	0x12
	.4byte	.LVL50
	.4byte	0x97c
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
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x114
	.byte	0xe
	.4byte	.LASF33
	.byte	0x1
	.byte	0x7f
	.byte	0x5
	.4byte	0x25
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0x55a
	.byte	0xf
	.4byte	.LASF21
	.byte	0x1
	.byte	0x7f
	.byte	0x22
	.4byte	0xba
	.4byte	.LLST6
	.byte	0x12
	.4byte	.LVL46
	.4byte	0x988
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0
	.byte	0xe
	.4byte	.LASF34
	.byte	0x1
	.byte	0x3f
	.byte	0x5
	.4byte	0x25
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.4byte	0x85a
	.byte	0xf
	.4byte	.LASF15
	.byte	0x1
	.byte	0x3f
	.byte	0x1d
	.4byte	0x91
	.4byte	.LLST0
	.byte	0xf
	.4byte	.LASF21
	.byte	0x1
	.byte	0x3f
	.byte	0x34
	.4byte	0x85a
	.4byte	.LLST1
	.byte	0xf
	.4byte	.LASF35
	.byte	0x1
	.byte	0x3f
	.byte	0x49
	.4byte	0x2c
	.4byte	.LLST2
	.byte	0x1d
	.4byte	.LASF24
	.byte	0x1
	.byte	0x41
	.byte	0xe
	.4byte	0xa8
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x1d
	.4byte	.LASF17
	.byte	0x1
	.byte	0x42
	.byte	0xe
	.4byte	0xa8
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x1e
	.string	"ret"
	.byte	0x1
	.byte	0x43
	.byte	0x9
	.4byte	0x25
	.4byte	.LLST3
	.byte	0x11
	.4byte	.LASF26
	.byte	0x1
	.byte	0x44
	.byte	0x1a
	.4byte	0x16e
	.4byte	.LLST4
	.byte	0x14
	.4byte	0x8f4
	.4byte	.LBB6
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x79
	.byte	0x5
	.4byte	0x6a3
	.byte	0x15
	.4byte	0x901
	.4byte	.LLST5
	.byte	0x19
	.4byte	.LVL33
	.4byte	0x994
	.4byte	0x616
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0x19
	.4byte	.LVL34
	.4byte	0x9a0
	.4byte	0x633
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0x13
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x19
	.4byte	.LVL35
	.4byte	0x9a0
	.4byte	0x64a
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.byte	0x19
	.4byte	.LVL36
	.4byte	0x9a0
	.4byte	0x661
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.byte	0x19
	.4byte	.LVL37
	.4byte	0x9a0
	.4byte	0x678
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0
	.byte	0x19
	.4byte	.LVL38
	.4byte	0x9a0
	.4byte	0x68f
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0
	.byte	0x12
	.4byte	.LVL39
	.4byte	0x994
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC8
	.byte	0
	.byte	0
	.byte	0x19
	.4byte	.LVL2
	.4byte	0x9ac
	.4byte	0x6b7
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0x19
	.4byte	.LVL3
	.4byte	0x9b8
	.4byte	0x6d6
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x13
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x13
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0x19
	.4byte	.LVL4
	.4byte	0x9c4
	.4byte	0x6f5
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
	.byte	0x79
	.byte	0
	.byte	0x13
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x40
	.byte	0
	.byte	0x19
	.4byte	.LVL6
	.4byte	0x9d0
	.4byte	0x715
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x13
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x13
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0
	.byte	0x19
	.4byte	.LVL9
	.4byte	0x9a0
	.4byte	0x732
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x13
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x19
	.4byte	.LVL10
	.4byte	0x9a0
	.4byte	0x74f
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x13
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x19
	.4byte	.LVL13
	.4byte	0x9dc
	.4byte	0x76f
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x13
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x13
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0
	.byte	0x19
	.4byte	.LVL16
	.4byte	0x9a0
	.4byte	0x78c
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x13
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x19
	.4byte	.LVL17
	.4byte	0x9a0
	.4byte	0x7a9
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x13
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x19
	.4byte	.LVL18
	.4byte	0x9e8
	.4byte	0x7c9
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x13
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x13
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0
	.byte	0x19
	.4byte	.LVL21
	.4byte	0x9a0
	.4byte	0x7e6
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x13
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x19
	.4byte	.LVL22
	.4byte	0x9a0
	.4byte	0x803
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x13
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x19
	.4byte	.LVL25
	.4byte	0x9f4
	.4byte	0x823
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x13
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x13
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0
	.byte	0x19
	.4byte	.LVL28
	.4byte	0x9a0
	.4byte	0x840
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x13
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x12
	.4byte	.LVL29
	.4byte	0x9a0
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x13
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0xba
	.byte	0x1f
	.4byte	.LASF36
	.byte	0x1
	.byte	0x37
	.byte	0xc
	.4byte	0x25
	.byte	0x1
	.4byte	0x896
	.byte	0x20
	.4byte	.LASF24
	.byte	0x1
	.byte	0x37
	.byte	0x20
	.4byte	0xa8
	.byte	0x21
	.string	"src"
	.byte	0x1
	.byte	0x37
	.byte	0x2f
	.4byte	0xb4
	.byte	0x21
	.string	"len"
	.byte	0x1
	.byte	0x37
	.byte	0x41
	.4byte	0x2c
	.byte	0
	.byte	0x1f
	.4byte	.LASF37
	.byte	0x1
	.byte	0x1f
	.byte	0xc
	.4byte	0x25
	.byte	0x1
	.4byte	0x8e4
	.byte	0x20
	.4byte	.LASF24
	.byte	0x1
	.byte	0x1f
	.byte	0x29
	.4byte	0xa8
	.byte	0x21
	.string	"src"
	.byte	0x1
	.byte	0x1f
	.byte	0x38
	.4byte	0xb4
	.byte	0x21
	.string	"len"
	.byte	0x1
	.byte	0x1f
	.byte	0x4a
	.4byte	0x2c
	.byte	0x22
	.4byte	.LASF38
	.byte	0x1
	.byte	0x21
	.byte	0xd
	.4byte	0x8e4
	.byte	0x22
	.4byte	.LASF39
	.byte	0x1
	.byte	0x22
	.byte	0x12
	.4byte	0x2c
	.byte	0
	.byte	0xa
	.4byte	0x97
	.4byte	0x8f4
	.byte	0xb
	.4byte	0x2c
	.byte	0x3f
	.byte	0
	.byte	0x23
	.4byte	.LASF64
	.byte	0x1
	.byte	0x14
	.byte	0xd
	.byte	0x1
	.4byte	0x90e
	.byte	0x20
	.4byte	.LASF26
	.byte	0x1
	.byte	0x14
	.byte	0x34
	.4byte	0x16e
	.byte	0
	.byte	0x24
	.4byte	.LASF40
	.4byte	.LASF40
	.byte	0x5
	.byte	0x7
	.byte	0x5
	.byte	0x24
	.4byte	.LASF41
	.4byte	.LASF41
	.byte	0x6
	.byte	0x1f
	.byte	0x8
	.byte	0x24
	.4byte	.LASF42
	.4byte	.LASF42
	.byte	0x5
	.byte	0x6
	.byte	0x5
	.byte	0x24
	.4byte	.LASF43
	.4byte	.LASF43
	.byte	0x7
	.byte	0x17
	.byte	0x5
	.byte	0x24
	.4byte	.LASF44
	.4byte	.LASF44
	.byte	0x8
	.byte	0x98
	.byte	0xc
	.byte	0x25
	.4byte	.LASF45
	.4byte	.LASF45
	.byte	0x9
	.2byte	0x558
	.byte	0xc
	.byte	0x24
	.4byte	.LASF46
	.4byte	.LASF46
	.byte	0xa
	.byte	0x81
	.byte	0x6
	.byte	0x25
	.4byte	.LASF47
	.4byte	.LASF47
	.byte	0x9
	.2byte	0x547
	.byte	0xc
	.byte	0x24
	.4byte	.LASF48
	.4byte	.LASF48
	.byte	0x5
	.byte	0x5
	.byte	0x5
	.byte	0x24
	.4byte	.LASF49
	.4byte	.LASF49
	.byte	0x6
	.byte	0x26
	.byte	0x7
	.byte	0x24
	.4byte	.LASF50
	.4byte	.LASF50
	.byte	0xb
	.byte	0x94
	.byte	0x6
	.byte	0x24
	.4byte	.LASF51
	.4byte	.LASF51
	.byte	0xc
	.byte	0xdd
	.byte	0x5
	.byte	0x24
	.4byte	.LASF52
	.4byte	.LASF52
	.byte	0xc
	.byte	0xc8
	.byte	0x5
	.byte	0x24
	.4byte	.LASF53
	.4byte	.LASF53
	.byte	0xb
	.byte	0x91
	.byte	0x7
	.byte	0x24
	.4byte	.LASF54
	.4byte	.LASF54
	.byte	0x6
	.byte	0x21
	.byte	0x8
	.byte	0x24
	.4byte	.LASF55
	.4byte	.LASF55
	.byte	0x6
	.byte	0x2c
	.byte	0x7
	.byte	0x24
	.4byte	.LASF56
	.4byte	.LASF56
	.byte	0xd
	.byte	0x2e
	.byte	0x5
	.byte	0x24
	.4byte	.LASF57
	.4byte	.LASF57
	.byte	0xd
	.byte	0x31
	.byte	0x5
	.byte	0x24
	.4byte	.LASF58
	.4byte	.LASF58
	.byte	0xd
	.byte	0x2d
	.byte	0x5
	.byte	0x24
	.4byte	.LASF59
	.4byte	.LASF59
	.byte	0xd
	.byte	0x30
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
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x8
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
	.byte	0x9
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
	.byte	0xa
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xb
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xc
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
	.byte	0xd
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
	.byte	0xe
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
	.byte	0xf
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
	.byte	0x10
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
	.byte	0x15
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x16
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x17
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x18
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x19
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
	.byte	0x1a
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
	.byte	0x1b
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
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
	.byte	0
	.byte	0
	.byte	0x21
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
	.byte	0x22
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
	.byte	0x20
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x24
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
	.byte	0x25
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
.LLST31:
	.4byte	.LVL84
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL85
	.4byte	.LVL86
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL86
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL87
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL84
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL85
	.4byte	.LVL86
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL86
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL87
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL80
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL81
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL80
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL82
	.4byte	.LVL83-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL83-1
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL80
	.4byte	.LVL83-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL83-1
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL80
	.4byte	.LVL83-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL83-1
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL80
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL81
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL60
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL61
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL60
	.4byte	.LVL63-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL63-1
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL60
	.4byte	.LVL63-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL63-1
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL67
	.4byte	.LVL69
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL69
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL71
	.4byte	.LVL78
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL78
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL60
	.4byte	.LVL63-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL63-1
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL67
	.4byte	.LVL69
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL69
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL71
	.4byte	.LVL78
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL78
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL60
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL61
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL62
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL69
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL78
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL66
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL71
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL66
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL71
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL66
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL71
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL72
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL57
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL58
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL57
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL58
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL54
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL53
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL55
	.4byte	.LVL56-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL56-1
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL53
	.4byte	.LVL56-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL56-1
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL54
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL47
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL49
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL51
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL48
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL52
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL47
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL49
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL51
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL45
	.4byte	.LVL46-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL46-1
	.4byte	.LFE8
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
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL41
	.4byte	.LVL43
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL43
	.4byte	.LFE7
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL2-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL2-1
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL43
	.4byte	.LFE7
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL2-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL2-1
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL5
	.4byte	.LVL43
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL43
	.4byte	.LFE7
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL8
	.4byte	.LVL9-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL15
	.4byte	.LVL16-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL20
	.4byte	.LVL21-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL27
	.4byte	.LVL28-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL31
	.4byte	.LVL33-1
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL2
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL3-1
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL32
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x54
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
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
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB6
	.4byte	.LBE6
	.4byte	.LBB9
	.4byte	.LBE9
	.4byte	0
	.4byte	0
	.4byte	.LBB14
	.4byte	.LBE14
	.4byte	.LBB17
	.4byte	.LBE17
	.4byte	0
	.4byte	0
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
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF55:
	.string	"strncpy"
.LASF24:
	.string	"addr"
.LASF30:
	.string	"bl_mtd_erase"
.LASF3:
	.string	"short int"
.LASF40:
	.string	"bl_flash_read"
.LASF23:
	.string	"bl_mtd_read"
.LASF31:
	.string	"bl_mtd_info"
.LASF7:
	.string	"__uint32_t"
.LASF41:
	.string	"memcpy"
.LASF34:
	.string	"bl_mtd_open"
.LASF33:
	.string	"bl_mtd_close"
.LASF12:
	.string	"uint8_t"
.LASF44:
	.string	"xPortIsInsideInterrupt"
.LASF36:
	.string	"_mtd_write"
.LASF26:
	.string	"handle_prv"
.LASF14:
	.string	"bl_mtd_handle_t"
.LASF63:
	.string	"bl_mtd_handle_priv"
.LASF9:
	.string	"long long int"
.LASF32:
	.string	"info"
.LASF54:
	.string	"memset"
.LASF58:
	.string	"hal_boot2_partition_bus_addr_active"
.LASF5:
	.string	"long int"
.LASF16:
	.string	"offset"
.LASF6:
	.string	"__uint8_t"
.LASF61:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/sys/blmtd/bl_mtd.c"
.LASF47:
	.string	"xTaskGetTickCount"
.LASF57:
	.string	"hal_boot2_partition_addr_inactive"
.LASF35:
	.string	"flags"
.LASF37:
	.string	"_mtd_write_copy2ram"
.LASF2:
	.string	"unsigned char"
.LASF1:
	.string	"signed char"
.LASF48:
	.string	"bl_flash_erase"
.LASF10:
	.string	"long long unsigned int"
.LASF13:
	.string	"uint32_t"
.LASF0:
	.string	"unsigned int"
.LASF56:
	.string	"hal_boot2_partition_bus_addr_inactive"
.LASF51:
	.string	"puts"
.LASF4:
	.string	"short unsigned int"
.LASF22:
	.string	"bl_mtd_size"
.LASF11:
	.string	"char"
.LASF62:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/blmtd"
.LASF52:
	.string	"printf"
.LASF43:
	.string	"bl_sys_isxipaddr"
.LASF49:
	.string	"strcpy"
.LASF42:
	.string	"bl_flash_write"
.LASF25:
	.string	"data"
.LASF39:
	.string	"len_tmp"
.LASF27:
	.string	"bl_mtd_write"
.LASF29:
	.string	"bl_mtd_erase_all"
.LASF8:
	.string	"long unsigned int"
.LASF50:
	.string	"vPortFree"
.LASF21:
	.string	"handle"
.LASF17:
	.string	"size"
.LASF59:
	.string	"hal_boot2_partition_addr_active"
.LASF45:
	.string	"xTaskGetTickCountFromISR"
.LASF28:
	.string	"real_addr"
.LASF20:
	.string	"bl_mtd_handle_priv_t"
.LASF15:
	.string	"name"
.LASF64:
	.string	"__dump_mtd_handle"
.LASF18:
	.string	"xip_addr"
.LASF46:
	.string	"bl_printk"
.LASF38:
	.string	"buf_tmp"
.LASF19:
	.string	"bl_mtd_info_t"
.LASF53:
	.string	"pvPortMalloc"
.LASF60:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
