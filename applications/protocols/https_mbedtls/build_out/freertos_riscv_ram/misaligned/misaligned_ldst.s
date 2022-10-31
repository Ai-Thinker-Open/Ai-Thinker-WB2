	.file	"misaligned_ldst.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.truly_illegal_insn,"ax",@progbits
	.align	1
	.globl	truly_illegal_insn
	.type	truly_illegal_insn, @function
truly_illegal_insn:
.LFB14:
	.file 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/misaligned/misaligned_ldst.c"
	.loc 1 29 1
	.cfi_startproc
.LVL0:
	.loc 1 30 5
 #APP
# 30 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/misaligned/misaligned_ldst.c" 1
	ebreak
# 0 "" 2
 #NO_APP
.L2:
	.loc 1 31 5 discriminator 1
	.loc 1 31 13 discriminator 1
	.loc 1 31 10 discriminator 1
	.loc 1 31 5 discriminator 1
	.loc 1 31 13 discriminator 1
	.loc 1 31 10 discriminator 1
	j	.L2
	.cfi_endproc
.LFE14:
	.size	truly_illegal_insn, .-truly_illegal_insn
	.section	.text.misaligned_load_trap,"ax",@progbits
	.align	1
	.globl	misaligned_load_trap
	.type	misaligned_load_trap, @function
misaligned_load_trap:
.LFB15:
	.loc 1 35 1
	.cfi_startproc
.LVL1:
.LBB44:
.LBB45:
	.file 2 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/misaligned/unprivileged_memory.h"
	.loc 2 71 22 is_stmt 0
	li	a1,655360
.LVL2:
	.loc 2 83 3
	li	a5,3
 #APP
# 83 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/misaligned/unprivileged_memory.h" 1
	csrrs a3, mstatus, a1
and a6, a2, 2
bnez a6, 1f
lw a4, (a2)
and a6, a4, a5
beq a6, a5, 2f
sll a4, a4, 16
srl a4, a4, 16
j 2f
1:
lhu a4, (a2)
and a6, a4, a5
bne a6, a5, 2f
lhu a6, 2(a2)
sll a6, a6, 16
add a4, a4, a6
2: csrw mstatus, a3
# 0 "" 2
 #NO_APP
.LBE45:
.LBE44:
.LBB47:
.LBB48:
	.loc 1 25 16
	andi	a1,a4,3
.LBE48:
.LBE47:
	.loc 1 36 3 is_stmt 1
	.loc 1 37 3
	.loc 1 38 3
.LVL3:
.LBB50:
.LBB46:
	.loc 2 71 3
	.loc 2 72 3
	.loc 2 73 3
	.loc 2 74 3
	.loc 2 82 3
	.loc 2 83 3
	mv	a6,a4
.LVL4:
	.loc 2 104 3
	.loc 2 105 3
.LBE46:
.LBE50:
	.loc 1 39 3
.LBB51:
.LBB49:
	.loc 1 25 3
	.loc 1 25 33 is_stmt 0
	li	t3,4
	beq	a1,a5,.L5
	li	t3,2
.L5:
.LVL5:
.LBE49:
.LBE51:
	.loc 1 39 13
	add	t3,a2,t3
.LVL6:
	.loc 1 40 3 is_stmt 1
.LBB52:
	.loc 1 40 23
	.loc 1 40 44
 #APP
# 40 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/misaligned/misaligned_ldst.c" 1
	csrr a7, mbadaddr
# 0 "" 2
.LVL7:
	.loc 1 40 97
 #NO_APP
.LBE52:
	.loc 1 42 3
	.loc 1 43 3
	.loc 1 43 13 is_stmt 0
	li	a5,28672
	.loc 1 43 6
	li	a1,8192
	.loc 1 43 13
	addi	a5,a5,127
	and	a5,a4,a5
	.loc 1 43 6
	addi	t1,a1,3
	beq	a5,t1,.L20
	.loc 1 56 8 is_stmt 1
	.loc 1 56 11 is_stmt 0
	addi	a1,a1,7
	beq	a5,a1,.L21
	.loc 1 59 8 is_stmt 1
	.loc 1 59 11 is_stmt 0
	li	a1,4096
	addi	a1,a1,3
	beq	a5,a1,.L18
	.loc 1 61 8 is_stmt 1
	.loc 1 61 11 is_stmt 0
	li	a1,20480
	addi	a1,a1,3
	beq	a5,a1,.L19
	.loc 1 70 8 is_stmt 1
	.loc 1 70 18 is_stmt 0
	li	a5,57344
	addi	a5,a5,3
	and	a5,a4,a5
	.loc 1 70 11
	li	a1,16384
	beq	a5,a1,.L26
	.loc 1 72 8 is_stmt 1
	.loc 1 72 11 is_stmt 0
	addi	a1,a1,2
	beq	a5,a1,.L27
	.loc 1 82 8 is_stmt 1
	.loc 1 82 11 is_stmt 0
	li	a1,24576
	beq	a5,a1,.L28
	.loc 1 84 8 is_stmt 1
	.loc 1 84 11 is_stmt 0
	addi	a1,a1,2
	beq	a5,a1,.L21
.L9:
	.loc 1 90 5 is_stmt 1
.LVL8:
	.loc 1 91 5
	.loc 1 91 8 is_stmt 0
 #APP
# 91 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/misaligned/misaligned_ldst.c" 1
	csrw mcause, 5
# 0 "" 2
	.loc 1 92 5 is_stmt 1
.LVL9:
 #NO_APP
.LBB53:
.LBB54:
	.loc 1 30 5
 #APP
# 30 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/misaligned/misaligned_ldst.c" 1
	ebreak
# 0 "" 2
 #NO_APP
.L11:
	.loc 1 31 5
	.loc 1 31 13
	.loc 1 31 10
	.loc 1 31 5
	.loc 1 31 13
	.loc 1 31 10
	j	.L11
.LVL10:
.L21:
.LBE54:
.LBE53:
	.loc 1 85 17 is_stmt 0
	li	t1,4
	.loc 1 85 8
	li	t5,1
	.loc 1 42 7
	li	t4,0
.LVL11:
.L6:
	.loc 1 95 3 is_stmt 1
	.loc 1 35 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 95 13
	li	a5,0
	li	a4,0
	sw	a5,12(sp)
	.loc 1 96 3 is_stmt 1
.LBB55:
	.loc 1 96 8
.LVL12:
	.loc 1 96 24
.LBE55:
	.loc 1 95 13 is_stmt 0
	sw	a4,8(sp)
	add	t1,t1,a7
.LVL13:
	mv	a5,a7
.LVL14:
.L12:
.LBB60:
	.loc 1 97 5 is_stmt 1 discriminator 3
.LBB56:
.LBB57:
	.loc 2 39 75 discriminator 3
.LBE57:
.LBE56:
	.loc 1 97 18 is_stmt 0 discriminator 3
	sub	a4,a5,a7
.LVL15:
	addi	a1,sp,8
	add	a4,a1,a4
.LVL16:
	.loc 1 96 3 discriminator 3
	addi	a5,a5,1
.LVL17:
.LBB59:
.LBB58:
	.loc 2 39 94 discriminator 3
	li	a1,131072
	.loc 2 39 136 is_stmt 1 discriminator 3
	.loc 2 39 181 discriminator 3
	.loc 2 39 222 discriminator 3
	.loc 2 39 235 discriminator 3
 #APP
# 39 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/misaligned/unprivileged_memory.h" 1
	csrrs a3, mstatus, a1
lbu t6, -1(a5)
csrw mstatus, a3
# 0 "" 2
.LVL18:
	.loc 2 39 390 discriminator 3
 #NO_APP
.LBE58:
.LBE59:
	.loc 1 97 18 is_stmt 0 discriminator 3
	sb	t6,0(a4)
	.loc 1 96 33 is_stmt 1 discriminator 3
.LVL19:
	.loc 1 96 24 discriminator 3
	.loc 1 96 3 is_stmt 0 discriminator 3
	bne	t1,a5,.L12
.LBE60:
	.loc 1 99 3 is_stmt 1
	.loc 1 100 183 is_stmt 0
	lw	a4,8(sp)
	.loc 1 99 6
	bne	t5,zero,.L13
	.loc 1 100 5 is_stmt 1
.LBB61:
	.loc 1 100 10
.LVL20:
	.loc 1 100 46
	.loc 1 100 127 is_stmt 0
	srli	a6,a6,5
.LVL21:
	.loc 1 100 152
	andi	a6,a6,124
.LBE61:
	.loc 1 100 189
	sll	a4,a4,t4
	.loc 1 100 167
	add	a6,a0,a6
	.loc 1 100 198
	sra	a4,a4,t4
	.loc 1 100 167
	sw	a4,124(a6)
	.loc 1 111 3 is_stmt 1
	.loc 1 111 13 is_stmt 0
	sw	t3,0(a0)
	.loc 1 112 1
	addi	sp,sp,16
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	jr	ra
.LVL22:
.L13:
	.cfi_restore_state
	.loc 1 107 5 is_stmt 1
	.loc 1 108 5
	.loc 1 107 39 is_stmt 0
	srli	a5,a6,7
	.loc 1 107 9
	andi	a5,a5,31
	.loc 1 108 9
	addi	a5,a5,1
	.loc 1 108 21
	slli	a5,a5,2
	add	a5,a0,a5
	sw	a4,0(a5)
	.loc 1 111 3 is_stmt 1
	.loc 1 111 13 is_stmt 0
	sw	t3,0(a0)
	.loc 1 112 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL23:
.L27:
	.loc 1 72 48 discriminator 1
	srli	a5,a4,7
	.loc 1 72 54 discriminator 1
	andi	a5,a5,31
	.loc 1 72 38 discriminator 1
	beq	a5,zero,.L9
.L20:
	.loc 1 73 9
	li	t1,4
	.loc 1 42 18
	li	t5,0
	.loc 1 73 20
	li	t4,0
	j	.L6
.L19:
	.loc 1 62 9
	li	t1,2
	.loc 1 42 18
	li	t5,0
	.loc 1 42 7
	li	t4,0
	j	.L6
.L18:
	.loc 1 60 9
	li	t1,2
	.loc 1 42 18
	li	t5,0
	.loc 1 60 20
	li	t4,16
	j	.L6
.L26:
	.loc 1 71 5 is_stmt 1
.LVL24:
	.loc 1 71 72 is_stmt 0
	srli	a6,a4,2
	.loc 1 71 80
	andi	a6,a6,7
	.loc 1 71 61
	addi	a6,a6,8
.LVL25:
	.loc 1 71 56
	slli	a6,a6,7
.LVL26:
	.loc 1 71 9
	li	t1,4
	.loc 1 42 18
	li	t5,0
	.loc 1 71 20
	li	t4,0
	j	.L6
.LVL27:
.L28:
	.loc 1 83 5 is_stmt 1
	.loc 1 83 43 is_stmt 0
	srli	a6,a4,2
	.loc 1 83 51
	andi	a6,a6,7
	.loc 1 83 32
	addi	a6,a6,8
.LVL28:
	.loc 1 83 27
	slli	a6,a6,7
.LVL29:
	.loc 1 83 17
	li	t1,4
	.loc 1 83 8
	li	t5,1
	.loc 1 42 7
	li	t4,0
	j	.L6
	.cfi_endproc
.LFE15:
	.size	misaligned_load_trap, .-misaligned_load_trap
	.section	.text.misaligned_store_trap,"ax",@progbits
	.align	1
	.globl	misaligned_store_trap
	.type	misaligned_store_trap, @function
misaligned_store_trap:
.LFB16:
	.loc 1 115 1 is_stmt 1
	.cfi_startproc
.LVL30:
.LBB62:
.LBB63:
	.loc 2 71 22 is_stmt 0
	li	a1,655360
.LVL31:
	.loc 2 83 3
	li	a5,3
 #APP
# 83 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/misaligned/unprivileged_memory.h" 1
	csrrs a3, mstatus, a1
and a6, a2, 2
bnez a6, 1f
lw a4, (a2)
and a6, a4, a5
beq a6, a5, 2f
sll a4, a4, 16
srl a4, a4, 16
j 2f
1:
lhu a4, (a2)
and a6, a4, a5
bne a6, a5, 2f
lhu a6, 2(a2)
sll a6, a6, 16
add a4, a4, a6
2: csrw mstatus, a3
# 0 "" 2
 #NO_APP
.LBE63:
.LBE62:
.LBB65:
.LBB66:
	.loc 1 25 16
	andi	a1,a4,3
.LBE66:
.LBE65:
	.loc 1 115 1
	mv	t3,a0
	.loc 1 116 3 is_stmt 1
	.loc 1 117 3
	.loc 1 118 3
.LVL32:
.LBB69:
.LBB64:
	.loc 2 71 3
	.loc 2 72 3
	.loc 2 73 3
	.loc 2 74 3
	.loc 2 82 3
	.loc 2 83 3
	.loc 2 104 3
	.loc 2 105 3
.LBE64:
.LBE69:
	.loc 1 119 3
.LBB70:
.LBB67:
	.loc 1 25 3
.LBE67:
.LBE70:
	.loc 1 115 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
.LBB71:
.LBB68:
	.loc 1 25 33
	li	a0,4
.LVL33:
	beq	a1,a5,.L30
	li	a0,2
.L30:
.LVL34:
.LBE68:
.LBE71:
.LBB72:
	.loc 1 122 138
	srli	a5,a4,18
	addi	a6,t3,124
	.loc 1 122 164
	andi	a5,a5,124
.LBE72:
	.loc 1 122 15
	add	a5,a5,a6
	.loc 1 122 12
	lw	a5,0(a5)
	.loc 1 123 6
	li	a1,8192
	addi	a7,a1,35
	.loc 1 122 12
	sw	a5,8(sp)
	.loc 1 123 13
	li	a5,28672
	addi	a5,a5,127
	and	a5,a4,a5
	.loc 1 119 13
	add	t4,a2,a0
.LVL35:
	.loc 1 120 3 is_stmt 1
	.loc 1 122 3
.LBB73:
	.loc 1 122 19
	.loc 1 122 55
.LBE73:
	.loc 1 123 3
	.loc 1 123 6 is_stmt 0
	beq	a5,a7,.L40
	.loc 1 134 8 is_stmt 1
	.loc 1 134 11 is_stmt 0
	addi	a1,a1,39
	beq	a5,a1,.L48
	.loc 1 137 8 is_stmt 1
	.loc 1 137 11 is_stmt 0
	li	a1,4096
	addi	a1,a1,35
	beq	a5,a1,.L41
	.loc 1 146 8 is_stmt 1
	.loc 1 146 18 is_stmt 0
	li	a0,57344
	addi	a5,a0,3
	and	a5,a4,a5
	.loc 1 146 11
	li	a1,49152
	beq	a5,a1,.L49
	.loc 1 148 8 is_stmt 1
	.loc 1 148 11 is_stmt 0
	addi	a1,a1,2
	beq	a5,a1,.L50
	.loc 1 158 8 is_stmt 1
	.loc 1 158 11 is_stmt 0
	beq	a5,a0,.L51
	.loc 1 160 8 is_stmt 1
	.loc 1 160 11 is_stmt 0
	addi	a0,a0,2
	beq	a5,a0,.L52
.L35:
	.loc 1 166 5 is_stmt 1
.LVL36:
	.loc 1 167 5
	.loc 1 167 8 is_stmt 0
 #APP
# 167 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/misaligned/misaligned_ldst.c" 1
	csrw mcause, 7
# 0 "" 2
	.loc 1 168 5 is_stmt 1
.LVL37:
 #NO_APP
.LBB74:
.LBB75:
	.loc 1 30 5
 #APP
# 30 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/misaligned/misaligned_ldst.c" 1
	ebreak
# 0 "" 2
 #NO_APP
.L37:
	.loc 1 31 5
	.loc 1 31 13
	.loc 1 31 10
	.loc 1 31 5
	.loc 1 31 13
	.loc 1 31 10
	j	.L37
.LVL38:
.L48:
.LBE75:
.LBE74:
	.loc 1 135 5
.LBB76:
	.loc 1 135 29
	.loc 1 135 102 is_stmt 0
	srli	a0,a4,17
	.loc 1 135 126
	andi	a0,a0,248
	.loc 1 135 134 is_stmt 1
	.loc 1 135 149
.LBE76:
	.loc 1 135 9 is_stmt 0
	li	t1,4
.LBB77:
	.loc 1 135 149
 #APP
# 135 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/misaligned/misaligned_ldst.c" 1
	1: auipc a5, %pcrel_hi(get_f32_reg); add a5, a5, a0; jalr t0, a5, %pcrel_lo(1b)
# 0 "" 2
.LVL39:
	.loc 1 135 275 is_stmt 1
 #NO_APP
.LBE77:
	.loc 1 135 23 is_stmt 0
	sw	a0,8(sp)
.LVL40:
.L31:
	.loc 1 171 3 is_stmt 1
.LBB78:
	.loc 1 171 23
	.loc 1 171 44
 #APP
# 171 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/misaligned/misaligned_ldst.c" 1
	csrr a7, mbadaddr
# 0 "" 2
.LVL41:
	.loc 1 171 97
 #NO_APP
.LBE78:
	.loc 1 172 3
.LBB79:
	.loc 1 172 8
	.loc 1 172 19
.LBE79:
.LBB82:
	.loc 1 171 44 is_stmt 0
	addi	a5,sp,8
	add	t1,t1,a5
.LVL42:
	sub	a7,a7,a5
.LVL43:
.L38:
.LBE82:
.LBB83:
	.loc 1 173 5 is_stmt 1 discriminator 3
	lbu	a4,0(a5)
	add	a6,a7,a5
.LVL44:
.LBB80:
.LBB81:
	.loc 2 44 80 discriminator 3
	.loc 2 44 99 is_stmt 0 discriminator 3
	li	a1,131072
	.loc 2 44 141 is_stmt 1 discriminator 3
	.loc 2 44 186 discriminator 3
	.loc 2 44 227 discriminator 3
 #APP
# 44 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/misaligned/unprivileged_memory.h" 1
	csrrs a3, mstatus, a1
sb a4, 0(a6)
csrw mstatus, a3
# 0 "" 2
.LVL45:
 #NO_APP
.LBE81:
.LBE80:
	.loc 1 172 28 discriminator 3
	.loc 1 172 19 discriminator 3
	.loc 1 172 3 is_stmt 0 discriminator 3
	addi	a5,a5,1
.LVL46:
	bne	t1,a5,.L38
.LBE83:
	.loc 1 175 3 is_stmt 1
	.loc 1 175 13 is_stmt 0
	sw	t4,0(t3)
	.loc 1 176 1
	addi	sp,sp,16
	.cfi_remember_state
	.cfi_def_cfa_offset 0
.LVL47:
	jr	ra
.LVL48:
.L40:
	.cfi_restore_state
	.loc 1 124 9
	li	t1,4
	j	.L31
.L49:
	.loc 1 147 5 is_stmt 1
.LVL49:
.LBB84:
	.loc 1 147 30
	.loc 1 147 66
	.loc 1 147 129 is_stmt 0
	andi	a4,a4,28
.LVL50:
.LBE84:
	.loc 1 147 26
	add	a6,a6,a4
	.loc 1 147 23
	lw	a5,32(a6)
	.loc 1 147 9
	li	t1,4
	.loc 1 147 23
	sw	a5,8(sp)
	j	.L31
.LVL51:
.L41:
	.loc 1 138 9
	li	t1,2
	j	.L31
.L50:
	.loc 1 148 48 discriminator 1
	srli	a5,a4,7
	.loc 1 148 54 discriminator 1
	andi	a5,a5,31
	.loc 1 148 38 discriminator 1
	beq	a5,zero,.L35
	.loc 1 149 5 is_stmt 1
.LVL52:
.LBB85:
	.loc 1 149 30
	.loc 1 149 66
	.loc 1 149 172 is_stmt 0
	andi	a4,a4,124
.LVL53:
.LBE85:
	.loc 1 149 26
	add	a6,a4,a6
	.loc 1 149 23
	lw	a5,0(a6)
	.loc 1 149 9
	li	t1,4
	.loc 1 149 23
	sw	a5,8(sp)
	.loc 1 149 12
	j	.L31
.LVL54:
.L51:
	.loc 1 159 5 is_stmt 1
.LBB86:
	.loc 1 159 29
	.loc 1 159 95 is_stmt 0
	srli	a0,a4,2
	.loc 1 159 103
	andi	a0,a0,7
	.loc 1 159 84
	addi	a0,a0,8
	.loc 1 159 138
	slli	a0,a0,3
	.loc 1 159 207 is_stmt 1
	.loc 1 159 222
.LBE86:
	.loc 1 159 9 is_stmt 0
	li	t1,4
.LBB87:
	.loc 1 159 222
 #APP
# 159 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/misaligned/misaligned_ldst.c" 1
	1: auipc a5, %pcrel_hi(get_f32_reg); add a5, a5, a0; jalr t0, a5, %pcrel_lo(1b)
# 0 "" 2
.LVL55:
	.loc 1 159 348 is_stmt 1
 #NO_APP
.LBE87:
	.loc 1 159 23 is_stmt 0
	sw	a0,8(sp)
	j	.L31
.LVL56:
.L52:
	.loc 1 161 5 is_stmt 1
.LBB88:
	.loc 1 161 29
	.loc 1 161 100 is_stmt 0
	slli	a4,a4,1
.LVL57:
	.loc 1 161 123
	andi	a0,a4,248
	.loc 1 161 131 is_stmt 1
	.loc 1 161 146
.LBE88:
	.loc 1 161 9 is_stmt 0
	li	t1,4
.LBB89:
	.loc 1 161 146
 #APP
# 161 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/misaligned/misaligned_ldst.c" 1
	1: auipc a5, %pcrel_hi(get_f32_reg); add a5, a5, a0; jalr t0, a5, %pcrel_lo(1b)
# 0 "" 2
.LVL58:
	.loc 1 161 272 is_stmt 1
 #NO_APP
.LBE89:
	.loc 1 161 23 is_stmt 0
	sw	a0,8(sp)
	j	.L31
	.cfi_endproc
.LFE16:
	.size	misaligned_store_trap, .-misaligned_store_trap
	.text
.Letext0:
	.file 3 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.file 4 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/misaligned/emulation.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x740
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF37
	.byte	0xc
	.4byte	.LASF38
	.4byte	.LASF39
	.4byte	.Ldebug_ranges0+0x128
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
	.byte	0x3
	.4byte	.LASF4
	.byte	0x3
	.byte	0x28
	.byte	0x12
	.4byte	0x3f
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF2
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF3
	.byte	0x3
	.4byte	.LASF5
	.byte	0x3
	.byte	0x2e
	.byte	0x17
	.4byte	0x5e
	.byte	0x4
	.4byte	0x4d
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF6
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF7
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.byte	0x3
	.4byte	.LASF9
	.byte	0x3
	.byte	0x37
	.byte	0x20
	.4byte	0x7f
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.byte	0x5
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.byte	0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x53
	.byte	0xd
	.4byte	0x86
	.byte	0x3
	.4byte	.LASF13
	.byte	0x3
	.byte	0x56
	.byte	0x16
	.4byte	0x8d
	.byte	0x3
	.4byte	.LASF14
	.byte	0x4
	.byte	0xa
	.byte	0x13
	.4byte	0xa0
	.byte	0x6
	.byte	0x4
	.4byte	0xa0
	.byte	0x7
	.4byte	.LASF40
	.byte	0x8
	.byte	0x1
	.byte	0x11
	.byte	0x7
	.4byte	0xf0
	.byte	0x8
	.4byte	.LASF15
	.byte	0x1
	.byte	0x12
	.byte	0xb
	.4byte	0xf0
	.byte	0x8
	.4byte	.LASF16
	.byte	0x1
	.byte	0x13
	.byte	0xd
	.4byte	0xa0
	.byte	0x8
	.4byte	.LASF17
	.byte	0x1
	.byte	0x14
	.byte	0xc
	.4byte	0x73
	.byte	0
	.byte	0x9
	.4byte	0x4d
	.4byte	0x100
	.byte	0xa
	.4byte	0x8d
	.byte	0x7
	.byte	0
	.byte	0xb
	.4byte	.LASF27
	.byte	0x1
	.byte	0x72
	.byte	0x6
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x1
	.byte	0x9c
	.4byte	0x37a
	.byte	0xc
	.4byte	.LASF18
	.byte	0x1
	.byte	0x72
	.byte	0x27
	.4byte	0xb8
	.4byte	.LLST18
	.byte	0xc
	.4byte	.LASF19
	.byte	0x1
	.byte	0x72
	.byte	0x37
	.4byte	0xa0
	.4byte	.LLST19
	.byte	0xd
	.4byte	.LASF20
	.byte	0x1
	.byte	0x72
	.byte	0x49
	.4byte	0xa0
	.byte	0x1
	.byte	0x5c
	.byte	0xe
	.string	"val"
	.byte	0x1
	.byte	0x74
	.byte	0x14
	.4byte	0xbe
	.byte	0x2
	.byte	0x91
	.byte	0x78
	.byte	0xf
	.4byte	.LASF21
	.byte	0x1
	.byte	0x75
	.byte	0xd
	.4byte	0xa0
	.4byte	.LLST20
	.byte	0xf
	.4byte	.LASF22
	.byte	0x1
	.byte	0x76
	.byte	0xa
	.4byte	0xac
	.4byte	.LLST21
	.byte	0xe
	.string	"npc"
	.byte	0x1
	.byte	0x77
	.byte	0xd
	.4byte	0xa0
	.byte	0x1
	.byte	0x6d
	.byte	0x10
	.string	"len"
	.byte	0x1
	.byte	0x78
	.byte	0x7
	.4byte	0x86
	.4byte	.LLST22
	.byte	0xf
	.4byte	.LASF23
	.byte	0x1
	.byte	0xab
	.byte	0xd
	.4byte	0xa0
	.4byte	.LLST23
	.byte	0x11
	.4byte	.Ldebug_ranges0+0x98
	.4byte	0x1b8
	.byte	0x12
	.4byte	.LASF24
	.byte	0x1
	.byte	0x7a
	.byte	0x17
	.4byte	0x86
	.byte	0x7c
	.byte	0
	.byte	0x11
	.4byte	.Ldebug_ranges0+0xb0
	.4byte	0x1dc
	.byte	0x13
	.4byte	.LASF25
	.byte	0x1
	.byte	0x87
	.byte	0x2e
	.4byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x14
	.string	"tmp"
	.byte	0x1
	.byte	0x87
	.byte	0x90
	.4byte	0xa0
	.byte	0
	.byte	0x15
	.4byte	.LBB84
	.4byte	.LBE84-.LBB84
	.4byte	0x1fa
	.byte	0xf
	.4byte	.LASF24
	.byte	0x1
	.byte	0x93
	.byte	0x22
	.4byte	0x86
	.4byte	.LLST35
	.byte	0
	.byte	0x15
	.4byte	.LBB85
	.4byte	.LBE85-.LBB85
	.4byte	0x218
	.byte	0xf
	.4byte	.LASF24
	.byte	0x1
	.byte	0x95
	.byte	0x22
	.4byte	0x86
	.4byte	.LLST36
	.byte	0
	.byte	0x11
	.4byte	.Ldebug_ranges0+0xf8
	.4byte	0x23c
	.byte	0x13
	.4byte	.LASF25
	.byte	0x1
	.byte	0x9f
	.byte	0x2e
	.4byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x14
	.string	"tmp"
	.byte	0x1
	.byte	0x9f
	.byte	0xd9
	.4byte	0xa0
	.byte	0
	.byte	0x11
	.4byte	.Ldebug_ranges0+0x110
	.4byte	0x260
	.byte	0x13
	.4byte	.LASF25
	.byte	0x1
	.byte	0xa1
	.byte	0x2e
	.4byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x14
	.string	"tmp"
	.byte	0x1
	.byte	0xa1
	.byte	0x8d
	.4byte	0xa0
	.byte	0
	.byte	0x11
	.4byte	.Ldebug_ranges0+0xc8
	.4byte	0x27a
	.byte	0xf
	.4byte	.LASF26
	.byte	0x1
	.byte	0xab
	.byte	0x25
	.4byte	0x6c
	.4byte	.LLST23
	.byte	0
	.byte	0x11
	.4byte	.Ldebug_ranges0+0xe0
	.4byte	0x2d3
	.byte	0x10
	.string	"i"
	.byte	0x1
	.byte	0xac
	.byte	0xc
	.4byte	0x86
	.4byte	.LLST31
	.byte	0x16
	.4byte	0x654
	.4byte	.LBB80
	.4byte	.LBE80-.LBB80
	.byte	0x1
	.byte	0xad
	.byte	0x5
	.byte	0x17
	.4byte	0x679
	.4byte	.LLST32
	.byte	0x17
	.4byte	0x66d
	.4byte	.LLST33
	.byte	0x17
	.4byte	0x661
	.4byte	.LLST34
	.byte	0x18
	.4byte	0x685
	.byte	0x1
	.byte	0x5b
	.byte	0x18
	.4byte	0x691
	.byte	0x1
	.byte	0x5c
	.byte	0x18
	.4byte	0x69d
	.byte	0x1
	.byte	0x5d
	.byte	0
	.byte	0
	.byte	0x19
	.4byte	0x5e2
	.4byte	.LBB62
	.4byte	.Ldebug_ranges0+0x60
	.byte	0x1
	.byte	0x76
	.byte	0x11
	.4byte	0x31d
	.byte	0x1a
	.4byte	0x5ff
	.byte	0x1a
	.4byte	0x5f3
	.byte	0x1b
	.4byte	.Ldebug_ranges0+0x60
	.byte	0x18
	.4byte	0x60b
	.byte	0x1
	.byte	0x5b
	.byte	0x18
	.4byte	0x617
	.byte	0x1
	.byte	0x5c
	.byte	0x18
	.4byte	0x623
	.byte	0x1
	.byte	0x5d
	.byte	0x1c
	.4byte	0x62f
	.byte	0x1d
	.4byte	0x63b
	.byte	0x3
	.byte	0x1c
	.4byte	0x647
	.byte	0
	.byte	0
	.byte	0x19
	.4byte	0x5c4
	.4byte	.LBB65
	.4byte	.Ldebug_ranges0+0x78
	.byte	0x1
	.byte	0x77
	.byte	0x1a
	.4byte	0x33b
	.byte	0x17
	.4byte	0x5d5
	.4byte	.LLST24
	.byte	0
	.byte	0x16
	.4byte	0x57a
	.4byte	.LBB74
	.4byte	.LBE74-.LBB74
	.byte	0x1
	.byte	0xa8
	.byte	0xc
	.byte	0x17
	.4byte	0x5b7
	.4byte	.LLST25
	.byte	0x17
	.4byte	0x5ab
	.4byte	.LLST26
	.byte	0x17
	.4byte	0x59f
	.4byte	.LLST27
	.byte	0x17
	.4byte	0x593
	.4byte	.LLST28
	.byte	0x17
	.4byte	0x587
	.4byte	.LLST29
	.byte	0
	.byte	0
	.byte	0xb
	.4byte	.LASF28
	.byte	0x1
	.byte	0x22
	.byte	0x6
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x1
	.byte	0x9c
	.4byte	0x57a
	.byte	0xd
	.4byte	.LASF18
	.byte	0x1
	.byte	0x22
	.byte	0x26
	.4byte	0xb8
	.byte	0x1
	.byte	0x5a
	.byte	0xc
	.4byte	.LASF19
	.byte	0x1
	.byte	0x22
	.byte	0x36
	.4byte	0xa0
	.4byte	.LLST0
	.byte	0xd
	.4byte	.LASF20
	.byte	0x1
	.byte	0x22
	.byte	0x48
	.4byte	0xa0
	.byte	0x1
	.byte	0x5c
	.byte	0xe
	.string	"val"
	.byte	0x1
	.byte	0x24
	.byte	0x14
	.4byte	0xbe
	.byte	0x2
	.byte	0x91
	.byte	0x78
	.byte	0xf
	.4byte	.LASF21
	.byte	0x1
	.byte	0x25
	.byte	0xd
	.4byte	0xa0
	.4byte	.LLST1
	.byte	0xf
	.4byte	.LASF22
	.byte	0x1
	.byte	0x26
	.byte	0xa
	.4byte	0xac
	.4byte	.LLST2
	.byte	0xe
	.string	"npc"
	.byte	0x1
	.byte	0x27
	.byte	0xd
	.4byte	0xa0
	.byte	0x1
	.byte	0x6c
	.byte	0x13
	.4byte	.LASF23
	.byte	0x1
	.byte	0x28
	.byte	0xd
	.4byte	0xa0
	.byte	0x1
	.byte	0x61
	.byte	0xf
	.4byte	.LASF29
	.byte	0x1
	.byte	0x2a
	.byte	0x7
	.4byte	0x86
	.4byte	.LLST3
	.byte	0x10
	.string	"fp"
	.byte	0x1
	.byte	0x2a
	.byte	0x12
	.4byte	0x86
	.4byte	.LLST4
	.byte	0x10
	.string	"len"
	.byte	0x1
	.byte	0x2a
	.byte	0x1a
	.4byte	0x86
	.4byte	.LLST5
	.byte	0x15
	.4byte	.LBB52
	.4byte	.LBE52-.LBB52
	.4byte	0x452
	.byte	0x13
	.4byte	.LASF26
	.byte	0x1
	.byte	0x28
	.byte	0x25
	.4byte	0x6c
	.byte	0x1
	.byte	0x61
	.byte	0
	.byte	0x11
	.4byte	.Ldebug_ranges0+0x30
	.4byte	0x4ad
	.byte	0x10
	.string	"i"
	.byte	0x1
	.byte	0x60
	.byte	0x11
	.4byte	0x94
	.4byte	.LLST14
	.byte	0x1e
	.4byte	0x6b0
	.4byte	.LBB56
	.4byte	.Ldebug_ranges0+0x48
	.byte	0x1
	.byte	0x61
	.byte	0x14
	.byte	0x17
	.4byte	0x6cd
	.4byte	.LLST15
	.byte	0x17
	.4byte	0x6c1
	.4byte	.LLST16
	.byte	0x1b
	.4byte	.Ldebug_ranges0+0x48
	.byte	0x18
	.4byte	0x6d9
	.byte	0x1
	.byte	0x5b
	.byte	0x18
	.4byte	0x6e5
	.byte	0x1
	.byte	0x5c
	.byte	0x18
	.4byte	0x6f1
	.byte	0x1
	.byte	0x5d
	.byte	0x1c
	.4byte	0x6fd
	.byte	0
	.byte	0
	.byte	0
	.byte	0x15
	.4byte	.LBB61
	.4byte	.LBE61-.LBB61
	.4byte	0x4cb
	.byte	0xf
	.4byte	.LASF24
	.byte	0x1
	.byte	0x64
	.byte	0xe
	.4byte	0x86
	.4byte	.LLST17
	.byte	0
	.byte	0x19
	.4byte	0x5e2
	.4byte	.LBB44
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x26
	.byte	0x11
	.4byte	0x51d
	.byte	0x17
	.4byte	0x5ff
	.4byte	.LLST6
	.byte	0x17
	.4byte	0x5f3
	.4byte	.LLST7
	.byte	0x1b
	.4byte	.Ldebug_ranges0+0
	.byte	0x18
	.4byte	0x60b
	.byte	0x1
	.byte	0x5b
	.byte	0x18
	.4byte	0x617
	.byte	0x1
	.byte	0x5c
	.byte	0x18
	.4byte	0x623
	.byte	0x1
	.byte	0x5d
	.byte	0x1c
	.4byte	0x62f
	.byte	0x1d
	.4byte	0x63b
	.byte	0x3
	.byte	0x1c
	.4byte	0x647
	.byte	0
	.byte	0
	.byte	0x19
	.4byte	0x5c4
	.4byte	.LBB47
	.4byte	.Ldebug_ranges0+0x18
	.byte	0x1
	.byte	0x27
	.byte	0x1a
	.4byte	0x53b
	.byte	0x17
	.4byte	0x5d5
	.4byte	.LLST8
	.byte	0
	.byte	0x16
	.4byte	0x57a
	.4byte	.LBB53
	.4byte	.LBE53-.LBB53
	.byte	0x1
	.byte	0x5c
	.byte	0xc
	.byte	0x17
	.4byte	0x5b7
	.4byte	.LLST9
	.byte	0x17
	.4byte	0x5ab
	.4byte	.LLST10
	.byte	0x17
	.4byte	0x59f
	.4byte	.LLST11
	.byte	0x17
	.4byte	0x593
	.4byte	.LLST12
	.byte	0x17
	.4byte	0x587
	.4byte	.LLST13
	.byte	0
	.byte	0
	.byte	0x1f
	.4byte	.LASF41
	.byte	0x1
	.byte	0x1c
	.byte	0x6
	.byte	0x1
	.4byte	0x5c4
	.byte	0x20
	.4byte	.LASF18
	.byte	0x1
	.byte	0x1c
	.byte	0x24
	.4byte	0xb8
	.byte	0x20
	.4byte	.LASF19
	.byte	0x1
	.byte	0x1c
	.byte	0x34
	.4byte	0xa0
	.byte	0x20
	.4byte	.LASF20
	.byte	0x1
	.byte	0x1c
	.byte	0x46
	.4byte	0xa0
	.byte	0x20
	.4byte	.LASF21
	.byte	0x1
	.byte	0x1c
	.byte	0x56
	.4byte	0xa0
	.byte	0x20
	.4byte	.LASF22
	.byte	0x1
	.byte	0x1c
	.byte	0x66
	.4byte	0xac
	.byte	0
	.byte	0x21
	.4byte	.LASF30
	.byte	0x1
	.byte	0x17
	.byte	0x13
	.4byte	0x86
	.byte	0x3
	.4byte	0x5e2
	.byte	0x20
	.4byte	.LASF22
	.byte	0x1
	.byte	0x17
	.byte	0x21
	.4byte	0x3f
	.byte	0
	.byte	0x21
	.4byte	.LASF31
	.byte	0x2
	.byte	0x45
	.byte	0x38
	.4byte	0xa0
	.byte	0x3
	.4byte	0x654
	.byte	0x20
	.4byte	.LASF20
	.byte	0x2
	.byte	0x45
	.byte	0x4b
	.4byte	0xa0
	.byte	0x20
	.4byte	.LASF21
	.byte	0x2
	.byte	0x45
	.byte	0x5c
	.4byte	0xb8
	.byte	0x22
	.4byte	.LASF32
	.byte	0x2
	.byte	0x47
	.byte	0x16
	.4byte	0xa0
	.byte	0x22
	.4byte	.LASF33
	.byte	0x2
	.byte	0x48
	.byte	0x16
	.4byte	0xa0
	.byte	0x22
	.4byte	.LASF34
	.byte	0x2
	.byte	0x49
	.byte	0x16
	.4byte	0xa0
	.byte	0x14
	.string	"val"
	.byte	0x2
	.byte	0x4a
	.byte	0xd
	.4byte	0xa0
	.byte	0x22
	.4byte	.LASF35
	.byte	0x2
	.byte	0x52
	.byte	0xd
	.4byte	0xa0
	.byte	0x14
	.string	"tmp"
	.byte	0x2
	.byte	0x52
	.byte	0x1b
	.4byte	0xa0
	.byte	0
	.byte	0x23
	.4byte	.LASF42
	.byte	0x2
	.byte	0x2c
	.byte	0x14
	.byte	0x3
	.4byte	0x6aa
	.byte	0x20
	.4byte	.LASF23
	.byte	0x2
	.byte	0x2c
	.byte	0x2b
	.4byte	0x6aa
	.byte	0x24
	.string	"val"
	.byte	0x2
	.byte	0x2c
	.byte	0x39
	.4byte	0x4d
	.byte	0x20
	.4byte	.LASF20
	.byte	0x2
	.byte	0x2c
	.byte	0x48
	.4byte	0xa0
	.byte	0x22
	.4byte	.LASF32
	.byte	0x2
	.byte	0x2c
	.byte	0x63
	.4byte	0xa0
	.byte	0x22
	.4byte	.LASF33
	.byte	0x2
	.byte	0x2c
	.byte	0xa0
	.4byte	0xa0
	.byte	0x22
	.4byte	.LASF34
	.byte	0x2
	.byte	0x2c
	.byte	0xcd
	.4byte	0xa0
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x4d
	.byte	0x21
	.4byte	.LASF36
	.byte	0x2
	.byte	0x27
	.byte	0x17
	.4byte	0x4d
	.byte	0x3
	.4byte	0x70a
	.byte	0x20
	.4byte	.LASF23
	.byte	0x2
	.byte	0x27
	.byte	0x33
	.4byte	0x70a
	.byte	0x20
	.4byte	.LASF20
	.byte	0x2
	.byte	0x27
	.byte	0x43
	.4byte	0xa0
	.byte	0x22
	.4byte	.LASF32
	.byte	0x2
	.byte	0x27
	.byte	0x5e
	.4byte	0xa0
	.byte	0x22
	.4byte	.LASF33
	.byte	0x2
	.byte	0x27
	.byte	0x9b
	.4byte	0xa0
	.byte	0x22
	.4byte	.LASF34
	.byte	0x2
	.byte	0x27
	.byte	0xc8
	.4byte	0xa0
	.byte	0x14
	.string	"val"
	.byte	0x2
	.byte	0x27
	.byte	0xe6
	.4byte	0x4d
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x59
	.byte	0x25
	.4byte	0x57a
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x1
	.byte	0x9c
	.byte	0x26
	.4byte	0x587
	.byte	0x1
	.byte	0x5a
	.byte	0x26
	.4byte	0x593
	.byte	0x1
	.byte	0x5b
	.byte	0x26
	.4byte	0x59f
	.byte	0x1
	.byte	0x5c
	.byte	0x26
	.4byte	0x5ab
	.byte	0x1
	.byte	0x5d
	.byte	0x26
	.4byte	0x5b7
	.byte	0x1
	.byte	0x5e
	.byte	0
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
	.byte	0x8
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
	.byte	0x17
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
	.byte	0
	.byte	0
	.byte	0x9
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xb
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
	.byte	0xc
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
	.byte	0x18
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
	.byte	0x11
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0x1
	.byte	0x13
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
	.byte	0x1c
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
	.byte	0x15
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
	.byte	0x16
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
	.byte	0
	.byte	0
	.byte	0x17
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x18
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x19
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
	.byte	0x1a
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1b
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x1c
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1d
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x1e
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
	.byte	0x1f
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
	.byte	0x20
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x20
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
	.byte	0x21
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
	.byte	0x22
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
	.byte	0
	.byte	0
	.byte	0x23
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
	.byte	0x24
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
	.byte	0x25
	.byte	0x2e
	.byte	0x1
	.byte	0x31
	.byte	0x13
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
	.byte	0x26
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST18:
	.4byte	.LVL30
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL33
	.4byte	.LFE16
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL31
	.4byte	.LVL36
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LVL38
	.2byte	0x2
	.byte	0x37
	.byte	0x9f
	.4byte	.LVL38
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL32
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL48
	.4byte	.LFE16
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL32
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL48
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL51
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL54
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL38
	.4byte	.LVL40
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	.LVL40
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL49
	.4byte	.LVL51
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	.LVL52
	.4byte	.LFE16
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL41
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x61
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL49
	.4byte	.LVL51
	.2byte	0x3
	.byte	0x8
	.byte	0x7c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL52
	.4byte	.LVL54
	.2byte	0x3
	.byte	0x8
	.byte	0x7c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL41
	.4byte	.LVL43
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL43
	.4byte	.LVL45
	.2byte	0x8
	.byte	0x7f
	.byte	0
	.byte	0x91
	.byte	0
	.byte	0x1c
	.byte	0x23
	.byte	0x8
	.byte	0x9f
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x8
	.byte	0x7f
	.byte	0
	.byte	0x91
	.byte	0
	.byte	0x1c
	.byte	0x23
	.byte	0x9
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x8
	.byte	0x7f
	.byte	0
	.byte	0x91
	.byte	0
	.byte	0x1c
	.byte	0x23
	.byte	0x8
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x8
	.byte	0x7f
	.byte	0
	.byte	0x72
	.byte	0
	.byte	0x1c
	.byte	0x23
	.byte	0x8
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x60
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL32
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x2
	.byte	0x37
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL2
	.4byte	.LVL8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL10
	.2byte	0x2
	.byte	0x35
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL4
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL23
	.4byte	.LFE15
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL4
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL11
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL23
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x5
	.byte	0x80
	.byte	0
	.byte	0x37
	.byte	0x24
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x5
	.byte	0x80
	.byte	0
	.byte	0x37
	.byte	0x24
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LFE15
	.2byte	0x1
	.byte	0x60
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL7
	.4byte	.LVL11
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL23
	.4byte	.LFE15
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL7
	.4byte	.LVL11
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL23
	.4byte	.LVL27
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LFE15
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL11
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x7
	.byte	0x80
	.byte	0
	.byte	0x37
	.byte	0x25
	.byte	0x4f
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LFE15
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL12
	.4byte	.LVL14
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x6
	.byte	0x7f
	.byte	0
	.byte	0x81
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x6
	.byte	0x7f
	.byte	0
	.byte	0x81
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LVL19
	.2byte	0x7
	.byte	0x81
	.byte	0
	.byte	0x20
	.byte	0x7f
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL14
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL14
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x3
	.byte	0x7f
	.byte	0x7f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL20
	.4byte	.LVL22
	.2byte	0x3
	.byte	0x8
	.byte	0x7c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+971
	.byte	0
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x2
	.byte	0x35
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x5a
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
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB44
	.4byte	.LBE44
	.4byte	.LBB50
	.4byte	.LBE50
	.4byte	0
	.4byte	0
	.4byte	.LBB47
	.4byte	.LBE47
	.4byte	.LBB51
	.4byte	.LBE51
	.4byte	0
	.4byte	0
	.4byte	.LBB55
	.4byte	.LBE55
	.4byte	.LBB60
	.4byte	.LBE60
	.4byte	0
	.4byte	0
	.4byte	.LBB56
	.4byte	.LBE56
	.4byte	.LBB59
	.4byte	.LBE59
	.4byte	0
	.4byte	0
	.4byte	.LBB62
	.4byte	.LBE62
	.4byte	.LBB69
	.4byte	.LBE69
	.4byte	0
	.4byte	0
	.4byte	.LBB65
	.4byte	.LBE65
	.4byte	.LBB70
	.4byte	.LBE70
	.4byte	.LBB71
	.4byte	.LBE71
	.4byte	0
	.4byte	0
	.4byte	.LBB72
	.4byte	.LBE72
	.4byte	.LBB73
	.4byte	.LBE73
	.4byte	0
	.4byte	0
	.4byte	.LBB76
	.4byte	.LBE76
	.4byte	.LBB77
	.4byte	.LBE77
	.4byte	0
	.4byte	0
	.4byte	.LBB78
	.4byte	.LBE78
	.4byte	.LBB82
	.4byte	.LBE82
	.4byte	0
	.4byte	0
	.4byte	.LBB79
	.4byte	.LBE79
	.4byte	.LBB83
	.4byte	.LBE83
	.4byte	0
	.4byte	0
	.4byte	.LBB86
	.4byte	.LBE86
	.4byte	.LBB87
	.4byte	.LBE87
	.4byte	0
	.4byte	0
	.4byte	.LBB88
	.4byte	.LBE88
	.4byte	.LBB89
	.4byte	.LBE89
	.4byte	0
	.4byte	0
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF41:
	.string	"truly_illegal_insn"
.LASF16:
	.string	"intx"
.LASF13:
	.string	"uintptr_t"
.LASF34:
	.string	"__mstatus"
.LASF23:
	.string	"addr"
.LASF32:
	.string	"__mstatus_adjust"
.LASF35:
	.string	"rvc_mask"
.LASF9:
	.string	"uint64_t"
.LASF40:
	.string	"byte_array"
.LASF28:
	.string	"misaligned_load_trap"
.LASF22:
	.string	"insn"
.LASF30:
	.string	"insn_len"
.LASF6:
	.string	"unsigned char"
.LASF33:
	.string	"__mepc"
.LASF8:
	.string	"long unsigned int"
.LASF19:
	.string	"mcause"
.LASF7:
	.string	"short unsigned int"
.LASF39:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/freertos_riscv_ram"
.LASF18:
	.string	"regs"
.LASF37:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -O2 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
.LASF20:
	.string	"mepc"
.LASF27:
	.string	"misaligned_store_trap"
.LASF36:
	.string	"load_uint8_t"
.LASF12:
	.string	"intptr_t"
.LASF11:
	.string	"unsigned int"
.LASF42:
	.string	"store_uint8_t"
.LASF10:
	.string	"long long unsigned int"
.LASF5:
	.string	"uint8_t"
.LASF4:
	.string	"int32_t"
.LASF3:
	.string	"long long int"
.LASF14:
	.string	"insn_t"
.LASF24:
	.string	"mask"
.LASF25:
	.string	"value"
.LASF26:
	.string	"__tmp"
.LASF1:
	.string	"short int"
.LASF31:
	.string	"get_insn"
.LASF21:
	.string	"mstatus"
.LASF29:
	.string	"shift"
.LASF2:
	.string	"long int"
.LASF38:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/misaligned/misaligned_ldst.c"
.LASF15:
	.string	"bytes"
.LASF0:
	.string	"signed char"
.LASF17:
	.string	"int64"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
