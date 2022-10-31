	.file	"bl602_sf_cfg_ext.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.tcm_code./mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_sf_cfg_ext.c712,"ax",@progbits
	.align	1
	.globl	SF_Cfg_Get_Flash_Cfg_Need_Lock_Ext
	.type	SF_Cfg_Get_Flash_Cfg_Need_Lock_Ext, @function
SF_Cfg_Get_Flash_Cfg_Need_Lock_Ext:
.LFB8:
	.file 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_sf_cfg_ext.c"
	.loc 1 713 1
	.cfi_startproc
.LVL0:
	.loc 1 714 5
	.loc 1 715 5
	.loc 1 716 5
	.loc 1 717 5
	.loc 1 717 10 is_stmt 0
	li	a5,1195786240
	.loc 1 713 1
	addi	sp,sp,-128
	.cfi_def_cfa_offset 128
	.loc 1 717 10
	addi	a5,a5,838
	.loc 1 713 1
	sw	s1,116(sp)
	sw	ra,124(sp)
	sw	s0,120(sp)
	.cfi_offset 9, -12
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.loc 1 717 10
	sw	a5,12(sp)
	sb	zero,16(sp)
	.loc 1 719 5 is_stmt 1
	.loc 1 713 1 is_stmt 0
	mv	s1,a1
	.loc 1 719 7
	bne	a0,zero,.L2
	.loc 1 720 9 is_stmt 1
	li	a0,587202560
.LVL1:
	li	a2,92
	addi	a1,sp,20
.LVL2:
	addi	a0,a0,8
	call	XIP_SFlash_Read_Via_Cache_Need_Lock
.LVL3:
	.loc 1 721 9
	.loc 1 721 12 is_stmt 0
	li	a2,4
	addi	a1,sp,12
	addi	a0,sp,20
	call	BL602_MemCmp
.LVL4:
	.loc 1 721 11
	bne	a0,zero,.L3
	.loc 1 722 13 is_stmt 1
	.loc 1 722 17 is_stmt 0
	li	a1,84
	addi	a0,sp,24
	call	BFLB_Soft_CRC32
.LVL5:
	.loc 1 723 13 is_stmt 1
	.loc 1 724 13
	.loc 1 724 15 is_stmt 0
	lw	a5,108(sp)
	bne	a5,a0,.L3
	.loc 1 725 17 is_stmt 1
	li	a2,84
	addi	a1,sp,24
.LVL6:
.L12:
	.loc 1 735 17 is_stmt 0
	mv	a0,s1
	call	BL602_MemCpy_Fast
.LVL7:
	.loc 1 736 17 is_stmt 1
	.loc 1 736 24 is_stmt 0
	li	a0,0
.L1:
	.loc 1 742 1
	lw	ra,124(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,120(sp)
	.cfi_restore 8
	lw	s1,116(sp)
	.cfi_restore 9
.LVL8:
	addi	sp,sp,128
	.cfi_def_cfa_offset 0
	jr	ra
.LVL9:
.L2:
	.cfi_restore_state
	mv	s0,a0
	.loc 1 730 9 is_stmt 1
	.loc 1 730 12 is_stmt 0
	call	SF_Cfg_Get_Flash_Cfg_Need_Lock
.LVL10:
	.loc 1 730 11
	beq	a0,zero,.L1
	lui	a4,%hi(.LANCHOR0)
	addi	a3,a4,%lo(.LANCHOR0)
	.loc 1 733 14
	li	a5,0
	addi	a4,a4,%lo(.LANCHOR0)
	.loc 1 733 9
	li	a2,24
.L6:
.LVL11:
	.loc 1 734 13 is_stmt 1
	.loc 1 734 15 is_stmt 0
	lw	a1,0(a3)
	bne	a1,s0,.L5
	.loc 1 735 17 is_stmt 1
	.loc 1 735 58 is_stmt 0
	li	a3,12
	mul	a5,a5,a3
.LVL12:
	.loc 1 735 17
	li	a2,84
	.loc 1 735 58
	add	a5,a4,a5
	.loc 1 735 17
	lw	a1,8(a5)
	j	.L12
.LVL13:
.L5:
	.loc 1 733 60 is_stmt 1 discriminator 2
	.loc 1 733 61 is_stmt 0 discriminator 2
	addi	a5,a5,1
.LVL14:
	.loc 1 733 17 is_stmt 1 discriminator 2
	.loc 1 733 9 is_stmt 0 discriminator 2
	addi	a3,a3,12
	bne	a5,a2,.L6
.LVL15:
.L3:
	.loc 1 741 12
	li	a0,1
	j	.L1
	.cfi_endproc
.LFE8:
	.size	SF_Cfg_Get_Flash_Cfg_Need_Lock_Ext, .-SF_Cfg_Get_Flash_Cfg_Need_Lock_Ext
	.section	.tcm_code./mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_sf_cfg_ext.c756,"ax",@progbits
	.align	1
	.globl	SF_Cfg_Flash_Identify_Ext
	.type	SF_Cfg_Flash_Identify_Ext, @function
SF_Cfg_Flash_Identify_Ext:
.LFB9:
	.loc 1 758 1 is_stmt 1
	.cfi_startproc
.LVL16:
	.loc 1 759 5
	.loc 1 760 5
	.loc 1 761 5
	.loc 1 763 5
	.loc 1 758 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	s1,4(sp)
	sw	s2,0(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 1, -4
	.loc 1 758 1
	mv	s2,a0
	mv	s1,a4
	.loc 1 763 9
	call	SF_Cfg_Flash_Identify
.LVL17:
	mv	s0,a0
.LVL18:
	.loc 1 764 5 is_stmt 1
	.loc 1 764 7 is_stmt 0
	beq	s2,zero,.L14
	.loc 1 765 9 is_stmt 1
	lbu	a1,0(s1)
	li	a4,32
	li	a3,0
	li	a2,1
	andi	a1,a1,15
	mv	a0,s1
	call	SFlash_Set_IDbus_Cfg
.LVL19:
.L14:
	.loc 1 767 5
	.loc 1 767 7 is_stmt 0
	blt	s0,zero,.L13
	.loc 1 771 5 is_stmt 1
	lui	a3,%hi(.LANCHOR0)
	.loc 1 771 11 is_stmt 0
	slli	s0,s0,8
.LVL20:
	addi	a4,a3,%lo(.LANCHOR0)
	srli	s0,s0,8
.LVL21:
	.loc 1 772 5 is_stmt 1
	.loc 1 772 13
	.loc 1 772 10 is_stmt 0
	li	a5,0
	addi	a3,a3,%lo(.LANCHOR0)
	.loc 1 772 5
	li	a2,24
.LVL22:
.L17:
	.loc 1 773 9 is_stmt 1
	.loc 1 773 11 is_stmt 0
	lw	a1,0(a4)
	bne	a1,s0,.L16
	.loc 1 774 13 is_stmt 1
	.loc 1 774 54 is_stmt 0
	li	a4,12
	mul	a5,a5,a4
.LVL23:
	.loc 1 774 13
	li	a2,84
	mv	a0,s1
	.loc 1 774 54
	add	a5,a3,a5
	.loc 1 774 13
	lw	a1,8(a5)
	call	BL602_MemCpy_Fast
.LVL24:
	.loc 1 775 13 is_stmt 1
	.loc 1 778 5
	.loc 1 781 9
	.loc 1 781 23 is_stmt 0
	li	a5,-2147483648
	or	s0,s0,a5
.LVL25:
.L13:
	.loc 1 783 1
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	mv	a0,s0
	lw	s0,8(sp)
	.cfi_restore 8
	lw	s1,4(sp)
	.cfi_restore 9
.LVL26:
	lw	s2,0(sp)
	.cfi_restore 18
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL27:
.L16:
	.cfi_restore_state
	.loc 1 772 56 is_stmt 1 discriminator 2
	.loc 1 772 57 is_stmt 0 discriminator 2
	addi	a5,a5,1
.LVL28:
	.loc 1 772 13 is_stmt 1 discriminator 2
	.loc 1 772 5 is_stmt 0 discriminator 2
	addi	a4,a4,12
	bne	a5,a2,.L17
	j	.L13
	.cfi_endproc
.LFE9:
	.size	SF_Cfg_Flash_Identify_Ext, .-SF_Cfg_Flash_Identify_Ext
	.section	.tcm_const./mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_sf_cfg_ext.c170,"a"
	.align	2
	.type	flashCfg_Gd_Md_40D, @object
	.size	flashCfg_Gd_Md_40D, 84
flashCfg_Gd_Md_40D:
	.byte	17
	.byte	0
	.byte	1
	.byte	1
	.byte	102
	.byte	-103
	.byte	-1
	.byte	3
	.byte	-97
	.byte	0
	.byte	-97
	.byte	0
	.byte	4
	.byte	81
	.half	256
	.byte	-57
	.byte	32
	.byte	82
	.byte	-40
	.byte	6
	.byte	2
	.byte	50
	.byte	0
	.byte	11
	.byte	1
	.byte	11
	.byte	1
	.byte	59
	.byte	1
	.byte	-69
	.byte	0
	.byte	107
	.byte	1
	.byte	-21
	.byte	2
	.byte	-21
	.byte	2
	.byte	2
	.byte	80
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	2
	.byte	1
	.byte	-85
	.byte	1
	.string	"\0055"
	.zero	1
	.string	"\001\001"
	.zero	1
	.byte	56
	.byte	-1
	.byte	-96
	.byte	-1
	.byte	119
	.byte	3
	.byte	2
	.byte	64
	.byte	119
	.byte	3
	.byte	2
	.byte	-16
	.half	300
	.half	1200
	.half	1200
	.half	5
	.half	-32536
	.byte	20
	.byte	0
	.section	.tcm_const./mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_sf_cfg_ext.c268,"a"
	.align	2
	.type	flashCfg_XM25QH16, @object
	.size	flashCfg_XM25QH16, 84
flashCfg_XM25QH16:
	.byte	4
	.byte	1
	.byte	1
	.byte	1
	.byte	102
	.byte	-103
	.byte	-1
	.byte	3
	.byte	-97
	.byte	0
	.byte	-97
	.byte	0
	.byte	4
	.byte	32
	.half	256
	.byte	-57
	.byte	32
	.byte	82
	.byte	-40
	.byte	6
	.byte	2
	.byte	50
	.byte	0
	.byte	11
	.byte	1
	.byte	11
	.byte	1
	.byte	59
	.byte	1
	.byte	-69
	.byte	0
	.byte	107
	.byte	1
	.byte	-21
	.byte	2
	.byte	-21
	.byte	2
	.byte	2
	.byte	80
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	-85
	.byte	1
	.string	"\0055"
	.zero	1
	.string	"\0011"
	.zero	1
	.byte	56
	.byte	-1
	.byte	32
	.byte	-1
	.byte	119
	.byte	3
	.byte	2
	.byte	64
	.byte	119
	.byte	3
	.byte	2
	.byte	-16
	.half	400
	.half	1600
	.half	2000
	.half	5
	.half	-32536
	.byte	3
	.byte	0
	.section	.tcm_const./mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_sf_cfg_ext.c366,"a"
	.align	2
	.type	flashCfg_MX_KH25, @object
	.size	flashCfg_MX_KH25, 84
flashCfg_MX_KH25:
	.byte	17
	.byte	0
	.byte	1
	.byte	1
	.byte	102
	.byte	-103
	.byte	-1
	.byte	3
	.byte	-97
	.byte	0
	.byte	-97
	.byte	0
	.byte	4
	.byte	-62
	.half	256
	.byte	-57
	.byte	32
	.byte	82
	.byte	-40
	.byte	6
	.byte	2
	.byte	50
	.byte	0
	.byte	11
	.byte	1
	.byte	11
	.byte	1
	.byte	59
	.byte	1
	.byte	-69
	.byte	0
	.byte	107
	.byte	1
	.byte	-21
	.byte	2
	.byte	-21
	.byte	2
	.byte	2
	.byte	80
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	-85
	.byte	1
	.string	"\005"
	.string	""
	.zero	1
	.string	"\001"
	.string	""
	.zero	1
	.byte	56
	.byte	-1
	.byte	32
	.byte	-1
	.byte	119
	.byte	3
	.byte	2
	.byte	64
	.byte	119
	.byte	3
	.byte	2
	.byte	-16
	.half	300
	.half	1200
	.half	1200
	.half	5
	.half	-32536
	.byte	20
	.byte	0
	.section	.tcm_const./mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_sf_cfg_ext.c464,"a"
	.align	2
	.type	flashCfg_ZD_25Q16B, @object
	.size	flashCfg_ZD_25Q16B, 84
flashCfg_ZD_25Q16B:
	.byte	20
	.byte	1
	.byte	1
	.byte	1
	.byte	102
	.byte	-103
	.byte	-1
	.byte	3
	.byte	-97
	.byte	0
	.byte	-97
	.byte	0
	.byte	4
	.byte	-70
	.half	256
	.byte	-57
	.byte	32
	.byte	82
	.byte	-40
	.byte	6
	.byte	2
	.byte	50
	.byte	0
	.byte	11
	.byte	1
	.byte	11
	.byte	1
	.byte	59
	.byte	1
	.byte	-69
	.byte	0
	.byte	107
	.byte	1
	.byte	-21
	.byte	2
	.byte	-21
	.byte	2
	.byte	2
	.byte	80
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	2
	.byte	1
	.byte	-85
	.byte	1
	.string	"\0055"
	.zero	1
	.string	"\001\001"
	.zero	1
	.byte	56
	.byte	-1
	.byte	-96
	.byte	-1
	.byte	119
	.byte	3
	.byte	2
	.byte	64
	.byte	119
	.byte	3
	.byte	2
	.byte	-16
	.half	300
	.half	1200
	.half	1200
	.half	5
	.half	-32536
	.byte	20
	.byte	0
	.section	.tcm_const./mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_sf_cfg_ext.c562,"a"
	.align	2
	.set	.LANCHOR0,. + 0
	.type	flashInfos, @object
	.size	flashInfos, 288
flashInfos:
	.word	1327265
	.zero	4
	.word	flashCfg_FM_25Q08
	.word	1261649
	.zero	4
	.word	flashCfg_Gd_Md_40D
	.word	1327136
	.zero	4
	.word	flashCfg_XM25QH16
	.word	1392672
	.zero	4
	.word	flashCfg_XM25QH16
	.word	1458208
	.zero	4
	.word	flashCfg_XM25QH16
	.word	1523744
	.zero	4
	.word	flashCfg_XM25QH16
	.word	1253570
	.zero	4
	.word	flashCfg_MX_KH25
	.word	1319106
	.zero	4
	.word	flashCfg_MX_KH25
	.word	1384642
	.zero	4
	.word	flashCfg_MX_KH25
	.word	1258078
	.zero	4
	.word	flashCfg_MX_KH25
	.word	1323614
	.zero	4
	.word	flashCfg_MX_KH25
	.word	1392734
	.zero	4
	.word	flashCfg_XM25QH16
	.word	1458270
	.zero	4
	.word	flashCfg_XM25QH16
	.word	1523806
	.zero	4
	.word	flashCfg_XM25QH16
	.word	1400926
	.zero	4
	.word	flashCfg_XM25QH16
	.word	1389662
	.zero	4
	.word	flashCfg_XM25QH16
	.word	1401067
	.zero	4
	.word	flashCfg_FM_25Q08
	.word	1523912
	.zero	4
	.word	flashCfg_XM25QH16
	.word	1589448
	.zero	4
	.word	flashCfg_XM25QH16
	.word	1532037
	.zero	4
	.word	flashCfg_XM25QH16
	.word	1523723
	.zero	4
	.word	flashCfg_FM_25Q08
	.word	1401018
	.zero	4
	.word	flashCfg_ZD_25Q16B
	.word	1335501
	.zero	4
	.word	flashCfg_FM_25Q08
	.word	1601775
	.zero	4
	.word	flashCfg_XM25QH16
	.section	.tcm_const./mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_sf_cfg_ext.c72,"a"
	.align	2
	.type	flashCfg_FM_25Q08, @object
	.size	flashCfg_FM_25Q08, 84
flashCfg_FM_25Q08:
	.byte	4
	.byte	1
	.byte	1
	.byte	1
	.byte	102
	.byte	-103
	.byte	-1
	.byte	3
	.byte	-97
	.byte	0
	.byte	-97
	.byte	0
	.byte	4
	.byte	-56
	.half	256
	.byte	-57
	.byte	32
	.byte	82
	.byte	-40
	.byte	6
	.byte	2
	.byte	50
	.byte	0
	.byte	11
	.byte	1
	.byte	11
	.byte	1
	.byte	59
	.byte	1
	.byte	-69
	.byte	0
	.byte	107
	.byte	1
	.byte	-21
	.byte	2
	.byte	-21
	.byte	2
	.byte	2
	.byte	80
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	2
	.byte	1
	.byte	-85
	.byte	1
	.string	"\0055"
	.zero	1
	.string	"\001\001"
	.zero	1
	.byte	56
	.byte	-1
	.byte	-96
	.byte	-1
	.byte	119
	.byte	3
	.byte	2
	.byte	64
	.byte	119
	.byte	3
	.byte	2
	.byte	-16
	.half	300
	.half	1200
	.half	1200
	.half	5
	.half	-32536
	.byte	20
	.byte	0
	.text
.Letext0:
	.file 2 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.file 3 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_common.h"
	.file 4 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_sf_ctrl.h"
	.file 5 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_sflash.h"
	.file 6 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_sf_cfg.h"
	.file 7 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_xip_sflash.h"
	.file 8 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/Common/soft_crc/softcrc.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x86e
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF127
	.byte	0xc
	.4byte	.LASF128
	.4byte	.LASF129
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
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
	.4byte	0x54
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.byte	0x3
	.4byte	.LASF7
	.byte	0x2
	.byte	0x31
	.byte	0x1c
	.4byte	0x67
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
	.byte	0x5
	.4byte	0x48
	.4byte	0x9f
	.byte	0x6
	.4byte	0x25
	.byte	0x3
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0xa5
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.byte	0x8
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x3
	.byte	0x17
	.byte	0x1
	.4byte	0xcd
	.byte	0x9
	.4byte	.LASF13
	.byte	0
	.byte	0x9
	.4byte	.LASF14
	.byte	0x1
	.byte	0x9
	.4byte	.LASF15
	.byte	0x2
	.byte	0
	.byte	0x3
	.4byte	.LASF16
	.byte	0x3
	.byte	0x1b
	.byte	0x2
	.4byte	0xac
	.byte	0x5
	.4byte	0x48
	.4byte	0xe9
	.byte	0x6
	.4byte	0x25
	.byte	0x5b
	.byte	0
	.byte	0x8
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x4
	.byte	0x62
	.byte	0xe
	.4byte	0x116
	.byte	0x9
	.4byte	.LASF17
	.byte	0
	.byte	0x9
	.4byte	.LASF18
	.byte	0x1
	.byte	0x9
	.4byte	.LASF19
	.byte	0x2
	.byte	0x9
	.4byte	.LASF20
	.byte	0x3
	.byte	0x9
	.4byte	.LASF21
	.byte	0x4
	.byte	0
	.byte	0x8
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x4
	.byte	0x7d
	.byte	0xe
	.4byte	0x137
	.byte	0x9
	.4byte	.LASF22
	.byte	0
	.byte	0x9
	.4byte	.LASF23
	.byte	0x1
	.byte	0x9
	.4byte	.LASF24
	.byte	0x2
	.byte	0
	.byte	0x8
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x4
	.byte	0x8f
	.byte	0xe
	.4byte	0x158
	.byte	0x9
	.4byte	.LASF25
	.byte	0
	.byte	0x9
	.4byte	.LASF26
	.byte	0x1
	.byte	0x9
	.4byte	.LASF27
	.byte	0x2
	.byte	0
	.byte	0xa
	.byte	0x54
	.byte	0x5
	.byte	0x39
	.byte	0x9
	.4byte	0x50a
	.byte	0xb
	.4byte	.LASF28
	.byte	0x5
	.byte	0x3a
	.byte	0xd
	.4byte	0x48
	.byte	0
	.byte	0xb
	.4byte	.LASF29
	.byte	0x5
	.byte	0x3b
	.byte	0xd
	.4byte	0x48
	.byte	0x1
	.byte	0xb
	.4byte	.LASF30
	.byte	0x5
	.byte	0x3c
	.byte	0xd
	.4byte	0x48
	.byte	0x2
	.byte	0xb
	.4byte	.LASF31
	.byte	0x5
	.byte	0x3d
	.byte	0xd
	.4byte	0x48
	.byte	0x3
	.byte	0xb
	.4byte	.LASF32
	.byte	0x5
	.byte	0x3e
	.byte	0xd
	.4byte	0x48
	.byte	0x4
	.byte	0xb
	.4byte	.LASF33
	.byte	0x5
	.byte	0x3f
	.byte	0xd
	.4byte	0x48
	.byte	0x5
	.byte	0xb
	.4byte	.LASF34
	.byte	0x5
	.byte	0x40
	.byte	0xd
	.4byte	0x48
	.byte	0x6
	.byte	0xb
	.4byte	.LASF35
	.byte	0x5
	.byte	0x41
	.byte	0xd
	.4byte	0x48
	.byte	0x7
	.byte	0xb
	.4byte	.LASF36
	.byte	0x5
	.byte	0x42
	.byte	0xd
	.4byte	0x48
	.byte	0x8
	.byte	0xb
	.4byte	.LASF37
	.byte	0x5
	.byte	0x43
	.byte	0xd
	.4byte	0x48
	.byte	0x9
	.byte	0xb
	.4byte	.LASF38
	.byte	0x5
	.byte	0x44
	.byte	0xd
	.4byte	0x48
	.byte	0xa
	.byte	0xb
	.4byte	.LASF39
	.byte	0x5
	.byte	0x45
	.byte	0xd
	.4byte	0x48
	.byte	0xb
	.byte	0xb
	.4byte	.LASF40
	.byte	0x5
	.byte	0x46
	.byte	0xd
	.4byte	0x48
	.byte	0xc
	.byte	0xc
	.string	"mid"
	.byte	0x5
	.byte	0x47
	.byte	0xd
	.4byte	0x48
	.byte	0xd
	.byte	0xb
	.4byte	.LASF41
	.byte	0x5
	.byte	0x48
	.byte	0xe
	.4byte	0x5b
	.byte	0xe
	.byte	0xb
	.4byte	.LASF42
	.byte	0x5
	.byte	0x49
	.byte	0xd
	.4byte	0x48
	.byte	0x10
	.byte	0xb
	.4byte	.LASF43
	.byte	0x5
	.byte	0x4a
	.byte	0xd
	.4byte	0x48
	.byte	0x11
	.byte	0xb
	.4byte	.LASF44
	.byte	0x5
	.byte	0x4b
	.byte	0xd
	.4byte	0x48
	.byte	0x12
	.byte	0xb
	.4byte	.LASF45
	.byte	0x5
	.byte	0x4c
	.byte	0xd
	.4byte	0x48
	.byte	0x13
	.byte	0xb
	.4byte	.LASF46
	.byte	0x5
	.byte	0x4d
	.byte	0xd
	.4byte	0x48
	.byte	0x14
	.byte	0xb
	.4byte	.LASF47
	.byte	0x5
	.byte	0x4e
	.byte	0xd
	.4byte	0x48
	.byte	0x15
	.byte	0xb
	.4byte	.LASF48
	.byte	0x5
	.byte	0x4f
	.byte	0xd
	.4byte	0x48
	.byte	0x16
	.byte	0xb
	.4byte	.LASF49
	.byte	0x5
	.byte	0x50
	.byte	0xd
	.4byte	0x48
	.byte	0x17
	.byte	0xb
	.4byte	.LASF50
	.byte	0x5
	.byte	0x51
	.byte	0xd
	.4byte	0x48
	.byte	0x18
	.byte	0xb
	.4byte	.LASF51
	.byte	0x5
	.byte	0x52
	.byte	0xd
	.4byte	0x48
	.byte	0x19
	.byte	0xb
	.4byte	.LASF52
	.byte	0x5
	.byte	0x53
	.byte	0xd
	.4byte	0x48
	.byte	0x1a
	.byte	0xb
	.4byte	.LASF53
	.byte	0x5
	.byte	0x54
	.byte	0xd
	.4byte	0x48
	.byte	0x1b
	.byte	0xb
	.4byte	.LASF54
	.byte	0x5
	.byte	0x55
	.byte	0xd
	.4byte	0x48
	.byte	0x1c
	.byte	0xb
	.4byte	.LASF55
	.byte	0x5
	.byte	0x56
	.byte	0xd
	.4byte	0x48
	.byte	0x1d
	.byte	0xb
	.4byte	.LASF56
	.byte	0x5
	.byte	0x57
	.byte	0xd
	.4byte	0x48
	.byte	0x1e
	.byte	0xb
	.4byte	.LASF57
	.byte	0x5
	.byte	0x58
	.byte	0xd
	.4byte	0x48
	.byte	0x1f
	.byte	0xb
	.4byte	.LASF58
	.byte	0x5
	.byte	0x59
	.byte	0xd
	.4byte	0x48
	.byte	0x20
	.byte	0xb
	.4byte	.LASF59
	.byte	0x5
	.byte	0x5a
	.byte	0xd
	.4byte	0x48
	.byte	0x21
	.byte	0xb
	.4byte	.LASF60
	.byte	0x5
	.byte	0x5b
	.byte	0xd
	.4byte	0x48
	.byte	0x22
	.byte	0xb
	.4byte	.LASF61
	.byte	0x5
	.byte	0x5c
	.byte	0xd
	.4byte	0x48
	.byte	0x23
	.byte	0xb
	.4byte	.LASF62
	.byte	0x5
	.byte	0x5d
	.byte	0xd
	.4byte	0x48
	.byte	0x24
	.byte	0xb
	.4byte	.LASF63
	.byte	0x5
	.byte	0x5e
	.byte	0xd
	.4byte	0x48
	.byte	0x25
	.byte	0xb
	.4byte	.LASF64
	.byte	0x5
	.byte	0x5f
	.byte	0xd
	.4byte	0x48
	.byte	0x26
	.byte	0xb
	.4byte	.LASF65
	.byte	0x5
	.byte	0x60
	.byte	0xd
	.4byte	0x48
	.byte	0x27
	.byte	0xb
	.4byte	.LASF66
	.byte	0x5
	.byte	0x61
	.byte	0xd
	.4byte	0x48
	.byte	0x28
	.byte	0xb
	.4byte	.LASF67
	.byte	0x5
	.byte	0x62
	.byte	0xd
	.4byte	0x48
	.byte	0x29
	.byte	0xb
	.4byte	.LASF68
	.byte	0x5
	.byte	0x63
	.byte	0xd
	.4byte	0x48
	.byte	0x2a
	.byte	0xb
	.4byte	.LASF69
	.byte	0x5
	.byte	0x64
	.byte	0xd
	.4byte	0x48
	.byte	0x2b
	.byte	0xb
	.4byte	.LASF70
	.byte	0x5
	.byte	0x65
	.byte	0xd
	.4byte	0x48
	.byte	0x2c
	.byte	0xb
	.4byte	.LASF71
	.byte	0x5
	.byte	0x66
	.byte	0xd
	.4byte	0x48
	.byte	0x2d
	.byte	0xb
	.4byte	.LASF72
	.byte	0x5
	.byte	0x67
	.byte	0xd
	.4byte	0x48
	.byte	0x2e
	.byte	0xb
	.4byte	.LASF73
	.byte	0x5
	.byte	0x68
	.byte	0xd
	.4byte	0x48
	.byte	0x2f
	.byte	0xb
	.4byte	.LASF74
	.byte	0x5
	.byte	0x69
	.byte	0xd
	.4byte	0x48
	.byte	0x30
	.byte	0xb
	.4byte	.LASF75
	.byte	0x5
	.byte	0x6a
	.byte	0xd
	.4byte	0x48
	.byte	0x31
	.byte	0xb
	.4byte	.LASF76
	.byte	0x5
	.byte	0x6b
	.byte	0xd
	.4byte	0x48
	.byte	0x32
	.byte	0xb
	.4byte	.LASF77
	.byte	0x5
	.byte	0x6c
	.byte	0xd
	.4byte	0x48
	.byte	0x33
	.byte	0xb
	.4byte	.LASF78
	.byte	0x5
	.byte	0x6d
	.byte	0xd
	.4byte	0x8f
	.byte	0x34
	.byte	0xb
	.4byte	.LASF79
	.byte	0x5
	.byte	0x6e
	.byte	0xd
	.4byte	0x8f
	.byte	0x38
	.byte	0xb
	.4byte	.LASF80
	.byte	0x5
	.byte	0x6f
	.byte	0xd
	.4byte	0x48
	.byte	0x3c
	.byte	0xb
	.4byte	.LASF81
	.byte	0x5
	.byte	0x70
	.byte	0xd
	.4byte	0x48
	.byte	0x3d
	.byte	0xb
	.4byte	.LASF82
	.byte	0x5
	.byte	0x71
	.byte	0xd
	.4byte	0x48
	.byte	0x3e
	.byte	0xb
	.4byte	.LASF83
	.byte	0x5
	.byte	0x72
	.byte	0xd
	.4byte	0x48
	.byte	0x3f
	.byte	0xb
	.4byte	.LASF84
	.byte	0x5
	.byte	0x73
	.byte	0xd
	.4byte	0x48
	.byte	0x40
	.byte	0xb
	.4byte	.LASF85
	.byte	0x5
	.byte	0x74
	.byte	0xd
	.4byte	0x48
	.byte	0x41
	.byte	0xb
	.4byte	.LASF86
	.byte	0x5
	.byte	0x75
	.byte	0xd
	.4byte	0x48
	.byte	0x42
	.byte	0xb
	.4byte	.LASF87
	.byte	0x5
	.byte	0x76
	.byte	0xd
	.4byte	0x48
	.byte	0x43
	.byte	0xb
	.4byte	.LASF88
	.byte	0x5
	.byte	0x77
	.byte	0xd
	.4byte	0x48
	.byte	0x44
	.byte	0xb
	.4byte	.LASF89
	.byte	0x5
	.byte	0x78
	.byte	0xd
	.4byte	0x48
	.byte	0x45
	.byte	0xb
	.4byte	.LASF90
	.byte	0x5
	.byte	0x79
	.byte	0xd
	.4byte	0x48
	.byte	0x46
	.byte	0xb
	.4byte	.LASF91
	.byte	0x5
	.byte	0x7a
	.byte	0xd
	.4byte	0x48
	.byte	0x47
	.byte	0xb
	.4byte	.LASF92
	.byte	0x5
	.byte	0x7b
	.byte	0xe
	.4byte	0x5b
	.byte	0x48
	.byte	0xb
	.4byte	.LASF93
	.byte	0x5
	.byte	0x7c
	.byte	0xe
	.4byte	0x5b
	.byte	0x4a
	.byte	0xb
	.4byte	.LASF94
	.byte	0x5
	.byte	0x7d
	.byte	0xe
	.4byte	0x5b
	.byte	0x4c
	.byte	0xb
	.4byte	.LASF95
	.byte	0x5
	.byte	0x7e
	.byte	0xe
	.4byte	0x5b
	.byte	0x4e
	.byte	0xb
	.4byte	.LASF96
	.byte	0x5
	.byte	0x7f
	.byte	0xe
	.4byte	0x5b
	.byte	0x50
	.byte	0xb
	.4byte	.LASF97
	.byte	0x5
	.byte	0x80
	.byte	0xd
	.4byte	0x48
	.byte	0x52
	.byte	0xb
	.4byte	.LASF98
	.byte	0x5
	.byte	0x81
	.byte	0xd
	.4byte	0x48
	.byte	0x53
	.byte	0
	.byte	0x3
	.4byte	.LASF99
	.byte	0x5
	.byte	0x82
	.byte	0x1b
	.4byte	0x158
	.byte	0xd
	.4byte	0x50a
	.byte	0x7
	.byte	0x4
	.4byte	0x50a
	.byte	0x7
	.byte	0x4
	.4byte	0x6e
	.byte	0xa
	.byte	0xc
	.byte	0x1
	.byte	0x3d
	.byte	0x9
	.4byte	0x558
	.byte	0xb
	.4byte	.LASF100
	.byte	0x1
	.byte	0x3e
	.byte	0xe
	.4byte	0x6e
	.byte	0
	.byte	0xb
	.4byte	.LASF101
	.byte	0x1
	.byte	0x3f
	.byte	0xb
	.4byte	0x9f
	.byte	0x4
	.byte	0xc
	.string	"cfg"
	.byte	0x1
	.byte	0x40
	.byte	0x1f
	.4byte	0x558
	.byte	0x8
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x516
	.byte	0x3
	.4byte	.LASF102
	.byte	0x1
	.byte	0x41
	.byte	0x2
	.4byte	0x527
	.byte	0xd
	.4byte	0x55e
	.byte	0xe
	.4byte	.LASF103
	.byte	0x1
	.byte	0x48
	.byte	0xc9
	.4byte	0x516
	.byte	0x5
	.byte	0x3
	.4byte	flashCfg_FM_25Q08
	.byte	0xe
	.4byte	.LASF104
	.byte	0x1
	.byte	0xaa
	.byte	0xca
	.4byte	0x516
	.byte	0x5
	.byte	0x3
	.4byte	flashCfg_Gd_Md_40D
	.byte	0xf
	.4byte	.LASF105
	.byte	0x1
	.2byte	0x10c
	.byte	0xca
	.4byte	0x516
	.byte	0x5
	.byte	0x3
	.4byte	flashCfg_XM25QH16
	.byte	0xf
	.4byte	.LASF106
	.byte	0x1
	.2byte	0x16e
	.byte	0xca
	.4byte	0x516
	.byte	0x5
	.byte	0x3
	.4byte	flashCfg_MX_KH25
	.byte	0xf
	.4byte	.LASF107
	.byte	0x1
	.2byte	0x1d0
	.byte	0xca
	.4byte	0x516
	.byte	0x5
	.byte	0x3
	.4byte	flashCfg_ZD_25Q16B
	.byte	0x5
	.4byte	0x56a
	.4byte	0x5dc
	.byte	0x6
	.4byte	0x25
	.byte	0x17
	.byte	0
	.byte	0xd
	.4byte	0x5cc
	.byte	0xf
	.4byte	.LASF108
	.byte	0x1
	.2byte	0x232
	.byte	0xc4
	.4byte	0x5dc
	.byte	0x5
	.byte	0x3
	.4byte	flashInfos
	.byte	0x10
	.4byte	.LASF115
	.byte	0x1
	.2byte	0x2f4
	.byte	0xb2
	.4byte	0x6e
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0x6f8
	.byte	0x11
	.4byte	.LASF109
	.byte	0x1
	.2byte	0x2f4
	.byte	0xd4
	.4byte	0x48
	.4byte	.LLST5
	.byte	0x11
	.4byte	.LASF110
	.byte	0x1
	.2byte	0x2f5
	.byte	0xe
	.4byte	0x6e
	.4byte	.LLST6
	.byte	0x11
	.4byte	.LASF111
	.byte	0x1
	.2byte	0x2f5
	.byte	0x20
	.4byte	0x6e
	.4byte	.LLST7
	.byte	0x11
	.4byte	.LASF112
	.byte	0x1
	.2byte	0x2f5
	.byte	0x34
	.4byte	0x48
	.4byte	.LLST8
	.byte	0x11
	.4byte	.LASF113
	.byte	0x1
	.2byte	0x2f5
	.byte	0x58
	.4byte	0x51b
	.4byte	.LLST9
	.byte	0x12
	.4byte	.LASF114
	.byte	0x1
	.2byte	0x2f7
	.byte	0xe
	.4byte	0x6e
	.4byte	.LLST10
	.byte	0x13
	.string	"i"
	.byte	0x1
	.2byte	0x2f8
	.byte	0xe
	.4byte	0x6e
	.4byte	.LLST11
	.byte	0x13
	.string	"ret"
	.byte	0x1
	.2byte	0x2f9
	.byte	0xe
	.4byte	0x6e
	.4byte	.LLST12
	.byte	0x14
	.4byte	.LVL17
	.4byte	0x81d
	.4byte	0x6bd
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x15
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x15
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x14
	.4byte	.LVL19
	.4byte	0x829
	.4byte	0x6e1
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x15
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x31
	.byte	0x15
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0x15
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0x16
	.4byte	.LVL24
	.4byte	0x835
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x15
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x54
	.byte	0
	.byte	0
	.byte	0x10
	.4byte	.LASF116
	.byte	0x1
	.2byte	0x2c8
	.byte	0xb5
	.4byte	0xcd
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0x80d
	.byte	0x11
	.4byte	.LASF117
	.byte	0x1
	.2byte	0x2c8
	.byte	0xe1
	.4byte	0x6e
	.4byte	.LLST0
	.byte	0x11
	.4byte	.LASF113
	.byte	0x1
	.2byte	0x2c8
	.byte	0xfe
	.4byte	0x51b
	.4byte	.LLST1
	.byte	0x13
	.string	"i"
	.byte	0x1
	.2byte	0x2ca
	.byte	0xe
	.4byte	0x6e
	.4byte	.LLST2
	.byte	0x17
	.string	"buf"
	.byte	0x1
	.2byte	0x2cb
	.byte	0xd
	.4byte	0xd9
	.byte	0x3
	.byte	0x91
	.byte	0x94,0x7f
	.byte	0x13
	.string	"crc"
	.byte	0x1
	.2byte	0x2cc
	.byte	0xe
	.4byte	0x6e
	.4byte	.LLST3
	.byte	0x12
	.4byte	.LASF118
	.byte	0x1
	.2byte	0x2cc
	.byte	0x13
	.4byte	0x521
	.4byte	.LLST4
	.byte	0xf
	.4byte	.LASF119
	.byte	0x1
	.2byte	0x2cd
	.byte	0xa
	.4byte	0x80d
	.byte	0x3
	.byte	0x91
	.byte	0x8c,0x7f
	.byte	0x14
	.4byte	.LVL3
	.4byte	0x841
	.4byte	0x7ac
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0xc
	.4byte	0x23000008
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0x94,0x7f
	.byte	0x15
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x5c
	.byte	0
	.byte	0x14
	.4byte	.LVL4
	.4byte	0x84d
	.4byte	0x7cd
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0x94,0x7f
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0x8c,0x7f
	.byte	0x15
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x34
	.byte	0
	.byte	0x14
	.4byte	.LVL5
	.4byte	0x859
	.4byte	0x7e8
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0x98,0x7f
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x8
	.byte	0x54
	.byte	0
	.byte	0x14
	.4byte	.LVL7
	.4byte	0x835
	.4byte	0x7fc
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x16
	.4byte	.LVL10
	.4byte	0x865
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0
	.byte	0x5
	.4byte	0xa5
	.4byte	0x81d
	.byte	0x6
	.4byte	0x25
	.byte	0x4
	.byte	0
	.byte	0x18
	.4byte	.LASF120
	.4byte	.LASF120
	.byte	0x6
	.byte	0x64
	.byte	0xa
	.byte	0x18
	.4byte	.LASF121
	.4byte	.LASF121
	.byte	0x5
	.byte	0xaf
	.byte	0xd
	.byte	0x18
	.4byte	.LASF122
	.4byte	.LASF122
	.byte	0x3
	.byte	0x8b
	.byte	0x7
	.byte	0x18
	.4byte	.LASF123
	.4byte	.LASF123
	.byte	0x7
	.byte	0x50
	.byte	0xd
	.byte	0x18
	.4byte	.LASF124
	.4byte	.LASF124
	.byte	0x3
	.byte	0x8e
	.byte	0x5
	.byte	0x18
	.4byte	.LASF125
	.4byte	.LASF125
	.byte	0x8
	.byte	0x7
	.byte	0xa
	.byte	0x18
	.4byte	.LASF126
	.4byte	.LASF126
	.byte	0x6
	.byte	0x61
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
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
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
	.byte	0x9
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xa
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
	.byte	0xb
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
	.byte	0xc
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
	.byte	0xd
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
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
	.byte	0x18
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
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x10
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
	.byte	0x11
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
	.byte	0x12
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
	.byte	0x15
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
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
	.byte	0x18
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
.LLST5:
	.4byte	.LVL16
	.4byte	.LVL17-1
	.2byte	0x1
	.byte	0x5a
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
	.4byte	.LVL16
	.4byte	.LVL17-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL17-1
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL16
	.4byte	.LVL17-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL17-1
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL16
	.4byte	.LVL17-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL17-1
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL16
	.4byte	.LVL17-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL17-1
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LFE9
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL16
	.4byte	.LVL21
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL27
	.4byte	.LFE9
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL16
	.4byte	.LVL22
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL27
	.4byte	.LFE9
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL16
	.4byte	.LVL18
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LVL20
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
	.4byte	.LVL9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL10-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL10-1
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL15
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
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL13
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x5f
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
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x3
	.byte	0x91
	.byte	0x6c
	.byte	0x9f
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
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF88:
	.string	"deBurstWrapCmd"
.LASF45:
	.string	"blk64EraseCmd"
.LASF129:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/bl602_std"
.LASF53:
	.string	"qpiFrDmyClk"
.LASF65:
	.string	"writeVregEnableCmd"
.LASF125:
	.string	"BFLB_Soft_CRC32"
.LASF73:
	.string	"wrEnableReadRegLen"
.LASF56:
	.string	"fastReadDioCmd"
.LASF126:
	.string	"SF_Cfg_Get_Flash_Cfg_Need_Lock"
.LASF102:
	.string	"Flash_Info_t"
.LASF69:
	.string	"wrEnableBit"
.LASF93:
	.string	"timeE32k"
.LASF11:
	.string	"long long unsigned int"
.LASF54:
	.string	"fastReadDoCmd"
.LASF31:
	.string	"clkInvert"
.LASF29:
	.string	"cReadSupport"
.LASF113:
	.string	"pFlashCfg"
.LASF90:
	.string	"deBurstWrapDataMode"
.LASF87:
	.string	"burstWrapData"
.LASF68:
	.string	"busyIndex"
.LASF92:
	.string	"timeEsector"
.LASF80:
	.string	"enterQpi"
.LASF4:
	.string	"long long int"
.LASF1:
	.string	"signed char"
.LASF36:
	.string	"jedecIdCmd"
.LASF39:
	.string	"qpiJedecIdCmdDmyClk"
.LASF84:
	.string	"burstWrapCmd"
.LASF16:
	.string	"BL_Err_Type"
.LASF3:
	.string	"long int"
.LASF23:
	.string	"SF_CTRL_ADDR_2_LINES"
.LASF99:
	.string	"SPI_Flash_Cfg_Type"
.LASF76:
	.string	"releasePowerDown"
.LASF62:
	.string	"qpiFastReadQioCmd"
.LASF123:
	.string	"XIP_SFlash_Read_Via_Cache_Need_Lock"
.LASF118:
	.string	"pCrc"
.LASF97:
	.string	"pdDelay"
.LASF22:
	.string	"SF_CTRL_ADDR_1_LINE"
.LASF128:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_sf_cfg_ext.c"
.LASF81:
	.string	"exitQpi"
.LASF30:
	.string	"clkDelay"
.LASF124:
	.string	"BL602_MemCmp"
.LASF58:
	.string	"fastReadQoCmd"
.LASF15:
	.string	"TIMEOUT"
.LASF86:
	.string	"burstWrapDataMode"
.LASF111:
	.string	"flashPinCfg"
.LASF0:
	.string	"unsigned int"
.LASF109:
	.string	"callFromFlash"
.LASF91:
	.string	"deBurstWrapData"
.LASF33:
	.string	"resetCmd"
.LASF10:
	.string	"long unsigned int"
.LASF98:
	.string	"qeData"
.LASF101:
	.string	"name"
.LASF40:
	.string	"sectorSize"
.LASF38:
	.string	"qpiJedecIdCmd"
.LASF8:
	.string	"short unsigned int"
.LASF119:
	.string	"flashCfgMagic"
.LASF48:
	.string	"qpageProgramCmd"
.LASF106:
	.string	"flashCfg_MX_KH25"
.LASF17:
	.string	"SF_CTRL_NIO_MODE"
.LASF72:
	.string	"wrEnableWriteRegLen"
.LASF44:
	.string	"blk32EraseCmd"
.LASF110:
	.string	"autoScan"
.LASF127:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
.LASF115:
	.string	"SF_Cfg_Flash_Identify_Ext"
.LASF120:
	.string	"SF_Cfg_Flash_Identify"
.LASF79:
	.string	"writeRegCmd"
.LASF28:
	.string	"ioMode"
.LASF121:
	.string	"SFlash_Set_IDbus_Cfg"
.LASF70:
	.string	"qeBit"
.LASF52:
	.string	"qpiFastReadCmd"
.LASF63:
	.string	"qpiFrQioDmyClk"
.LASF35:
	.string	"resetCreadCmdSize"
.LASF75:
	.string	"qeReadRegLen"
.LASF21:
	.string	"SF_CTRL_QIO_MODE"
.LASF77:
	.string	"busyReadRegLen"
.LASF14:
	.string	"ERROR"
.LASF24:
	.string	"SF_CTRL_ADDR_4_LINES"
.LASF7:
	.string	"uint16_t"
.LASF116:
	.string	"SF_Cfg_Get_Flash_Cfg_Need_Lock_Ext"
.LASF82:
	.string	"cReadMode"
.LASF89:
	.string	"deBurstWrapCmdDmyClk"
.LASF122:
	.string	"BL602_MemCpy_Fast"
.LASF107:
	.string	"flashCfg_ZD_25Q16B"
.LASF71:
	.string	"busyBit"
.LASF74:
	.string	"qeWriteRegLen"
.LASF32:
	.string	"resetEnCmd"
.LASF114:
	.string	"jdecId"
.LASF5:
	.string	"unsigned char"
.LASF67:
	.string	"qeIndex"
.LASF2:
	.string	"short int"
.LASF104:
	.string	"flashCfg_Gd_Md_40D"
.LASF105:
	.string	"flashCfg_XM25QH16"
.LASF108:
	.string	"flashInfos"
.LASF50:
	.string	"fastReadCmd"
.LASF41:
	.string	"pageSize"
.LASF46:
	.string	"writeEnableCmd"
.LASF61:
	.string	"frQioDmyClk"
.LASF55:
	.string	"frDoDmyClk"
.LASF49:
	.string	"qppAddrMode"
.LASF47:
	.string	"pageProgramCmd"
.LASF19:
	.string	"SF_CTRL_QO_MODE"
.LASF9:
	.string	"uint32_t"
.LASF18:
	.string	"SF_CTRL_DO_MODE"
.LASF100:
	.string	"jedecID"
.LASF34:
	.string	"resetCreadCmd"
.LASF12:
	.string	"char"
.LASF66:
	.string	"wrEnableIndex"
.LASF57:
	.string	"frDioDmyClk"
.LASF51:
	.string	"frDmyClk"
.LASF94:
	.string	"timeE64k"
.LASF37:
	.string	"jedecIdCmdDmyClk"
.LASF25:
	.string	"SF_CTRL_DATA_1_LINE"
.LASF117:
	.string	"flashID"
.LASF83:
	.string	"cRExit"
.LASF20:
	.string	"SF_CTRL_DIO_MODE"
.LASF60:
	.string	"fastReadQioCmd"
.LASF42:
	.string	"chipEraseCmd"
.LASF96:
	.string	"timeCe"
.LASF26:
	.string	"SF_CTRL_DATA_2_LINES"
.LASF103:
	.string	"flashCfg_FM_25Q08"
.LASF64:
	.string	"qpiPageProgramCmd"
.LASF85:
	.string	"burstWrapCmdDmyClk"
.LASF27:
	.string	"SF_CTRL_DATA_4_LINES"
.LASF6:
	.string	"uint8_t"
.LASF13:
	.string	"SUCCESS"
.LASF112:
	.string	"restoreDefault"
.LASF95:
	.string	"timePagePgm"
.LASF78:
	.string	"readRegCmd"
.LASF43:
	.string	"sectorEraseCmd"
.LASF59:
	.string	"frQoDmyClk"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
