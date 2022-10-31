	.file	"hosal_ota.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.rodata.hosal_ota_start.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"hosal_ota.c"
	.align	2
.LC1:
	.string	"\033[32mINFO\033[0m"
	.align	2
.LC2:
	.string	"%s (%d)[%s:%4d] ota had start\r\n\r\n"
	.align	2
.LC3:
	.string	"\033[31mERROR\033[0m"
	.align	2
.LC4:
	.string	"%s (%d)[%s:%4d] have not enough memory\r\n\r\n"
	.align	2
.LC5:
	.string	"FW"
	.align	2
.LC6:
	.string	"%s (%d)[%s:%4d] Open Default FW partition failed\r\n\r\n"
	.align	2
.LC7:
	.string	"%s (%d)[%s:%4d] PtTable_Get_Active_Entries fail\r\n\r\n"
	.align	2
.LC8:
	.string	"%s (%d)[%s:%4d] file size is more than partition size\r\n\r\n"
	.align	2
.LC9:
	.string	"%s (%d)[%s:%4d] Starting OTA test. OTA size is %lu\r\n\r\n"
	.align	2
.LC10:
	.string	"%s (%d)[%s:%4d] [OTA] [TEST] activeIndex is %u, use OTA address=%08x\r\n\r\n"
	.section	.text.hosal_ota_start,"ax",@progbits
	.align	1
	.globl	hosal_ota_start
	.type	hosal_ota_start, @function
hosal_ota_start:
.LFB5:
	.file 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/bl602_hal/hosal_ota.c"
	.loc 1 43 1
	.cfi_startproc
.LVL0:
	.loc 1 44 5
	.loc 1 45 5
	.loc 1 46 5
	.loc 1 48 5
	.loc 1 43 1 is_stmt 0
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sw	s3,60(sp)
	.cfi_offset 19, -20
	.loc 1 48 18
	lui	s3,%hi(.LANCHOR0)
	.loc 1 43 1
	sw	s1,68(sp)
	sw	s2,64(sp)
	sw	ra,76(sp)
	sw	s0,72(sp)
	sw	s4,56(sp)
	sw	s5,52(sp)
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.loc 1 48 18
	addi	s1,s3,%lo(.LANCHOR0)
	.loc 1 48 8
	lw	a5,0(s1)
	lui	s2,%hi(_fsymc_level_hosal)
	beq	a5,zero,.L2
	.loc 1 49 9 is_stmt 1 discriminator 1
	.loc 1 49 47 discriminator 1
	.loc 1 49 52 discriminator 1
	.loc 1 49 55 is_stmt 0 discriminator 1
	lw	a4,%lo(_fsymc_level_hosal)(s2)
	li	a5,2
	bleu	a4,a5,.L3
.LVL1:
.L39:
	.loc 1 50 16 discriminator 10
	li	s0,0
.L1:
	.loc 1 106 1
	lw	ra,76(sp)
	.cfi_remember_state
	.cfi_restore 1
	mv	a0,s0
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
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
.LVL2:
.L3:
	.cfi_restore_state
	.loc 1 49 116 discriminator 3
	lui	a4,%hi(_fsymf_level_hosalhosal_ota)
	.loc 1 49 96 discriminator 3
	lw	a4,%lo(_fsymf_level_hosalhosal_ota)(a4)
	bgtu	a4,a5,.L39
	.loc 1 49 151 is_stmt 1 discriminator 5
	.loc 1 49 232 is_stmt 0 discriminator 5
	call	xPortIsInsideInterrupt
.LVL3:
	.loc 1 49 151 discriminator 5
	beq	a0,zero,.L6
	.loc 1 49 261 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL4:
.L31:
	.loc 1 49 292 discriminator 8
	mv	a2,a0
	.loc 1 49 151 discriminator 8
	lui	a3,%hi(.LC0)
	lui	a1,%hi(.LC1)
	lui	a0,%hi(.LC2)
	li	a4,49
	addi	a3,a3,%lo(.LC0)
	addi	a1,a1,%lo(.LC1)
	addi	a0,a0,%lo(.LC2)
	call	bl_printk
.LVL5:
	j	.L39
.L6:
	.loc 1 49 292 discriminator 8
	call	xTaskGetTickCount
.LVL6:
	j	.L31
.LVL7:
.L2:
	mv	s4,a0
	.loc 1 53 5 is_stmt 1
	.loc 1 53 36 is_stmt 0
	li	a0,40
.LVL8:
	call	aos_malloc
.LVL9:
	.loc 1 53 14
	sw	a0,0(s1)
	.loc 1 54 5 is_stmt 1
	.loc 1 54 8 is_stmt 0
	bne	a0,zero,.L8
	.loc 1 55 9 is_stmt 1 discriminator 1
	.loc 1 55 47 discriminator 1
	.loc 1 55 52 discriminator 1
	.loc 1 55 55 is_stmt 0 discriminator 1
	lw	a4,%lo(_fsymc_level_hosal)(s2)
	li	a5,4
	bleu	a4,a5,.L9
.L38:
	.loc 1 86 9 is_stmt 1 discriminator 11
	.loc 1 86 16 is_stmt 0 discriminator 11
	li	s0,-1
	j	.L1
.L9:
	.loc 1 55 118 discriminator 3
	lui	a4,%hi(_fsymf_level_hosalhosal_ota)
	.loc 1 55 97 discriminator 3
	lw	a4,%lo(_fsymf_level_hosalhosal_ota)(a4)
	bgtu	a4,a5,.L38
	.loc 1 55 153 is_stmt 1 discriminator 5
	.loc 1 55 244 is_stmt 0 discriminator 5
	call	xPortIsInsideInterrupt
.LVL10:
	.loc 1 55 153 discriminator 5
	beq	a0,zero,.L11
	.loc 1 55 273 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL11:
.L32:
	.loc 1 55 304 discriminator 8
	mv	a2,a0
	.loc 1 55 153 discriminator 8
	lui	a3,%hi(.LC0)
	lui	a1,%hi(.LC3)
	lui	a0,%hi(.LC4)
	li	a4,55
	addi	a3,a3,%lo(.LC0)
	addi	a1,a1,%lo(.LC3)
	addi	a0,a0,%lo(.LC4)
.L40:
	.loc 1 75 153 discriminator 8
	call	bl_printk
.LVL12:
	j	.L38
.L11:
	.loc 1 55 304 discriminator 8
	call	xTaskGetTickCount
.LVL13:
	j	.L32
.L8:
	.loc 1 58 5 is_stmt 1
	li	a2,40
	li	a1,0
	call	memset
.LVL14:
	.loc 1 60 5
	.loc 1 60 13 is_stmt 0
	lw	a1,0(s1)
	.loc 1 62 11
	lui	a0,%hi(.LC5)
	li	a2,1
	.loc 1 60 25
	sw	s4,4(a1)
	.loc 1 62 5 is_stmt 1
	.loc 1 62 11 is_stmt 0
	addi	a0,a0,%lo(.LC5)
	call	bl_mtd_open
.LVL15:
	.loc 1 63 5 is_stmt 1
	.loc 1 63 8 is_stmt 0
	beq	a0,zero,.L13
	.loc 1 64 9 is_stmt 1
	lw	a0,0(s1)
.LVL16:
	call	aos_free
.LVL17:
	.loc 1 65 9
	.loc 1 66 55 is_stmt 0
	lw	a4,%lo(_fsymc_level_hosal)(s2)
	.loc 1 65 18
	sw	zero,0(s1)
	.loc 1 66 9 is_stmt 1
	.loc 1 66 47
	.loc 1 66 52
	.loc 1 66 55 is_stmt 0
	li	a5,4
	bgtu	a4,a5,.L38
	.loc 1 66 118 discriminator 3
	lui	a4,%hi(_fsymf_level_hosalhosal_ota)
	.loc 1 66 97 discriminator 3
	lw	a4,%lo(_fsymf_level_hosalhosal_ota)(a4)
	bgtu	a4,a5,.L38
	.loc 1 66 153 is_stmt 1 discriminator 5
	.loc 1 66 254 is_stmt 0 discriminator 5
	call	xPortIsInsideInterrupt
.LVL18:
	.loc 1 66 153 discriminator 5
	beq	a0,zero,.L14
	.loc 1 66 283 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL19:
.L33:
	.loc 1 66 314 discriminator 8
	mv	a2,a0
	.loc 1 66 153 discriminator 8
	lui	a3,%hi(.LC0)
	lui	a1,%hi(.LC3)
	lui	a0,%hi(.LC6)
	li	a4,66
	addi	a3,a3,%lo(.LC0)
	addi	a1,a1,%lo(.LC3)
	addi	a0,a0,%lo(.LC6)
	j	.L40
.L14:
	.loc 1 66 314 discriminator 8
	call	xTaskGetTickCount
.LVL20:
	j	.L33
.LVL21:
.L13:
	.loc 1 70 5 is_stmt 1
	.loc 1 70 9 is_stmt 0
	addi	a1,sp,12
	call	hal_boot2_get_active_entries
.LVL22:
	mv	s0,a0
	.loc 1 70 8
	beq	a0,zero,.L16
	.loc 1 71 9 is_stmt 1
	lw	a5,0(s1)
	lw	a0,0(a5)
	call	bl_mtd_close
.LVL23:
	.loc 1 72 9
	lw	a0,0(s1)
	call	aos_free
.LVL24:
	.loc 1 73 9
	.loc 1 75 55 is_stmt 0
	lw	a4,%lo(_fsymc_level_hosal)(s2)
	.loc 1 73 18
	sw	zero,0(s1)
	.loc 1 75 9 is_stmt 1
	.loc 1 75 47
	.loc 1 75 52
	.loc 1 75 55 is_stmt 0
	li	a5,4
	bgtu	a4,a5,.L38
	.loc 1 75 118 discriminator 3
	lui	a4,%hi(_fsymf_level_hosalhosal_ota)
	.loc 1 75 97 discriminator 3
	lw	a4,%lo(_fsymf_level_hosalhosal_ota)(a4)
	bgtu	a4,a5,.L38
	.loc 1 75 153 is_stmt 1 discriminator 5
	.loc 1 75 253 is_stmt 0 discriminator 5
	call	xPortIsInsideInterrupt
.LVL25:
	.loc 1 75 153 discriminator 5
	beq	a0,zero,.L17
	.loc 1 75 282 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL26:
.L34:
	.loc 1 75 313 discriminator 8
	mv	a2,a0
	.loc 1 75 153 discriminator 8
	lui	a3,%hi(.LC0)
	lui	a1,%hi(.LC3)
	lui	a0,%hi(.LC7)
	li	a4,75
	addi	a3,a3,%lo(.LC0)
	addi	a1,a1,%lo(.LC3)
	addi	a0,a0,%lo(.LC7)
	j	.L40
.L17:
	.loc 1 75 313 discriminator 8
	call	xTaskGetTickCount
.LVL27:
	j	.L34
.L16:
	.loc 1 78 5 is_stmt 1
	.loc 1 78 32 is_stmt 0
	lbu	a5,14(sp)
	.loc 1 79 14
	addi	a3,sp,48
	.loc 1 78 32
	seqz	a5,a5
.LVL28:
	.loc 1 79 5 is_stmt 1
	.loc 1 79 14 is_stmt 0
	addi	a4,a5,4
	slli	a4,a4,2
	add	a4,a3,a4
	lw	s1,-32(a4)
.LVL29:
	.loc 1 81 5 is_stmt 1
	.loc 1 82 74 is_stmt 0
	lw	a3,%lo(_fsymc_level_hosal)(s2)
	.loc 1 81 8
	bleu	s4,s1,.L19
	.loc 1 82 55 discriminator 1
	li	a5,4
.LVL30:
	addi	s3,s3,%lo(.LANCHOR0)
	.loc 1 82 9 is_stmt 1 discriminator 1
	.loc 1 82 47 discriminator 1
	.loc 1 82 52 discriminator 1
	.loc 1 82 55 is_stmt 0 discriminator 1
	bgtu	a3,a5,.L20
	.loc 1 82 118 discriminator 3
	lui	a4,%hi(_fsymf_level_hosalhosal_ota)
	.loc 1 82 97 discriminator 3
	lw	a4,%lo(_fsymf_level_hosalhosal_ota)(a4)
	bgtu	a4,a5,.L20
	.loc 1 82 153 is_stmt 1 discriminator 5
	.loc 1 82 259 is_stmt 0 discriminator 5
	call	xPortIsInsideInterrupt
.LVL31:
	.loc 1 82 153 discriminator 5
	beq	a0,zero,.L21
	.loc 1 82 288 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL32:
.L35:
	.loc 1 82 319 discriminator 8
	mv	a2,a0
	.loc 1 82 153 discriminator 8
	lui	a3,%hi(.LC0)
	lui	a1,%hi(.LC3)
	lui	a0,%hi(.LC8)
	li	a4,82
	addi	a3,a3,%lo(.LC0)
	addi	a1,a1,%lo(.LC3)
	addi	a0,a0,%lo(.LC8)
	call	bl_printk
.LVL33:
.L20:
	.loc 1 82 371 is_stmt 1 discriminator 11
	.loc 1 82 382 discriminator 11
	.loc 1 83 9 discriminator 11
	lw	a5,0(s3)
	lw	a0,0(a5)
	call	bl_mtd_close
.LVL34:
	.loc 1 84 9 discriminator 11
	lw	a0,0(s3)
	call	aos_free
.LVL35:
	.loc 1 85 9 discriminator 11
	.loc 1 85 18 is_stmt 0 discriminator 11
	sw	zero,0(s3)
	j	.L38
.L21:
	.loc 1 82 319 discriminator 8
	call	xTaskGetTickCount
.LVL36:
	j	.L35
.LVL37:
.L19:
	.loc 1 89 5 is_stmt 1 discriminator 1
	.loc 1 89 43 discriminator 1
	.loc 1 89 48 discriminator 1
	.loc 1 89 51 is_stmt 0 discriminator 1
	li	a4,2
	bgtu	a3,a4,.L39
	.loc 1 78 14 discriminator 3
	slli	a5,a5,2
.LVL38:
	addi	a3,sp,48
	add	a5,a3,a5
	.loc 1 89 112 discriminator 3
	lui	s5,%hi(_fsymf_level_hosalhosal_ota)
	.loc 1 78 14 discriminator 3
	lw	s3,-24(a5)
	.loc 1 89 92 discriminator 3
	lw	a5,%lo(_fsymf_level_hosalhosal_ota)(s5)
	bgtu	a5,a4,.L39
	.loc 1 89 147 is_stmt 1 discriminator 5
	.loc 1 89 249 is_stmt 0 discriminator 5
	call	xPortIsInsideInterrupt
.LVL39:
	.loc 1 89 147 discriminator 5
	beq	a0,zero,.L25
	.loc 1 89 278 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL40:
.L36:
	.loc 1 89 147 discriminator 8
	mv	a5,s1
	.loc 1 89 309 discriminator 8
	mv	a2,a0
	.loc 1 89 147 discriminator 8
	lui	s4,%hi(.LC0)
.LVL41:
	lui	s1,%hi(.LC1)
.LVL42:
	lui	a0,%hi(.LC9)
	li	a4,89
	addi	a3,s4,%lo(.LC0)
	addi	a1,s1,%lo(.LC1)
	addi	a0,a0,%lo(.LC9)
	call	bl_printk
.LVL43:
	.loc 1 89 371 is_stmt 1 discriminator 8
	.loc 1 89 382 discriminator 8
	.loc 1 90 5 discriminator 8
	.loc 1 90 43 discriminator 8
	.loc 1 90 48 discriminator 8
	.loc 1 90 51 is_stmt 0 discriminator 8
	lw	a4,%lo(_fsymc_level_hosal)(s2)
	li	a5,2
	bgtu	a4,a5,.L39
	.loc 1 90 92
	lw	a4,%lo(_fsymf_level_hosalhosal_ota)(s5)
	bgtu	a4,a5,.L39
	.loc 1 90 147 is_stmt 1 discriminator 5
	.loc 1 90 267 is_stmt 0 discriminator 5
	call	xPortIsInsideInterrupt
.LVL44:
	.loc 1 90 147 discriminator 5
	beq	a0,zero,.L28
	.loc 1 90 296 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL45:
.L37:
	.loc 1 90 147 discriminator 8
	lbu	a5,14(sp)
	.loc 1 90 327 discriminator 8
	mv	a2,a0
	.loc 1 90 147 discriminator 8
	lui	a0,%hi(.LC10)
	mv	a6,s3
	li	a4,90
	addi	a3,s4,%lo(.LC0)
	addi	a1,s1,%lo(.LC1)
	addi	a0,a0,%lo(.LC10)
	call	bl_printk
.LVL46:
	j	.L1
.LVL47:
.L25:
	.loc 1 89 309 discriminator 8
	call	xTaskGetTickCount
.LVL48:
	j	.L36
.LVL49:
.L28:
	.loc 1 90 327 discriminator 8
	call	xTaskGetTickCount
.LVL50:
	j	.L37
	.cfi_endproc
.LFE5:
	.size	hosal_ota_start, .-hosal_ota_start
	.section	.rodata.hosal_ota_update.str1.4,"aMS",@progbits,1
	.align	2
.LC11:
	.string	"%s (%d)[%s:%4d] please start ota first\r\n\r\n"
	.align	2
.LC12:
	.string	"%s (%d)[%s:%4d] parm is error!\r\n\r\n"
	.align	2
.LC13:
	.string	"%s (%d)[%s:%4d] mtd erase failed\r\n\r\n"
	.align	2
.LC14:
	.string	"%s (%d)[%s:%4d] erase failed\r\n\r\n"
	.align	2
.LC15:
	.string	"%s (%d)[%s:%4d] mtd write failed\r\n\r\n"
	.section	.text.hosal_ota_update,"ax",@progbits
	.align	1
	.globl	hosal_ota_update
	.type	hosal_ota_update, @function
hosal_ota_update:
.LFB6:
	.loc 1 109 1 is_stmt 1
	.cfi_startproc
.LVL51:
	.loc 1 110 5
	.loc 1 111 5
	.loc 1 109 1 is_stmt 0
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s5,20(sp)
	.cfi_offset 21, -28
	.loc 1 111 18
	lui	s5,%hi(.LANCHOR0)
	lw	a5,%lo(.LANCHOR0)(s5)
	.loc 1 109 1
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s1,36(sp)
	sw	s2,32(sp)
	sw	s3,28(sp)
	sw	s4,24(sp)
	sw	s6,16(sp)
	sw	s7,12(sp)
	sw	s8,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 22, -32
	.cfi_offset 23, -36
	.cfi_offset 24, -40
	.loc 1 111 8
	bne	a5,zero,.L42
	.loc 1 112 9 is_stmt 1 discriminator 1
	.loc 1 112 47 discriminator 1
	.loc 1 112 52 discriminator 1
	.loc 1 112 74 is_stmt 0 discriminator 1
	lui	a5,%hi(_fsymc_level_hosal)
	.loc 1 112 55 discriminator 1
	lw	a4,%lo(_fsymc_level_hosal)(a5)
	li	a5,4
	bleu	a4,a5,.L43
.LVL52:
.L74:
	.loc 1 131 16 discriminator 10
	li	a0,-1
.L41:
	.loc 1 135 1
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
	lw	s5,20(sp)
	.cfi_restore 21
	lw	s6,16(sp)
	.cfi_restore 22
	lw	s7,12(sp)
	.cfi_restore 23
	lw	s8,8(sp)
	.cfi_restore 24
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
.LVL53:
.L43:
	.cfi_restore_state
	.loc 1 112 118 discriminator 3
	lui	a4,%hi(_fsymf_level_hosalhosal_ota)
	.loc 1 112 97 discriminator 3
	lw	a4,%lo(_fsymf_level_hosalhosal_ota)(a4)
	bgtu	a4,a5,.L74
	.loc 1 112 153 is_stmt 1 discriminator 5
	.loc 1 112 244 is_stmt 0 discriminator 5
	call	xPortIsInsideInterrupt
.LVL54:
	.loc 1 112 153 discriminator 5
	beq	a0,zero,.L46
	.loc 1 112 273 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL55:
.L68:
	.loc 1 112 304 discriminator 8
	mv	a2,a0
	.loc 1 112 153 discriminator 8
	lui	a3,%hi(.LC0)
	lui	a1,%hi(.LC3)
	lui	a0,%hi(.LC11)
	li	a4,112
	addi	a3,a3,%lo(.LC0)
	addi	a1,a1,%lo(.LC3)
	addi	a0,a0,%lo(.LC11)
.L73:
	.loc 1 130 153 discriminator 10
	call	bl_printk
.LVL56:
	j	.L74
.L46:
	.loc 1 112 304 discriminator 8
	call	xTaskGetTickCount
.LVL57:
	j	.L68
.LVL58:
.L42:
	.loc 1 116 5 is_stmt 1
	.loc 1 116 15 is_stmt 0
	lw	a4,4(a5)
.LVL59:
	.loc 1 117 5 is_stmt 1
	.loc 1 117 8 is_stmt 0
	bltu	a4,a0,.L48
	mv	s7,a2
	.loc 1 117 32 discriminator 1
	beq	a2,zero,.L48
	.loc 1 117 60 discriminator 2
	add	a5,a1,a3
	mv	s3,a1
	mv	s4,a3
	.loc 1 117 48 discriminator 2
	bgtu	a5,a4,.L48
	.loc 1 117 84 discriminator 3
	bne	a3,zero,.L49
.L48:
	.loc 1 118 9 is_stmt 1 discriminator 1
	.loc 1 118 47 discriminator 1
	.loc 1 118 52 discriminator 1
	.loc 1 118 74 is_stmt 0 discriminator 1
	lui	a5,%hi(_fsymc_level_hosal)
	.loc 1 118 55 discriminator 1
	lw	a4,%lo(_fsymc_level_hosal)(a5)
.LVL60:
	li	a5,4
	bgtu	a4,a5,.L74
	.loc 1 118 118 discriminator 3
	lui	a4,%hi(_fsymf_level_hosalhosal_ota)
	.loc 1 118 97 discriminator 3
	lw	a4,%lo(_fsymf_level_hosalhosal_ota)(a4)
	bgtu	a4,a5,.L74
	.loc 1 118 153 is_stmt 1 discriminator 5
	.loc 1 118 236 is_stmt 0 discriminator 5
	call	xPortIsInsideInterrupt
.LVL61:
	.loc 1 118 153 discriminator 5
	beq	a0,zero,.L50
	.loc 1 118 265 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL62:
.L69:
	.loc 1 118 296 discriminator 8
	mv	a2,a0
	.loc 1 118 153 discriminator 8
	lui	a3,%hi(.LC0)
	lui	a1,%hi(.LC3)
	lui	a0,%hi(.LC12)
	li	a4,118
	addi	a3,a3,%lo(.LC0)
	addi	a1,a1,%lo(.LC3)
	addi	a0,a0,%lo(.LC12)
	j	.L73
.L50:
	.loc 1 118 296 discriminator 8
	call	xTaskGetTickCount
.LVL63:
	j	.L69
.LVL64:
.L49:
.LBB4:
.LBB5:
	.loc 1 26 31
	addi	a5,a5,-1
	addi	s5,s5,%lo(.LANCHOR0)
.LBE5:
.LBE4:
	.loc 1 122 5 is_stmt 1
.LVL65:
.LBB9:
.LBB6:
	.loc 1 22 5
	.loc 1 23 5
	.loc 1 25 5
	.loc 1 25 17 is_stmt 0
	srli	s0,a1,12
.LVL66:
	.loc 1 26 5 is_stmt 1
	.loc 1 26 15 is_stmt 0
	srli	s1,a5,12
.LVL67:
	.loc 1 28 5 is_stmt 1
	.loc 1 29 56 is_stmt 0
	li	s8,1
.LVL68:
.L52:
	.loc 1 28 31 is_stmt 1
	.loc 1 29 22 is_stmt 0
	lw	a5,0(s5)
	.loc 1 30 19
	lw	a0,0(a5)
	.loc 1 28 5
	bgeu	s1,s0,.L58
.LVL69:
.LBE6:
.LBE9:
	.loc 1 123 5 is_stmt 1
	.loc 1 128 5
	.loc 1 128 11 is_stmt 0
	mv	a3,s7
	mv	a2,s4
	mv	a1,s3
	call	bl_mtd_write
.LVL70:
	.loc 1 129 5 is_stmt 1
	.loc 1 129 8 is_stmt 0
	beq	a0,zero,.L41
	.loc 1 130 9 is_stmt 1 discriminator 1
	.loc 1 130 47 discriminator 1
	.loc 1 130 52 discriminator 1
	.loc 1 130 74 is_stmt 0 discriminator 1
	lui	a5,%hi(_fsymc_level_hosal)
	.loc 1 130 55 discriminator 1
	lw	a4,%lo(_fsymc_level_hosal)(a5)
	li	a5,4
	bgtu	a4,a5,.L74
	.loc 1 130 118 discriminator 3
	lui	a4,%hi(_fsymf_level_hosalhosal_ota)
	.loc 1 130 97 discriminator 3
	lw	a4,%lo(_fsymf_level_hosalhosal_ota)(a4)
	bgtu	a4,a5,.L74
	.loc 1 130 153 is_stmt 1 discriminator 5
	.loc 1 130 238 is_stmt 0 discriminator 5
	call	xPortIsInsideInterrupt
.LVL71:
	.loc 1 130 153 discriminator 5
	beq	a0,zero,.L62
	.loc 1 130 267 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL72:
.L72:
	.loc 1 130 298 discriminator 8
	mv	a2,a0
	.loc 1 130 153 discriminator 8
	lui	a3,%hi(.LC0)
	lui	a1,%hi(.LC3)
	lui	a0,%hi(.LC15)
	li	a4,130
	addi	a3,a3,%lo(.LC0)
	addi	a1,a1,%lo(.LC3)
	addi	a0,a0,%lo(.LC15)
	j	.L73
.LVL73:
.L58:
.LBB10:
.LBB7:
	.loc 1 29 9 is_stmt 1
	.loc 1 29 44 is_stmt 0
	srli	s2,s0,5
	.loc 1 29 37
	slli	s2,s2,2
	add	a5,a5,s2
	.loc 1 29 50
	lw	a4,8(a5)
	.loc 1 29 56
	sll	s6,s8,s0
	.loc 1 29 50
	and	a4,s6,a4
	.loc 1 29 12
	bne	a4,zero,.L53
	.loc 1 30 13 is_stmt 1
	.loc 1 30 19 is_stmt 0
	li	a2,4096
	slli	a1,s0,12
	call	bl_mtd_erase
.LVL74:
	.loc 1 31 13 is_stmt 1
	.loc 1 31 16 is_stmt 0
	beq	a0,zero,.L54
	.loc 1 32 17 is_stmt 1
	.loc 1 32 55
	.loc 1 32 60
	.loc 1 32 82 is_stmt 0
	lui	a4,%hi(_fsymc_level_hosal)
	.loc 1 32 63
	lw	a3,%lo(_fsymc_level_hosal)(a4)
	li	a5,4
	mv	s3,a4
.LVL75:
	bgtu	a3,a5,.L74
	.loc 1 32 126
	lui	a4,%hi(_fsymf_level_hosalhosal_ota)
	.loc 1 32 105
	lw	a3,%lo(_fsymf_level_hosalhosal_ota)(a4)
	mv	s2,a4
	bgtu	a3,a5,.L74
	.loc 1 32 161 is_stmt 1
	.loc 1 32 246 is_stmt 0
	call	xPortIsInsideInterrupt
.LVL76:
	.loc 1 32 161
	beq	a0,zero,.L55
	.loc 1 32 275
	call	xTaskGetTickCountFromISR
.LVL77:
.L70:
	.loc 1 32 306
	mv	a2,a0
	.loc 1 32 161
	lui	s1,%hi(.LC0)
.LVL78:
	lui	s0,%hi(.LC3)
.LVL79:
	lui	a0,%hi(.LC13)
	li	a4,32
	addi	a3,s1,%lo(.LC0)
	addi	a1,s0,%lo(.LC3)
	addi	a0,a0,%lo(.LC13)
	call	bl_printk
.LVL80:
.LBE7:
.LBE10:
	.loc 1 123 5 is_stmt 1
	.loc 1 124 9
	.loc 1 124 47
	.loc 1 124 52
	.loc 1 124 55 is_stmt 0
	lw	a4,%lo(_fsymc_level_hosal)(s3)
	li	a5,4
	bgtu	a4,a5,.L74
	.loc 1 124 97
	lw	a4,%lo(_fsymf_level_hosalhosal_ota)(s2)
	bgtu	a4,a5,.L74
	.loc 1 124 153 is_stmt 1 discriminator 5
	.loc 1 124 234 is_stmt 0 discriminator 5
	call	xPortIsInsideInterrupt
.LVL81:
	.loc 1 124 153 discriminator 5
	beq	a0,zero,.L60
	.loc 1 124 263 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL82:
.L71:
	.loc 1 124 294 discriminator 8
	mv	a2,a0
	.loc 1 124 153 discriminator 8
	lui	a0,%hi(.LC14)
	li	a4,124
	addi	a3,s1,%lo(.LC0)
	addi	a1,s0,%lo(.LC3)
	addi	a0,a0,%lo(.LC14)
	j	.L73
.LVL83:
.L55:
.LBB11:
.LBB8:
	.loc 1 32 306
	call	xTaskGetTickCount
.LVL84:
	j	.L70
.LVL85:
.L54:
	.loc 1 35 13 is_stmt 1
	lw	a5,0(s5)
	add	s2,a5,s2
	.loc 1 35 49 is_stmt 0
	lw	a5,8(s2)
	or	a5,a5,s6
	sw	a5,8(s2)
.LVL86:
.L53:
	.loc 1 28 51 is_stmt 1
	.loc 1 28 56 is_stmt 0
	addi	s0,s0,1
.LVL87:
	j	.L52
.LVL88:
.L60:
.LBE8:
.LBE11:
	.loc 1 124 294 discriminator 8
	call	xTaskGetTickCount
.LVL89:
	j	.L71
.LVL90:
.L62:
	.loc 1 130 298 discriminator 8
	call	xTaskGetTickCount
.LVL91:
	j	.L72
	.cfi_endproc
.LFE6:
	.size	hosal_ota_update, .-hosal_ota_update
	.section	.rodata.hosal_ota_finish.str1.4,"aMS",@progbits,1
	.align	2
.LC16:
	.string	"%s (%d)[%s:%4d] [OTA] prepare OTA partition info\r\n\r\n"
	.align	2
.LC17:
	.string	"%s (%d)[%s:%4d] malloc error\r\n\r\n"
	.align	2
.LC18:
	.string	"%s (%d)[%s:%4d] mtd read failed\r\n\r\n"
	.align	2
.LC19:
	.string	"%s (%d)[%s:%4d] %02X\r\n"
	.align	2
.LC20:
	.string	"\r\nHeader SET SHA256 Checksum:"
	.align	2
.LC21:
	.string	"%s (%d)[%s:%4d] sha256 check error\r\n\r\n"
	.align	2
.LC22:
	.string	"%s (%d)[%s:%4d] [OTA] [TCP] Update PARTITION, partition len is %lu\r\n\r\n"
	.section	.text.hosal_ota_finish,"ax",@progbits
	.align	1
	.globl	hosal_ota_finish
	.type	hosal_ota_finish, @function
hosal_ota_finish:
.LFB7:
	.loc 1 138 1 is_stmt 1
	.cfi_startproc
.LVL92:
	.loc 1 139 5
	.loc 1 138 1 is_stmt 0
	addi	sp,sp,-272
	.cfi_def_cfa_offset 272
	sw	s0,264(sp)
	.cfi_offset 8, -8
	.loc 1 139 18
	lui	s0,%hi(.LANCHOR0)
	.loc 1 138 1
	sw	s1,260(sp)
	sw	ra,268(sp)
	sw	s2,256(sp)
	sw	s3,252(sp)
	sw	s4,248(sp)
	sw	s5,244(sp)
	sw	s6,240(sp)
	sw	s7,236(sp)
	sw	s8,232(sp)
	sw	s9,228(sp)
	sw	s10,224(sp)
	sw	s11,220(sp)
	.cfi_offset 9, -12
	.cfi_offset 1, -4
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 23, -36
	.cfi_offset 24, -40
	.cfi_offset 25, -44
	.cfi_offset 26, -48
	.cfi_offset 27, -52
	.loc 1 139 18
	addi	s1,s0,%lo(.LANCHOR0)
	lw	a5,0(s1)
	.loc 1 139 8
	bne	a5,zero,.L76
	.loc 1 140 9 is_stmt 1 discriminator 1
	.loc 1 140 47 discriminator 1
	.loc 1 140 52 discriminator 1
	.loc 1 140 74 is_stmt 0 discriminator 1
	lui	a5,%hi(_fsymc_level_hosal)
	.loc 1 140 55 discriminator 1
	lw	a4,%lo(_fsymc_level_hosal)(a5)
	li	a5,4
	.loc 1 141 16 discriminator 1
	li	s1,-1
	.loc 1 140 55 discriminator 1
	bgtu	a4,a5,.L75
	.loc 1 140 118 discriminator 3
	lui	a4,%hi(_fsymf_level_hosalhosal_ota)
	.loc 1 140 97 discriminator 3
	lw	a4,%lo(_fsymf_level_hosalhosal_ota)(a4)
	bgtu	a4,a5,.L75
	.loc 1 140 153 is_stmt 1 discriminator 5
	.loc 1 140 244 is_stmt 0 discriminator 5
	call	xPortIsInsideInterrupt
.LVL93:
	.loc 1 140 153 discriminator 5
	beq	a0,zero,.L78
	.loc 1 140 273 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL94:
.L126:
	.loc 1 140 304 discriminator 8
	mv	a2,a0
	.loc 1 140 153 discriminator 8
	lui	a3,%hi(.LC0)
	lui	a1,%hi(.LC3)
	lui	a0,%hi(.LC11)
	li	a4,140
	addi	a3,a3,%lo(.LC0)
	addi	a1,a1,%lo(.LC3)
	addi	a0,a0,%lo(.LC11)
.L136:
.LBB12:
	.loc 1 178 157 discriminator 8
	call	bl_printk
.LVL95:
	j	.L135
.L78:
.LBE12:
	.loc 1 140 304 discriminator 8
	call	xTaskGetTickCount
.LVL96:
	j	.L126
.LVL97:
.L76:
	.loc 1 143 5 is_stmt 1
	.loc 1 144 5
	.loc 1 146 5
	.loc 1 146 17 is_stmt 0
	lw	s4,4(a5)
	.loc 1 146 8
	li	a4,32
	bgtu	s4,a4,.L80
	.loc 1 147 9 is_stmt 1
	lw	a0,0(a5)
.LVL98:
	call	bl_mtd_close
.LVL99:
	.loc 1 148 9
	lw	a0,0(s1)
	call	aos_free
.LVL100:
	.loc 1 149 9
	.loc 1 149 18 is_stmt 0
	sw	zero,0(s1)
.L135:
	.loc 1 150 9 is_stmt 1
	.loc 1 150 16 is_stmt 0
	li	s1,-1
.L75:
	.loc 1 239 1
	lw	ra,268(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,264(sp)
	.cfi_restore 8
	lw	s2,256(sp)
	.cfi_restore 18
	lw	s3,252(sp)
	.cfi_restore 19
	lw	s4,248(sp)
	.cfi_restore 20
	lw	s5,244(sp)
	.cfi_restore 21
	lw	s6,240(sp)
	.cfi_restore 22
	lw	s7,236(sp)
	.cfi_restore 23
	lw	s8,232(sp)
	.cfi_restore 24
	lw	s9,228(sp)
	.cfi_restore 25
	lw	s10,224(sp)
	.cfi_restore 26
	lw	s11,220(sp)
	.cfi_restore 27
	mv	a0,s1
	lw	s1,260(sp)
	.cfi_restore 9
	addi	sp,sp,272
	.cfi_def_cfa_offset 0
	jr	ra
.LVL101:
.L80:
	.cfi_restore_state
	mv	s3,a0
	mv	s5,a1
	.loc 1 155 9
	li	a0,0
.LVL102:
	addi	a1,sp,64
.LVL103:
	call	hal_boot2_get_active_entries
.LVL104:
	lui	s2,%hi(_fsymc_level_hosal)
	.loc 1 156 55
	lw	a4,%lo(_fsymc_level_hosal)(s2)
	addi	s0,s0,%lo(.LANCHOR0)
	.loc 1 153 5 is_stmt 1
	.loc 1 153 14 is_stmt 0
	addi	s4,s4,-32
.LVL105:
	.loc 1 155 5 is_stmt 1
	.loc 1 155 9 is_stmt 0
	mv	s1,a0
	.loc 1 155 8
	beq	a0,zero,.L81
	.loc 1 156 9 is_stmt 1 discriminator 1
	.loc 1 156 47 discriminator 1
	.loc 1 156 52 discriminator 1
	.loc 1 156 55 is_stmt 0 discriminator 1
	li	a5,4
	bgtu	a4,a5,.L82
	.loc 1 156 118 discriminator 3
	lui	a4,%hi(_fsymf_level_hosalhosal_ota)
	.loc 1 156 97 discriminator 3
	lw	a4,%lo(_fsymf_level_hosalhosal_ota)(a4)
	bgtu	a4,a5,.L82
	.loc 1 156 153 is_stmt 1 discriminator 5
	.loc 1 156 253 is_stmt 0 discriminator 5
	call	xPortIsInsideInterrupt
.LVL106:
	.loc 1 156 153 discriminator 5
	beq	a0,zero,.L83
	.loc 1 156 282 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL107:
.L127:
	.loc 1 156 313 discriminator 8
	mv	a2,a0
	.loc 1 156 153 discriminator 8
	lui	a3,%hi(.LC0)
	lui	a1,%hi(.LC3)
	lui	a0,%hi(.LC7)
	li	a4,156
	addi	a3,a3,%lo(.LC0)
	addi	a1,a1,%lo(.LC3)
	addi	a0,a0,%lo(.LC7)
	call	bl_printk
.LVL108:
.L82:
	.loc 1 156 366 is_stmt 1 discriminator 11
	.loc 1 156 377 discriminator 11
	.loc 1 157 9 discriminator 11
	lw	a5,0(s0)
	lw	a0,0(a5)
	call	bl_mtd_close
.LVL109:
	.loc 1 158 9 discriminator 11
	lw	a0,0(s0)
	call	aos_free
.LVL110:
	.loc 1 159 9 discriminator 11
	.loc 1 159 18 is_stmt 0 discriminator 11
	sw	zero,0(s0)
	.loc 1 160 9 is_stmt 1 discriminator 11
	j	.L135
.L83:
	.loc 1 156 313 is_stmt 0 discriminator 8
	call	xTaskGetTickCount
.LVL111:
	j	.L127
.L81:
	.loc 1 162 5 is_stmt 1 discriminator 1
	.loc 1 162 43 discriminator 1
	.loc 1 162 48 discriminator 1
	.loc 1 162 51 is_stmt 0 discriminator 1
	li	a5,2
	bgtu	a4,a5,.L85
	.loc 1 162 112 discriminator 3
	lui	a4,%hi(_fsymf_level_hosalhosal_ota)
	.loc 1 162 92 discriminator 3
	lw	a4,%lo(_fsymf_level_hosalhosal_ota)(a4)
	bgtu	a4,a5,.L85
	.loc 1 162 147 is_stmt 1 discriminator 5
	.loc 1 162 247 is_stmt 0 discriminator 5
	call	xPortIsInsideInterrupt
.LVL112:
	.loc 1 162 147 discriminator 5
	beq	a0,zero,.L86
	.loc 1 162 276 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL113:
.L128:
	.loc 1 162 307 discriminator 8
	mv	a2,a0
	.loc 1 162 147 discriminator 8
	lui	a3,%hi(.LC0)
	lui	a1,%hi(.LC1)
	lui	a0,%hi(.LC16)
	li	a4,162
	addi	a3,a3,%lo(.LC0)
	addi	a1,a1,%lo(.LC1)
	addi	a0,a0,%lo(.LC16)
	call	bl_printk
.LVL114:
.L85:
	.loc 1 162 360 is_stmt 1 discriminator 11
	.loc 1 162 371 discriminator 11
	.loc 1 164 5 discriminator 11
	.loc 1 164 8 is_stmt 0 discriminator 11
	beq	s3,zero,.L88
.LBB13:
	.loc 1 166 9 is_stmt 1
	.loc 1 166 17 is_stmt 0
	li	a2,28
	li	a1,0
	addi	a0,sp,4
	sw	zero,0(sp)
	call	memset
.LVL115:
	.loc 1 167 9 is_stmt 1
	.loc 1 167 17 is_stmt 0
	li	a2,28
	li	a1,0
	addi	a0,sp,36
	sw	zero,32(sp)
	call	memset
.LVL116:
	.loc 1 168 9 is_stmt 1
	.loc 1 169 9
	.loc 1 170 9
	.loc 1 171 9
	.loc 1 173 9
	.loc 1 173 17 is_stmt 0
	li	a0,512
	call	aos_malloc
.LVL117:
	mv	s3,a0
.LVL118:
	.loc 1 174 9 is_stmt 1
	.loc 1 174 12 is_stmt 0
	bne	a0,zero,.L89
	.loc 1 175 13 is_stmt 1
	lw	a5,0(s0)
	lw	a0,0(a5)
.LVL119:
	call	bl_mtd_close
.LVL120:
	.loc 1 176 13
	lw	a0,0(s0)
	call	aos_free
.LVL121:
	.loc 1 177 13
	.loc 1 178 59 is_stmt 0
	lw	a4,%lo(_fsymc_level_hosal)(s2)
	.loc 1 177 22
	sw	zero,0(s0)
	.loc 1 178 13 is_stmt 1
	.loc 1 178 51
	.loc 1 178 56
	.loc 1 178 59 is_stmt 0
	li	a5,4
	bgtu	a4,a5,.L135
	.loc 1 178 122 discriminator 3
	lui	a4,%hi(_fsymf_level_hosalhosal_ota)
	.loc 1 178 101 discriminator 3
	lw	a4,%lo(_fsymf_level_hosalhosal_ota)(a4)
	bgtu	a4,a5,.L135
	.loc 1 178 157 is_stmt 1 discriminator 5
	.loc 1 178 238 is_stmt 0 discriminator 5
	call	xPortIsInsideInterrupt
.LVL122:
	.loc 1 178 157 discriminator 5
	beq	a0,zero,.L91
	.loc 1 178 267 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL123:
.L129:
	.loc 1 178 298 discriminator 8
	mv	a2,a0
	.loc 1 178 157 discriminator 8
	lui	a3,%hi(.LC0)
	lui	a1,%hi(.LC3)
	lui	a0,%hi(.LC17)
	li	a4,178
	addi	a3,a3,%lo(.LC0)
	addi	a1,a1,%lo(.LC3)
	addi	a0,a0,%lo(.LC17)
	j	.L136
.LVL124:
.L86:
.LBE13:
	.loc 1 162 307 discriminator 8
	call	xTaskGetTickCount
.LVL125:
	j	.L128
.LVL126:
.L91:
.LBB14:
	.loc 1 178 298 discriminator 8
	call	xTaskGetTickCount
.LVL127:
	j	.L129
.LVL128:
.L89:
	.loc 1 182 9 is_stmt 1
	addi	a0,sp,100
.LVL129:
	call	utils_sha256_init
.LVL130:
	.loc 1 183 9
	addi	a0,sp,100
	call	utils_sha256_starts
.LVL131:
	.loc 1 185 9
	li	a2,32
	li	a1,0
	mv	a0,sp
	call	memset
.LVL132:
	.loc 1 186 9
	li	a2,32
	li	a1,0
	addi	a0,sp,32
	call	memset
.LVL133:
	.loc 1 187 9
	.loc 1 188 9
	.loc 1 187 16 is_stmt 0
	li	s6,0
	li	s8,512
.LVL134:
.L93:
	.loc 1 188 15 is_stmt 1
	bltu	s6,s4,.L99
	.loc 1 203 9
	mv	a1,sp
	addi	a0,sp,100
	call	utils_sha256_finish
.LVL135:
	.loc 1 204 9
	mv	a0,s3
	call	aos_free
.LVL136:
	.loc 1 206 9
	lw	a5,0(s0)
	mv	a1,s6
	addi	a3,sp,32
	lw	a0,0(a5)
	li	a2,32
	.loc 1 207 16 is_stmt 0
	li	s3,0
.LVL137:
	.loc 1 206 9
	call	bl_mtd_read
.LVL138:
	.loc 1 207 9 is_stmt 1
	.loc 1 207 21
	.loc 1 208 59 is_stmt 0
	li	s6,2
	.loc 1 208 120
	lui	s8,%hi(_fsymf_level_hosalhosal_ota)
	.loc 1 208 155
	lui	s9,%hi(.LC0)
	lui	s10,%hi(.LC1)
	lui	s11,%hi(.LC19)
	.loc 1 207 9
	li	s7,32
.LVL139:
.L103:
	.loc 1 208 13 is_stmt 1 discriminator 1
	.loc 1 208 51 discriminator 1
	.loc 1 208 56 discriminator 1
	.loc 1 208 59 is_stmt 0 discriminator 1
	lw	a5,%lo(_fsymc_level_hosal)(s2)
	bgtu	a5,s6,.L100
	.loc 1 208 100 discriminator 3
	lw	a5,%lo(_fsymf_level_hosalhosal_ota)(s8)
	bgtu	a5,s6,.L100
	.loc 1 208 155 is_stmt 1 discriminator 5
	.loc 1 208 223 is_stmt 0 discriminator 5
	call	xPortIsInsideInterrupt
.LVL140:
	.loc 1 208 155 discriminator 5
	beq	a0,zero,.L101
	.loc 1 208 252 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL141:
.L131:
	.loc 1 208 332 discriminator 8
	addi	a5,sp,32
	add	a5,a5,s3
	.loc 1 208 155 discriminator 8
	lbu	a5,0(a5)
	.loc 1 208 283 discriminator 8
	mv	a2,a0
	.loc 1 208 155 discriminator 8
	li	a4,208
	addi	a3,s9,%lo(.LC0)
	addi	a1,s10,%lo(.LC1)
	addi	a0,s11,%lo(.LC19)
	call	bl_printk
.LVL142:
.L100:
	.loc 1 208 348 is_stmt 1 discriminator 11
	.loc 1 208 359 discriminator 11
	.loc 1 207 29 discriminator 11
	.loc 1 207 30 is_stmt 0 discriminator 11
	addi	s3,s3,1
.LVL143:
	.loc 1 207 21 is_stmt 1 discriminator 11
	.loc 1 207 9 is_stmt 0 discriminator 11
	bne	s3,s7,.L103
	.loc 1 210 9 is_stmt 1
	lui	a0,%hi(.LC20)
	addi	a0,a0,%lo(.LC20)
	call	puts
.LVL144:
	.loc 1 211 9
	.loc 1 211 21
	.loc 1 211 16 is_stmt 0
	li	s3,0
	.loc 1 212 59
	li	s6,2
	.loc 1 212 120
	lui	s8,%hi(_fsymf_level_hosalhosal_ota)
	.loc 1 212 155
	lui	s9,%hi(.LC0)
	lui	s10,%hi(.LC1)
	lui	s11,%hi(.LC19)
	.loc 1 211 9
	li	s7,32
.LVL145:
.L107:
	.loc 1 212 13 is_stmt 1 discriminator 1
	.loc 1 212 51 discriminator 1
	.loc 1 212 56 discriminator 1
	.loc 1 212 59 is_stmt 0 discriminator 1
	lw	a5,%lo(_fsymc_level_hosal)(s2)
	bgtu	a5,s6,.L104
	.loc 1 212 100 discriminator 3
	lw	a5,%lo(_fsymf_level_hosalhosal_ota)(s8)
	bgtu	a5,s6,.L104
	.loc 1 212 155 is_stmt 1 discriminator 5
	.loc 1 212 223 is_stmt 0 discriminator 5
	call	xPortIsInsideInterrupt
.LVL146:
	.loc 1 212 155 discriminator 5
	beq	a0,zero,.L105
	.loc 1 212 252 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL147:
.L132:
	.loc 1 212 334 discriminator 8
	add	a5,sp,s3
	.loc 1 212 155 discriminator 8
	lbu	a5,0(a5)
	.loc 1 212 283 discriminator 8
	mv	a2,a0
	.loc 1 212 155 discriminator 8
	li	a4,212
	addi	a3,s9,%lo(.LC0)
	addi	a1,s10,%lo(.LC1)
	addi	a0,s11,%lo(.LC19)
	call	bl_printk
.LVL148:
.L104:
	.loc 1 212 350 is_stmt 1 discriminator 11
	.loc 1 212 361 discriminator 11
	.loc 1 211 29 discriminator 11
	.loc 1 211 30 is_stmt 0 discriminator 11
	addi	s3,s3,1
.LVL149:
	.loc 1 211 21 is_stmt 1 discriminator 11
	.loc 1 211 9 is_stmt 0 discriminator 11
	bne	s3,s7,.L107
	.loc 1 215 9 is_stmt 1
	.loc 1 215 13 is_stmt 0
	li	a2,32
	addi	a1,sp,32
	mv	a0,sp
	call	memcmp
.LVL150:
	.loc 1 215 12
	beq	a0,zero,.L108
	.loc 1 216 13 is_stmt 1 discriminator 1
	.loc 1 216 51 discriminator 1
	.loc 1 216 56 discriminator 1
	.loc 1 216 59 is_stmt 0 discriminator 1
	lw	a4,%lo(_fsymc_level_hosal)(s2)
	li	a5,4
	bgtu	a4,a5,.L109
	.loc 1 216 122 discriminator 3
	lui	a4,%hi(_fsymf_level_hosalhosal_ota)
	.loc 1 216 101 discriminator 3
	lw	a4,%lo(_fsymf_level_hosalhosal_ota)(a4)
	bgtu	a4,a5,.L109
	.loc 1 216 157 is_stmt 1 discriminator 5
	.loc 1 216 244 is_stmt 0 discriminator 5
	call	xPortIsInsideInterrupt
.LVL151:
	.loc 1 216 157 discriminator 5
	beq	a0,zero,.L110
	.loc 1 216 273 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL152:
.L133:
	.loc 1 216 304 discriminator 8
	mv	a2,a0
	.loc 1 216 157 discriminator 8
	lui	a3,%hi(.LC0)
	lui	a1,%hi(.LC3)
	lui	a0,%hi(.LC21)
	li	a4,216
	addi	a3,a3,%lo(.LC0)
	addi	a1,a1,%lo(.LC3)
	addi	a0,a0,%lo(.LC21)
	call	bl_printk
.LVL153:
.L109:
	.loc 1 216 357 is_stmt 1 discriminator 11
	.loc 1 216 368 discriminator 11
	.loc 1 217 13 discriminator 11
	lw	a5,0(s0)
	lw	a0,0(a5)
	call	bl_mtd_close
.LVL154:
	.loc 1 218 13 discriminator 11
	lw	a0,0(s0)
	call	aos_free
.LVL155:
	.loc 1 219 13 discriminator 11
	.loc 1 220 13 is_stmt 0 discriminator 11
	addi	a0,sp,100
	.loc 1 219 22 discriminator 11
	sw	zero,0(s0)
	.loc 1 220 13 is_stmt 1 discriminator 11
	call	utils_sha256_free
.LVL156:
	.loc 1 221 13 discriminator 11
	.loc 1 221 20 is_stmt 0 discriminator 11
	j	.L135
.LVL157:
.L99:
	.loc 1 189 13 is_stmt 1
	.loc 1 189 23 is_stmt 0
	sub	s7,s4,s6
	bleu	s7,s8,.L94
	li	s7,512
.L94:
.LVL158:
	.loc 1 190 13 is_stmt 1
	.loc 1 190 17 is_stmt 0
	lw	a5,0(s0)
	mv	a3,s3
	mv	a2,s7
	lw	a0,0(a5)
	mv	a1,s6
	call	bl_mtd_read
.LVL159:
	.loc 1 190 16
	beq	a0,zero,.L95
	.loc 1 191 17 is_stmt 1 discriminator 1
	.loc 1 191 55 discriminator 1
	.loc 1 191 60 discriminator 1
	.loc 1 191 63 is_stmt 0 discriminator 1
	lw	a4,%lo(_fsymc_level_hosal)(s2)
	li	a5,4
	bgtu	a4,a5,.L96
	.loc 1 191 126 discriminator 3
	lui	a4,%hi(_fsymf_level_hosalhosal_ota)
	.loc 1 191 105 discriminator 3
	lw	a4,%lo(_fsymf_level_hosalhosal_ota)(a4)
	bgtu	a4,a5,.L96
	.loc 1 191 161 is_stmt 1 discriminator 5
	.loc 1 191 245 is_stmt 0 discriminator 5
	call	xPortIsInsideInterrupt
.LVL160:
	.loc 1 191 161 discriminator 5
	beq	a0,zero,.L97
	.loc 1 191 274 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL161:
.L130:
	.loc 1 191 305 discriminator 8
	mv	a2,a0
	.loc 1 191 161 discriminator 8
	lui	a3,%hi(.LC0)
	lui	a1,%hi(.LC3)
	lui	a0,%hi(.LC18)
	li	a4,191
	addi	a3,a3,%lo(.LC0)
	addi	a1,a1,%lo(.LC3)
	addi	a0,a0,%lo(.LC18)
	call	bl_printk
.LVL162:
.L96:
	.loc 1 191 358 is_stmt 1 discriminator 11
	.loc 1 191 369 discriminator 11
	.loc 1 192 17 discriminator 11
	lw	a5,0(s0)
	lw	a0,0(a5)
	call	bl_mtd_close
.LVL163:
	.loc 1 193 17 discriminator 11
	lw	a0,0(s0)
	call	aos_free
.LVL164:
	.loc 1 194 17 discriminator 11
	.loc 1 195 17 is_stmt 0 discriminator 11
	mv	a0,s3
	.loc 1 194 26 discriminator 11
	sw	zero,0(s0)
	.loc 1 195 17 is_stmt 1 discriminator 11
	call	aos_free
.LVL165:
	.loc 1 196 17 discriminator 11
	.loc 1 196 24 is_stmt 0 discriminator 11
	j	.L135
.L97:
	.loc 1 191 305 discriminator 8
	call	xTaskGetTickCount
.LVL166:
	j	.L130
.L95:
	.loc 1 199 13 is_stmt 1
	mv	a2,s7
	mv	a1,s3
	addi	a0,sp,100
	call	utils_sha256_update
.LVL167:
	.loc 1 200 13
	.loc 1 200 20 is_stmt 0
	add	s6,s6,s7
.LVL168:
	j	.L93
.LVL169:
.L101:
	.loc 1 208 283 discriminator 8
	call	xTaskGetTickCount
.LVL170:
	j	.L131
.L105:
	.loc 1 212 283 discriminator 8
	call	xTaskGetTickCount
.LVL171:
	j	.L132
.L110:
	.loc 1 216 304 discriminator 8
	call	xTaskGetTickCount
.LVL172:
	j	.L133
.L108:
	.loc 1 224 9 is_stmt 1
	addi	a0,sp,100
	call	utils_sha256_free
.LVL173:
.L88:
.LBE14:
	.loc 1 227 5
	.loc 1 228 51 is_stmt 0
	lw	a4,%lo(_fsymc_level_hosal)(s2)
	.loc 1 227 17
	sw	s4,92(sp)
	.loc 1 228 5 is_stmt 1
	.loc 1 228 43
	.loc 1 228 48
	.loc 1 228 51 is_stmt 0
	li	a5,2
	bgtu	a4,a5,.L112
	.loc 1 228 112 discriminator 3
	lui	a4,%hi(_fsymf_level_hosalhosal_ota)
	.loc 1 228 92 discriminator 3
	lw	a4,%lo(_fsymf_level_hosalhosal_ota)(a4)
	bgtu	a4,a5,.L112
	.loc 1 228 147 is_stmt 1 discriminator 5
	.loc 1 228 265 is_stmt 0 discriminator 5
	call	xPortIsInsideInterrupt
.LVL174:
	.loc 1 228 147 discriminator 5
	beq	a0,zero,.L113
	.loc 1 228 294 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL175:
.L134:
	.loc 1 228 147 discriminator 8
	lw	a5,92(sp)
	.loc 1 228 325 discriminator 8
	mv	a2,a0
	.loc 1 228 147 discriminator 8
	lui	a3,%hi(.LC0)
	lui	a1,%hi(.LC1)
	lui	a0,%hi(.LC22)
	li	a4,228
	addi	a3,a3,%lo(.LC0)
	addi	a1,a1,%lo(.LC1)
	addi	a0,a0,%lo(.LC22)
	call	bl_printk
.LVL176:
.L112:
	.loc 1 228 391 is_stmt 1 discriminator 11
	.loc 1 228 402 discriminator 11
	.loc 1 229 5 discriminator 11
	addi	a0,sp,64
	call	hal_boot2_update_ptable
.LVL177:
	.loc 1 230 5 discriminator 11
	lw	a5,0(s0)
	lw	a0,0(a5)
	call	bl_mtd_close
.LVL178:
	.loc 1 231 5 discriminator 11
	lw	a0,0(s0)
	call	aos_free
.LVL179:
	.loc 1 232 5 discriminator 11
	.loc 1 232 14 is_stmt 0 discriminator 11
	sw	zero,0(s0)
	.loc 1 234 5 is_stmt 1 discriminator 11
	.loc 1 234 8 is_stmt 0 discriminator 11
	beq	s5,zero,.L75
	.loc 1 235 9 is_stmt 1
	call	hal_reboot
.LVL180:
	j	.L75
.L113:
	.loc 1 228 325 is_stmt 0 discriminator 8
	call	xTaskGetTickCount
.LVL181:
	j	.L134
	.cfi_endproc
.LFE7:
	.size	hosal_ota_finish, .-hosal_ota_finish
	.section	.rodata.hosal_ota_read.str1.4,"aMS",@progbits,1
	.align	2
.LC23:
	.string	"please start ota first\r\n"
	.align	2
.LC24:
	.string	"parm is error!\r\n"
	.section	.text.hosal_ota_read,"ax",@progbits
	.align	1
	.globl	hosal_ota_read
	.type	hosal_ota_read, @function
hosal_ota_read:
.LFB8:
	.loc 1 242 1 is_stmt 1
	.cfi_startproc
.LVL182:
	.loc 1 243 5
	.loc 1 243 18 is_stmt 0
	lui	a4,%hi(.LANCHOR0)
	lw	a4,%lo(.LANCHOR0)(a4)
	.loc 1 242 1
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 243 8
	bne	a4,zero,.L138
	.loc 1 244 9 is_stmt 1
	lui	a0,%hi(.LC23)
.LVL183:
	addi	a0,a0,%lo(.LC23)
.LVL184:
.L146:
	.loc 1 249 9 is_stmt 0
	call	printf
.LVL185:
	.loc 1 250 9 is_stmt 1
	.loc 1 254 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	li	a0,-1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL186:
.L138:
	.cfi_restore_state
	mv	a3,a1
	.loc 1 248 5 is_stmt 1
	.loc 1 248 8 is_stmt 0
	beq	a1,zero,.L140
	.loc 1 248 22 discriminator 1
	lw	a6,4(a4)
	.loc 1 248 34 discriminator 1
	add	a1,a0,a2
.LVL187:
	.loc 1 248 22 discriminator 1
	bgtu	a1,a6,.L140
	.loc 1 248 68 discriminator 2
	bne	a2,zero,.L141
.L140:
	.loc 1 249 9 is_stmt 1
	lui	a0,%hi(.LC24)
.LVL188:
	addi	a0,a0,%lo(.LC24)
	j	.L146
.LVL189:
.L141:
	.loc 1 253 5
	.loc 1 254 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 253 12
	mv	a1,a0
	lw	a0,0(a4)
.LVL190:
	.loc 1 254 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 253 12
	tail	bl_mtd_read
.LVL191:
	.cfi_endproc
.LFE8:
	.size	hosal_ota_read, .-hosal_ota_read
	.globl	_fsymf_info_hosalhosal_ota
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	2
.LC25:
	.string	"hosal.hosal_ota"
	.comm	_fsymf_level_hosalhosal_ota,4,4
	.align	2
.LC26:
	.string	"hosal"
	.weak	_fsymc_level_hosal
	.section	.sbss._fsymc_level_hosal,"aw",@nobits
	.align	2
	.type	_fsymc_level_hosal, @object
	.size	_fsymc_level_hosal, 4
_fsymc_level_hosal:
	.zero	4
	.section	.sbss.ota_parm,"aw",@nobits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	ota_parm, @object
	.size	ota_parm, 4
ota_parm:
	.zero	4
	.section	.srodata.BLOG_HARD_DECLARE_DISABLE,"a"
	.align	2
	.type	BLOG_HARD_DECLARE_DISABLE, @object
	.size	BLOG_HARD_DECLARE_DISABLE, 4
BLOG_HARD_DECLARE_DISABLE:
	.zero	4
	.section	.static_blogcomponent_code.hosal,"a"
	.align	2
	.type	_fsymc_info_hosal, @object
	.size	_fsymc_info_hosal, 8
_fsymc_info_hosal:
	.word	_fsymc_level_hosal
	.word	.LC26
	.section	.static_blogfile_code.hosalhosal_ota,"a"
	.align	2
	.type	_fsymf_info_hosalhosal_ota, @object
	.size	_fsymf_info_hosalhosal_ota, 8
_fsymf_info_hosalhosal_ota:
	.word	_fsymf_level_hosalhosal_ota
	.word	.LC25
	.text
.Letext0:
	.file 2 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 3 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 4 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/bl602_hal/hal_boot2.h"
	.file 5 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/utils/include/utils_sha256.h"
	.file 6 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/sys/blmtd/include/bl_mtd.h"
	.file 7 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/blog/blog_type.h"
	.file 8 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/blog/blog.h"
	.file 9 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h"
	.file 10 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/utils/include/utils_log.h"
	.file 11 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/yloop/include/aos/kernel.h"
	.file 12 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h"
	.file 13 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
	.file 14 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h"
	.file 15 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/bl602_hal/hal_sys.h"
	.file 16 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xeb2
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF92
	.byte	0xc
	.4byte	.LASF93
	.4byte	.LASF94
	.4byte	.Ldebug_ranges0+0x48
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.byte	0x3
	.4byte	.LASF5
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
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF4
	.byte	0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0x4f
	.byte	0x1b
	.4byte	0x60
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.byte	0x5
	.byte	0x4
	.byte	0x6
	.byte	0x4
	.4byte	0x8b
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF11
	.byte	0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x18
	.byte	0x13
	.4byte	0x2c
	.byte	0x3
	.4byte	.LASF13
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x54
	.byte	0x7
	.4byte	0x9e
	.byte	0x6
	.byte	0x4
	.4byte	0x92
	.byte	0x8
	.byte	0x24
	.byte	0x4
	.byte	0x9
	.byte	0x9
	.4byte	0x127
	.byte	0x9
	.4byte	.LASF14
	.byte	0x4
	.byte	0xa
	.byte	0xd
	.4byte	0x92
	.byte	0
	.byte	0x9
	.4byte	.LASF15
	.byte	0x4
	.byte	0xb
	.byte	0xd
	.4byte	0x92
	.byte	0x1
	.byte	0x9
	.4byte	.LASF16
	.byte	0x4
	.byte	0xc
	.byte	0xd
	.4byte	0x92
	.byte	0x2
	.byte	0x9
	.4byte	.LASF17
	.byte	0x4
	.byte	0xd
	.byte	0xd
	.4byte	0x127
	.byte	0x3
	.byte	0x9
	.4byte	.LASF18
	.byte	0x4
	.byte	0xe
	.byte	0xe
	.4byte	0x137
	.byte	0xc
	.byte	0x9
	.4byte	.LASF19
	.byte	0x4
	.byte	0xf
	.byte	0xe
	.4byte	0x137
	.byte	0x14
	.byte	0xa
	.string	"len"
	.byte	0x4
	.byte	0x10
	.byte	0xe
	.4byte	0x9e
	.byte	0x1c
	.byte	0xa
	.string	"age"
	.byte	0x4
	.byte	0x11
	.byte	0xe
	.4byte	0x9e
	.byte	0x20
	.byte	0
	.byte	0xb
	.4byte	0x92
	.4byte	0x137
	.byte	0xc
	.4byte	0x7c
	.byte	0x8
	.byte	0
	.byte	0xb
	.4byte	0x9e
	.4byte	0x147
	.byte	0xc
	.4byte	0x7c
	.byte	0x1
	.byte	0
	.byte	0x3
	.4byte	.LASF20
	.byte	0x4
	.byte	0x12
	.byte	0x3
	.4byte	0xb5
	.byte	0x8
	.byte	0x6c
	.byte	0x5
	.byte	0x15
	.byte	0x9
	.4byte	0x191
	.byte	0x9
	.4byte	.LASF21
	.byte	0x5
	.byte	0x16
	.byte	0xe
	.4byte	0x137
	.byte	0
	.byte	0x9
	.4byte	.LASF22
	.byte	0x5
	.byte	0x17
	.byte	0xe
	.4byte	0x191
	.byte	0x8
	.byte	0x9
	.4byte	.LASF23
	.byte	0x5
	.byte	0x18
	.byte	0x13
	.4byte	0x1a1
	.byte	0x28
	.byte	0x9
	.4byte	.LASF24
	.byte	0x5
	.byte	0x19
	.byte	0x9
	.4byte	0x75
	.byte	0x68
	.byte	0
	.byte	0xb
	.4byte	0x9e
	.4byte	0x1a1
	.byte	0xc
	.4byte	0x7c
	.byte	0x7
	.byte	0
	.byte	0xb
	.4byte	0x38
	.4byte	0x1b1
	.byte	0xc
	.4byte	0x7c
	.byte	0x3f
	.byte	0
	.byte	0x3
	.4byte	.LASF25
	.byte	0x5
	.byte	0x1a
	.byte	0x3
	.4byte	0x153
	.byte	0x3
	.4byte	.LASF26
	.byte	0x6
	.byte	0x5
	.byte	0xf
	.4byte	0x83
	.byte	0xd
	.4byte	.LASF95
	.byte	0x7
	.byte	0x4
	.4byte	0x7c
	.byte	0x7
	.byte	0x22
	.byte	0xe
	.4byte	0x206
	.byte	0xe
	.4byte	.LASF27
	.byte	0
	.byte	0xe
	.4byte	.LASF28
	.byte	0x1
	.byte	0xe
	.4byte	.LASF29
	.byte	0x2
	.byte	0xe
	.4byte	.LASF30
	.byte	0x3
	.byte	0xe
	.4byte	.LASF31
	.byte	0x4
	.byte	0xe
	.4byte	.LASF32
	.byte	0x5
	.byte	0xe
	.4byte	.LASF33
	.byte	0x6
	.byte	0
	.byte	0x3
	.4byte	.LASF34
	.byte	0x7
	.byte	0x2a
	.byte	0x3
	.4byte	0x1c9
	.byte	0xf
	.4byte	.LASF42
	.byte	0x8
	.byte	0x7
	.byte	0x2c
	.byte	0x10
	.4byte	0x23a
	.byte	0x9
	.4byte	.LASF35
	.byte	0x7
	.byte	0x2d
	.byte	0x13
	.4byte	0x23a
	.byte	0
	.byte	0x9
	.4byte	.LASF17
	.byte	0x7
	.byte	0x2e
	.byte	0xb
	.4byte	0x85
	.byte	0x4
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x206
	.byte	0x3
	.4byte	.LASF36
	.byte	0x7
	.byte	0x2f
	.byte	0x3
	.4byte	0x212
	.byte	0x7
	.4byte	0x240
	.byte	0x10
	.4byte	.LASF37
	.byte	0x8
	.byte	0x38
	.byte	0x1b
	.4byte	0xaa
	.byte	0x5
	.byte	0x3
	.4byte	BLOG_HARD_DECLARE_DISABLE
	.byte	0x11
	.4byte	.LASF39
	.byte	0x8
	.byte	0x45
	.byte	0x12
	.4byte	0x206
	.byte	0x5
	.byte	0x3
	.4byte	_fsymc_level_hosal
	.byte	0x10
	.4byte	.LASF38
	.byte	0x8
	.byte	0x46
	.byte	0x1e
	.4byte	0x24c
	.byte	0x5
	.byte	0x3
	.4byte	_fsymc_info_hosal
	.byte	0x11
	.4byte	.LASF40
	.byte	0x8
	.byte	0x53
	.byte	0x12
	.4byte	0x206
	.byte	0x5
	.byte	0x3
	.4byte	_fsymf_level_hosalhosal_ota
	.byte	0x11
	.4byte	.LASF41
	.byte	0x8
	.byte	0x54
	.byte	0x17
	.4byte	0x24c
	.byte	0x5
	.byte	0x3
	.4byte	_fsymf_info_hosalhosal_ota
	.byte	0xf
	.4byte	.LASF43
	.byte	0x28
	.byte	0x1
	.byte	0xb
	.byte	0x10
	.4byte	0x2e0
	.byte	0x9
	.4byte	.LASF44
	.byte	0x1
	.byte	0xd
	.byte	0x15
	.4byte	0x1bd
	.byte	0
	.byte	0x9
	.4byte	.LASF45
	.byte	0x1
	.byte	0xe
	.byte	0xe
	.4byte	0x9e
	.byte	0x4
	.byte	0x9
	.4byte	.LASF46
	.byte	0x1
	.byte	0xf
	.byte	0xe
	.4byte	0x191
	.byte	0x8
	.byte	0
	.byte	0x3
	.4byte	.LASF47
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.4byte	0x2ab
	.byte	0x10
	.4byte	.LASF48
	.byte	0x1
	.byte	0x12
	.byte	0x1a
	.4byte	0x2fe
	.byte	0x5
	.byte	0x3
	.4byte	ota_parm
	.byte	0x6
	.byte	0x4
	.4byte	0x2e0
	.byte	0x12
	.4byte	.LASF51
	.byte	0x1
	.byte	0xf1
	.byte	0x5
	.4byte	0x75
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0x369
	.byte	0x13
	.4byte	.LASF49
	.byte	0x1
	.byte	0xf1
	.byte	0x1d
	.4byte	0x9e
	.4byte	.LLST22
	.byte	0x14
	.string	"buf"
	.byte	0x1
	.byte	0xf1
	.byte	0x2e
	.4byte	0xaf
	.4byte	.LLST23
	.byte	0x13
	.4byte	.LASF50
	.byte	0x1
	.byte	0xf1
	.byte	0x3c
	.4byte	0x9e
	.4byte	.LLST24
	.byte	0x15
	.4byte	.LVL185
	.4byte	0xd92
	.byte	0x16
	.4byte	.LVL191
	.4byte	0xd9e
	.byte	0x17
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0
	.byte	0x12
	.4byte	.LASF52
	.byte	0x1
	.byte	0x89
	.byte	0x5
	.4byte	0x75
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.4byte	0x8e2
	.byte	0x13
	.4byte	.LASF53
	.byte	0x1
	.byte	0x89
	.byte	0x1e
	.4byte	0x92
	.4byte	.LLST16
	.byte	0x13
	.4byte	.LASF54
	.byte	0x1
	.byte	0x89
	.byte	0x32
	.4byte	0x92
	.4byte	.LLST17
	.byte	0x10
	.4byte	.LASF55
	.byte	0x1
	.byte	0x8f
	.byte	0xe
	.4byte	0x9e
	.byte	0x1
	.byte	0x64
	.byte	0x10
	.4byte	.LASF56
	.byte	0x1
	.byte	0x90
	.byte	0x1f
	.4byte	0x147
	.byte	0x3
	.byte	0x91
	.byte	0xb0,0x7e
	.byte	0x18
	.4byte	.Ldebug_ranges0+0x28
	.4byte	0x77a
	.byte	0x10
	.4byte	.LASF57
	.byte	0x1
	.byte	0xa6
	.byte	0x11
	.4byte	0x8e2
	.byte	0x3
	.byte	0x91
	.byte	0xf0,0x7d
	.byte	0x10
	.4byte	.LASF58
	.byte	0x1
	.byte	0xa7
	.byte	0x11
	.4byte	0x8e2
	.byte	0x3
	.byte	0x91
	.byte	0x90,0x7e
	.byte	0x19
	.4byte	.LASF59
	.byte	0x1
	.byte	0xa8
	.byte	0x12
	.4byte	0x9e
	.4byte	.LLST18
	.byte	0x10
	.4byte	.LASF60
	.byte	0x1
	.byte	0xa9
	.byte	0x1c
	.4byte	0x1b1
	.byte	0x3
	.byte	0x91
	.byte	0xd4,0x7e
	.byte	0x1a
	.string	"i"
	.byte	0x1
	.byte	0xaa
	.byte	0xd
	.4byte	0x75
	.4byte	.LLST19
	.byte	0x19
	.4byte	.LASF49
	.byte	0x1
	.byte	0xaa
	.byte	0x10
	.4byte	0x75
	.4byte	.LLST20
	.byte	0x19
	.4byte	.LASF61
	.byte	0x1
	.byte	0xab
	.byte	0x12
	.4byte	0xaf
	.4byte	.LLST21
	.byte	0x15
	.4byte	.LVL95
	.4byte	0xdaa
	.byte	0x1b
	.4byte	.LVL115
	.4byte	0xdb6
	.4byte	0x460
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xf4,0x7d
	.byte	0x17
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x17
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x4c
	.byte	0
	.byte	0x1b
	.4byte	.LVL116
	.4byte	0xdb6
	.4byte	0x47f
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0x94,0x7e
	.byte	0x17
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x17
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x4c
	.byte	0
	.byte	0x1b
	.4byte	.LVL117
	.4byte	0xdc1
	.4byte	0x494
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xa
	.2byte	0x200
	.byte	0
	.byte	0x15
	.4byte	.LVL120
	.4byte	0xdce
	.byte	0x15
	.4byte	.LVL121
	.4byte	0xdda
	.byte	0x15
	.4byte	.LVL122
	.4byte	0xde7
	.byte	0x15
	.4byte	.LVL123
	.4byte	0xdf3
	.byte	0x15
	.4byte	.LVL127
	.4byte	0xe00
	.byte	0x1b
	.4byte	.LVL130
	.4byte	0xe0d
	.4byte	0x4d6
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xd4,0x7e
	.byte	0
	.byte	0x1b
	.4byte	.LVL131
	.4byte	0xe19
	.4byte	0x4eb
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xd4,0x7e
	.byte	0
	.byte	0x1b
	.4byte	.LVL132
	.4byte	0xe25
	.4byte	0x50a
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
	.byte	0x17
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0x1b
	.4byte	.LVL133
	.4byte	0xe25
	.4byte	0x52a
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0x90,0x7e
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
	.byte	0x20
	.byte	0
	.byte	0x1b
	.4byte	.LVL135
	.4byte	0xe31
	.4byte	0x545
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xd4,0x7e
	.byte	0x17
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0
	.byte	0x1b
	.4byte	.LVL136
	.4byte	0xdda
	.4byte	0x559
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0
	.byte	0x1b
	.4byte	.LVL138
	.4byte	0xd9e
	.4byte	0x57a
	.byte	0x17
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x86
	.byte	0
	.byte	0x17
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0x17
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0x91
	.byte	0x90,0x7e
	.byte	0
	.byte	0x15
	.4byte	.LVL140
	.4byte	0xde7
	.byte	0x15
	.4byte	.LVL141
	.4byte	0xdf3
	.byte	0x1b
	.4byte	.LVL142
	.4byte	0xdaa
	.4byte	0x5bb
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC19
	.byte	0x17
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x17
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x17
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0xd0
	.byte	0
	.byte	0x1b
	.4byte	.LVL144
	.4byte	0xe3d
	.4byte	0x5d2
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC20
	.byte	0
	.byte	0x15
	.4byte	.LVL146
	.4byte	0xde7
	.byte	0x15
	.4byte	.LVL147
	.4byte	0xdf3
	.byte	0x1b
	.4byte	.LVL148
	.4byte	0xdaa
	.4byte	0x613
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC19
	.byte	0x17
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x17
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x17
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0xd4
	.byte	0
	.byte	0x1b
	.4byte	.LVL150
	.4byte	0xe49
	.4byte	0x634
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0x17
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0x90,0x7e
	.byte	0x17
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x87
	.byte	0
	.byte	0
	.byte	0x15
	.4byte	.LVL151
	.4byte	0xde7
	.byte	0x15
	.4byte	.LVL152
	.4byte	0xdf3
	.byte	0x1b
	.4byte	.LVL153
	.4byte	0xdaa
	.4byte	0x675
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC21
	.byte	0x17
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0x17
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x17
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0xd8
	.byte	0
	.byte	0x15
	.4byte	.LVL154
	.4byte	0xdce
	.byte	0x15
	.4byte	.LVL155
	.4byte	0xdda
	.byte	0x1b
	.4byte	.LVL156
	.4byte	0xe55
	.4byte	0x69c
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xd4,0x7e
	.byte	0
	.byte	0x1b
	.4byte	.LVL159
	.4byte	0xd9e
	.4byte	0x6bc
	.byte	0x17
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x86
	.byte	0
	.byte	0x17
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x87
	.byte	0
	.byte	0x17
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0
	.byte	0x15
	.4byte	.LVL160
	.4byte	0xde7
	.byte	0x15
	.4byte	.LVL161
	.4byte	0xdf3
	.byte	0x1b
	.4byte	.LVL162
	.4byte	0xdaa
	.4byte	0x6fd
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC18
	.byte	0x17
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0x17
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x17
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0xbf
	.byte	0
	.byte	0x15
	.4byte	.LVL163
	.4byte	0xdce
	.byte	0x15
	.4byte	.LVL164
	.4byte	0xdda
	.byte	0x1b
	.4byte	.LVL165
	.4byte	0xdda
	.4byte	0x723
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0
	.byte	0x15
	.4byte	.LVL166
	.4byte	0xe00
	.byte	0x1b
	.4byte	.LVL167
	.4byte	0xe61
	.4byte	0x74d
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xd4,0x7e
	.byte	0x17
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x17
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x87
	.byte	0
	.byte	0
	.byte	0x15
	.4byte	.LVL170
	.4byte	0xe00
	.byte	0x15
	.4byte	.LVL171
	.4byte	0xe00
	.byte	0x15
	.4byte	.LVL172
	.4byte	0xe00
	.byte	0x1c
	.4byte	.LVL173
	.4byte	0xe55
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xd4,0x7e
	.byte	0
	.byte	0
	.byte	0x15
	.4byte	.LVL93
	.4byte	0xde7
	.byte	0x15
	.4byte	.LVL94
	.4byte	0xdf3
	.byte	0x15
	.4byte	.LVL96
	.4byte	0xe00
	.byte	0x15
	.4byte	.LVL99
	.4byte	0xdce
	.byte	0x15
	.4byte	.LVL100
	.4byte	0xdda
	.byte	0x1b
	.4byte	.LVL104
	.4byte	0xe6d
	.4byte	0x7c1
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0x17
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0xb0,0x7e
	.byte	0
	.byte	0x15
	.4byte	.LVL106
	.4byte	0xde7
	.byte	0x15
	.4byte	.LVL107
	.4byte	0xdf3
	.byte	0x1b
	.4byte	.LVL108
	.4byte	0xdaa
	.4byte	0x802
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0x17
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0x17
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x17
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0x9c
	.byte	0
	.byte	0x15
	.4byte	.LVL109
	.4byte	0xdce
	.byte	0x15
	.4byte	.LVL110
	.4byte	0xdda
	.byte	0x15
	.4byte	.LVL111
	.4byte	0xe00
	.byte	0x15
	.4byte	.LVL112
	.4byte	0xde7
	.byte	0x15
	.4byte	.LVL113
	.4byte	0xdf3
	.byte	0x1b
	.4byte	.LVL114
	.4byte	0xdaa
	.4byte	0x85e
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC16
	.byte	0x17
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x17
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x17
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0xa2
	.byte	0
	.byte	0x15
	.4byte	.LVL125
	.4byte	0xe00
	.byte	0x15
	.4byte	.LVL174
	.4byte	0xde7
	.byte	0x15
	.4byte	.LVL175
	.4byte	0xdf3
	.byte	0x1b
	.4byte	.LVL176
	.4byte	0xdaa
	.4byte	0x8a8
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC22
	.byte	0x17
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x17
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x17
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0xe4
	.byte	0
	.byte	0x1b
	.4byte	.LVL177
	.4byte	0xe79
	.4byte	0x8bd
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xb0,0x7e
	.byte	0
	.byte	0x15
	.4byte	.LVL178
	.4byte	0xdce
	.byte	0x15
	.4byte	.LVL179
	.4byte	0xdda
	.byte	0x15
	.4byte	.LVL180
	.4byte	0xe85
	.byte	0x15
	.4byte	.LVL181
	.4byte	0xe00
	.byte	0
	.byte	0xb
	.4byte	0x92
	.4byte	0x8f2
	.byte	0xc
	.4byte	0x7c
	.byte	0x1f
	.byte	0
	.byte	0x12
	.4byte	.LASF62
	.byte	0x1
	.byte	0x6c
	.byte	0x5
	.4byte	0x75
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0xaba
	.byte	0x13
	.4byte	.LASF63
	.byte	0x1
	.byte	0x6c
	.byte	0x1f
	.4byte	0x9e
	.4byte	.LLST4
	.byte	0x13
	.4byte	.LASF49
	.byte	0x1
	.byte	0x6c
	.byte	0x32
	.4byte	0x9e
	.4byte	.LLST5
	.byte	0x14
	.string	"buf"
	.byte	0x1
	.byte	0x6c
	.byte	0x43
	.4byte	0xaf
	.4byte	.LLST6
	.byte	0x13
	.4byte	.LASF50
	.byte	0x1
	.byte	0x6c
	.byte	0x51
	.4byte	0x9e
	.4byte	.LLST7
	.byte	0x19
	.4byte	.LASF45
	.byte	0x1
	.byte	0x6e
	.byte	0xe
	.4byte	0x9e
	.4byte	.LLST8
	.byte	0x1a
	.string	"ret"
	.byte	0x1
	.byte	0x6e
	.byte	0x19
	.4byte	0x9e
	.4byte	.LLST9
	.byte	0x1d
	.4byte	0xd38
	.4byte	.LBB4
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x7a
	.byte	0xb
	.4byte	0xa24
	.byte	0x1e
	.4byte	0xd55
	.4byte	.LLST10
	.byte	0x1e
	.4byte	0xd49
	.4byte	.LLST11
	.byte	0x1f
	.4byte	.Ldebug_ranges0+0
	.byte	0x20
	.4byte	0xd61
	.4byte	.LLST12
	.byte	0x20
	.4byte	0xd6d
	.4byte	.LLST13
	.byte	0x20
	.4byte	0xd79
	.4byte	.LLST14
	.byte	0x20
	.4byte	0xd85
	.4byte	.LLST15
	.byte	0x1b
	.4byte	.LVL74
	.4byte	0xe91
	.4byte	0x9d8
	.byte	0x17
	.byte	0x1
	.byte	0x5b
	.byte	0x4
	.byte	0x78
	.byte	0
	.byte	0x3c
	.byte	0x24
	.byte	0x17
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xa
	.2byte	0x1000
	.byte	0
	.byte	0x15
	.4byte	.LVL76
	.4byte	0xde7
	.byte	0x15
	.4byte	.LVL77
	.4byte	0xdf3
	.byte	0x1b
	.4byte	.LVL80
	.4byte	0xdaa
	.4byte	0xa19
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC13
	.byte	0x17
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0x17
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x17
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0x15
	.4byte	.LVL84
	.4byte	0xe00
	.byte	0
	.byte	0
	.byte	0x15
	.4byte	.LVL54
	.4byte	0xde7
	.byte	0x15
	.4byte	.LVL55
	.4byte	0xdf3
	.byte	0x15
	.4byte	.LVL56
	.4byte	0xdaa
	.byte	0x15
	.4byte	.LVL57
	.4byte	0xe00
	.byte	0x15
	.4byte	.LVL61
	.4byte	0xde7
	.byte	0x15
	.4byte	.LVL62
	.4byte	0xdf3
	.byte	0x15
	.4byte	.LVL63
	.4byte	0xe00
	.byte	0x1b
	.4byte	.LVL70
	.4byte	0xe9d
	.4byte	0xa83
	.byte	0x17
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x17
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0x17
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x87
	.byte	0
	.byte	0
	.byte	0x15
	.4byte	.LVL71
	.4byte	0xde7
	.byte	0x15
	.4byte	.LVL72
	.4byte	0xdf3
	.byte	0x15
	.4byte	.LVL81
	.4byte	0xde7
	.byte	0x15
	.4byte	.LVL82
	.4byte	0xdf3
	.byte	0x15
	.4byte	.LVL89
	.4byte	0xe00
	.byte	0x15
	.4byte	.LVL91
	.4byte	0xe00
	.byte	0
	.byte	0x12
	.4byte	.LASF64
	.byte	0x1
	.byte	0x2a
	.byte	0x5
	.4byte	0x75
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0xd38
	.byte	0x13
	.4byte	.LASF45
	.byte	0x1
	.byte	0x2a
	.byte	0x1e
	.4byte	0x9e
	.4byte	.LLST0
	.byte	0x1a
	.string	"ret"
	.byte	0x1
	.byte	0x2c
	.byte	0x9
	.4byte	0x75
	.4byte	.LLST1
	.byte	0x19
	.4byte	.LASF55
	.byte	0x1
	.byte	0x2d
	.byte	0xe
	.4byte	0x9e
	.4byte	.LLST2
	.byte	0x19
	.4byte	.LASF65
	.byte	0x1
	.byte	0x2d
	.byte	0x18
	.4byte	0x9e
	.4byte	.LLST3
	.byte	0x10
	.4byte	.LASF56
	.byte	0x1
	.byte	0x2e
	.byte	0x1f
	.4byte	0x147
	.byte	0x3
	.byte	0x91
	.byte	0xbc,0x7f
	.byte	0x15
	.4byte	.LVL3
	.4byte	0xde7
	.byte	0x15
	.4byte	.LVL4
	.4byte	0xdf3
	.byte	0x1b
	.4byte	.LVL5
	.4byte	0xdaa
	.4byte	0xb65
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0x17
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x17
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x17
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0x31
	.byte	0
	.byte	0x15
	.4byte	.LVL6
	.4byte	0xe00
	.byte	0x1b
	.4byte	.LVL9
	.4byte	0xdc1
	.4byte	0xb82
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x28
	.byte	0
	.byte	0x15
	.4byte	.LVL10
	.4byte	0xde7
	.byte	0x15
	.4byte	.LVL11
	.4byte	0xdf3
	.byte	0x15
	.4byte	.LVL12
	.4byte	0xdaa
	.byte	0x15
	.4byte	.LVL13
	.4byte	0xe00
	.byte	0x1b
	.4byte	.LVL14
	.4byte	0xe25
	.4byte	0xbbf
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
	.byte	0x28
	.byte	0
	.byte	0x1b
	.4byte	.LVL15
	.4byte	0xea9
	.4byte	0xbdb
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0x17
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x15
	.4byte	.LVL17
	.4byte	0xdda
	.byte	0x15
	.4byte	.LVL18
	.4byte	0xde7
	.byte	0x15
	.4byte	.LVL19
	.4byte	0xdf3
	.byte	0x15
	.4byte	.LVL20
	.4byte	0xe00
	.byte	0x1b
	.4byte	.LVL22
	.4byte	0xe6d
	.4byte	0xc14
	.byte	0x17
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0xbc,0x7f
	.byte	0
	.byte	0x15
	.4byte	.LVL23
	.4byte	0xdce
	.byte	0x15
	.4byte	.LVL24
	.4byte	0xdda
	.byte	0x15
	.4byte	.LVL25
	.4byte	0xde7
	.byte	0x15
	.4byte	.LVL26
	.4byte	0xdf3
	.byte	0x15
	.4byte	.LVL27
	.4byte	0xe00
	.byte	0x15
	.4byte	.LVL31
	.4byte	0xde7
	.byte	0x15
	.4byte	.LVL32
	.4byte	0xdf3
	.byte	0x1b
	.4byte	.LVL33
	.4byte	0xdaa
	.4byte	0xc82
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC8
	.byte	0x17
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0x17
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x17
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0x52
	.byte	0
	.byte	0x15
	.4byte	.LVL34
	.4byte	0xdce
	.byte	0x15
	.4byte	.LVL35
	.4byte	0xdda
	.byte	0x15
	.4byte	.LVL36
	.4byte	0xe00
	.byte	0x15
	.4byte	.LVL39
	.4byte	0xde7
	.byte	0x15
	.4byte	.LVL40
	.4byte	0xdf3
	.byte	0x1b
	.4byte	.LVL43
	.4byte	0xdaa
	.4byte	0xcde
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0x17
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x17
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x17
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0x59
	.byte	0
	.byte	0x15
	.4byte	.LVL44
	.4byte	0xde7
	.byte	0x15
	.4byte	.LVL45
	.4byte	0xdf3
	.byte	0x1b
	.4byte	.LVL46
	.4byte	0xdaa
	.4byte	0xd25
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC10
	.byte	0x17
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x17
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x17
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0x5a
	.byte	0x17
	.byte	0x1
	.byte	0x60
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0
	.byte	0x15
	.4byte	.LVL48
	.4byte	0xe00
	.byte	0x15
	.4byte	.LVL50
	.4byte	0xe00
	.byte	0
	.byte	0x21
	.4byte	.LASF96
	.byte	0x1
	.byte	0x14
	.byte	0xc
	.4byte	0x75
	.byte	0x1
	.4byte	0xd92
	.byte	0x22
	.4byte	.LASF49
	.byte	0x1
	.byte	0x14
	.byte	0x25
	.4byte	0x9e
	.byte	0x23
	.string	"len"
	.byte	0x1
	.byte	0x14
	.byte	0x36
	.4byte	0x9e
	.byte	0x24
	.4byte	.LASF66
	.byte	0x1
	.byte	0x16
	.byte	0xe
	.4byte	0x9e
	.byte	0x24
	.4byte	.LASF67
	.byte	0x1
	.byte	0x16
	.byte	0x1b
	.4byte	0x9e
	.byte	0x24
	.4byte	.LASF68
	.byte	0x1
	.byte	0x16
	.byte	0x26
	.4byte	0x9e
	.byte	0x25
	.string	"ret"
	.byte	0x1
	.byte	0x17
	.byte	0x9
	.4byte	0x75
	.byte	0
	.byte	0x26
	.4byte	.LASF69
	.4byte	.LASF69
	.byte	0x9
	.byte	0xc8
	.byte	0x5
	.byte	0x26
	.4byte	.LASF70
	.4byte	.LASF70
	.byte	0x6
	.byte	0x17
	.byte	0x5
	.byte	0x26
	.4byte	.LASF71
	.4byte	.LASF71
	.byte	0xa
	.byte	0x81
	.byte	0x6
	.byte	0x27
	.4byte	.LASF80
	.4byte	.LASF97
	.byte	0x10
	.byte	0
	.byte	0x28
	.4byte	.LASF72
	.4byte	.LASF72
	.byte	0xb
	.2byte	0x1bf
	.byte	0xb
	.byte	0x26
	.4byte	.LASF73
	.4byte	.LASF73
	.byte	0x6
	.byte	0x12
	.byte	0x5
	.byte	0x28
	.4byte	.LASF74
	.4byte	.LASF74
	.byte	0xb
	.2byte	0x1e1
	.byte	0xa
	.byte	0x26
	.4byte	.LASF75
	.4byte	.LASF75
	.byte	0xc
	.byte	0x98
	.byte	0xc
	.byte	0x28
	.4byte	.LASF76
	.4byte	.LASF76
	.byte	0xd
	.2byte	0x558
	.byte	0xc
	.byte	0x28
	.4byte	.LASF77
	.4byte	.LASF77
	.byte	0xd
	.2byte	0x547
	.byte	0xc
	.byte	0x26
	.4byte	.LASF78
	.4byte	.LASF78
	.byte	0x5
	.byte	0x26
	.byte	0x6
	.byte	0x26
	.4byte	.LASF79
	.4byte	.LASF79
	.byte	0x5
	.byte	0x3d
	.byte	0x6
	.byte	0x26
	.4byte	.LASF80
	.4byte	.LASF80
	.byte	0xe
	.byte	0x21
	.byte	0x8
	.byte	0x26
	.4byte	.LASF81
	.4byte	.LASF81
	.byte	0x5
	.byte	0x4e
	.byte	0x6
	.byte	0x26
	.4byte	.LASF82
	.4byte	.LASF82
	.byte	0x9
	.byte	0xdd
	.byte	0x5
	.byte	0x26
	.4byte	.LASF83
	.4byte	.LASF83
	.byte	0xe
	.byte	0x1e
	.byte	0x5
	.byte	0x26
	.4byte	.LASF84
	.4byte	.LASF84
	.byte	0x5
	.byte	0x2d
	.byte	0x6
	.byte	0x26
	.4byte	.LASF85
	.4byte	.LASF85
	.byte	0x5
	.byte	0x46
	.byte	0x6
	.byte	0x26
	.4byte	.LASF86
	.4byte	.LASF86
	.byte	0x4
	.byte	0x34
	.byte	0x5
	.byte	0x26
	.4byte	.LASF87
	.4byte	.LASF87
	.byte	0x4
	.byte	0x35
	.byte	0x5
	.byte	0x26
	.4byte	.LASF88
	.4byte	.LASF88
	.byte	0xf
	.byte	0x3
	.byte	0x6
	.byte	0x26
	.4byte	.LASF89
	.4byte	.LASF89
	.byte	0x6
	.byte	0x14
	.byte	0x5
	.byte	0x26
	.4byte	.LASF90
	.4byte	.LASF90
	.byte	0x6
	.byte	0x16
	.byte	0x5
	.byte	0x26
	.4byte	.LASF91
	.4byte	.LASF91
	.byte	0x6
	.byte	0x11
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
	.byte	0x26
	.byte	0
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
	.byte	0xb
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xc
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
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
	.byte	0x14
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
	.byte	0x95,0x42
	.byte	0x19
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
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x19
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
	.byte	0x1a
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
	.byte	0x1b
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
	.byte	0x1c
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1d
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
	.byte	0x1e
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x1f
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x20
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x21
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
	.byte	0
	.byte	0
	.byte	0x23
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
	.byte	0x24
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
	.byte	0x25
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
	.byte	0x26
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
.LLST22:
	.4byte	.LVL182
	.4byte	.LVL183
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL183
	.4byte	.LVL186
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL186
	.4byte	.LVL188
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL188
	.4byte	.LVL189
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL189
	.4byte	.LVL190
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL190
	.4byte	.LVL191-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL191-1
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL182
	.4byte	.LVL184
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL184
	.4byte	.LVL186
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL186
	.4byte	.LVL187
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL187
	.4byte	.LVL191-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL191-1
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL182
	.4byte	.LVL185-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL185-1
	.4byte	.LVL186
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL186
	.4byte	.LVL191-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL191-1
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL92
	.4byte	.LVL93-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL93-1
	.4byte	.LVL97
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL97
	.4byte	.LVL98
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL98
	.4byte	.LVL101
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL101
	.4byte	.LVL102
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL102
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL92
	.4byte	.LVL93-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL93-1
	.4byte	.LVL97
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL97
	.4byte	.LVL99-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL99-1
	.4byte	.LVL101
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL101
	.4byte	.LVL103
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL103
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL158
	.4byte	.LVL169
	.2byte	0x1
	.byte	0x67
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL138
	.4byte	.LVL139
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL139
	.4byte	.LVL144
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL144
	.4byte	.LVL145
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL145
	.4byte	.LVL157
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL169
	.4byte	.LVL173
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL116
	.4byte	.LVL124
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL126
	.4byte	.LVL134
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL167
	.4byte	.LVL168
	.2byte	0x6
	.byte	0x86
	.byte	0
	.byte	0x87
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL168
	.4byte	.LVL169
	.2byte	0x1
	.byte	0x66
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL118
	.4byte	.LVL119
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL119
	.4byte	.LVL124
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL126
	.4byte	.LVL128
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL128
	.4byte	.LVL129
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL129
	.4byte	.LVL137
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL157
	.4byte	.LVL169
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL53
	.4byte	.LVL54-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL54-1
	.4byte	.LVL58
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL58
	.4byte	.LVL61-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL61-1
	.4byte	.LVL64
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL64
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL68
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL53
	.4byte	.LVL54-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL54-1
	.4byte	.LVL58
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL58
	.4byte	.LVL61-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL61-1
	.4byte	.LVL64
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL64
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL68
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL75
	.4byte	.LVL85
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL85
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL88
	.4byte	.LVL90
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL90
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL53
	.4byte	.LVL54-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL54-1
	.4byte	.LVL58
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL58
	.4byte	.LVL61-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL61-1
	.4byte	.LVL64
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL64
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL68
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x67
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL53
	.4byte	.LVL54-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL54-1
	.4byte	.LVL58
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL58
	.4byte	.LVL61-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL61-1
	.4byte	.LVL64
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL64
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL68
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL59
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL60
	.4byte	.LVL61-1
	.2byte	0x8
	.byte	0x3
	.4byte	ota_parm
	.byte	0x6
	.byte	0x23
	.byte	0x4
	.4byte	.LVL64
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL69
	.4byte	.LVL70
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL70
	.4byte	.LVL71-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL65
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL68
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL73
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL83
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL65
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL68
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL73
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL75
	.4byte	.LVL80
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL83
	.4byte	.LVL85
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL85
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL66
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL68
	.4byte	.LVL69
	.2byte	0x5
	.byte	0x83
	.byte	0
	.byte	0x3c
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL73
	.4byte	.LVL75
	.2byte	0x5
	.byte	0x83
	.byte	0
	.byte	0x3c
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL75
	.4byte	.LVL80
	.2byte	0x6
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x3c
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL83
	.4byte	.LVL85
	.2byte	0x6
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x3c
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL85
	.4byte	.LVL88
	.2byte	0x5
	.byte	0x83
	.byte	0
	.byte	0x3c
	.byte	0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL67
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL73
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL78
	.4byte	.LVL80
	.2byte	0xb
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x84
	.byte	0
	.byte	0x22
	.byte	0x31
	.byte	0x1c
	.byte	0x3c
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL83
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL67
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL73
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL83
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL74
	.4byte	.LVL76-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL85
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL3-1
	.4byte	.LVL7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL8
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL41
	.4byte	.LVL47
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL49
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL21
	.4byte	.LVL22-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL29
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL42
	.4byte	.LVL43-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL47
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL28
	.4byte	.LVL30
	.2byte	0xa
	.byte	0x7f
	.byte	0
	.byte	0x32
	.byte	0x24
	.byte	0x91
	.byte	0
	.byte	0x22
	.byte	0x8
	.byte	0x38
	.byte	0x1c
	.4byte	.LVL30
	.4byte	.LVL31-1
	.2byte	0x12
	.byte	0x91
	.byte	0xbe,0x7f
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x30
	.byte	0x29
	.byte	0x32
	.byte	0x24
	.byte	0x91
	.byte	0
	.byte	0x22
	.byte	0x8
	.byte	0x38
	.byte	0x1c
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0xa
	.byte	0x7f
	.byte	0
	.byte	0x32
	.byte	0x24
	.byte	0x91
	.byte	0
	.byte	0x22
	.byte	0x8
	.byte	0x38
	.byte	0x1c
	.4byte	.LVL38
	.4byte	.LVL39-1
	.2byte	0x12
	.byte	0x91
	.byte	0xbe,0x7f
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x30
	.byte	0x29
	.byte	0x32
	.byte	0x24
	.byte	0x91
	.byte	0
	.byte	0x22
	.byte	0x8
	.byte	0x38
	.byte	0x1c
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
	.4byte	.LBB4
	.4byte	.LBE4
	.4byte	.LBB9
	.4byte	.LBE9
	.4byte	.LBB10
	.4byte	.LBE10
	.4byte	.LBB11
	.4byte	.LBE11
	.4byte	0
	.4byte	0
	.4byte	.LBB12
	.4byte	.LBE12
	.4byte	.LBB13
	.4byte	.LBE13
	.4byte	.LBB14
	.4byte	.LBE14
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF42:
	.string	"_blog_info"
.LASF96:
	.string	"hosal_ota_erase"
.LASF72:
	.string	"aos_malloc"
.LASF95:
	.string	"_blog_leve"
.LASF39:
	.string	"_fsymc_level_hosal"
.LASF53:
	.string	"check_hash"
.LASF62:
	.string	"hosal_ota_update"
.LASF89:
	.string	"bl_mtd_erase"
.LASF16:
	.string	"activeIndex"
.LASF2:
	.string	"short int"
.LASF54:
	.string	"auto_reset"
.LASF58:
	.string	"dst_sha"
.LASF40:
	.string	"_fsymf_level_hosalhosal_ota"
.LASF70:
	.string	"bl_mtd_read"
.LASF6:
	.string	"__uint32_t"
.LASF18:
	.string	"Address"
.LASF38:
	.string	"_fsymc_info_hosal"
.LASF91:
	.string	"bl_mtd_open"
.LASF78:
	.string	"utils_sha256_init"
.LASF73:
	.string	"bl_mtd_close"
.LASF97:
	.string	"__builtin_memset"
.LASF46:
	.string	"sector_erased"
.LASF47:
	.string	"hosal_ota_parm_t"
.LASF68:
	.string	"index"
.LASF63:
	.string	"filesize"
.LASF85:
	.string	"utils_sha256_update"
.LASF64:
	.string	"hosal_ota_start"
.LASF75:
	.string	"xPortIsInsideInterrupt"
.LASF66:
	.string	"start_index"
.LASF19:
	.string	"maxLen"
.LASF51:
	.string	"hosal_ota_read"
.LASF81:
	.string	"utils_sha256_finish"
.LASF60:
	.string	"sha256_ctx"
.LASF15:
	.string	"device"
.LASF83:
	.string	"memcmp"
.LASF8:
	.string	"long long int"
.LASF37:
	.string	"BLOG_HARD_DECLARE_DISABLE"
.LASF80:
	.string	"memset"
.LASF25:
	.string	"iot_sha256_context"
.LASF4:
	.string	"long int"
.LASF65:
	.string	"ota_addr"
.LASF49:
	.string	"offset"
.LASF26:
	.string	"bl_mtd_handle_t"
.LASF5:
	.string	"__uint8_t"
.LASF77:
	.string	"xTaskGetTickCount"
.LASF24:
	.string	"is224"
.LASF22:
	.string	"state"
.LASF61:
	.string	"r_buf"
.LASF32:
	.string	"BLOG_LEVEL_ASSERT"
.LASF1:
	.string	"unsigned char"
.LASF79:
	.string	"utils_sha256_starts"
.LASF21:
	.string	"total"
.LASF20:
	.string	"HALPartition_Entry_Config"
.LASF55:
	.string	"bin_size"
.LASF31:
	.string	"BLOG_LEVEL_ERROR"
.LASF0:
	.string	"signed char"
.LASF9:
	.string	"long long unsigned int"
.LASF13:
	.string	"uint32_t"
.LASF10:
	.string	"unsigned int"
.LASF44:
	.string	"mtd_handle"
.LASF29:
	.string	"BLOG_LEVEL_INFO"
.LASF82:
	.string	"puts"
.LASF48:
	.string	"ota_parm"
.LASF86:
	.string	"hal_boot2_get_active_entries"
.LASF3:
	.string	"short unsigned int"
.LASF11:
	.string	"char"
.LASF52:
	.string	"hosal_ota_finish"
.LASF69:
	.string	"printf"
.LASF14:
	.string	"type"
.LASF43:
	.string	"ota_parm_s"
.LASF56:
	.string	"ptEntry"
.LASF45:
	.string	"file_size"
.LASF50:
	.string	"buf_len"
.LASF23:
	.string	"buffer"
.LASF27:
	.string	"BLOG_LEVEL_ALL"
.LASF90:
	.string	"bl_mtd_write"
.LASF36:
	.string	"blog_info_t"
.LASF7:
	.string	"long unsigned int"
.LASF94:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/hosal"
.LASF93:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/bl602_hal/hosal_ota.c"
.LASF59:
	.string	"read_size"
.LASF57:
	.string	"sha_check"
.LASF67:
	.string	"end_index"
.LASF76:
	.string	"xTaskGetTickCountFromISR"
.LASF35:
	.string	"level"
.LASF84:
	.string	"utils_sha256_free"
.LASF12:
	.string	"uint8_t"
.LASF17:
	.string	"name"
.LASF74:
	.string	"aos_free"
.LASF71:
	.string	"bl_printk"
.LASF30:
	.string	"BLOG_LEVEL_WARN"
.LASF33:
	.string	"BLOG_LEVEL_NEVER"
.LASF87:
	.string	"hal_boot2_update_ptable"
.LASF34:
	.string	"blog_level_t"
.LASF28:
	.string	"BLOG_LEVEL_DEBUG"
.LASF88:
	.string	"hal_reboot"
.LASF41:
	.string	"_fsymf_info_hosalhosal_ota"
.LASF92:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
