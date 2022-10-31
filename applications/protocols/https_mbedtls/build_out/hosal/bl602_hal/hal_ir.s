	.file	"hal_ir.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.fdt32_to_cpu,"ax",@progbits
	.align	1
	.type	fdt32_to_cpu, @function
fdt32_to_cpu:
.LFB6:
	.file 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/blfdt/inc/libfdt_env.h"
	.loc 1 92 1
	.cfi_startproc
.LVL0:
	.loc 1 93 5
	.loc 1 93 212 is_stmt 0
	srli	a4,a0,24
	.loc 1 93 12
	slli	a5,a0,24
	or	a5,a5,a4
	.loc 1 93 112
	srli	a4,a0,8
	andi	a4,a4,0xff
	.loc 1 93 163
	srli	a0,a0,16
.LVL1:
	.loc 1 93 117
	slli	a4,a4,16
	.loc 1 93 163
	andi	a0,a0,0xff
	.loc 1 93 12
	or	a5,a5,a4
	.loc 1 93 168
	slli	a0,a0,8
	.loc 1 94 1
	or	a0,a5,a0
	ret
	.cfi_endproc
.LFE6:
	.size	fdt32_to_cpu, .-fdt32_to_cpu
	.section	.rodata.hal_ir_init_from_dts.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"ctrltype"
	.align	2
.LC1:
	.string	"hal_ir.c"
	.align	2
.LC2:
	.string	"\033[32mINFO\033[0m"
	.align	2
.LC3:
	.string	"%s (%d)[%s:%4d] do not find ctrltype \r\n\r\n"
	.align	2
.LC4:
	.string	"%s (%d)[%s:%4d] ctrltype == %d \r\n\r\n"
	.align	2
.LC5:
	.string	"rx"
	.align	2
.LC6:
	.string	"%s (%d)[%s:%4d] ir rx NULL.\r\n\r\n"
	.align	2
.LC7:
	.string	"status"
	.align	2
.LC8:
	.string	"%s (%d)[%s:%4d] ir rx status_countindex = %d NULL.\r\n\r\n"
	.align	2
.LC9:
	.string	"okay"
	.align	2
.LC10:
	.string	"%s (%d)[%s:%4d] ir rx status = %s\r\n\r\n"
	.align	2
.LC11:
	.string	"pin"
	.align	2
.LC12:
	.string	"%s (%d)[%s:%4d] ir rx pin NULL.\r\n\r\n"
	.align	2
.LC13:
	.string	"%s (%d)[%s:%4d] pin == %d \r\n\r\n"
	.align	2
.LC14:
	.string	"data_check"
	.align	2
.LC15:
	.string	"%s (%d)[%s:%4d] ir rx check_data NULL \r\n\r\n"
	.section	.text.hal_ir_init_from_dts,"ax",@progbits
	.align	1
	.globl	hal_ir_init_from_dts
	.type	hal_ir_init_from_dts, @function
hal_ir_init_from_dts:
.LFB63:
	.file 2 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/bl602_hal/hal_ir.c"
	.loc 2 23 1 is_stmt 1
	.cfi_startproc
.LVL2:
	.loc 2 24 5
	.loc 2 25 5
	.loc 2 23 1 is_stmt 0
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	.loc 2 36 17
	lui	a2,%hi(.LC0)
	addi	a3,sp,12
	addi	a2,a2,%lo(.LC0)
	.loc 2 23 1
	sw	s0,40(sp)
	sw	s1,36(sp)
	sw	s2,32(sp)
	sw	ra,44(sp)
	sw	s3,28(sp)
	sw	s4,24(sp)
	sw	s5,20(sp)
	sw	s6,16(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 1, -4
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.loc 2 23 1
	mv	s2,a0
.LVL3:
	.loc 2 27 5 is_stmt 1
	.loc 2 28 5
	.loc 2 23 1 is_stmt 0
	mv	s0,a1
	.loc 2 28 9
	sw	zero,12(sp)
	.loc 2 29 5 is_stmt 1
.LVL4:
	.loc 2 30 5
	.loc 2 31 5
	.loc 2 33 5
	.loc 2 34 5
	.loc 2 36 5
	.loc 2 36 17 is_stmt 0
	call	fdt_getprop
.LVL5:
	.loc 2 37 5 is_stmt 1
	lui	s1,%hi(_fsymc_level_hosal)
	.loc 2 37 8 is_stmt 0
	bne	a0,zero,.L3
	.loc 2 38 9 is_stmt 1 discriminator 1
	.loc 2 38 47 discriminator 1
	.loc 2 38 52 discriminator 1
	.loc 2 38 55 is_stmt 0 discriminator 1
	lw	a4,%lo(_fsymc_level_hosal)(s1)
	li	a5,2
	.loc 2 31 9 discriminator 1
	li	s5,0
	.loc 2 38 55 discriminator 1
	bgtu	a4,a5,.L4
	.loc 2 38 116 discriminator 3
	lui	a4,%hi(_fsymf_level_hosalhal_ir)
	.loc 2 38 96 discriminator 3
	lw	a4,%lo(_fsymf_level_hosalhal_ir)(a4)
	bgtu	a4,a5,.L4
	.loc 2 38 148 is_stmt 1 discriminator 5
	.loc 2 38 237 is_stmt 0 discriminator 5
	call	xPortIsInsideInterrupt
.LVL6:
	.loc 2 38 148 discriminator 5
	beq	a0,zero,.L5
	.loc 2 38 266 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL7:
.L37:
	.loc 2 38 297 discriminator 8
	mv	a2,a0
	.loc 2 38 148 discriminator 8
	lui	a3,%hi(.LC1)
	lui	a1,%hi(.LC2)
	lui	a0,%hi(.LC3)
	li	a4,38
	addi	a3,a3,%lo(.LC1)
	addi	a1,a1,%lo(.LC2)
	addi	a0,a0,%lo(.LC3)
	call	bl_printk
.LVL8:
	.loc 2 31 9 discriminator 8
	li	s5,0
.LVL9:
.L4:
	.loc 2 41 350 is_stmt 1 discriminator 11
	.loc 2 41 361 discriminator 11
	.loc 2 44 5 discriminator 11
	.loc 2 44 15 is_stmt 0 discriminator 11
	lui	a2,%hi(.LC5)
	addi	a2,a2,%lo(.LC5)
	mv	a1,s0
	mv	a0,s2
	call	fdt_subnode_offset
.LVL10:
	mv	s3,a0
.LVL11:
	.loc 2 45 5 is_stmt 1 discriminator 11
	.loc 2 45 8 is_stmt 0 discriminator 11
	bgt	a0,zero,.L9
	.loc 2 46 9 is_stmt 1 discriminator 1
	.loc 2 46 47 discriminator 1
	.loc 2 46 52 discriminator 1
	.loc 2 46 55 is_stmt 0 discriminator 1
	lw	a4,%lo(_fsymc_level_hosal)(s1)
	li	a5,2
	bleu	a4,a5,.L10
.LVL12:
.L45:
	.loc 2 34 9 discriminator 10
	li	s0,0
.L47:
	.loc 2 33 13 discriminator 10
	li	s4,0
.LVL13:
.L11:
	.loc 2 75 5 is_stmt 1
	mv	a2,s0
	mv	a1,s5
	mv	a0,s4
	call	bl_ir_init
.LVL14:
	.loc 2 77 5
	.loc 2 78 1 is_stmt 0
	lw	ra,44(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
.LVL15:
	lw	s1,36(sp)
	.cfi_restore 9
	lw	s2,32(sp)
	.cfi_restore 18
.LVL16:
	lw	s3,28(sp)
	.cfi_restore 19
.LVL17:
	lw	s4,24(sp)
	.cfi_restore 20
.LVL18:
	lw	s5,20(sp)
	.cfi_restore 21
.LVL19:
	lw	s6,16(sp)
	.cfi_restore 22
	li	a0,0
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
.LVL20:
.L5:
	.cfi_restore_state
	.loc 2 38 297 discriminator 8
	call	xTaskGetTickCount
.LVL21:
	j	.L37
.LVL22:
.L3:
	.loc 2 40 9 is_stmt 1
	.loc 2 40 31 is_stmt 0
	lw	a0,0(a0)
.LVL23:
	call	fdt32_to_cpu
.LVL24:
	.loc 2 41 55
	lw	a4,%lo(_fsymc_level_hosal)(s1)
	li	a5,2
	.loc 2 40 31
	mv	s5,a0
.LVL25:
	.loc 2 41 9 is_stmt 1
	.loc 2 41 47
	.loc 2 41 52
	.loc 2 41 55 is_stmt 0
	bgtu	a4,a5,.L4
	.loc 2 41 116 discriminator 3
	lui	a4,%hi(_fsymf_level_hosalhal_ir)
	.loc 2 41 96 discriminator 3
	lw	a4,%lo(_fsymf_level_hosalhal_ir)(a4)
	bgtu	a4,a5,.L4
	.loc 2 41 148 is_stmt 1 discriminator 5
	.loc 2 41 231 is_stmt 0 discriminator 5
	call	xPortIsInsideInterrupt
.LVL26:
	.loc 2 41 148 discriminator 5
	beq	a0,zero,.L7
	.loc 2 41 260 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL27:
.L38:
	.loc 2 41 291 discriminator 8
	mv	a2,a0
	.loc 2 41 148 discriminator 8
	lui	a3,%hi(.LC1)
	lui	a1,%hi(.LC2)
	lui	a0,%hi(.LC4)
	mv	a5,s5
	li	a4,41
	addi	a3,a3,%lo(.LC1)
	addi	a1,a1,%lo(.LC2)
	addi	a0,a0,%lo(.LC4)
	call	bl_printk
.LVL28:
	j	.L4
.L7:
	.loc 2 41 291 discriminator 8
	call	xTaskGetTickCount
.LVL29:
	j	.L38
.LVL30:
.L10:
	.loc 2 46 116 discriminator 3
	lui	a4,%hi(_fsymf_level_hosalhal_ir)
	.loc 2 46 96 discriminator 3
	lw	a4,%lo(_fsymf_level_hosalhal_ir)(a4)
	bgtu	a4,a5,.L45
	.loc 2 46 148 is_stmt 1 discriminator 5
	.loc 2 46 227 is_stmt 0 discriminator 5
	call	xPortIsInsideInterrupt
.LVL31:
	.loc 2 46 148 discriminator 5
	beq	a0,zero,.L13
	.loc 2 46 256 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL32:
.L39:
	.loc 2 46 287 discriminator 8
	mv	a2,a0
	.loc 2 46 148 discriminator 8
	lui	a3,%hi(.LC1)
	lui	a1,%hi(.LC2)
	lui	a0,%hi(.LC6)
	li	a4,46
	addi	a3,a3,%lo(.LC1)
	addi	a1,a1,%lo(.LC2)
	addi	a0,a0,%lo(.LC6)
	call	bl_printk
.LVL33:
	j	.L45
.L13:
	.loc 2 46 287 discriminator 8
	call	xTaskGetTickCount
.LVL34:
	j	.L39
.LVL35:
.L9:
	.loc 2 48 9 is_stmt 1
	.loc 2 48 22 is_stmt 0
	lui	s4,%hi(.LC7)
	mv	a1,a0
	addi	a2,s4,%lo(.LC7)
	mv	a0,s2
.LVL36:
	call	fdt_stringlist_count
.LVL37:
	.loc 2 49 12
	li	a5,1
	.loc 2 48 22
	mv	s0,a0
.LVL38:
	.loc 2 49 9 is_stmt 1
	.loc 2 49 12 is_stmt 0
	beq	a0,a5,.L15
	.loc 2 50 13 is_stmt 1 discriminator 1
	.loc 2 50 51 discriminator 1
	.loc 2 50 56 discriminator 1
	.loc 2 50 59 is_stmt 0 discriminator 1
	lw	a4,%lo(_fsymc_level_hosal)(s1)
	li	a5,2
	bgtu	a4,a5,.L45
	.loc 2 50 120 discriminator 3
	lui	a4,%hi(_fsymf_level_hosalhal_ir)
	.loc 2 50 100 discriminator 3
	lw	a4,%lo(_fsymf_level_hosalhal_ir)(a4)
	bgtu	a4,a5,.L45
	.loc 2 50 152 is_stmt 1 discriminator 5
	.loc 2 50 254 is_stmt 0 discriminator 5
	call	xPortIsInsideInterrupt
.LVL39:
	.loc 2 50 152 discriminator 5
	beq	a0,zero,.L16
	.loc 2 50 283 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL40:
.L40:
	.loc 2 50 314 discriminator 8
	mv	a2,a0
	.loc 2 50 152 discriminator 8
	lui	a3,%hi(.LC1)
	lui	a1,%hi(.LC2)
	lui	a0,%hi(.LC8)
	mv	a5,s0
	li	a4,50
	addi	a3,a3,%lo(.LC1)
	addi	a1,a1,%lo(.LC2)
	addi	a0,a0,%lo(.LC8)
.LVL41:
.L46:
	.loc 2 50 152 discriminator 10
	call	bl_printk
.LVL42:
	j	.L45
.LVL43:
.L16:
	.loc 2 50 314 discriminator 8
	call	xTaskGetTickCount
.LVL44:
	j	.L40
.L15:
	.loc 2 52 13 is_stmt 1
	.loc 2 52 22 is_stmt 0
	addi	a4,sp,12
	addi	a2,s4,%lo(.LC7)
	li	a3,0
	mv	a1,s3
	mv	a0,s2
	call	fdt_stringlist_get
.LVL45:
	.loc 2 53 16
	lw	a4,12(sp)
	li	a5,4
	.loc 2 52 22
	mv	s4,a0
.LVL46:
	.loc 2 53 13 is_stmt 1
	.loc 2 53 16 is_stmt 0
	beq	a4,a5,.L18
.LVL47:
.L20:
	.loc 2 54 17 is_stmt 1
	.loc 2 54 55
	.loc 2 54 60
	.loc 2 54 63 is_stmt 0
	lw	a4,%lo(_fsymc_level_hosal)(s1)
	li	a5,2
	bgtu	a4,a5,.L45
	.loc 2 54 124 discriminator 3
	lui	a4,%hi(_fsymf_level_hosalhal_ir)
	.loc 2 54 104 discriminator 3
	lw	a4,%lo(_fsymf_level_hosalhal_ir)(a4)
	bgtu	a4,a5,.L45
	.loc 2 54 156 is_stmt 1 discriminator 5
	.loc 2 54 241 is_stmt 0 discriminator 5
	call	xPortIsInsideInterrupt
.LVL48:
	.loc 2 54 156 discriminator 5
	beq	a0,zero,.L22
	.loc 2 54 270 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL49:
.L41:
	.loc 2 54 301 discriminator 8
	mv	a2,a0
	.loc 2 54 156 discriminator 8
	lui	a3,%hi(.LC1)
	lui	a1,%hi(.LC2)
	lui	a0,%hi(.LC10)
	mv	a5,s4
	li	a4,54
	addi	a3,a3,%lo(.LC1)
	addi	a1,a1,%lo(.LC2)
	addi	a0,a0,%lo(.LC10)
	j	.L46
.LVL50:
.L18:
	.loc 2 53 35 discriminator 1
	mv	a1,a0
	lui	a0,%hi(.LC9)
.LVL51:
	li	a2,4
	addi	a0,a0,%lo(.LC9)
	call	memcmp
.LVL52:
	mv	s0,a0
.LVL53:
	.loc 2 53 31 discriminator 1
	bne	a0,zero,.L20
	.loc 2 57 17 is_stmt 1
	.loc 2 57 29 is_stmt 0
	lui	a2,%hi(.LC11)
	addi	a3,sp,12
	addi	a2,a2,%lo(.LC11)
	mv	a1,s3
	mv	a0,s2
	call	fdt_getprop
.LVL54:
	.loc 2 58 17 is_stmt 1
	.loc 2 58 20 is_stmt 0
	bne	a0,zero,.L24
	.loc 2 59 21 is_stmt 1 discriminator 1
	.loc 2 59 59 discriminator 1
	.loc 2 59 64 discriminator 1
	.loc 2 59 67 is_stmt 0 discriminator 1
	lw	a4,%lo(_fsymc_level_hosal)(s1)
	li	a5,2
	bgtu	a4,a5,.L45
	.loc 2 59 128 discriminator 3
	lui	a4,%hi(_fsymf_level_hosalhal_ir)
	.loc 2 59 108 discriminator 3
	lw	a4,%lo(_fsymf_level_hosalhal_ir)(a4)
	bgtu	a4,a5,.L45
	.loc 2 59 160 is_stmt 1 discriminator 5
	.loc 2 59 243 is_stmt 0 discriminator 5
	call	xPortIsInsideInterrupt
.LVL55:
	.loc 2 59 160 discriminator 5
	beq	a0,zero,.L25
	.loc 2 59 272 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL56:
.L42:
	.loc 2 59 303 discriminator 8
	mv	a2,a0
	.loc 2 59 160 discriminator 8
	lui	a3,%hi(.LC1)
	lui	a1,%hi(.LC2)
	lui	a0,%hi(.LC12)
	li	a4,59
	addi	a3,a3,%lo(.LC1)
	addi	a1,a1,%lo(.LC2)
	addi	a0,a0,%lo(.LC12)
	call	bl_printk
.LVL57:
	j	.L47
.L22:
	.loc 2 54 301 discriminator 8
	call	xTaskGetTickCount
.LVL58:
	j	.L41
.L25:
	.loc 2 59 303 discriminator 8
	call	xTaskGetTickCount
.LVL59:
	j	.L42
.LVL60:
.L24:
	.loc 2 61 21 is_stmt 1
	.loc 2 61 38 is_stmt 0
	lw	a0,0(a0)
.LVL61:
	call	fdt32_to_cpu
.LVL62:
	.loc 2 62 67
	lw	a4,%lo(_fsymc_level_hosal)(s1)
	li	a5,2
	.loc 2 61 38
	mv	s6,a0
	.loc 2 61 25
	andi	s4,a0,0xff
.LVL63:
	.loc 2 62 21 is_stmt 1
	.loc 2 62 59
	.loc 2 62 64
	.loc 2 62 67 is_stmt 0
	bgtu	a4,a5,.L27
	.loc 2 62 128 discriminator 3
	lui	a4,%hi(_fsymf_level_hosalhal_ir)
	.loc 2 62 108 discriminator 3
	lw	a4,%lo(_fsymf_level_hosalhal_ir)(a4)
	bgtu	a4,a5,.L27
	.loc 2 62 160 is_stmt 1 discriminator 5
	.loc 2 62 238 is_stmt 0 discriminator 5
	call	xPortIsInsideInterrupt
.LVL64:
	.loc 2 62 160 discriminator 5
	beq	a0,zero,.L28
	.loc 2 62 267 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL65:
.L43:
	.loc 2 62 298 discriminator 8
	mv	a2,a0
	.loc 2 62 160 discriminator 8
	lui	a3,%hi(.LC1)
	lui	a1,%hi(.LC2)
	lui	a0,%hi(.LC13)
	andi	a5,s6,0xff
	li	a4,62
	addi	a3,a3,%lo(.LC1)
	addi	a1,a1,%lo(.LC2)
	addi	a0,a0,%lo(.LC13)
	call	bl_printk
.LVL66:
.L27:
	.loc 2 62 352 is_stmt 1 discriminator 11
	.loc 2 62 363 discriminator 11
	.loc 2 63 21 discriminator 11
	.loc 2 63 33 is_stmt 0 discriminator 11
	lui	a2,%hi(.LC14)
	addi	a3,sp,12
	addi	a2,a2,%lo(.LC14)
	mv	a1,s3
	mv	a0,s2
	call	fdt_getprop
.LVL67:
	.loc 2 64 21 is_stmt 1 discriminator 11
	.loc 2 64 24 is_stmt 0 discriminator 11
	bne	a0,zero,.L30
	.loc 2 65 25 is_stmt 1 discriminator 1
	.loc 2 65 63 discriminator 1
	.loc 2 65 68 discriminator 1
	.loc 2 65 71 is_stmt 0 discriminator 1
	lw	a4,%lo(_fsymc_level_hosal)(s1)
	li	a5,2
	bgtu	a4,a5,.L11
	.loc 2 65 132 discriminator 3
	lui	a4,%hi(_fsymf_level_hosalhal_ir)
	.loc 2 65 112 discriminator 3
	lw	a4,%lo(_fsymf_level_hosalhal_ir)(a4)
	bgtu	a4,a5,.L11
	.loc 2 65 164 is_stmt 1 discriminator 5
	.loc 2 65 254 is_stmt 0 discriminator 5
	call	xPortIsInsideInterrupt
.LVL68:
	.loc 2 65 164 discriminator 5
	beq	a0,zero,.L31
	.loc 2 65 283 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL69:
.L44:
	.loc 2 65 314 discriminator 8
	mv	a2,a0
	.loc 2 65 164 discriminator 8
	lui	a3,%hi(.LC1)
	lui	a1,%hi(.LC2)
	lui	a0,%hi(.LC15)
	li	a4,65
	addi	a3,a3,%lo(.LC1)
	addi	a1,a1,%lo(.LC2)
	addi	a0,a0,%lo(.LC15)
	call	bl_printk
.LVL70:
	j	.L11
.L28:
	.loc 2 62 298 discriminator 8
	call	xTaskGetTickCount
.LVL71:
	j	.L43
.L31:
	.loc 2 65 314 discriminator 8
	call	xTaskGetTickCount
.LVL72:
	j	.L44
.LVL73:
.L30:
	.loc 2 67 25 is_stmt 1
	.loc 2 67 49 is_stmt 0
	lw	a0,0(a0)
.LVL74:
	call	fdt32_to_cpu
.LVL75:
	mv	s0,a0
.LVL76:
	j	.L11
	.cfi_endproc
.LFE63:
	.size	hal_ir_init_from_dts, .-hal_ir_init_from_dts
	.section	.text.hal_ir_config,"ax",@progbits
	.align	1
	.globl	hal_ir_config
	.type	hal_ir_config, @function
hal_ir_config:
.LFB64:
	.loc 2 81 1 is_stmt 1
	.cfi_startproc
.LVL77:
	.loc 2 82 5
	.loc 2 82 12 is_stmt 0
	tail	bl_ir_data_check_config
.LVL78:
	.cfi_endproc
.LFE64:
	.size	hal_ir_config, .-hal_ir_config
	.section	.rodata.hal_irled_init.str1.4,"aMS",@progbits,1
	.align	2
.LC16:
	.string	"\033[31mERROR\033[0m"
	.align	2
.LC17:
	.string	"%s (%d)[%s:%4d] malloc ir data failed, ir init failed.\r\n\r\n"
	.section	.text.hal_irled_init,"ax",@progbits
	.align	1
	.globl	hal_irled_init
	.type	hal_irled_init, @function
hal_irled_init:
.LFB65:
	.loc 2 86 1 is_stmt 1
	.cfi_startproc
.LVL79:
	.loc 2 87 5
	.loc 2 89 5
	.loc 2 86 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s1,4(sp)
	.cfi_offset 9, -12
	mv	s1,a0
	.loc 2 89 14
	li	a0,64
.LVL80:
	.loc 2 86 1
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.loc 2 89 14
	call	pvPortMalloc
.LVL81:
	.loc 2 90 5 is_stmt 1
	.loc 2 90 8 is_stmt 0
	bne	a0,zero,.L50
	.loc 2 91 9 is_stmt 1 discriminator 1
	.loc 2 91 47 discriminator 1
	.loc 2 91 52 discriminator 1
	.loc 2 91 74 is_stmt 0 discriminator 1
	lui	a5,%hi(_fsymc_level_hosal)
	.loc 2 91 55 discriminator 1
	lw	a4,%lo(_fsymc_level_hosal)(a5)
	li	a5,4
	.loc 2 93 16 discriminator 1
	li	a0,-1
.LVL82:
	.loc 2 91 55 discriminator 1
	bgtu	a4,a5,.L49
	.loc 2 91 118 discriminator 3
	lui	a4,%hi(_fsymf_level_hosalhal_ir)
	.loc 2 91 97 discriminator 3
	lw	a4,%lo(_fsymf_level_hosalhal_ir)(a4)
	bgtu	a4,a5,.L49
	.loc 2 91 150 is_stmt 1 discriminator 5
	.loc 2 91 257 is_stmt 0 discriminator 5
	call	xPortIsInsideInterrupt
.LVL83:
	.loc 2 91 150 discriminator 5
	beq	a0,zero,.L52
	.loc 2 91 286 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL84:
.L57:
	.loc 2 91 317 discriminator 8
	mv	a2,a0
	.loc 2 91 150 discriminator 8
	lui	a3,%hi(.LC1)
	lui	a1,%hi(.LC16)
	lui	a0,%hi(.LC17)
	addi	a0,a0,%lo(.LC17)
	li	a4,91
	addi	a3,a3,%lo(.LC1)
	addi	a1,a1,%lo(.LC16)
	call	bl_printk
.LVL85:
	.loc 2 93 16 discriminator 8
	li	a0,-1
.L49:
	.loc 2 108 1
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	lw	s1,4(sp)
	.cfi_restore 9
.LVL86:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL87:
.L52:
	.cfi_restore_state
	.loc 2 91 317 discriminator 8
	call	xTaskGetTickCount
.LVL88:
	j	.L57
.LVL89:
.L50:
	.loc 2 96 29
	li	a5,11
	sb	a5,55(a0)
	.loc 2 97 30
	li	a5,12
	sb	a5,57(a0)
	.loc 2 98 26
	li	a5,1
	sb	a5,46(a0)
	.loc 2 99 26
	li	a5,4001792
	addi	a5,a5,-1792
	sw	a5,48(a0)
	.loc 2 100 33
	li	a5,513
	sh	a5,52(a0)
	.loc 2 102 23
	sw	s1,16(a0)
	mv	s0,a0
	.loc 2 96 5 is_stmt 1
	.loc 2 97 5
	.loc 2 98 5
	.loc 2 99 5
	.loc 2 100 5
	.loc 2 101 5
	.loc 2 102 5
	.loc 2 104 5
	call	bl_spi_hw_init
.LVL90:
	.loc 2 105 5
	mv	a0,s0
	call	bl_spi_dma_init
.LVL91:
	.loc 2 107 5
	.loc 2 107 12 is_stmt 0
	li	a0,0
	j	.L49
	.cfi_endproc
.LFE65:
	.size	hal_irled_init, .-hal_irled_init
	.section	.rodata.hal_irled_send_data.str1.4,"aMS",@progbits,1
	.align	2
.LC18:
	.string	"%s (%d)[%s:%4d] not correct para \r\n\r\n"
	.align	2
.LC19:
	.string	"%s (%d)[%s:%4d] get ctx by dma channel failed. \r\n\r\n"
	.section	.text.hal_irled_send_data,"ax",@progbits
	.align	1
	.globl	hal_irled_send_data
	.type	hal_irled_send_data, @function
hal_irled_send_data:
.LFB66:
	.loc 2 111 1 is_stmt 1
	.cfi_startproc
.LVL92:
	.loc 2 112 5
	.loc 2 113 5
	.loc 2 115 5
	.loc 2 111 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	s1,4(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 1, -4
	.loc 2 111 1
	mv	s1,a0
	mv	s0,a1
	.loc 2 115 8
	beq	a1,zero,.L59
	.loc 2 115 40 discriminator 1
	bgt	a0,zero,.L60
.L59:
	.loc 2 116 9 is_stmt 1 discriminator 1
	.loc 2 116 47 discriminator 1
	.loc 2 116 52 discriminator 1
	.loc 2 116 74 is_stmt 0 discriminator 1
	lui	a5,%hi(_fsymc_level_hosal)
	.loc 2 116 55 discriminator 1
	lw	a4,%lo(_fsymc_level_hosal)(a5)
	li	a5,4
	bgtu	a4,a5,.L60
	.loc 2 116 118 discriminator 3
	lui	a4,%hi(_fsymf_level_hosalhal_ir)
	.loc 2 116 97 discriminator 3
	lw	a4,%lo(_fsymf_level_hosalhal_ir)(a4)
	bgtu	a4,a5,.L60
	.loc 2 116 150 is_stmt 1 discriminator 5
	.loc 2 116 236 is_stmt 0 discriminator 5
	call	xPortIsInsideInterrupt
.LVL93:
	.loc 2 116 150 discriminator 5
	beq	a0,zero,.L61
	.loc 2 116 265 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL94:
.L73:
	.loc 2 116 296 discriminator 8
	mv	a2,a0
	.loc 2 116 150 discriminator 8
	lui	a3,%hi(.LC1)
	lui	a1,%hi(.LC16)
	lui	a0,%hi(.LC18)
	li	a4,116
	addi	a3,a3,%lo(.LC1)
	addi	a1,a1,%lo(.LC16)
	addi	a0,a0,%lo(.LC18)
	call	bl_printk
.LVL95:
.L60:
	.loc 2 116 346 is_stmt 1 discriminator 11
	.loc 2 116 357 discriminator 11
	.loc 2 119 5 discriminator 11
	.loc 2 119 14 is_stmt 0 discriminator 11
	li	a0,2
	call	bl_dma_find_ctx_by_channel
.LVL96:
	.loc 2 120 5 is_stmt 1 discriminator 11
	.loc 2 120 8 is_stmt 0 discriminator 11
	bne	a0,zero,.L63
	.loc 2 121 9 is_stmt 1 discriminator 1
	.loc 2 121 47 discriminator 1
	.loc 2 121 52 discriminator 1
	.loc 2 121 74 is_stmt 0 discriminator 1
	lui	a5,%hi(_fsymc_level_hosal)
	.loc 2 121 55 discriminator 1
	lw	a4,%lo(_fsymc_level_hosal)(a5)
	li	a5,4
	bgtu	a4,a5,.L58
	.loc 2 121 118 discriminator 3
	lui	a4,%hi(_fsymf_level_hosalhal_ir)
	.loc 2 121 97 discriminator 3
	lw	a4,%lo(_fsymf_level_hosalhal_ir)(a4)
	bgtu	a4,a5,.L58
	.loc 2 121 150 is_stmt 1 discriminator 5
	.loc 2 121 250 is_stmt 0 discriminator 5
	call	xPortIsInsideInterrupt
.LVL97:
	.loc 2 121 150 discriminator 5
	beq	a0,zero,.L65
	.loc 2 121 279 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL98:
.L74:
	.loc 2 121 310 discriminator 8
	mv	a2,a0
	.loc 2 121 150 discriminator 8
	lui	a3,%hi(.LC1)
	lui	a1,%hi(.LC16)
	lui	a0,%hi(.LC19)
	li	a4,121
	addi	a3,a3,%lo(.LC1)
	addi	a1,a1,%lo(.LC16)
	addi	a0,a0,%lo(.LC19)
	call	bl_printk
.LVL99:
.L58:
	.loc 2 130 1
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
.LVL100:
	lw	s1,4(sp)
	.cfi_restore 9
.LVL101:
	li	a0,-1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL102:
.L61:
	.cfi_restore_state
	.loc 2 116 296 discriminator 8
	call	xTaskGetTickCount
.LVL103:
	j	.L73
.L65:
	.loc 2 121 310 discriminator 8
	call	xTaskGetTickCount
.LVL104:
	j	.L74
.LVL105:
.L63:
	.loc 2 126 5 is_stmt 1
	.loc 2 126 20 is_stmt 0
	sw	s0,36(a0)
	.loc 2 127 5 is_stmt 1
	.loc 2 127 11 is_stmt 0
	mv	a1,s0
	.loc 2 130 1
	lw	s0,8(sp)
	.cfi_restore 8
.LVL106:
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 2 127 11
	mv	a2,s1
	.loc 2 130 1
	lw	s1,4(sp)
	.cfi_restore 9
.LVL107:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 2 127 11
	tail	bl_spi_dma_trans
.LVL108:
	.cfi_endproc
.LFE66:
	.size	hal_irled_send_data, .-hal_irled_send_data
	.globl	_fsymf_info_hosalhal_ir
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	2
.LC20:
	.string	"hosal.hal_ir"
	.comm	_fsymf_level_hosalhal_ir,4,4
	.align	2
.LC21:
	.string	"hosal"
	.weak	_fsymc_level_hosal
	.section	.sbss._fsymc_level_hosal,"aw",@nobits
	.align	2
	.type	_fsymc_level_hosal, @object
	.size	_fsymc_level_hosal, 4
_fsymc_level_hosal:
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
	.word	.LC21
	.section	.static_blogfile_code.hosalhal_ir,"a"
	.align	2
	.type	_fsymf_info_hosalhal_ir, @object
	.size	_fsymf_info_hosalhal_ir, 8
_fsymf_info_hosalhal_ir:
	.word	_fsymf_level_hosalhal_ir
	.word	.LC20
	.text
.Letext0:
	.file 3 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 4 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 5 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/blog/blog_type.h"
	.file 6 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/blog/blog.h"
	.file 7 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/bl602_hal/bl_ir.h"
	.file 8 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h"
	.file 9 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
	.file 10 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/utils/include/utils_log.h"
	.file 11 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/bl602_hal/bl_dma.h"
	.file 12 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/portable.h"
	.file 13 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/blfdt/inc/libfdt.h"
	.file 14 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xa4e
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF91
	.byte	0xc
	.4byte	.LASF92
	.4byte	.LASF93
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.byte	0x3
	.4byte	.LASF5
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x7
	.4byte	0x8b
	.byte	0x6
	.byte	0x4
	.4byte	0x92
	.byte	0x3
	.4byte	.LASF12
	.byte	0x4
	.byte	0x18
	.byte	0x13
	.4byte	0x2c
	.byte	0x3
	.4byte	.LASF13
	.byte	0x4
	.byte	0x30
	.byte	0x14
	.4byte	0x54
	.byte	0x7
	.4byte	0xa9
	.byte	0x6
	.byte	0x4
	.4byte	0xc0
	.byte	0x8
	.byte	0x3
	.4byte	.LASF14
	.byte	0x1
	.byte	0x46
	.byte	0x12
	.4byte	0xa9
	.byte	0x6
	.byte	0x4
	.4byte	0x9d
	.byte	0x9
	.4byte	.LASF94
	.byte	0x7
	.byte	0x4
	.4byte	0x7c
	.byte	0x5
	.byte	0x22
	.byte	0xe
	.4byte	0x110
	.byte	0xa
	.4byte	.LASF15
	.byte	0
	.byte	0xa
	.4byte	.LASF16
	.byte	0x1
	.byte	0xa
	.4byte	.LASF17
	.byte	0x2
	.byte	0xa
	.4byte	.LASF18
	.byte	0x3
	.byte	0xa
	.4byte	.LASF19
	.byte	0x4
	.byte	0xa
	.4byte	.LASF20
	.byte	0x5
	.byte	0xa
	.4byte	.LASF21
	.byte	0x6
	.byte	0
	.byte	0x3
	.4byte	.LASF22
	.byte	0x5
	.byte	0x2a
	.byte	0x3
	.4byte	0xd3
	.byte	0xb
	.4byte	.LASF31
	.byte	0x8
	.byte	0x5
	.byte	0x2c
	.byte	0x10
	.4byte	0x144
	.byte	0xc
	.4byte	.LASF23
	.byte	0x5
	.byte	0x2d
	.byte	0x13
	.4byte	0x144
	.byte	0
	.byte	0xc
	.4byte	.LASF24
	.byte	0x5
	.byte	0x2e
	.byte	0xb
	.4byte	0x85
	.byte	0x4
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x110
	.byte	0x3
	.4byte	.LASF25
	.byte	0x5
	.byte	0x2f
	.byte	0x3
	.4byte	0x11c
	.byte	0x7
	.4byte	0x14a
	.byte	0xd
	.4byte	.LASF26
	.byte	0x6
	.byte	0x38
	.byte	0x1b
	.4byte	0xb5
	.byte	0x5
	.byte	0x3
	.4byte	BLOG_HARD_DECLARE_DISABLE
	.byte	0xe
	.4byte	.LASF28
	.byte	0x6
	.byte	0x45
	.byte	0x12
	.4byte	0x110
	.byte	0x5
	.byte	0x3
	.4byte	_fsymc_level_hosal
	.byte	0xd
	.4byte	.LASF27
	.byte	0x6
	.byte	0x46
	.byte	0x1e
	.4byte	0x156
	.byte	0x5
	.byte	0x3
	.4byte	_fsymc_info_hosal
	.byte	0xe
	.4byte	.LASF29
	.byte	0x6
	.byte	0x53
	.byte	0x12
	.4byte	0x110
	.byte	0x5
	.byte	0x3
	.4byte	_fsymf_level_hosalhal_ir
	.byte	0xe
	.4byte	.LASF30
	.byte	0x6
	.byte	0x54
	.byte	0x17
	.4byte	0x156
	.byte	0x5
	.byte	0x3
	.4byte	_fsymf_info_hosalhal_ir
	.byte	0xb
	.4byte	.LASF32
	.byte	0x14
	.byte	0x7
	.byte	0xd
	.byte	0x10
	.4byte	0x25f
	.byte	0xc
	.4byte	.LASF33
	.byte	0x7
	.byte	0xe
	.byte	0xd
	.4byte	0x9d
	.byte	0
	.byte	0xc
	.4byte	.LASF34
	.byte	0x7
	.byte	0xf
	.byte	0xd
	.4byte	0x9d
	.byte	0x1
	.byte	0xc
	.4byte	.LASF35
	.byte	0x7
	.byte	0x10
	.byte	0xd
	.4byte	0x9d
	.byte	0x2
	.byte	0xc
	.4byte	.LASF36
	.byte	0x7
	.byte	0x11
	.byte	0xe
	.4byte	0xa9
	.byte	0x4
	.byte	0xc
	.4byte	.LASF37
	.byte	0x7
	.byte	0x12
	.byte	0xd
	.4byte	0x9d
	.byte	0x8
	.byte	0xc
	.4byte	.LASF38
	.byte	0x7
	.byte	0x13
	.byte	0xd
	.4byte	0x9d
	.byte	0x9
	.byte	0xc
	.4byte	.LASF39
	.byte	0x7
	.byte	0x14
	.byte	0xd
	.4byte	0x9d
	.byte	0xa
	.byte	0xc
	.4byte	.LASF40
	.byte	0x7
	.byte	0x15
	.byte	0xd
	.4byte	0x9d
	.byte	0xb
	.byte	0xc
	.4byte	.LASF41
	.byte	0x7
	.byte	0x16
	.byte	0xd
	.4byte	0x9d
	.byte	0xc
	.byte	0xc
	.4byte	.LASF42
	.byte	0x7
	.byte	0x17
	.byte	0xd
	.4byte	0x9d
	.byte	0xd
	.byte	0xc
	.4byte	.LASF43
	.byte	0x7
	.byte	0x18
	.byte	0xd
	.4byte	0x9d
	.byte	0xe
	.byte	0xc
	.4byte	.LASF44
	.byte	0x7
	.byte	0x19
	.byte	0xb
	.4byte	0x83
	.byte	0x10
	.byte	0
	.byte	0x3
	.4byte	.LASF45
	.byte	0x7
	.byte	0x1a
	.byte	0x3
	.4byte	0x1b5
	.byte	0xb
	.4byte	.LASF46
	.byte	0x40
	.byte	0x7
	.byte	0x1c
	.byte	0x10
	.4byte	0x315
	.byte	0xc
	.4byte	.LASF47
	.byte	0x7
	.byte	0x1d
	.byte	0xe
	.4byte	0xcd
	.byte	0
	.byte	0xc
	.4byte	.LASF48
	.byte	0x7
	.byte	0x1e
	.byte	0xe
	.4byte	0xcd
	.byte	0x4
	.byte	0xc
	.4byte	.LASF49
	.byte	0x7
	.byte	0x1f
	.byte	0xe
	.4byte	0xa9
	.byte	0x8
	.byte	0xc
	.4byte	.LASF50
	.byte	0x7
	.byte	0x20
	.byte	0xe
	.4byte	0xa9
	.byte	0xc
	.byte	0xc
	.4byte	.LASF51
	.byte	0x7
	.byte	0x21
	.byte	0x9
	.4byte	0x75
	.byte	0x10
	.byte	0xc
	.4byte	.LASF52
	.byte	0x7
	.byte	0x22
	.byte	0x9
	.4byte	0x75
	.byte	0x14
	.byte	0xc
	.4byte	.LASF53
	.byte	0x7
	.byte	0x23
	.byte	0x9
	.4byte	0x75
	.byte	0x18
	.byte	0xc
	.4byte	.LASF54
	.byte	0x7
	.byte	0x24
	.byte	0xe
	.4byte	0xa9
	.byte	0x1c
	.byte	0xc
	.4byte	.LASF55
	.byte	0x7
	.byte	0x25
	.byte	0xe
	.4byte	0xa9
	.byte	0x20
	.byte	0xc
	.4byte	.LASF56
	.byte	0x7
	.byte	0x26
	.byte	0xf
	.4byte	0x315
	.byte	0x24
	.byte	0xc
	.4byte	.LASF57
	.byte	0x7
	.byte	0x27
	.byte	0xb
	.4byte	0x83
	.byte	0x28
	.byte	0xc
	.4byte	.LASF58
	.byte	0x7
	.byte	0x28
	.byte	0x11
	.4byte	0x25f
	.byte	0x2c
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0xa9
	.byte	0x3
	.4byte	.LASF59
	.byte	0x7
	.byte	0x29
	.byte	0x3
	.4byte	0x26b
	.byte	0xf
	.4byte	.LASF62
	.byte	0x2
	.byte	0x6e
	.byte	0x5
	.4byte	0x75
	.4byte	.LFB66
	.4byte	.LFE66-.LFB66
	.byte	0x1
	.byte	0x9c
	.4byte	0x43d
	.byte	0x10
	.4byte	.LASF60
	.byte	0x2
	.byte	0x6e
	.byte	0x1d
	.4byte	0x75
	.4byte	.LLST14
	.byte	0x11
	.string	"buf"
	.byte	0x2
	.byte	0x6e
	.byte	0x31
	.4byte	0x315
	.4byte	.LLST15
	.byte	0x12
	.string	"ret"
	.byte	0x2
	.byte	0x70
	.byte	0x9
	.4byte	0x75
	.byte	0x13
	.4byte	.LASF61
	.byte	0x2
	.byte	0x71
	.byte	0x18
	.4byte	0x43d
	.4byte	.LLST16
	.byte	0x14
	.4byte	.LVL93
	.4byte	0x98b
	.byte	0x14
	.4byte	.LVL94
	.4byte	0x997
	.byte	0x15
	.4byte	.LVL95
	.4byte	0x9a4
	.4byte	0x3be
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC18
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC16
	.byte	0x16
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x16
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0x74
	.byte	0
	.byte	0x15
	.4byte	.LVL96
	.4byte	0x9b0
	.4byte	0x3d1
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0x14
	.4byte	.LVL97
	.4byte	0x98b
	.byte	0x14
	.4byte	.LVL98
	.4byte	0x997
	.byte	0x15
	.4byte	.LVL99
	.4byte	0x9a4
	.4byte	0x412
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC19
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC16
	.byte	0x16
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x16
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0x79
	.byte	0
	.byte	0x14
	.4byte	.LVL103
	.4byte	0x9bc
	.byte	0x14
	.4byte	.LVL104
	.4byte	0x9bc
	.byte	0x17
	.4byte	.LVL108
	.4byte	0x9c9
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x31b
	.byte	0xf
	.4byte	.LASF63
	.byte	0x2
	.byte	0x55
	.byte	0x5
	.4byte	0x75
	.4byte	.LFB65
	.4byte	.LFE65-.LFB65
	.byte	0x1
	.byte	0x9c
	.4byte	0x500
	.byte	0x10
	.4byte	.LASF51
	.byte	0x2
	.byte	0x55
	.byte	0x18
	.4byte	0x75
	.4byte	.LLST12
	.byte	0x13
	.4byte	.LASF61
	.byte	0x2
	.byte	0x57
	.byte	0x18
	.4byte	0x43d
	.4byte	.LLST13
	.byte	0x15
	.4byte	.LVL81
	.4byte	0x9d5
	.4byte	0x491
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.byte	0x14
	.4byte	.LVL83
	.4byte	0x98b
	.byte	0x14
	.4byte	.LVL84
	.4byte	0x997
	.byte	0x15
	.4byte	.LVL85
	.4byte	0x9a4
	.4byte	0x4d2
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC17
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC16
	.byte	0x16
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x16
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0x5b
	.byte	0
	.byte	0x14
	.4byte	.LVL88
	.4byte	0x9bc
	.byte	0x15
	.4byte	.LVL90
	.4byte	0x9e1
	.4byte	0x4ef
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x18
	.4byte	.LVL91
	.4byte	0x9ed
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0
	.byte	0xf
	.4byte	.LASF64
	.byte	0x2
	.byte	0x50
	.byte	0x5
	.4byte	0x75
	.4byte	.LFB64
	.4byte	.LFE64-.LFB64
	.byte	0x1
	.byte	0x9c
	.4byte	0x53c
	.byte	0x10
	.4byte	.LASF65
	.byte	0x2
	.byte	0x50
	.byte	0x1c
	.4byte	0xa9
	.4byte	.LLST11
	.byte	0x17
	.4byte	.LVL78
	.4byte	0x9f9
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0
	.byte	0xf
	.4byte	.LASF66
	.byte	0x2
	.byte	0x16
	.byte	0x5
	.4byte	0x75
	.4byte	.LFB63
	.4byte	.LFE63-.LFB63
	.byte	0x1
	.byte	0x9c
	.4byte	0x95c
	.byte	0x10
	.4byte	.LASF67
	.byte	0x2
	.byte	0x16
	.byte	0x23
	.4byte	0xa9
	.4byte	.LLST1
	.byte	0x10
	.4byte	.LASF68
	.byte	0x2
	.byte	0x16
	.byte	0x37
	.4byte	0xa9
	.4byte	.LLST2
	.byte	0x13
	.4byte	.LASF69
	.byte	0x2
	.byte	0x18
	.byte	0x9
	.4byte	0x75
	.4byte	.LLST3
	.byte	0x19
	.string	"fdt"
	.byte	0x2
	.byte	0x19
	.byte	0x11
	.4byte	0xba
	.4byte	.LLST4
	.byte	0x13
	.4byte	.LASF70
	.byte	0x2
	.byte	0x1b
	.byte	0x15
	.4byte	0x95c
	.4byte	.LLST5
	.byte	0xd
	.4byte	.LASF71
	.byte	0x2
	.byte	0x1c
	.byte	0x9
	.4byte	0x75
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x13
	.4byte	.LASF72
	.byte	0x2
	.byte	0x1d
	.byte	0x11
	.4byte	0x97
	.4byte	.LLST6
	.byte	0x13
	.4byte	.LASF73
	.byte	0x2
	.byte	0x1e
	.byte	0x9
	.4byte	0x75
	.4byte	.LLST7
	.byte	0x13
	.4byte	.LASF74
	.byte	0x2
	.byte	0x1f
	.byte	0x9
	.4byte	0x75
	.4byte	.LLST8
	.byte	0x19
	.string	"pin"
	.byte	0x2
	.byte	0x21
	.byte	0xd
	.4byte	0x9d
	.4byte	.LLST9
	.byte	0x13
	.4byte	.LASF65
	.byte	0x2
	.byte	0x22
	.byte	0x9
	.4byte	0x75
	.4byte	.LLST10
	.byte	0x15
	.4byte	.LVL5
	.4byte	0xa05
	.4byte	0x62e
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x16
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0
	.byte	0x14
	.4byte	.LVL6
	.4byte	0x98b
	.byte	0x14
	.4byte	.LVL7
	.4byte	0x997
	.byte	0x15
	.4byte	.LVL8
	.4byte	0x9a4
	.4byte	0x66f
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0x16
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x16
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0x26
	.byte	0
	.byte	0x15
	.4byte	.LVL10
	.4byte	0xa12
	.4byte	0x692
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.byte	0x15
	.4byte	.LVL14
	.4byte	0xa1f
	.4byte	0x6b2
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x14
	.4byte	.LVL21
	.4byte	0x9bc
	.byte	0x14
	.4byte	.LVL24
	.4byte	0x962
	.byte	0x14
	.4byte	.LVL26
	.4byte	0x98b
	.byte	0x14
	.4byte	.LVL27
	.4byte	0x997
	.byte	0x15
	.4byte	.LVL28
	.4byte	0x9a4
	.4byte	0x70b
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0x16
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x16
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0x29
	.byte	0x16
	.byte	0x1
	.byte	0x5f
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0
	.byte	0x14
	.4byte	.LVL29
	.4byte	0x9bc
	.byte	0x14
	.4byte	.LVL31
	.4byte	0x98b
	.byte	0x14
	.4byte	.LVL32
	.4byte	0x997
	.byte	0x15
	.4byte	.LVL33
	.4byte	0x9a4
	.4byte	0x755
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0x16
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x16
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0x2e
	.byte	0
	.byte	0x14
	.4byte	.LVL34
	.4byte	0x9bc
	.byte	0x15
	.4byte	.LVL37
	.4byte	0xa2b
	.4byte	0x781
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0
	.byte	0x14
	.4byte	.LVL39
	.4byte	0x98b
	.byte	0x14
	.4byte	.LVL40
	.4byte	0x997
	.byte	0x14
	.4byte	.LVL42
	.4byte	0x9a4
	.byte	0x14
	.4byte	.LVL44
	.4byte	0x9bc
	.byte	0x15
	.4byte	.LVL45
	.4byte	0xa38
	.4byte	0x7d3
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0x16
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0x16
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0
	.byte	0x14
	.4byte	.LVL48
	.4byte	0x98b
	.byte	0x14
	.4byte	.LVL49
	.4byte	0x997
	.byte	0x15
	.4byte	.LVL52
	.4byte	0xa45
	.4byte	0x807
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x34
	.byte	0
	.byte	0x15
	.4byte	.LVL54
	.4byte	0xa05
	.4byte	0x830
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC11
	.byte	0x16
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0
	.byte	0x14
	.4byte	.LVL55
	.4byte	0x98b
	.byte	0x14
	.4byte	.LVL56
	.4byte	0x997
	.byte	0x15
	.4byte	.LVL57
	.4byte	0x9a4
	.4byte	0x871
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC12
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0x16
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x16
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0x3b
	.byte	0
	.byte	0x14
	.4byte	.LVL58
	.4byte	0x9bc
	.byte	0x14
	.4byte	.LVL59
	.4byte	0x9bc
	.byte	0x14
	.4byte	.LVL62
	.4byte	0x962
	.byte	0x14
	.4byte	.LVL64
	.4byte	0x98b
	.byte	0x14
	.4byte	.LVL65
	.4byte	0x997
	.byte	0x15
	.4byte	.LVL66
	.4byte	0x9a4
	.4byte	0x8d6
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC13
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0x16
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x16
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0x3e
	.byte	0x16
	.byte	0x1
	.byte	0x5f
	.byte	0x5
	.byte	0x86
	.byte	0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0
	.byte	0x15
	.4byte	.LVL67
	.4byte	0xa05
	.4byte	0x8ff
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC14
	.byte	0x16
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0
	.byte	0x14
	.4byte	.LVL68
	.4byte	0x98b
	.byte	0x14
	.4byte	.LVL69
	.4byte	0x997
	.byte	0x15
	.4byte	.LVL70
	.4byte	0x9a4
	.4byte	0x940
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC15
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0x16
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x16
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0x41
	.byte	0
	.byte	0x14
	.4byte	.LVL71
	.4byte	0x9bc
	.byte	0x14
	.4byte	.LVL72
	.4byte	0x9bc
	.byte	0x14
	.4byte	.LVL75
	.4byte	0x962
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0xb5
	.byte	0x1a
	.4byte	.LASF95
	.byte	0x1
	.byte	0x5b
	.byte	0x18
	.4byte	0xa9
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0x98b
	.byte	0x11
	.string	"x"
	.byte	0x1
	.byte	0x5b
	.byte	0x2d
	.4byte	0xc1
	.4byte	.LLST0
	.byte	0
	.byte	0x1b
	.4byte	.LASF75
	.4byte	.LASF75
	.byte	0x8
	.byte	0x98
	.byte	0xc
	.byte	0x1c
	.4byte	.LASF76
	.4byte	.LASF76
	.byte	0x9
	.2byte	0x558
	.byte	0xc
	.byte	0x1b
	.4byte	.LASF77
	.4byte	.LASF77
	.byte	0xa
	.byte	0x81
	.byte	0x6
	.byte	0x1b
	.4byte	.LASF78
	.4byte	.LASF78
	.byte	0xb
	.byte	0x31
	.byte	0x7
	.byte	0x1c
	.4byte	.LASF79
	.4byte	.LASF79
	.byte	0x9
	.2byte	0x547
	.byte	0xc
	.byte	0x1b
	.4byte	.LASF80
	.4byte	.LASF80
	.byte	0x7
	.byte	0x34
	.byte	0x5
	.byte	0x1b
	.4byte	.LASF81
	.4byte	.LASF81
	.byte	0xc
	.byte	0x91
	.byte	0x7
	.byte	0x1b
	.4byte	.LASF82
	.4byte	.LASF82
	.byte	0x7
	.byte	0x33
	.byte	0x5
	.byte	0x1b
	.4byte	.LASF83
	.4byte	.LASF83
	.byte	0x7
	.byte	0x32
	.byte	0x6
	.byte	0x1b
	.4byte	.LASF84
	.4byte	.LASF84
	.byte	0x7
	.byte	0x2f
	.byte	0x5
	.byte	0x1c
	.4byte	.LASF85
	.4byte	.LASF85
	.byte	0xd
	.2byte	0x2f4
	.byte	0xd
	.byte	0x1c
	.4byte	.LASF86
	.4byte	.LASF86
	.byte	0xd
	.2byte	0x1c1
	.byte	0x5
	.byte	0x1b
	.4byte	.LASF87
	.4byte	.LASF87
	.byte	0x7
	.byte	0x2e
	.byte	0x5
	.byte	0x1c
	.4byte	.LASF88
	.4byte	.LASF88
	.byte	0xd
	.2byte	0x423
	.byte	0x5
	.byte	0x1c
	.4byte	.LASF89
	.4byte	.LASF89
	.byte	0xd
	.2byte	0x453
	.byte	0xd
	.byte	0x1b
	.4byte	.LASF90
	.4byte	.LASF90
	.byte	0xe
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
	.byte	0x26
	.byte	0
	.byte	0
	.byte	0
	.byte	0x9
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
	.byte	0xa
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xb
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
	.byte	0xc
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
	.byte	0xd
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
	.byte	0x3f
	.byte	0x19
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0xf
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
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x11
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
	.byte	0x12
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
	.byte	0x17
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
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x17
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
.LLST14:
	.4byte	.LVL92
	.4byte	.LVL93-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL93-1
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL101
	.4byte	.LVL102
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL102
	.4byte	.LVL107
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL107
	.4byte	.LVL108-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL108-1
	.4byte	.LFE66
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL92
	.4byte	.LVL93-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL93-1
	.4byte	.LVL100
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL100
	.4byte	.LVL102
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL102
	.4byte	.LVL106
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL106
	.4byte	.LVL108-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL108-1
	.4byte	.LFE66
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL96
	.4byte	.LVL97-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL105
	.4byte	.LVL108-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL79
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL80
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL86
	.4byte	.LVL87
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL87
	.4byte	.LFE65
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL81
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL89
	.4byte	.LVL90-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL90-1
	.4byte	.LFE65
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL77
	.4byte	.LVL78-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL78-1
	.4byte	.LFE64
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL2
	.4byte	.LVL5-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL5-1
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL16
	.4byte	.LVL20
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LFE63
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL2
	.4byte	.LVL5-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL5-1
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL12
	.4byte	.LVL20
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL38
	.4byte	.LFE63
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL2
	.4byte	.LVL11
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL12
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL20
	.4byte	.LVL30
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LVL31-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL31-1
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL36
	.4byte	.LFE63
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL3
	.4byte	.LVL5-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL5-1
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL16
	.4byte	.LVL20
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LFE63
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL3
	.4byte	.LVL5
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL6-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL54
	.4byte	.LVL55-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL60
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL67
	.4byte	.LVL68-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL73
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL4
	.4byte	.LVL12
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL41
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL43
	.4byte	.LVL46
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL47
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL50
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL51
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL4
	.4byte	.LVL12
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL38
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL38
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL43
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL50
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL4
	.4byte	.LVL9
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL20
	.4byte	.LVL25
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LVL26-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL26-1
	.4byte	.LFE63
	.2byte	0x1
	.byte	0x65
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL4
	.4byte	.LVL13
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL20
	.4byte	.LVL63
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL63
	.4byte	.LFE63
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL4
	.4byte	.LVL13
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL20
	.4byte	.LVL76
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL76
	.4byte	.LFE63
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
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
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB63
	.4byte	.LFE63-.LFB63
	.4byte	.LFB64
	.4byte	.LFE64-.LFB64
	.4byte	.LFB65
	.4byte	.LFE65-.LFB65
	.4byte	.LFB66
	.4byte	.LFE66-.LFB66
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB63
	.4byte	.LFE63
	.4byte	.LFB64
	.4byte	.LFE64
	.4byte	.LFB65
	.4byte	.LFE65
	.4byte	.LFB66
	.4byte	.LFE66
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF31:
	.string	"_blog_info"
.LASF72:
	.string	"result"
.LASF95:
	.string	"fdt32_to_cpu"
.LASF30:
	.string	"_fsymf_info_hosalhal_ir"
.LASF65:
	.string	"data_check"
.LASF85:
	.string	"fdt_getprop"
.LASF94:
	.string	"_blog_leve"
.LASF57:
	.string	"ptxlli"
.LASF69:
	.string	"offset1"
.LASF74:
	.string	"ctrltype"
.LASF58:
	.string	"dev_spi"
.LASF2:
	.string	"short int"
.LASF50:
	.string	"reset_size"
.LASF44:
	.string	"spi_dma_ir_event_group"
.LASF6:
	.string	"__uint32_t"
.LASF35:
	.string	"mode"
.LASF27:
	.string	"_fsymc_info_hosal"
.LASF89:
	.string	"fdt_stringlist_get"
.LASF43:
	.string	"pin_miso"
.LASF83:
	.string	"bl_spi_dma_init"
.LASF42:
	.string	"pin_mosi"
.LASF12:
	.string	"uint8_t"
.LASF19:
	.string	"BLOG_LEVEL_ERROR"
.LASF75:
	.string	"xPortIsInsideInterrupt"
.LASF73:
	.string	"countindex"
.LASF49:
	.string	"left_size"
.LASF0:
	.string	"signed char"
.LASF64:
	.string	"hal_ir_config"
.LASF36:
	.string	"freq"
.LASF8:
	.string	"long long int"
.LASF26:
	.string	"BLOG_HARD_DECLARE_DISABLE"
.LASF54:
	.string	"data_idx"
.LASF4:
	.string	"long int"
.LASF5:
	.string	"__uint8_t"
.LASF79:
	.string	"xTaskGetTickCount"
.LASF1:
	.string	"unsigned char"
.LASF88:
	.string	"fdt_stringlist_count"
.LASF24:
	.string	"name"
.LASF60:
	.string	"data_num"
.LASF82:
	.string	"bl_spi_hw_init"
.LASF71:
	.string	"lentmp"
.LASF34:
	.string	"ssp_id"
.LASF67:
	.string	"fdt_input"
.LASF84:
	.string	"bl_ir_data_check_config"
.LASF90:
	.string	"memcmp"
.LASF20:
	.string	"BLOG_LEVEL_ASSERT"
.LASF39:
	.string	"rx_dma_ch"
.LASF9:
	.string	"long long unsigned int"
.LASF13:
	.string	"uint32_t"
.LASF10:
	.string	"unsigned int"
.LASF40:
	.string	"pin_clk"
.LASF17:
	.string	"BLOG_LEVEL_INFO"
.LASF29:
	.string	"_fsymf_level_hosalhal_ir"
.LASF38:
	.string	"tx_dma_ch"
.LASF14:
	.string	"fdt32_t"
.LASF47:
	.string	"pp_buf0"
.LASF48:
	.string	"pp_buf1"
.LASF68:
	.string	"dtb_offset"
.LASF66:
	.string	"hal_ir_init_from_dts"
.LASF11:
	.string	"char"
.LASF59:
	.string	"private_ir_data_t"
.LASF70:
	.string	"addr_prop"
.LASF3:
	.string	"short unsigned int"
.LASF53:
	.string	"buf_flag"
.LASF46:
	.string	"_private_ir_data"
.LASF15:
	.string	"BLOG_LEVEL_ALL"
.LASF25:
	.string	"blog_info_t"
.LASF7:
	.string	"long unsigned int"
.LASF41:
	.string	"pin_cs"
.LASF87:
	.string	"bl_ir_init"
.LASF63:
	.string	"hal_irled_init"
.LASF93:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/hosal"
.LASF51:
	.string	"chip_type"
.LASF28:
	.string	"_fsymc_level_hosal"
.LASF76:
	.string	"xTaskGetTickCountFromISR"
.LASF23:
	.string	"level"
.LASF80:
	.string	"bl_spi_dma_trans"
.LASF33:
	.string	"used"
.LASF62:
	.string	"hal_irled_send_data"
.LASF55:
	.string	"chip_coe"
.LASF77:
	.string	"bl_printk"
.LASF18:
	.string	"BLOG_LEVEL_WARN"
.LASF21:
	.string	"BLOG_LEVEL_NEVER"
.LASF56:
	.string	"p_data"
.LASF22:
	.string	"blog_level_t"
.LASF61:
	.string	"pstctx"
.LASF37:
	.string	"polar_phase"
.LASF16:
	.string	"BLOG_LEVEL_DEBUG"
.LASF32:
	.string	"_spi_ir_hw"
.LASF52:
	.string	"end_flag"
.LASF86:
	.string	"fdt_subnode_offset"
.LASF45:
	.string	"spi_ir_hw_t"
.LASF81:
	.string	"pvPortMalloc"
.LASF92:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/bl602_hal/hal_ir.c"
.LASF78:
	.string	"bl_dma_find_ctx_by_channel"
.LASF91:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
