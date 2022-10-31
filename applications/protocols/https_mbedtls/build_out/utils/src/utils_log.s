	.file	"utils_log.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.bl_printk,"ax",@progbits
	.align	1
	.globl	bl_printk
	.type	bl_printk, @function
bl_printk:
.LFB5:
	.file 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/utils/src/utils_log.c"
	.loc 1 127 1
	.cfi_startproc
.LVL0:
	.loc 1 128 5
	.loc 1 130 5
	.loc 1 127 1 is_stmt 0
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	a5,52(sp)
	.loc 1 130 9
	lui	a5,%hi(sys_log_all_enable)
	lbu	a5,%lo(sys_log_all_enable)(a5)
	.loc 1 127 1
	sw	ra,28(sp)
	.cfi_offset 1, -36
	.loc 1 127 1
	sw	a1,36(sp)
	sw	a2,40(sp)
	sw	a3,44(sp)
	sw	a4,48(sp)
	sw	a6,56(sp)
	sw	a7,60(sp)
	.loc 1 130 9
	andi	a5,a5,0xff
	.loc 1 130 8
	beq	a5,zero,.L1
	.loc 1 132 8 is_stmt 1
	addi	a1,sp,36
	sw	a1,12(sp)
	.loc 1 135 9
	call	vprint
.LVL1:
	.loc 1 137 8
.L1:
	.loc 1 139 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_restore 1
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE5:
	.size	bl_printk, .-bl_printk
	.section	.rodata.log_buf_out.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"%3d "
	.align	2
.LC1:
	.string	"%3u "
	.align	2
.LC2:
	.string	"%02x "
	.align	2
.LC3:
	.string	"BUF"
	.align	2
.LC4:
	.string	"[%10u][%s: %s:%4d] %.*s\r\n"
	.section	.text.log_buf_out,"ax",@progbits
	.align	1
	.globl	log_buf_out
	.type	log_buf_out, @function
log_buf_out:
.LFB4:
	.loc 1 16 1 is_stmt 1
	.cfi_startproc
.LVL2:
	.loc 1 17 5
	.loc 1 18 5
	.loc 1 20 5
	.loc 1 21 5
	.loc 1 22 5
	.loc 1 24 5
	.loc 1 26 5
	.loc 1 27 5
	.loc 1 27 22 is_stmt 0
	ble	a3,zero,.L35
	.loc 1 16 1
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	.loc 1 33 7
	li	a5,50
	.loc 1 16 1
	sw	s1,68(sp)
	.cfi_offset 9, -12
	mv	s1,a4
	.loc 1 33 5 is_stmt 1
	.loc 1 34 7 is_stmt 0
	rem	a4,a3,a5
.LVL3:
	.loc 1 16 1
	sw	s0,72(sp)
	sw	s4,56(sp)
	sw	s5,52(sp)
	sw	s7,44(sp)
	sw	ra,76(sp)
	sw	s2,64(sp)
	sw	s3,60(sp)
	sw	s6,48(sp)
	sw	s8,40(sp)
	sw	s9,36(sp)
	sw	s10,32(sp)
	sw	s11,28(sp)
	.cfi_offset 8, -8
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 23, -36
	.cfi_offset 1, -4
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 22, -32
	.cfi_offset 24, -40
	.cfi_offset 25, -44
	.cfi_offset 26, -48
	.cfi_offset 27, -52
	mv	s4,a0
	mv	s5,a1
	mv	s0,a2
	.loc 1 34 7
	sw	a4,12(sp)
	.loc 1 33 7
	div	s7,a3,a5
.LVL4:
	.loc 1 34 5 is_stmt 1
	.loc 1 35 5
	.loc 1 35 8 is_stmt 0
	bne	a4,zero,.L9
	li	s3,0
	.loc 1 109 32
	lui	s8,%hi(.LC2)
	.loc 1 103 32
	lui	s9,%hi(.LC1)
	mul	a5,s7,a5
	.loc 1 98 32
	lui	s7,%hi(.LANCHOR0)
.LVL5:
	sw	a5,12(sp)
.LVL6:
.L10:
	.loc 1 92 21 is_stmt 1 discriminator 2
	.loc 1 92 9 is_stmt 0 discriminator 2
	lw	a5,12(sp)
	beq	s3,a5,.L34
	.loc 1 93 17
	li	s2,0
	.loc 1 94 20
	li	s6,0
	.loc 1 98 74
	add	s10,s0,s3
	.loc 1 95 17
	li	s11,1
.L31:
.LVL7:
	.loc 1 95 17 is_stmt 1
	.loc 1 98 32 is_stmt 0
	lui	a5,%hi(.LANCHOR0)
	addi	a5,a5,%lo(.LANCHOR0)
	add	a0,a5,s2
	.loc 1 98 74
	add	a5,s10,s6
	lbu	a2,0(a5)
	.loc 1 95 17
	beq	s1,s11,.L27
	li	a5,2
	.loc 1 103 32
	addi	a1,s9,%lo(.LC1)
	.loc 1 95 17
	beq	s1,a5,.L54
	.loc 1 109 25 is_stmt 1
	.loc 1 109 32 is_stmt 0
	addi	a1,s8,%lo(.LC2)
	j	.L54
.LVL8:
.L9:
	.loc 1 36 9 is_stmt 1
	.loc 1 40 5
	.loc 1 42 21
	lui	s3,%hi(.LANCHOR0)
	.loc 1 35 8 is_stmt 0
	li	s6,0
	addi	s3,s3,%lo(.LANCHOR0)
	.loc 1 72 36
	lui	s8,%hi(.LC0)
	.loc 1 83 36
	lui	s9,%hi(.LC2)
	.loc 1 77 36
	lui	s10,%hi(.LC1)
.LVL9:
.L26:
	.loc 1 43 13 is_stmt 1
	.loc 1 45 21 is_stmt 0
	li	s2,0
	.loc 1 46 24
	li	s11,0
	.loc 1 43 16
	bne	s6,s7,.L11
.L16:
.LVL10:
	.loc 1 47 21 is_stmt 1
	.loc 1 50 78 is_stmt 0
	add	a5,s0,s11
	lbu	a2,0(a5)
	.loc 1 47 21
	li	a5,1
	.loc 1 50 36
	add	a0,s3,s2
	.loc 1 47 21
	beq	s1,a5,.L12
	li	a5,2
	.loc 1 55 36
	addi	a1,s10,%lo(.LC1)
	.loc 1 47 21
	beq	s1,a5,.L49
	.loc 1 61 29 is_stmt 1
	.loc 1 61 36 is_stmt 0
	addi	a1,s9,%lo(.LC2)
	j	.L49
.LVL11:
.L37:
	mv	s6,a5
	j	.L26
.LVL12:
.L12:
	.loc 1 50 29 is_stmt 1
	.loc 1 50 36 is_stmt 0
	slli	a2,a2,24
	srai	a2,a2,24
	addi	a1,s8,%lo(.LC0)
.L49:
	.loc 1 61 36
	call	sprintf
.LVL13:
	.loc 1 46 17
	lw	a5,12(sp)
	.loc 1 46 37
	addi	s11,s11,1
.LVL14:
	.loc 1 61 33
	add	s2,s2,a0
.LVL15:
	.loc 1 46 36 is_stmt 1
	.loc 1 46 29
	.loc 1 46 17 is_stmt 0
	bne	a5,s11,.L16
.L58:
	.loc 1 87 17 is_stmt 1
	.loc 1 87 22
	.loc 1 87 24
	.loc 1 87 69 is_stmt 0
	call	xPortIsInsideInterrupt
.LVL16:
	.loc 1 87 24
	beq	a0,zero,.L24
	.loc 1 87 96 discriminator 1
	call	xTaskGetTickCountFromISR
.LVL17:
.L52:
	.loc 1 87 125 discriminator 2
	mv	a1,a0
	.loc 1 87 24 discriminator 2
	lui	a2,%hi(.LC3)
	lui	a0,%hi(.LC4)
	mv	a5,s2
	mv	a6,s3
	mv	a4,s5
	mv	a3,s4
	addi	a2,a2,%lo(.LC3)
	addi	a0,a0,%lo(.LC4)
	call	bl_printk
.LVL18:
	.loc 1 42 21 is_stmt 1 discriminator 2
	.loc 1 42 9 is_stmt 0 discriminator 2
	addi	a5,s6,1
.LVL19:
	addi	s0,s0,50
	bne	s6,s7,.L37
.LVL20:
.L34:
	.loc 1 120 1
	lw	ra,76(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,72(sp)
	.cfi_restore 8
	lw	s1,68(sp)
	.cfi_restore 9
.LVL21:
	lw	s2,64(sp)
	.cfi_restore 18
	lw	s3,60(sp)
	.cfi_restore 19
	lw	s4,56(sp)
	.cfi_restore 20
.LVL22:
	lw	s5,52(sp)
	.cfi_restore 21
.LVL23:
	lw	s6,48(sp)
	.cfi_restore 22
	lw	s7,44(sp)
	.cfi_restore 23
	lw	s8,40(sp)
	.cfi_restore 24
	lw	s9,36(sp)
	.cfi_restore 25
	lw	s10,32(sp)
	.cfi_restore 26
	lw	s11,28(sp)
	.cfi_restore 27
	.loc 1 119 12
	li	a0,0
	.loc 1 120 1
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
.LVL24:
.L20:
	.cfi_restore_state
	.loc 1 72 29 is_stmt 1
	.loc 1 72 36 is_stmt 0
	slli	a2,a2,24
	srai	a2,a2,24
	addi	a1,s8,%lo(.LC0)
.L51:
	.loc 1 83 36
	call	sprintf
.LVL25:
	.loc 1 68 40
	addi	s11,s11,1
.LVL26:
	.loc 1 68 17
	li	a5,50
	.loc 1 83 33
	add	s2,s2,a0
.LVL27:
	.loc 1 68 39 is_stmt 1
	.loc 1 68 29
	.loc 1 68 17 is_stmt 0
	beq	s11,a5,.L58
.LVL28:
.L11:
	.loc 1 69 21 is_stmt 1
	.loc 1 72 78 is_stmt 0
	add	a5,s0,s11
	lbu	a2,0(a5)
	.loc 1 69 21
	li	a5,1
	.loc 1 72 36
	add	a0,s3,s2
	.loc 1 69 21
	beq	s1,a5,.L20
	li	a5,2
	.loc 1 77 36
	addi	a1,s10,%lo(.LC1)
	.loc 1 69 21
	beq	s1,a5,.L51
	.loc 1 83 29 is_stmt 1
	.loc 1 83 36 is_stmt 0
	addi	a1,s9,%lo(.LC2)
	j	.L51
.L24:
	.loc 1 87 125 discriminator 2
	call	xTaskGetTickCount
.LVL29:
	j	.L52
.LVL30:
.L27:
	.loc 1 98 25 is_stmt 1
	.loc 1 98 32 is_stmt 0
	slli	a2,a2,24
	lui	a5,%hi(.LC0)
	srai	a2,a2,24
	addi	a1,a5,%lo(.LC0)
.L54:
	.loc 1 109 32
	call	sprintf
.LVL31:
	.loc 1 94 36
	addi	s6,s6,1
.LVL32:
	.loc 1 94 13
	li	a5,50
.LVL33:
	.loc 1 109 29
	add	s2,s2,a0
.LVL34:
	.loc 1 94 35 is_stmt 1
	.loc 1 94 25
	.loc 1 94 13 is_stmt 0
	bne	s6,a5,.L31
	.loc 1 113 13 is_stmt 1
	.loc 1 113 18
	.loc 1 113 20
	.loc 1 113 65 is_stmt 0
	call	xPortIsInsideInterrupt
.LVL35:
	.loc 1 113 20
	beq	a0,zero,.L32
	.loc 1 113 92 discriminator 1
	call	xTaskGetTickCountFromISR
.LVL36:
.L55:
	.loc 1 113 121 discriminator 2
	mv	a1,a0
	.loc 1 113 20 discriminator 2
	lui	a2,%hi(.LC3)
	lui	a0,%hi(.LC4)
	addi	a6,s7,%lo(.LANCHOR0)
	mv	a5,s2
	mv	a4,s5
	mv	a3,s4
	addi	a2,a2,%lo(.LC3)
	addi	a0,a0,%lo(.LC4)
	call	bl_printk
.LVL37:
	.loc 1 113 177 is_stmt 1 discriminator 2
	.loc 1 113 186 discriminator 2
	.loc 1 92 28 discriminator 2
	addi	s3,s3,50
	j	.L10
.L32:
	.loc 1 113 121 is_stmt 0 discriminator 2
	call	xTaskGetTickCount
.LVL38:
	j	.L55
.LVL39:
.L35:
	.cfi_def_cfa_offset 0
	.cfi_restore 1
	.cfi_restore 8
	.cfi_restore 9
	.cfi_restore 18
	.cfi_restore 19
	.cfi_restore 20
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 27
	.loc 1 30 16
	li	a0,-1
.LVL40:
	.loc 1 120 1
	ret
	.cfi_endproc
.LFE4:
	.size	log_buf_out, .-log_buf_out
	.section	.bss.log_buf,"aw",@nobits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	log_buf, @object
	.size	log_buf, 512
log_buf:
	.zero	512
	.text
.Letext0:
	.file 2 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 3 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdarg.h"
	.file 4 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h"
	.file 5 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 6 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/utils/include/utils_log.h"
	.file 7 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h"
	.file 8 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x367
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF34
	.byte	0xc
	.4byte	.LASF35
	.4byte	.LASF36
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.4byte	.LASF0
	.byte	0x2
	.byte	0x29
	.byte	0x15
	.4byte	0x31
	.byte	0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.byte	0x2
	.4byte	.LASF1
	.byte	0x2
	.byte	0x2b
	.byte	0x17
	.4byte	0x44
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.byte	0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.byte	0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.byte	0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.byte	0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.byte	0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.byte	0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.byte	0x2
	.4byte	.LASF11
	.byte	0x3
	.byte	0x28
	.byte	0x1b
	.4byte	0x8f
	.byte	0x5
	.byte	0x4
	.4byte	.LASF37
	.byte	0x2
	.4byte	.LASF12
	.byte	0x4
	.byte	0x2e
	.byte	0x18
	.4byte	0x83
	.byte	0x6
	.byte	0x4
	.4byte	0xa7
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.byte	0x7
	.4byte	0xa7
	.byte	0x6
	.byte	0x4
	.4byte	0xae
	.byte	0x2
	.4byte	.LASF14
	.byte	0x5
	.byte	0x14
	.byte	0x12
	.4byte	0x25
	.byte	0x2
	.4byte	.LASF15
	.byte	0x5
	.byte	0x18
	.byte	0x13
	.4byte	0x38
	.byte	0x8
	.4byte	.LASF38
	.byte	0x7
	.byte	0x4
	.4byte	0x7c
	.byte	0x6
	.byte	0x38
	.byte	0xe
	.4byte	0xf6
	.byte	0x9
	.4byte	.LASF16
	.byte	0
	.byte	0x9
	.4byte	.LASF17
	.byte	0x1
	.byte	0x9
	.4byte	.LASF18
	.byte	0x2
	.byte	0
	.byte	0x2
	.4byte	.LASF19
	.byte	0x6
	.byte	0x3c
	.byte	0x3
	.4byte	0xd1
	.byte	0xa
	.4byte	0xa7
	.4byte	0x113
	.byte	0xb
	.4byte	0x7c
	.2byte	0x1ff
	.byte	0
	.byte	0xc
	.4byte	.LASF21
	.byte	0x1
	.byte	0xe
	.byte	0xd
	.4byte	0x102
	.byte	0x5
	.byte	0x3
	.4byte	log_buf
	.byte	0xd
	.4byte	.LASF39
	.byte	0x1
	.byte	0x7c
	.byte	0x15
	.4byte	0x138
	.byte	0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF20
	.byte	0xe
	.4byte	0x131
	.byte	0xf
	.4byte	.LASF40
	.byte	0x1
	.byte	0x7e
	.byte	0x6
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0x18b
	.byte	0x10
	.4byte	.LASF23
	.byte	0x1
	.byte	0x7e
	.byte	0x1c
	.4byte	0xb3
	.4byte	.LLST0
	.byte	0x11
	.byte	0xc
	.4byte	.LASF22
	.byte	0x1
	.byte	0x80
	.byte	0xd
	.4byte	0x95
	.byte	0x2
	.byte	0x91
	.byte	0x4c
	.byte	0x12
	.4byte	.LVL1
	.4byte	0x32c
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x13
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0
	.byte	0
	.byte	0x14
	.4byte	.LASF41
	.byte	0x1
	.byte	0xf
	.byte	0x5
	.4byte	0x75
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0x325
	.byte	0x10
	.4byte	.LASF24
	.byte	0x1
	.byte	0xf
	.byte	0x1d
	.4byte	0xb3
	.4byte	.LLST1
	.byte	0x10
	.4byte	.LASF25
	.byte	0x1
	.byte	0xf
	.byte	0x27
	.4byte	0x75
	.4byte	.LLST2
	.byte	0x10
	.4byte	.LASF26
	.byte	0x1
	.byte	0xf
	.byte	0x39
	.4byte	0x325
	.4byte	.LLST3
	.byte	0x15
	.string	"len"
	.byte	0x1
	.byte	0xf
	.byte	0x44
	.4byte	0x75
	.4byte	.LLST4
	.byte	0x10
	.4byte	.LASF27
	.byte	0x1
	.byte	0xf
	.byte	0x61
	.4byte	0xf6
	.4byte	.LLST5
	.byte	0x16
	.string	"buf"
	.byte	0x1
	.byte	0x11
	.byte	0xb
	.4byte	0xa1
	.4byte	.LLST6
	.byte	0xc
	.4byte	.LASF28
	.byte	0x1
	.byte	0x12
	.byte	0xb
	.4byte	0xa1
	.byte	0x6
	.byte	0x3
	.4byte	log_buf
	.byte	0x9f
	.byte	0x16
	.string	"m"
	.byte	0x1
	.byte	0x15
	.byte	0x9
	.4byte	0x75
	.4byte	.LLST7
	.byte	0x16
	.string	"n"
	.byte	0x1
	.byte	0x15
	.byte	0x10
	.4byte	0x75
	.4byte	.LLST8
	.byte	0x16
	.string	"j"
	.byte	0x1
	.byte	0x16
	.byte	0x9
	.4byte	0x75
	.4byte	.LLST9
	.byte	0x16
	.string	"k"
	.byte	0x1
	.byte	0x16
	.byte	0x10
	.4byte	0x75
	.4byte	.LLST10
	.byte	0x16
	.string	"tmp"
	.byte	0x1
	.byte	0x16
	.byte	0x17
	.4byte	0x75
	.4byte	.LLST11
	.byte	0x17
	.4byte	.LVL13
	.4byte	0x338
	.byte	0x17
	.4byte	.LVL16
	.4byte	0x344
	.byte	0x17
	.4byte	.LVL17
	.4byte	0x350
	.byte	0x18
	.4byte	.LVL18
	.4byte	0x13d
	.4byte	0x2b3
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0x13
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0x13
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0x13
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0x13
	.byte	0x1
	.byte	0x5f
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x13
	.byte	0x1
	.byte	0x60
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0
	.byte	0x17
	.4byte	.LVL25
	.4byte	0x338
	.byte	0x17
	.4byte	.LVL29
	.4byte	0x35d
	.byte	0x17
	.4byte	.LVL31
	.4byte	0x338
	.byte	0x17
	.4byte	.LVL35
	.4byte	0x344
	.byte	0x17
	.4byte	.LVL36
	.4byte	0x350
	.byte	0x18
	.4byte	.LVL37
	.4byte	0x13d
	.4byte	0x31b
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0x13
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0x13
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0x13
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0x13
	.byte	0x1
	.byte	0x5f
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x13
	.byte	0x1
	.byte	0x60
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0
	.byte	0x17
	.4byte	.LVL38
	.4byte	0x35d
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x32b
	.byte	0x19
	.byte	0x1a
	.4byte	.LASF29
	.4byte	.LASF29
	.byte	0x1
	.byte	0x7a
	.byte	0xd
	.byte	0x1a
	.4byte	.LASF30
	.4byte	.LASF30
	.byte	0x4
	.byte	0xf4
	.byte	0x5
	.byte	0x1a
	.4byte	.LASF31
	.4byte	.LASF31
	.byte	0x7
	.byte	0x98
	.byte	0xc
	.byte	0x1b
	.4byte	.LASF32
	.4byte	.LASF32
	.byte	0x8
	.2byte	0x558
	.byte	0xc
	.byte	0x1b
	.4byte	.LASF33
	.4byte	.LASF33
	.byte	0x8
	.2byte	0x547
	.byte	0xc
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
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x3
	.byte	0xe
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
	.byte	0x5
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
	.byte	0x2
	.byte	0x18
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
	.byte	0x3f
	.byte	0x19
	.byte	0x3c
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0xe
	.byte	0x35
	.byte	0
	.byte	0x49
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
	.byte	0x18
	.byte	0
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
	.byte	0x15
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
	.byte	0x16
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
	.byte	0x17
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
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
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x19
	.byte	0x26
	.byte	0
	.byte	0
	.byte	0
	.byte	0x1a
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
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1-1
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL2
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL6
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL9
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL22
	.4byte	.LVL24
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL40
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL2
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL6
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL9
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL39
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL2
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL6
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL9
	.4byte	.LVL30
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL39
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL2
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL6
	.4byte	.LVL8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL9
	.4byte	.LVL39
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL39
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL3
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL21
	.4byte	.LVL24
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL39
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL2
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL6
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL9
	.4byte	.LVL30
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL39
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL2
	.4byte	.LVL4
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x6
	.byte	0x7d
	.byte	0
	.byte	0x8
	.byte	0x32
	.byte	0x1b
	.byte	0x9f
	.4byte	.LVL39
	.4byte	.LFE4
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL2
	.4byte	.LVL4
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL6
	.4byte	.LVL8
	.2byte	0xb
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x8
	.byte	0x32
	.byte	0x14
	.byte	0x14
	.byte	0x1b
	.byte	0x1e
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL9
	.4byte	.LVL20
	.2byte	0x3
	.byte	0x91
	.byte	0xbc,0x7f
	.4byte	.LVL20
	.4byte	.LVL24
	.2byte	0xb
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x8
	.byte	0x32
	.byte	0x14
	.byte	0x14
	.byte	0x1b
	.byte	0x1e
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LVL30
	.2byte	0x3
	.byte	0x91
	.byte	0xbc,0x7f
	.4byte	.LVL30
	.4byte	.LVL33
	.2byte	0xb
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x8
	.byte	0x32
	.byte	0x14
	.byte	0x14
	.byte	0x1b
	.byte	0x1e
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LVL35-1
	.2byte	0xb
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x7f
	.byte	0
	.byte	0x14
	.byte	0x14
	.byte	0x1b
	.byte	0x1e
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL35-1
	.4byte	.LVL39
	.2byte	0xb
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x8
	.byte	0x32
	.byte	0x14
	.byte	0x14
	.byte	0x1b
	.byte	0x1e
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL39
	.4byte	.LFE4
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL2
	.4byte	.LVL6
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x3
	.byte	0x8b
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL24
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x3
	.byte	0x8b
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL30
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL32
	.4byte	.LVL34
	.2byte	0x3
	.byte	0x86
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL39
	.4byte	.LFE4
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL2
	.4byte	.LVL6
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL12
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x3
	.byte	0x86
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL24
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL39
	.4byte	.LFE4
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL2
	.4byte	.LVL6
	.2byte	0x3
	.byte	0x8
	.byte	0xaa
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x3
	.byte	0x8
	.byte	0xaa
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL24
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL39
	.4byte	.LFE4
	.2byte	0x3
	.byte	0x8
	.byte	0xaa
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
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF0:
	.string	"__int8_t"
.LASF1:
	.string	"__uint8_t"
.LASF37:
	.string	"__builtin_va_list"
.LASF5:
	.string	"short unsigned int"
.LASF19:
	.string	"LOG_BUF_OUT_DATA_TYPE_T"
.LASF14:
	.string	"int8_t"
.LASF36:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/utils"
.LASF17:
	.string	"LOG_BUF_OUT_DATA_TYPE_INT8"
.LASF24:
	.string	"file"
.LASF3:
	.string	"unsigned char"
.LASF40:
	.string	"bl_printk"
.LASF39:
	.string	"sys_log_all_enable"
.LASF41:
	.string	"log_buf_out"
.LASF7:
	.string	"long unsigned int"
.LASF26:
	.string	"inbuf"
.LASF28:
	.string	"pbuffer"
.LASF12:
	.string	"va_list"
.LASF29:
	.string	"vprint"
.LASF11:
	.string	"__gnuc_va_list"
.LASF21:
	.string	"log_buf"
.LASF23:
	.string	"format"
.LASF10:
	.string	"unsigned int"
.LASF9:
	.string	"long long unsigned int"
.LASF15:
	.string	"uint8_t"
.LASF25:
	.string	"line"
.LASF31:
	.string	"xPortIsInsideInterrupt"
.LASF8:
	.string	"long long int"
.LASF16:
	.string	"LOG_BUF_OUT_DATA_TYPE_HEX"
.LASF34:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
.LASF13:
	.string	"char"
.LASF32:
	.string	"xTaskGetTickCountFromISR"
.LASF38:
	.string	"LOG_BUF_OUT_DATA_TYPE"
.LASF33:
	.string	"xTaskGetTickCount"
.LASF35:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/utils/src/utils_log.c"
.LASF27:
	.string	"type"
.LASF4:
	.string	"short int"
.LASF22:
	.string	"args"
.LASF18:
	.string	"LOG_BUF_OUT_DATA_TYPE_UNT8"
.LASF6:
	.string	"long int"
.LASF2:
	.string	"signed char"
.LASF20:
	.string	"_Bool"
.LASF30:
	.string	"sprintf"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
