	.file	"bl_sec_pka.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.bl_sec_pka_init,"ax",@progbits
	.align	1
	.globl	bl_sec_pka_init
	.type	bl_sec_pka_init, @function
bl_sec_pka_init:
.LFB8:
	.file 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/sec_common/bl_sec_pka.c"
	.loc 1 40 1
	.cfi_startproc
	.loc 1 46 5
	.loc 1 40 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 46 5
	li	a0,0
	.loc 1 40 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 46 5
	call	GLB_Set_PKA_CLK_Sel
.LVL0:
	.loc 1 49 5 is_stmt 1
	.loc 1 49 17 is_stmt 0
	lui	a1,%hi(.LANCHOR0)
	addi	a1,a1,%lo(.LANCHOR0)
	li	a0,1
	call	xQueueCreateMutexStatic
.LVL1:
	.loc 1 55 1
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 49 15
	lui	a5,%hi(.LANCHOR1)
	sw	a0,%lo(.LANCHOR1)(a5)
	.loc 1 50 5 is_stmt 1
	.loc 1 50 8 is_stmt 0
	seqz	a0,a0
	.loc 1 55 1
	neg	a0,a0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE8:
	.size	bl_sec_pka_init, .-bl_sec_pka_init
	.section	.text.bl_sec_pka_mutex_take,"ax",@progbits
	.align	1
	.globl	bl_sec_pka_mutex_take
	.type	bl_sec_pka_mutex_take, @function
bl_sec_pka_mutex_take:
.LFB9:
	.loc 1 58 1 is_stmt 1
	.cfi_startproc
	.loc 1 59 5
	.loc 1 59 37 is_stmt 0
	lui	a5,%hi(.LANCHOR1)
	lw	a0,%lo(.LANCHOR1)(a5)
	.loc 1 58 1
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 59 37
	li	a1,-1
	.loc 1 58 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 59 37
	call	xQueueSemaphoreTake
.LVL2:
	.loc 1 63 1
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 59 8
	addi	a0,a0,-1
	snez	a0,a0
	.loc 1 63 1
	neg	a0,a0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE9:
	.size	bl_sec_pka_mutex_take, .-bl_sec_pka_mutex_take
	.section	.text.bl_sec_pka_mutex_give,"ax",@progbits
	.align	1
	.globl	bl_sec_pka_mutex_give
	.type	bl_sec_pka_mutex_give, @function
bl_sec_pka_mutex_give:
.LFB10:
	.loc 1 66 1 is_stmt 1
	.cfi_startproc
	.loc 1 67 5
	.loc 1 67 37 is_stmt 0
	lui	a5,%hi(.LANCHOR1)
	lw	a0,%lo(.LANCHOR1)(a5)
	.loc 1 66 1
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 67 37
	li	a3,0
	li	a2,0
	li	a1,0
	.loc 1 66 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 67 37
	call	xQueueGenericSend
.LVL3:
	.loc 1 71 1
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 67 8
	addi	a0,a0,-1
	snez	a0,a0
	.loc 1 71 1
	neg	a0,a0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE10:
	.size	bl_sec_pka_mutex_give, .-bl_sec_pka_mutex_give
	.section	.bss.pka_mutex_buf,"aw",@nobits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	pka_mutex_buf, @object
	.size	pka_mutex_buf, 80
pka_mutex_buf:
	.zero	80
	.section	.sbss.pka_mutex,"aw",@nobits
	.align	2
	.set	.LANCHOR1,. + 0
	.type	pka_mutex, @object
	.size	pka_mutex, 4
pka_mutex:
	.zero	4
	.text
.Letext0:
	.file 2 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.file 3 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h"
	.file 4 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/FreeRTOS.h"
	.file 5 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/queue.h"
	.file 6 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/semphr.h"
	.file 7 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_glb.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x37e
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF48
	.byte	0xc
	.4byte	.LASF49
	.4byte	.LASF50
	.4byte	.Ldebug_ranges0+0
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
	.byte	0x4
	.4byte	.LASF5
	.byte	0x2
	.byte	0x28
	.byte	0x12
	.4byte	0x4d
	.byte	0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF3
	.byte	0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF4
	.byte	0x4
	.4byte	.LASF6
	.byte	0x2
	.byte	0x2e
	.byte	0x17
	.4byte	0x67
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF7
	.byte	0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF8
	.byte	0x4
	.4byte	.LASF9
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0x81
	.byte	0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.byte	0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.byte	0x5
	.byte	0x4
	.byte	0x4
	.4byte	.LASF12
	.byte	0x3
	.byte	0x3f
	.byte	0x11
	.4byte	0x41
	.byte	0x4
	.4byte	.LASF13
	.byte	0x3
	.byte	0x40
	.byte	0x12
	.4byte	0x75
	.byte	0x4
	.4byte	.LASF14
	.byte	0x3
	.byte	0x41
	.byte	0x12
	.4byte	0x75
	.byte	0x6
	.4byte	.LASF18
	.byte	0xc
	.byte	0x4
	.2byte	0x422
	.byte	0x8
	.4byte	0xe0
	.byte	0x7
	.4byte	.LASF15
	.byte	0x4
	.2byte	0x427
	.byte	0xd
	.4byte	0xa9
	.byte	0
	.byte	0x7
	.4byte	.LASF16
	.byte	0x4
	.2byte	0x428
	.byte	0x8
	.4byte	0xe0
	.byte	0x4
	.byte	0
	.byte	0x8
	.4byte	0x8f
	.4byte	0xf0
	.byte	0x9
	.4byte	0x2c
	.byte	0x1
	.byte	0
	.byte	0xa
	.4byte	.LASF17
	.byte	0x4
	.2byte	0x42a
	.byte	0x27
	.4byte	0xb5
	.byte	0x6
	.4byte	.LASF19
	.byte	0x14
	.byte	0x4
	.2byte	0x42d
	.byte	0x10
	.4byte	0x136
	.byte	0x7
	.4byte	.LASF20
	.byte	0x4
	.2byte	0x432
	.byte	0xe
	.4byte	0x9d
	.byte	0
	.byte	0x7
	.4byte	.LASF16
	.byte	0x4
	.2byte	0x433
	.byte	0x8
	.4byte	0x8f
	.byte	0x4
	.byte	0x7
	.4byte	.LASF21
	.byte	0x4
	.2byte	0x434
	.byte	0x17
	.4byte	0xf0
	.byte	0x8
	.byte	0
	.byte	0xa
	.4byte	.LASF22
	.byte	0x4
	.2byte	0x438
	.byte	0x3
	.4byte	0xfd
	.byte	0xb
	.byte	0x4
	.byte	0x4
	.2byte	0x48b
	.byte	0x2
	.4byte	0x168
	.byte	0xc
	.4byte	.LASF23
	.byte	0x4
	.2byte	0x48d
	.byte	0x9
	.4byte	0x8f
	.byte	0xc
	.4byte	.LASF20
	.byte	0x4
	.2byte	0x48e
	.byte	0xf
	.4byte	0x9d
	.byte	0
	.byte	0x6
	.4byte	.LASF24
	.byte	0x50
	.byte	0x4
	.2byte	0x487
	.byte	0x10
	.4byte	0x1e5
	.byte	0x7
	.4byte	.LASF25
	.byte	0x4
	.2byte	0x489
	.byte	0x8
	.4byte	0x1e5
	.byte	0
	.byte	0xd
	.string	"u"
	.byte	0x4
	.2byte	0x48f
	.byte	0x4
	.4byte	0x143
	.byte	0xc
	.byte	0x7
	.4byte	.LASF26
	.byte	0x4
	.2byte	0x491
	.byte	0xf
	.4byte	0x1f5
	.byte	0x10
	.byte	0x7
	.4byte	.LASF27
	.byte	0x4
	.2byte	0x492
	.byte	0xe
	.4byte	0x205
	.byte	0x38
	.byte	0x7
	.4byte	.LASF28
	.byte	0x4
	.2byte	0x493
	.byte	0xa
	.4byte	0x215
	.byte	0x44
	.byte	0x7
	.4byte	.LASF29
	.byte	0x4
	.2byte	0x496
	.byte	0xb
	.4byte	0x5b
	.byte	0x46
	.byte	0x7
	.4byte	.LASF30
	.byte	0x4
	.2byte	0x49e
	.byte	0xf
	.4byte	0x9d
	.byte	0x48
	.byte	0x7
	.4byte	.LASF31
	.byte	0x4
	.2byte	0x49f
	.byte	0xb
	.4byte	0x5b
	.byte	0x4c
	.byte	0
	.byte	0x8
	.4byte	0x8f
	.4byte	0x1f5
	.byte	0x9
	.4byte	0x2c
	.byte	0x2
	.byte	0
	.byte	0x8
	.4byte	0x136
	.4byte	0x205
	.byte	0x9
	.4byte	0x2c
	.byte	0x1
	.byte	0
	.byte	0x8
	.4byte	0x9d
	.4byte	0x215
	.byte	0x9
	.4byte	0x2c
	.byte	0x2
	.byte	0
	.byte	0x8
	.4byte	0x5b
	.4byte	0x225
	.byte	0x9
	.4byte	0x2c
	.byte	0x1
	.byte	0
	.byte	0xa
	.4byte	.LASF32
	.byte	0x4
	.2byte	0x4a2
	.byte	0x3
	.4byte	0x168
	.byte	0xa
	.4byte	.LASF33
	.byte	0x4
	.2byte	0x4a3
	.byte	0x17
	.4byte	0x225
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF34
	.byte	0x4
	.4byte	.LASF35
	.byte	0x5
	.byte	0x30
	.byte	0x22
	.4byte	0x252
	.byte	0xe
	.byte	0x4
	.4byte	0x258
	.byte	0xf
	.4byte	.LASF51
	.byte	0x4
	.4byte	.LASF36
	.byte	0x6
	.byte	0x25
	.byte	0x17
	.4byte	0x246
	.byte	0x10
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0x7
	.byte	0x7c
	.byte	0xe
	.4byte	0x284
	.byte	0x11
	.4byte	.LASF37
	.byte	0
	.byte	0x11
	.4byte	.LASF38
	.byte	0x1
	.byte	0
	.byte	0x12
	.4byte	.LASF39
	.byte	0x1
	.byte	0x24
	.byte	0x1a
	.4byte	0x232
	.byte	0x5
	.byte	0x3
	.4byte	pka_mutex_buf
	.byte	0x12
	.4byte	.LASF40
	.byte	0x1
	.byte	0x25
	.byte	0x1a
	.4byte	0x25d
	.byte	0x5
	.byte	0x3
	.4byte	pka_mutex
	.byte	0x13
	.4byte	.LASF41
	.byte	0x1
	.byte	0x41
	.byte	0x5
	.4byte	0x25
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x1
	.byte	0x9c
	.4byte	0x2dc
	.byte	0x14
	.4byte	.LVL3
	.4byte	0x34d
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x15
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0x15
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x13
	.4byte	.LASF42
	.byte	0x1
	.byte	0x39
	.byte	0x5
	.4byte	0x25
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0x307
	.byte	0x14
	.4byte	.LVL2
	.4byte	0x35a
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.byte	0
	.byte	0x13
	.4byte	.LASF43
	.byte	0x1
	.byte	0x27
	.byte	0x5
	.4byte	0x25
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0x34d
	.byte	0x16
	.4byte	.LVL0
	.4byte	0x367
	.4byte	0x334
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x14
	.4byte	.LVL1
	.4byte	0x374
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0
	.byte	0
	.byte	0x17
	.4byte	.LASF44
	.4byte	.LASF44
	.byte	0x5
	.2byte	0x28a
	.byte	0xc
	.byte	0x17
	.4byte	.LASF45
	.4byte	.LASF45
	.byte	0x5
	.2byte	0x58a
	.byte	0xc
	.byte	0x17
	.4byte	.LASF46
	.4byte	.LASF46
	.byte	0x7
	.2byte	0x23c
	.byte	0xd
	.byte	0x17
	.4byte	.LASF47
	.4byte	.LASF47
	.byte	0x5
	.2byte	0x587
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
	.byte	0x13
	.byte	0x1
	.byte	0x3
	.byte	0xe
	.byte	0xb
	.byte	0xb
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0xd
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
	.byte	0x38
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x9
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x16
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
	.byte	0xb
	.byte	0x17
	.byte	0x1
	.byte	0xb
	.byte	0xb
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
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
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
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
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x38
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xe
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
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
	.byte	0x11
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xb
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
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x13
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
	.byte	0x17
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
	.section	.debug_aranges,"",@progbits
	.4byte	0x2c
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF39:
	.string	"pka_mutex_buf"
.LASF38:
	.string	"GLB_PKA_CLK_PLL120M"
.LASF43:
	.string	"bl_sec_pka_init"
.LASF46:
	.string	"GLB_Set_PKA_CLK_Sel"
.LASF14:
	.string	"TickType_t"
.LASF35:
	.string	"QueueHandle_t"
.LASF6:
	.string	"uint8_t"
.LASF0:
	.string	"unsigned int"
.LASF19:
	.string	"xSTATIC_LIST"
.LASF20:
	.string	"uxDummy2"
.LASF27:
	.string	"uxDummy4"
.LASF30:
	.string	"uxDummy8"
.LASF7:
	.string	"unsigned char"
.LASF33:
	.string	"StaticSemaphore_t"
.LASF10:
	.string	"long unsigned int"
.LASF8:
	.string	"short unsigned int"
.LASF47:
	.string	"xQueueCreateMutexStatic"
.LASF40:
	.string	"pka_mutex"
.LASF28:
	.string	"ucDummy5"
.LASF29:
	.string	"ucDummy6"
.LASF48:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
.LASF31:
	.string	"ucDummy9"
.LASF36:
	.string	"SemaphoreHandle_t"
.LASF44:
	.string	"xQueueGenericSend"
.LASF51:
	.string	"QueueDefinition"
.LASF21:
	.string	"xDummy4"
.LASF50:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/hosal"
.LASF13:
	.string	"UBaseType_t"
.LASF41:
	.string	"bl_sec_pka_mutex_give"
.LASF17:
	.string	"StaticMiniListItem_t"
.LASF24:
	.string	"xSTATIC_QUEUE"
.LASF11:
	.string	"long long unsigned int"
.LASF18:
	.string	"xSTATIC_MINI_LIST_ITEM"
.LASF5:
	.string	"int32_t"
.LASF4:
	.string	"long long int"
.LASF49:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/sec_common/bl_sec_pka.c"
.LASF34:
	.string	"char"
.LASF32:
	.string	"StaticQueue_t"
.LASF42:
	.string	"bl_sec_pka_mutex_take"
.LASF2:
	.string	"short int"
.LASF9:
	.string	"uint32_t"
.LASF3:
	.string	"long int"
.LASF15:
	.string	"xDummy2"
.LASF1:
	.string	"signed char"
.LASF25:
	.string	"pvDummy1"
.LASF45:
	.string	"xQueueSemaphoreTake"
.LASF16:
	.string	"pvDummy3"
.LASF23:
	.string	"pvDummy2"
.LASF26:
	.string	"xDummy3"
.LASF37:
	.string	"GLB_PKA_CLK_HCLK"
.LASF12:
	.string	"BaseType_t"
.LASF22:
	.string	"StaticList_t"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
