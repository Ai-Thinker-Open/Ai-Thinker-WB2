	.file	"bl_efuse.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.bl_efuse_read_mac,"ax",@progbits
	.align	1
	.globl	bl_efuse_read_mac
	.type	bl_efuse_read_mac, @function
bl_efuse_read_mac:
.LFB8:
	.file 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/bl602_hal/bl_efuse.c"
	.loc 1 7 1
	.cfi_startproc
.LVL0:
	.loc 1 8 5
	.loc 1 7 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 8 5
	call	EF_Ctrl_Read_MAC_Address
.LVL1:
	.loc 1 9 5 is_stmt 1
	.loc 1 10 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE8:
	.size	bl_efuse_read_mac, .-bl_efuse_read_mac
	.section	.text.bl_efuse_read_mac_factory,"ax",@progbits
	.align	1
	.globl	bl_efuse_read_mac_factory
	.type	bl_efuse_read_mac_factory, @function
bl_efuse_read_mac_factory:
.LFB9:
	.loc 1 13 1 is_stmt 1
	.cfi_startproc
.LVL2:
	.loc 1 14 5
	.loc 1 13 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 14 14
	li	a1,1
	.loc 1 13 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 14 14
	call	mfg_media_read_macaddr
.LVL3:
	.loc 1 18 1
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 14 8
	snez	a0,a0
	.loc 1 18 1
	neg	a0,a0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE9:
	.size	bl_efuse_read_mac_factory, .-bl_efuse_read_mac_factory
	.section	.text.bl_efuse_read_capcode,"ax",@progbits
	.align	1
	.globl	bl_efuse_read_capcode
	.type	bl_efuse_read_capcode, @function
bl_efuse_read_capcode:
.LFB10:
	.loc 1 21 1 is_stmt 1
	.cfi_startproc
.LVL4:
	.loc 1 22 5
	.loc 1 21 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 22 14
	li	a1,1
	.loc 1 21 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 22 14
	call	mfg_media_read_xtal_capcode
.LVL5:
	.loc 1 26 1
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 22 8
	snez	a0,a0
	.loc 1 26 1
	neg	a0,a0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE10:
	.size	bl_efuse_read_capcode, .-bl_efuse_read_capcode
	.section	.text.bl_efuse_read_pwroft,"ax",@progbits
	.align	1
	.globl	bl_efuse_read_pwroft
	.type	bl_efuse_read_pwroft, @function
bl_efuse_read_pwroft:
.LFB11:
	.loc 1 29 1 is_stmt 1
	.cfi_startproc
.LVL6:
	.loc 1 30 5
	.loc 1 29 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 30 14
	li	a1,1
	.loc 1 29 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 30 14
	call	mfg_media_read_poweroffset
.LVL7:
	.loc 1 34 1
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 30 8
	snez	a0,a0
	.loc 1 34 1
	neg	a0,a0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE11:
	.size	bl_efuse_read_pwroft, .-bl_efuse_read_pwroft
	.section	.text.bl_efuse_ctrl_program_R0,"ax",@progbits
	.align	1
	.globl	bl_efuse_ctrl_program_R0
	.type	bl_efuse_ctrl_program_R0, @function
bl_efuse_ctrl_program_R0:
.LFB12:
	.loc 1 37 1 is_stmt 1
	.cfi_startproc
.LVL8:
	.loc 1 38 5
	.loc 1 39 5
	.loc 1 37 1 is_stmt 0
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s1,36(sp)
	sw	s2,32(sp)
	sw	s3,28(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.loc 1 37 1
	sw	a1,12(sp)
	sw	a2,8(sp)
	mv	s3,a0
	.loc 1 39 48
	call	GLB_Get_Root_CLK_Sel
.LVL9:
	mv	s0,a0
.LVL10:
	.loc 1 41 5 is_stmt 1
	.loc 1 41 10 is_stmt 0
	call	GLB_Get_BCLK_Div
.LVL11:
	mv	s2,a0
.LVL12:
	.loc 1 42 5 is_stmt 1
	.loc 1 42 10 is_stmt 0
	call	GLB_Get_HCLK_Div
.LVL13:
	mv	s1,a0
.LVL14:
	.loc 1 44 5 is_stmt 1
	li	a0,1
	call	HBN_Set_ROOT_CLK_Sel
.LVL15:
	.loc 1 46 5
	lw	a2,8(sp)
	lw	a1,12(sp)
	mv	a0,s3
	call	EF_Ctrl_Program_Direct_R0
.LVL16:
	.loc 1 48 5
	mv	a1,s2
	mv	a0,s1
	call	GLB_Set_System_CLK_Div
.LVL17:
	.loc 1 49 5
	mv	a0,s0
	call	HBN_Set_ROOT_CLK_Sel
.LVL18:
	.loc 1 51 5
	.loc 1 52 1 is_stmt 0
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
.LVL19:
	lw	s1,36(sp)
	.cfi_restore 9
.LVL20:
	lw	s2,32(sp)
	.cfi_restore 18
.LVL21:
	lw	s3,28(sp)
	.cfi_restore 19
.LVL22:
	li	a0,0
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
.LVL23:
	jr	ra
	.cfi_endproc
.LFE12:
	.size	bl_efuse_ctrl_program_R0, .-bl_efuse_ctrl_program_R0
	.section	.text.bl_efuse_ctrl_read_R0,"ax",@progbits
	.align	1
	.globl	bl_efuse_ctrl_read_R0
	.type	bl_efuse_ctrl_read_R0, @function
bl_efuse_ctrl_read_R0:
.LFB13:
	.loc 1 55 1 is_stmt 1
	.cfi_startproc
.LVL24:
	.loc 1 56 5
	.loc 1 57 5
	.loc 1 55 1 is_stmt 0
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s1,36(sp)
	sw	s2,32(sp)
	sw	s3,28(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.loc 1 55 1
	sw	a1,12(sp)
	sw	a2,8(sp)
	mv	s3,a0
	.loc 1 57 48
	call	GLB_Get_Root_CLK_Sel
.LVL25:
	mv	s0,a0
.LVL26:
	.loc 1 59 5 is_stmt 1
	.loc 1 59 10 is_stmt 0
	call	GLB_Get_BCLK_Div
.LVL27:
	mv	s2,a0
.LVL28:
	.loc 1 60 5 is_stmt 1
	.loc 1 60 10 is_stmt 0
	call	GLB_Get_HCLK_Div
.LVL29:
	mv	s1,a0
.LVL30:
	.loc 1 62 5 is_stmt 1
	li	a0,1
	call	HBN_Set_ROOT_CLK_Sel
.LVL31:
	.loc 1 64 5
	lw	a2,8(sp)
	lw	a1,12(sp)
	mv	a0,s3
	call	EF_Ctrl_Read_Direct_R0
.LVL32:
	.loc 1 66 5
	mv	a1,s2
	mv	a0,s1
	call	GLB_Set_System_CLK_Div
.LVL33:
	.loc 1 67 5
	mv	a0,s0
	call	HBN_Set_ROOT_CLK_Sel
.LVL34:
	.loc 1 69 5
	.loc 1 70 1 is_stmt 0
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
.LVL35:
	lw	s1,36(sp)
	.cfi_restore 9
.LVL36:
	lw	s2,32(sp)
	.cfi_restore 18
.LVL37:
	lw	s3,28(sp)
	.cfi_restore 19
.LVL38:
	li	a0,0
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
.LVL39:
	jr	ra
	.cfi_endproc
.LFE13:
	.size	bl_efuse_ctrl_read_R0, .-bl_efuse_ctrl_read_R0
	.section	.text.bl_efuse_read_mac_opt,"ax",@progbits
	.align	1
	.globl	bl_efuse_read_mac_opt
	.type	bl_efuse_read_mac_opt, @function
bl_efuse_read_mac_opt:
.LFB14:
	.loc 1 73 1 is_stmt 1
	.cfi_startproc
.LVL40:
	.loc 1 74 5
	.loc 1 75 5
	.loc 1 73 1 is_stmt 0
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s1,36(sp)
	sw	s2,32(sp)
	sw	s3,28(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.loc 1 73 1
	sw	a1,12(sp)
	sw	a2,8(sp)
	mv	s3,a0
	.loc 1 75 48
	call	GLB_Get_Root_CLK_Sel
.LVL41:
	mv	s0,a0
.LVL42:
	.loc 1 77 5 is_stmt 1
	.loc 1 77 10 is_stmt 0
	call	GLB_Get_BCLK_Div
.LVL43:
	mv	s2,a0
.LVL44:
	.loc 1 78 5 is_stmt 1
	.loc 1 78 10 is_stmt 0
	call	GLB_Get_HCLK_Div
.LVL45:
	mv	s1,a0
.LVL46:
	.loc 1 80 5 is_stmt 1
	li	a0,1
	call	HBN_Set_ROOT_CLK_Sel
.LVL47:
	.loc 1 82 5
	lw	a2,8(sp)
	lw	a1,12(sp)
	mv	a0,s3
	call	EF_Ctrl_Read_MAC_Address_Opt
.LVL48:
	.loc 1 84 5
	mv	a1,s2
	mv	a0,s1
	call	GLB_Set_System_CLK_Div
.LVL49:
	.loc 1 85 5
	mv	a0,s0
	call	HBN_Set_ROOT_CLK_Sel
.LVL50:
	.loc 1 87 5
	.loc 1 88 1 is_stmt 0
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
.LVL51:
	lw	s1,36(sp)
	.cfi_restore 9
.LVL52:
	lw	s2,32(sp)
	.cfi_restore 18
.LVL53:
	lw	s3,28(sp)
	.cfi_restore 19
	li	a0,0
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
.LVL54:
	jr	ra
	.cfi_endproc
.LFE14:
	.size	bl_efuse_read_mac_opt, .-bl_efuse_read_mac_opt
	.text
.Letext0:
	.file 2 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.file 3 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_hbn.h"
	.file 4 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_glb.h"
	.file 5 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_ef_ctrl.h"
	.file 6 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_mfg_media.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x54a
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF45
	.byte	0xc
	.4byte	.LASF46
	.4byte	.LASF47
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.byte	0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0x22
	.byte	0x15
	.4byte	0x38
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1
	.byte	0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF3
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF4
	.byte	0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0x2e
	.byte	0x17
	.4byte	0x60
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF7
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF8
	.byte	0x3
	.4byte	.LASF9
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0x7a
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.byte	0x5
	.byte	0x4
	.4byte	0x54
	.byte	0x6
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x3
	.byte	0x75
	.byte	0xe
	.4byte	0xbd
	.byte	0x7
	.4byte	.LASF13
	.byte	0
	.byte	0x7
	.4byte	.LASF14
	.byte	0x1
	.byte	0x7
	.4byte	.LASF15
	.byte	0x2
	.byte	0
	.byte	0x3
	.4byte	.LASF16
	.byte	0x3
	.byte	0x79
	.byte	0x2
	.4byte	0x9c
	.byte	0x8
	.4byte	.LASF22
	.byte	0x1
	.byte	0x48
	.byte	0x5
	.4byte	0x88
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x1
	.byte	0x9c
	.4byte	0x1bf
	.byte	0x9
	.4byte	.LASF17
	.byte	0x1
	.byte	0x48
	.byte	0x23
	.4byte	0x54
	.4byte	.LLST16
	.byte	0xa
	.string	"mac"
	.byte	0x1
	.byte	0x48
	.byte	0x31
	.4byte	0x96
	.4byte	.LLST17
	.byte	0x9
	.4byte	.LASF18
	.byte	0x1
	.byte	0x48
	.byte	0x41
	.4byte	0x54
	.4byte	.LLST18
	.byte	0xb
	.4byte	.LASF19
	.byte	0x1
	.byte	0x4a
	.byte	0xd
	.4byte	0x54
	.4byte	.LLST19
	.byte	0xb
	.4byte	.LASF20
	.byte	0x1
	.byte	0x4a
	.byte	0x15
	.4byte	0x54
	.4byte	.LLST20
	.byte	0xb
	.4byte	.LASF21
	.byte	0x1
	.byte	0x4b
	.byte	0x17
	.4byte	0xbd
	.4byte	.LLST21
	.byte	0xc
	.4byte	.LVL41
	.4byte	0x4b4
	.byte	0xc
	.4byte	.LVL43
	.4byte	0x4c1
	.byte	0xc
	.4byte	.LVL45
	.4byte	0x4ce
	.byte	0xd
	.4byte	.LVL47
	.4byte	0x4db
	.4byte	0x171
	.byte	0xe
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0xd
	.4byte	.LVL48
	.4byte	0x4e8
	.4byte	0x194
	.byte	0xe
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0xe
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0x5c
	.byte	0x6
	.byte	0xe
	.byte	0x1
	.byte	0x5c
	.byte	0x4
	.byte	0x91
	.byte	0x58
	.byte	0x94
	.byte	0x1
	.byte	0
	.byte	0xd
	.4byte	.LVL49
	.4byte	0x4f5
	.4byte	0x1ae
	.byte	0xe
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0xe
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0xf
	.4byte	.LVL50
	.4byte	0x4db
	.byte	0xe
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0
	.byte	0x8
	.4byte	.LASF23
	.byte	0x1
	.byte	0x36
	.byte	0x5
	.4byte	0x88
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x1
	.byte	0x9c
	.4byte	0x2b4
	.byte	0x9
	.4byte	.LASF24
	.byte	0x1
	.byte	0x36
	.byte	0x24
	.4byte	0x6e
	.4byte	.LLST10
	.byte	0x9
	.4byte	.LASF25
	.byte	0x1
	.byte	0x36
	.byte	0x35
	.4byte	0x2b4
	.4byte	.LLST11
	.byte	0xa
	.string	"len"
	.byte	0x1
	.byte	0x36
	.byte	0x44
	.4byte	0x6e
	.4byte	.LLST12
	.byte	0xb
	.4byte	.LASF19
	.byte	0x1
	.byte	0x38
	.byte	0xd
	.4byte	0x54
	.4byte	.LLST13
	.byte	0xb
	.4byte	.LASF20
	.byte	0x1
	.byte	0x38
	.byte	0x15
	.4byte	0x54
	.4byte	.LLST14
	.byte	0xb
	.4byte	.LASF21
	.byte	0x1
	.byte	0x39
	.byte	0x17
	.4byte	0xbd
	.4byte	.LLST15
	.byte	0xc
	.4byte	.LVL25
	.4byte	0x4b4
	.byte	0xc
	.4byte	.LVL27
	.4byte	0x4c1
	.byte	0xc
	.4byte	.LVL29
	.4byte	0x4ce
	.byte	0xd
	.4byte	.LVL31
	.4byte	0x4db
	.4byte	0x267
	.byte	0xe
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0xd
	.4byte	.LVL32
	.4byte	0x502
	.4byte	0x289
	.byte	0xe
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0xe
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0x5c
	.byte	0x6
	.byte	0xe
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0x91
	.byte	0x58
	.byte	0x6
	.byte	0
	.byte	0xd
	.4byte	.LVL33
	.4byte	0x4f5
	.4byte	0x2a3
	.byte	0xe
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0xe
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0xf
	.4byte	.LVL34
	.4byte	0x4db
	.byte	0xe
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0
	.byte	0x5
	.byte	0x4
	.4byte	0x6e
	.byte	0x8
	.4byte	.LASF26
	.byte	0x1
	.byte	0x24
	.byte	0x5
	.4byte	0x88
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x1
	.byte	0x9c
	.4byte	0x3af
	.byte	0x9
	.4byte	.LASF24
	.byte	0x1
	.byte	0x24
	.byte	0x27
	.4byte	0x6e
	.4byte	.LLST4
	.byte	0x9
	.4byte	.LASF25
	.byte	0x1
	.byte	0x24
	.byte	0x38
	.4byte	0x2b4
	.4byte	.LLST5
	.byte	0xa
	.string	"len"
	.byte	0x1
	.byte	0x24
	.byte	0x47
	.4byte	0x6e
	.4byte	.LLST6
	.byte	0xb
	.4byte	.LASF19
	.byte	0x1
	.byte	0x26
	.byte	0xd
	.4byte	0x54
	.4byte	.LLST7
	.byte	0xb
	.4byte	.LASF20
	.byte	0x1
	.byte	0x26
	.byte	0x15
	.4byte	0x54
	.4byte	.LLST8
	.byte	0xb
	.4byte	.LASF21
	.byte	0x1
	.byte	0x27
	.byte	0x17
	.4byte	0xbd
	.4byte	.LLST9
	.byte	0xc
	.4byte	.LVL9
	.4byte	0x4b4
	.byte	0xc
	.4byte	.LVL11
	.4byte	0x4c1
	.byte	0xc
	.4byte	.LVL13
	.4byte	0x4ce
	.byte	0xd
	.4byte	.LVL15
	.4byte	0x4db
	.4byte	0x362
	.byte	0xe
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0xd
	.4byte	.LVL16
	.4byte	0x50f
	.4byte	0x384
	.byte	0xe
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0xe
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0x5c
	.byte	0x6
	.byte	0xe
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0x91
	.byte	0x58
	.byte	0x6
	.byte	0
	.byte	0xd
	.4byte	.LVL17
	.4byte	0x4f5
	.4byte	0x39e
	.byte	0xe
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0xe
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0xf
	.4byte	.LVL18
	.4byte	0x4db
	.byte	0xe
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0
	.byte	0x8
	.4byte	.LASF27
	.byte	0x1
	.byte	0x1c
	.byte	0x5
	.4byte	0x88
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x1
	.byte	0x9c
	.4byte	0x3f0
	.byte	0x9
	.4byte	.LASF28
	.byte	0x1
	.byte	0x1c
	.byte	0x21
	.4byte	0x3f0
	.4byte	.LLST3
	.byte	0xf
	.4byte	.LVL7
	.4byte	0x51c
	.byte	0xe
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0xe
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0x5
	.byte	0x4
	.4byte	0x2c
	.byte	0x8
	.4byte	.LASF29
	.byte	0x1
	.byte	0x14
	.byte	0x5
	.4byte	0x88
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x1
	.byte	0x9c
	.4byte	0x437
	.byte	0x9
	.4byte	.LASF30
	.byte	0x1
	.byte	0x14
	.byte	0x24
	.4byte	0x96
	.4byte	.LLST2
	.byte	0xf
	.4byte	.LVL5
	.4byte	0x528
	.byte	0xe
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0xe
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0x8
	.4byte	.LASF31
	.byte	0x1
	.byte	0xc
	.byte	0x5
	.4byte	0x88
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0x478
	.byte	0xa
	.string	"mac"
	.byte	0x1
	.byte	0xc
	.byte	0x27
	.4byte	0x96
	.4byte	.LLST1
	.byte	0xf
	.4byte	.LVL3
	.4byte	0x534
	.byte	0xe
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0xe
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0x8
	.4byte	.LASF32
	.byte	0x1
	.byte	0x6
	.byte	0x5
	.4byte	0x88
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0x4b4
	.byte	0xa
	.string	"mac"
	.byte	0x1
	.byte	0x6
	.byte	0x1f
	.4byte	0x96
	.4byte	.LLST0
	.byte	0xf
	.4byte	.LVL1
	.4byte	0x540
	.byte	0xe
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0
	.byte	0x10
	.4byte	.LASF33
	.4byte	.LASF33
	.byte	0x4
	.2byte	0x22a
	.byte	0x13
	.byte	0x10
	.4byte	.LASF34
	.4byte	.LASF34
	.byte	0x4
	.2byte	0x22c
	.byte	0x9
	.byte	0x10
	.4byte	.LASF35
	.4byte	.LASF35
	.byte	0x4
	.2byte	0x22d
	.byte	0x9
	.byte	0x10
	.4byte	.LASF36
	.4byte	.LASF36
	.byte	0x3
	.2byte	0x1b9
	.byte	0xd
	.byte	0x10
	.4byte	.LASF37
	.4byte	.LASF37
	.byte	0x5
	.2byte	0x148
	.byte	0xd
	.byte	0x10
	.4byte	.LASF38
	.4byte	.LASF38
	.byte	0x4
	.2byte	0x22b
	.byte	0xd
	.byte	0x10
	.4byte	.LASF39
	.4byte	.LASF39
	.byte	0x5
	.2byte	0x13d
	.byte	0x6
	.byte	0x10
	.4byte	.LASF40
	.4byte	.LASF40
	.byte	0x5
	.2byte	0x13c
	.byte	0x6
	.byte	0x11
	.4byte	.LASF41
	.4byte	.LASF41
	.byte	0x6
	.byte	0x16
	.byte	0x8
	.byte	0x11
	.4byte	.LASF42
	.4byte	.LASF42
	.byte	0x6
	.byte	0x11
	.byte	0x8
	.byte	0x11
	.4byte	.LASF43
	.4byte	.LASF43
	.byte	0x6
	.byte	0x21
	.byte	0x8
	.byte	0x10
	.4byte	.LASF44
	.4byte	.LASF44
	.byte	0x5
	.2byte	0x133
	.byte	0xd
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
	.byte	0x7
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x8
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
	.byte	0x9
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
	.byte	0xc
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xd
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
	.byte	0xe
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0xf
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x10
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
	.byte	0x11
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
.LLST16:
	.4byte	.LVL40
	.4byte	.LVL41-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL41-1
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL40
	.4byte	.LVL41-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL41-1
	.4byte	.LVL54
	.2byte	0x2
	.byte	0x91
	.byte	0x5c
	.4byte	.LVL54
	.4byte	.LFE14
	.2byte	0x2
	.byte	0x72
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL40
	.4byte	.LVL41-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL41-1
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL40
	.4byte	.LVL46
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL40
	.4byte	.LVL44
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL44
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL42
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL24
	.4byte	.LVL25-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL25-1
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL38
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL24
	.4byte	.LVL25-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL25-1
	.4byte	.LVL39
	.2byte	0x2
	.byte	0x91
	.byte	0x5c
	.4byte	.LVL39
	.4byte	.LFE13
	.2byte	0x2
	.byte	0x72
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL24
	.4byte	.LVL25-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL25-1
	.4byte	.LVL39
	.2byte	0x2
	.byte	0x91
	.byte	0x58
	.4byte	.LVL39
	.4byte	.LFE13
	.2byte	0x2
	.byte	0x72
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL24
	.4byte	.LVL30
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL24
	.4byte	.LVL28
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL26
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL8
	.4byte	.LVL9-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL9-1
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL22
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL8
	.4byte	.LVL9-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL9-1
	.4byte	.LVL23
	.2byte	0x2
	.byte	0x91
	.byte	0x5c
	.4byte	.LVL23
	.4byte	.LFE12
	.2byte	0x2
	.byte	0x72
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL8
	.4byte	.LVL9-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL9-1
	.4byte	.LVL23
	.2byte	0x2
	.byte	0x91
	.byte	0x58
	.4byte	.LVL23
	.4byte	.LFE12
	.2byte	0x2
	.byte	0x72
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL8
	.4byte	.LVL14
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL8
	.4byte	.LVL12
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL10
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL6
	.4byte	.LVL7-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL7-1
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL4
	.4byte	.LVL5-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL5-1
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL2
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL3-1
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1-1
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
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
.LASF28:
	.string	"poweroffset"
.LASF27:
	.string	"bl_efuse_read_pwroft"
.LASF42:
	.string	"mfg_media_read_xtal_capcode"
.LASF6:
	.string	"uint8_t"
.LASF47:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/hosal"
.LASF43:
	.string	"mfg_media_read_macaddr"
.LASF20:
	.string	"bdiv"
.LASF21:
	.string	"rtClk"
.LASF26:
	.string	"bl_efuse_ctrl_program_R0"
.LASF25:
	.string	"data"
.LASF11:
	.string	"long long unsigned int"
.LASF5:
	.string	"int8_t"
.LASF7:
	.string	"unsigned char"
.LASF18:
	.string	"reload"
.LASF10:
	.string	"long unsigned int"
.LASF40:
	.string	"EF_Ctrl_Program_Direct_R0"
.LASF8:
	.string	"short unsigned int"
.LASF44:
	.string	"EF_Ctrl_Read_MAC_Address"
.LASF33:
	.string	"GLB_Get_Root_CLK_Sel"
.LASF13:
	.string	"HBN_ROOT_CLK_RC32M"
.LASF31:
	.string	"bl_efuse_read_mac_factory"
.LASF37:
	.string	"EF_Ctrl_Read_MAC_Address_Opt"
.LASF19:
	.string	"hdiv"
.LASF22:
	.string	"bl_efuse_read_mac_opt"
.LASF39:
	.string	"EF_Ctrl_Read_Direct_R0"
.LASF0:
	.string	"unsigned int"
.LASF29:
	.string	"bl_efuse_read_capcode"
.LASF12:
	.string	"char"
.LASF16:
	.string	"HBN_ROOT_CLK_Type"
.LASF35:
	.string	"GLB_Get_HCLK_Div"
.LASF14:
	.string	"HBN_ROOT_CLK_XTAL"
.LASF34:
	.string	"GLB_Get_BCLK_Div"
.LASF17:
	.string	"slot"
.LASF32:
	.string	"bl_efuse_read_mac"
.LASF38:
	.string	"GLB_Set_System_CLK_Div"
.LASF4:
	.string	"long long int"
.LASF45:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
.LASF24:
	.string	"index"
.LASF23:
	.string	"bl_efuse_ctrl_read_R0"
.LASF2:
	.string	"short int"
.LASF41:
	.string	"mfg_media_read_poweroffset"
.LASF9:
	.string	"uint32_t"
.LASF3:
	.string	"long int"
.LASF30:
	.string	"capcode"
.LASF1:
	.string	"signed char"
.LASF46:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/bl602_hal/bl_efuse.c"
.LASF15:
	.string	"HBN_ROOT_CLK_PLL"
.LASF36:
	.string	"HBN_Set_ROOT_CLK_Sel"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
