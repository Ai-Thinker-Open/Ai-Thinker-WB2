	.file	"wpabuf.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.wpabuf_alloc,"ax",@progbits
	.align	1
	.globl	wpabuf_alloc
	.type	wpabuf_alloc, @function
wpabuf_alloc:
.LFB71:
	.file 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/utils/wpabuf.c"
	.loc 1 117 1
	.cfi_startproc
.LVL0:
	.loc 1 127 2
	.loc 1 117 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	.loc 1 127 40
	addi	a1,a0,12
	.cfi_offset 8, -8
	.loc 1 117 1
	mv	s0,a0
	.loc 1 127 40
	li	a0,1
.LVL1:
	.loc 1 117 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 127 40
	call	wpa_supplicant_zalloc
.LVL2:
	.loc 1 128 2 is_stmt 1
	.loc 1 128 5 is_stmt 0
	beq	a0,zero,.L1
	.loc 1 132 2 is_stmt 1
	.loc 1 132 12 is_stmt 0
	sw	s0,0(a0)
	.loc 1 133 2 is_stmt 1
.L1:
	.loc 1 134 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
.LVL3:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE71:
	.size	wpabuf_alloc, .-wpabuf_alloc
	.section	.text.wpabuf_resize,"ax",@progbits
	.align	1
	.globl	wpabuf_resize
	.type	wpabuf_resize, @function
wpabuf_resize:
.LFB70:
	.loc 1 53 1 is_stmt 1
	.cfi_startproc
.LVL4:
	.loc 1 54 2
	.loc 1 53 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s1,4(sp)
	sw	s2,0(sp)
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.loc 1 54 17
	lw	s0,0(a0)
.LVL5:
	.loc 1 59 2 is_stmt 1
	.loc 1 53 1 is_stmt 0
	mv	s2,a0
	mv	s1,a1
	.loc 1 59 5
	bne	s0,zero,.L8
	.loc 1 60 3 is_stmt 1
	.loc 1 60 11 is_stmt 0
	mv	a0,a1
.LVL6:
	call	wpabuf_alloc
.LVL7:
	.loc 1 60 9
	sw	a0,0(s2)
	.loc 1 61 3 is_stmt 1
	.loc 1 61 28 is_stmt 0
	seqz	a0,a0
	neg	a0,a0
.LVL8:
.L7:
	.loc 1 108 1
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	lw	s1,4(sp)
	.cfi_restore 9
.LVL9:
	lw	s2,0(sp)
	.cfi_restore 18
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL10:
.L8:
	.cfi_restore_state
	.loc 1 73 2 is_stmt 1
	.loc 1 73 16 is_stmt 0
	lw	a1,4(s0)
	.loc 1 73 5
	lw	a5,0(s0)
	.loc 1 107 9
	li	a0,0
.LVL11:
	.loc 1 73 16
	add	a1,s1,a1
	.loc 1 73 5
	bleu	a1,a5,.L7
.LBB26:
	.loc 1 74 3 is_stmt 1
	.loc 1 75 3
	.loc 1 75 10 is_stmt 0
	lw	a0,8(s0)
	.loc 1 75 6
	beq	a0,zero,.L10
	.loc 1 76 4 is_stmt 1
	.loc 1 76 27 is_stmt 0
	call	wpa_supplicant_realloc
.LVL12:
	mv	s2,a0
.LVL13:
	.loc 1 77 4 is_stmt 1
	.loc 1 77 7 is_stmt 0
	bne	a0,zero,.L11
.LVL14:
.L13:
	.loc 1 78 12
	li	a0,-1
.LVL15:
	j	.L7
.LVL16:
.L11:
	.loc 1 79 4 is_stmt 1
	.loc 1 79 16 is_stmt 0
	lw	a0,4(s0)
.LVL17:
	.loc 1 79 4
	mv	a2,s1
	li	a1,0
	add	a0,s2,a0
	call	memset
.LVL18:
	.loc 1 80 4 is_stmt 1
	.loc 1 80 18 is_stmt 0
	sw	s2,8(s0)
.LVL19:
.L12:
	.loc 1 104 3 is_stmt 1
	.loc 1 104 25 is_stmt 0
	lw	a1,4(s0)
.LBE26:
	.loc 1 107 9
	li	a0,0
.LBB27:
	.loc 1 104 25
	add	a1,a1,s1
	.loc 1 104 13
	sw	a1,0(s0)
	j	.L7
.LVL20:
.L10:
	.loc 1 94 4 is_stmt 1
	.loc 1 94 27 is_stmt 0
	mv	a0,s0
	addi	a1,a1,12
	call	wpa_supplicant_realloc
.LVL21:
	mv	s0,a0
.LVL22:
	.loc 1 96 4 is_stmt 1
	.loc 1 96 7 is_stmt 0
	beq	a0,zero,.L13
	.loc 1 98 4 is_stmt 1
.LVL23:
	.loc 1 99 4
	.loc 1 99 40 is_stmt 0
	lw	a0,4(a0)
	.loc 1 99 4
	mv	a2,s1
	li	a1,0
	.loc 1 99 40
	addi	a0,a0,12
	.loc 1 99 4
	add	a0,s0,a0
	call	memset
.LVL24:
	.loc 1 102 4 is_stmt 1
	.loc 1 102 10 is_stmt 0
	sw	s0,0(s2)
	j	.L12
.LBE27:
	.cfi_endproc
.LFE70:
	.size	wpabuf_resize, .-wpabuf_resize
	.section	.text.wpabuf_alloc_ext_data,"ax",@progbits
	.align	1
	.globl	wpabuf_alloc_ext_data
	.type	wpabuf_alloc_ext_data, @function
wpabuf_alloc_ext_data:
.LFB72:
	.loc 1 137 1 is_stmt 1
	.cfi_startproc
.LVL25:
	.loc 1 147 2
	.loc 1 137 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	s1,4(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	mv	s0,a1
	mv	s1,a0
	.loc 1 147 40
	li	a1,12
.LVL26:
	li	a0,1
.LVL27:
	.loc 1 137 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 147 40
	call	wpa_supplicant_zalloc
.LVL28:
	.loc 1 148 2 is_stmt 1
	.loc 1 148 5 is_stmt 0
	beq	a0,zero,.L19
	.loc 1 152 2 is_stmt 1
	.loc 1 152 12 is_stmt 0
	sw	s0,0(a0)
	.loc 1 153 2 is_stmt 1
	.loc 1 153 12 is_stmt 0
	sw	s0,4(a0)
	.loc 1 154 2 is_stmt 1
	.loc 1 154 16 is_stmt 0
	sw	s1,8(a0)
	.loc 1 156 2 is_stmt 1
.L19:
	.loc 1 157 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
.LVL29:
	lw	s1,4(sp)
	.cfi_restore 9
.LVL30:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE72:
	.size	wpabuf_alloc_ext_data, .-wpabuf_alloc_ext_data
	.section	.text.wpabuf_free,"ax",@progbits
	.align	1
	.globl	wpabuf_free
	.type	wpabuf_free, @function
wpabuf_free:
.LFB75:
	.loc 1 183 1 is_stmt 1
	.cfi_startproc
.LVL31:
	.loc 1 197 2
	.loc 1 197 5 is_stmt 0
	beq	a0,zero,.L25
	.loc 1 183 1
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	mv	s0,a0
.LVL32:
.LBB30:
.LBB31:
	.loc 1 199 2 is_stmt 1
	lw	a0,8(a0)
.LVL33:
	call	wpa_supplicant_free
.LVL34:
	.loc 1 200 2
	mv	a0,s0
.LBE31:
.LBE30:
	.loc 1 202 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_restore 8
.LVL35:
	lw	ra,12(sp)
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
.LBB33:
.LBB32:
	.loc 1 200 2
	tail	wpa_supplicant_free
.LVL36:
.L25:
	ret
.LBE32:
.LBE33:
	.cfi_endproc
.LFE75:
	.size	wpabuf_free, .-wpabuf_free
	.section	.text.wpabuf_put,"ax",@progbits
	.align	1
	.globl	wpabuf_put
	.type	wpabuf_put, @function
wpabuf_put:
.LFB76:
	.loc 1 206 1 is_stmt 1
	.cfi_startproc
.LVL37:
	.loc 1 207 2
	.file 2 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/include/utils/wpabuf.h"
	.loc 2 105 2
.LBB40:
.LBB41:
.LBB42:
	.loc 2 81 2
	.loc 2 81 9 is_stmt 0
	lw	a5,8(a0)
	.loc 2 81 5
	bne	a5,zero,.L31
	.loc 2 83 2 is_stmt 1
	.loc 2 83 13 is_stmt 0
	addi	a5,a0,12
.L31:
.LVL38:
.LBE42:
.LBE41:
.LBE40:
.LBB43:
.LBB44:
	.loc 2 61 2 is_stmt 1
	.loc 2 61 12 is_stmt 0
	lw	a4,4(a0)
.LVL39:
.LBE44:
.LBE43:
	.loc 1 208 2 is_stmt 1
	.loc 1 208 12 is_stmt 0
	add	a1,a1,a4
.LVL40:
	sw	a1,4(a0)
	.loc 1 209 2 is_stmt 1
	.loc 1 212 2
	.loc 1 213 1 is_stmt 0
	add	a0,a5,a4
.LVL41:
	ret
	.cfi_endproc
.LFE76:
	.size	wpabuf_put, .-wpabuf_put
	.section	.text.wpabuf_put_data,"ax",@progbits
	.align	1
	.type	wpabuf_put_data, @function
wpabuf_put_data:
.LFB65:
	.loc 2 146 1 is_stmt 1
	.cfi_startproc
.LVL42:
	.loc 2 147 2
	.loc 2 147 5 is_stmt 0
	beq	a1,zero,.L32
	.loc 2 146 1
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	.cfi_offset 8, -8
	mv	s0,a1
.LVL43:
.LBB47:
.LBB48:
	.loc 2 148 3 is_stmt 1
	mv	a1,a2
.LVL44:
.LBE48:
.LBE47:
	.loc 2 146 1 is_stmt 0
	sw	ra,28(sp)
	.cfi_offset 1, -4
.LBB52:
.LBB49:
	.loc 2 148 3
	sw	a2,12(sp)
	call	wpabuf_put
.LVL45:
	mv	a1,s0
.LBE49:
.LBE52:
	.loc 2 149 1
	lw	s0,24(sp)
	.cfi_restore 8
.LVL46:
.LBB53:
.LBB50:
	.loc 2 148 3
	lw	a2,12(sp)
.LBE50:
.LBE53:
	.loc 2 149 1
	lw	ra,28(sp)
	.cfi_restore 1
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
.LVL47:
.LBB54:
.LBB51:
	.loc 2 148 3
	tail	memcpy
.LVL48:
.L32:
	ret
.LBE51:
.LBE54:
	.cfi_endproc
.LFE65:
	.size	wpabuf_put_data, .-wpabuf_put_data
	.section	.text.wpabuf_alloc_copy,"ax",@progbits
	.align	1
	.globl	wpabuf_alloc_copy
	.type	wpabuf_alloc_copy, @function
wpabuf_alloc_copy:
.LFB73:
	.loc 1 161 1 is_stmt 1
	.cfi_startproc
.LVL49:
	.loc 1 162 2
	.loc 1 161 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s1,20(sp)
	.cfi_offset 9, -12
	mv	s1,a0
	.loc 1 162 23
	mv	a0,a1
.LVL50:
	.loc 1 161 1
	sw	s0,24(sp)
	sw	ra,28(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	.loc 1 162 23
	sw	a1,12(sp)
	call	wpabuf_alloc
.LVL51:
	mv	s0,a0
.LVL52:
	.loc 1 163 2 is_stmt 1
	.loc 1 163 5 is_stmt 0
	beq	a0,zero,.L37
	.loc 1 164 3 is_stmt 1
	lw	a2,12(sp)
	mv	a1,s1
	call	wpabuf_put_data
.LVL53:
	.loc 1 165 2
.L37:
	.loc 1 166 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_restore 1
	mv	a0,s0
	lw	s0,24(sp)
	.cfi_restore 8
.LVL54:
	lw	s1,20(sp)
	.cfi_restore 9
.LVL55:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
.LVL56:
	jr	ra
	.cfi_endproc
.LFE73:
	.size	wpabuf_alloc_copy, .-wpabuf_alloc_copy
	.section	.text.wpabuf_dup,"ax",@progbits
	.align	1
	.globl	wpabuf_dup
	.type	wpabuf_dup, @function
wpabuf_dup:
.LFB74:
	.loc 1 170 1 is_stmt 1
	.cfi_startproc
.LVL57:
	.loc 1 171 2
.LBB61:
.LBB62:
	.loc 2 61 2
.LBE62:
.LBE61:
	.loc 1 170 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	ra,28(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	.loc 1 170 1
	mv	s0,a0
	.loc 1 171 23
	lw	a0,4(a0)
.LVL58:
	call	wpabuf_alloc
.LVL59:
	.loc 1 172 2 is_stmt 1
	.loc 1 172 5 is_stmt 0
	beq	a0,zero,.L43
	.loc 1 173 3 is_stmt 1
.LVL60:
.LBB63:
.LBB64:
	.loc 2 81 2
	.loc 2 81 9 is_stmt 0
	lw	a1,8(s0)
	.loc 2 81 5
	bne	a1,zero,.L45
	.loc 2 83 2 is_stmt 1
	.loc 2 83 13 is_stmt 0
	addi	a1,s0,12
.L45:
.LVL61:
.LBE64:
.LBE63:
.LBB65:
.LBB66:
	.loc 2 61 2 is_stmt 1
.LBE66:
.LBE65:
	.loc 1 173 3 is_stmt 0
	lw	a2,4(s0)
	sw	a0,12(sp)
	call	wpabuf_put_data
.LVL62:
	lw	a0,12(sp)
	.loc 1 174 2 is_stmt 1
.LVL63:
.L43:
	.loc 1 175 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
.LVL64:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE74:
	.size	wpabuf_dup, .-wpabuf_dup
	.section	.text.wpabuf_put_buf,"ax",@progbits
	.align	1
	.type	wpabuf_put_buf, @function
wpabuf_put_buf:
.LFB66:
	.loc 2 153 1 is_stmt 1
	.cfi_startproc
.LVL65:
	.loc 2 154 2
.LBB71:
.LBB72:
	.loc 2 81 2
.LBE72:
.LBE71:
	.loc 2 153 1 is_stmt 0
	mv	a5,a1
.LBB74:
.LBB73:
	.loc 2 81 9
	lw	a1,8(a1)
.LVL66:
	.loc 2 81 5
	bne	a1,zero,.L51
	.loc 2 83 2 is_stmt 1
	.loc 2 83 13 is_stmt 0
	addi	a1,a5,12
.L51:
.LVL67:
.LBE73:
.LBE74:
.LBB75:
.LBB76:
	.loc 2 61 2 is_stmt 1
.LBE76:
.LBE75:
	.loc 2 154 2 is_stmt 0
	lw	a2,4(a5)
	tail	wpabuf_put_data
.LVL68:
	.cfi_endproc
.LFE66:
	.size	wpabuf_put_buf, .-wpabuf_put_buf
	.section	.text.wpabuf_concat,"ax",@progbits
	.align	1
	.globl	wpabuf_concat
	.type	wpabuf_concat, @function
wpabuf_concat:
.LFB77:
	.loc 1 226 1 is_stmt 1
	.cfi_startproc
.LVL69:
	.loc 1 227 2
	.loc 1 228 2
	.loc 1 230 2
	.loc 1 226 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	sw	s1,4(sp)
	sw	s2,0(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.loc 1 226 1
	mv	s0,a0
	.loc 1 230 5
	beq	a1,zero,.L53
	mv	s1,a1
	.loc 1 233 2 is_stmt 1
	.loc 1 228 9 is_stmt 0
	li	a5,0
	.loc 1 233 5
	beq	a0,zero,.L54
	.loc 1 234 3 is_stmt 1
.LVL70:
.LBB77:
.LBB78:
	.loc 2 61 2
	.loc 2 61 12 is_stmt 0
	lw	a5,4(a0)
.LVL71:
.L54:
.LBE78:
.LBE77:
	.loc 1 235 2 is_stmt 1
	.loc 1 236 3
.LBB79:
.LBB80:
	.loc 2 61 2
.LBE80:
.LBE79:
	.loc 1 238 2
	.loc 1 236 7 is_stmt 0
	lw	a0,4(s1)
.LVL72:
	.loc 1 238 6
	add	a0,a5,a0
.LVL73:
	call	wpabuf_alloc
.LVL74:
	mv	s2,a0
.LVL75:
	.loc 1 239 2 is_stmt 1
	.loc 1 239 5 is_stmt 0
	beq	a0,zero,.L55
	.loc 1 240 3 is_stmt 1
	.loc 1 240 6 is_stmt 0
	beq	s0,zero,.L56
	.loc 1 241 4 is_stmt 1
	mv	a1,s0
	call	wpabuf_put_buf
.LVL76:
.L56:
	.loc 1 242 3
	.loc 1 243 4
	mv	a1,s1
	mv	a0,s2
	call	wpabuf_put_buf
.LVL77:
.L55:
	.loc 1 246 2
	mv	a0,s0
	call	wpabuf_free
.LVL78:
	.loc 1 247 2
	mv	a0,s1
	call	wpabuf_free
.LVL79:
	.loc 1 249 2
	.loc 1 238 6 is_stmt 0
	mv	s0,s2
.LVL80:
.L53:
	.loc 1 250 1
	lw	ra,12(sp)
	.cfi_restore 1
	mv	a0,s0
	lw	s0,8(sp)
	.cfi_restore 8
	lw	s1,4(sp)
	.cfi_restore 9
	lw	s2,0(sp)
	.cfi_restore 18
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE77:
	.size	wpabuf_concat, .-wpabuf_concat
	.section	.text.wpabuf_zeropad,"ax",@progbits
	.align	1
	.globl	wpabuf_zeropad
	.type	wpabuf_zeropad, @function
wpabuf_zeropad:
.LFB78:
	.loc 1 266 1 is_stmt 1
	.cfi_startproc
.LVL81:
	.loc 1 267 2
	.loc 1 268 2
	.loc 1 270 2
	.loc 1 266 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	ra,28(sp)
	sw	s1,20(sp)
	sw	s2,16(sp)
	sw	s3,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.loc 1 266 1
	mv	s0,a0
	.loc 1 270 5
	beq	a0,zero,.L69
.LBB81:
.LBB82:
	.loc 2 61 12
	lw	s3,4(a0)
	mv	s1,a1
.LBE82:
.LBE81:
	.loc 1 273 2 is_stmt 1
.LVL82:
.LBB84:
.LBB83:
	.loc 2 61 2
.LBE83:
.LBE84:
	.loc 1 274 2
	.loc 1 274 5 is_stmt 0
	bgeu	s3,a1,.L69
	.loc 1 277 2 is_stmt 1
	.loc 1 277 8 is_stmt 0
	mv	a0,a1
.LVL83:
	call	wpabuf_alloc
.LVL84:
	mv	s2,a0
.LVL85:
	.loc 1 278 2 is_stmt 1
	.loc 1 278 5 is_stmt 0
	beq	a0,zero,.L70
	.loc 1 279 3 is_stmt 1
	sub	s1,s1,s3
.LVL86:
	mv	a1,s1
	call	wpabuf_put
.LVL87:
	li	a1,0
	mv	a2,s1
	call	memset
.LVL88:
	.loc 1 280 3
	mv	a1,s0
	mv	a0,s2
	call	wpabuf_put_buf
.LVL89:
.L70:
	.loc 1 282 2
	mv	a0,s0
	call	wpabuf_free
.LVL90:
	.loc 1 284 2
	.loc 1 277 8 is_stmt 0
	mv	s0,s2
.LVL91:
.L69:
	.loc 1 285 1
	lw	ra,28(sp)
	.cfi_restore 1
	mv	a0,s0
	lw	s0,24(sp)
	.cfi_restore 8
	lw	s1,20(sp)
	.cfi_restore 9
	lw	s2,16(sp)
	.cfi_restore 18
	lw	s3,12(sp)
	.cfi_restore 19
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE78:
	.size	wpabuf_zeropad, .-wpabuf_zeropad
	.section	.text.wpabuf_printf,"ax",@progbits
	.align	1
	.globl	wpabuf_printf
	.type	wpabuf_printf, @function
wpabuf_printf:
.LFB79:
	.loc 1 288 1 is_stmt 1
	.cfi_startproc
.LVL92:
	.loc 1 289 2
	.loc 1 290 2
	.loc 2 105 2
.LBB91:
.LBB92:
.LBB93:
	.loc 2 81 2
.LBE93:
.LBE92:
.LBE91:
	.loc 1 288 1 is_stmt 0
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	s0,24(sp)
	sw	ra,28(sp)
	.cfi_offset 8, -40
	.cfi_offset 1, -36
	.loc 1 288 1
	sw	a2,40(sp)
	sw	a3,44(sp)
	sw	a4,48(sp)
	sw	a5,52(sp)
	sw	a6,56(sp)
	sw	a7,60(sp)
.LBB98:
.LBB96:
.LBB94:
	.loc 2 81 9
	lw	a5,8(a0)
.LBE94:
.LBE96:
.LBE98:
	.loc 1 288 1
	mv	s0,a0
.LBB99:
.LBB97:
.LBB95:
	.loc 2 81 5
	bne	a5,zero,.L79
	.loc 2 83 2 is_stmt 1
	.loc 2 83 13 is_stmt 0
	addi	a5,a0,12
.L79:
.LVL93:
.LBE95:
.LBE97:
.LBE99:
.LBB100:
.LBB101:
	.loc 2 61 2 is_stmt 1
.LBE101:
.LBE100:
	.loc 1 290 8 is_stmt 0
	lw	a0,4(s0)
.LVL94:
	.loc 1 291 2 is_stmt 1
	.loc 1 293 1
	.loc 1 294 15 is_stmt 0
	lw	a4,0(s0)
	.loc 1 293 1
	addi	a3,sp,40
	.loc 1 294 15
	mv	a2,a1
	sub	a1,a4,a0
.LVL95:
	add	a0,a5,a0
.LVL96:
	.loc 1 293 1
	sw	a3,12(sp)
	.loc 1 294 9 is_stmt 1
	.loc 1 294 15 is_stmt 0
	call	vsnprintf
.LVL97:
	.loc 1 295 1 is_stmt 1
	.loc 1 296 2
	.loc 1 297 3
	.loc 1 46 2
	.loc 1 46 6
	.loc 1 46 13
	.loc 1 298 2
	.loc 1 298 12 is_stmt 0
	lw	a5,4(s0)
	.loc 1 299 1
	lw	ra,28(sp)
	.cfi_restore 1
	.loc 1 298 12
	add	a5,a5,a0
	sw	a5,4(s0)
	.loc 1 299 1
	lw	s0,24(sp)
	.cfi_restore 8
.LVL98:
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE79:
	.size	wpabuf_printf, .-wpabuf_printf
	.text
.Letext0:
	.file 3 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h"
	.file 4 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 5 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdarg.h"
	.file 6 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h"
	.file 7 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 8 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h"
	.file 9 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/port/include/os.h"
	.file 10 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/utils/common.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x989
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF43
	.byte	0xc
	.4byte	.LASF44
	.4byte	.LASF45
	.4byte	.Ldebug_ranges0+0xa8
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.4byte	.LASF2
	.byte	0x3
	.byte	0xd1
	.byte	0x16
	.4byte	0x31
	.byte	0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1
	.byte	0x2
	.4byte	.LASF3
	.byte	0x4
	.byte	0x2b
	.byte	0x17
	.4byte	0x52
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF4
	.byte	0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF5
	.byte	0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF6
	.byte	0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
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
	.byte	0x5
	.byte	0x4
	.byte	0x6
	.byte	0x4
	.4byte	.LASF46
	.byte	0x7
	.byte	0x4
	.4byte	0x52
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF11
	.byte	0x8
	.4byte	0x91
	.byte	0x7
	.byte	0x4
	.4byte	0x98
	.byte	0x7
	.byte	0x4
	.4byte	0xa9
	.byte	0x9
	.byte	0x2
	.4byte	.LASF12
	.byte	0x5
	.byte	0x28
	.byte	0x1b
	.4byte	0x85
	.byte	0x2
	.4byte	.LASF13
	.byte	0x6
	.byte	0x2e
	.byte	0x18
	.4byte	0xaa
	.byte	0x2
	.4byte	.LASF14
	.byte	0x7
	.byte	0x18
	.byte	0x13
	.4byte	0x46
	.byte	0xa
	.string	"u8"
	.byte	0xa
	.byte	0x16
	.byte	0x11
	.4byte	0xc2
	.byte	0xb
	.4byte	.LASF47
	.byte	0xc
	.byte	0x2
	.byte	0x17
	.byte	0x8
	.4byte	0x10e
	.byte	0xc
	.4byte	.LASF15
	.byte	0x2
	.byte	0x18
	.byte	0x9
	.4byte	0x25
	.byte	0
	.byte	0xc
	.4byte	.LASF16
	.byte	0x2
	.byte	0x19
	.byte	0x9
	.4byte	0x25
	.byte	0x4
	.byte	0xc
	.4byte	.LASF17
	.byte	0x2
	.byte	0x1a
	.byte	0x6
	.4byte	0x113
	.byte	0x8
	.byte	0
	.byte	0x8
	.4byte	0xd9
	.byte	0x7
	.byte	0x4
	.4byte	0xce
	.byte	0xd
	.4byte	.LASF48
	.byte	0x1
	.2byte	0x11f
	.byte	0x6
	.4byte	.LFB79
	.4byte	.LFE79-.LFB79
	.byte	0x1
	.byte	0x9c
	.4byte	0x1ee
	.byte	0xe
	.string	"buf"
	.byte	0x1
	.2byte	0x11f
	.byte	0x23
	.4byte	0x1ee
	.4byte	.LLST38
	.byte	0xe
	.string	"fmt"
	.byte	0x1
	.2byte	0x11f
	.byte	0x34
	.4byte	0x9d
	.4byte	.LLST39
	.byte	0xf
	.byte	0x10
	.string	"ap"
	.byte	0x1
	.2byte	0x121
	.byte	0xa
	.4byte	0xb6
	.byte	0x2
	.byte	0x91
	.byte	0x4c
	.byte	0x11
	.string	"tmp"
	.byte	0x1
	.2byte	0x122
	.byte	0x8
	.4byte	0x83
	.4byte	.LLST40
	.byte	0x10
	.string	"res"
	.byte	0x1
	.2byte	0x123
	.byte	0x6
	.4byte	0x38
	.byte	0x1
	.byte	0x5a
	.byte	0x12
	.4byte	0x7f0
	.4byte	.LBB91
	.4byte	.Ldebug_ranges0+0x88
	.byte	0x1
	.2byte	0x122
	.byte	0xe
	.4byte	0x1bb
	.byte	0x13
	.4byte	0x801
	.4byte	.LLST41
	.byte	0x14
	.4byte	0x82b
	.4byte	.LBB92
	.4byte	.Ldebug_ranges0+0x88
	.byte	0x2
	.byte	0x69
	.byte	0x9
	.byte	0x13
	.4byte	0x83c
	.4byte	.LLST41
	.byte	0
	.byte	0
	.byte	0x15
	.4byte	0x849
	.4byte	.LBB100
	.4byte	.LBE100-.LBB100
	.byte	0x1
	.2byte	0x122
	.byte	0x25
	.4byte	0x1d6
	.byte	0x16
	.4byte	0x85a
	.byte	0
	.byte	0x17
	.4byte	.LVL97
	.4byte	0x943
	.byte	0x18
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x18
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0xd9
	.byte	0x19
	.4byte	.LASF19
	.byte	0x1
	.2byte	0x109
	.byte	0x11
	.4byte	0x1ee
	.4byte	.LFB78
	.4byte	.LFE78-.LFB78
	.byte	0x1
	.byte	0x9c
	.4byte	0x2e0
	.byte	0xe
	.string	"buf"
	.byte	0x1
	.2byte	0x109
	.byte	0x2f
	.4byte	0x1ee
	.4byte	.LLST34
	.byte	0xe
	.string	"len"
	.byte	0x1
	.2byte	0x109
	.byte	0x3b
	.4byte	0x25
	.4byte	.LLST35
	.byte	0x11
	.string	"ret"
	.byte	0x1
	.2byte	0x10b
	.byte	0x11
	.4byte	0x1ee
	.4byte	.LLST36
	.byte	0x1a
	.4byte	.LASF18
	.byte	0x1
	.2byte	0x10c
	.byte	0x9
	.4byte	0x25
	.4byte	.LLST37
	.byte	0x12
	.4byte	0x849
	.4byte	.LBB81
	.4byte	.Ldebug_ranges0+0x70
	.byte	0x1
	.2byte	0x111
	.byte	0x9
	.4byte	0x26e
	.byte	0x16
	.4byte	0x85a
	.byte	0
	.byte	0x1b
	.4byte	.LVL84
	.4byte	0x60c
	.4byte	0x282
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x1b
	.4byte	.LVL87
	.4byte	0x3ce
	.4byte	0x29c
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x18
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x1b
	.4byte	.LVL88
	.4byte	0x950
	.4byte	0x2b5
	.byte	0x18
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x18
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x1b
	.4byte	.LVL89
	.4byte	0x746
	.4byte	0x2cf
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x18
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x17
	.4byte	.LVL90
	.4byte	0x46b
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0
	.byte	0x1c
	.4byte	.LASF20
	.byte	0x1
	.byte	0xe1
	.byte	0x11
	.4byte	0x1ee
	.4byte	.LFB77
	.4byte	.LFE77-.LFB77
	.byte	0x1
	.byte	0x9c
	.4byte	0x3ce
	.byte	0x1d
	.string	"a"
	.byte	0x1
	.byte	0xe1
	.byte	0x2e
	.4byte	0x1ee
	.4byte	.LLST29
	.byte	0x1d
	.string	"b"
	.byte	0x1
	.byte	0xe1
	.byte	0x40
	.4byte	0x1ee
	.4byte	.LLST30
	.byte	0x1e
	.string	"n"
	.byte	0x1
	.byte	0xe3
	.byte	0x11
	.4byte	0x1ee
	.4byte	.LLST31
	.byte	0x1e
	.string	"len"
	.byte	0x1
	.byte	0xe4
	.byte	0x9
	.4byte	0x25
	.4byte	.LLST32
	.byte	0x1f
	.4byte	0x849
	.4byte	.LBB77
	.4byte	.LBE77-.LBB77
	.byte	0x1
	.byte	0xea
	.byte	0xa
	.4byte	0x352
	.byte	0x13
	.4byte	0x85a
	.4byte	.LLST33
	.byte	0
	.byte	0x1f
	.4byte	0x849
	.4byte	.LBB79
	.4byte	.LBE79-.LBB79
	.byte	0x1
	.byte	0xec
	.byte	0xa
	.4byte	0x36c
	.byte	0x16
	.4byte	0x85a
	.byte	0
	.byte	0x20
	.4byte	.LVL74
	.4byte	0x60c
	.byte	0x1b
	.4byte	.LVL76
	.4byte	0x746
	.4byte	0x38f
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x18
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x1b
	.4byte	.LVL77
	.4byte	0x746
	.4byte	0x3a9
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x18
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x1b
	.4byte	.LVL78
	.4byte	0x46b
	.4byte	0x3bd
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x17
	.4byte	.LVL79
	.4byte	0x46b
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0
	.byte	0x1c
	.4byte	.LASF21
	.byte	0x1
	.byte	0xcd
	.byte	0x8
	.4byte	0x83
	.4byte	.LFB76
	.4byte	.LFE76-.LFB76
	.byte	0x1
	.byte	0x9c
	.4byte	0x46b
	.byte	0x1d
	.string	"buf"
	.byte	0x1
	.byte	0xcd
	.byte	0x22
	.4byte	0x1ee
	.4byte	.LLST9
	.byte	0x1d
	.string	"len"
	.byte	0x1
	.byte	0xcd
	.byte	0x2e
	.4byte	0x25
	.4byte	.LLST10
	.byte	0x1e
	.string	"tmp"
	.byte	0x1
	.byte	0xcf
	.byte	0x8
	.4byte	0x83
	.4byte	.LLST11
	.byte	0x1f
	.4byte	0x7f0
	.4byte	.LBB40
	.4byte	.LBE40-.LBB40
	.byte	0x1
	.byte	0xcf
	.byte	0xe
	.4byte	0x450
	.byte	0x13
	.4byte	0x801
	.4byte	.LLST12
	.byte	0x21
	.4byte	0x82b
	.4byte	.LBB41
	.4byte	.LBE41-.LBB41
	.byte	0x2
	.byte	0x69
	.byte	0x9
	.byte	0x13
	.4byte	0x83c
	.4byte	.LLST12
	.byte	0
	.byte	0
	.byte	0x21
	.4byte	0x849
	.4byte	.LBB43
	.4byte	.LBE43-.LBB43
	.byte	0x1
	.byte	0xcf
	.byte	0x25
	.byte	0x13
	.4byte	0x85a
	.4byte	.LLST14
	.byte	0
	.byte	0
	.byte	0x22
	.4byte	.LASF49
	.byte	0x1
	.byte	0xb6
	.byte	0x6
	.byte	0x1
	.4byte	0x485
	.byte	0x23
	.string	"buf"
	.byte	0x1
	.byte	0xb6
	.byte	0x21
	.4byte	0x1ee
	.byte	0
	.byte	0x1c
	.4byte	.LASF22
	.byte	0x1
	.byte	0xa9
	.byte	0x11
	.4byte	0x1ee
	.4byte	.LFB74
	.4byte	.LFE74-.LFB74
	.byte	0x1
	.byte	0x9c
	.4byte	0x52c
	.byte	0x1d
	.string	"src"
	.byte	0x1
	.byte	0xa9
	.byte	0x31
	.4byte	0x52c
	.4byte	.LLST23
	.byte	0x1e
	.string	"buf"
	.byte	0x1
	.byte	0xab
	.byte	0x11
	.4byte	0x1ee
	.4byte	.LLST24
	.byte	0x1f
	.4byte	0x849
	.4byte	.LBB61
	.4byte	.LBE61-.LBB61
	.byte	0x1
	.byte	0xab
	.byte	0x17
	.4byte	0x4d9
	.byte	0x16
	.4byte	0x85a
	.byte	0
	.byte	0x1f
	.4byte	0x82b
	.4byte	.LBB63
	.4byte	.LBE63-.LBB63
	.byte	0x1
	.byte	0xad
	.byte	0x3
	.4byte	0x4f7
	.byte	0x13
	.4byte	0x83c
	.4byte	.LLST25
	.byte	0
	.byte	0x1f
	.4byte	0x849
	.4byte	.LBB65
	.4byte	.LBE65-.LBB65
	.byte	0x1
	.byte	0xad
	.byte	0x3
	.4byte	0x511
	.byte	0x16
	.4byte	0x85a
	.byte	0
	.byte	0x20
	.4byte	.LVL59
	.4byte	0x60c
	.byte	0x17
	.4byte	.LVL62
	.4byte	0x7be
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0x6c
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x10e
	.byte	0x1c
	.4byte	.LASF23
	.byte	0x1
	.byte	0xa0
	.byte	0x11
	.4byte	0x1ee
	.4byte	.LFB73
	.4byte	.LFE73-.LFB73
	.byte	0x1
	.byte	0x9c
	.4byte	0x5af
	.byte	0x24
	.4byte	.LASF24
	.byte	0x1
	.byte	0xa0
	.byte	0x2f
	.4byte	0xa3
	.4byte	.LLST20
	.byte	0x1d
	.string	"len"
	.byte	0x1
	.byte	0xa0
	.byte	0x3c
	.4byte	0x25
	.4byte	.LLST21
	.byte	0x1e
	.string	"buf"
	.byte	0x1
	.byte	0xa2
	.byte	0x11
	.4byte	0x1ee
	.4byte	.LLST22
	.byte	0x1b
	.4byte	.LVL51
	.4byte	0x60c
	.4byte	0x591
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0x6c
	.byte	0x6
	.byte	0
	.byte	0x17
	.4byte	.LVL53
	.4byte	0x7be
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x18
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x18
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0x91
	.byte	0x6c
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0x1c
	.4byte	.LASF25
	.byte	0x1
	.byte	0x88
	.byte	0x11
	.4byte	0x1ee
	.4byte	.LFB72
	.4byte	.LFE72-.LFB72
	.byte	0x1
	.byte	0x9c
	.4byte	0x60c
	.byte	0x24
	.4byte	.LASF24
	.byte	0x1
	.byte	0x88
	.byte	0x2b
	.4byte	0x113
	.4byte	.LLST5
	.byte	0x1d
	.string	"len"
	.byte	0x1
	.byte	0x88
	.byte	0x38
	.4byte	0x25
	.4byte	.LLST6
	.byte	0x25
	.string	"buf"
	.byte	0x1
	.byte	0x93
	.byte	0x11
	.4byte	0x1ee
	.byte	0x1
	.byte	0x5a
	.byte	0x17
	.4byte	.LVL28
	.4byte	0x95c
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0x18
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x3c
	.byte	0
	.byte	0
	.byte	0x1c
	.4byte	.LASF26
	.byte	0x1
	.byte	0x74
	.byte	0x11
	.4byte	0x1ee
	.4byte	.LFB71
	.4byte	.LFE71-.LFB71
	.byte	0x1
	.byte	0x9c
	.4byte	0x65a
	.byte	0x1d
	.string	"len"
	.byte	0x1
	.byte	0x74
	.byte	0x25
	.4byte	0x25
	.4byte	.LLST0
	.byte	0x25
	.string	"buf"
	.byte	0x1
	.byte	0x7f
	.byte	0x11
	.4byte	0x1ee
	.byte	0x1
	.byte	0x5a
	.byte	0x17
	.4byte	.LVL2
	.4byte	0x95c
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0x18
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0xc
	.byte	0
	.byte	0
	.byte	0x1c
	.4byte	.LASF27
	.byte	0x1
	.byte	0x34
	.byte	0x5
	.4byte	0x38
	.4byte	.LFB70
	.4byte	.LFE70-.LFB70
	.byte	0x1
	.byte	0x9c
	.4byte	0x71a
	.byte	0x24
	.4byte	.LASF28
	.byte	0x1
	.byte	0x34
	.byte	0x23
	.4byte	0x71a
	.4byte	.LLST1
	.byte	0x24
	.4byte	.LASF29
	.byte	0x1
	.byte	0x34
	.byte	0x30
	.4byte	0x25
	.4byte	.LLST2
	.byte	0x1e
	.string	"buf"
	.byte	0x1
	.byte	0x36
	.byte	0x11
	.4byte	0x1ee
	.4byte	.LLST3
	.byte	0x26
	.4byte	.Ldebug_ranges0+0
	.4byte	0x709
	.byte	0x27
	.4byte	.LASF30
	.byte	0x1
	.byte	0x4a
	.byte	0x12
	.4byte	0x8b
	.4byte	.LLST4
	.byte	0x20
	.4byte	.LVL12
	.4byte	0x968
	.byte	0x1b
	.4byte	.LVL18
	.4byte	0x950
	.4byte	0x6df
	.byte	0x18
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x18
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x1b
	.4byte	.LVL21
	.4byte	0x968
	.4byte	0x6f3
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x17
	.4byte	.LVL24
	.4byte	0x950
	.byte	0x18
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x18
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0
	.byte	0x17
	.4byte	.LVL7
	.4byte	0x60c
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x1ee
	.byte	0x28
	.4byte	.LASF31
	.byte	0x1
	.byte	0x25
	.byte	0xd
	.byte	0x1
	.4byte	0x746
	.byte	0x23
	.string	"buf"
	.byte	0x1
	.byte	0x25
	.byte	0x32
	.4byte	0x52c
	.byte	0x23
	.string	"len"
	.byte	0x1
	.byte	0x25
	.byte	0x3e
	.4byte	0x25
	.byte	0
	.byte	0x29
	.4byte	.LASF50
	.byte	0x2
	.byte	0x97
	.byte	0x14
	.4byte	.LFB66
	.4byte	.LFE66-.LFB66
	.byte	0x1
	.byte	0x9c
	.4byte	0x7be
	.byte	0x1d
	.string	"dst"
	.byte	0x2
	.byte	0x97
	.byte	0x32
	.4byte	0x1ee
	.4byte	.LLST26
	.byte	0x1d
	.string	"src"
	.byte	0x2
	.byte	0x98
	.byte	0x1c
	.4byte	0x52c
	.4byte	.LLST27
	.byte	0x2a
	.4byte	0x82b
	.4byte	.LBB71
	.4byte	.Ldebug_ranges0+0x58
	.byte	0x2
	.byte	0x9a
	.byte	0x2
	.4byte	0x79a
	.byte	0x13
	.4byte	0x83c
	.4byte	.LLST28
	.byte	0
	.byte	0x1f
	.4byte	0x849
	.4byte	.LBB75
	.4byte	.LBE75-.LBB75
	.byte	0x2
	.byte	0x9a
	.byte	0x2
	.4byte	0x7b4
	.byte	0x16
	.4byte	0x85a
	.byte	0
	.byte	0x2b
	.4byte	.LVL68
	.4byte	0x7be
	.byte	0
	.byte	0x28
	.4byte	.LASF32
	.byte	0x2
	.byte	0x90
	.byte	0x14
	.byte	0x3
	.4byte	0x7f0
	.byte	0x23
	.string	"buf"
	.byte	0x2
	.byte	0x90
	.byte	0x33
	.4byte	0x1ee
	.byte	0x2c
	.4byte	.LASF24
	.byte	0x2
	.byte	0x90
	.byte	0x44
	.4byte	0xa3
	.byte	0x23
	.string	"len"
	.byte	0x2
	.byte	0x91
	.byte	0xf
	.4byte	0x25
	.byte	0
	.byte	0x2d
	.4byte	.LASF34
	.byte	0x2
	.byte	0x67
	.byte	0x14
	.4byte	0x113
	.byte	0x3
	.4byte	0x80e
	.byte	0x23
	.string	"buf"
	.byte	0x2
	.byte	0x67
	.byte	0x33
	.4byte	0x1ee
	.byte	0
	.byte	0x2e
	.4byte	.LASF33
	.byte	0x2
	.byte	0x60
	.byte	0x16
	.4byte	0x83
	.4byte	0x82b
	.byte	0x23
	.string	"buf"
	.byte	0x2
	.byte	0x60
	.byte	0x32
	.4byte	0x1ee
	.byte	0
	.byte	0x2d
	.4byte	.LASF35
	.byte	0x2
	.byte	0x4f
	.byte	0x1c
	.4byte	0xa3
	.byte	0x3
	.4byte	0x849
	.byte	0x23
	.string	"buf"
	.byte	0x2
	.byte	0x4f
	.byte	0x3d
	.4byte	0x52c
	.byte	0
	.byte	0x2d
	.4byte	.LASF36
	.byte	0x2
	.byte	0x3b
	.byte	0x16
	.4byte	0x25
	.byte	0x3
	.4byte	0x867
	.byte	0x23
	.string	"buf"
	.byte	0x2
	.byte	0x3b
	.byte	0x36
	.4byte	0x52c
	.byte	0
	.byte	0x2f
	.4byte	0x46b
	.4byte	.LFB75
	.4byte	.LFE75-.LFB75
	.byte	0x1
	.byte	0x9c
	.4byte	0x8b8
	.byte	0x13
	.4byte	0x478
	.4byte	.LLST7
	.byte	0x14
	.4byte	0x46b
	.4byte	.LBB30
	.4byte	.Ldebug_ranges0+0x18
	.byte	0x1
	.byte	0xb6
	.byte	0x6
	.byte	0x13
	.4byte	0x478
	.4byte	.LLST8
	.byte	0x20
	.4byte	.LVL34
	.4byte	0x974
	.byte	0x30
	.4byte	.LVL36
	.4byte	0x974
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0
	.byte	0
	.byte	0x2f
	.4byte	0x7be
	.4byte	.LFB65
	.4byte	.LFE65-.LFB65
	.byte	0x1
	.byte	0x9c
	.4byte	0x943
	.byte	0x13
	.4byte	0x7cb
	.4byte	.LLST15
	.byte	0x13
	.4byte	0x7d7
	.4byte	.LLST16
	.byte	0x13
	.4byte	0x7e3
	.4byte	.LLST17
	.byte	0x14
	.4byte	0x7be
	.4byte	.LBB47
	.4byte	.Ldebug_ranges0+0x30
	.byte	0x2
	.byte	0x90
	.byte	0x14
	.byte	0x13
	.4byte	0x7e3
	.4byte	.LLST18
	.byte	0x13
	.4byte	0x7d7
	.4byte	.LLST19
	.byte	0x16
	.4byte	0x7cb
	.byte	0x1b
	.4byte	.LVL45
	.4byte	0x3ce
	.4byte	0x929
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x18
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0x6c
	.byte	0x6
	.byte	0
	.byte	0x30
	.4byte	.LVL48
	.4byte	0x980
	.byte	0x18
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x18
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0x72
	.byte	0x6c
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.byte	0x31
	.4byte	.LASF37
	.4byte	.LASF37
	.byte	0x6
	.2byte	0x10c
	.byte	0x5
	.byte	0x32
	.4byte	.LASF38
	.4byte	.LASF38
	.byte	0x8
	.byte	0x21
	.byte	0x8
	.byte	0x32
	.4byte	.LASF39
	.4byte	.LASF39
	.byte	0x9
	.byte	0xcd
	.byte	0x7
	.byte	0x32
	.4byte	.LASF40
	.4byte	.LASF40
	.byte	0x9
	.byte	0xcc
	.byte	0x7
	.byte	0x32
	.4byte	.LASF41
	.4byte	.LASF41
	.byte	0x9
	.byte	0xce
	.byte	0x6
	.byte	0x32
	.4byte	.LASF42
	.4byte	.LASF42
	.byte	0x8
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
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x3
	.byte	0xe
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
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x9
	.byte	0x26
	.byte	0
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x16
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
	.byte	0xb
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
	.byte	0xc
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
	.byte	0x5
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
	.byte	0xe
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
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0xf
	.byte	0x18
	.byte	0
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
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x11
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
	.byte	0x12
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
	.byte	0x5
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
	.byte	0x15
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
	.byte	0x5
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
	.byte	0
	.byte	0
	.byte	0x17
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
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
	.byte	0x1a
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
	.byte	0x1b
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
	.byte	0x1c
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
	.byte	0x1d
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
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x1f
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
	.byte	0x20
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x21
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
	.byte	0x20
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x23
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
	.byte	0x24
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
	.byte	0x25
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
	.byte	0x26
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x27
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
	.byte	0x28
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
	.byte	0x29
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
	.byte	0x2a
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
	.byte	0x2b
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
	.byte	0x2c
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
	.byte	0x2d
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
	.byte	0x2e
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
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x2f
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
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x30
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
	.byte	0x31
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
	.byte	0x32
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
.LLST38:
	.4byte	.LVL92
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL94
	.4byte	.LVL98
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL98
	.4byte	.LFE79
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL92
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL95
	.4byte	.LVL97-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL97-1
	.4byte	.LFE79
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL94
	.4byte	.LVL96
	.2byte	0x6
	.byte	0x7f
	.byte	0
	.byte	0x7a
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL96
	.4byte	.LVL97-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL92
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL81
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL83
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL91
	.4byte	.LFE78
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL81
	.4byte	.LVL84-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL84-1
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL86
	.4byte	.LFE78
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL85
	.4byte	.LVL87-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL87-1
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL82
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL69
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL72
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL80
	.4byte	.LFE77
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL69
	.4byte	.LVL74-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL74-1
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL80
	.4byte	.LFE77
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL69
	.4byte	.LVL75
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL75
	.4byte	.LVL76-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL76-1
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL69
	.4byte	.LVL71
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL71
	.4byte	.LVL73
	.2byte	0x7
	.byte	0x7b
	.byte	0x4
	.byte	0x6
	.byte	0x7f
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL73
	.4byte	.LVL74-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL70
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL37
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL41
	.4byte	.LFE76
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL37
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL40
	.4byte	.LFE76
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL39
	.4byte	.LVL41
	.2byte	0x6
	.byte	0x7f
	.byte	0
	.byte	0x7e
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL41
	.4byte	.LFE76
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL57
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL58
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL64
	.4byte	.LFE74
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL59
	.4byte	.LVL62-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL62-1
	.4byte	.LVL63
	.2byte	0x2
	.byte	0x91
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL60
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL50
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL55
	.4byte	.LFE73
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL49
	.4byte	.LVL51-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL51-1
	.4byte	.LVL56
	.2byte	0x2
	.byte	0x91
	.byte	0x6c
	.4byte	.LVL56
	.4byte	.LFE73
	.2byte	0x2
	.byte	0x72
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL52
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL54
	.4byte	.LFE73
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL25
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL27
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL30
	.4byte	.LFE72
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL26
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL29
	.4byte	.LFE72
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL3
	.4byte	.LFE71
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL4
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL6
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL8
	.4byte	.LVL10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL11
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL13
	.4byte	.LVL20
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LFE70
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL4
	.4byte	.LVL7-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL7-1
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LFE70
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL5
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL10
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL16
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL23
	.4byte	.LFE70
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL13
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL17
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL22
	.4byte	.LFE70
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL65
	.4byte	.LVL68-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL68-1
	.4byte	.LFE66
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL65
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL66
	.4byte	.LVL68-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL68-1
	.4byte	.LFE66
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL65
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL66
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL31
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL33
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL35
	.4byte	.LVL36-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL36-1
	.4byte	.LVL36
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LFE75
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL33
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL35
	.4byte	.LVL36-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL36-1
	.4byte	.LVL36
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL42
	.4byte	.LVL45-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL45-1
	.4byte	.LVL48
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL48
	.4byte	.LFE65
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL42
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL44
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL46
	.4byte	.LVL48-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL48-1
	.4byte	.LVL48
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL48
	.4byte	.LFE65
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL42
	.4byte	.LVL45-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL45-1
	.4byte	.LVL47
	.2byte	0x2
	.byte	0x91
	.byte	0x6c
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x2
	.byte	0x72
	.byte	0x6c
	.4byte	.LVL48
	.4byte	.LFE65
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL43
	.4byte	.LVL45-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL45-1
	.4byte	.LVL47
	.2byte	0x2
	.byte	0x91
	.byte	0x6c
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x2
	.byte	0x72
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL44
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL46
	.4byte	.LVL48-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL48-1
	.4byte	.LVL48
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x74
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB71
	.4byte	.LFE71-.LFB71
	.4byte	.LFB70
	.4byte	.LFE70-.LFB70
	.4byte	.LFB72
	.4byte	.LFE72-.LFB72
	.4byte	.LFB75
	.4byte	.LFE75-.LFB75
	.4byte	.LFB76
	.4byte	.LFE76-.LFB76
	.4byte	.LFB65
	.4byte	.LFE65-.LFB65
	.4byte	.LFB73
	.4byte	.LFE73-.LFB73
	.4byte	.LFB74
	.4byte	.LFE74-.LFB74
	.4byte	.LFB66
	.4byte	.LFE66-.LFB66
	.4byte	.LFB77
	.4byte	.LFE77-.LFB77
	.4byte	.LFB78
	.4byte	.LFE78-.LFB78
	.4byte	.LFB79
	.4byte	.LFE79-.LFB79
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB26
	.4byte	.LBE26
	.4byte	.LBB27
	.4byte	.LBE27
	.4byte	0
	.4byte	0
	.4byte	.LBB30
	.4byte	.LBE30
	.4byte	.LBB33
	.4byte	.LBE33
	.4byte	0
	.4byte	0
	.4byte	.LBB47
	.4byte	.LBE47
	.4byte	.LBB52
	.4byte	.LBE52
	.4byte	.LBB53
	.4byte	.LBE53
	.4byte	.LBB54
	.4byte	.LBE54
	.4byte	0
	.4byte	0
	.4byte	.LBB71
	.4byte	.LBE71
	.4byte	.LBB74
	.4byte	.LBE74
	.4byte	0
	.4byte	0
	.4byte	.LBB81
	.4byte	.LBE81
	.4byte	.LBB84
	.4byte	.LBE84
	.4byte	0
	.4byte	0
	.4byte	.LBB91
	.4byte	.LBE91
	.4byte	.LBB98
	.4byte	.LBE98
	.4byte	.LBB99
	.4byte	.LBE99
	.4byte	0
	.4byte	0
	.4byte	.LFB71
	.4byte	.LFE71
	.4byte	.LFB70
	.4byte	.LFE70
	.4byte	.LFB72
	.4byte	.LFE72
	.4byte	.LFB75
	.4byte	.LFE75
	.4byte	.LFB76
	.4byte	.LFE76
	.4byte	.LFB65
	.4byte	.LFE65
	.4byte	.LFB73
	.4byte	.LFE73
	.4byte	.LFB74
	.4byte	.LFE74
	.4byte	.LFB66
	.4byte	.LFE66
	.4byte	.LFB77
	.4byte	.LFE77
	.4byte	.LFB78
	.4byte	.LFE78
	.4byte	.LFB79
	.4byte	.LFE79
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF36:
	.string	"wpabuf_len"
.LASF48:
	.string	"wpabuf_printf"
.LASF5:
	.string	"short int"
.LASF2:
	.string	"size_t"
.LASF31:
	.string	"wpabuf_overflow"
.LASF20:
	.string	"wpabuf_concat"
.LASF42:
	.string	"memcpy"
.LASF32:
	.string	"wpabuf_put_data"
.LASF13:
	.string	"va_list"
.LASF25:
	.string	"wpabuf_alloc_ext_data"
.LASF21:
	.string	"wpabuf_put"
.LASF14:
	.string	"uint8_t"
.LASF22:
	.string	"wpabuf_dup"
.LASF23:
	.string	"wpabuf_alloc_copy"
.LASF39:
	.string	"wpa_supplicant_zalloc"
.LASF9:
	.string	"long long int"
.LASF38:
	.string	"memset"
.LASF7:
	.string	"long int"
.LASF44:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/utils/wpabuf.c"
.LASF3:
	.string	"__uint8_t"
.LASF26:
	.string	"wpabuf_alloc"
.LASF35:
	.string	"wpabuf_head"
.LASF30:
	.string	"nbuf"
.LASF4:
	.string	"unsigned char"
.LASF49:
	.string	"wpabuf_free"
.LASF29:
	.string	"add_len"
.LASF1:
	.string	"signed char"
.LASF10:
	.string	"long long unsigned int"
.LASF0:
	.string	"unsigned int"
.LASF50:
	.string	"wpabuf_put_buf"
.LASF28:
	.string	"_buf"
.LASF41:
	.string	"wpa_supplicant_free"
.LASF6:
	.string	"short unsigned int"
.LASF37:
	.string	"vsnprintf"
.LASF11:
	.string	"char"
.LASF17:
	.string	"ext_data"
.LASF33:
	.string	"wpabuf_mhead"
.LASF40:
	.string	"wpa_supplicant_realloc"
.LASF24:
	.string	"data"
.LASF47:
	.string	"wpabuf"
.LASF34:
	.string	"wpabuf_mhead_u8"
.LASF8:
	.string	"long unsigned int"
.LASF46:
	.string	"__builtin_va_list"
.LASF27:
	.string	"wpabuf_resize"
.LASF15:
	.string	"size"
.LASF16:
	.string	"used"
.LASF12:
	.string	"__gnuc_va_list"
.LASF19:
	.string	"wpabuf_zeropad"
.LASF45:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/wpa_supplicant"
.LASF18:
	.string	"blen"
.LASF43:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
