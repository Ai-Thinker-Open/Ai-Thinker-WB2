	.file	"ef_port.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.ef_port_read,"ax",@progbits
	.align	1
	.globl	ef_port_read
	.type	ef_port_read, @function
ef_port_read:
.LFB5:
	.file 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/easyflash4/src/ef_port.c"
	.loc 1 107 67
	.cfi_startproc
.LVL0:
	.loc 1 108 5
	.loc 1 113 5
	.loc 1 113 9 is_stmt 0
	lui	a5,%hi(.LANCHOR0)
	.loc 1 107 67
	mv	a3,a1
	.loc 1 113 9
	mv	a1,a0
.LVL1:
	lw	a0,%lo(.LANCHOR0)(a5)
.LVL2:
	.loc 1 107 67
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 113 9
	call	bl_mtd_read
.LVL3:
	.loc 1 118 1
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 114 16
	slti	a0,a0,0
	.loc 1 118 1
	slli	a0,a0,1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE5:
	.size	ef_port_read, .-ef_port_read
	.section	.text.ef_port_write,"ax",@progbits
	.align	1
	.globl	ef_port_write
	.type	ef_port_write, @function
ef_port_write:
.LFB7:
	.loc 1 154 74 is_stmt 1
	.cfi_startproc
.LVL4:
	.loc 1 155 5
	.loc 1 160 5
	.loc 1 160 9 is_stmt 0
	lui	a5,%hi(.LANCHOR0)
	.loc 1 154 74
	mv	a3,a1
	.loc 1 160 9
	mv	a1,a0
.LVL5:
	lw	a0,%lo(.LANCHOR0)(a5)
.LVL6:
	.loc 1 154 74
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 160 9
	call	bl_mtd_write
.LVL7:
	.loc 1 160 8
	bge	a0,zero,.L7
	.loc 1 161 16
	li	a0,3
.L5:
	.loc 1 165 1
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.L7:
	.cfi_restore_state
	.loc 1 155 15
	li	a0,0
	.loc 1 164 5 is_stmt 1
	.loc 1 164 12 is_stmt 0
	j	.L5
	.cfi_endproc
.LFE7:
	.size	ef_port_write, .-ef_port_write
	.section	.text.ef_port_env_lock,"ax",@progbits
	.align	1
	.globl	ef_port_env_lock
	.type	ef_port_env_lock, @function
ef_port_env_lock:
.LFB8:
	.loc 1 170 29 is_stmt 1
	.cfi_startproc
	.loc 1 173 5
	lui	a5,%hi(.LANCHOR1)
	lw	a0,%lo(.LANCHOR1)(a5)
	li	a1,-1
	tail	xQueueTakeMutexRecursive
.LVL8:
	.cfi_endproc
.LFE8:
	.size	ef_port_env_lock, .-ef_port_env_lock
	.section	.text.ef_port_env_unlock,"ax",@progbits
	.align	1
	.globl	ef_port_env_unlock
	.type	ef_port_env_unlock, @function
ef_port_env_unlock:
.LFB9:
	.loc 1 186 31
	.cfi_startproc
	.loc 1 189 5
	lui	a5,%hi(.LANCHOR1)
	lw	a0,%lo(.LANCHOR1)(a5)
	tail	xQueueGiveMutexRecursive
.LVL9:
	.cfi_endproc
.LFE9:
	.size	ef_port_env_unlock, .-ef_port_env_unlock
	.section	.text.ef_log_debug,"ax",@progbits
	.align	1
	.globl	ef_log_debug
	.type	ef_log_debug, @function
ef_log_debug:
.LFB10:
	.loc 1 206 79
	.cfi_startproc
.LVL10:
	.loc 1 210 5
	.loc 1 213 4
	.loc 1 206 79 is_stmt 0
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	.loc 1 213 4
	addi	a1,sp,44
.LVL11:
	.loc 1 216 5
	mv	a0,a2
.LVL12:
	.loc 1 206 79
	sw	ra,28(sp)
	.cfi_offset 1, -36
	.loc 1 206 79
	sw	a3,44(sp)
	sw	a4,48(sp)
	sw	a5,52(sp)
	sw	a6,56(sp)
	sw	a7,60(sp)
	.loc 1 213 4
	sw	a1,12(sp)
	.loc 1 216 5 is_stmt 1
	call	vprint
.LVL13:
	.loc 1 218 4
	.loc 1 222 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_restore 1
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE10:
	.size	ef_log_debug, .-ef_log_debug
	.section	.rodata.ef_port_erase.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"addr % EF_ERASE_MIN_SIZE == 0"
	.align	2
.LC1:
	.string	"(%s) has assert failed at %s.\r\n"
	.align	2
.LC2:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/easyflash4/src/ef_port.c"
	.section	.text.ef_port_erase,"ax",@progbits
	.align	1
	.globl	ef_port_erase
	.type	ef_port_erase, @function
ef_port_erase:
.LFB6:
	.loc 1 130 53 is_stmt 1
	.cfi_startproc
.LVL14:
	.loc 1 131 5
	.loc 1 134 5
	.loc 1 130 53 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 134 16
	slli	a5,a0,20
	.loc 1 134 8
	beq	a5,zero,.L14
	.loc 1 134 34 is_stmt 1 discriminator 1
	lui	a4,%hi(.LANCHOR2)
	lui	a3,%hi(.LC0)
	lui	a2,%hi(.LC1)
	lui	a0,%hi(.LC2)
.LVL15:
	addi	a4,a4,%lo(.LANCHOR2)
	addi	a3,a3,%lo(.LC0)
	addi	a2,a2,%lo(.LC1)
	li	a1,134
.LVL16:
	addi	a0,a0,%lo(.LC2)
	call	ef_log_debug
.LVL17:
.L15:
	.loc 1 134 221 discriminator 1
	.loc 1 134 230 discriminator 1
	.loc 1 134 227 discriminator 1
	j	.L15
.LVL18:
.L14:
	.loc 1 137 9 is_stmt 0 discriminator 2
	lui	a5,%hi(.LANCHOR0)
	mv	a2,a1
	.loc 1 134 233 is_stmt 1 discriminator 2
	.loc 1 137 5 discriminator 2
	.loc 1 137 9 is_stmt 0 discriminator 2
	mv	a1,a0
.LVL19:
	lw	a0,%lo(.LANCHOR0)(a5)
.LVL20:
	call	bl_mtd_erase
.LVL21:
	.loc 1 141 5 is_stmt 1 discriminator 2
	.loc 1 142 1 is_stmt 0 discriminator 2
	lw	ra,12(sp)
	.cfi_restore 1
	srli	a0,a0,31
.LVL22:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE6:
	.size	ef_port_erase, .-ef_port_erase
	.section	.text.ef_log_info,"ax",@progbits
	.align	1
	.globl	ef_log_info
	.type	ef_log_info, @function
ef_log_info:
.LFB11:
	.loc 1 230 43 is_stmt 1
	.cfi_startproc
.LVL23:
	.loc 1 231 5
	.loc 1 234 4
	.loc 1 230 43 is_stmt 0
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	a1,36(sp)
	.loc 1 234 4
	addi	a1,sp,36
	.loc 1 230 43
	sw	ra,28(sp)
	.cfi_offset 1, -36
	.loc 1 230 43
	sw	a2,40(sp)
	sw	a3,44(sp)
	sw	a4,48(sp)
	sw	a5,52(sp)
	sw	a6,56(sp)
	sw	a7,60(sp)
	.loc 1 234 4
	sw	a1,12(sp)
	.loc 1 237 5 is_stmt 1
	call	vprint
.LVL24:
	.loc 1 239 4
	.loc 1 240 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_restore 1
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE11:
	.size	ef_log_info, .-ef_log_info
	.section	.rodata.ef_port_init.str1.4,"aMS",@progbits,1
	.align	2
.LC3:
	.string	"PSM"
	.align	2
.LC4:
	.string	"[EF] [PART] [XIP] error when get PSM partition %d\r\n"
	.align	2
.LC5:
	.string	"[EF] [PART] [XIP] Dead Loop. Reason: no Valid PSM partition found\r\n"
	.align	2
.LC6:
	.string	"[EF] Found Valid PSM partition, XIP Addr %08x, flash addr %08x, size %d\r\n"
	.align	2
.LC7:
	.string	"[ERROR]psm partition is less than 8k,easyflash can not work!"
	.align	2
.LC8:
	.string	"ENV AREA SIZE %ld, SECTOR NUM %ld\r\n"
	.align	2
.LC9:
	.string	"*default_env_size = 0x%08x\r\n"
	.section	.text.ef_port_init,"ax",@progbits
	.align	1
	.globl	ef_port_init
	.type	ef_port_init, @function
ef_port_init:
.LFB4:
	.loc 1 57 78 is_stmt 1
	.cfi_startproc
.LVL25:
	.loc 1 58 5
	.loc 1 59 5
	.loc 1 61 5
	.loc 1 57 78 is_stmt 0
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s0,40(sp)
	sw	s1,36(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	mv	s0,a1
	mv	s1,a0
	.loc 1 61 11
	lui	a1,%hi(.LANCHOR0)
.LVL26:
	lui	a0,%hi(.LC3)
.LVL27:
	.loc 1 57 78
	sw	s2,32(sp)
	.loc 1 61 11
	li	a2,2
	.cfi_offset 18, -16
	addi	s2,a1,%lo(.LANCHOR0)
	addi	a0,a0,%lo(.LC3)
	addi	a1,a1,%lo(.LANCHOR0)
	.loc 1 57 78
	sw	ra,44(sp)
	.cfi_offset 1, -4
	.loc 1 61 11
	call	bl_mtd_open
.LVL28:
	.loc 1 62 5 is_stmt 1
	.loc 1 62 8 is_stmt 0
	bge	a0,zero,.L20
	mv	a1,a0
	.loc 1 63 9 is_stmt 1
	lui	a0,%hi(.LC4)
.LVL29:
	addi	a0,a0,%lo(.LC4)
	call	ef_log_info
.LVL30:
	.loc 1 64 9
	lui	a0,%hi(.LC5)
	addi	a0,a0,%lo(.LC5)
	call	puts
.LVL31:
.L21:
	.loc 1 65 9 discriminator 1
	.loc 1 66 9 discriminator 1
	.loc 1 65 15 discriminator 1
	j	.L21
.LVL32:
.L20:
	.loc 1 68 5
	li	a2,28
	li	a1,0
	addi	a0,sp,4
.LVL33:
	call	memset
.LVL34:
	.loc 1 69 5
	lw	a0,0(s2)
	addi	a1,sp,4
	call	bl_mtd_info
.LVL35:
	.loc 1 70 5
	lw	a3,24(sp)
	lw	a2,20(sp)
	lw	a1,28(sp)
	lui	a0,%hi(.LC6)
	addi	a0,a0,%lo(.LC6)
	call	ef_log_info
.LVL36:
	.loc 1 75 5
	.loc 1 75 13 is_stmt 0
	lw	a5,24(sp)
	.loc 1 75 8
	li	a4,8192
	bgeu	a5,a4,.L22
	.loc 1 76 9 is_stmt 1
	lui	a0,%hi(.LC7)
	addi	a0,a0,%lo(.LC7)
	call	printf
.LVL37:
.L23:
	.loc 1 77 9 discriminator 2
	.loc 1 77 17 discriminator 2
	.loc 1 77 14 discriminator 2
	j	.L23
.L22:
	.loc 1 79 5
	.loc 1 79 42 is_stmt 0
	li	a1,-4096
	and	a1,a5,a1
	.loc 1 81 5
	lui	a0,%hi(.LC8)
	.loc 1 79 19
	lui	a5,%hi(ENV_AREA_SIZE)
	.loc 1 80 32
	srli	a2,a1,12
	.loc 1 79 19
	sw	a1,%lo(ENV_AREA_SIZE)(a5)
	.loc 1 80 5 is_stmt 1
	.loc 1 81 5 is_stmt 0
	addi	a0,a0,%lo(.LC8)
	.loc 1 80 16
	lui	a5,%hi(SECTOR_NUM)
	sw	a2,%lo(SECTOR_NUM)(a5)
	.loc 1 81 5 is_stmt 1
	call	printf
.LVL38:
	.loc 1 83 5
	.loc 1 83 18 is_stmt 0
	lui	a5,%hi(.LANCHOR3)
	addi	a5,a5,%lo(.LANCHOR3)
	sw	a5,0(s1)
	.loc 1 84 5 is_stmt 1
	.loc 1 86 5 is_stmt 0
	lui	a0,%hi(.LC9)
	.loc 1 84 23
	li	a5,1
	sw	a5,0(s0)
	.loc 1 86 5 is_stmt 1
	li	a1,1
	addi	a0,a0,%lo(.LC9)
	call	printf
.LVL39:
	.loc 1 89 5
	.loc 1 89 22 is_stmt 0
	li	a0,4
	call	xQueueCreateMutex
.LVL40:
	.loc 1 95 1
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
.LVL41:
	.loc 1 89 20
	lui	a5,%hi(.LANCHOR1)
	sw	a0,%lo(.LANCHOR1)(a5)
	.loc 1 94 5 is_stmt 1
	.loc 1 95 1 is_stmt 0
	lw	s1,36(sp)
	.cfi_restore 9
.LVL42:
	lw	s2,32(sp)
	.cfi_restore 18
	li	a0,0
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE4:
	.size	ef_port_init, .-ef_port_init
	.section	.text.ef_print,"ax",@progbits
	.align	1
	.globl	ef_print
	.type	ef_print, @function
ef_print:
.LFB12:
	.loc 1 247 40 is_stmt 1
	.cfi_startproc
.LVL43:
	.loc 1 248 5
	.loc 1 251 4
	.loc 1 247 40 is_stmt 0
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	a1,36(sp)
	.loc 1 251 4
	addi	a1,sp,36
	.loc 1 247 40
	sw	ra,28(sp)
	.cfi_offset 1, -36
	.loc 1 247 40
	sw	a2,40(sp)
	sw	a3,44(sp)
	sw	a4,48(sp)
	sw	a5,52(sp)
	sw	a6,56(sp)
	sw	a7,60(sp)
	.loc 1 251 4
	sw	a1,12(sp)
	.loc 1 254 5 is_stmt 1
	call	vprint
.LVL44:
	.loc 1 256 4
	.loc 1 257 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_restore 1
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE12:
	.size	ef_print, .-ef_print
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	2
.LC10:
	.string	"boot_times"
	.align	2
.LC11:
	.string	"3"
	.comm	SECTOR_NUM,4,4
	.comm	ENV_AREA_SIZE,4,4
	.section	.rodata.__FUNCTION__.0,"a"
	.align	2
	.set	.LANCHOR2,. + 0
	.type	__FUNCTION__.0, @object
	.size	__FUNCTION__.0, 14
__FUNCTION__.0:
	.string	"ef_port_erase"
	.section	.rodata.default_env_set,"a"
	.align	2
	.set	.LANCHOR3,. + 0
	.type	default_env_set, @object
	.size	default_env_set, 12
default_env_set:
	.word	.LC10
	.word	.LC11
	.word	1
	.section	.sbss.env_cache_lock,"aw",@nobits
	.align	2
	.set	.LANCHOR1,. + 0
	.type	env_cache_lock, @object
	.size	env_cache_lock, 4
env_cache_lock:
	.zero	4
	.section	.sbss.handle,"aw",@nobits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	handle, @object
	.size	handle, 4
handle:
	.zero	4
	.text
.Letext0:
	.file 2 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.file 3 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h"
	.file 4 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/easyflash4/inc/ef_def.h"
	.file 5 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdarg.h"
	.file 6 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h"
	.file 7 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/queue.h"
	.file 8 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/semphr.h"
	.file 9 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/sys/blmtd/include/bl_mtd.h"
	.file 10 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/easyflash4/inc/ef_cfg.h"
	.file 11 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h"
	.file 12 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x773
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF73
	.byte	0xc
	.4byte	.LASF74
	.4byte	.LASF75
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
	.byte	0x3
	.4byte	0x33
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF3
	.byte	0x4
	.4byte	.LASF6
	.byte	0x2
	.byte	0x2e
	.byte	0x17
	.4byte	0x52
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF4
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.byte	0x4
	.4byte	.LASF7
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0x71
	.byte	0x3
	.4byte	0x60
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.byte	0x5
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.byte	0x4
	.4byte	.LASF11
	.byte	0x3
	.byte	0xd1
	.byte	0x16
	.4byte	0x86
	.byte	0x6
	.4byte	.LASF38
	.byte	0xa
	.byte	0x54
	.byte	0x11
	.4byte	0x60
	.byte	0x7
	.4byte	.LASF76
	.byte	0xc
	.byte	0x4
	.byte	0x49
	.byte	0x10
	.4byte	0xda
	.byte	0x8
	.string	"key"
	.byte	0x4
	.byte	0x4a
	.byte	0xb
	.4byte	0xda
	.byte	0
	.byte	0x9
	.4byte	.LASF12
	.byte	0x4
	.byte	0x4b
	.byte	0xb
	.4byte	0xec
	.byte	0x4
	.byte	0x9
	.4byte	.LASF13
	.byte	0x4
	.byte	0x4c
	.byte	0xc
	.4byte	0x8d
	.byte	0x8
	.byte	0
	.byte	0xa
	.byte	0x4
	.4byte	0xe0
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.byte	0x3
	.4byte	0xe0
	.byte	0xb
	.byte	0x4
	.byte	0x4
	.4byte	.LASF15
	.byte	0x4
	.byte	0x4d
	.byte	0x3
	.4byte	0xa5
	.byte	0x3
	.4byte	0xee
	.byte	0xc
	.byte	0x7
	.byte	0x4
	.4byte	0x86
	.byte	0x4
	.byte	0x50
	.byte	0xe
	.4byte	0x144
	.byte	0xd
	.4byte	.LASF16
	.byte	0
	.byte	0xd
	.4byte	.LASF17
	.byte	0x1
	.byte	0xd
	.4byte	.LASF18
	.byte	0x2
	.byte	0xd
	.4byte	.LASF19
	.byte	0x3
	.byte	0xd
	.4byte	.LASF20
	.byte	0x4
	.byte	0xd
	.4byte	.LASF21
	.byte	0x5
	.byte	0xd
	.4byte	.LASF22
	.byte	0x6
	.byte	0xd
	.4byte	.LASF23
	.byte	0x7
	.byte	0xd
	.4byte	.LASF24
	.byte	0x8
	.byte	0
	.byte	0x4
	.4byte	.LASF25
	.byte	0x4
	.byte	0x5a
	.byte	0x3
	.4byte	0xff
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF26
	.byte	0x4
	.4byte	.LASF27
	.byte	0x5
	.byte	0x28
	.byte	0x1b
	.4byte	0x163
	.byte	0xe
	.byte	0x4
	.4byte	.LASF77
	.byte	0x4
	.4byte	.LASF28
	.byte	0x5
	.byte	0x63
	.byte	0x18
	.4byte	0x157
	.byte	0xa
	.byte	0x4
	.4byte	0xe7
	.byte	0x4
	.4byte	.LASF29
	.byte	0x6
	.byte	0x41
	.byte	0x12
	.4byte	0x60
	.byte	0x4
	.4byte	.LASF30
	.byte	0x7
	.byte	0x30
	.byte	0x22
	.4byte	0x193
	.byte	0xa
	.byte	0x4
	.4byte	0x199
	.byte	0xf
	.4byte	.LASF78
	.byte	0x4
	.4byte	.LASF31
	.byte	0x8
	.byte	0x25
	.byte	0x17
	.4byte	0x187
	.byte	0x4
	.4byte	.LASF32
	.byte	0x9
	.byte	0x5
	.byte	0xf
	.4byte	0xec
	.byte	0x10
	.byte	0x1c
	.byte	0x9
	.byte	0x6
	.byte	0x9
	.4byte	0x1f4
	.byte	0x9
	.4byte	.LASF33
	.byte	0x9
	.byte	0x7
	.byte	0xa
	.4byte	0x1f4
	.byte	0
	.byte	0x9
	.4byte	.LASF34
	.byte	0x9
	.byte	0x8
	.byte	0x12
	.4byte	0x86
	.byte	0x10
	.byte	0x9
	.4byte	.LASF35
	.byte	0x9
	.byte	0x9
	.byte	0x12
	.4byte	0x86
	.byte	0x14
	.byte	0x9
	.4byte	.LASF36
	.byte	0x9
	.byte	0xa
	.byte	0xb
	.4byte	0xec
	.byte	0x18
	.byte	0
	.byte	0x11
	.4byte	0xe0
	.4byte	0x204
	.byte	0x12
	.4byte	0x86
	.byte	0xf
	.byte	0
	.byte	0x4
	.4byte	.LASF37
	.byte	0x9
	.byte	0xb
	.byte	0x3
	.4byte	0x1b6
	.byte	0x13
	.4byte	.LASF40
	.byte	0x1
	.byte	0x26
	.byte	0x18
	.4byte	0x1aa
	.byte	0x5
	.byte	0x3
	.4byte	handle
	.byte	0x14
	.4byte	0x99
	.byte	0x1
	.byte	0x27
	.byte	0xa
	.byte	0x5
	.byte	0x3
	.4byte	ENV_AREA_SIZE
	.byte	0x15
	.4byte	.LASF39
	.byte	0x1
	.byte	0x28
	.byte	0xa
	.4byte	0x60
	.byte	0x5
	.byte	0x3
	.4byte	SECTOR_NUM
	.byte	0x11
	.4byte	0xfa
	.4byte	0x252
	.byte	0x12
	.4byte	0x86
	.byte	0
	.byte	0
	.byte	0x3
	.4byte	0x242
	.byte	0x13
	.4byte	.LASF41
	.byte	0x1
	.byte	0x2b
	.byte	0x15
	.4byte	0x252
	.byte	0x5
	.byte	0x3
	.4byte	default_env_set
	.byte	0x13
	.4byte	.LASF42
	.byte	0x1
	.byte	0x2f
	.byte	0x1a
	.4byte	0x19e
	.byte	0x5
	.byte	0x3
	.4byte	env_cache_lock
	.byte	0x16
	.4byte	.LASF44
	.byte	0x1
	.byte	0xf7
	.byte	0x6
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x1
	.byte	0x9c
	.4byte	0x2c9
	.byte	0x17
	.4byte	.LASF46
	.byte	0x1
	.byte	0xf7
	.byte	0x1b
	.4byte	0x175
	.4byte	.LLST16
	.byte	0x18
	.byte	0x13
	.4byte	.LASF43
	.byte	0x1
	.byte	0xf8
	.byte	0xd
	.4byte	0x169
	.byte	0x2
	.byte	0x91
	.byte	0x4c
	.byte	0x19
	.4byte	.LVL44
	.4byte	0x6e3
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x1a
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0
	.byte	0
	.byte	0x16
	.4byte	.LASF45
	.byte	0x1
	.byte	0xe6
	.byte	0x6
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x1
	.byte	0x9c
	.4byte	0x317
	.byte	0x17
	.4byte	.LASF46
	.byte	0x1
	.byte	0xe6
	.byte	0x1e
	.4byte	0x175
	.4byte	.LLST12
	.byte	0x18
	.byte	0x13
	.4byte	.LASF43
	.byte	0x1
	.byte	0xe7
	.byte	0xd
	.4byte	0x169
	.byte	0x2
	.byte	0x91
	.byte	0x4c
	.byte	0x19
	.4byte	.LVL24
	.4byte	0x6e3
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x1a
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0
	.byte	0
	.byte	0x16
	.4byte	.LASF47
	.byte	0x1
	.byte	0xce
	.byte	0x6
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x1
	.byte	0x9c
	.4byte	0x385
	.byte	0x17
	.4byte	.LASF48
	.byte	0x1
	.byte	0xce
	.byte	0x1f
	.4byte	0x175
	.4byte	.LLST6
	.byte	0x17
	.4byte	.LASF49
	.byte	0x1
	.byte	0xce
	.byte	0x30
	.4byte	0x3a
	.4byte	.LLST7
	.byte	0x17
	.4byte	.LASF46
	.byte	0x1
	.byte	0xce
	.byte	0x42
	.4byte	0x175
	.4byte	.LLST8
	.byte	0x18
	.byte	0x13
	.4byte	.LASF43
	.byte	0x1
	.byte	0xd2
	.byte	0xd
	.4byte	0x169
	.byte	0x2
	.byte	0x91
	.byte	0x4c
	.byte	0x19
	.4byte	.LVL13
	.4byte	0x6e3
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x1a
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0
	.byte	0x16
	.4byte	.LASF50
	.byte	0x1
	.byte	0xba
	.byte	0x6
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0x3a5
	.byte	0x1b
	.4byte	.LVL9
	.4byte	0x6ef
	.byte	0
	.byte	0x16
	.4byte	.LASF51
	.byte	0x1
	.byte	0xaa
	.byte	0x6
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0x3cc
	.byte	0x1c
	.4byte	.LVL8
	.4byte	0x6fc
	.byte	0x1a
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.byte	0
	.byte	0x1d
	.4byte	.LASF54
	.byte	0x1
	.byte	0x9a
	.byte	0xb
	.4byte	0x144
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.4byte	0x443
	.byte	0x17
	.4byte	.LASF52
	.byte	0x1
	.byte	0x9a
	.byte	0x22
	.4byte	0x60
	.4byte	.LLST3
	.byte	0x1e
	.string	"buf"
	.byte	0x1
	.byte	0x9a
	.byte	0x38
	.4byte	0x443
	.4byte	.LLST4
	.byte	0x17
	.4byte	.LASF35
	.byte	0x1
	.byte	0x9a
	.byte	0x44
	.4byte	0x8d
	.4byte	.LLST5
	.byte	0x1f
	.4byte	.LASF53
	.byte	0x1
	.byte	0x9b
	.byte	0xf
	.4byte	0x144
	.byte	0
	.byte	0x19
	.4byte	.LVL7
	.4byte	0x709
	.byte	0x1a
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x1a
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x1a
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x4
	.4byte	0x6c
	.byte	0x1d
	.4byte	.LASF55
	.byte	0x1
	.byte	0x82
	.byte	0xb
	.4byte	0x144
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0x4f3
	.byte	0x17
	.4byte	.LASF52
	.byte	0x1
	.byte	0x82
	.byte	0x22
	.4byte	0x60
	.4byte	.LLST9
	.byte	0x17
	.4byte	.LASF35
	.byte	0x1
	.byte	0x82
	.byte	0x2f
	.4byte	0x8d
	.4byte	.LLST10
	.byte	0x20
	.4byte	.LASF53
	.byte	0x1
	.byte	0x83
	.byte	0xf
	.4byte	0x144
	.4byte	.LLST11
	.byte	0x21
	.4byte	.LASF79
	.4byte	0x503
	.byte	0x5
	.byte	0x3
	.4byte	__FUNCTION__.0
	.byte	0x22
	.4byte	.LVL17
	.4byte	0x317
	.4byte	0x4da
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0x1a
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x8
	.byte	0x86
	.byte	0x1a
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x1a
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x1a
	.byte	0x1
	.byte	0x5e
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR2
	.byte	0
	.byte	0x19
	.4byte	.LVL21
	.4byte	0x715
	.byte	0x1a
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x1a
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0
	.byte	0
	.byte	0x11
	.4byte	0xe7
	.4byte	0x503
	.byte	0x12
	.4byte	0x86
	.byte	0xd
	.byte	0
	.byte	0x3
	.4byte	0x4f3
	.byte	0x1d
	.4byte	.LASF56
	.byte	0x1
	.byte	0x6b
	.byte	0xb
	.4byte	0x144
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0x57f
	.byte	0x17
	.4byte	.LASF52
	.byte	0x1
	.byte	0x6b
	.byte	0x21
	.4byte	0x60
	.4byte	.LLST0
	.byte	0x1e
	.string	"buf"
	.byte	0x1
	.byte	0x6b
	.byte	0x31
	.4byte	0x57f
	.4byte	.LLST1
	.byte	0x17
	.4byte	.LASF35
	.byte	0x1
	.byte	0x6b
	.byte	0x3d
	.4byte	0x8d
	.4byte	.LLST2
	.byte	0x1f
	.4byte	.LASF53
	.byte	0x1
	.byte	0x6c
	.byte	0xf
	.4byte	0x144
	.byte	0
	.byte	0x19
	.4byte	.LVL3
	.4byte	0x721
	.byte	0x1a
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x1a
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x1a
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x4
	.4byte	0x60
	.byte	0x1d
	.4byte	.LASF57
	.byte	0x1
	.byte	0x39
	.byte	0xb
	.4byte	0x144
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0x6d1
	.byte	0x17
	.4byte	.LASF58
	.byte	0x1
	.byte	0x39
	.byte	0x27
	.4byte	0x6d1
	.4byte	.LLST13
	.byte	0x17
	.4byte	.LASF59
	.byte	0x1
	.byte	0x39
	.byte	0x3c
	.4byte	0x6dd
	.4byte	.LLST14
	.byte	0x23
	.string	"ret"
	.byte	0x1
	.byte	0x3a
	.byte	0x9
	.4byte	0x7f
	.4byte	.LLST15
	.byte	0x13
	.4byte	.LASF60
	.byte	0x1
	.byte	0x3b
	.byte	0x13
	.4byte	0x204
	.byte	0x2
	.byte	0x91
	.byte	0x54
	.byte	0x22
	.4byte	.LVL28
	.4byte	0x72d
	.4byte	0x600
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0x1a
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x1a
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0x22
	.4byte	.LVL30
	.4byte	0x2c9
	.4byte	0x617
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.byte	0x22
	.4byte	.LVL31
	.4byte	0x739
	.4byte	0x62e
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.byte	0x22
	.4byte	.LVL34
	.4byte	0x745
	.4byte	0x64c
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x54
	.byte	0x1a
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x1a
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x4c
	.byte	0
	.byte	0x22
	.4byte	.LVL35
	.4byte	0x751
	.4byte	0x660
	.byte	0x1a
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x54
	.byte	0
	.byte	0x22
	.4byte	.LVL36
	.4byte	0x2c9
	.4byte	0x677
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0
	.byte	0x22
	.4byte	.LVL37
	.4byte	0x75d
	.4byte	0x68e
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0
	.byte	0x22
	.4byte	.LVL38
	.4byte	0x75d
	.4byte	0x6a5
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC8
	.byte	0
	.byte	0x22
	.4byte	.LVL39
	.4byte	0x75d
	.4byte	0x6c1
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0x1a
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x19
	.4byte	.LVL40
	.4byte	0x769
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x34
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x4
	.4byte	0x6d7
	.byte	0xa
	.byte	0x4
	.4byte	0xfa
	.byte	0xa
	.byte	0x4
	.4byte	0x8d
	.byte	0x24
	.4byte	.LASF61
	.4byte	.LASF61
	.byte	0x1
	.byte	0xc4
	.byte	0xd
	.byte	0x25
	.4byte	.LASF62
	.4byte	.LASF62
	.byte	0x7
	.2byte	0x593
	.byte	0xc
	.byte	0x25
	.4byte	.LASF63
	.4byte	.LASF63
	.byte	0x7
	.2byte	0x592
	.byte	0xc
	.byte	0x24
	.4byte	.LASF64
	.4byte	.LASF64
	.byte	0x9
	.byte	0x16
	.byte	0x5
	.byte	0x24
	.4byte	.LASF65
	.4byte	.LASF65
	.byte	0x9
	.byte	0x14
	.byte	0x5
	.byte	0x24
	.4byte	.LASF66
	.4byte	.LASF66
	.byte	0x9
	.byte	0x17
	.byte	0x5
	.byte	0x24
	.4byte	.LASF67
	.4byte	.LASF67
	.byte	0x9
	.byte	0x11
	.byte	0x5
	.byte	0x24
	.4byte	.LASF68
	.4byte	.LASF68
	.byte	0xb
	.byte	0xdd
	.byte	0x5
	.byte	0x24
	.4byte	.LASF69
	.4byte	.LASF69
	.byte	0xc
	.byte	0x21
	.byte	0x8
	.byte	0x24
	.4byte	.LASF70
	.4byte	.LASF70
	.byte	0x9
	.byte	0x13
	.byte	0x5
	.byte	0x24
	.4byte	.LASF71
	.4byte	.LASF71
	.byte	0xb
	.byte	0xc8
	.byte	0x5
	.byte	0x25
	.4byte	.LASF72
	.4byte	.LASF72
	.byte	0x7
	.2byte	0x586
	.byte	0xf
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
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
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
	.byte	0x6
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
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xb
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xc
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
	.byte	0xd
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xe
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x3
	.byte	0xe
	.byte	0
	.byte	0
	.byte	0xf
	.byte	0x13
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3c
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x10
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
	.byte	0x11
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x12
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
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
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x14
	.byte	0x34
	.byte	0
	.byte	0x47
	.byte	0x13
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x2
	.byte	0x18
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
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x16
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
	.byte	0x17
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
	.byte	0x18
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.byte	0x19
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1a
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x1b
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
	.byte	0x1c
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
	.byte	0x1d
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
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x1f
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
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x20
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
	.byte	0x21
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x49
	.byte	0x13
	.byte	0x34
	.byte	0x19
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x22
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
	.byte	0x17
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
.LLST16:
	.4byte	.LVL43
	.4byte	.LVL44-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL44-1
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL23
	.4byte	.LVL24-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL24-1
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL10
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL12
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL11
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL10
	.4byte	.LVL13-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL13-1
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL4
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL6
	.4byte	.LVL7-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL7-1
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL5
	.4byte	.LVL7-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL7-1
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL4
	.4byte	.LVL7-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL7-1
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL15
	.4byte	.LVL18
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL20
	.4byte	.LVL21-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL21-1
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL14
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL16
	.4byte	.LVL18
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL19
	.4byte	.LVL21-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL21-1
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL14
	.4byte	.LVL21
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x8
	.byte	0x7a
	.byte	0
	.byte	0x30
	.byte	0x2d
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL2
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL3-1
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL1
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL3-1
	.4byte	.LFE5
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
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL25
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL27
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL42
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL26
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL41
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL29
	.4byte	.LVL30-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x5c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF61:
	.string	"vprint"
.LASF53:
	.string	"result"
.LASF52:
	.string	"addr"
.LASF39:
	.string	"SECTOR_NUM"
.LASF57:
	.string	"ef_port_init"
.LASF44:
	.string	"ef_print"
.LASF65:
	.string	"bl_mtd_erase"
.LASF1:
	.string	"short int"
.LASF11:
	.string	"size_t"
.LASF66:
	.string	"bl_mtd_read"
.LASF70:
	.string	"bl_mtd_info"
.LASF3:
	.string	"long long int"
.LASF41:
	.string	"default_env_set"
.LASF15:
	.string	"ef_env"
.LASF74:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/easyflash4/src/ef_port.c"
.LASF51:
	.string	"ef_port_env_lock"
.LASF48:
	.string	"file"
.LASF67:
	.string	"bl_mtd_open"
.LASF12:
	.string	"value"
.LASF28:
	.string	"va_list"
.LASF6:
	.string	"uint8_t"
.LASF50:
	.string	"ef_port_env_unlock"
.LASF49:
	.string	"line"
.LASF38:
	.string	"ENV_AREA_SIZE"
.LASF32:
	.string	"bl_mtd_handle_t"
.LASF56:
	.string	"ef_port_read"
.LASF54:
	.string	"ef_port_write"
.LASF46:
	.string	"format"
.LASF29:
	.string	"TickType_t"
.LASF72:
	.string	"xQueueCreateMutex"
.LASF69:
	.string	"memset"
.LASF23:
	.string	"EF_ENV_INIT_FAILED"
.LASF2:
	.string	"long int"
.LASF63:
	.string	"xQueueTakeMutexRecursive"
.LASF18:
	.string	"EF_READ_ERR"
.LASF34:
	.string	"offset"
.LASF42:
	.string	"env_cache_lock"
.LASF79:
	.string	"__FUNCTION__"
.LASF20:
	.string	"EF_ENV_NAME_ERR"
.LASF25:
	.string	"EfErrCode"
.LASF30:
	.string	"QueueHandle_t"
.LASF13:
	.string	"value_len"
.LASF33:
	.string	"name"
.LASF31:
	.string	"SemaphoreHandle_t"
.LASF4:
	.string	"unsigned char"
.LASF0:
	.string	"signed char"
.LASF9:
	.string	"long long unsigned int"
.LASF7:
	.string	"uint32_t"
.LASF10:
	.string	"unsigned int"
.LASF43:
	.string	"args"
.LASF68:
	.string	"puts"
.LASF78:
	.string	"QueueDefinition"
.LASF5:
	.string	"short unsigned int"
.LASF14:
	.string	"char"
.LASF26:
	.string	"_Bool"
.LASF36:
	.string	"xip_addr"
.LASF71:
	.string	"printf"
.LASF22:
	.string	"EF_ENV_FULL"
.LASF55:
	.string	"ef_port_erase"
.LASF21:
	.string	"EF_ENV_NAME_EXIST"
.LASF75:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/easyflash4"
.LASF16:
	.string	"EF_NO_ERR"
.LASF58:
	.string	"default_env"
.LASF64:
	.string	"bl_mtd_write"
.LASF8:
	.string	"long unsigned int"
.LASF77:
	.string	"__builtin_va_list"
.LASF40:
	.string	"handle"
.LASF35:
	.string	"size"
.LASF60:
	.string	"info"
.LASF24:
	.string	"EF_ENV_ARG_ERR"
.LASF47:
	.string	"ef_log_debug"
.LASF27:
	.string	"__gnuc_va_list"
.LASF45:
	.string	"ef_log_info"
.LASF76:
	.string	"_ef_env"
.LASF62:
	.string	"xQueueGiveMutexRecursive"
.LASF37:
	.string	"bl_mtd_info_t"
.LASF19:
	.string	"EF_WRITE_ERR"
.LASF17:
	.string	"EF_ERASE_ERR"
.LASF59:
	.string	"default_env_size"
.LASF73:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
