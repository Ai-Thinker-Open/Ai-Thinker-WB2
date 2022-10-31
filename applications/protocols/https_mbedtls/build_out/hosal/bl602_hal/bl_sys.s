	.file	"bl_sys.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.bl_sys_rstinfo_get,"ax",@progbits
	.align	1
	.globl	bl_sys_rstinfo_get
	.type	bl_sys_rstinfo_get, @function
bl_sys_rstinfo_get:
.LFB8:
	.file 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/bl602_hal/bl_sys.c"
	.loc 1 29 1
	.cfi_startproc
	.loc 1 30 5
	.loc 1 30 21 is_stmt 0
	lui	a5,%hi(.LANCHOR0)
	addi	a5,a5,%lo(.LANCHOR0)
	lw	a0,0(a5)
.LVL0:
	.loc 1 32 5 is_stmt 1
	.loc 1 32 18 is_stmt 0
	sw	zero,0(a5)
	.loc 1 34 5 is_stmt 1
	.loc 1 35 1 is_stmt 0
	ret
	.cfi_endproc
.LFE8:
	.size	bl_sys_rstinfo_get, .-bl_sys_rstinfo_get
	.section	.text.bl_sys_rstinfo_set,"ax",@progbits
	.align	1
	.globl	bl_sys_rstinfo_set
	.type	bl_sys_rstinfo_set, @function
bl_sys_rstinfo_set:
.LFB9:
	.loc 1 38 1 is_stmt 1
	.cfi_startproc
.LVL1:
	.loc 1 39 5
	.loc 1 39 8 is_stmt 0
	li	a5,3
	bne	a0,a5,.L3
	.loc 1 40 9 is_stmt 1
	.loc 1 40 46 is_stmt 0
	li	a5,2003070976
	li	a4,1073807360
	addi	a5,a5,-153
.L5:
	.loc 1 42 46
	sw	a5,0(a4)
.L4:
	.loc 1 45 5 is_stmt 1
	.loc 1 46 1 is_stmt 0
	li	a0,0
.LVL2:
	ret
.LVL3:
.L3:
	.loc 1 41 12 is_stmt 1
	.loc 1 41 15 is_stmt 0
	li	a5,4
	bne	a0,a5,.L4
	.loc 1 42 9 is_stmt 1
	.loc 1 42 46 is_stmt 0
	li	a5,1936678912
	li	a4,1073807360
	addi	a5,a5,1652
	j	.L5
	.cfi_endproc
.LFE9:
	.size	bl_sys_rstinfo_set, .-bl_sys_rstinfo_set
	.section	.text.bl_sys_rstinfo_init,"ax",@progbits
	.align	1
	.globl	bl_sys_rstinfo_init
	.type	bl_sys_rstinfo_init, @function
bl_sys_rstinfo_init:
.LFB10:
	.loc 1 49 1 is_stmt 1
	.cfi_startproc
	.loc 1 50 5
	.loc 1 50 10 is_stmt 0
	li	a3,1073807360
	lw	a2,0(a3)
	.loc 1 50 8
	li	a4,2003070976
	lui	a5,%hi(.LANCHOR0)
	addi	a4,a4,-153
	addi	a5,a5,%lo(.LANCHOR0)
	bne	a2,a4,.L7
	.loc 1 51 9 is_stmt 1
	.loc 1 51 22 is_stmt 0
	li	a4,3
.L10:
	.loc 1 53 22
	sw	a4,0(a5)
.L8:
	.loc 1 58 5 is_stmt 1
.LVL4:
.LBB12:
.LBB13:
	.loc 1 39 5
	.loc 1 40 9
	.loc 1 40 46 is_stmt 0
	li	a5,2003070976
	li	a4,1073807360
	addi	a5,a5,-153
	sw	a5,0(a4)
	.loc 1 45 5 is_stmt 1
.LVL5:
.LBE13:
.LBE12:
	.loc 1 59 1 is_stmt 0
	ret
.L7:
	.loc 1 52 12 is_stmt 1
	.loc 1 52 17 is_stmt 0
	lw	a3,0(a3)
	.loc 1 52 15
	li	a4,1936678912
	addi	a4,a4,1652
	bne	a3,a4,.L9
	.loc 1 53 9 is_stmt 1
	.loc 1 53 22 is_stmt 0
	li	a4,4
	j	.L10
.L9:
	.loc 1 55 9 is_stmt 1
	.loc 1 55 22 is_stmt 0
	sw	zero,0(a5)
	j	.L8
	.cfi_endproc
.LFE10:
	.size	bl_sys_rstinfo_init, .-bl_sys_rstinfo_init
	.section	.text.bl_sys_rstinfo_getsting,"ax",@progbits
	.align	1
	.globl	bl_sys_rstinfo_getsting
	.type	bl_sys_rstinfo_getsting, @function
bl_sys_rstinfo_getsting:
.LFB11:
	.loc 1 62 1 is_stmt 1
	.cfi_startproc
.LVL6:
	.loc 1 63 5
	.loc 1 62 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s2,16(sp)
	.cfi_offset 18, -16
	.loc 1 63 5
	lui	s2,%hi(.LANCHOR0)
	addi	s2,s2,%lo(.LANCHOR0)
	.loc 1 63 18
	lw	a5,0(s2)
	.loc 1 62 1
	sw	s1,20(sp)
	.cfi_offset 9, -12
	.loc 1 63 18
	lui	s1,%hi(.LANCHOR1)
	addi	s1,s1,%lo(.LANCHOR1)
	slli	a5,a5,2
	add	a5,s1,a5
	lw	a1,0(a5)
	.loc 1 62 1
	sw	s0,24(sp)
	.cfi_offset 8, -8
	mv	s0,a0
	.loc 1 63 5
	mv	a0,a1
.LVL7:
	.loc 1 62 1
	sw	ra,28(sp)
	.cfi_offset 1, -4
	.loc 1 63 5
	sw	a1,12(sp)
	call	strlen
.LVL8:
	lw	a1,12(sp)
	mv	a2,a0
	mv	a0,s0
	call	memcpy
.LVL9:
	.loc 1 64 5 is_stmt 1
	.loc 1 64 37 is_stmt 0
	lw	a5,0(s2)
	slli	a5,a5,2
	add	s1,s1,a5
	.loc 1 64 14
	lw	a0,0(s1)
	call	strlen
.LVL10:
	.loc 1 64 54
	add	s0,s0,a0
.LVL11:
	sb	zero,0(s0)
	.loc 1 65 5 is_stmt 1
	.loc 1 66 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	lw	s1,20(sp)
	.cfi_restore 9
	lw	s2,16(sp)
	.cfi_restore 18
	li	a0,0
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE11:
	.size	bl_sys_rstinfo_getsting, .-bl_sys_rstinfo_getsting
	.section	.text.bl_sys_logall_enable,"ax",@progbits
	.align	1
	.globl	bl_sys_logall_enable
	.type	bl_sys_logall_enable, @function
bl_sys_logall_enable:
.LFB12:
	.loc 1 69 1 is_stmt 1
	.cfi_startproc
	.loc 1 70 5
	.loc 1 70 24 is_stmt 0
	lui	a5,%hi(.LANCHOR2)
	li	a4,1
	sb	a4,%lo(.LANCHOR2)(a5)
	.loc 1 71 5 is_stmt 1
	.loc 1 72 1 is_stmt 0
	li	a0,0
	ret
	.cfi_endproc
.LFE12:
	.size	bl_sys_logall_enable, .-bl_sys_logall_enable
	.section	.text.bl_sys_logall_disable,"ax",@progbits
	.align	1
	.globl	bl_sys_logall_disable
	.type	bl_sys_logall_disable, @function
bl_sys_logall_disable:
.LFB13:
	.loc 1 75 1 is_stmt 1
	.cfi_startproc
	.loc 1 76 5
	.loc 1 76 24 is_stmt 0
	lui	a5,%hi(.LANCHOR2)
	sb	zero,%lo(.LANCHOR2)(a5)
	.loc 1 77 5 is_stmt 1
	.loc 1 78 1 is_stmt 0
	li	a0,0
	ret
	.cfi_endproc
.LFE13:
	.size	bl_sys_logall_disable, .-bl_sys_logall_disable
	.section	.text.bl_sys_mfg_config,"ax",@progbits
	.align	1
	.globl	bl_sys_mfg_config
	.type	bl_sys_mfg_config, @function
bl_sys_mfg_config:
.LFB14:
	.loc 1 81 1 is_stmt 1
	.cfi_startproc
	.loc 1 82 5
.LVL12:
	.loc 1 89 5
	.loc 1 89 41 is_stmt 0
	li	a5,1734766592
	li	a4,1073803264
	addi	a5,a5,-720
	sw	a5,256(a4)
.LVL13:
	.loc 1 90 1
	ret
	.cfi_endproc
.LFE14:
	.size	bl_sys_mfg_config, .-bl_sys_mfg_config
	.section	.text.bl_sys_reset_por,"ax",@progbits
	.align	1
	.globl	bl_sys_reset_por
	.type	bl_sys_reset_por, @function
bl_sys_reset_por:
.LFB15:
	.loc 1 93 1 is_stmt 1
	.cfi_startproc
	.loc 1 94 5
.LVL14:
.LBB14:
.LBB15:
	.loc 1 39 5
	.loc 1 41 12
	.loc 1 42 9
.LBE15:
.LBE14:
	.loc 1 93 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
.LBB18:
.LBB16:
	.loc 1 42 46
	li	a5,1936678912
.LBE16:
.LBE18:
	.loc 1 93 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
.LBB19:
.LBB17:
	.loc 1 42 46
	li	a4,1073807360
	addi	a5,a5,1652
	sw	a5,0(a4)
	.loc 1 45 5 is_stmt 1
.LVL15:
.LBE17:
.LBE19:
	.loc 1 95 5
.LBB20:
.LBB21:
	.file 2 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/RISCV/Core/Include/cmsis_compatible_gcc.h"
	.loc 2 94 3
 #APP
# 94 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/RISCV/Core/Include/cmsis_compatible_gcc.h" 1
	csrci mstatus, 8
# 0 "" 2
 #NO_APP
.LBE21:
.LBE20:
	.loc 1 96 5
	call	GLB_SW_POR_Reset
.LVL16:
.L17:
	.loc 1 97 5 discriminator 1
	.loc 1 99 5 discriminator 1
	.loc 1 97 11 discriminator 1
	j	.L17
	.cfi_endproc
.LFE15:
	.size	bl_sys_reset_por, .-bl_sys_reset_por
	.section	.text.bl_sys_reset_system,"ax",@progbits
	.align	1
	.globl	bl_sys_reset_system
	.type	bl_sys_reset_system, @function
bl_sys_reset_system:
.LFB16:
	.loc 1 105 1
	.cfi_startproc
	.loc 1 106 5
.LBB22:
.LBB23:
	.loc 2 94 3
.LBE23:
.LBE22:
	.loc 1 105 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
.LBB25:
.LBB24:
	.loc 2 94 3
 #APP
# 94 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/RISCV/Core/Include/cmsis_compatible_gcc.h" 1
	csrci mstatus, 8
# 0 "" 2
 #NO_APP
.LBE24:
.LBE25:
	.loc 1 107 5 is_stmt 1
	call	GLB_SW_System_Reset
.LVL17:
.L20:
	.loc 1 108 5 discriminator 1
	.loc 1 110 5 discriminator 1
	.loc 1 108 11 discriminator 1
	j	.L20
	.cfi_endproc
.LFE16:
	.size	bl_sys_reset_system, .-bl_sys_reset_system
	.section	.text.bl_sys_isxipaddr,"ax",@progbits
	.align	1
	.globl	bl_sys_isxipaddr
	.type	bl_sys_isxipaddr, @function
bl_sys_isxipaddr:
.LFB17:
	.loc 1 114 1
	.cfi_startproc
.LVL18:
	.loc 1 115 5
	.loc 1 115 16 is_stmt 0
	li	a5,-16777216
	and	a0,a0,a5
.LVL19:
	.loc 1 115 8
	li	a5,-587202560
	add	a0,a0,a5
	li	a5,-553648128
	and	a0,a0,a5
	.loc 1 119 1
	seqz	a0,a0
	ret
	.cfi_endproc
.LFE17:
	.size	bl_sys_isxipaddr, .-bl_sys_isxipaddr
	.section	.text.bl_sys_em_config,"ax",@progbits
	.align	1
	.globl	bl_sys_em_config
	.type	bl_sys_em_config, @function
bl_sys_em_config:
.LFB18:
	.loc 1 122 1 is_stmt 1
	.cfi_startproc
	.loc 1 123 5
	.loc 1 124 5
	.loc 1 126 5
	.loc 1 126 15 is_stmt 0
	lui	a5,%hi(__LD_CONFIG_EM_SEL)
	.loc 1 122 1
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	.loc 1 126 15
	addi	a5,a5,%lo(__LD_CONFIG_EM_SEL)
	.loc 1 126 13
	sw	a5,12(sp)
	.loc 1 128 5 is_stmt 1
	lw	a5,12(sp)
	.loc 1 122 1 is_stmt 0
	sw	ra,28(sp)
	.cfi_offset 1, -4
	.loc 1 128 5
	li	a4,8192
	beq	a5,a4,.L24
	li	a4,16384
	beq	a5,a4,.L25
	.loc 1 131 13
	li	a0,0
	.loc 1 128 5
	beq	a5,zero,.L28
.L26:
	.loc 1 147 9 is_stmt 1
	.loc 1 150 5
	.loc 1 151 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	li	a0,0
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.L24:
	.cfi_restore_state
	.loc 1 136 13 is_stmt 1
	li	a0,3
.L28:
	.loc 1 141 13 is_stmt 0
	call	GLB_Set_EM_Sel
.LVL20:
	.loc 1 143 9 is_stmt 1
	j	.L26
.L25:
	.loc 1 141 13
	li	a0,15
	j	.L28
	.cfi_endproc
.LFE18:
	.size	bl_sys_em_config, .-bl_sys_em_config
	.section	.text.bl_sys_early_init,"ax",@progbits
	.align	1
	.globl	bl_sys_early_init
	.type	bl_sys_early_init, @function
bl_sys_early_init:
.LFB19:
	.loc 1 154 1
	.cfi_startproc
	.loc 1 163 5
	.loc 1 154 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	.cfi_offset 1, -4
	.loc 1 163 5
	call	bl_flash_init
.LVL21:
	.loc 1 166 5 is_stmt 1
	.loc 1 167 5
	.loc 1 169 5
	.loc 1 169 13 is_stmt 0
	addi	a0,sp,15
	call	EF_Ctrl_Read_Ldo11VoutSel_Opt
.LVL22:
	.loc 1 169 7
	bne	a0,zero,.L30
	.loc 1 170 9 is_stmt 1
	lbu	a0,15(sp)
	call	HBN_Set_Ldo11_Soc_Vout
.LVL23:
.L30:
	.loc 1 173 5
	.loc 1 174 5
	li	a0,1
	call	HBN_Aon_Pad_IeSmt_Cfg
.LVL24:
	.loc 1 176 5
	.loc 1 177 5
	.loc 1 177 204
	lui	a5,%hi(freertos_risc_v_trap_handler)
	addi	a5,a5,%lo(freertos_risc_v_trap_handler)
 #APP
# 177 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/bl602_hal/bl_sys.c" 1
	csrw mtvec, a5
# 0 "" 2
	.loc 1 180 5
 #NO_APP
	li	a0,21
	call	GLB_AHB_Slave1_Reset
.LVL25:
	.loc 1 182 5
	.loc 1 183 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_restore 1
	li	a0,0
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE19:
	.size	bl_sys_early_init, .-bl_sys_early_init
	.section	.text.bl_sys_init,"ax",@progbits
	.align	1
	.globl	bl_sys_init
	.type	bl_sys_init, @function
bl_sys_init:
.LFB20:
	.loc 1 186 1 is_stmt 1
	.cfi_startproc
	.loc 1 187 5
	.loc 1 186 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 187 5
	call	bl_sys_em_config
.LVL26:
	.loc 1 188 5 is_stmt 1
	call	bl_sys_rstinfo_get
.LVL27:
	.loc 1 189 5
	call	bl_sys_rstinfo_init
.LVL28:
	.loc 1 190 5
	.loc 1 191 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE20:
	.size	bl_sys_init, .-bl_sys_init
	.globl	sys_log_all_enable
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"BL_RST_POWER_OFF"
	.align	2
.LC1:
	.string	"BL_RST_HARDWARE_WATCHDOG"
	.align	2
.LC2:
	.string	"BL_RST_FATAL_EXCEPTION"
	.align	2
.LC3:
	.string	"BL_RST_SOFTWARE_WATCHDOG"
	.align	2
.LC4:
	.string	"BL_RST_SOFTWARE"
	.section	.rodata.RST_REASON_ARRAY,"a"
	.align	2
	.set	.LANCHOR1,. + 0
	.type	RST_REASON_ARRAY, @object
	.size	RST_REASON_ARRAY, 20
RST_REASON_ARRAY:
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.word	.LC3
	.word	.LC4
	.section	.sbss.s_rst_reason,"aw",@nobits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	s_rst_reason, @object
	.size	s_rst_reason, 4
s_rst_reason:
	.zero	4
	.section	.sdata.sys_log_all_enable,"aw"
	.set	.LANCHOR2,. + 0
	.type	sys_log_all_enable, @object
	.size	sys_log_all_enable, 1
sys_log_all_enable:
	.byte	1
	.text
.Letext0:
	.file 3 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.file 4 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/bl602.h"
	.file 5 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_common.h"
	.file 6 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_hbn.h"
	.file 7 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_glb.h"
	.file 8 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/bl602_hal/bl_sys.h"
	.file 9 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/bl602_hal/bl_flash.h"
	.file 10 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x669
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF101
	.byte	0xc
	.4byte	.LASF102
	.4byte	.LASF103
	.4byte	.Ldebug_ranges0+0x38
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF25
	.byte	0x3
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x4
	.byte	0xd3
	.byte	0xe
	.4byte	0xd1
	.byte	0x4
	.4byte	.LASF0
	.byte	0
	.byte	0x4
	.4byte	.LASF1
	.byte	0x1
	.byte	0x4
	.4byte	.LASF2
	.byte	0x2
	.byte	0x4
	.4byte	.LASF3
	.byte	0x3
	.byte	0x4
	.4byte	.LASF4
	.byte	0x4
	.byte	0x4
	.4byte	.LASF5
	.byte	0x5
	.byte	0x4
	.4byte	.LASF6
	.byte	0x6
	.byte	0x4
	.4byte	.LASF7
	.byte	0x7
	.byte	0x4
	.4byte	.LASF8
	.byte	0x8
	.byte	0x4
	.4byte	.LASF9
	.byte	0x9
	.byte	0x4
	.4byte	.LASF10
	.byte	0xa
	.byte	0x4
	.4byte	.LASF11
	.byte	0xb
	.byte	0x4
	.4byte	.LASF12
	.byte	0xc
	.byte	0x4
	.4byte	.LASF13
	.byte	0xd
	.byte	0x4
	.4byte	.LASF14
	.byte	0xe
	.byte	0x4
	.4byte	.LASF15
	.byte	0xf
	.byte	0x4
	.4byte	.LASF16
	.byte	0x10
	.byte	0x4
	.4byte	.LASF17
	.byte	0x11
	.byte	0x4
	.4byte	.LASF18
	.byte	0x12
	.byte	0x4
	.4byte	.LASF19
	.byte	0x13
	.byte	0x4
	.4byte	.LASF20
	.byte	0x14
	.byte	0x4
	.4byte	.LASF21
	.byte	0x15
	.byte	0x4
	.4byte	.LASF22
	.byte	0x16
	.byte	0x4
	.4byte	.LASF23
	.byte	0x17
	.byte	0x4
	.4byte	.LASF24
	.byte	0x18
	.byte	0
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF26
	.byte	0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF27
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF28
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF29
	.byte	0x5
	.4byte	.LASF32
	.byte	0x3
	.byte	0x2e
	.byte	0x17
	.4byte	0xf9
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF30
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF31
	.byte	0x5
	.4byte	.LASF33
	.byte	0x3
	.byte	0x34
	.byte	0x1b
	.4byte	0x118
	.byte	0x6
	.4byte	0x107
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF34
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF35
	.byte	0x7
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x8
	.byte	0x4
	.4byte	0x133
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF36
	.byte	0x3
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x5
	.byte	0x17
	.byte	0x1
	.4byte	0x15b
	.byte	0x4
	.4byte	.LASF37
	.byte	0
	.byte	0x4
	.4byte	.LASF38
	.byte	0x1
	.byte	0x4
	.4byte	.LASF39
	.byte	0x2
	.byte	0
	.byte	0x5
	.4byte	.LASF40
	.byte	0x5
	.byte	0x1b
	.byte	0x2
	.4byte	0x13a
	.byte	0x9
	.4byte	0xed
	.4byte	0x177
	.byte	0xa
	.4byte	0x25
	.byte	0x3
	.byte	0
	.byte	0x3
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x6
	.byte	0xc4
	.byte	0xe
	.4byte	0x1e6
	.byte	0x4
	.4byte	.LASF41
	.byte	0
	.byte	0x4
	.4byte	.LASF42
	.byte	0x1
	.byte	0x4
	.4byte	.LASF43
	.byte	0x2
	.byte	0x4
	.4byte	.LASF44
	.byte	0x3
	.byte	0x4
	.4byte	.LASF45
	.byte	0x4
	.byte	0x4
	.4byte	.LASF46
	.byte	0x5
	.byte	0x4
	.4byte	.LASF47
	.byte	0x6
	.byte	0x4
	.4byte	.LASF48
	.byte	0x7
	.byte	0x4
	.4byte	.LASF49
	.byte	0x8
	.byte	0x4
	.4byte	.LASF50
	.byte	0x9
	.byte	0x4
	.4byte	.LASF51
	.byte	0xa
	.byte	0x4
	.4byte	.LASF52
	.byte	0xb
	.byte	0x4
	.4byte	.LASF53
	.byte	0xc
	.byte	0x4
	.4byte	.LASF54
	.byte	0xd
	.byte	0x4
	.4byte	.LASF55
	.byte	0xe
	.byte	0x4
	.4byte	.LASF56
	.byte	0xf
	.byte	0
	.byte	0x5
	.4byte	.LASF57
	.byte	0x6
	.byte	0xd5
	.byte	0x2
	.4byte	0x177
	.byte	0x3
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x7
	.byte	0xae
	.byte	0xe
	.4byte	0x213
	.byte	0x4
	.4byte	.LASF58
	.byte	0
	.byte	0x4
	.4byte	.LASF59
	.byte	0x3
	.byte	0x4
	.4byte	.LASF60
	.byte	0xf
	.byte	0
	.byte	0x3
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x8
	.byte	0x6
	.byte	0xe
	.4byte	0x240
	.byte	0x4
	.4byte	.LASF61
	.byte	0
	.byte	0x4
	.4byte	.LASF62
	.byte	0x1
	.byte	0x4
	.4byte	.LASF63
	.byte	0x2
	.byte	0x4
	.4byte	.LASF64
	.byte	0x3
	.byte	0x4
	.4byte	.LASF65
	.byte	0x4
	.byte	0
	.byte	0x5
	.4byte	.LASF66
	.byte	0x8
	.byte	0xc
	.byte	0x3
	.4byte	0x213
	.byte	0xb
	.4byte	.LASF67
	.byte	0x1
	.byte	0x11
	.byte	0x18
	.4byte	0x240
	.byte	0x5
	.byte	0x3
	.4byte	s_rst_reason
	.byte	0x9
	.4byte	0x12d
	.4byte	0x26e
	.byte	0xa
	.4byte	0x25
	.byte	0x4
	.byte	0
	.byte	0xb
	.4byte	.LASF68
	.byte	0x1
	.byte	0x13
	.byte	0xe
	.4byte	0x25e
	.byte	0x5
	.byte	0x3
	.4byte	RST_REASON_ARRAY
	.byte	0xc
	.4byte	.LASF76
	.byte	0x1
	.byte	0x1a
	.byte	0xe
	.4byte	0x299
	.byte	0x5
	.byte	0x3
	.4byte	sys_log_all_enable
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF69
	.byte	0x6
	.4byte	0x292
	.byte	0xd
	.4byte	.LASF70
	.byte	0x1
	.byte	0xb9
	.byte	0x5
	.4byte	0x126
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x1
	.byte	0x9c
	.4byte	0x2d4
	.byte	0xe
	.4byte	.LVL26
	.4byte	0x380
	.byte	0xe
	.4byte	.LVL27
	.4byte	0x5a0
	.byte	0xe
	.4byte	.LVL28
	.4byte	0x551
	.byte	0
	.byte	0xd
	.4byte	.LASF71
	.byte	0x1
	.byte	0x99
	.byte	0x5
	.4byte	0x126
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x1
	.byte	0x9c
	.4byte	0x37a
	.byte	0xb
	.4byte	.LASF72
	.byte	0x1
	.byte	0xa6
	.byte	0xd
	.4byte	0xed
	.byte	0x2
	.byte	0x91
	.byte	0x6f
	.byte	0xf
	.4byte	.LASF73
	.byte	0x1
	.byte	0xa7
	.byte	0x18
	.4byte	0x15b
	.4byte	0x313
	.byte	0x10
	.4byte	0x37a
	.byte	0
	.byte	0xf
	.4byte	.LASF74
	.byte	0x1
	.byte	0xad
	.byte	0x18
	.4byte	0x15b
	.4byte	0x329
	.byte	0x10
	.4byte	0xed
	.byte	0
	.byte	0x11
	.4byte	.LASF104
	.byte	0x1
	.byte	0xb0
	.byte	0x11
	.byte	0xe
	.4byte	.LVL21
	.4byte	0x5ef
	.byte	0x12
	.4byte	.LVL22
	.4byte	0x5fb
	.4byte	0x34e
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x6f
	.byte	0
	.byte	0xe
	.4byte	.LVL23
	.4byte	0x607
	.byte	0x12
	.4byte	.LVL24
	.4byte	0x614
	.4byte	0x36a
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x14
	.4byte	.LVL25
	.4byte	0x620
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x45
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0x4
	.4byte	0xed
	.byte	0xd
	.4byte	.LASF75
	.byte	0x1
	.byte	0x79
	.byte	0x5
	.4byte	0x126
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x1
	.byte	0x9c
	.4byte	0x3bf
	.byte	0x15
	.4byte	.LASF77
	.byte	0x1
	.byte	0x7b
	.byte	0x14
	.4byte	0xed
	.byte	0xb
	.4byte	.LASF78
	.byte	0x1
	.byte	0x7c
	.byte	0x17
	.4byte	0x113
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0xe
	.4byte	.LVL20
	.4byte	0x62d
	.byte	0
	.byte	0xd
	.4byte	.LASF79
	.byte	0x1
	.byte	0x71
	.byte	0x5
	.4byte	0x126
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x1
	.byte	0x9c
	.4byte	0x3ea
	.byte	0x16
	.4byte	.LASF88
	.byte	0x1
	.byte	0x71
	.byte	0x1f
	.4byte	0x107
	.4byte	.LLST5
	.byte	0
	.byte	0x17
	.4byte	.LASF81
	.byte	0x1
	.byte	0x68
	.byte	0x6
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x1
	.byte	0x9c
	.4byte	0x41a
	.byte	0x18
	.4byte	0x5c9
	.4byte	.LBB22
	.4byte	.Ldebug_ranges0+0x20
	.byte	0x1
	.byte	0x6a
	.byte	0x5
	.byte	0xe
	.4byte	.LVL17
	.4byte	0x63a
	.byte	0
	.byte	0xd
	.4byte	.LASF80
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.4byte	0x126
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x1
	.byte	0x9c
	.4byte	0x46c
	.byte	0x19
	.4byte	0x582
	.4byte	.LBB14
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x5e
	.byte	0x5
	.4byte	0x452
	.byte	0x1a
	.4byte	0x593
	.4byte	.LLST4
	.byte	0
	.byte	0x1b
	.4byte	0x5c9
	.4byte	.LBB20
	.4byte	.LBE20-.LBB20
	.byte	0x1
	.byte	0x5f
	.byte	0x5
	.byte	0xe
	.4byte	.LVL16
	.4byte	0x647
	.byte	0
	.byte	0x17
	.4byte	.LASF82
	.byte	0x1
	.byte	0x50
	.byte	0x6
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x1
	.byte	0x9c
	.4byte	0x4b9
	.byte	0x1c
	.4byte	.LASF105
	.byte	0x4
	.byte	0x1
	.byte	0x52
	.byte	0xb
	.4byte	0x4a8
	.byte	0x1d
	.4byte	.LASF83
	.byte	0x1
	.byte	0x53
	.byte	0x11
	.4byte	0x167
	.byte	0x1d
	.4byte	.LASF84
	.byte	0x1
	.byte	0x54
	.byte	0x12
	.4byte	0x107
	.byte	0
	.byte	0x1e
	.string	"mfg"
	.byte	0x1
	.byte	0x55
	.byte	0x7
	.4byte	0x482
	.4byte	.LLST3
	.byte	0
	.byte	0x1f
	.4byte	.LASF85
	.byte	0x1
	.byte	0x4a
	.byte	0x5
	.4byte	0x126
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x1
	.byte	0x9c
	.byte	0x1f
	.4byte	.LASF86
	.byte	0x1
	.byte	0x44
	.byte	0x5
	.4byte	0x126
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x1
	.byte	0x9c
	.byte	0xd
	.4byte	.LASF87
	.byte	0x1
	.byte	0x3d
	.byte	0x5
	.4byte	0x126
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x1
	.byte	0x9c
	.4byte	0x551
	.byte	0x16
	.4byte	.LASF89
	.byte	0x1
	.byte	0x3d
	.byte	0x23
	.4byte	0x12d
	.4byte	.LLST2
	.byte	0x12
	.4byte	.LVL8
	.4byte	0x654
	.4byte	0x524
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0x6c
	.byte	0x6
	.byte	0
	.byte	0x12
	.4byte	.LVL9
	.4byte	0x660
	.4byte	0x53f
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x13
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0x6c
	.byte	0x6
	.byte	0
	.byte	0x14
	.4byte	.LVL10
	.4byte	0x654
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x79
	.byte	0
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0x17
	.4byte	.LASF90
	.byte	0x1
	.byte	0x30
	.byte	0x6
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x1
	.byte	0x9c
	.4byte	0x582
	.byte	0x20
	.4byte	0x582
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.byte	0x1
	.byte	0x3a
	.byte	0x5
	.byte	0x1a
	.4byte	0x593
	.4byte	.LLST1
	.byte	0
	.byte	0
	.byte	0x21
	.4byte	.LASF91
	.byte	0x1
	.byte	0x25
	.byte	0x5
	.4byte	0x126
	.byte	0x1
	.4byte	0x5a0
	.byte	0x22
	.string	"val"
	.byte	0x1
	.byte	0x25
	.byte	0x28
	.4byte	0x240
	.byte	0
	.byte	0xd
	.4byte	.LASF92
	.byte	0x1
	.byte	0x1c
	.byte	0x11
	.4byte	0x240
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0x5c9
	.byte	0x23
	.string	"ret"
	.byte	0x1
	.byte	0x1e
	.byte	0x15
	.4byte	0x240
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0x24
	.4byte	.LASF106
	.byte	0x2
	.byte	0x5c
	.byte	0x37
	.byte	0x3
	.byte	0x25
	.4byte	0x582
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0x5ef
	.byte	0x1a
	.4byte	0x593
	.4byte	.LLST0
	.byte	0
	.byte	0x26
	.4byte	.LASF93
	.4byte	.LASF93
	.byte	0x9
	.byte	0xc
	.byte	0x5
	.byte	0x26
	.4byte	.LASF73
	.4byte	.LASF73
	.byte	0x1
	.byte	0xa7
	.byte	0x18
	.byte	0x27
	.4byte	.LASF94
	.4byte	.LASF94
	.byte	0x6
	.2byte	0x1b2
	.byte	0xd
	.byte	0x26
	.4byte	.LASF74
	.4byte	.LASF74
	.byte	0x1
	.byte	0xad
	.byte	0x18
	.byte	0x27
	.4byte	.LASF95
	.4byte	.LASF95
	.byte	0x7
	.2byte	0x240
	.byte	0xd
	.byte	0x27
	.4byte	.LASF96
	.4byte	.LASF96
	.byte	0x7
	.2byte	0x255
	.byte	0xd
	.byte	0x27
	.4byte	.LASF97
	.4byte	.LASF97
	.byte	0x7
	.2byte	0x23d
	.byte	0xd
	.byte	0x27
	.4byte	.LASF98
	.4byte	.LASF98
	.byte	0x7
	.2byte	0x23f
	.byte	0xd
	.byte	0x26
	.4byte	.LASF99
	.4byte	.LASF99
	.byte	0xa
	.byte	0x29
	.byte	0x8
	.byte	0x26
	.4byte	.LASF100
	.4byte	.LASF100
	.byte	0xa
	.byte	0x1f
	.byte	0x8
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
	.byte	0x4
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x5
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
	.byte	0x6
	.byte	0x35
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x7
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
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xb
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
	.byte	0x3f
	.byte	0x19
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0xd
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
	.byte	0xe
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
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
	.byte	0x3c
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x10
	.byte	0x5
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x11
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
	.byte	0x3c
	.byte	0x19
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
	.byte	0x16
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
	.byte	0x17
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
	.byte	0x18
	.byte	0x1d
	.byte	0
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
	.byte	0
	.byte	0
	.byte	0x19
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
	.byte	0x1a
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x1b
	.byte	0x1d
	.byte	0
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
	.byte	0x1c
	.byte	0x17
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
	.byte	0x1d
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
	.byte	0x22
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
	.byte	0x23
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
	.byte	0x24
	.byte	0x2e
	.byte	0
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
	.byte	0x25
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
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST5:
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL19
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x8
	.byte	0xc
	.4byte	0x67666d30
	.byte	0x9f
	.byte	0x93
	.byte	0x4
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL7
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL11
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LFE9
	.2byte	0x1
	.byte	0x5a
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
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB14
	.4byte	.LBE14
	.4byte	.LBB18
	.4byte	.LBE18
	.4byte	.LBB19
	.4byte	.LBE19
	.4byte	0
	.4byte	0
	.4byte	.LBB22
	.4byte	.LBE22
	.4byte	.LBB25
	.4byte	.LBE25
	.4byte	0
	.4byte	0
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
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF84:
	.string	"word"
.LASF63:
	.string	"BL_RST_FATAL_EXCEPTION"
.LASF90:
	.string	"bl_sys_rstinfo_init"
.LASF58:
	.string	"GLB_EM_0KB"
.LASF68:
	.string	"RST_REASON_ARRAY"
.LASF62:
	.string	"BL_RST_HARDWARE_WATCHDOG"
.LASF3:
	.string	"BL_AHB_SLAVE1_SEC_DBG"
.LASF98:
	.string	"GLB_SW_POR_Reset"
.LASF87:
	.string	"bl_sys_rstinfo_getsting"
.LASF24:
	.string	"BL_AHB_SLAVE1_MAX"
.LASF47:
	.string	"HBN_LDO_LEVEL_0P90V"
.LASF59:
	.string	"GLB_EM_8KB"
.LASF100:
	.string	"memcpy"
.LASF55:
	.string	"HBN_LDO_LEVEL_1P30V"
.LASF19:
	.string	"BL_AHB_SLAVE1_I2C"
.LASF66:
	.string	"BL_RST_REASON_E"
.LASF27:
	.string	"short int"
.LASF13:
	.string	"BL_AHB_SLAVE1_SDU"
.LASF32:
	.string	"uint8_t"
.LASF45:
	.string	"HBN_LDO_LEVEL_0P80V"
.LASF14:
	.string	"BL_AHB_SLAVE1_PDS_HBN_AON_HBNRAM"
.LASF65:
	.string	"BL_RST_SOFTWARE"
.LASF101:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
.LASF53:
	.string	"HBN_LDO_LEVEL_1P20V"
.LASF26:
	.string	"signed char"
.LASF61:
	.string	"BL_RST_POWER_OFF"
.LASF29:
	.string	"long long int"
.LASF57:
	.string	"HBN_LDO_LEVEL_Type"
.LASF36:
	.string	"char"
.LASF39:
	.string	"TIMEOUT"
.LASF43:
	.string	"HBN_LDO_LEVEL_0P70V"
.LASF15:
	.string	"BL_AHB_SLAVE1_RSVD0F"
.LASF18:
	.string	"BL_AHB_SLAVE1_SPI"
.LASF40:
	.string	"BL_Err_Type"
.LASF88:
	.string	"addr"
.LASF97:
	.string	"GLB_SW_System_Reset"
.LASF91:
	.string	"bl_sys_rstinfo_set"
.LASF67:
	.string	"s_rst_reason"
.LASF4:
	.string	"BL_AHB_SLAVE1_SEC"
.LASF38:
	.string	"ERROR"
.LASF106:
	.string	"__disable_irq"
.LASF83:
	.string	"byte"
.LASF1:
	.string	"BL_AHB_SLAVE1_RF"
.LASF22:
	.string	"BL_AHB_SLAVE1_IRR"
.LASF48:
	.string	"HBN_LDO_LEVEL_0P95V"
.LASF41:
	.string	"HBN_LDO_LEVEL_0P60V"
.LASF30:
	.string	"unsigned char"
.LASF21:
	.string	"BL_AHB_SLAVE1_TMR"
.LASF78:
	.string	"em_size"
.LASF102:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/bl602_hal/bl_sys.c"
.LASF81:
	.string	"bl_sys_reset_system"
.LASF75:
	.string	"bl_sys_em_config"
.LASF56:
	.string	"HBN_LDO_LEVEL_1P35V"
.LASF74:
	.string	"HBN_Aon_Pad_IeSmt_Cfg"
.LASF49:
	.string	"HBN_LDO_LEVEL_1P00V"
.LASF35:
	.string	"long long unsigned int"
.LASF33:
	.string	"uint32_t"
.LASF16:
	.string	"BL_AHB_SLAVE1_UART0"
.LASF17:
	.string	"BL_AHB_SLAVE1_UART1"
.LASF73:
	.string	"EF_Ctrl_Read_Ldo11VoutSel_Opt"
.LASF77:
	.string	"__LD_CONFIG_EM_SEL"
.LASF76:
	.string	"sys_log_all_enable"
.LASF51:
	.string	"HBN_LDO_LEVEL_1P10V"
.LASF37:
	.string	"SUCCESS"
.LASF20:
	.string	"BL_AHB_SLAVE1_PWM"
.LASF31:
	.string	"short unsigned int"
.LASF70:
	.string	"bl_sys_init"
.LASF64:
	.string	"BL_RST_SOFTWARE_WATCHDOG"
.LASF46:
	.string	"HBN_LDO_LEVEL_0P85V"
.LASF86:
	.string	"bl_sys_logall_enable"
.LASF28:
	.string	"long int"
.LASF99:
	.string	"strlen"
.LASF0:
	.string	"BL_AHB_SLAVE1_GLB"
.LASF79:
	.string	"bl_sys_isxipaddr"
.LASF11:
	.string	"BL_AHB_SLAVE1_SFC"
.LASF69:
	.string	"_Bool"
.LASF44:
	.string	"HBN_LDO_LEVEL_0P75V"
.LASF7:
	.string	"BL_AHB_SLAVE1_EFUSE"
.LASF10:
	.string	"BL_AHB_SLAVE1_RSVD0A"
.LASF105:
	.string	"_reg_t"
.LASF54:
	.string	"HBN_LDO_LEVEL_1P25V"
.LASF52:
	.string	"HBN_LDO_LEVEL_1P15V"
.LASF8:
	.string	"BL_AHB_SLAVE1_CCI"
.LASF34:
	.string	"long unsigned int"
.LASF92:
	.string	"bl_sys_rstinfo_get"
.LASF60:
	.string	"GLB_EM_16KB"
.LASF96:
	.string	"GLB_Set_EM_Sel"
.LASF85:
	.string	"bl_sys_logall_disable"
.LASF42:
	.string	"HBN_LDO_LEVEL_0P65V"
.LASF89:
	.string	"info"
.LASF5:
	.string	"BL_AHB_SLAVE1_TZ1"
.LASF6:
	.string	"BL_AHB_SLAVE1_TZ2"
.LASF94:
	.string	"HBN_Set_Ldo11_Soc_Vout"
.LASF50:
	.string	"HBN_LDO_LEVEL_1P05V"
.LASF12:
	.string	"BL_AHB_SLAVE1_DMA"
.LASF9:
	.string	"BL_AHB_SLAVE1_L1C"
.LASF103:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/hosal"
.LASF104:
	.string	"freertos_risc_v_trap_handler"
.LASF2:
	.string	"BL_AHB_SLAVE1_GPIP_PHY_AGC"
.LASF80:
	.string	"bl_sys_reset_por"
.LASF23:
	.string	"BL_AHB_SLAVE1_CKS"
.LASF25:
	.string	"unsigned int"
.LASF82:
	.string	"bl_sys_mfg_config"
.LASF93:
	.string	"bl_flash_init"
.LASF71:
	.string	"bl_sys_early_init"
.LASF72:
	.string	"Ldo11VoutSelValue"
.LASF95:
	.string	"GLB_AHB_Slave1_Reset"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
