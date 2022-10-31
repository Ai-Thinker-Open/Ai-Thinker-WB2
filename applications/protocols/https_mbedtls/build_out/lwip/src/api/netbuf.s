	.file	"netbuf.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.netbuf_new,"ax",@progbits
	.align	1
	.globl	netbuf_new
	.type	netbuf_new, @function
netbuf_new:
.LFB5:
	.file 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/api/netbuf.c"
	.loc 1 64 1
	.cfi_startproc
	.loc 1 65 3
	.loc 1 67 3
	.loc 1 64 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 67 26
	li	a0,6
	.loc 1 64 1
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	.loc 1 67 26
	call	memp_malloc
.LVL0:
	mv	s0,a0
.LVL1:
	.loc 1 68 3 is_stmt 1
	.loc 1 68 6 is_stmt 0
	beq	a0,zero,.L1
	.loc 1 69 5 is_stmt 1
	li	a2,20
	li	a1,0
	call	memset
.LVL2:
	.loc 1 71 3
.L1:
	.loc 1 72 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	mv	a0,s0
	lw	s0,8(sp)
	.cfi_restore 8
.LVL3:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE5:
	.size	netbuf_new, .-netbuf_new
	.section	.text.netbuf_delete,"ax",@progbits
	.align	1
	.globl	netbuf_delete
	.type	netbuf_delete, @function
netbuf_delete:
.LFB6:
	.loc 1 82 1 is_stmt 1
	.cfi_startproc
.LVL4:
	.loc 1 83 3
	.loc 1 83 6 is_stmt 0
	beq	a0,zero,.L7
	mv	a1,a0
	.loc 1 84 5 is_stmt 1
	.loc 1 84 12 is_stmt 0
	lw	a0,0(a0)
.LVL5:
	.loc 1 84 8
	beq	a0,zero,.L14
	.loc 1 82 1
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	.cfi_offset 1, -4
	sw	a1,12(sp)
	.loc 1 85 7 is_stmt 1
	call	pbuf_free
.LVL6:
	.loc 1 86 7
	.loc 1 86 25 is_stmt 0
	lw	a1,12(sp)
	.loc 1 88 5
	li	a0,6
	.loc 1 86 25
	sw	zero,4(a1)
	.loc 1 86 14
	sw	zero,0(a1)
	.loc 1 88 5 is_stmt 1
	.loc 1 90 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_restore 1
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
.LVL7:
.L17:
	.loc 1 88 5
	tail	memp_free
.LVL8:
.L7:
	ret
.LVL9:
.L14:
	.loc 1 88 5 is_stmt 1
	li	a0,6
	j	.L17
	.cfi_endproc
.LFE6:
	.size	netbuf_delete, .-netbuf_delete
	.section	.text.netbuf_alloc,"ax",@progbits
	.align	1
	.globl	netbuf_alloc
	.type	netbuf_alloc, @function
netbuf_alloc:
.LFB7:
	.loc 1 103 1
	.cfi_startproc
.LVL10:
	.loc 1 104 3
	.loc 1 104 8
	.loc 1 104 11 is_stmt 0
	bne	a0,zero,.L19
	.loc 1 104 2
	li	a0,0
.LVL11:
	.loc 1 118 1
	ret
.LVL12:
.L22:
	.cfi_def_cfa_offset 32
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.loc 1 104 2
	li	a0,0
.L18:
	.loc 1 118 1
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
.LVL13:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL14:
.L19:
	.loc 1 103 1 discriminator 2
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	ra,28(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	mv	s0,a0
	.loc 1 104 3 is_stmt 1 discriminator 2
	.loc 1 104 12 discriminator 2
	.loc 1 107 3 discriminator 2
	.loc 1 107 10 is_stmt 0 discriminator 2
	lw	a0,0(a0)
.LVL15:
	.loc 1 107 6 discriminator 2
	beq	a0,zero,.L21
	sw	a1,12(sp)
	.loc 1 108 5 is_stmt 1
	call	pbuf_free
.LVL16:
	lw	a1,12(sp)
.L21:
	.loc 1 110 3
	.loc 1 110 12 is_stmt 0
	li	a2,640
	li	a0,182
	call	pbuf_alloc
.LVL17:
	.loc 1 110 10
	sw	a0,0(s0)
	.loc 1 111 3 is_stmt 1
	.loc 1 111 6 is_stmt 0
	beq	a0,zero,.L22
	.loc 1 114 3 is_stmt 1
	.loc 1 114 8
	.loc 1 114 40
	.loc 1 114 50
	.loc 1 116 3
	.loc 1 116 12 is_stmt 0
	sw	a0,4(s0)
	.loc 1 117 3 is_stmt 1
	.loc 1 117 16 is_stmt 0
	lw	a0,4(a0)
	j	.L18
	.cfi_endproc
.LFE7:
	.size	netbuf_alloc, .-netbuf_alloc
	.section	.text.netbuf_free,"ax",@progbits
	.align	1
	.globl	netbuf_free
	.type	netbuf_free, @function
netbuf_free:
.LFB8:
	.loc 1 128 1 is_stmt 1
	.cfi_startproc
.LVL18:
	.loc 1 129 3
	.loc 1 129 8
	.loc 1 129 11 is_stmt 0
	beq	a0,zero,.L42
	.loc 1 128 1 discriminator 2
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	mv	s0,a0
	.loc 1 129 17 is_stmt 1 discriminator 2
	.loc 1 129 26 discriminator 2
	.loc 1 130 3 discriminator 2
	.loc 1 130 10 is_stmt 0 discriminator 2
	lw	a0,0(a0)
.LVL19:
	.loc 1 130 6 discriminator 2
	beq	a0,zero,.L34
	.loc 1 131 5 is_stmt 1
	call	pbuf_free
.LVL20:
.L34:
	.loc 1 133 3
	.loc 1 133 21 is_stmt 0
	sw	zero,4(s0)
	.loc 1 133 10
	sw	zero,0(s0)
	.loc 1 135 3 is_stmt 1
	.loc 1 135 14 is_stmt 0
	sb	zero,14(s0)
	.loc 1 136 3 is_stmt 1
	.loc 1 136 22 is_stmt 0
	sh	zero,16(s0)
	.loc 1 138 1
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
.LVL21:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL22:
.L42:
	ret
	.cfi_endproc
.LFE8:
	.size	netbuf_free, .-netbuf_free
	.section	.text.netbuf_ref,"ax",@progbits
	.align	1
	.globl	netbuf_ref
	.type	netbuf_ref, @function
netbuf_ref:
.LFB9:
	.loc 1 152 1 is_stmt 1
	.cfi_startproc
.LVL23:
	.loc 1 153 3
	.loc 1 153 8
	.loc 1 153 11 is_stmt 0
	beq	a0,zero,.L49
	.loc 1 152 1 discriminator 2
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
	mv	s0,a0
	.loc 1 154 10 discriminator 2
	lw	a0,0(a0)
.LVL24:
	mv	s2,a1
	mv	s1,a2
	.loc 1 153 25 is_stmt 1 discriminator 2
	.loc 1 153 34 discriminator 2
	.loc 1 154 3 discriminator 2
	.loc 1 154 6 is_stmt 0 discriminator 2
	beq	a0,zero,.L47
	.loc 1 155 5 is_stmt 1
	call	pbuf_free
.LVL25:
.L47:
	.loc 1 157 3
	.loc 1 157 12 is_stmt 0
	li	a2,65
	li	a1,0
	li	a0,182
	call	pbuf_alloc
.LVL26:
	.loc 1 157 10
	sw	a0,0(s0)
	.loc 1 158 3 is_stmt 1
	.loc 1 158 6 is_stmt 0
	bne	a0,zero,.L48
	.loc 1 159 5 is_stmt 1
	.loc 1 159 14 is_stmt 0
	sw	zero,4(s0)
	.loc 1 160 5 is_stmt 1
	.loc 1 160 12 is_stmt 0
	li	a0,-1
.L46:
	.loc 1 166 1
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
.LVL27:
	lw	s1,4(sp)
	.cfi_restore 9
	lw	s2,0(sp)
	.cfi_restore 18
.LVL28:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL29:
.L48:
	.cfi_restore_state
	.loc 1 162 3 is_stmt 1
	.loc 1 162 40 is_stmt 0
	sw	s2,4(a0)
	.loc 1 163 3 is_stmt 1
	.loc 1 163 20 is_stmt 0
	lw	a5,0(s0)
	.loc 1 165 10
	li	a0,0
	.loc 1 163 33
	sh	s1,8(a5)
	.loc 1 163 6
	lw	a5,0(s0)
	.loc 1 163 15
	sh	s1,10(a5)
	.loc 1 164 3 is_stmt 1
	.loc 1 164 12 is_stmt 0
	lw	a5,0(s0)
	sw	a5,4(s0)
	.loc 1 165 3 is_stmt 1
	.loc 1 165 10 is_stmt 0
	j	.L46
.LVL30:
.L49:
	.cfi_def_cfa_offset 0
	.cfi_restore 1
	.cfi_restore 8
	.cfi_restore 9
	.cfi_restore 18
	.loc 1 153 17
	li	a0,-16
.LVL31:
	.loc 1 166 1
	ret
	.cfi_endproc
.LFE9:
	.size	netbuf_ref, .-netbuf_ref
	.section	.text.netbuf_chain,"ax",@progbits
	.align	1
	.globl	netbuf_chain
	.type	netbuf_chain, @function
netbuf_chain:
.LFB10:
	.loc 1 177 1 is_stmt 1
	.cfi_startproc
.LVL32:
	.loc 1 178 3
	.loc 1 178 8
	.loc 1 178 11 is_stmt 0
	beq	a0,zero,.L66
	.loc 1 177 1 discriminator 2
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s1,4(sp)
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 9, -12
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	mv	s1,a1
	.loc 1 178 17 is_stmt 1 discriminator 2
	.loc 1 178 26 discriminator 2
	.loc 1 179 3 discriminator 2
	.loc 1 179 8 discriminator 2
	.loc 1 179 11 is_stmt 0 discriminator 2
	beq	a1,zero,.L57
	mv	s0,a0
	.loc 1 179 17 is_stmt 1 discriminator 2
	.loc 1 179 26 discriminator 2
	.loc 1 180 3 discriminator 2
	lw	a1,0(a1)
.LVL33:
	lw	a0,0(a0)
.LVL34:
	call	pbuf_cat
.LVL35:
	.loc 1 181 3 discriminator 2
	.loc 1 181 13 is_stmt 0 discriminator 2
	lw	a5,0(s0)
	.loc 1 182 3 discriminator 2
	mv	a1,s1
	li	a0,6
	.loc 1 181 13 discriminator 2
	sw	a5,4(s0)
	.loc 1 182 3 is_stmt 1 discriminator 2
	.loc 1 183 1 is_stmt 0 discriminator 2
	lw	s0,8(sp)
	.cfi_remember_state
	.cfi_restore 8
.LVL36:
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s1,4(sp)
	.cfi_restore 9
.LVL37:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 182 3 discriminator 2
	tail	memp_free
.LVL38:
.L57:
	.cfi_restore_state
	.loc 1 183 1
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	lw	s1,4(sp)
	.cfi_restore 9
.LVL39:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.L66:
	ret
	.cfi_endproc
.LFE10:
	.size	netbuf_chain, .-netbuf_chain
	.section	.text.netbuf_data,"ax",@progbits
	.align	1
	.globl	netbuf_data
	.type	netbuf_data, @function
netbuf_data:
.LFB11:
	.loc 1 197 1 is_stmt 1
	.cfi_startproc
.LVL40:
	.loc 1 198 3
	.loc 1 198 8
	.loc 1 197 1 is_stmt 0
	mv	a5,a0
	.loc 1 198 17
	li	a0,-16
.LVL41:
	.loc 1 198 11
	beq	a5,zero,.L70
	.loc 1 198 25 is_stmt 1 discriminator 2
	.loc 1 198 34 discriminator 2
	.loc 1 199 3 discriminator 2
	.loc 1 199 8 discriminator 2
	.loc 1 199 11 is_stmt 0 discriminator 2
	beq	a1,zero,.L70
	.loc 1 199 25 is_stmt 1 discriminator 2
	.loc 1 199 34 discriminator 2
	.loc 1 200 3 discriminator 2
	.loc 1 200 8 discriminator 2
	.loc 1 200 11 is_stmt 0 discriminator 2
	beq	a2,zero,.L70
	.loc 1 200 25 is_stmt 1 discriminator 2
	.loc 1 200 34 discriminator 2
	.loc 1 202 3 discriminator 2
	.loc 1 202 10 is_stmt 0 discriminator 2
	lw	a4,4(a5)
	.loc 1 203 12 discriminator 2
	li	a0,-2
	.loc 1 202 6 discriminator 2
	beq	a4,zero,.L70
	.loc 1 205 3 is_stmt 1
	.loc 1 205 22 is_stmt 0
	lw	a4,4(a4)
	.loc 1 207 10
	li	a0,0
	.loc 1 205 12
	sw	a4,0(a1)
	.loc 1 206 3 is_stmt 1
	.loc 1 206 18 is_stmt 0
	lw	a5,4(a5)
.LVL42:
	lhu	a5,10(a5)
	.loc 1 206 8
	sh	a5,0(a2)
	.loc 1 207 3 is_stmt 1
	.loc 1 207 10 is_stmt 0
	ret
.LVL43:
.L70:
	.loc 1 208 1
	ret
	.cfi_endproc
.LFE11:
	.size	netbuf_data, .-netbuf_data
	.section	.text.netbuf_next,"ax",@progbits
	.align	1
	.globl	netbuf_next
	.type	netbuf_next, @function
netbuf_next:
.LFB12:
	.loc 1 223 1 is_stmt 1
	.cfi_startproc
.LVL44:
	.loc 1 224 3
	.loc 1 224 8
	.loc 1 223 1 is_stmt 0
	mv	a5,a0
	.loc 1 224 11
	beq	a0,zero,.L77
	.loc 1 224 20 is_stmt 1 discriminator 2
	.loc 1 224 29 discriminator 2
	.loc 1 225 3 discriminator 2
	.loc 1 225 15 is_stmt 0 discriminator 2
	lw	a4,4(a0)
	.loc 1 224 17 discriminator 2
	li	a0,-1
.LVL45:
	.loc 1 225 15 discriminator 2
	lw	a4,0(a4)
	.loc 1 225 6 discriminator 2
	beq	a4,zero,.L76
	.loc 1 228 3 is_stmt 1
	.loc 1 228 12 is_stmt 0
	sw	a4,4(a5)
	.loc 1 229 3 is_stmt 1
	.loc 1 229 6 is_stmt 0
	lw	a0,0(a4)
	.loc 1 224 17
	seqz	a0,a0
	ret
.LVL46:
.L77:
	li	a0,-1
.LVL47:
.L76:
	.loc 1 233 1
	ret
	.cfi_endproc
.LFE12:
	.size	netbuf_next, .-netbuf_next
	.section	.text.netbuf_first,"ax",@progbits
	.align	1
	.globl	netbuf_first
	.type	netbuf_first, @function
netbuf_first:
.LFB13:
	.loc 1 245 1 is_stmt 1
	.cfi_startproc
.LVL48:
	.loc 1 246 3
	.loc 1 246 8
	.loc 1 246 11 is_stmt 0
	beq	a0,zero,.L79
	.loc 1 246 17 is_stmt 1 discriminator 2
	.loc 1 246 26 discriminator 2
	.loc 1 247 3 discriminator 2
	.loc 1 247 12 is_stmt 0 discriminator 2
	lw	a5,0(a0)
	sw	a5,4(a0)
.L79:
	.loc 1 248 1
	ret
	.cfi_endproc
.LFE13:
	.size	netbuf_first, .-netbuf_first
	.text
.Letext0:
	.file 2 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 3 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 4 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/arch.h"
	.file 5 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/err.h"
	.file 6 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/pbuf.h"
	.file 7 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/ip4_addr.h"
	.file 8 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/ip_addr.h"
	.file 9 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/netbuf.h"
	.file 10 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/memp.h"
	.file 11 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x655
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF99
	.byte	0xc
	.4byte	.LASF100
	.4byte	.LASF101
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x3
	.4byte	.LASF1
	.byte	0x2
	.byte	0x29
	.byte	0x15
	.4byte	0x38
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.byte	0x3
	.4byte	.LASF2
	.byte	0x2
	.byte	0x2b
	.byte	0x17
	.4byte	0x4b
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.byte	0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.byte	0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0x39
	.byte	0x1c
	.4byte	0x65
	.byte	0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF6
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.byte	0x3
	.4byte	.LASF8
	.byte	0x2
	.byte	0x4f
	.byte	0x1b
	.4byte	0x7f
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.byte	0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF10
	.byte	0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.byte	0x5
	.byte	0x4
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.byte	0x3
	.4byte	.LASF14
	.byte	0x3
	.byte	0x14
	.byte	0x12
	.4byte	0x2c
	.byte	0x3
	.4byte	.LASF15
	.byte	0x3
	.byte	0x18
	.byte	0x13
	.4byte	0x3f
	.byte	0x3
	.4byte	.LASF16
	.byte	0x3
	.byte	0x24
	.byte	0x14
	.4byte	0x59
	.byte	0x3
	.4byte	.LASF17
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x73
	.byte	0x6
	.byte	0x4
	.4byte	0xda
	.byte	0x7
	.byte	0x3
	.4byte	.LASF18
	.byte	0x4
	.byte	0x7d
	.byte	0x11
	.4byte	0xb0
	.byte	0x3
	.4byte	.LASF19
	.byte	0x4
	.byte	0x7e
	.byte	0x10
	.4byte	0xa4
	.byte	0x3
	.4byte	.LASF20
	.byte	0x4
	.byte	0x7f
	.byte	0x12
	.4byte	0xbc
	.byte	0x3
	.4byte	.LASF21
	.byte	0x4
	.byte	0x81
	.byte	0x12
	.4byte	0xc8
	.byte	0x8
	.byte	0x5
	.byte	0x4
	.4byte	0x25
	.byte	0x5
	.byte	0x35
	.byte	0xe
	.4byte	0x180
	.byte	0x9
	.4byte	.LASF22
	.byte	0
	.byte	0xa
	.4byte	.LASF23
	.byte	0x7f
	.byte	0xa
	.4byte	.LASF24
	.byte	0x7e
	.byte	0xa
	.4byte	.LASF25
	.byte	0x7d
	.byte	0xa
	.4byte	.LASF26
	.byte	0x7c
	.byte	0xa
	.4byte	.LASF27
	.byte	0x7b
	.byte	0xa
	.4byte	.LASF28
	.byte	0x7a
	.byte	0xa
	.4byte	.LASF29
	.byte	0x79
	.byte	0xa
	.4byte	.LASF30
	.byte	0x78
	.byte	0xa
	.4byte	.LASF31
	.byte	0x77
	.byte	0xa
	.4byte	.LASF32
	.byte	0x76
	.byte	0xa
	.4byte	.LASF33
	.byte	0x75
	.byte	0xa
	.4byte	.LASF34
	.byte	0x74
	.byte	0xa
	.4byte	.LASF35
	.byte	0x73
	.byte	0xa
	.4byte	.LASF36
	.byte	0x72
	.byte	0xa
	.4byte	.LASF37
	.byte	0x71
	.byte	0xa
	.4byte	.LASF38
	.byte	0x70
	.byte	0
	.byte	0x3
	.4byte	.LASF39
	.byte	0x5
	.byte	0x60
	.byte	0xe
	.4byte	0xe7
	.byte	0x8
	.byte	0x7
	.byte	0x4
	.4byte	0x94
	.byte	0x6
	.byte	0x59
	.byte	0xe
	.4byte	0x1b9
	.byte	0x9
	.4byte	.LASF40
	.byte	0xb6
	.byte	0x9
	.4byte	.LASF41
	.byte	0xa2
	.byte	0x9
	.4byte	.LASF42
	.byte	0x8e
	.byte	0x9
	.4byte	.LASF43
	.byte	0x80
	.byte	0x9
	.4byte	.LASF44
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0x7
	.byte	0x4
	.4byte	0x94
	.byte	0x6
	.byte	0x91
	.byte	0xe
	.4byte	0x1e2
	.byte	0xb
	.4byte	.LASF45
	.2byte	0x280
	.byte	0x9
	.4byte	.LASF46
	.byte	0x1
	.byte	0x9
	.4byte	.LASF47
	.byte	0x41
	.byte	0xb
	.4byte	.LASF48
	.2byte	0x182
	.byte	0
	.byte	0xc
	.4byte	.LASF55
	.byte	0x10
	.byte	0x6
	.byte	0xba
	.byte	0x8
	.4byte	0x258
	.byte	0xd
	.4byte	.LASF49
	.byte	0x6
	.byte	0xbc
	.byte	0x10
	.4byte	0x258
	.byte	0
	.byte	0xd
	.4byte	.LASF50
	.byte	0x6
	.byte	0xbf
	.byte	0x9
	.4byte	0x9b
	.byte	0x4
	.byte	0xd
	.4byte	.LASF51
	.byte	0x6
	.byte	0xc8
	.byte	0x9
	.4byte	0xf3
	.byte	0x8
	.byte	0xe
	.string	"len"
	.byte	0x6
	.byte	0xcb
	.byte	0x9
	.4byte	0xf3
	.byte	0xa
	.byte	0xd
	.4byte	.LASF52
	.byte	0x6
	.byte	0xd0
	.byte	0x8
	.4byte	0xdb
	.byte	0xc
	.byte	0xd
	.4byte	.LASF53
	.byte	0x6
	.byte	0xd3
	.byte	0x8
	.4byte	0xdb
	.byte	0xd
	.byte	0xe
	.string	"ref"
	.byte	0x6
	.byte	0xda
	.byte	0x8
	.4byte	0xdb
	.byte	0xe
	.byte	0xd
	.4byte	.LASF54
	.byte	0x6
	.byte	0xdd
	.byte	0x8
	.4byte	0xdb
	.byte	0xf
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x1e2
	.byte	0xc
	.4byte	.LASF56
	.byte	0x8
	.byte	0x6
	.byte	0xe5
	.byte	0x8
	.4byte	0x286
	.byte	0xd
	.4byte	.LASF49
	.byte	0x6
	.byte	0xe7
	.byte	0x10
	.4byte	0x258
	.byte	0
	.byte	0xd
	.4byte	.LASF50
	.byte	0x6
	.byte	0xea
	.byte	0xf
	.4byte	0xd4
	.byte	0x4
	.byte	0
	.byte	0xc
	.4byte	.LASF57
	.byte	0x4
	.byte	0x7
	.byte	0x33
	.byte	0x8
	.4byte	0x2a1
	.byte	0xd
	.4byte	.LASF58
	.byte	0x7
	.byte	0x34
	.byte	0x9
	.4byte	0xff
	.byte	0
	.byte	0
	.byte	0x3
	.4byte	.LASF59
	.byte	0x7
	.byte	0x39
	.byte	0x19
	.4byte	0x286
	.byte	0xf
	.4byte	.LASF60
	.byte	0x8
	.2byte	0x10e
	.byte	0x14
	.4byte	0x2a1
	.byte	0xc
	.4byte	.LASF61
	.byte	0x14
	.byte	0x9
	.byte	0x3c
	.byte	0x8
	.4byte	0x314
	.byte	0xe
	.string	"p"
	.byte	0x9
	.byte	0x3d
	.byte	0x10
	.4byte	0x258
	.byte	0
	.byte	0xe
	.string	"ptr"
	.byte	0x9
	.byte	0x3d
	.byte	0x14
	.4byte	0x258
	.byte	0x4
	.byte	0xd
	.4byte	.LASF58
	.byte	0x9
	.byte	0x3e
	.byte	0xd
	.4byte	0x2ad
	.byte	0x8
	.byte	0xd
	.4byte	.LASF62
	.byte	0x9
	.byte	0x3f
	.byte	0x9
	.4byte	0xf3
	.byte	0xc
	.byte	0xd
	.4byte	.LASF53
	.byte	0x9
	.byte	0x41
	.byte	0x8
	.4byte	0xdb
	.byte	0xe
	.byte	0xd
	.4byte	.LASF63
	.byte	0x9
	.byte	0x42
	.byte	0x9
	.4byte	0xf3
	.byte	0x10
	.byte	0
	.byte	0x8
	.byte	0x7
	.byte	0x4
	.4byte	0x94
	.byte	0xa
	.byte	0x34
	.byte	0xe
	.4byte	0x383
	.byte	0x9
	.4byte	.LASF64
	.byte	0
	.byte	0x9
	.4byte	.LASF65
	.byte	0x1
	.byte	0x9
	.4byte	.LASF66
	.byte	0x2
	.byte	0x9
	.4byte	.LASF67
	.byte	0x3
	.byte	0x9
	.4byte	.LASF68
	.byte	0x4
	.byte	0x9
	.4byte	.LASF69
	.byte	0x5
	.byte	0x9
	.4byte	.LASF70
	.byte	0x6
	.byte	0x9
	.4byte	.LASF71
	.byte	0x7
	.byte	0x9
	.4byte	.LASF72
	.byte	0x8
	.byte	0x9
	.4byte	.LASF73
	.byte	0x9
	.byte	0x9
	.4byte	.LASF74
	.byte	0xa
	.byte	0x9
	.4byte	.LASF75
	.byte	0xb
	.byte	0x9
	.4byte	.LASF76
	.byte	0xc
	.byte	0x9
	.4byte	.LASF77
	.byte	0xd
	.byte	0x9
	.4byte	.LASF78
	.byte	0xe
	.byte	0x9
	.4byte	.LASF79
	.byte	0xf
	.byte	0
	.byte	0x10
	.4byte	.LASF83
	.byte	0x1
	.byte	0xf4
	.byte	0x1
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x1
	.byte	0x9c
	.4byte	0x3a8
	.byte	0x11
	.string	"buf"
	.byte	0x1
	.byte	0xf4
	.byte	0x1d
	.4byte	0x3a8
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x2ba
	.byte	0x12
	.4byte	.LASF80
	.byte	0x1
	.byte	0xde
	.byte	0x1
	.4byte	0xe7
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x1
	.byte	0x9c
	.4byte	0x3d9
	.byte	0x13
	.string	"buf"
	.byte	0x1
	.byte	0xde
	.byte	0x1c
	.4byte	0x3a8
	.4byte	.LLST11
	.byte	0
	.byte	0x12
	.4byte	.LASF81
	.byte	0x1
	.byte	0xc4
	.byte	0x1
	.4byte	0x180
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x1
	.byte	0x9c
	.4byte	0x420
	.byte	0x13
	.string	"buf"
	.byte	0x1
	.byte	0xc4
	.byte	0x1c
	.4byte	0x3a8
	.4byte	.LLST10
	.byte	0x14
	.4byte	.LASF82
	.byte	0x1
	.byte	0xc4
	.byte	0x28
	.4byte	0x420
	.byte	0x1
	.byte	0x5b
	.byte	0x11
	.string	"len"
	.byte	0x1
	.byte	0xc4
	.byte	0x38
	.4byte	0x426
	.byte	0x1
	.byte	0x5c
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x9b
	.byte	0x6
	.byte	0x4
	.4byte	0xf3
	.byte	0x10
	.4byte	.LASF84
	.byte	0x1
	.byte	0xb0
	.byte	0x1
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x1
	.byte	0x9c
	.4byte	0x482
	.byte	0x15
	.4byte	.LASF85
	.byte	0x1
	.byte	0xb0
	.byte	0x1d
	.4byte	0x3a8
	.4byte	.LLST8
	.byte	0x15
	.4byte	.LASF86
	.byte	0x1
	.byte	0xb0
	.byte	0x32
	.4byte	0x3a8
	.4byte	.LLST9
	.byte	0x16
	.4byte	.LVL35
	.4byte	0x60d
	.byte	0x17
	.4byte	.LVL38
	.4byte	0x61a
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x36
	.byte	0x18
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0
	.byte	0
	.byte	0x12
	.4byte	.LASF87
	.byte	0x1
	.byte	0x97
	.byte	0x1
	.4byte	0x180
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0x4f1
	.byte	0x13
	.string	"buf"
	.byte	0x1
	.byte	0x97
	.byte	0x1b
	.4byte	0x3a8
	.4byte	.LLST5
	.byte	0x15
	.4byte	.LASF82
	.byte	0x1
	.byte	0x97
	.byte	0x2c
	.4byte	0xd4
	.4byte	.LLST6
	.byte	0x15
	.4byte	.LASF88
	.byte	0x1
	.byte	0x97
	.byte	0x3b
	.4byte	0xf3
	.4byte	.LLST7
	.byte	0x16
	.4byte	.LVL25
	.4byte	0x626
	.byte	0x19
	.4byte	.LVL26
	.4byte	0x633
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0xb6
	.byte	0x18
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x18
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x41
	.byte	0
	.byte	0
	.byte	0x10
	.4byte	.LASF89
	.byte	0x1
	.byte	0x7f
	.byte	0x1
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0x521
	.byte	0x13
	.string	"buf"
	.byte	0x1
	.byte	0x7f
	.byte	0x1c
	.4byte	0x3a8
	.4byte	.LLST4
	.byte	0x16
	.4byte	.LVL20
	.4byte	0x626
	.byte	0
	.byte	0x12
	.4byte	.LASF90
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.4byte	0x9b
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.4byte	0x57c
	.byte	0x13
	.string	"buf"
	.byte	0x1
	.byte	0x66
	.byte	0x1d
	.4byte	0x3a8
	.4byte	.LLST2
	.byte	0x15
	.4byte	.LASF88
	.byte	0x1
	.byte	0x66
	.byte	0x28
	.4byte	0xf3
	.4byte	.LLST3
	.byte	0x16
	.4byte	.LVL16
	.4byte	0x626
	.byte	0x19
	.4byte	.LVL17
	.4byte	0x633
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0xb6
	.byte	0x18
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xa
	.2byte	0x280
	.byte	0
	.byte	0
	.byte	0x10
	.4byte	.LASF91
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0x5b5
	.byte	0x13
	.string	"buf"
	.byte	0x1
	.byte	0x51
	.byte	0x1e
	.4byte	0x3a8
	.4byte	.LLST1
	.byte	0x16
	.4byte	.LVL6
	.4byte	0x626
	.byte	0x1a
	.4byte	.LVL8
	.4byte	0x61a
	.byte	0
	.byte	0x12
	.4byte	.LASF92
	.byte	0x1
	.byte	0x3f
	.byte	0x9
	.4byte	0x3a8
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0x60d
	.byte	0x1b
	.string	"buf"
	.byte	0x1
	.byte	0x41
	.byte	0x12
	.4byte	0x3a8
	.4byte	.LLST0
	.byte	0x1c
	.4byte	.LVL0
	.4byte	0x640
	.4byte	0x5f2
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x36
	.byte	0
	.byte	0x19
	.4byte	.LVL2
	.4byte	0x64c
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x18
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x18
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x44
	.byte	0
	.byte	0
	.byte	0x1d
	.4byte	.LASF93
	.4byte	.LASF93
	.byte	0x6
	.2byte	0x124
	.byte	0x6
	.byte	0x1e
	.4byte	.LASF94
	.4byte	.LASF94
	.byte	0xa
	.byte	0x95
	.byte	0x6
	.byte	0x1d
	.4byte	.LASF95
	.4byte	.LASF95
	.byte	0x6
	.2byte	0x122
	.byte	0x6
	.byte	0x1d
	.4byte	.LASF96
	.4byte	.LASF96
	.byte	0x6
	.2byte	0x110
	.byte	0xe
	.byte	0x1e
	.4byte	.LASF97
	.4byte	.LASF97
	.byte	0xa
	.byte	0x93
	.byte	0x7
	.byte	0x1e
	.4byte	.LASF98
	.4byte	.LASF98
	.byte	0xb
	.byte	0x21
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
	.byte	0xe
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
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xd
	.byte	0
	.byte	0
	.byte	0xb
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0xc
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
	.byte	0xd
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
	.byte	0xe
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
	.byte	0xf
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
	.byte	0x11
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
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x12
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
	.byte	0x13
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
	.byte	0x14
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
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x15
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
	.byte	0x16
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x17
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
	.byte	0x18
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
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
	.byte	0x1b
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
	.byte	0x1c
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
	.byte	0x1d
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
	.byte	0x1e
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
.LLST11:
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL47
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL43
	.4byte	.LFE11
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL32
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL34
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL36
	.4byte	.LVL38
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL38
	.4byte	.LFE10
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL33
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL37
	.4byte	.LVL38-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL38-1
	.4byte	.LVL38
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL39
	.4byte	.LFE10
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL24
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL27
	.4byte	.LVL29
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL31
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL23
	.4byte	.LVL25-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL25-1
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL30
	.4byte	.LFE9
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL23
	.4byte	.LVL25-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL25-1
	.4byte	.LVL30
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LFE9
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL19
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL15
	.4byte	.LFE7
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL10
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL12
	.4byte	.LVL14
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL16-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL16-1
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL5
	.4byte	.LVL6-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL6-1
	.4byte	.LVL7
	.2byte	0x2
	.byte	0x91
	.byte	0x6c
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL9
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL3
	.4byte	.LFE5
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
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
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
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB7
	.4byte	.LFE7
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF69:
	.string	"MEMP_ALTCP_PCB"
.LASF77:
	.string	"MEMP_PBUF"
.LASF95:
	.string	"pbuf_free"
.LASF94:
	.string	"memp_free"
.LASF81:
	.string	"netbuf_data"
.LASF14:
	.string	"int8_t"
.LASF90:
	.string	"netbuf_alloc"
.LASF35:
	.string	"ERR_ABRT"
.LASF23:
	.string	"ERR_MEM"
.LASF32:
	.string	"ERR_ISCONN"
.LASF71:
	.string	"MEMP_NETCONN"
.LASF4:
	.string	"short int"
.LASF70:
	.string	"MEMP_NETBUF"
.LASF68:
	.string	"MEMP_TCP_SEG"
.LASF37:
	.string	"ERR_CLSD"
.LASF8:
	.string	"__uint32_t"
.LASF5:
	.string	"__uint16_t"
.LASF75:
	.string	"MEMP_SYS_TIMEOUT"
.LASF85:
	.string	"head"
.LASF45:
	.string	"PBUF_RAM"
.LASF67:
	.string	"MEMP_TCP_PCB_LISTEN"
.LASF36:
	.string	"ERR_RST"
.LASF44:
	.string	"PBUF_RAW"
.LASF27:
	.string	"ERR_INPROGRESS"
.LASF76:
	.string	"MEMP_NETDB"
.LASF56:
	.string	"pbuf_rom"
.LASF19:
	.string	"s8_t"
.LASF10:
	.string	"long long int"
.LASF80:
	.string	"netbuf_next"
.LASF87:
	.string	"netbuf_ref"
.LASF61:
	.string	"netbuf"
.LASF98:
	.string	"memset"
.LASF25:
	.string	"ERR_TIMEOUT"
.LASF7:
	.string	"long int"
.LASF60:
	.string	"ip_addr_t"
.LASF58:
	.string	"addr"
.LASF31:
	.string	"ERR_ALREADY"
.LASF52:
	.string	"type_internal"
.LASF93:
	.string	"pbuf_cat"
.LASF3:
	.string	"unsigned char"
.LASF86:
	.string	"tail"
.LASF26:
	.string	"ERR_RTE"
.LASF33:
	.string	"ERR_CONN"
.LASF79:
	.string	"MEMP_MAX"
.LASF54:
	.string	"if_idx"
.LASF0:
	.string	"signed char"
.LASF53:
	.string	"flags"
.LASF11:
	.string	"long long unsigned int"
.LASF63:
	.string	"toport_chksum"
.LASF17:
	.string	"uint32_t"
.LASF12:
	.string	"unsigned int"
.LASF16:
	.string	"uint16_t"
.LASF34:
	.string	"ERR_IF"
.LASF74:
	.string	"MEMP_IGMP_GROUP"
.LASF24:
	.string	"ERR_BUF"
.LASF48:
	.string	"PBUF_POOL"
.LASF1:
	.string	"__int8_t"
.LASF89:
	.string	"netbuf_free"
.LASF39:
	.string	"err_t"
.LASF13:
	.string	"char"
.LASF43:
	.string	"PBUF_RAW_TX"
.LASF72:
	.string	"MEMP_TCPIP_MSG_API"
.LASF6:
	.string	"short unsigned int"
.LASF96:
	.string	"pbuf_alloc"
.LASF57:
	.string	"ip4_addr"
.LASF29:
	.string	"ERR_WOULDBLOCK"
.LASF84:
	.string	"netbuf_chain"
.LASF40:
	.string	"PBUF_TRANSPORT"
.LASF101:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/lwip"
.LASF62:
	.string	"port"
.LASF100:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/api/netbuf.c"
.LASF83:
	.string	"netbuf_first"
.LASF9:
	.string	"long unsigned int"
.LASF64:
	.string	"MEMP_RAW_PCB"
.LASF59:
	.string	"ip4_addr_t"
.LASF88:
	.string	"size"
.LASF91:
	.string	"netbuf_delete"
.LASF22:
	.string	"ERR_OK"
.LASF18:
	.string	"u8_t"
.LASF21:
	.string	"u32_t"
.LASF15:
	.string	"uint8_t"
.LASF20:
	.string	"u16_t"
.LASF78:
	.string	"MEMP_PBUF_POOL"
.LASF30:
	.string	"ERR_USE"
.LASF42:
	.string	"PBUF_LINK"
.LASF92:
	.string	"netbuf_new"
.LASF73:
	.string	"MEMP_TCPIP_MSG_INPKT"
.LASF82:
	.string	"dataptr"
.LASF51:
	.string	"tot_len"
.LASF66:
	.string	"MEMP_TCP_PCB"
.LASF38:
	.string	"ERR_ARG"
.LASF41:
	.string	"PBUF_IP"
.LASF97:
	.string	"memp_malloc"
.LASF65:
	.string	"MEMP_UDP_PCB"
.LASF47:
	.string	"PBUF_REF"
.LASF28:
	.string	"ERR_VAL"
.LASF46:
	.string	"PBUF_ROM"
.LASF50:
	.string	"payload"
.LASF49:
	.string	"next"
.LASF2:
	.string	"__uint8_t"
.LASF55:
	.string	"pbuf"
.LASF99:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
