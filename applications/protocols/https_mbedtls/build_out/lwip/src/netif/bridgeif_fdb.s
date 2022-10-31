	.file	"bridgeif_fdb.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.bridgeif_age_tmr,"ax",@progbits
	.align	1
	.type	bridgeif_age_tmr, @function
bridgeif_age_tmr:
.LFB8:
	.file 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/netif/bridgeif_fdb.c"
	.loc 1 181 1
	.cfi_startproc
.LVL0:
	.loc 1 182 3
	.loc 1 181 1 is_stmt 0
	mv	a2,a0
.LVL1:
	.loc 1 184 3 is_stmt 1
	.loc 1 184 8
	.loc 1 184 7
	.loc 1 184 17
	.loc 1 186 3
.LBB5:
.LBB6:
	.loc 1 155 3
	.loc 1 156 3
	.loc 1 157 3
	.loc 1 159 3
	.loc 1 160 3
	.loc 1 162 3
	.loc 1 162 10 is_stmt 0
	li	a3,0
.LVL2:
.L2:
	.loc 1 162 15 is_stmt 1
	.loc 1 162 22 is_stmt 0
	lhu	a5,0(a2)
	.loc 1 162 3
	blt	a3,a5,.L6
	.loc 1 175 3 is_stmt 1
.LVL3:
.LBE6:
.LBE5:
	.loc 1 187 3
	lui	a1,%hi(bridgeif_age_tmr)
	addi	a1,a1,%lo(bridgeif_age_tmr)
	li	a0,1000
.LVL4:
	tail	sys_timeout
.LVL5:
.L6:
.LBB9:
.LBB8:
.LBB7:
	.loc 1 163 5
	.loc 1 163 28 is_stmt 0
	lw	a4,4(a2)
	slli	a5,a3,4
	add	a5,a4,a5
.LVL6:
	.loc 1 164 5 is_stmt 1
	.loc 1 164 8 is_stmt 0
	lbu	a4,0(a5)
	beq	a4,zero,.L4
	.loc 1 164 21
	lw	a4,4(a5)
	.loc 1 164 17
	beq	a4,zero,.L4
	.loc 1 165 7 is_stmt 1
	.loc 1 167 7
	.loc 1 168 9
	.loc 1 168 13 is_stmt 0
	addi	a4,a4,-1
	.loc 1 168 12
	sw	a4,4(a5)
	bne	a4,zero,.L4
	.loc 1 169 11 is_stmt 1
	.loc 1 169 19 is_stmt 0
	sb	zero,0(a5)
.L4:
	.loc 1 172 7 is_stmt 1
.LBE7:
	.loc 1 162 41
	.loc 1 162 42 is_stmt 0
	addi	a3,a3,1
.LVL7:
	j	.L2
.LBE8:
.LBE9:
	.cfi_endproc
.LFE8:
	.size	bridgeif_age_tmr, .-bridgeif_age_tmr
	.section	.text.bridgeif_fdb_update_src,"ax",@progbits
	.align	1
	.globl	bridgeif_fdb_update_src
	.type	bridgeif_fdb_update_src, @function
bridgeif_fdb_update_src:
.LFB5:
	.loc 1 77 1 is_stmt 1
	.cfi_startproc
.LVL8:
	.loc 1 78 3
	.loc 1 79 3
	.loc 1 77 1 is_stmt 0
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s1,36(sp)
	sw	s2,32(sp)
	sw	s3,28(sp)
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.loc 1 77 1
	mv	s1,a0
.LVL9:
	.loc 1 80 3 is_stmt 1
	.loc 1 81 3
	.loc 1 82 3
	.loc 1 77 1 is_stmt 0
	mv	s2,a2
	.loc 1 82 10
	li	s3,0
.LVL10:
.L11:
	.loc 1 82 15 is_stmt 1 discriminator 1
	.loc 1 82 22 is_stmt 0 discriminator 1
	lhu	a3,0(s1)
	.loc 1 82 3 discriminator 1
	bgt	a3,s3,.L14
	.loc 1 99 10
	li	a4,0
.LVL11:
.L15:
	.loc 1 99 15 is_stmt 1 discriminator 1
	.loc 1 99 3 is_stmt 0 discriminator 1
	beq	a3,a4,.L10
.LBB10:
	.loc 1 100 5 is_stmt 1
	.loc 1 100 28 is_stmt 0
	lw	a5,4(s1)
	slli	s0,a4,4
	add	s0,a5,s0
.LVL12:
	.loc 1 101 5 is_stmt 1
	.loc 1 101 8 is_stmt 0
	lbu	a5,0(s0)
	beq	a5,zero,.L16
	.loc 1 101 18 discriminator 1
	lw	a5,4(s0)
	bne	a5,zero,.L17
.L16:
	.loc 1 102 7 is_stmt 1
	.loc 1 104 7
	.loc 1 107 55
	.loc 1 108 9
	li	a2,6
	addi	a0,s0,8
	call	memcpy
.LVL13:
	.loc 1 109 9
	.loc 1 109 15 is_stmt 0
	li	a5,300
	sw	a5,4(s0)
	.loc 1 110 9 is_stmt 1
	.loc 1 111 17 is_stmt 0
	li	a5,1
	.loc 1 110 17
	sb	s2,1(s0)
	.loc 1 111 9 is_stmt 1
	.loc 1 111 17 is_stmt 0
	sb	a5,0(s0)
	.loc 1 112 9 is_stmt 1
	.loc 1 113 9
	.loc 1 114 9
	j	.L10
.LVL14:
.L14:
.LBE10:
.LBB11:
	.loc 1 83 5
	.loc 1 83 28 is_stmt 0
	lw	a5,4(s1)
	slli	s0,s3,4
	add	s0,a5,s0
.LVL15:
	.loc 1 84 5 is_stmt 1
	.loc 1 84 8 is_stmt 0
	lbu	a5,0(s0)
	beq	a5,zero,.L12
	.loc 1 84 17 discriminator 1
	lw	a5,4(s0)
	beq	a5,zero,.L12
	.loc 1 85 7 is_stmt 1
	.loc 1 85 12 is_stmt 0
	li	a2,6
	addi	a0,s0,8
	sw	a1,12(sp)
	call	memcmp
.LVL16:
	.loc 1 85 10
	lw	a1,12(sp)
	bne	a0,zero,.L12
	.loc 1 88 55 is_stmt 1
	.loc 1 89 9
	.loc 1 90 9
	.loc 1 90 15 is_stmt 0
	li	a5,300
	sw	a5,4(s0)
	.loc 1 91 9 is_stmt 1
	.loc 1 91 17 is_stmt 0
	sb	s2,1(s0)
	.loc 1 92 9 is_stmt 1
	.loc 1 93 9
	.loc 1 94 9
.LVL17:
.L10:
.LBE11:
	.loc 1 121 1 is_stmt 0
	lw	ra,44(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	lw	s1,36(sp)
	.cfi_restore 9
.LVL18:
	lw	s2,32(sp)
	.cfi_restore 18
	lw	s3,28(sp)
	.cfi_restore 19
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
.LVL19:
.L12:
	.cfi_restore_state
	.loc 1 82 41 is_stmt 1
	.loc 1 82 42 is_stmt 0
	addi	s3,s3,1
.LVL20:
	j	.L11
.LVL21:
.L17:
.LBB12:
	.loc 1 116 7 is_stmt 1 discriminator 2
.LBE12:
	.loc 1 99 41 discriminator 2
	.loc 1 99 42 is_stmt 0 discriminator 2
	addi	a4,a4,1
.LVL22:
	j	.L15
	.cfi_endproc
.LFE5:
	.size	bridgeif_fdb_update_src, .-bridgeif_fdb_update_src
	.section	.text.bridgeif_fdb_get_dst_ports,"ax",@progbits
	.align	1
	.globl	bridgeif_fdb_get_dst_ports
	.type	bridgeif_fdb_get_dst_ports, @function
bridgeif_fdb_get_dst_ports:
.LFB6:
	.loc 1 129 1 is_stmt 1
	.cfi_startproc
.LVL23:
	.loc 1 130 3
	.loc 1 131 3
	.loc 1 129 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s1,20(sp)
	sw	s2,16(sp)
	sw	s3,12(sp)
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.loc 1 129 1
	mv	s2,a0
.LVL24:
	.loc 1 132 3 is_stmt 1
	.loc 1 133 3
	.loc 1 134 3
	.loc 1 129 1 is_stmt 0
	mv	s3,a1
	.loc 1 134 10
	li	s1,0
.LVL25:
.L30:
	.loc 1 134 15 is_stmt 1 discriminator 1
	.loc 1 134 22 is_stmt 0 discriminator 1
	lhu	a5,0(s2)
	.loc 1 134 3 discriminator 1
	bgt	a5,s1,.L33
	.loc 1 145 10
	li	a0,255
	j	.L32
.L33:
.LBB13:
	.loc 1 135 5 is_stmt 1
	.loc 1 135 28 is_stmt 0
	lw	a5,4(s2)
	slli	s0,s1,4
	add	s0,a5,s0
.LVL26:
	.loc 1 136 5 is_stmt 1
	.loc 1 136 8 is_stmt 0
	lbu	a5,0(s0)
	beq	a5,zero,.L31
	.loc 1 136 17 discriminator 1
	lw	a5,4(s0)
	beq	a5,zero,.L31
	.loc 1 137 7 is_stmt 1
	.loc 1 137 12 is_stmt 0
	li	a2,6
	mv	a1,s3
	addi	a0,s0,8
	call	memcmp
.LVL27:
	.loc 1 137 10
	bne	a0,zero,.L31
.LBB14:
	.loc 1 138 9 is_stmt 1
	.loc 1 138 63 is_stmt 0
	lbu	a5,1(s0)
	.loc 1 138 59
	li	a0,1
	sll	a0,a0,a5
	.loc 1 138 29
	andi	a0,a0,0xff
.LVL28:
	.loc 1 139 9 is_stmt 1
	.loc 1 140 9
.L32:
.LBE14:
.LBE13:
	.loc 1 146 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	lw	s1,20(sp)
	.cfi_restore 9
.LVL29:
	lw	s2,16(sp)
	.cfi_restore 18
.LVL30:
	lw	s3,12(sp)
	.cfi_restore 19
.LVL31:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL32:
.L31:
	.cfi_restore_state
	.loc 1 134 41 is_stmt 1
	.loc 1 134 42 is_stmt 0
	addi	s1,s1,1
.LVL33:
	j	.L30
	.cfi_endproc
.LFE6:
	.size	bridgeif_fdb_get_dst_ports, .-bridgeif_fdb_get_dst_ports
	.section	.text.bridgeif_fdb_init,"ax",@progbits
	.align	1
	.globl	bridgeif_fdb_init
	.type	bridgeif_fdb_init, @function
bridgeif_fdb_init:
.LFB9:
	.loc 1 196 1 is_stmt 1
	.cfi_startproc
.LVL34:
	.loc 1 197 3
	.loc 1 198 3
	.loc 1 199 3
	.loc 1 200 3
	.loc 1 200 8
	.loc 1 200 47
	.loc 1 200 57
	.loc 1 201 3
	.loc 1 202 3
	.loc 1 198 71 is_stmt 0
	slli	a1,a0,4
	.loc 1 198 10
	addi	a1,a1,8
	.loc 1 196 1
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 202 28
	slli	a1,a1,16
	.loc 1 196 1
	sw	s1,4(sp)
	.loc 1 202 28
	srli	a1,a1,16
	.cfi_offset 9, -12
	.loc 1 196 1
	mv	s1,a0
	.loc 1 202 28
	li	a0,1
.LVL35:
	.loc 1 196 1
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	.loc 1 202 28
	call	mem_calloc
.LVL36:
	mv	s0,a0
.LVL37:
	.loc 1 203 3 is_stmt 1
	.loc 1 203 6 is_stmt 0
	beq	a0,zero,.L41
	.loc 1 206 3 is_stmt 1
	.loc 1 207 44 is_stmt 0
	addi	a5,a0,8
	.loc 1 209 3
	lui	a1,%hi(bridgeif_age_tmr)
	.loc 1 206 24
	sh	s1,0(a0)
	.loc 1 207 3 is_stmt 1
	.loc 1 207 12 is_stmt 0
	sw	a5,4(a0)
	.loc 1 209 3 is_stmt 1
	mv	a2,a0
	addi	a1,a1,%lo(bridgeif_age_tmr)
	li	a0,1000
	call	sys_timeout
.LVL38:
	.loc 1 211 3
.L41:
	.loc 1 212 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	mv	a0,s0
	lw	s0,8(sp)
	.cfi_restore 8
.LVL39:
	lw	s1,4(sp)
	.cfi_restore 9
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE9:
	.size	bridgeif_fdb_init, .-bridgeif_fdb_init
	.text
.Letext0:
	.file 2 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 3 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h"
	.file 4 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 5 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/arch.h"
	.file 6 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/netif/bridgeif.h"
	.file 7 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/mem.h"
	.file 8 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/prot/ethernet.h"
	.file 9 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/timeouts.h"
	.file 10 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x4d6
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF43
	.byte	0xc
	.4byte	.LASF44
	.4byte	.LASF45
	.4byte	.Ldebug_ranges0+0x30
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.byte	0x4
	.4byte	.LASF3
	.byte	0x2
	.byte	0x2b
	.byte	0x17
	.4byte	0x3f
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.byte	0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.byte	0x4
	.4byte	.LASF4
	.byte	0x2
	.byte	0x39
	.byte	0x1c
	.4byte	0x59
	.byte	0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.byte	0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.byte	0x4
	.4byte	.LASF7
	.byte	0x2
	.byte	0x4f
	.byte	0x1b
	.4byte	0x73
	.byte	0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.byte	0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF9
	.byte	0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.byte	0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.byte	0x4
	.4byte	.LASF12
	.byte	0x3
	.byte	0xd1
	.byte	0x16
	.4byte	0x88
	.byte	0x5
	.byte	0x4
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.byte	0x4
	.4byte	.LASF14
	.byte	0x4
	.byte	0x18
	.byte	0x13
	.4byte	0x33
	.byte	0x4
	.4byte	.LASF15
	.byte	0x4
	.byte	0x24
	.byte	0x14
	.4byte	0x4d
	.byte	0x4
	.4byte	.LASF16
	.byte	0x4
	.byte	0x30
	.byte	0x14
	.4byte	0x67
	.byte	0x4
	.4byte	.LASF17
	.byte	0x5
	.byte	0x7d
	.byte	0x11
	.4byte	0xa4
	.byte	0x4
	.4byte	.LASF18
	.byte	0x5
	.byte	0x7f
	.byte	0x12
	.4byte	0xb0
	.byte	0x4
	.4byte	.LASF19
	.byte	0x5
	.byte	0x81
	.byte	0x12
	.4byte	0xbc
	.byte	0x6
	.4byte	.LASF22
	.byte	0x6
	.byte	0x8
	.byte	0x3c
	.byte	0x8
	.4byte	0x107
	.byte	0x7
	.4byte	.LASF24
	.byte	0x8
	.byte	0x3d
	.byte	0x8
	.4byte	0x107
	.byte	0
	.byte	0
	.byte	0x8
	.4byte	0xc8
	.4byte	0x117
	.byte	0x9
	.4byte	0x88
	.byte	0x5
	.byte	0
	.byte	0x4
	.4byte	.LASF20
	.byte	0x6
	.byte	0x36
	.byte	0xe
	.4byte	0xc8
	.byte	0x4
	.4byte	.LASF21
	.byte	0x7
	.byte	0x43
	.byte	0xf
	.4byte	0xd4
	.byte	0x6
	.4byte	.LASF23
	.byte	0x10
	.byte	0x1
	.byte	0x36
	.byte	0x10
	.4byte	0x170
	.byte	0x7
	.4byte	.LASF25
	.byte	0x1
	.byte	0x37
	.byte	0x8
	.4byte	0xc8
	.byte	0
	.byte	0x7
	.4byte	.LASF26
	.byte	0x1
	.byte	0x38
	.byte	0x8
	.4byte	0xc8
	.byte	0x1
	.byte	0xa
	.string	"ts"
	.byte	0x1
	.byte	0x39
	.byte	0x9
	.4byte	0xe0
	.byte	0x4
	.byte	0x7
	.4byte	.LASF24
	.byte	0x1
	.byte	0x3a
	.byte	0x13
	.4byte	0xec
	.byte	0x8
	.byte	0
	.byte	0x4
	.4byte	.LASF27
	.byte	0x1
	.byte	0x3b
	.byte	0x3
	.4byte	0x12f
	.byte	0x6
	.4byte	.LASF28
	.byte	0x8
	.byte	0x1
	.byte	0x3d
	.byte	0x10
	.4byte	0x1a4
	.byte	0x7
	.4byte	.LASF29
	.byte	0x1
	.byte	0x3e
	.byte	0x9
	.4byte	0xd4
	.byte	0
	.byte	0xa
	.string	"fdb"
	.byte	0x1
	.byte	0x3f
	.byte	0x1a
	.4byte	0x1a4
	.byte	0x4
	.byte	0
	.byte	0xb
	.byte	0x4
	.4byte	0x170
	.byte	0x4
	.4byte	.LASF30
	.byte	0x1
	.byte	0x40
	.byte	0x3
	.4byte	0x17c
	.byte	0xc
	.4byte	.LASF33
	.byte	0x1
	.byte	0xc3
	.byte	0x1
	.4byte	0x9b
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0x252
	.byte	0xd
	.4byte	.LASF29
	.byte	0x1
	.byte	0xc3
	.byte	0x19
	.4byte	0xd4
	.4byte	.LLST17
	.byte	0xe
	.string	"fdb"
	.byte	0x1
	.byte	0xc5
	.byte	0x14
	.4byte	0x252
	.4byte	.LLST18
	.byte	0xf
	.4byte	.LASF31
	.byte	0x1
	.byte	0xc6
	.byte	0xa
	.4byte	0x8f
	.4byte	.LLST19
	.byte	0xf
	.4byte	.LASF32
	.byte	0x1
	.byte	0xc7
	.byte	0xe
	.4byte	0x123
	.4byte	.LLST20
	.byte	0x10
	.4byte	.LVL36
	.4byte	0x4a9
	.4byte	0x231
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0x11
	.byte	0x1
	.byte	0x5b
	.byte	0xa
	.byte	0x79
	.byte	0
	.byte	0x34
	.byte	0x24
	.byte	0x23
	.byte	0x8
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x25
	.byte	0
	.byte	0x12
	.4byte	.LVL38
	.4byte	0x4b5
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xa
	.2byte	0x3e8
	.byte	0x11
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	bridgeif_age_tmr
	.byte	0x11
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0
	.byte	0xb
	.byte	0x4
	.4byte	0x1aa
	.byte	0x13
	.4byte	.LASF46
	.byte	0x1
	.byte	0xb4
	.byte	0x1
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0x2fb
	.byte	0x14
	.string	"arg"
	.byte	0x1
	.byte	0xb4
	.byte	0x18
	.4byte	0x9b
	.4byte	.LLST0
	.byte	0xe
	.string	"fdb"
	.byte	0x1
	.byte	0xb6
	.byte	0x14
	.4byte	0x252
	.4byte	.LLST1
	.byte	0x15
	.4byte	0x2fb
	.4byte	.LBB5
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0xba
	.byte	0x3
	.4byte	0x2d9
	.byte	0x16
	.4byte	0x308
	.4byte	.LLST2
	.byte	0x17
	.4byte	.Ldebug_ranges0+0
	.byte	0x18
	.4byte	0x314
	.4byte	.LLST3
	.byte	0x18
	.4byte	0x31e
	.4byte	.LLST4
	.byte	0x19
	.4byte	0x32a
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.byte	0x1a
	.4byte	0x32b
	.byte	0x1
	.byte	0x5f
	.byte	0
	.byte	0
	.byte	0
	.byte	0x1b
	.4byte	.LVL5
	.4byte	0x4b5
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xa
	.2byte	0x3e8
	.byte	0x11
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	bridgeif_age_tmr
	.byte	0x11
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0
	.byte	0x1c
	.4byte	.LASF47
	.byte	0x1
	.byte	0x99
	.byte	0x1
	.byte	0x1
	.4byte	0x337
	.byte	0x1d
	.4byte	.LASF35
	.byte	0x1
	.byte	0x99
	.byte	0x23
	.4byte	0x9b
	.byte	0x1e
	.string	"i"
	.byte	0x1
	.byte	0x9b
	.byte	0x7
	.4byte	0x25
	.byte	0x1e
	.string	"fdb"
	.byte	0x1
	.byte	0x9c
	.byte	0x14
	.4byte	0x252
	.byte	0x1f
	.byte	0x1e
	.string	"e"
	.byte	0x1
	.byte	0xa3
	.byte	0x1c
	.4byte	0x1a4
	.byte	0
	.byte	0
	.byte	0xc
	.4byte	.LASF34
	.byte	0x1
	.byte	0x80
	.byte	0x1
	.4byte	0x117
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0x3dd
	.byte	0xd
	.4byte	.LASF35
	.byte	0x1
	.byte	0x80
	.byte	0x22
	.4byte	0x9b
	.4byte	.LLST12
	.byte	0xd
	.4byte	.LASF36
	.byte	0x1
	.byte	0x80
	.byte	0x3c
	.4byte	0x3dd
	.4byte	.LLST13
	.byte	0xe
	.string	"i"
	.byte	0x1
	.byte	0x82
	.byte	0x7
	.4byte	0x25
	.4byte	.LLST14
	.byte	0xe
	.string	"fdb"
	.byte	0x1
	.byte	0x83
	.byte	0x14
	.4byte	0x252
	.4byte	.LLST15
	.byte	0x20
	.4byte	.LBB13
	.4byte	.LBE13-.LBB13
	.byte	0xe
	.string	"e"
	.byte	0x1
	.byte	0x87
	.byte	0x1c
	.4byte	0x1a4
	.4byte	.LLST16
	.byte	0x21
	.4byte	.LBB14
	.4byte	.LBE14-.LBB14
	.4byte	0x3c0
	.byte	0x1e
	.string	"ret"
	.byte	0x1
	.byte	0x8a
	.byte	0x1d
	.4byte	0x117
	.byte	0
	.byte	0x12
	.4byte	.LVL27
	.4byte	0x4c1
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x8
	.byte	0x11
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x36
	.byte	0
	.byte	0
	.byte	0
	.byte	0xb
	.byte	0x4
	.4byte	0xec
	.byte	0x22
	.4byte	.LASF48
	.byte	0x1
	.byte	0x4c
	.byte	0x1
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0x4a9
	.byte	0xd
	.4byte	.LASF35
	.byte	0x1
	.byte	0x4c
	.byte	0x1f
	.4byte	0x9b
	.4byte	.LLST5
	.byte	0xd
	.4byte	.LASF37
	.byte	0x1
	.byte	0x4c
	.byte	0x39
	.4byte	0x3dd
	.4byte	.LLST6
	.byte	0xd
	.4byte	.LASF38
	.byte	0x1
	.byte	0x4c
	.byte	0x48
	.4byte	0xc8
	.4byte	.LLST7
	.byte	0xe
	.string	"i"
	.byte	0x1
	.byte	0x4e
	.byte	0x7
	.4byte	0x25
	.4byte	.LLST8
	.byte	0xe
	.string	"fdb"
	.byte	0x1
	.byte	0x4f
	.byte	0x14
	.4byte	0x252
	.4byte	.LLST9
	.byte	0x21
	.4byte	.LBB11
	.4byte	.LBE11-.LBB11
	.4byte	0x47f
	.byte	0xe
	.string	"e"
	.byte	0x1
	.byte	0x53
	.byte	0x1c
	.4byte	0x1a4
	.4byte	.LLST11
	.byte	0x12
	.4byte	.LVL16
	.4byte	0x4c1
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x8
	.byte	0x11
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0x5c
	.byte	0x6
	.byte	0x11
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x36
	.byte	0
	.byte	0
	.byte	0x17
	.4byte	.Ldebug_ranges0+0x18
	.byte	0xe
	.string	"e"
	.byte	0x1
	.byte	0x64
	.byte	0x1c
	.4byte	0x1a4
	.4byte	.LLST10
	.byte	0x12
	.4byte	.LVL13
	.4byte	0x4cd
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x8
	.byte	0x11
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x36
	.byte	0
	.byte	0
	.byte	0
	.byte	0x23
	.4byte	.LASF39
	.4byte	.LASF39
	.byte	0x7
	.byte	0x4b
	.byte	0x7
	.byte	0x23
	.4byte	.LASF40
	.4byte	.LASF40
	.byte	0x9
	.byte	0x6d
	.byte	0x6
	.byte	0x23
	.4byte	.LASF41
	.4byte	.LASF41
	.byte	0xa
	.byte	0x1e
	.byte	0x5
	.byte	0x23
	.4byte	.LASF42
	.4byte	.LASF42
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
	.byte	0xb
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
	.byte	0xb
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
	.byte	0xd
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
	.byte	0xe
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
	.byte	0xf
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
	.byte	0x10
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
	.byte	0x11
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
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
	.byte	0x15
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
	.byte	0x16
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
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
	.byte	0xb
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0x1a
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x1b
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
	.byte	0x1f
	.byte	0xb
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x20
	.byte	0xb
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0x21
	.byte	0xb
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x22
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
	.byte	0x23
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
.LLST17:
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL35
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL37
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL39
	.4byte	.LFE9
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0xb
	.byte	0x7a
	.byte	0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x34
	.byte	0x24
	.byte	0x23
	.byte	0x8
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LFE9
	.2byte	0xc
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x34
	.byte	0x24
	.byte	0x23
	.byte	0x8
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0xb
	.byte	0x7a
	.byte	0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x34
	.byte	0x24
	.byte	0x23
	.byte	0x8
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LFE9
	.2byte	0xc
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x34
	.byte	0x24
	.byte	0x23
	.byte	0x8
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL4
	.4byte	.LVL5-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL5-1
	.4byte	.LVL5
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL4
	.4byte	.LVL5-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL5-1
	.4byte	.LVL5
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL5
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL5
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL1
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL4
	.4byte	.LVL5-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL5-1
	.4byte	.LVL5
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL23
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL25
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL30
	.4byte	.LVL32
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL32
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL23
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL25
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL32
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL32
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL25
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL30
	.4byte	.LVL32
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL32
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL26
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL32
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL8
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL10
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL8
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL10
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL8
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL10
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL11
	.4byte	.LVL13-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL14
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL19
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL21
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL10
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL15
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL19
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL12
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL21
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x34
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB5
	.4byte	.LBE5
	.4byte	.LBB9
	.4byte	.LBE9
	.4byte	0
	.4byte	0
	.4byte	.LBB10
	.4byte	.LBE10
	.4byte	.LBB12
	.4byte	.LBE12
	.4byte	0
	.4byte	0
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF34:
	.string	"bridgeif_fdb_get_dst_ports"
.LASF12:
	.string	"size_t"
.LASF3:
	.string	"__uint8_t"
.LASF41:
	.string	"memcmp"
.LASF25:
	.string	"used"
.LASF21:
	.string	"mem_size_t"
.LASF40:
	.string	"sys_timeout"
.LASF14:
	.string	"uint8_t"
.LASF48:
	.string	"bridgeif_fdb_update_src"
.LASF33:
	.string	"bridgeif_fdb_init"
.LASF10:
	.string	"long long unsigned int"
.LASF1:
	.string	"unsigned char"
.LASF28:
	.string	"bridgeif_dfdb_s"
.LASF30:
	.string	"bridgeif_dfdb_t"
.LASF8:
	.string	"long unsigned int"
.LASF24:
	.string	"addr"
.LASF47:
	.string	"bridgeif_fdb_age_one_second"
.LASF32:
	.string	"alloc_len"
.LASF4:
	.string	"__uint16_t"
.LASF18:
	.string	"u16_t"
.LASF36:
	.string	"dst_addr"
.LASF7:
	.string	"__uint32_t"
.LASF19:
	.string	"u32_t"
.LASF37:
	.string	"src_addr"
.LASF46:
	.string	"bridgeif_age_tmr"
.LASF11:
	.string	"unsigned int"
.LASF45:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/lwip"
.LASF23:
	.string	"bridgeif_dfdb_entry_s"
.LASF27:
	.string	"bridgeif_dfdb_entry_t"
.LASF44:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/netif/bridgeif_fdb.c"
.LASF17:
	.string	"u8_t"
.LASF22:
	.string	"eth_addr"
.LASF38:
	.string	"port_idx"
.LASF29:
	.string	"max_fdb_entries"
.LASF20:
	.string	"bridgeif_portmask_t"
.LASF9:
	.string	"long long int"
.LASF43:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
.LASF13:
	.string	"char"
.LASF31:
	.string	"alloc_len_sizet"
.LASF26:
	.string	"port"
.LASF42:
	.string	"memcpy"
.LASF2:
	.string	"short int"
.LASF15:
	.string	"uint16_t"
.LASF16:
	.string	"uint32_t"
.LASF6:
	.string	"long int"
.LASF39:
	.string	"mem_calloc"
.LASF35:
	.string	"fdb_ptr"
.LASF0:
	.string	"signed char"
.LASF5:
	.string	"short unsigned int"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
