	.file	"fdt_wip.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.fdt_setprop_inplace_namelen_partial,"ax",@progbits
	.align	1
	.globl	fdt_setprop_inplace_namelen_partial
	.type	fdt_setprop_inplace_namelen_partial, @function
fdt_setprop_inplace_namelen_partial:
.LFB40:
	.file 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/blfdt/src/fdt_wip.c"
	.loc 1 62 1
	.cfi_startproc
.LVL0:
	.loc 1 63 5
	.loc 1 64 5
	.loc 1 66 5
	.loc 1 62 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
.LVL1:
.LBB10:
.LBB11:
	.file 2 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/blfdt/inc/libfdt.h"
	.loc 2 723 5 is_stmt 1
.LBE11:
.LBE10:
	.loc 1 62 1 is_stmt 0
	sw	s0,24(sp)
	.cfi_offset 8, -8
	mv	s0,a4
.LBB14:
.LBB12:
	.loc 2 723 31
	addi	a4,sp,12
.LVL2:
.LBE12:
.LBE14:
	.loc 1 62 1
	sw	s1,20(sp)
	sw	s2,16(sp)
	sw	ra,28(sp)
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 1, -4
	.loc 1 62 1
	mv	s2,a5
	mv	s1,a6
.LBB15:
.LBB13:
	.loc 2 723 31
	call	fdt_getprop_namelen
.LVL3:
.LBE13:
.LBE15:
	.loc 1 68 5 is_stmt 1
	lw	a3,12(sp)
	.loc 1 68 8 is_stmt 0
	bne	a0,zero,.L2
	.loc 1 69 9 is_stmt 1
	.loc 1 69 16 is_stmt 0
	mv	a0,a3
.LVL4:
.L1:
	.loc 1 76 1
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
.LVL5:
	lw	s1,20(sp)
	.cfi_restore 9
.LVL6:
	lw	s2,16(sp)
	.cfi_restore 18
.LVL7:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL8:
.L2:
	.cfi_restore_state
	.loc 1 71 24
	add	a5,s1,s0
	mv	a4,a0
	.loc 1 71 5 is_stmt 1
	.loc 1 72 16 is_stmt 0
	li	a0,-3
.LVL9:
	.loc 1 71 8
	bgtu	a5,a3,.L1
	.loc 1 74 5 is_stmt 1
	mv	a2,s1
	mv	a1,s2
	add	a0,a4,s0
	call	memcpy
.LVL10:
	.loc 1 75 5
	.loc 1 75 12 is_stmt 0
	li	a0,0
	j	.L1
	.cfi_endproc
.LFE40:
	.size	fdt_setprop_inplace_namelen_partial, .-fdt_setprop_inplace_namelen_partial
	.section	.text.fdt_setprop_inplace,"ax",@progbits
	.align	1
	.globl	fdt_setprop_inplace
	.type	fdt_setprop_inplace, @function
fdt_setprop_inplace:
.LFB41:
	.loc 1 80 1 is_stmt 1
	.cfi_startproc
.LVL11:
	.loc 1 81 5
	.loc 1 82 5
	.loc 1 84 5
	.loc 1 80 1 is_stmt 0
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	s3,44(sp)
	.cfi_offset 19, -20
	mv	s3,a3
	.loc 1 84 15
	addi	a3,sp,28
.LVL12:
	.loc 1 80 1
	sw	s0,56(sp)
	sw	s1,52(sp)
	sw	s2,48(sp)
	sw	s4,40(sp)
	sw	ra,60(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 20, -24
	.cfi_offset 1, -4
	.loc 1 80 1
	mv	s1,a0
	mv	s2,a1
	mv	s0,a2
	mv	s4,a4
	.loc 1 84 15
	call	fdt_getprop
.LVL13:
	.loc 1 85 5 is_stmt 1
	lw	a6,28(sp)
	.loc 1 85 8 is_stmt 0
	bne	a0,zero,.L7
	.loc 1 86 9 is_stmt 1
	.loc 1 86 16 is_stmt 0
	mv	a0,a6
.LVL14:
.L6:
	.loc 1 94 1
	lw	ra,60(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
.LVL15:
	lw	s1,52(sp)
	.cfi_restore 9
.LVL16:
	lw	s2,48(sp)
	.cfi_restore 18
.LVL17:
	lw	s3,44(sp)
	.cfi_restore 19
.LVL18:
	lw	s4,40(sp)
	.cfi_restore 20
.LVL19:
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
.LVL20:
.L7:
	.cfi_restore_state
	.loc 1 88 5 is_stmt 1
	.loc 1 88 8 is_stmt 0
	sw	a6,12(sp)
	.loc 1 89 16
	li	a0,-3
.LVL21:
	.loc 1 88 8
	bne	a6,s4,.L6
	.loc 1 91 5 is_stmt 1
	.loc 1 92 28 is_stmt 0
	mv	a0,s0
	call	strlen
.LVL22:
	.loc 1 91 12
	lw	a6,12(sp)
	.loc 1 92 28
	mv	a3,a0
	.loc 1 91 12
	mv	a5,s3
	li	a4,0
	mv	a2,s0
	mv	a1,s2
	mv	a0,s1
	call	fdt_setprop_inplace_namelen_partial
.LVL23:
	j	.L6
	.cfi_endproc
.LFE41:
	.size	fdt_setprop_inplace, .-fdt_setprop_inplace
	.section	.text.fdt_nop_property,"ax",@progbits
	.align	1
	.globl	fdt_nop_property
	.type	fdt_nop_property, @function
fdt_nop_property:
.LFB43:
	.loc 1 105 1 is_stmt 1
	.cfi_startproc
.LVL24:
	.loc 1 106 5
	.loc 1 107 5
	.loc 1 109 5
	.loc 1 105 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
.LVL25:
.LBB20:
.LBB21:
	.loc 2 665 5 is_stmt 1
	.loc 2 666 9 is_stmt 0
	addi	a3,sp,12
.LVL26:
.LBE21:
.LBE20:
	.loc 1 105 1
	sw	ra,28(sp)
	.cfi_offset 1, -4
.LBB23:
.LBB22:
	.loc 2 666 9
	call	fdt_get_property
.LVL27:
.LBE22:
.LBE23:
	.loc 1 110 5 is_stmt 1
	lw	a5,12(sp)
	.loc 1 110 8 is_stmt 0
	bne	a0,zero,.L12
	.loc 1 111 9 is_stmt 1
	.loc 1 111 16 is_stmt 0
	mv	a0,a5
.LVL28:
.L11:
	.loc 1 116 1
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL29:
.L12:
	.cfi_restore_state
	.loc 1 113 5 is_stmt 1
	.loc 1 113 31 is_stmt 0
	addi	a5,a5,12
.LVL30:
.LBB24:
.LBB25:
	.loc 1 98 5 is_stmt 1
	.loc 1 100 5
	.loc 1 100 48 is_stmt 0
	add	a5,a0,a5
.LVL31:
	.loc 1 101 12
	li	a4,67108864
.LVL32:
.L14:
	.loc 1 100 21 is_stmt 1
	.loc 1 100 5 is_stmt 0
	bltu	a0,a5,.L15
.LBE25:
.LBE24:
	.loc 1 115 12
	li	a0,0
.LVL33:
	j	.L11
.LVL34:
.L15:
.LBB28:
.LBB26:
	.loc 1 101 9 is_stmt 1
.LBE26:
.LBE28:
	.file 3 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/blfdt/inc/libfdt_env.h"
	.loc 3 97 5
.LBB29:
.LBB27:
	.loc 1 101 12 is_stmt 0
	sw	a4,0(a0)
	.loc 1 100 56 is_stmt 1
	.loc 1 100 57 is_stmt 0
	addi	a0,a0,4
.LVL35:
	j	.L14
.LBE27:
.LBE29:
	.cfi_endproc
.LFE43:
	.size	fdt_nop_property, .-fdt_nop_property
	.section	.text.fdt_node_end_offset_,"ax",@progbits
	.align	1
	.globl	fdt_node_end_offset_
	.type	fdt_node_end_offset_, @function
fdt_node_end_offset_:
.LFB44:
	.loc 1 119 1 is_stmt 1
	.cfi_startproc
.LVL36:
	.loc 1 120 5
	.loc 1 119 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	ra,28(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	.loc 1 119 1
	mv	s0,a0
	.loc 1 120 9
	sw	zero,12(sp)
	.loc 1 122 5 is_stmt 1
.LVL37:
.L18:
	.loc 1 122 11
	blt	a1,zero,.L17
	.loc 1 122 26 is_stmt 0 discriminator 1
	lw	a5,12(sp)
	bge	a5,zero,.L20
.L17:
	.loc 1 126 1
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
.LVL38:
	mv	a0,a1
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL39:
.L20:
	.cfi_restore_state
	.loc 1 123 9 is_stmt 1
	.loc 1 123 18 is_stmt 0
	addi	a2,sp,12
	mv	a0,s0
	call	fdt_next_node
.LVL40:
	mv	a1,a0
.LVL41:
	j	.L18
	.cfi_endproc
.LFE44:
	.size	fdt_node_end_offset_, .-fdt_node_end_offset_
	.section	.text.fdt_nop_node,"ax",@progbits
	.align	1
	.globl	fdt_nop_node
	.type	fdt_nop_node, @function
fdt_nop_node:
.LFB45:
	.loc 1 129 1 is_stmt 1
	.cfi_startproc
.LVL42:
	.loc 1 130 5
	.loc 1 132 5
	.loc 1 129 1 is_stmt 0
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
	.loc 1 129 1
	mv	s2,a0
	mv	s1,a1
	.loc 1 132 17
	call	fdt_node_end_offset_
.LVL43:
	mv	s0,a0
.LVL44:
	.loc 1 133 5 is_stmt 1
	.loc 1 133 8 is_stmt 0
	blt	a0,zero,.L23
	.loc 1 136 5 is_stmt 1
.LVL45:
.LBB34:
.LBB35:
	.loc 2 152 5
	.loc 2 152 31 is_stmt 0
	li	a2,0
	mv	a1,s1
	mv	a0,s2
	call	fdt_offset_ptr
.LVL46:
.LBE35:
.LBE34:
	.loc 1 136 5
	sub	s0,s0,s1
.LVL47:
.LBB36:
.LBB37:
	.loc 1 98 5 is_stmt 1
	.loc 1 100 5
	.loc 1 100 48 is_stmt 0
	add	s0,a0,s0
.LVL48:
	.loc 1 101 12
	li	a5,67108864
.LVL49:
.L25:
	.loc 1 100 21 is_stmt 1
	.loc 1 100 5 is_stmt 0
	bltu	a0,s0,.L26
.LBE37:
.LBE36:
	.loc 1 138 12
	li	s0,0
.LVL50:
.L23:
	.loc 1 139 1
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	mv	a0,s0
	lw	s0,8(sp)
	.cfi_restore 8
	lw	s1,4(sp)
	.cfi_restore 9
.LVL51:
	lw	s2,0(sp)
	.cfi_restore 18
.LVL52:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL53:
.L26:
	.cfi_restore_state
.LBB40:
.LBB38:
	.loc 1 101 9 is_stmt 1
.LBE38:
.LBE40:
	.loc 3 97 5
.LBB41:
.LBB39:
	.loc 1 101 12 is_stmt 0
	sw	a5,0(a0)
	.loc 1 100 56 is_stmt 1
	.loc 1 100 57 is_stmt 0
	addi	a0,a0,4
.LVL54:
	j	.L25
.LBE39:
.LBE41:
	.cfi_endproc
.LFE45:
	.size	fdt_nop_node, .-fdt_nop_node
	.text
.Letext0:
	.file 4 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.file 5 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/blfdt/inc/fdt.h"
	.file 6 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x6e7
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF44
	.byte	0xc
	.4byte	.LASF45
	.4byte	.LASF46
	.4byte	.Ldebug_ranges0+0x78
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
	.byte	0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.byte	0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF3
	.byte	0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF4
	.byte	0x4
	.4byte	.LASF7
	.byte	0x4
	.byte	0x2e
	.byte	0x17
	.4byte	0x5b
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.byte	0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF6
	.byte	0x4
	.4byte	.LASF8
	.byte	0x4
	.byte	0x34
	.byte	0x1b
	.4byte	0x75
	.byte	0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.byte	0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.byte	0x4
	.4byte	.LASF11
	.byte	0x4
	.byte	0x56
	.byte	0x16
	.4byte	0x2c
	.byte	0x5
	.byte	0x4
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.byte	0x6
	.4byte	0x91
	.byte	0x7
	.byte	0x4
	.4byte	0x98
	.byte	0x7
	.byte	0x4
	.4byte	0xa9
	.byte	0x8
	.byte	0x4
	.4byte	.LASF13
	.byte	0x3
	.byte	0x46
	.byte	0x12
	.4byte	0x69
	.byte	0x9
	.4byte	.LASF47
	.byte	0xc
	.byte	0x5
	.byte	0x57
	.byte	0x8
	.4byte	0xf8
	.byte	0xa
	.string	"tag"
	.byte	0x5
	.byte	0x58
	.byte	0xd
	.4byte	0xaa
	.byte	0
	.byte	0xa
	.string	"len"
	.byte	0x5
	.byte	0x59
	.byte	0xd
	.4byte	0xaa
	.byte	0x4
	.byte	0xb
	.4byte	.LASF14
	.byte	0x5
	.byte	0x5a
	.byte	0xd
	.4byte	0xaa
	.byte	0x8
	.byte	0xb
	.4byte	.LASF15
	.byte	0x5
	.byte	0x5b
	.byte	0xa
	.4byte	0xf8
	.byte	0xc
	.byte	0
	.byte	0xc
	.4byte	0x91
	.4byte	0x108
	.byte	0xd
	.4byte	0x2c
	.byte	0
	.byte	0
	.byte	0xe
	.4byte	.LASF17
	.byte	0x1
	.byte	0x80
	.byte	0x5
	.4byte	0x25
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.byte	0x1
	.byte	0x9c
	.4byte	0x1ea
	.byte	0xf
	.string	"fdt"
	.byte	0x1
	.byte	0x80
	.byte	0x18
	.4byte	0x8f
	.4byte	.LLST32
	.byte	0x10
	.4byte	.LASF16
	.byte	0x1
	.byte	0x80
	.byte	0x21
	.4byte	0x25
	.4byte	.LLST33
	.byte	0x11
	.4byte	.LASF20
	.byte	0x1
	.byte	0x82
	.byte	0x9
	.4byte	0x25
	.4byte	.LLST34
	.byte	0x12
	.4byte	0x641
	.4byte	.LBB34
	.4byte	.LBE34-.LBB34
	.byte	0x1
	.byte	0x88
	.byte	0x5
	.4byte	0x19d
	.byte	0x13
	.4byte	0x66a
	.4byte	.LLST35
	.byte	0x13
	.4byte	0x65e
	.4byte	.LLST36
	.byte	0x13
	.4byte	0x652
	.4byte	.LLST37
	.byte	0x14
	.4byte	.LVL46
	.4byte	0x693
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x15
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x16
	.4byte	0x34a
	.4byte	.LBB36
	.4byte	.Ldebug_ranges0+0x58
	.byte	0x1
	.byte	0x88
	.byte	0x5
	.4byte	0x1d3
	.byte	0x13
	.4byte	0x363
	.4byte	.LLST38
	.byte	0x13
	.4byte	0x357
	.4byte	.LLST39
	.byte	0x17
	.4byte	.Ldebug_ranges0+0x58
	.byte	0x18
	.4byte	0x36f
	.4byte	.LLST40
	.byte	0
	.byte	0
	.byte	0x14
	.4byte	.LVL43
	.4byte	0x1ea
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0
	.byte	0xe
	.4byte	.LASF18
	.byte	0x1
	.byte	0x76
	.byte	0x5
	.4byte	0x25
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.byte	0x1
	.byte	0x9c
	.4byte	0x24a
	.byte	0xf
	.string	"fdt"
	.byte	0x1
	.byte	0x76
	.byte	0x20
	.4byte	0x8f
	.4byte	.LLST30
	.byte	0x10
	.4byte	.LASF19
	.byte	0x1
	.byte	0x76
	.byte	0x29
	.4byte	0x25
	.4byte	.LLST31
	.byte	0x19
	.4byte	.LASF21
	.byte	0x1
	.byte	0x78
	.byte	0x9
	.4byte	0x25
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x14
	.4byte	.LVL40
	.4byte	0x69f
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x15
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0
	.byte	0xe
	.4byte	.LASF22
	.byte	0x1
	.byte	0x68
	.byte	0x5
	.4byte	0x25
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.byte	0x1
	.byte	0x9c
	.4byte	0x344
	.byte	0xf
	.string	"fdt"
	.byte	0x1
	.byte	0x68
	.byte	0x1c
	.4byte	0x8f
	.4byte	.LLST19
	.byte	0x10
	.4byte	.LASF16
	.byte	0x1
	.byte	0x68
	.byte	0x25
	.4byte	0x25
	.4byte	.LLST20
	.byte	0x10
	.4byte	.LASF23
	.byte	0x1
	.byte	0x68
	.byte	0x3d
	.4byte	0x9d
	.4byte	.LLST21
	.byte	0x11
	.4byte	.LASF24
	.byte	0x1
	.byte	0x6a
	.byte	0x1a
	.4byte	0x344
	.4byte	.LLST22
	.byte	0x1a
	.string	"len"
	.byte	0x1
	.byte	0x6b
	.byte	0x9
	.4byte	0x25
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x16
	.4byte	0x5fa
	.4byte	.LBB20
	.4byte	.Ldebug_ranges0+0x20
	.byte	0x1
	.byte	0x6d
	.byte	0xc
	.4byte	0x311
	.byte	0x13
	.4byte	0x633
	.4byte	.LLST23
	.byte	0x13
	.4byte	0x626
	.4byte	.LLST24
	.byte	0x13
	.4byte	0x619
	.4byte	.LLST25
	.byte	0x13
	.4byte	0x60c
	.4byte	.LLST26
	.byte	0x14
	.4byte	.LVL27
	.4byte	0x6ab
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
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
	.byte	0x5d
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0
	.byte	0x1b
	.4byte	0x34a
	.4byte	.LBB24
	.4byte	.Ldebug_ranges0+0x38
	.byte	0x1
	.byte	0x71
	.byte	0x5
	.byte	0x13
	.4byte	0x363
	.4byte	.LLST27
	.byte	0x13
	.4byte	0x357
	.4byte	.LLST28
	.byte	0x17
	.4byte	.Ldebug_ranges0+0x38
	.byte	0x18
	.4byte	0x36f
	.4byte	.LLST29
	.byte	0
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0xb6
	.byte	0x1c
	.4byte	.LASF48
	.byte	0x1
	.byte	0x60
	.byte	0xd
	.byte	0x1
	.4byte	0x37a
	.byte	0x1d
	.4byte	.LASF25
	.byte	0x1
	.byte	0x60
	.byte	0x23
	.4byte	0x8f
	.byte	0x1e
	.string	"len"
	.byte	0x1
	.byte	0x60
	.byte	0x2e
	.4byte	0x25
	.byte	0x1f
	.string	"p"
	.byte	0x1
	.byte	0x62
	.byte	0xe
	.4byte	0x37a
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0xaa
	.byte	0xe
	.4byte	.LASF26
	.byte	0x1
	.byte	0x4e
	.byte	0x5
	.4byte	0x25
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.byte	0x1
	.byte	0x9c
	.4byte	0x472
	.byte	0xf
	.string	"fdt"
	.byte	0x1
	.byte	0x4e
	.byte	0x1f
	.4byte	0x8f
	.4byte	.LLST13
	.byte	0x10
	.4byte	.LASF16
	.byte	0x1
	.byte	0x4e
	.byte	0x28
	.4byte	0x25
	.4byte	.LLST14
	.byte	0x10
	.4byte	.LASF23
	.byte	0x1
	.byte	0x4e
	.byte	0x40
	.4byte	0x9d
	.4byte	.LLST15
	.byte	0xf
	.string	"val"
	.byte	0x1
	.byte	0x4f
	.byte	0x19
	.4byte	0xa3
	.4byte	.LLST16
	.byte	0xf
	.string	"len"
	.byte	0x1
	.byte	0x4f
	.byte	0x22
	.4byte	0x25
	.4byte	.LLST17
	.byte	0x11
	.4byte	.LASF27
	.byte	0x1
	.byte	0x51
	.byte	0x11
	.4byte	0xa3
	.4byte	.LLST18
	.byte	0x19
	.4byte	.LASF28
	.byte	0x1
	.byte	0x52
	.byte	0x9
	.4byte	0x25
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x20
	.4byte	.LVL13
	.4byte	0x6b8
	.4byte	0x42f
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x15
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x15
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0
	.byte	0x20
	.4byte	.LVL22
	.4byte	0x6c5
	.4byte	0x443
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x14
	.4byte	.LVL23
	.4byte	0x472
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x15
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x15
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x30
	.byte	0x15
	.byte	0x1
	.byte	0x5f
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x15
	.byte	0x1
	.byte	0x60
	.byte	0x3
	.byte	0x91
	.byte	0x4c
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0xe
	.4byte	.LASF29
	.byte	0x1
	.byte	0x3a
	.byte	0x5
	.4byte	0x25
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.byte	0x1
	.byte	0x9c
	.4byte	0x5a0
	.byte	0xf
	.string	"fdt"
	.byte	0x1
	.byte	0x3a
	.byte	0x2f
	.4byte	0x8f
	.4byte	.LLST0
	.byte	0x10
	.4byte	.LASF16
	.byte	0x1
	.byte	0x3a
	.byte	0x38
	.4byte	0x25
	.4byte	.LLST1
	.byte	0x10
	.4byte	.LASF23
	.byte	0x1
	.byte	0x3b
	.byte	0x21
	.4byte	0x9d
	.4byte	.LLST2
	.byte	0x10
	.4byte	.LASF30
	.byte	0x1
	.byte	0x3b
	.byte	0x2b
	.4byte	0x25
	.4byte	.LLST3
	.byte	0xf
	.string	"idx"
	.byte	0x1
	.byte	0x3c
	.byte	0x1e
	.4byte	0x69
	.4byte	.LLST4
	.byte	0xf
	.string	"val"
	.byte	0x1
	.byte	0x3c
	.byte	0x2f
	.4byte	0xa3
	.4byte	.LLST5
	.byte	0xf
	.string	"len"
	.byte	0x1
	.byte	0x3d
	.byte	0x19
	.4byte	0x25
	.4byte	.LLST6
	.byte	0x11
	.4byte	.LASF27
	.byte	0x1
	.byte	0x3f
	.byte	0xb
	.4byte	0x8f
	.4byte	.LLST7
	.byte	0x19
	.4byte	.LASF28
	.byte	0x1
	.byte	0x40
	.byte	0x9
	.4byte	0x25
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x16
	.4byte	0x5a0
	.4byte	.LBB10
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x42
	.byte	0xf
	.4byte	0x589
	.byte	0x13
	.4byte	0x5e6
	.4byte	.LLST8
	.byte	0x13
	.4byte	0x5d9
	.4byte	.LLST9
	.byte	0x13
	.4byte	0x5cc
	.4byte	.LLST10
	.byte	0x13
	.4byte	0x5bf
	.4byte	.LLST11
	.byte	0x13
	.4byte	0x5b2
	.4byte	.LLST12
	.byte	0x14
	.4byte	.LVL3
	.4byte	0x6d1
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
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
	.byte	0x5d
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x15
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0
	.byte	0x14
	.4byte	.LVL10
	.4byte	0x6de
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x15
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0
	.byte	0x21
	.4byte	.LASF32
	.byte	0x2
	.2byte	0x2cf
	.byte	0x15
	.4byte	0x8f
	.byte	0x3
	.4byte	0x5f4
	.byte	0x22
	.string	"fdt"
	.byte	0x2
	.2byte	0x2cf
	.byte	0x31
	.4byte	0x8f
	.byte	0x23
	.4byte	.LASF16
	.byte	0x2
	.2byte	0x2cf
	.byte	0x3a
	.4byte	0x25
	.byte	0x23
	.4byte	.LASF23
	.byte	0x2
	.2byte	0x2d0
	.byte	0x23
	.4byte	0x9d
	.byte	0x23
	.4byte	.LASF30
	.byte	0x2
	.2byte	0x2d0
	.byte	0x2d
	.4byte	0x25
	.byte	0x23
	.4byte	.LASF31
	.byte	0x2
	.2byte	0x2d1
	.byte	0x1c
	.4byte	0x5f4
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x21
	.4byte	.LASF33
	.byte	0x2
	.2byte	0x295
	.byte	0x24
	.4byte	0x344
	.byte	0x3
	.4byte	0x641
	.byte	0x22
	.string	"fdt"
	.byte	0x2
	.2byte	0x295
	.byte	0x3d
	.4byte	0x8f
	.byte	0x23
	.4byte	.LASF16
	.byte	0x2
	.2byte	0x295
	.byte	0x46
	.4byte	0x25
	.byte	0x23
	.4byte	.LASF23
	.byte	0x2
	.2byte	0x296
	.byte	0x2b
	.4byte	0x9d
	.byte	0x23
	.4byte	.LASF31
	.byte	0x2
	.2byte	0x297
	.byte	0x24
	.4byte	0x5f4
	.byte	0
	.byte	0x24
	.4byte	.LASF34
	.byte	0x2
	.byte	0x96
	.byte	0x15
	.4byte	0x8f
	.byte	0x3
	.4byte	0x677
	.byte	0x1e
	.string	"fdt"
	.byte	0x2
	.byte	0x96
	.byte	0x2c
	.4byte	0x8f
	.byte	0x1d
	.4byte	.LASF19
	.byte	0x2
	.byte	0x96
	.byte	0x35
	.4byte	0x25
	.byte	0x1d
	.4byte	.LASF35
	.byte	0x2
	.byte	0x96
	.byte	0x41
	.4byte	0x25
	.byte	0
	.byte	0x24
	.4byte	.LASF36
	.byte	0x3
	.byte	0x5f
	.byte	0x17
	.4byte	0xaa
	.byte	0x3
	.4byte	0x693
	.byte	0x1e
	.string	"x"
	.byte	0x3
	.byte	0x5f
	.byte	0x2d
	.4byte	0x69
	.byte	0
	.byte	0x25
	.4byte	.LASF37
	.4byte	.LASF37
	.byte	0x2
	.byte	0x94
	.byte	0xd
	.byte	0x25
	.4byte	.LASF38
	.4byte	.LASF38
	.byte	0x2
	.byte	0xc0
	.byte	0x5
	.byte	0x26
	.4byte	.LASF39
	.4byte	.LASF39
	.byte	0x2
	.2byte	0x293
	.byte	0x1c
	.byte	0x26
	.4byte	.LASF40
	.4byte	.LASF40
	.byte	0x2
	.2byte	0x2f4
	.byte	0xd
	.byte	0x25
	.4byte	.LASF41
	.4byte	.LASF41
	.byte	0x6
	.byte	0x29
	.byte	0x8
	.byte	0x26
	.4byte	.LASF42
	.4byte	.LASF42
	.byte	0x2
	.2byte	0x2cd
	.byte	0xd
	.byte	0x25
	.4byte	.LASF43
	.4byte	.LASF43
	.byte	0x6
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
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xd
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x37
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
	.byte	0x13
	.byte	0x5
	.byte	0
	.byte	0x31
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
	.byte	0x17
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
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
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x1b
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
	.byte	0
	.byte	0
	.byte	0x1c
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
	.byte	0x1d
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
	.byte	0x1e
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
	.byte	0
	.byte	0
	.byte	0x20
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
	.byte	0x21
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
	.byte	0x22
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
	.byte	0x23
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
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST32:
	.4byte	.LVL42
	.4byte	.LVL43-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL43-1
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL53
	.4byte	.LFE45
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL42
	.4byte	.LVL43-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL43-1
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL51
	.4byte	.LVL53
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL53
	.4byte	.LFE45
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL44
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL47
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL47
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL53
	.4byte	.LFE45
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL39
	.4byte	.LFE44
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL36
	.4byte	.LVL40-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL41
	.4byte	.LFE44
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL24
	.4byte	.LVL27-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL27-1
	.4byte	.LFE43
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL24
	.4byte	.LVL27-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL27-1
	.4byte	.LFE43
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL24
	.4byte	.LVL27-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL27-1
	.4byte	.LFE43
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL29
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x3
	.byte	0x91
	.byte	0x6c
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LVL27-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL27-1
	.4byte	.LVL27
	.2byte	0x3
	.byte	0x91
	.byte	0x6c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL24
	.4byte	.LVL27-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL27-1
	.4byte	.LVL27
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL24
	.4byte	.LVL27-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL27-1
	.4byte	.LVL27
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL24
	.4byte	.LVL27-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL27-1
	.4byte	.LVL27
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x6
	.byte	0x91
	.byte	0x6c
	.byte	0x6
	.byte	0x23
	.byte	0xc
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL30
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL30
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL34
	.4byte	.LFE43
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL11
	.4byte	.LVL13-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL13-1
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL16
	.4byte	.LVL20
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LFE41
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL11
	.4byte	.LVL13-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL13-1
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL17
	.4byte	.LVL20
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LFE41
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL11
	.4byte	.LVL13-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL13-1
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL15
	.4byte	.LVL20
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LFE41
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL12
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL18
	.4byte	.LVL20
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LFE41
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL11
	.4byte	.LVL13-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL13-1
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LFE41
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL3-1
	.4byte	.LFE40
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL3-1
	.4byte	.LFE40
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL3-1
	.4byte	.LFE40
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL0
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL3-1
	.4byte	.LFE40
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL2
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL5
	.4byte	.LVL8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LFE40
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL0
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL3-1
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5f
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LFE40
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL0
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL3-1
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL6
	.4byte	.LVL8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x60
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LFE40
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL9
	.4byte	.LVL10-1
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x3
	.byte	0x91
	.byte	0x6c
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL3-1
	.4byte	.LVL3
	.2byte	0x3
	.byte	0x91
	.byte	0x6c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL0
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL3-1
	.4byte	.LVL3
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL0
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL3-1
	.4byte	.LVL3
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL0
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL3-1
	.4byte	.LVL3
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL0
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL3-1
	.4byte	.LVL3
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
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB10
	.4byte	.LBE10
	.4byte	.LBB14
	.4byte	.LBE14
	.4byte	.LBB15
	.4byte	.LBE15
	.4byte	0
	.4byte	0
	.4byte	.LBB20
	.4byte	.LBE20
	.4byte	.LBB23
	.4byte	.LBE23
	.4byte	0
	.4byte	0
	.4byte	.LBB24
	.4byte	.LBE24
	.4byte	.LBB28
	.4byte	.LBE28
	.4byte	.LBB29
	.4byte	.LBE29
	.4byte	0
	.4byte	0
	.4byte	.LBB36
	.4byte	.LBE36
	.4byte	.LBB40
	.4byte	.LBE40
	.4byte	.LBB41
	.4byte	.LBE41
	.4byte	0
	.4byte	0
	.4byte	.LFB40
	.4byte	.LFE40
	.4byte	.LFB41
	.4byte	.LFE41
	.4byte	.LFB43
	.4byte	.LFE43
	.4byte	.LFB44
	.4byte	.LFE44
	.4byte	.LFB45
	.4byte	.LFE45
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF26:
	.string	"fdt_setprop_inplace"
.LASF48:
	.string	"fdt_nop_region_"
.LASF19:
	.string	"offset"
.LASF22:
	.string	"fdt_nop_property"
.LASF11:
	.string	"uintptr_t"
.LASF25:
	.string	"start"
.LASF17:
	.string	"fdt_nop_node"
.LASF30:
	.string	"namelen"
.LASF24:
	.string	"prop"
.LASF29:
	.string	"fdt_setprop_inplace_namelen_partial"
.LASF18:
	.string	"fdt_node_end_offset_"
.LASF13:
	.string	"fdt32_t"
.LASF41:
	.string	"strlen"
.LASF15:
	.string	"data"
.LASF37:
	.string	"fdt_offset_ptr"
.LASF5:
	.string	"unsigned char"
.LASF31:
	.string	"lenp"
.LASF33:
	.string	"fdt_get_property_w"
.LASF38:
	.string	"fdt_next_node"
.LASF9:
	.string	"long unsigned int"
.LASF42:
	.string	"fdt_getprop_namelen"
.LASF6:
	.string	"short unsigned int"
.LASF35:
	.string	"checklen"
.LASF44:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
.LASF28:
	.string	"proplen"
.LASF39:
	.string	"fdt_get_property"
.LASF0:
	.string	"unsigned int"
.LASF10:
	.string	"long long unsigned int"
.LASF7:
	.string	"uint8_t"
.LASF46:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/blfdt"
.LASF47:
	.string	"fdt_property"
.LASF36:
	.string	"cpu_to_fdt32"
.LASF14:
	.string	"nameoff"
.LASF4:
	.string	"long long int"
.LASF21:
	.string	"depth"
.LASF43:
	.string	"memcpy"
.LASF34:
	.string	"fdt_offset_ptr_w"
.LASF2:
	.string	"short int"
.LASF27:
	.string	"propval"
.LASF16:
	.string	"nodeoffset"
.LASF32:
	.string	"fdt_getprop_namelen_w"
.LASF8:
	.string	"uint32_t"
.LASF3:
	.string	"long int"
.LASF12:
	.string	"char"
.LASF40:
	.string	"fdt_getprop"
.LASF1:
	.string	"signed char"
.LASF45:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/blfdt/src/fdt_wip.c"
.LASF23:
	.string	"name"
.LASF20:
	.string	"endoffset"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
