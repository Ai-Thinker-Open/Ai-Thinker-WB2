	.file	"bl_wifi.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.bl_wifi_clock_enable,"ax",@progbits
	.align	1
	.globl	bl_wifi_clock_enable
	.type	bl_wifi_clock_enable, @function
bl_wifi_clock_enable:
.LFB8:
	.file 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/bl602_hal/bl_wifi.c"
	.loc 1 28 1
	.cfi_startproc
	.loc 1 29 5
	.loc 1 30 5
	.loc 1 30 11 is_stmt 0
	lui	a5,%hi(.LANCHOR0)
	addi	a5,a5,%lo(.LANCHOR0)
	.loc 1 30 8
	lw	a4,0(a5)
	bne	a4,zero,.L2
	.loc 1 31 9 is_stmt 1
	.loc 1 31 16 is_stmt 0
	li	a4,1
	sw	a4,0(a5)
.L2:
	.loc 1 35 5 is_stmt 1
	.loc 1 36 1 is_stmt 0
	li	a0,0
	ret
	.cfi_endproc
.LFE8:
	.size	bl_wifi_clock_enable, .-bl_wifi_clock_enable
	.section	.rodata.bl_wifi_enable_irq.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"Enable BMX IRQ\r\n"
	.section	.text.bl_wifi_enable_irq,"ax",@progbits
	.align	1
	.globl	bl_wifi_enable_irq
	.type	bl_wifi_enable_irq, @function
bl_wifi_enable_irq:
.LFB9:
	.loc 1 42 1 is_stmt 1
	.cfi_startproc
	.loc 1 43 5
	lui	a1,%hi(mac_irq)
	.loc 1 42 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 43 5
	addi	a1,a1,%lo(mac_irq)
	li	a0,70
	.loc 1 42 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 43 5
	call	bl_irq_register
.LVL0:
	.loc 1 44 5 is_stmt 1
	lui	a1,%hi(bl_irq_handler)
	addi	a1,a1,%lo(bl_irq_handler)
	li	a0,79
	call	bl_irq_register
.LVL1:
	.loc 1 45 5
	li	a0,70
	call	bl_irq_enable
.LVL2:
	.loc 1 46 5
	li	a0,79
	call	bl_irq_enable
.LVL3:
	.loc 1 50 5
	lui	a0,%hi(.LC0)
	addi	a0,a0,%lo(.LC0)
	call	puts
.LVL4:
	.loc 1 58 5
	.loc 1 59 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE9:
	.size	bl_wifi_enable_irq, .-bl_wifi_enable_irq
	.section	.text.bl_wifi_sta_mac_addr_set,"ax",@progbits
	.align	1
	.globl	bl_wifi_sta_mac_addr_set
	.type	bl_wifi_sta_mac_addr_set, @function
bl_wifi_sta_mac_addr_set:
.LFB10:
	.loc 1 63 1 is_stmt 1
	.cfi_startproc
.LVL5:
	.loc 1 64 5
	.loc 1 63 1 is_stmt 0
	mv	a1,a0
	.loc 1 64 5
	lui	a0,%hi(wifi_env)
.LVL6:
	.loc 1 63 1
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 64 5
	li	a2,6
	addi	a0,a0,%lo(wifi_env)
	.loc 1 63 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 64 5
	call	memcpy
.LVL7:
	.loc 1 65 5 is_stmt 1
	.loc 1 66 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE10:
	.size	bl_wifi_sta_mac_addr_set, .-bl_wifi_sta_mac_addr_set
	.section	.text.bl_wifi_ap_mac_addr_set,"ax",@progbits
	.align	1
	.globl	bl_wifi_ap_mac_addr_set
	.type	bl_wifi_ap_mac_addr_set, @function
bl_wifi_ap_mac_addr_set:
.LFB11:
	.loc 1 69 1 is_stmt 1
	.cfi_startproc
.LVL8:
	.loc 1 70 5
	.loc 1 69 1 is_stmt 0
	mv	a1,a0
	.loc 1 70 5
	lui	a0,%hi(wifi_env+12)
.LVL9:
	.loc 1 69 1
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 70 5
	li	a2,6
	addi	a0,a0,%lo(wifi_env+12)
	.loc 1 69 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 70 5
	call	memcpy
.LVL10:
	.loc 1 71 5 is_stmt 1
	.loc 1 72 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE11:
	.size	bl_wifi_ap_mac_addr_set, .-bl_wifi_ap_mac_addr_set
	.section	.text.bl_wifi_mac_addr_set,"ax",@progbits
	.align	1
	.globl	bl_wifi_mac_addr_set
	.type	bl_wifi_mac_addr_set, @function
bl_wifi_mac_addr_set:
.LFB12:
	.loc 1 75 1 is_stmt 1
	.cfi_startproc
.LVL11:
	.loc 1 76 5
	.loc 1 75 1 is_stmt 0
	mv	a1,a0
	.loc 1 76 5
	lui	a0,%hi(wifi_env+6)
.LVL12:
	.loc 1 75 1
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 76 5
	li	a2,6
	addi	a0,a0,%lo(wifi_env+6)
	.loc 1 75 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 76 5
	call	memcpy
.LVL13:
	.loc 1 77 5 is_stmt 1
	.loc 1 78 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE12:
	.size	bl_wifi_mac_addr_set, .-bl_wifi_mac_addr_set
	.section	.text.bl_wifi_mac_addr_get,"ax",@progbits
	.align	1
	.globl	bl_wifi_mac_addr_get
	.type	bl_wifi_mac_addr_get, @function
bl_wifi_mac_addr_get:
.LFB13:
	.loc 1 81 1 is_stmt 1
	.cfi_startproc
.LVL14:
	.loc 1 82 5
	lui	a1,%hi(wifi_env)
	.loc 1 81 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 82 5
	li	a2,6
	addi	a1,a1,%lo(wifi_env)
	.loc 1 81 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 82 5
	call	memcpy
.LVL15:
	.loc 1 83 5 is_stmt 1
	.loc 1 84 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE13:
	.size	bl_wifi_mac_addr_get, .-bl_wifi_mac_addr_get
	.section	.text.bl_wifi_country_code_set,"ax",@progbits
	.align	1
	.globl	bl_wifi_country_code_set
	.type	bl_wifi_country_code_set, @function
bl_wifi_country_code_set:
.LFB14:
	.loc 1 88 1 is_stmt 1
	.cfi_startproc
.LVL16:
	.loc 1 89 5
	.loc 1 89 27 is_stmt 0
	lui	a5,%hi(wifi_env+24)
	sb	a0,%lo(wifi_env+24)(a5)
	.loc 1 90 5 is_stmt 1
	.loc 1 91 1 is_stmt 0
	li	a0,0
.LVL17:
	ret
	.cfi_endproc
.LFE14:
	.size	bl_wifi_country_code_set, .-bl_wifi_country_code_set
	.section	.text.bl_wifi_ap_info_set,"ax",@progbits
	.align	1
	.globl	bl_wifi_ap_info_set
	.type	bl_wifi_ap_info_set, @function
bl_wifi_ap_info_set:
.LFB15:
	.loc 1 104 1 is_stmt 1
	.cfi_startproc
.LVL18:
	.loc 1 105 5
	.loc 1 104 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s5,4(sp)
	.cfi_offset 21, -28
	.loc 1 105 5
	lui	s5,%hi(wifi_env+25)
	.loc 1 104 1
	sw	s1,20(sp)
	sw	s3,12(sp)
	sw	s4,8(sp)
	.cfi_offset 9, -12
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	mv	s3,a0
	mv	s4,a1
	mv	s1,a2
	.loc 1 105 5
	li	a1,0
.LVL19:
	li	a2,99
.LVL20:
	addi	a0,s5,%lo(wifi_env+25)
.LVL21:
	.loc 1 104 1
	sw	ra,28(sp)
	sw	s0,24(sp)
	sw	s2,16(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 18, -16
	.loc 1 104 1
	mv	s0,a4
	mv	s2,a3
	.loc 1 105 5
	call	memset
.LVL22:
	.loc 1 106 5 is_stmt 1
	mv	a2,s4
	mv	a1,s3
	addi	a0,s5,%lo(wifi_env+25)
	call	memcpy
.LVL23:
	.loc 1 107 5
	lui	a0,%hi(wifi_env+58)
	mv	a2,s2
	mv	a1,s1
	addi	a0,a0,%lo(wifi_env+58)
	call	memcpy
.LVL24:
	.loc 1 108 5
	.loc 1 108 27 is_stmt 0
	lui	a5,%hi(wifi_env)
	addi	a5,a5,%lo(wifi_env)
	.loc 1 109 25
	li	a4,1
	.loc 1 108 27
	sb	s0,123(a5)
	.loc 1 109 5 is_stmt 1
	.loc 1 109 25 is_stmt 0
	sb	a4,124(a5)
	.loc 1 110 5 is_stmt 1
	.loc 1 111 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	lw	s1,20(sp)
	.cfi_restore 9
.LVL25:
	lw	s2,16(sp)
	.cfi_restore 18
	lw	s3,12(sp)
	.cfi_restore 19
.LVL26:
	lw	s4,8(sp)
	.cfi_restore 20
	lw	s5,4(sp)
	.cfi_restore 21
	li	a0,0
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE15:
	.size	bl_wifi_ap_info_set, .-bl_wifi_ap_info_set
	.section	.text.bl_wifi_ap_info_get,"ax",@progbits
	.align	1
	.globl	bl_wifi_ap_info_get
	.type	bl_wifi_ap_info_get, @function
bl_wifi_ap_info_get:
.LFB16:
	.loc 1 114 1 is_stmt 1
	.cfi_startproc
.LVL27:
	.loc 1 115 5
	.loc 1 115 17 is_stmt 0
	lui	a5,%hi(wifi_env+124)
	.loc 1 115 8
	lbu	a4,%lo(wifi_env+124)(a5)
	li	a5,1
	bne	a4,a5,.L18
	.loc 1 118 5 is_stmt 1
	lui	a1,%hi(wifi_env+25)
	.loc 1 114 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 118 5
	li	a2,99
	addi	a1,a1,%lo(wifi_env+25)
	.loc 1 114 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 118 5
	call	memcpy
.LVL28:
	.loc 1 119 5 is_stmt 1
	.loc 1 120 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 119 12
	li	a0,0
	.loc 1 120 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL29:
.L18:
	.loc 1 116 16
	li	a0,-1
.LVL30:
	.loc 1 120 1
	ret
	.cfi_endproc
.LFE16:
	.size	bl_wifi_ap_info_get, .-bl_wifi_ap_info_get
	.section	.text.bl_wifi_sta_info_set,"ax",@progbits
	.align	1
	.globl	bl_wifi_sta_info_set
	.type	bl_wifi_sta_info_set, @function
bl_wifi_sta_info_set:
.LFB17:
	.loc 1 123 1 is_stmt 1
	.cfi_startproc
.LVL31:
	.loc 1 124 5
	.loc 1 123 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s5,4(sp)
	.cfi_offset 21, -28
	.loc 1 124 5
	lui	s5,%hi(wifi_env+125)
	.loc 1 123 1
	sw	s1,20(sp)
	sw	s3,12(sp)
	sw	s4,8(sp)
	.cfi_offset 9, -12
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	mv	s3,a0
	mv	s4,a1
	mv	s1,a2
	.loc 1 124 5
	li	a1,0
.LVL32:
	li	a2,99
.LVL33:
	addi	a0,s5,%lo(wifi_env+125)
.LVL34:
	.loc 1 123 1
	sw	ra,28(sp)
	sw	s0,24(sp)
	sw	s2,16(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 18, -16
	.loc 1 123 1
	mv	s0,a4
	mv	s2,a3
	.loc 1 124 5
	call	memset
.LVL35:
	.loc 1 125 5 is_stmt 1
	mv	a2,s4
	mv	a1,s3
	addi	a0,s5,%lo(wifi_env+125)
	call	memcpy
.LVL36:
	.loc 1 126 5
	lui	a0,%hi(wifi_env+158)
	mv	a2,s2
	mv	a1,s1
	addi	a0,a0,%lo(wifi_env+158)
	call	memcpy
.LVL37:
	.loc 1 127 5
	.loc 1 127 26 is_stmt 0
	lui	a5,%hi(wifi_env+224)
	.loc 1 129 1
	lw	ra,28(sp)
	.cfi_restore 1
	.loc 1 127 26
	sb	s0,%lo(wifi_env+224)(a5)
	.loc 1 128 5 is_stmt 1
	.loc 1 129 1 is_stmt 0
	lw	s0,24(sp)
	.cfi_restore 8
.LVL38:
	lw	s1,20(sp)
	.cfi_restore 9
.LVL39:
	lw	s2,16(sp)
	.cfi_restore 18
	lw	s3,12(sp)
	.cfi_restore 19
.LVL40:
	lw	s4,8(sp)
	.cfi_restore 20
	lw	s5,4(sp)
	.cfi_restore 21
	li	a0,0
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE17:
	.size	bl_wifi_sta_info_set, .-bl_wifi_sta_info_set
	.section	.text.bl_wifi_sta_info_get,"ax",@progbits
	.align	1
	.globl	bl_wifi_sta_info_get
	.type	bl_wifi_sta_info_get, @function
bl_wifi_sta_info_get:
.LFB18:
	.loc 1 132 1 is_stmt 1
	.cfi_startproc
.LVL41:
	.loc 1 133 5
	.loc 1 133 17 is_stmt 0
	lui	a5,%hi(wifi_env+224)
	.loc 1 133 8
	lbu	a4,%lo(wifi_env+224)(a5)
	li	a5,1
	bne	a4,a5,.L27
	.loc 1 136 5 is_stmt 1
	lui	a1,%hi(wifi_env+125)
	.loc 1 132 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 136 5
	li	a2,99
	addi	a1,a1,%lo(wifi_env+125)
	.loc 1 132 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 136 5
	call	memcpy
.LVL42:
	.loc 1 137 5 is_stmt 1
	.loc 1 138 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 137 12
	li	a0,0
	.loc 1 138 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL43:
.L27:
	.loc 1 134 16
	li	a0,-1
.LVL44:
	.loc 1 138 1
	ret
	.cfi_endproc
.LFE18:
	.size	bl_wifi_sta_info_get, .-bl_wifi_sta_info_get
	.comm	wifi_env,225,4
	.section	.sbss.called.0,"aw",@nobits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	called.0, @object
	.size	called.0, 4
called.0:
	.zero	4
	.text
.Letext0:
	.file 2 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/bl602_hal/bl_wifi.h"
	.file 3 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.file 4 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h"
	.file 5 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/bl602_hal/bl_irq.h"
	.file 6 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h"
	.file 7 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/bl602.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x7b4
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF114
	.byte	0xc
	.4byte	.LASF115
	.4byte	.LASF116
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.byte	0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF1
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF2
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF3
	.byte	0x3
	.4byte	.LASF81
	.byte	0x3
	.byte	0x2e
	.byte	0x17
	.4byte	0x4d
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF4
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF6
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF7
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF9
	.byte	0x5
	.byte	0x7
	.byte	0x4
	.4byte	0x70
	.byte	0x7
	.byte	0x41
	.byte	0xe
	.4byte	0x22b
	.byte	0x6
	.4byte	.LASF10
	.byte	0x3
	.byte	0x6
	.4byte	.LASF11
	.byte	0x7
	.byte	0x6
	.4byte	.LASF12
	.byte	0xb
	.byte	0x6
	.4byte	.LASF13
	.byte	0xc
	.byte	0x6
	.4byte	.LASF14
	.byte	0x10
	.byte	0x6
	.4byte	.LASF15
	.byte	0x11
	.byte	0x6
	.4byte	.LASF16
	.byte	0x12
	.byte	0x6
	.4byte	.LASF17
	.byte	0x13
	.byte	0x6
	.4byte	.LASF18
	.byte	0x14
	.byte	0x6
	.4byte	.LASF19
	.byte	0x15
	.byte	0x6
	.4byte	.LASF20
	.byte	0x16
	.byte	0x6
	.4byte	.LASF21
	.byte	0x17
	.byte	0x6
	.4byte	.LASF22
	.byte	0x18
	.byte	0x6
	.4byte	.LASF23
	.byte	0x19
	.byte	0x6
	.4byte	.LASF24
	.byte	0x1a
	.byte	0x6
	.4byte	.LASF25
	.byte	0x1b
	.byte	0x6
	.4byte	.LASF26
	.byte	0x1c
	.byte	0x6
	.4byte	.LASF27
	.byte	0x1d
	.byte	0x6
	.4byte	.LASF28
	.byte	0x1e
	.byte	0x6
	.4byte	.LASF29
	.byte	0x1f
	.byte	0x6
	.4byte	.LASF30
	.byte	0x20
	.byte	0x6
	.4byte	.LASF31
	.byte	0x21
	.byte	0x6
	.4byte	.LASF32
	.byte	0x22
	.byte	0x6
	.4byte	.LASF33
	.byte	0x23
	.byte	0x6
	.4byte	.LASF34
	.byte	0x24
	.byte	0x6
	.4byte	.LASF35
	.byte	0x25
	.byte	0x6
	.4byte	.LASF36
	.byte	0x26
	.byte	0x6
	.4byte	.LASF37
	.byte	0x27
	.byte	0x6
	.4byte	.LASF38
	.byte	0x28
	.byte	0x6
	.4byte	.LASF39
	.byte	0x29
	.byte	0x6
	.4byte	.LASF40
	.byte	0x2a
	.byte	0x6
	.4byte	.LASF41
	.byte	0x2b
	.byte	0x6
	.4byte	.LASF42
	.byte	0x2c
	.byte	0x6
	.4byte	.LASF43
	.byte	0x2d
	.byte	0x6
	.4byte	.LASF44
	.byte	0x2e
	.byte	0x6
	.4byte	.LASF45
	.byte	0x2f
	.byte	0x6
	.4byte	.LASF46
	.byte	0x30
	.byte	0x6
	.4byte	.LASF47
	.byte	0x31
	.byte	0x6
	.4byte	.LASF48
	.byte	0x32
	.byte	0x6
	.4byte	.LASF49
	.byte	0x33
	.byte	0x6
	.4byte	.LASF50
	.byte	0x34
	.byte	0x6
	.4byte	.LASF51
	.byte	0x35
	.byte	0x6
	.4byte	.LASF52
	.byte	0x36
	.byte	0x6
	.4byte	.LASF53
	.byte	0x37
	.byte	0x6
	.4byte	.LASF54
	.byte	0x38
	.byte	0x6
	.4byte	.LASF55
	.byte	0x39
	.byte	0x6
	.4byte	.LASF56
	.byte	0x3a
	.byte	0x6
	.4byte	.LASF57
	.byte	0x3b
	.byte	0x6
	.4byte	.LASF58
	.byte	0x3c
	.byte	0x6
	.4byte	.LASF59
	.byte	0x3d
	.byte	0x6
	.4byte	.LASF60
	.byte	0x3e
	.byte	0x6
	.4byte	.LASF61
	.byte	0x3f
	.byte	0x6
	.4byte	.LASF62
	.byte	0x40
	.byte	0x6
	.4byte	.LASF63
	.byte	0x41
	.byte	0x6
	.4byte	.LASF64
	.byte	0x42
	.byte	0x6
	.4byte	.LASF65
	.byte	0x43
	.byte	0x6
	.4byte	.LASF66
	.byte	0x44
	.byte	0x6
	.4byte	.LASF67
	.byte	0x45
	.byte	0x6
	.4byte	.LASF68
	.byte	0x46
	.byte	0x6
	.4byte	.LASF69
	.byte	0x47
	.byte	0x6
	.4byte	.LASF70
	.byte	0x48
	.byte	0x6
	.4byte	.LASF71
	.byte	0x49
	.byte	0x6
	.4byte	.LASF72
	.byte	0x4a
	.byte	0x6
	.4byte	.LASF73
	.byte	0x4b
	.byte	0x6
	.4byte	.LASF74
	.byte	0x4c
	.byte	0x6
	.4byte	.LASF75
	.byte	0x4d
	.byte	0x6
	.4byte	.LASF76
	.byte	0x4e
	.byte	0x6
	.4byte	.LASF77
	.byte	0x4f
	.byte	0x6
	.4byte	.LASF78
	.byte	0x50
	.byte	0
	.byte	0x7
	.4byte	.LASF83
	.byte	0x63
	.byte	0x2
	.byte	0x3
	.byte	0x10
	.4byte	0x260
	.byte	0x8
	.4byte	.LASF79
	.byte	0x2
	.byte	0x4
	.byte	0xd
	.4byte	0x260
	.byte	0
	.byte	0x9
	.string	"psk"
	.byte	0x2
	.byte	0x5
	.byte	0xd
	.4byte	0x270
	.byte	0x21
	.byte	0x8
	.4byte	.LASF80
	.byte	0x2
	.byte	0x6
	.byte	0xd
	.4byte	0x41
	.byte	0x62
	.byte	0
	.byte	0xa
	.4byte	0x41
	.4byte	0x270
	.byte	0xb
	.4byte	0x70
	.byte	0x20
	.byte	0
	.byte	0xa
	.4byte	0x41
	.4byte	0x280
	.byte	0xb
	.4byte	0x70
	.byte	0x40
	.byte	0
	.byte	0x3
	.4byte	.LASF82
	.byte	0x2
	.byte	0x7
	.byte	0x3
	.4byte	0x22b
	.byte	0x7
	.4byte	.LASF84
	.byte	0xe1
	.byte	0x1
	.byte	0xa
	.byte	0x10
	.4byte	0x30f
	.byte	0x8
	.4byte	.LASF85
	.byte	0x1
	.byte	0xb
	.byte	0xd
	.4byte	0x30f
	.byte	0
	.byte	0x8
	.4byte	.LASF86
	.byte	0x1
	.byte	0xc
	.byte	0xd
	.4byte	0x30f
	.byte	0x6
	.byte	0x8
	.4byte	.LASF87
	.byte	0x1
	.byte	0xd
	.byte	0xd
	.4byte	0x30f
	.byte	0xc
	.byte	0x8
	.4byte	.LASF88
	.byte	0x1
	.byte	0xe
	.byte	0xd
	.4byte	0x30f
	.byte	0x12
	.byte	0x8
	.4byte	.LASF89
	.byte	0x1
	.byte	0xf
	.byte	0xd
	.4byte	0x41
	.byte	0x18
	.byte	0x8
	.4byte	.LASF90
	.byte	0x1
	.byte	0x11
	.byte	0x17
	.4byte	0x280
	.byte	0x19
	.byte	0x8
	.4byte	.LASF91
	.byte	0x1
	.byte	0x12
	.byte	0xd
	.4byte	0x41
	.byte	0x7c
	.byte	0x8
	.4byte	.LASF92
	.byte	0x1
	.byte	0x14
	.byte	0x17
	.4byte	0x280
	.byte	0x7d
	.byte	0x8
	.4byte	.LASF93
	.byte	0x1
	.byte	0x15
	.byte	0xd
	.4byte	0x41
	.byte	0xe0
	.byte	0
	.byte	0xa
	.4byte	0x41
	.4byte	0x31f
	.byte	0xb
	.4byte	0x70
	.byte	0x5
	.byte	0
	.byte	0x3
	.4byte	.LASF94
	.byte	0x1
	.byte	0x16
	.byte	0x3
	.4byte	0x28c
	.byte	0xc
	.4byte	.LASF117
	.byte	0x1
	.byte	0x18
	.byte	0xf
	.4byte	0x31f
	.byte	0x5
	.byte	0x3
	.4byte	wifi_env
	.byte	0xd
	.4byte	.LASF95
	.byte	0x1
	.byte	0x83
	.byte	0x5
	.4byte	0x69
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x1
	.byte	0x9c
	.4byte	0x388
	.byte	0xe
	.4byte	.LASF92
	.byte	0x1
	.byte	0x83
	.byte	0x2d
	.4byte	0x388
	.4byte	.LLST16
	.byte	0xf
	.4byte	.LVL42
	.4byte	0x77b
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	wifi_env+125
	.byte	0x10
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x63
	.byte	0
	.byte	0
	.byte	0x11
	.byte	0x4
	.4byte	0x280
	.byte	0xd
	.4byte	.LASF96
	.byte	0x1
	.byte	0x7a
	.byte	0x5
	.4byte	0x69
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x1
	.byte	0x9c
	.4byte	0x45d
	.byte	0xe
	.4byte	.LASF79
	.byte	0x1
	.byte	0x7a
	.byte	0x23
	.4byte	0x45d
	.4byte	.LLST11
	.byte	0xe
	.4byte	.LASF97
	.byte	0x1
	.byte	0x7a
	.byte	0x31
	.4byte	0x41
	.4byte	.LLST12
	.byte	0x12
	.string	"psk"
	.byte	0x1
	.byte	0x7a
	.byte	0x44
	.4byte	0x45d
	.4byte	.LLST13
	.byte	0xe
	.4byte	.LASF98
	.byte	0x1
	.byte	0x7a
	.byte	0x51
	.4byte	0x41
	.4byte	.LLST14
	.byte	0xe
	.4byte	.LASF99
	.byte	0x1
	.byte	0x7a
	.byte	0x5e
	.4byte	0x69
	.4byte	.LLST15
	.byte	0x13
	.4byte	.LVL35
	.4byte	0x787
	.4byte	0x41a
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	wifi_env+125
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x10
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x63
	.byte	0
	.byte	0x13
	.4byte	.LVL36
	.4byte	0x77b
	.4byte	0x43d
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	wifi_env+125
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x10
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0
	.byte	0xf
	.4byte	.LVL37
	.4byte	0x77b
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	wifi_env+158
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x10
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0
	.byte	0x11
	.byte	0x4
	.4byte	0x41
	.byte	0xd
	.4byte	.LASF100
	.byte	0x1
	.byte	0x71
	.byte	0x5
	.4byte	0x69
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x1
	.byte	0x9c
	.4byte	0x4ae
	.byte	0xe
	.4byte	.LASF90
	.byte	0x1
	.byte	0x71
	.byte	0x2c
	.4byte	0x388
	.4byte	.LLST10
	.byte	0xf
	.4byte	.LVL28
	.4byte	0x77b
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	wifi_env+25
	.byte	0x10
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x63
	.byte	0
	.byte	0
	.byte	0xd
	.4byte	.LASF101
	.byte	0x1
	.byte	0x65
	.byte	0x5
	.4byte	0x69
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x1
	.byte	0x9c
	.4byte	0x57d
	.byte	0xe
	.4byte	.LASF79
	.byte	0x1
	.byte	0x65
	.byte	0x22
	.4byte	0x45d
	.4byte	.LLST5
	.byte	0xe
	.4byte	.LASF97
	.byte	0x1
	.byte	0x65
	.byte	0x30
	.4byte	0x41
	.4byte	.LLST6
	.byte	0x12
	.string	"psk"
	.byte	0x1
	.byte	0x66
	.byte	0x20
	.4byte	0x45d
	.4byte	.LLST7
	.byte	0xe
	.4byte	.LASF98
	.byte	0x1
	.byte	0x66
	.byte	0x2d
	.4byte	0x41
	.4byte	.LLST8
	.byte	0xe
	.4byte	.LASF80
	.byte	0x1
	.byte	0x67
	.byte	0x1f
	.4byte	0x41
	.4byte	.LLST9
	.byte	0x13
	.4byte	.LVL22
	.4byte	0x787
	.4byte	0x53a
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	wifi_env+25
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x10
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x63
	.byte	0
	.byte	0x13
	.4byte	.LVL23
	.4byte	0x77b
	.4byte	0x55d
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	wifi_env+25
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x10
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0
	.byte	0xf
	.4byte	.LVL24
	.4byte	0x77b
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	wifi_env+58
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x10
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0
	.byte	0xd
	.4byte	.LASF102
	.byte	0x1
	.byte	0x57
	.byte	0x5
	.4byte	0x69
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x1
	.byte	0x9c
	.4byte	0x5a8
	.byte	0xe
	.4byte	.LASF89
	.byte	0x1
	.byte	0x57
	.byte	0x26
	.4byte	0x41
	.4byte	.LLST4
	.byte	0
	.byte	0xd
	.4byte	.LASF103
	.byte	0x1
	.byte	0x50
	.byte	0x5
	.4byte	0x69
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x1
	.byte	0x9c
	.4byte	0x5f2
	.byte	0x12
	.string	"mac"
	.byte	0x1
	.byte	0x50
	.byte	0x22
	.4byte	0x45d
	.4byte	.LLST3
	.byte	0xf
	.4byte	.LVL15
	.4byte	0x77b
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	wifi_env
	.byte	0x10
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x36
	.byte	0
	.byte	0
	.byte	0xd
	.4byte	.LASF104
	.byte	0x1
	.byte	0x4a
	.byte	0x5
	.4byte	0x69
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x1
	.byte	0x9c
	.4byte	0x63c
	.byte	0x12
	.string	"mac"
	.byte	0x1
	.byte	0x4a
	.byte	0x22
	.4byte	0x45d
	.4byte	.LLST2
	.byte	0xf
	.4byte	.LVL13
	.4byte	0x77b
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	wifi_env+6
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x10
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x36
	.byte	0
	.byte	0
	.byte	0xd
	.4byte	.LASF105
	.byte	0x1
	.byte	0x44
	.byte	0x5
	.4byte	0x69
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x1
	.byte	0x9c
	.4byte	0x686
	.byte	0x12
	.string	"mac"
	.byte	0x1
	.byte	0x44
	.byte	0x25
	.4byte	0x45d
	.4byte	.LLST1
	.byte	0xf
	.4byte	.LVL10
	.4byte	0x77b
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	wifi_env+12
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x10
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x36
	.byte	0
	.byte	0
	.byte	0xd
	.4byte	.LASF106
	.byte	0x1
	.byte	0x3e
	.byte	0x5
	.4byte	0x69
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x1
	.byte	0x9c
	.4byte	0x6d0
	.byte	0x12
	.string	"mac"
	.byte	0x1
	.byte	0x3e
	.byte	0x26
	.4byte	0x45d
	.4byte	.LLST0
	.byte	0xf
	.4byte	.LVL7
	.4byte	0x77b
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	wifi_env
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x10
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x36
	.byte	0
	.byte	0
	.byte	0xd
	.4byte	.LASF107
	.byte	0x1
	.byte	0x29
	.byte	0x5
	.4byte	0x69
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0x74e
	.byte	0x13
	.4byte	.LVL0
	.4byte	0x793
	.4byte	0x6fe
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x46
	.byte	0
	.byte	0x13
	.4byte	.LVL1
	.4byte	0x793
	.4byte	0x712
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x4f
	.byte	0
	.byte	0x13
	.4byte	.LVL2
	.4byte	0x79f
	.4byte	0x726
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x46
	.byte	0
	.byte	0x13
	.4byte	.LVL3
	.4byte	0x79f
	.4byte	0x73a
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x4f
	.byte	0
	.byte	0xf
	.4byte	.LVL4
	.4byte	0x7ab
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0
	.byte	0xd
	.4byte	.LASF108
	.byte	0x1
	.byte	0x1b
	.byte	0x5
	.4byte	0x69
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0x77b
	.byte	0x14
	.4byte	.LASF118
	.byte	0x1
	.byte	0x1d
	.byte	0x10
	.4byte	0x69
	.byte	0x5
	.byte	0x3
	.4byte	called.0
	.byte	0
	.byte	0x15
	.4byte	.LASF109
	.4byte	.LASF109
	.byte	0x4
	.byte	0x1f
	.byte	0x8
	.byte	0x15
	.4byte	.LASF110
	.4byte	.LASF110
	.byte	0x4
	.byte	0x21
	.byte	0x8
	.byte	0x15
	.4byte	.LASF111
	.4byte	.LASF111
	.byte	0x5
	.byte	0x16
	.byte	0x6
	.byte	0x15
	.4byte	.LASF112
	.4byte	.LASF112
	.byte	0x5
	.byte	0x3
	.byte	0x6
	.byte	0x15
	.4byte	.LASF113
	.4byte	.LASF113
	.byte	0x6
	.byte	0xdd
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
	.byte	0x8
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
	.byte	0x9
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
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x11
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x12
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
	.byte	0x13
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
	.byte	0x14
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
.LLST16:
	.4byte	.LVL41
	.4byte	.LVL42-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL42-1
	.4byte	.LVL43
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL44
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL31
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL34
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL40
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL32
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL31
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL33
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL39
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL31
	.4byte	.LVL35-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL35-1
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL31
	.4byte	.LVL35-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL35-1
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL38
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL27
	.4byte	.LVL28-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL28-1
	.4byte	.LVL29
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL30
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL18
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL21
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL26
	.4byte	.LFE15
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
	.byte	0x5b
	.4byte	.LVL19
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL18
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL20
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL25
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL18
	.4byte	.LVL22-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL22-1
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL18
	.4byte	.LVL22-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL22-1
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL17
	.4byte	.LFE14
	.2byte	0x5
	.byte	0x3
	.4byte	wifi_env+24
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL14
	.4byte	.LVL15-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL15-1
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL12
	.4byte	.LVL13-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL13-1
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL9
	.4byte	.LVL10-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL10-1
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL6
	.4byte	.LVL7-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL7-1
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
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
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF118:
	.string	"called"
.LASF83:
	.string	"bl_wifi_ap_info"
.LASF98:
	.string	"psk_len"
.LASF103:
	.string	"bl_wifi_mac_addr_get"
.LASF101:
	.string	"bl_wifi_ap_info_set"
.LASF12:
	.string	"MEXT_IRQn"
.LASF37:
	.string	"SF_CTRL_IRQn"
.LASF69:
	.string	"BZ_PHY_IRQn"
.LASF95:
	.string	"bl_wifi_sta_info_get"
.LASF78:
	.string	"IRQn_LAST"
.LASF79:
	.string	"ssid"
.LASF68:
	.string	"WIFI_IRQn"
.LASF34:
	.string	"IRRX_IRQn"
.LASF84:
	.string	"_bl_wifi_env"
.LASF90:
	.string	"ap_info"
.LASF111:
	.string	"bl_irq_register"
.LASF109:
	.string	"memcpy"
.LASF52:
	.string	"TIMER_WDT_IRQn"
.LASF1:
	.string	"short int"
.LASF33:
	.string	"IRTX_IRQn"
.LASF108:
	.string	"bl_wifi_clock_enable"
.LASF32:
	.string	"RESERVED2"
.LASF50:
	.string	"TIMER_CH0_IRQn"
.LASF36:
	.string	"RESERVED4"
.LASF22:
	.string	"DMA_BMX_ERR_IRQn"
.LASF102:
	.string	"bl_wifi_country_code_set"
.LASF10:
	.string	"MSOFT_IRQn"
.LASF87:
	.string	"ap_mac_addr_board"
.LASF18:
	.string	"SEC_BMX_ERR_IRQn"
.LASF0:
	.string	"signed char"
.LASF27:
	.string	"SEC_AES_IRQn"
.LASF60:
	.string	"RESERVED17"
.LASF13:
	.string	"CLIC_SOFT_PEND_IRQn"
.LASF3:
	.string	"long long int"
.LASF94:
	.string	"bl_wifi_env_t"
.LASF57:
	.string	"RESERVED14"
.LASF15:
	.string	"BMX_TO_IRQn"
.LASF110:
	.string	"memset"
.LASF65:
	.string	"HBN_OUT0_IRQn"
.LASF2:
	.string	"long int"
.LASF82:
	.string	"bl_wifi_ap_info_t"
.LASF76:
	.string	"MAC_PORT_TRG_IRQn"
.LASF17:
	.string	"L1C_BMX_TO_IRQn"
.LASF71:
	.string	"MAC_TXRX_TIMER_IRQn"
.LASF56:
	.string	"RESERVED13"
.LASF70:
	.string	"BLE_IRQn"
.LASF117:
	.string	"wifi_env"
.LASF44:
	.string	"UART1_IRQn"
.LASF100:
	.string	"bl_wifi_ap_info_get"
.LASF67:
	.string	"BOR_IRQn"
.LASF62:
	.string	"RESERVED19"
.LASF4:
	.string	"unsigned char"
.LASF53:
	.string	"RESERVED10"
.LASF54:
	.string	"RESERVED11"
.LASF55:
	.string	"RESERVED12"
.LASF89:
	.string	"country_code"
.LASF73:
	.string	"MAC_RX_TRG_IRQn"
.LASF72:
	.string	"MAC_TXRX_MISC_IRQn"
.LASF59:
	.string	"RESERVED16"
.LASF20:
	.string	"RF_TOP_INT1_IRQn"
.LASF61:
	.string	"RESERVED18"
.LASF7:
	.string	"long long unsigned int"
.LASF40:
	.string	"EFUSE_IRQn"
.LASF77:
	.string	"WIFI_IPC_PUBLIC_IRQn"
.LASF8:
	.string	"unsigned int"
.LASF16:
	.string	"L1C_BMX_ERR_IRQn"
.LASF46:
	.string	"I2C_IRQn"
.LASF29:
	.string	"DMA_ALL_IRQn"
.LASF6:
	.string	"long unsigned int"
.LASF113:
	.string	"puts"
.LASF75:
	.string	"MAC_GEN_IRQn"
.LASF5:
	.string	"short unsigned int"
.LASF58:
	.string	"GPIO_INT0_IRQn"
.LASF80:
	.string	"chan"
.LASF9:
	.string	"char"
.LASF106:
	.string	"bl_wifi_sta_mac_addr_set"
.LASF115:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/bl602_hal/bl_wifi.c"
.LASF48:
	.string	"PWM_IRQn"
.LASF64:
	.string	"PDS_WAKEUP_IRQn"
.LASF91:
	.string	"ap_info_en"
.LASF19:
	.string	"RF_TOP_INT0_IRQn"
.LASF26:
	.string	"SEC_TRNG_IRQn"
.LASF88:
	.string	"ap_mac_addr_usr"
.LASF97:
	.string	"ssid_len"
.LASF51:
	.string	"TIMER_CH1_IRQn"
.LASF30:
	.string	"RESERVED0"
.LASF31:
	.string	"RESERVED1"
.LASF85:
	.string	"sta_mac_addr_board"
.LASF35:
	.string	"RESERVED3"
.LASF28:
	.string	"SEC_SHA_IRQn"
.LASF38:
	.string	"RESERVED5"
.LASF42:
	.string	"RESERVED6"
.LASF45:
	.string	"RESERVED7"
.LASF47:
	.string	"RESERVED8"
.LASF49:
	.string	"RESERVED9"
.LASF105:
	.string	"bl_wifi_ap_mac_addr_set"
.LASF24:
	.string	"SEC_CDET_IRQn"
.LASF99:
	.string	"autoconnect"
.LASF107:
	.string	"bl_wifi_enable_irq"
.LASF14:
	.string	"BMX_ERR_IRQn"
.LASF25:
	.string	"SEC_PKA_IRQn"
.LASF112:
	.string	"bl_irq_enable"
.LASF21:
	.string	"SDIO_IRQn"
.LASF81:
	.string	"uint8_t"
.LASF66:
	.string	"HBN_OUT1_IRQn"
.LASF96:
	.string	"bl_wifi_sta_info_set"
.LASF11:
	.string	"MTIME_IRQn"
.LASF116:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/hosal"
.LASF74:
	.string	"MAC_TX_TRG_IRQn"
.LASF41:
	.string	"SPI_IRQn"
.LASF93:
	.string	"sta_info_en"
.LASF86:
	.string	"sta_mac_addr_usr"
.LASF63:
	.string	"RESERVED20"
.LASF92:
	.string	"sta_info"
.LASF43:
	.string	"UART0_IRQn"
.LASF39:
	.string	"GPADC_DMA_IRQn"
.LASF23:
	.string	"SEC_GMAC_IRQn"
.LASF104:
	.string	"bl_wifi_mac_addr_set"
.LASF114:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
