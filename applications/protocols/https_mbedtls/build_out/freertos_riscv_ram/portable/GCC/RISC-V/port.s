	.file	"port.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.vPortSetupTimerInterrupt,"ax",@progbits
	.align	1
	.weak	vPortSetupTimerInterrupt
	.type	vPortSetupTimerInterrupt, @function
vPortSetupTimerInterrupt:
.LFB0:
	.file 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/portable/GCC/RISC-V/port.c"
	.loc 1 111 2
	.cfi_startproc
	.loc 1 112 2
	.loc 1 113 2
.LVL0:
	.loc 1 114 2
	.loc 1 118 22 is_stmt 0
	li	a5,33603584
.L2:
	.loc 1 116 3 is_stmt 1 discriminator 1
	.loc 1 118 4 discriminator 1
	.loc 1 118 22 is_stmt 0 discriminator 1
	lw	a3,-4(a5)
.LVL1:
	.loc 1 119 4 is_stmt 1 discriminator 1
	.loc 1 119 21 is_stmt 0 discriminator 1
	lw	a2,-8(a5)
.LVL2:
	.loc 1 120 10 is_stmt 1 discriminator 1
	.loc 1 120 33 is_stmt 0 discriminator 1
	lw	a4,-4(a5)
	.loc 1 120 3 discriminator 1
	bne	a4,a3,.L2
	.loc 1 122 3 is_stmt 1
	.loc 1 123 3
	.loc 1 124 3
	.loc 1 125 3
	.loc 1 125 15 is_stmt 0
	li	a3,8192
.LVL3:
	addi	a3,a3,1808
	add	a3,a2,a3
	.loc 1 129 15
	li	a5,20480
	.loc 1 125 15
	sltu	a6,a3,a2
	mv	a0,a3
	.loc 1 129 15
	addi	a5,a5,-480
	.loc 1 126 36
	li	a3,33570816
	sw	a0,0(a3)
	.loc 1 129 15
	add	a5,a2,a5
	.loc 1 125 15
	add	a1,a6,a4
	.loc 1 126 3 is_stmt 1
	.loc 1 126 36 is_stmt 0
	sw	a1,4(a3)
	.loc 1 129 3 is_stmt 1
	.loc 1 129 15 is_stmt 0
	sltu	a2,a5,a2
.LVL4:
	lui	a3,%hi(.LANCHOR0)
	addi	a3,a3,%lo(.LANCHOR0)
	add	a4,a2,a4
	sw	a5,0(a3)
	sw	a4,4(a3)
	.loc 1 130 2
	ret
	.cfi_endproc
.LFE0:
	.size	vPortSetupTimerInterrupt, .-vPortSetupTimerInterrupt
	.section	.text.xPortStartScheduler,"ax",@progbits
	.align	1
	.globl	xPortStartScheduler
	.type	xPortStartScheduler, @function
xPortStartScheduler:
.LFB1:
	.loc 1 136 1 is_stmt 1
	.cfi_startproc
	.loc 1 137 1
.LBB2:
	.loc 1 141 3
.LBE2:
	.loc 1 136 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	.cfi_offset 1, -4
.LBB3:
	.loc 1 141 21
	sw	zero,12(sp)
	.loc 1 145 3 is_stmt 1
 #APP
# 145 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/portable/GCC/RISC-V/port.c" 1
	csrr a5, mtvec
# 0 "" 2
 #NO_APP
	sw	a5,12(sp)
	.loc 1 150 3
	.loc 1 150 24 is_stmt 0
	lui	a5,%hi(__freertos_irq_stack_top)
	addi	a5,a5,%lo(__freertos_irq_stack_top)
	andi	a5,a5,7
	.loc 1 150 5
	bne	a5,zero,.L11
.L6:
.LBE3:
	.loc 1 158 2 is_stmt 1
	call	vPortSetupTimerInterrupt
.LVL5:
	.loc 1 165 3
	li	a5,4096
	addi	a5,a5,-1920
 #APP
# 165 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/portable/GCC/RISC-V/port.c" 1
	csrs mie, a5
# 0 "" 2
	.loc 1 182 5
	.loc 1 182 38 is_stmt 0
 #NO_APP
	li	a5,41943040
	li	a4,1
	sb	a4,1031(a5)
	.loc 1 184 2 is_stmt 1
	call	xPortStartFirstTask
.LVL6:
	.loc 1 188 2
	.loc 1 189 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	li	a0,0
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.L11:
	.cfi_restore_state
.LBB4:
	.loc 1 150 53 is_stmt 1 discriminator 1
	li	a0,2
	call	vEnvironmentCall
.LVL7:
	j	.L6
.LBE4:
	.cfi_endproc
.LFE1:
	.size	xPortStartScheduler, .-xPortStartScheduler
	.section	.text.vPortEndScheduler,"ax",@progbits
	.align	1
	.globl	vPortEndScheduler
	.type	vPortEndScheduler, @function
vPortEndScheduler:
.LFB2:
	.loc 1 193 1
	.cfi_startproc
.L13:
	.loc 1 195 2 discriminator 1
	.loc 1 195 11 discriminator 1
	.loc 1 195 8 discriminator 1
	j	.L13
	.cfi_endproc
.LFE2:
	.size	vPortEndScheduler, .-vPortEndScheduler
	.globl	pTrapNetCounter
	.globl	TrapNetCounter
	.globl	pullMachineTimerCompareRegister
	.globl	uxTimerIncrementsForOneTick
	.globl	pullNextTime
	.globl	ullNextTime
	.globl	xISRStackTop
	.section	.sbss.TrapNetCounter,"aw",@nobits
	.align	2
	.type	TrapNetCounter, @object
	.size	TrapNetCounter, 4
TrapNetCounter:
	.zero	4
	.section	.sbss.ullNextTime,"aw",@nobits
	.align	3
	.set	.LANCHOR0,. + 0
	.type	ullNextTime, @object
	.size	ullNextTime, 8
ullNextTime:
	.zero	8
	.section	.sdata.pTrapNetCounter,"aw"
	.align	2
	.type	pTrapNetCounter, @object
	.size	pTrapNetCounter, 4
pTrapNetCounter:
	.word	TrapNetCounter
	.section	.sdata.pullNextTime,"aw"
	.align	2
	.type	pullNextTime, @object
	.size	pullNextTime, 4
pullNextTime:
	.word	ullNextTime
	.section	.srodata.pullMachineTimerCompareRegister,"a"
	.align	2
	.type	pullMachineTimerCompareRegister, @object
	.size	pullMachineTimerCompareRegister, 4
pullMachineTimerCompareRegister:
	.word	33570816
	.section	.srodata.uxTimerIncrementsForOneTick,"a"
	.align	2
	.type	uxTimerIncrementsForOneTick, @object
	.size	uxTimerIncrementsForOneTick, 4
uxTimerIncrementsForOneTick:
	.word	10000
	.section	.srodata.xISRStackTop,"a"
	.align	2
	.type	xISRStackTop, @object
	.size	xISRStackTop, 4
xISRStackTop:
	.word	__freertos_irq_stack_top
	.text
.Letext0:
	.file 2 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h"
	.file 3 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.file 4 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x28c
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF33
	.byte	0xc
	.4byte	.LASF34
	.4byte	.LASF35
	.4byte	.Ldebug_ranges0+0x20
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x3
	.4byte	.LASF3
	.byte	0x2
	.byte	0xd1
	.byte	0x16
	.4byte	0x3d
	.byte	0x4
	.4byte	0x2c
	.byte	0x5
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.byte	0x5
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1
	.byte	0x5
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.byte	0x3
	.4byte	.LASF4
	.byte	0x3
	.byte	0x28
	.byte	0x12
	.4byte	0x5e
	.byte	0x5
	.byte	0x4
	.byte	0x5
	.4byte	.LASF5
	.byte	0x5
	.byte	0x8
	.byte	0x5
	.4byte	.LASF6
	.byte	0x3
	.4byte	.LASF7
	.byte	0x3
	.byte	0x2e
	.byte	0x17
	.4byte	0x78
	.byte	0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF8
	.byte	0x5
	.byte	0x2
	.byte	0x7
	.4byte	.LASF9
	.byte	0x3
	.4byte	.LASF10
	.byte	0x3
	.byte	0x34
	.byte	0x1b
	.4byte	0x9c
	.byte	0x4
	.4byte	0x86
	.byte	0x6
	.4byte	0x86
	.byte	0x5
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.byte	0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x37
	.byte	0x20
	.4byte	0xb9
	.byte	0x4
	.4byte	0xa3
	.byte	0x6
	.4byte	0xa3
	.byte	0x5
	.byte	0x8
	.byte	0x7
	.4byte	.LASF13
	.byte	0x3
	.4byte	.LASF14
	.byte	0x4
	.byte	0x3e
	.byte	0x12
	.4byte	0x86
	.byte	0x4
	.4byte	0xc0
	.byte	0x3
	.4byte	.LASF15
	.byte	0x4
	.byte	0x3f
	.byte	0x11
	.4byte	0x52
	.byte	0x4
	.4byte	0xd1
	.byte	0x3
	.4byte	.LASF16
	.byte	0x4
	.byte	0x41
	.byte	0x12
	.4byte	0x86
	.byte	0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF17
	.byte	0x7
	.4byte	0x92
	.4byte	0x100
	.byte	0x8
	.byte	0
	.byte	0x4
	.4byte	0xf5
	.byte	0x9
	.4byte	.LASF18
	.byte	0x1
	.byte	0x3d
	.byte	0x18
	.4byte	0x100
	.byte	0xa
	.4byte	.LASF19
	.byte	0x1
	.byte	0x3e
	.byte	0x14
	.4byte	0xcc
	.byte	0x5
	.byte	0x3
	.4byte	xISRStackTop
	.byte	0xa
	.4byte	.LASF20
	.byte	0x1
	.byte	0x4b
	.byte	0xa
	.4byte	0xa3
	.byte	0x5
	.byte	0x3
	.4byte	ullNextTime
	.byte	0xa
	.4byte	.LASF21
	.byte	0x1
	.byte	0x4c
	.byte	0x11
	.4byte	0x147
	.byte	0x5
	.byte	0x3
	.4byte	pullNextTime
	.byte	0xb
	.byte	0x4
	.4byte	0xaf
	.byte	0xa
	.4byte	.LASF22
	.byte	0x1
	.byte	0x4d
	.byte	0xe
	.4byte	0x38
	.byte	0x5
	.byte	0x3
	.4byte	uxTimerIncrementsForOneTick
	.byte	0xa
	.4byte	.LASF23
	.byte	0x1
	.byte	0x4e
	.byte	0x1b
	.4byte	0x177
	.byte	0x5
	.byte	0x3
	.4byte	pullMachineTimerCompareRegister
	.byte	0xb
	.byte	0x4
	.4byte	0xb4
	.byte	0x4
	.4byte	0x171
	.byte	0xa
	.4byte	.LASF24
	.byte	0x1
	.byte	0x4f
	.byte	0xc
	.4byte	0xd1
	.byte	0x5
	.byte	0x3
	.4byte	TrapNetCounter
	.byte	0xa
	.4byte	.LASF25
	.byte	0x1
	.byte	0x50
	.byte	0x13
	.4byte	0x1a0
	.byte	0x5
	.byte	0x3
	.4byte	pTrapNetCounter
	.byte	0xb
	.byte	0x4
	.4byte	0xdd
	.byte	0xc
	.4byte	.LASF36
	.byte	0x1
	.byte	0xc0
	.byte	0x6
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x1
	.byte	0x9c
	.byte	0xd
	.4byte	.LASF37
	.byte	0x1
	.byte	0x87
	.byte	0xc
	.4byte	0xd1
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x1
	.byte	0x9c
	.4byte	0x215
	.byte	0xe
	.4byte	.LASF32
	.byte	0x1
	.byte	0x89
	.byte	0xd
	.byte	0xf
	.4byte	.Ldebug_ranges0+0
	.4byte	0x202
	.byte	0x10
	.4byte	.LASF26
	.byte	0x1
	.byte	0x8d
	.byte	0x15
	.4byte	0x97
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x11
	.4byte	.LVL7
	.4byte	0x277
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.byte	0x13
	.4byte	.LVL5
	.4byte	0x215
	.byte	0x13
	.4byte	.LVL6
	.4byte	0x283
	.byte	0
	.byte	0x14
	.4byte	.LASF38
	.byte	0x1
	.byte	0x6e
	.byte	0x7
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.byte	0x1
	.byte	0x9c
	.4byte	0x26c
	.byte	0x15
	.4byte	.LASF27
	.byte	0x1
	.byte	0x70
	.byte	0xb
	.4byte	0x86
	.4byte	.LLST0
	.byte	0x15
	.4byte	.LASF28
	.byte	0x1
	.byte	0x70
	.byte	0x1e
	.4byte	0x86
	.4byte	.LLST1
	.byte	0x16
	.4byte	.LASF29
	.byte	0x1
	.byte	0x71
	.byte	0x1c
	.4byte	0x272
	.4byte	0x200bffc
	.byte	0x16
	.4byte	.LASF30
	.byte	0x1
	.byte	0x72
	.byte	0x1c
	.4byte	0x272
	.4byte	0x200bff8
	.byte	0
	.byte	0xb
	.byte	0x4
	.4byte	0x97
	.byte	0x4
	.4byte	0x26c
	.byte	0x17
	.4byte	.LASF31
	.4byte	.LASF31
	.byte	0x4
	.byte	0x55
	.byte	0xd
	.byte	0x17
	.4byte	.LASF32
	.4byte	.LASF32
	.byte	0x1
	.byte	0x89
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
	.byte	0x8
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
	.byte	0x26
	.byte	0
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
	.byte	0xe
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
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0x21
	.byte	0
	.byte	0
	.byte	0
	.byte	0x9
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
	.byte	0xa
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
	.byte	0xb
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xc
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
	.byte	0xf
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
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
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x12
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x13
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
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
	.byte	0x16
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
	.byte	0x6
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
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL2
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL4
	.4byte	.LFE0
	.2byte	0x5
	.byte	0x7f
	.byte	0xe0,0xe3,0x7e
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x2c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB2
	.4byte	.LBE2
	.4byte	.LBB3
	.4byte	.LBE3
	.4byte	.LBB4
	.4byte	.LBE4
	.4byte	0
	.4byte	0
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF26:
	.string	"mtvec"
.LASF12:
	.string	"uint64_t"
.LASF2:
	.string	"short int"
.LASF3:
	.string	"size_t"
.LASF18:
	.string	"__freertos_irq_stack_top"
.LASF21:
	.string	"pullNextTime"
.LASF24:
	.string	"TrapNetCounter"
.LASF7:
	.string	"uint8_t"
.LASF6:
	.string	"long long int"
.LASF16:
	.string	"TickType_t"
.LASF5:
	.string	"long int"
.LASF23:
	.string	"pullMachineTimerCompareRegister"
.LASF35:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/freertos_riscv_ram"
.LASF25:
	.string	"pTrapNetCounter"
.LASF31:
	.string	"vEnvironmentCall"
.LASF8:
	.string	"unsigned char"
.LASF30:
	.string	"pulTimeLow"
.LASF1:
	.string	"signed char"
.LASF13:
	.string	"long long unsigned int"
.LASF10:
	.string	"uint32_t"
.LASF0:
	.string	"unsigned int"
.LASF37:
	.string	"xPortStartScheduler"
.LASF15:
	.string	"BaseType_t"
.LASF32:
	.string	"xPortStartFirstTask"
.LASF38:
	.string	"vPortSetupTimerInterrupt"
.LASF9:
	.string	"short unsigned int"
.LASF36:
	.string	"vPortEndScheduler"
.LASF17:
	.string	"char"
.LASF33:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -O2 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
.LASF4:
	.string	"int32_t"
.LASF20:
	.string	"ullNextTime"
.LASF19:
	.string	"xISRStackTop"
.LASF11:
	.string	"long unsigned int"
.LASF14:
	.string	"StackType_t"
.LASF22:
	.string	"uxTimerIncrementsForOneTick"
.LASF27:
	.string	"ulCurrentTimeHigh"
.LASF34:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/portable/GCC/RISC-V/port.c"
.LASF28:
	.string	"ulCurrentTimeLow"
.LASF29:
	.string	"pulTimeHigh"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
