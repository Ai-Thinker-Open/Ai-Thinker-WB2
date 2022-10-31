	.file	"dns.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.dns_call_found,"ax",@progbits
	.align	1
	.type	dns_call_found, @function
dns_call_found:
.LFB13:
	.file 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/core/dns.c"
	.loc 1 943 1
	.cfi_startproc
.LVL0:
	.loc 1 970 3
	.loc 1 943 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 970 24
	lui	a5,%hi(.LANCHOR0)
	.loc 1 943 1
	sw	s1,4(sp)
	.loc 1 970 24
	addi	a4,a5,%lo(.LANCHOR0)
	.cfi_offset 9, -12
	slli	s1,a0,3
	.loc 1 943 1
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	.loc 1 970 24
	add	a4,a4,s1
	lw	a3,0(a4)
	addi	s0,a5,%lo(.LANCHOR0)
	.loc 1 970 6
	beq	a3,zero,.L2
	.loc 1 971 5 is_stmt 1
	.loc 1 971 46 is_stmt 0
	li	a5,272
	mul	a0,a0,a5
.LVL1:
	.loc 1 971 6
	lw	a2,4(a4)
	lui	a4,%hi(.LANCHOR1)
	addi	a4,a4,%lo(.LANCHOR1)
	.loc 1 971 46
	addi	a0,a0,15
	.loc 1 971 6
	add	a0,a4,a0
	jalr	a3
.LVL2:
.L2:
	.loc 1 973 3 is_stmt 1
	.loc 1 973 27 is_stmt 0
	add	a5,s0,s1
	sw	zero,0(a5)
	.loc 1 996 1
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	lw	s1,4(sp)
	.cfi_restore 9
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE13:
	.size	dns_call_found, .-dns_call_found
	.section	.text.dns_send.isra.0,"ax",@progbits
	.align	1
	.type	dns_send.isra.0, @function
dns_send.isra.0:
.LFB24:
	.loc 1 748 1 is_stmt 1
	.cfi_startproc
.LVL3:
	.loc 1 750 3
	.loc 1 751 3
	.loc 1 752 3
	.loc 1 753 3
	.loc 1 754 3
	.loc 1 755 3
	.loc 1 756 3
	.loc 1 757 3
	.loc 1 758 3
	.loc 1 761 68
	.loc 1 762 3
	.loc 1 762 8
	.loc 1 762 40
	.loc 1 762 50
	.loc 1 763 3
	.loc 1 748 1 is_stmt 0
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sw	s0,72(sp)
	.cfi_offset 8, -8
	.loc 1 762 19
	li	s0,272
	mul	s0,a0,s0
	.loc 1 748 1
	sw	s2,64(sp)
	.cfi_offset 18, -16
	.loc 1 762 19
	lui	s2,%hi(.LANCHOR1)
	.loc 1 748 1
	sw	s3,60(sp)
	.cfi_offset 19, -20
	.loc 1 762 19
	addi	s3,s2,%lo(.LANCHOR1)
	.loc 1 748 1
	sw	s5,52(sp)
	sw	ra,76(sp)
	sw	s1,68(sp)
	sw	s4,56(sp)
	sw	s6,48(sp)
	sw	s7,44(sp)
	sw	s8,40(sp)
	sw	s9,36(sp)
	.cfi_offset 21, -28
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	.cfi_offset 20, -24
	.cfi_offset 22, -32
	.cfi_offset 23, -36
	.cfi_offset 24, -40
	.cfi_offset 25, -44
	.loc 1 762 19
	add	s3,s3,s0
	.loc 1 763 26
	lbu	a4,11(s3)
	.loc 1 763 40
	lui	s5,%hi(.LANCHOR2)
	addi	a5,s5,%lo(.LANCHOR2)
	slli	a4,a4,2
	add	a5,a5,a4
	.loc 1 763 6
	lw	a5,0(a5)
	bne	a5,zero,.L8
	.loc 1 770 5 is_stmt 1
	li	a1,0
	call	dns_call_found
.LVL4:
	.loc 1 772 5
	.loc 1 772 18 is_stmt 0
	sb	zero,10(s3)
	.loc 1 773 5 is_stmt 1
.L7:
	.loc 1 862 1 is_stmt 0
	lw	ra,76(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,72(sp)
	.cfi_restore 8
	lw	s1,68(sp)
	.cfi_restore 9
	lw	s2,64(sp)
	.cfi_restore 18
	lw	s3,60(sp)
	.cfi_restore 19
	lw	s4,56(sp)
	.cfi_restore 20
	lw	s5,52(sp)
	.cfi_restore 21
	lw	s6,48(sp)
	.cfi_restore 22
	lw	s7,44(sp)
	.cfi_restore 23
	lw	s8,40(sp)
	.cfi_restore 24
	lw	s9,36(sp)
	.cfi_restore 25
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
.LVL5:
.L8:
	.cfi_restore_state
	addi	s2,s2,%lo(.LANCHOR1)
	.loc 1 777 3 is_stmt 1
	.loc 1 777 59 is_stmt 0
	addi	s0,s0,15
	add	s0,s2,s0
	mv	s4,a0
	.loc 1 777 47
	mv	a0,s0
.LVL6:
	call	strlen
.LVL7:
	.loc 1 777 7
	addi	a1,a0,18
	slli	a1,a1,16
	li	a2,640
	srli	a1,a1,16
	li	a0,182
	call	pbuf_alloc
.LVL8:
	mv	s1,a0
.LVL9:
	.loc 1 779 3 is_stmt 1
	.loc 1 779 6 is_stmt 0
	beq	a0,zero,.L7
.LBB6:
	.loc 1 783 5
	li	a2,12
	li	a1,0
	addi	a0,sp,20
	call	memset
.LVL10:
	.loc 1 784 14
	lhu	a0,8(s3)
	.loc 1 800 10
	li	s7,65536
	addi	s5,s5,%lo(.LANCHOR2)
	.loc 1 780 5 is_stmt 1
	.loc 1 781 5
	.loc 1 783 5
	.loc 1 784 5
	.loc 1 784 14 is_stmt 0
	call	lwip_htons
.LVL11:
	.loc 1 785 16
	li	a5,1
	.loc 1 784 12
	sh	a0,20(sp)
	.loc 1 785 5 is_stmt 1
	.loc 1 785 16 is_stmt 0
	sb	a5,22(sp)
	.loc 1 786 5 is_stmt 1
	.loc 1 787 5 is_stmt 0
	addi	a1,sp,20
	.loc 1 786 22
	li	a5,256
	.loc 1 787 5
	li	a2,12
	mv	a0,s1
	.loc 1 786 22
	sh	a5,24(sp)
	.loc 1 787 5 is_stmt 1
	call	pbuf_take
.LVL12:
	.loc 1 788 5
	.loc 1 789 5
	addi	s0,s0,-1
.LVL13:
	.loc 1 792 5
	.loc 1 792 15 is_stmt 0
	li	a1,12
	.loc 1 796 7
	li	s9,46
	.loc 1 800 10
	addi	s7,s7,-2
.LVL14:
.L16:
	.loc 1 793 5 is_stmt 1
	.loc 1 794 7
	addi	s0,s0,1
.LVL15:
	.loc 1 795 7
	.loc 1 796 7
	.loc 1 794 7 is_stmt 0
	mv	s8,s0
	.loc 1 796 14
	li	a2,0
.LVL16:
.L10:
	.loc 1 796 19 is_stmt 1
	lbu	a5,0(s0)
	.loc 1 796 7 is_stmt 0
	bne	a5,s9,.L11
.L15:
	.loc 1 799 7 is_stmt 1
	.loc 1 799 35 is_stmt 0
	sub	s6,s0,s8
	.loc 1 799 16
	slli	s6,s6,16
	.loc 1 800 21
	add	s3,a1,a2
	.loc 1 799 16
	srli	s6,s6,16
.LVL17:
	.loc 1 800 7 is_stmt 1
	.loc 1 800 10 is_stmt 0
	ble	s3,s7,.L21
.LVL18:
.L23:
	.loc 1 853 5 is_stmt 1
	mv	a0,s1
	call	pbuf_free
.LVL19:
.LBE6:
	j	.L7
.LVL20:
.L11:
.LBB7:
	.loc 1 796 36 is_stmt 0
	beq	a5,zero,.L15
	.loc 1 797 9 is_stmt 1
	addi	a2,a2,1
.LVL21:
	andi	a2,a2,0xff
.LVL22:
	.loc 1 796 55
	addi	s0,s0,1
.LVL23:
	j	.L10
.LVL24:
.L21:
	.loc 1 804 7
	mv	a0,s1
	sw	a1,12(sp)
	call	pbuf_put_at
.LVL25:
	.loc 1 805 7
	lw	a1,12(sp)
	mv	a2,s6
	mv	a0,s1
	addi	a3,a1,1
	slli	a3,a3,16
	mv	a1,s8
	srli	a3,a3,16
	call	pbuf_take_at
.LVL26:
	.loc 1 806 7
	.loc 1 806 37 is_stmt 0
	slli	s3,s3,16
	srli	s3,s3,16
	.loc 1 807 5
	lbu	a5,0(s0)
	.loc 1 806 17
	addi	a1,s3,1
	slli	a1,a1,16
	srli	a1,a1,16
.LVL27:
	.loc 1 807 13 is_stmt 1
	.loc 1 807 5 is_stmt 0
	bne	a5,zero,.L16
	.loc 1 808 5 is_stmt 1
	mv	a0,s1
	li	a2,0
	call	pbuf_put_at
.LVL28:
	.loc 1 809 5
	.loc 1 812 5
	.loc 1 815 7
	.loc 1 817 5
	.loc 1 809 14 is_stmt 0
	addi	s3,s3,2
.LVL29:
	.loc 1 818 5
	slli	a3,s3,16
	.loc 1 815 16
	li	a5,16777216
	addi	a5,a5,256
	.loc 1 818 5
	addi	a1,sp,16
	srli	a3,a3,16
	li	a2,4
	mv	a0,s1
	.loc 1 815 16
	sw	a5,16(sp)
	.loc 1 818 5 is_stmt 1
	call	pbuf_take_at
.LVL30:
	.loc 1 823 5
	.loc 1 827 74
	.loc 1 847 7
	.loc 1 848 7
	.loc 1 850 5
	.loc 1 848 31 is_stmt 0
	li	a0,272
	mul	s4,s4,a0
.LVL31:
	.loc 1 850 11
	lui	a5,%hi(.LANCHOR3)
	lw	a0,%lo(.LANCHOR3)(a5)
	li	a3,53
	mv	a1,s1
	.loc 1 848 31
	add	s2,s2,s4
	.loc 1 848 11
	lbu	a2,11(s2)
	slli	a2,a2,2
	.loc 1 850 11
	add	a2,s5,a2
	call	udp_sendto
.LVL32:
	j	.L23
.LBE7:
	.cfi_endproc
.LFE24:
	.size	dns_send.isra.0, .-dns_send.isra.0
	.section	.text.dns_check_entry,"ax",@progbits
	.align	1
	.type	dns_check_entry, @function
dns_check_entry:
.LFB16:
	.loc 1 1048 1 is_stmt 1
	.cfi_startproc
.LVL33:
	.loc 1 1049 3
	.loc 1 1050 3
	.loc 1 1052 3
	.loc 1 1052 8
	.loc 1 1052 24
	.loc 1 1052 34
	.loc 1 1054 3
	.loc 1 1054 16 is_stmt 0
	li	a4,272
	mul	a4,a0,a4
	.loc 1 1048 1
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	.cfi_offset 8, -8
	.loc 1 1054 16
	lui	s0,%hi(.LANCHOR1)
	addi	a5,s0,%lo(.LANCHOR1)
	.loc 1 1048 1
	sw	ra,28(sp)
	.cfi_offset 1, -4
	.loc 1 1054 3
	li	a3,2
	addi	s0,s0,%lo(.LANCHOR1)
	.loc 1 1054 16
	add	a5,a5,a4
	lbu	a4,10(a5)
	.loc 1 1054 3
	beq	a4,a3,.L25
	li	a3,3
	beq	a4,a3,.L26
	li	a5,1
	bne	a4,a5,.L24
	lui	a5,%hi(.LANCHOR4)
	lhu	a4,%lo(.LANCHOR4)(a5)
	addi	a3,a5,%lo(.LANCHOR4)
	addi	a2,s0,1088
.LBB14:
.LBB15:
	.loc 1 1010 8
	li	a1,2
.L28:
	.loc 1 1002 3 is_stmt 1
	.loc 1 1003 3
	.loc 1 1006 3
	.loc 1 1006 10 is_stmt 0
	addi	a4,a4,1
	slli	a4,a4,16
	srli	a4,a4,16
.LVL34:
	.loc 1 1009 3 is_stmt 1
	.loc 1 1009 15
	mv	a5,s0
.LVL35:
.L30:
	.loc 1 1010 5
	.loc 1 1010 8 is_stmt 0
	lbu	a6,10(a5)
	bne	a6,a1,.L29
	.loc 1 1010 50
	lhu	a6,8(a5)
	beq	a6,a4,.L28
.L29:
	.loc 1 1009 22 is_stmt 1
.LVL36:
	.loc 1 1009 15
	.loc 1 1009 3 is_stmt 0
	addi	a5,a5,272
.LVL37:
	bne	a2,a5,.L30
.LBE15:
.LBE14:
	.loc 1 1057 19
	li	a5,272
.LVL38:
	mul	a5,a0,a5
	sh	a4,0(a3)
.LBB17:
.LBB16:
	.loc 1 1017 3 is_stmt 1
.LBE16:
.LBE17:
	.loc 1 1057 19 is_stmt 0
	add	s0,s0,a5
	.loc 1 1058 20
	li	a5,2
	sh	a5,10(s0)
	.loc 1 1060 18
	li	a5,1
	.loc 1 1057 19
	sh	a4,8(s0)
	.loc 1 1058 7 is_stmt 1
	.loc 1 1059 7
	.loc 1 1060 7
	.loc 1 1061 7
	.loc 1 1060 18 is_stmt 0
	sh	a5,12(s0)
	.loc 1 1064 7 is_stmt 1
.LVL39:
.L34:
	.loc 1 1096 9
	.loc 1 1118 1 is_stmt 0
	lw	s0,24(sp)
	.cfi_remember_state
	.cfi_restore 8
	lw	ra,28(sp)
	.cfi_restore 1
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	.loc 1 1096 15
	tail	dns_send.isra.0
.LVL40:
.L25:
	.cfi_restore_state
	.loc 1 1071 7 is_stmt 1
	.loc 1 1071 11 is_stmt 0
	lbu	a4,12(a5)
	addi	a4,a4,-1
	andi	a4,a4,0xff
	.loc 1 1071 10
	sb	a4,12(a5)
	bne	a4,zero,.L24
	.loc 1 1072 9 is_stmt 1
	.loc 1 1072 13 is_stmt 0
	lbu	a4,13(a5)
	.loc 1 1072 12
	li	a3,4
	.loc 1 1072 13
	addi	a4,a4,1
	andi	a4,a4,0xff
	.loc 1 1072 12
	sb	a4,13(a5)
	bne	a4,a3,.L32
	.loc 1 1073 11 is_stmt 1
.LVL41:
.LBB18:
.LBB19:
	.loc 1 1026 3
	.loc 1 1028 3
	.loc 1 1029 5
	.loc 1 1029 8 is_stmt 0
	lbu	a4,11(a5)
	bne	a4,zero,.L33
.LVL42:
.LBB20:
.LBB21:
	.loc 1 1029 80
	lui	a4,%hi(.LANCHOR2+4)
	.loc 1 1029 38
	lw	a4,%lo(.LANCHOR2+4)(a4)
	beq	a4,zero,.L33
	.loc 1 1030 7 is_stmt 1
.LVL43:
.LBE21:
.LBE20:
	.loc 1 1034 3
.LBE19:
.LBE18:
	.loc 1 1079 13
	.loc 1 1080 13
	.loc 1 1081 13
	.loc 1 1079 30 is_stmt 0
	li	a4,1
	sb	a4,11(a5)
	.loc 1 1080 24
	sh	a4,12(a5)
	j	.L34
.LVL44:
.L33:
	.loc 1 1083 13 is_stmt 1
	.loc 1 1085 13
	li	a1,0
	sw	a0,12(sp)
	call	dns_call_found
.LVL45:
	.loc 1 1087 13
	.loc 1 1087 26 is_stmt 0
	lw	a0,12(sp)
	li	a5,272
.LVL46:
.L47:
	.loc 1 1108 22
	mul	a0,a0,a5
	add	s0,s0,a0
	sb	zero,10(s0)
.L24:
	.loc 1 1118 1
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL47:
.L32:
	.cfi_restore_state
	.loc 1 1092 11 is_stmt 1
	.loc 1 1092 22 is_stmt 0
	sb	a4,12(a5)
	j	.L34
.L26:
	.loc 1 1105 7 is_stmt 1
	.loc 1 1105 17 is_stmt 0
	lw	a4,0(a5)
	.loc 1 1105 10
	bne	a4,zero,.L35
.L36:
	.loc 1 1106 9 is_stmt 1
	.loc 1 1108 9
	.loc 1 1108 22 is_stmt 0
	li	a5,272
	j	.L47
.L35:
	.loc 1 1105 33 discriminator 1
	addi	a4,a4,-1
	.loc 1 1105 29 discriminator 1
	sw	a4,0(a5)
	beq	a4,zero,.L36
	j	.L24
	.cfi_endproc
.LFE16:
	.size	dns_check_entry, .-dns_check_entry
	.section	.text.dns_recv,"ax",@progbits
	.align	1
	.type	dns_recv, @function
dns_recv:
.LFB19:
	.loc 1 1171 1 is_stmt 1
	.cfi_startproc
.LVL48:
	.loc 1 1172 3
	.loc 1 1173 3
	.loc 1 1174 3
	.loc 1 1175 3
	.loc 1 1176 3
	.loc 1 1177 3
	.loc 1 1178 3
	.loc 1 1180 3
	.loc 1 1181 3
	.loc 1 1182 3
	.loc 1 1185 3
	.loc 1 1171 1 is_stmt 0
	addi	sp,sp,-112
	.cfi_def_cfa_offset 112
	sw	s1,100(sp)
	sw	ra,108(sp)
	sw	s0,104(sp)
	sw	s2,96(sp)
	sw	s3,92(sp)
	sw	s4,88(sp)
	sw	s5,84(sp)
	sw	s6,80(sp)
	sw	s7,76(sp)
	sw	s8,72(sp)
	sw	s9,68(sp)
	sw	s10,64(sp)
	sw	s11,60(sp)
	.cfi_offset 9, -12
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 23, -36
	.cfi_offset 24, -40
	.cfi_offset 25, -44
	.cfi_offset 26, -48
	.cfi_offset 27, -52
	.loc 1 1185 6
	lhu	a4,8(a2)
.LVL49:
	li	a5,15
	.loc 1 1171 1
	mv	s1,a2
	.loc 1 1185 6
	bleu	a4,a5,.L50
	mv	s8,a3
	.loc 1 1192 3 is_stmt 1
	.loc 1 1192 7 is_stmt 0
	li	a2,12
.LVL50:
	li	a3,0
.LVL51:
	addi	a1,sp,24
.LVL52:
	mv	a0,s1
.LVL53:
	call	pbuf_copy_partial
.LVL54:
	.loc 1 1192 6
	li	a5,12
	.loc 1 1192 7
	mv	s0,a0
	.loc 1 1192 6
	bne	a0,a5,.L50
	.loc 1 1194 5 is_stmt 1
	.loc 1 1194 12 is_stmt 0
	lhu	a0,24(sp)
	lui	s3,%hi(.LANCHOR1)
	li	s2,0
	call	lwip_htons
.LVL55:
	.loc 1 1195 5 is_stmt 1
	.loc 1 1195 17
	addi	a5,s3,%lo(.LANCHOR1)
.LBB37:
	.loc 1 1197 10 is_stmt 0
	li	a3,2
	addi	s3,s3,%lo(.LANCHOR1)
.LBE37:
	.loc 1 1195 5
	li	a4,4
.LVL56:
.L70:
.LBB71:
	.loc 1 1197 10
	lbu	a2,10(a5)
	andi	s6,s2,0xff
.LVL57:
	.loc 1 1196 7 is_stmt 1
	.loc 1 1197 7
	.loc 1 1197 10 is_stmt 0
	bne	a2,a3,.L52
	.loc 1 1197 46 discriminator 1
	lhu	a2,8(a5)
	bne	a2,a0,.L52
	.loc 1 1202 9 is_stmt 1
	.loc 1 1202 22 is_stmt 0
	lhu	a0,28(sp)
.LVL58:
	call	lwip_htons
.LVL59:
	mv	s5,a0
.LVL60:
	.loc 1 1203 9 is_stmt 1
	.loc 1 1203 20 is_stmt 0
	lhu	a0,30(sp)
	call	lwip_htons
.LVL61:
	.loc 1 1206 12
	lb	a5,26(sp)
	.loc 1 1203 20
	mv	s4,a0
.LVL62:
	.loc 1 1206 9 is_stmt 1
	.loc 1 1206 12 is_stmt 0
	bge	a5,zero,.L50
	.loc 1 1210 9 is_stmt 1
	.loc 1 1210 12 is_stmt 0
	li	a5,1
	bne	s5,a5,.L50
	.loc 1 1221 11 is_stmt 1
	.loc 1 1221 52 is_stmt 0
	li	s5,272
.LVL63:
	mul	s5,s2,s5
	.loc 1 1221 66
	lui	s7,%hi(.LANCHOR2)
	addi	a5,s7,%lo(.LANCHOR2)
	addi	s7,s7,%lo(.LANCHOR2)
	.loc 1 1221 52
	add	a4,s3,s5
	lbu	a4,11(a4)
	.loc 1 1221 66
	slli	a4,a4,2
	add	a5,a5,a4
	.loc 1 1221 14
	lw	a5,0(a5)
	lw	a4,0(s8)
	bne	a4,a5,.L50
	.loc 1 1228 9 is_stmt 1
	.loc 1 1228 41 is_stmt 0
	addi	s11,s5,15
.LBB38:
.LBB39:
	.loc 1 658 17
	li	s8,65536
.LVL64:
.LBB40:
.LBB41:
	.loc 1 674 45
	lui	s9,%hi(_ctype_+1)
.LBE41:
.LBE40:
.LBE39:
.LBE38:
	.loc 1 1228 41
	add	s11,s3,s11
.LVL65:
.LBB49:
.LBB47:
	.loc 1 658 17
	addi	s8,s8,-1
.LBB45:
.LBB42:
	.loc 1 674 45
	addi	s9,s9,%lo(_ctype_+1)
	.loc 1 674 97
	li	s10,1
.L57:
.LVL66:
.LBE42:
.LBE45:
	.loc 1 656 3 is_stmt 1
	.loc 1 657 5
	.loc 1 657 9 is_stmt 0
	mv	a1,s0
	mv	a0,s1
	call	pbuf_try_get_at
.LVL67:
	.loc 1 658 5 is_stmt 1
	.loc 1 658 8 is_stmt 0
	blt	a0,zero,.L50
	.loc 1 658 17
	beq	s0,s8,.L50
	.loc 1 662 5 is_stmt 1
	.loc 1 662 20 is_stmt 0
	addi	s0,s0,1
.LVL68:
	slli	s0,s0,16
	.loc 1 664 12
	andi	a5,a0,192
	.loc 1 664 8
	li	a4,192
	.loc 1 662 20
	srli	s0,s0,16
.LVL69:
	.loc 1 664 5 is_stmt 1
	.loc 1 664 8 is_stmt 0
	beq	a5,a4,.L50
	add	a5,s11,a0
.LVL70:
.L53:
	.loc 1 669 13 is_stmt 1
	bne	a5,s11,.L56
	.loc 1 685 7
	.loc 1 687 9 is_stmt 0
	mv	a1,s0
	mv	a0,s1
	.loc 1 685 7
	addi	s11,a5,1
.LVL71:
	.loc 1 687 5 is_stmt 1
	.loc 1 687 9 is_stmt 0
	call	pbuf_try_get_at
.LVL72:
	.loc 1 688 5 is_stmt 1
	.loc 1 688 8 is_stmt 0
	blt	a0,zero,.L50
	.loc 1 691 11 is_stmt 1
	.loc 1 691 3 is_stmt 0
	bne	a0,zero,.L57
	.loc 1 693 3 is_stmt 1
	.loc 1 693 6 is_stmt 0
	li	s9,65536
	addi	a5,s9,-1
	beq	s0,a5,.L50
	.loc 1 697 3 is_stmt 1
	.loc 1 697 10 is_stmt 0
	addi	s8,s0,1
	slli	s8,s8,16
	srli	s8,s8,16
.LVL73:
.LBE47:
.LBE49:
	.loc 1 1229 9 is_stmt 1
	.loc 1 1229 12 is_stmt 0
	beq	s8,a5,.L50
	.loc 1 1235 9 is_stmt 1
	.loc 1 1235 13 is_stmt 0
	mv	a3,s8
	li	a2,4
	addi	a1,sp,16
	mv	a0,s1
	call	pbuf_copy_partial
.LVL74:
	.loc 1 1235 12
	li	a5,4
	bne	a0,a5,.L50
	.loc 1 1238 9 is_stmt 1
	.loc 1 1238 12 is_stmt 0
	lhu	a5,18(sp)
	li	a4,256
	bne	a5,a4,.L50
	.loc 1 1239 109
	lhu	a4,16(sp)
	bne	a4,a5,.L50
	.loc 1 1245 9 is_stmt 1
	.loc 1 1245 12 is_stmt 0
	addi	s9,s9,-5
	bgtu	s8,s9,.L50
	.loc 1 1248 9 is_stmt 1
.LVL75:
	.loc 1 1251 9
	.loc 1 1251 12 is_stmt 0
	lbu	a5,27(sp)
	andi	a5,a5,15
	bne	a5,zero,.L58
	.loc 1 1248 17
	addi	s0,s0,5
.LVL76:
.LBB50:
.LBB51:
	.loc 1 735 6
	li	s7,65536
.LBE51:
.LBE50:
	.loc 1 1248 17
	slli	s0,s0,16
	srli	s0,s0,16
.LBB55:
.LBB52:
	.loc 1 719 8
	li	s10,192
	.loc 1 735 6
	addi	s8,s7,-1
.LBE52:
.LBE55:
	.loc 1 1279 16
	addi	s11,s7,-11
	.loc 1 1284 16
	li	s9,256
.L59:
.LVL77:
	.loc 1 1268 17 is_stmt 1
	beq	s4,zero,.L62
	.loc 1 1268 33 is_stmt 0 discriminator 1
	lhu	a4,8(s1)
	bleu	a4,s0,.L62
.LVL78:
.L64:
.LBB56:
.LBB53:
	.loc 1 713 3 is_stmt 1
	.loc 1 714 5
	.loc 1 714 9 is_stmt 0
	addi	a0,s0,1
	slli	a3,a0,16
	srli	a3,a3,16
	mv	a1,s0
	mv	a0,s1
	sw	a3,12(sp)
.LVL79:
	call	pbuf_try_get_at
.LVL80:
	.loc 1 715 5 is_stmt 1
	.loc 1 715 8 is_stmt 0
	blt	a0,zero,.L50
	.loc 1 715 17
	lw	a3,12(sp)
	beq	a3,zero,.L50
	.loc 1 719 5 is_stmt 1
	.loc 1 719 12 is_stmt 0
	andi	a5,a0,192
	.loc 1 719 8
	beq	a5,s10,.L71
	.loc 1 724 7 is_stmt 1
	.loc 1 724 26 is_stmt 0
	lhu	a5,8(s1)
	.loc 1 724 18
	add	a0,a3,a0
.LVL81:
	.loc 1 724 10
	bge	a0,a5,.L50
	.loc 1 727 7 is_stmt 1
	.loc 1 727 14 is_stmt 0
	slli	s0,a0,16
	srli	s0,s0,16
.LVL82:
	.loc 1 729 5 is_stmt 1
	.loc 1 729 9 is_stmt 0
	mv	a1,s0
	mv	a0,s1
	call	pbuf_try_get_at
.LVL83:
	.loc 1 730 5 is_stmt 1
	.loc 1 730 8 is_stmt 0
	blt	a0,zero,.L50
	.loc 1 733 11 is_stmt 1
	.loc 1 733 3 is_stmt 0
	bne	a0,zero,.L64
.LVL84:
.L63:
	.loc 1 735 3 is_stmt 1
	.loc 1 735 6 is_stmt 0
	beq	s0,s8,.L50
	.loc 1 738 3 is_stmt 1
	.loc 1 738 10 is_stmt 0
	addi	a3,s0,1
	slli	a3,a3,16
	srli	a3,a3,16
.LVL85:
.LBE53:
.LBE56:
	.loc 1 1271 13 is_stmt 1
	.loc 1 1271 16 is_stmt 0
	beq	a3,s8,.L50
	.loc 1 1276 13 is_stmt 1
	.loc 1 1276 17 is_stmt 0
	li	a2,10
	addi	a1,sp,36
	mv	a0,s1
	sw	a3,12(sp)
	call	pbuf_copy_partial
.LVL86:
	.loc 1 1276 16
	li	a4,10
	bne	a0,a4,.L50
	.loc 1 1279 13 is_stmt 1
	.loc 1 1279 16 is_stmt 0
	lw	a3,12(sp)
	bgtu	a3,s11,.L50
	.loc 1 1282 13 is_stmt 1
	.loc 1 1282 21 is_stmt 0
	addi	a5,s0,11
	slli	s0,a5,16
	.loc 1 1284 16
	lhu	a5,38(sp)
	.loc 1 1286 113
	lhu	a0,44(sp)
	.loc 1 1282 21
	srli	s0,s0,16
.LVL87:
	.loc 1 1284 13 is_stmt 1
	.loc 1 1284 16 is_stmt 0
	bne	a5,s9,.L65
	.loc 1 1286 15 is_stmt 1
	.loc 1 1286 18 is_stmt 0
	lhu	a5,36(sp)
	bne	a5,s9,.L65
	.loc 1 1286 106 discriminator 1
	li	a5,1024
	bne	a0,a5,.L65
.LBB57:
	.loc 1 1291 19 is_stmt 1
	.loc 1 1293 19
	.loc 1 1293 23 is_stmt 0
	mv	a3,s0
	li	a2,4
	addi	a1,sp,20
	mv	a0,s1
	call	pbuf_copy_partial
.LVL88:
	.loc 1 1293 22
	li	a5,4
	bne	a0,a5,.L50
	.loc 1 1296 19 is_stmt 1
	.loc 1 1296 47 is_stmt 0
	li	a5,272
	mul	a5,s2,a5
	lui	s0,%hi(.LANCHOR1)
.LVL89:
	addi	s3,s0,%lo(.LANCHOR1)
	.loc 1 1297 19
	mv	a0,s1
	addi	s0,s0,%lo(.LANCHOR1)
	.loc 1 1296 47
	add	s3,s3,a5
	lw	a5,20(sp)
	sw	a5,4(s3)
	.loc 1 1297 19 is_stmt 1
	call	pbuf_free
.LVL90:
	.loc 1 1299 19
	lw	a0,40(sp)
	call	lwip_htonl
.LVL91:
.LBB58:
.LBB59:
	.loc 1 1139 3
	.loc 1 1141 3
	.loc 1 1141 16 is_stmt 0
	li	a5,3
	sb	a5,10(s3)
	.loc 1 1143 3 is_stmt 1
	.loc 1 1144 3
	.loc 1 1145 3
	.loc 1 1148 3
	.loc 1 1149 3
	.loc 1 1149 6 is_stmt 0
	li	a5,606208
	addi	a5,a5,-1408
	bgtu	a0,a5,.L67
	.loc 1 1148 14
	sw	a0,0(s3)
.L68:
	.loc 1 1152 3 is_stmt 1
	addi	a1,s5,4
	add	a1,s0,a1
	mv	a0,s6
.LVL92:
	call	dns_call_found
.LVL93:
	.loc 1 1154 3
	.loc 1 1154 12 is_stmt 0
	li	a5,272
	mul	s2,s2,a5
.LVL94:
	add	s2,s0,s2
	.loc 1 1154 6
	lw	a5,0(s2)
	bne	a5,zero,.L48
	.loc 1 1160 5 is_stmt 1
	.loc 1 1160 8 is_stmt 0
	lbu	a4,10(s2)
	li	a5,3
	bne	a4,a5,.L48
	.loc 1 1161 7 is_stmt 1
	.loc 1 1161 20 is_stmt 0
	sb	zero,10(s2)
.LVL95:
.LBE59:
.LBE58:
	.loc 1 1300 19 is_stmt 1
	j	.L48
.LVL96:
.L56:
.LBE57:
.LBB62:
.LBB48:
.LBB46:
	.loc 1 670 17 is_stmt 0
	mv	a1,s0
	mv	a0,s1
	sw	a5,12(sp)
	.loc 1 670 9 is_stmt 1
	.loc 1 670 17 is_stmt 0
	call	pbuf_try_get_at
.LVL97:
	.loc 1 671 9 is_stmt 1
	.loc 1 671 12 is_stmt 0
	blt	a0,zero,.L50
	.loc 1 674 9 is_stmt 1
.LBB43:
	.loc 1 674 29
	.loc 1 674 14 is_stmt 0
	lbu	a4,0(s11)
	.loc 1 674 15 is_stmt 1
	.loc 1 674 97 is_stmt 0
	lw	a5,12(sp)
	.loc 1 674 45
	add	a3,a4,s9
	.loc 1 674 97
	lbu	a3,0(a3)
	andi	a3,a3,3
	bne	a3,s10,.L54
	addi	a4,a4,32
.L54:
.LBE43:
.LBB44:
	.loc 1 674 55 is_stmt 1
.LVL98:
	.loc 1 674 41
	andi	a0,a0,255
.LVL99:
	.loc 1 674 71 is_stmt 0
	add	a3,s9,a0
	.loc 1 674 123
	lbu	a3,0(a3)
	andi	a3,a3,3
	bne	a3,s10,.L55
	addi	a0,a0,32
.L55:
.LBE44:
	.loc 1 674 12
	bne	a4,a0,.L50
	.loc 1 677 9 is_stmt 1
	.loc 1 677 12 is_stmt 0
	beq	s0,s8,.L50
	.loc 1 681 9 is_stmt 1
	.loc 1 681 24 is_stmt 0
	addi	s0,s0,1
.LVL100:
	slli	s0,s0,16
	srli	s0,s0,16
.LVL101:
	.loc 1 682 9 is_stmt 1
	addi	s11,s11,1
.LVL102:
	.loc 1 683 9
	j	.L53
.LVL103:
.L58:
.LBE46:
.LBE48:
.LBE62:
	.loc 1 1252 11
	.loc 1 1257 11
.LBB63:
.LBB64:
	.loc 1 1026 3
	.loc 1 1028 3
	.loc 1 1029 5
	.loc 1 1029 16 is_stmt 0
	li	a5,272
	mul	a5,s2,a5
	add	a5,s3,a5
	.loc 1 1029 8
	lbu	a4,11(a5)
	beq	a4,zero,.L60
.LVL104:
.L62:
.LBE64:
.LBE63:
	.loc 1 1348 11 is_stmt 1
	.loc 1 1351 9
	mv	a0,s1
	call	pbuf_free
.LVL105:
	.loc 1 1352 9
	li	a1,0
	mv	a0,s6
	call	dns_call_found
.LVL106:
	.loc 1 1353 9
	.loc 1 1353 28 is_stmt 0
	li	a5,272
	mul	s2,s2,a5
.LVL107:
	add	s3,s3,s2
	sb	zero,10(s3)
	.loc 1 1354 9 is_stmt 1
.LVL108:
.L48:
.LBE71:
	.loc 1 1363 1 is_stmt 0
	lw	ra,108(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,104(sp)
	.cfi_restore 8
	lw	s1,100(sp)
	.cfi_restore 9
.LVL109:
	lw	s2,96(sp)
	.cfi_restore 18
	lw	s3,92(sp)
	.cfi_restore 19
	lw	s4,88(sp)
	.cfi_restore 20
	lw	s5,84(sp)
	.cfi_restore 21
	lw	s6,80(sp)
	.cfi_restore 22
	lw	s7,76(sp)
	.cfi_restore 23
	lw	s8,72(sp)
	.cfi_restore 24
	lw	s9,68(sp)
	.cfi_restore 25
	lw	s10,64(sp)
	.cfi_restore 26
	lw	s11,60(sp)
	.cfi_restore 27
	addi	sp,sp,112
	.cfi_def_cfa_offset 0
	jr	ra
.LVL110:
.L60:
	.cfi_restore_state
.LBB72:
.LBB68:
.LBB67:
.LBB65:
.LBB66:
	.loc 1 1029 38
	lw	a4,4(s7)
	beq	a4,zero,.L62
	.loc 1 1030 7 is_stmt 1
.LVL111:
.LBE66:
.LBE65:
	.loc 1 1034 3
.LBE67:
.LBE68:
	.loc 1 1259 13
	.loc 1 1260 13
	.loc 1 1260 24 is_stmt 0
	li	a4,769
	sh	a4,12(a5)
	.loc 1 1263 13 is_stmt 1
	mv	a0,s6
	call	dns_check_entry
.LVL112:
	.loc 1 1265 13
.L50:
.LBE72:
	.loc 1 1361 3
	mv	a0,s1
	call	pbuf_free
.LVL113:
	.loc 1 1362 3
	j	.L48
.LVL114:
.L71:
.LBB73:
.LBB69:
.LBB54:
	mv	s0,a3
	j	.L63
.LVL115:
.L67:
.LBE54:
.LBE69:
.LBB70:
.LBB61:
.LBB60:
	.loc 1 1150 5
	.loc 1 1150 16 is_stmt 0
	sw	a5,0(s3)
	j	.L68
.LVL116:
.L65:
.LBE60:
.LBE61:
.LBE70:
	.loc 1 1326 13 is_stmt 1
	.loc 1 1326 33 is_stmt 0
	call	lwip_htons
.LVL117:
	.loc 1 1326 17
	add	a0,s0,a0
	.loc 1 1326 16
	bge	a0,s7,.L50
	.loc 1 1329 13 is_stmt 1
	.loc 1 1329 41 is_stmt 0
	lhu	a0,44(sp)
	.loc 1 1330 13
	addi	s4,s4,-1
.LVL118:
	slli	s4,s4,16
	.loc 1 1329 41
	call	lwip_htons
.LVL119:
	.loc 1 1329 21
	add	a0,a0,s0
	slli	s0,a0,16
.LVL120:
	srli	s0,s0,16
.LVL121:
	.loc 1 1330 13 is_stmt 1
	srli	s4,s4,16
.LVL122:
	j	.L59
.LVL123:
.L52:
.LBE73:
	.loc 1 1195 24 discriminator 2
	.loc 1 1195 17 discriminator 2
	.loc 1 1195 5 is_stmt 0 discriminator 2
	addi	s2,s2,1
.LVL124:
	addi	a5,a5,272
	bne	s2,a4,.L70
	.loc 1 1359 1
	j	.L50
	.cfi_endproc
.LFE19:
	.size	dns_recv, .-dns_recv
	.section	.text.dns_init,"ax",@progbits
	.align	1
	.globl	dns_init
	.type	dns_init, @function
dns_init:
.LFB5:
	.loc 1 316 1 is_stmt 1
	.cfi_startproc
	.loc 1 324 3
	.loc 1 324 8
	.loc 1 324 48
	.loc 1 324 58
	.loc 1 326 3
	.loc 1 326 8
	.loc 1 326 50
	.loc 1 326 60
	.loc 1 329 3
	.loc 1 333 3
	.loc 1 316 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	.cfi_offset 8, -8
	.loc 1 333 15
	lui	s0,%hi(.LANCHOR3)
	addi	s0,s0,%lo(.LANCHOR3)
	.loc 1 333 6
	lw	a5,0(s0)
	.loc 1 316 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 333 6
	bne	a5,zero,.L86
	.loc 1 334 5 is_stmt 1
	.loc 1 334 19 is_stmt 0
	li	a0,46
	call	udp_new_ip_type
.LVL125:
	.loc 1 343 5
	lui	a1,%hi(ip_addr_any)
	li	a2,0
	addi	a1,a1,%lo(ip_addr_any)
	.loc 1 334 17
	sw	a0,0(s0)
	.loc 1 335 5 is_stmt 1
	.loc 1 335 10
	.loc 1 335 9
	.loc 1 335 19
	.loc 1 339 5
	.loc 1 339 10
	.loc 1 339 42
	.loc 1 339 52
	.loc 1 343 5
	call	udp_bind
.LVL126:
	.loc 1 344 5
	lw	a0,0(s0)
	.loc 1 351 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_remember_state
	.cfi_restore 8
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 344 5
	lui	a1,%hi(dns_recv)
	.loc 1 351 1
	.loc 1 344 5
	li	a2,0
	addi	a1,a1,%lo(dns_recv)
	.loc 1 351 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 344 5
	tail	udp_recv
.LVL127:
.L86:
	.cfi_restore_state
	.loc 1 351 1
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE5:
	.size	dns_init, .-dns_init
	.section	.text.dns_setserver,"ax",@progbits
	.align	1
	.globl	dns_setserver
	.type	dns_setserver, @function
dns_setserver:
.LFB6:
	.loc 1 362 1 is_stmt 1
	.cfi_startproc
.LVL128:
	.loc 1 363 3
	.loc 1 363 6 is_stmt 0
	li	a5,1
	bgtu	a0,a5,.L89
	.loc 1 364 5 is_stmt 1
	lui	a4,%hi(.LANCHOR2)
	addi	a5,a4,%lo(.LANCHOR2)
	slli	a0,a0,2
.LVL129:
	.loc 1 365 27 is_stmt 0
	add	a5,a5,a0
	.loc 1 364 8
	beq	a1,zero,.L91
	.loc 1 365 7 is_stmt 1
	.loc 1 365 27 is_stmt 0
	lw	a4,0(a1)
.L92:
	.loc 1 367 27
	sw	a4,0(a5)
.L89:
	.loc 1 370 1
	ret
.L91:
	.loc 1 367 7 is_stmt 1
	.loc 1 367 27 is_stmt 0
	lui	a4,%hi(ip_addr_any)
	lw	a4,%lo(ip_addr_any)(a4)
	j	.L92
	.cfi_endproc
.LFE6:
	.size	dns_setserver, .-dns_setserver
	.section	.text.dns_getserver,"ax",@progbits
	.align	1
	.globl	dns_getserver
	.type	dns_getserver, @function
dns_getserver:
.LFB7:
	.loc 1 382 1 is_stmt 1
	.cfi_startproc
.LVL130:
	.loc 1 383 3
	.loc 1 383 6 is_stmt 0
	li	a5,1
	bgtu	a0,a5,.L95
	.loc 1 384 5 is_stmt 1
	.loc 1 384 12 is_stmt 0
	slli	a5,a0,2
	lui	a0,%hi(.LANCHOR2)
.LVL131:
	addi	a0,a0,%lo(.LANCHOR2)
	add	a0,a0,a5
	ret
.LVL132:
.L95:
	.loc 1 386 13
	lui	a0,%hi(ip_addr_any)
.LVL133:
	addi	a0,a0,%lo(ip_addr_any)
	.loc 1 388 1
	ret
	.cfi_endproc
.LFE7:
	.size	dns_getserver, .-dns_getserver
	.section	.text.dns_tmr,"ax",@progbits
	.align	1
	.globl	dns_tmr
	.type	dns_tmr, @function
dns_tmr:
.LFB8:
	.loc 1 396 1 is_stmt 1
	.cfi_startproc
	.loc 1 397 3
	.loc 1 398 3
.LBB76:
.LBB77:
	.loc 1 1126 3
	.loc 1 1128 3
.LVL134:
	.loc 1 1128 15
	.loc 1 1129 5
.LBE77:
.LBE76:
	.loc 1 396 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
.LBB82:
.LBB78:
	.loc 1 1129 5
	li	a0,0
.LBE78:
.LBE82:
	.loc 1 396 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
.LBB83:
.LBB79:
	.loc 1 1129 5
	call	dns_check_entry
.LVL135:
	.loc 1 1128 22 is_stmt 1
	.loc 1 1128 15
	.loc 1 1129 5
	li	a0,1
	call	dns_check_entry
.LVL136:
	.loc 1 1128 22
	.loc 1 1128 15
	.loc 1 1129 5
	li	a0,2
	call	dns_check_entry
.LVL137:
	.loc 1 1128 22
	.loc 1 1128 15
	.loc 1 1129 5
.LBE79:
.LBE83:
	.loc 1 399 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
.LBB84:
.LBB80:
	.loc 1 1129 5
	li	a0,3
.LBE80:
.LBE84:
	.loc 1 399 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
.LBB85:
.LBB81:
	.loc 1 1129 5
	tail	dns_check_entry
.LVL138:
.LBE81:
.LBE85:
	.cfi_endproc
.LFE8:
	.size	dns_tmr, .-dns_tmr
	.section	.rodata.dns_gethostbyname_addrtype.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"localhost"
	.section	.text.dns_gethostbyname_addrtype,"ax",@progbits
	.align	1
	.globl	dns_gethostbyname_addrtype
	.type	dns_gethostbyname_addrtype, @function
dns_gethostbyname_addrtype:
.LFB22:
	.loc 1 1549 1 is_stmt 1
	.cfi_startproc
.LVL139:
	.loc 1 1550 3
	.loc 1 1556 3
	.loc 1 1556 6 is_stmt 0
	bne	a1,zero,.L99
	.loc 1 1558 12
	li	a4,-16
.LVL140:
	.loc 1 1629 1
	mv	a0,a4
.LVL141:
	ret
.LVL142:
.L101:
	.cfi_def_cfa_offset 48
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 23, -36
	.cfi_offset 24, -40
	.cfi_offset 25, -44
	.cfi_offset 26, -48
	.loc 1 1558 12
	li	a4,-16
.L121:
	.loc 1 1629 1
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	lw	s1,36(sp)
	.cfi_restore 9
.LVL143:
	lw	s2,32(sp)
	.cfi_restore 18
	lw	s3,28(sp)
	.cfi_restore 19
	lw	s4,24(sp)
	.cfi_restore 20
	lw	s5,20(sp)
	.cfi_restore 21
	lw	s6,16(sp)
	.cfi_restore 22
	lw	s7,12(sp)
	.cfi_restore 23
	lw	s8,8(sp)
	.cfi_restore 24
	lw	s9,4(sp)
	.cfi_restore 25
	lw	s10,0(sp)
	.cfi_restore 26
	mv	a0,a4
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
.LVL144:
.L99:
	.loc 1 1549 1 discriminator 1
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s1,36(sp)
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s2,32(sp)
	sw	s3,28(sp)
	sw	s4,24(sp)
	sw	s5,20(sp)
	sw	s6,16(sp)
	sw	s7,12(sp)
	sw	s8,8(sp)
	sw	s9,4(sp)
	sw	s10,0(sp)
	.cfi_offset 9, -12
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 23, -36
	.cfi_offset 24, -40
	.cfi_offset 25, -44
	.cfi_offset 26, -48
	mv	s1,a0
	.loc 1 1556 21 discriminator 1
	beq	a0,zero,.L101
.LVL145:
	.loc 1 1557 19
	lbu	a5,0(a0)
	beq	a5,zero,.L101
	.loc 1 1561 3 is_stmt 1
	.loc 1 1561 6 is_stmt 0
	lui	a5,%hi(.LANCHOR3)
	lw	a5,%lo(.LANCHOR3)(a5)
	beq	a5,zero,.L101
	mv	s7,a1
	mv	s4,a2
	mv	s5,a3
	.loc 1 1565 3 is_stmt 1
	.loc 1 1565 17 is_stmt 0
	call	strlen
.LVL146:
	.loc 1 1566 6
	li	a5,255
	.loc 1 1565 17
	mv	s3,a0
.LVL147:
	.loc 1 1566 3 is_stmt 1
	.loc 1 1566 6 is_stmt 0
	bgtu	a0,a5,.L101
	.loc 1 1573 3 is_stmt 1
	.loc 1 1573 7 is_stmt 0
	lui	a1,%hi(.LC0)
	addi	a1,a1,%lo(.LC0)
	mv	a0,s1
.LVL148:
	call	strcmp
.LVL149:
	.loc 1 1573 6
	bne	a0,zero,.L102
	.loc 1 1574 5 is_stmt 1
	.loc 1 1574 19 is_stmt 0
	li	a5,16777216
	addi	a5,a5,127
.L132:
.LBB91:
.LBB92:
	.loc 1 625 23
	sw	a5,0(s7)
	.loc 1 627 7 is_stmt 1
.LBE92:
.LBE91:
	.loc 1 1591 12 is_stmt 0
	li	a4,0
	j	.L121
.L102:
	.loc 1 1580 3 is_stmt 1
	.loc 1 1580 7 is_stmt 0
	mv	a1,s7
	mv	a0,s1
	call	ip4addr_aton
.LVL150:
	.loc 1 1586 14
	li	a4,0
	.loc 1 1580 6
	bne	a0,zero,.L121
	lui	s0,%hi(.LANCHOR1)
	addi	s8,s0,%lo(.LANCHOR1)
	addi	s9,s0,%lo(.LANCHOR1)
	addi	s6,s0,%lo(.LANCHOR1)
	li	s2,0
.LBB94:
.LBB93:
	.loc 1 618 8
	li	s10,3
	.loc 1 617 3
	li	s0,4
.L104:
.LVL151:
	.loc 1 618 5 is_stmt 1
	.loc 1 618 8 is_stmt 0
	lbu	a5,10(s9)
	bne	a5,s10,.L103
	.loc 1 619 10
	li	a2,256
	addi	a1,s9,15
	mv	a0,s1
	call	lwip_strnicmp
.LVL152:
	.loc 1 618 48
	bne	a0,zero,.L103
	.loc 1 621 7 is_stmt 1
	.loc 1 622 7
	.loc 1 623 7
	.loc 1 624 7
	.loc 1 625 9
	.loc 1 625 46 is_stmt 0
	li	s0,272
	mul	s2,s2,s0
.LVL153:
	add	s0,s6,s2
	lw	a5,4(s0)
	j	.L132
.LVL154:
.L103:
	.loc 1 617 22 is_stmt 1
	.loc 1 617 15
	.loc 1 617 3 is_stmt 0
	addi	s2,s2,1
.LVL155:
	addi	s9,s9,272
	bne	s2,s0,.L104
.LBE93:
.LBE94:
	.loc 1 1607 3 is_stmt 1
	.loc 1 1621 5
	.loc 1 1621 8 is_stmt 0
	lui	a5,%hi(.LANCHOR2)
	lw	a5,%lo(.LANCHOR2)(a5)
	.loc 1 1622 14
	li	a4,-6
	.loc 1 1621 8
	beq	a5,zero,.L121
.LBB95:
.LBB96:
.LBB97:
	.loc 1 1425 18
	lui	s7,%hi(.LANCHOR5)
.LVL156:
	lbu	a3,%lo(.LANCHOR5)(s7)
	li	a5,0
.LBE97:
	.loc 1 1416 9
	li	s2,4
	.loc 1 1415 8
	li	a2,0
	addi	s7,s7,%lo(.LANCHOR5)
	.loc 1 1424 8
	li	a6,3
	.loc 1 1417 3
	li	a0,4
.L108:
	.loc 1 1420 14
	lbu	a4,10(s8)
	andi	a1,a5,0xff
.LVL157:
	.loc 1 1418 5 is_stmt 1
	.loc 1 1420 5
	.loc 1 1420 8 is_stmt 0
	bne	a4,zero,.L105
	.loc 1 1418 11
	li	s0,272
	mul	a5,a5,s0
.LVL158:
	mv	s2,a1
.LVL159:
	add	s0,s6,a5
.LVL160:
.L106:
	.loc 1 1463 3 is_stmt 1
	.loc 1 1467 3
	.loc 1 1470 3
	.loc 1 1470 16 is_stmt 0
	li	a5,1
	sb	a5,10(s0)
	.loc 1 1471 3 is_stmt 1
	.loc 1 1474 14 is_stmt 0
	lui	a5,%hi(.LANCHOR0)
	slli	a4,s2,3
	addi	a5,a5,%lo(.LANCHOR0)
	add	a5,a5,a4
	.loc 1 1471 16
	sb	a3,14(s0)
	.loc 1 1472 3 is_stmt 1
	.loc 1 1473 3
	.loc 1 1474 3
	.loc 1 1474 14 is_stmt 0
	sw	s4,0(a5)
	.loc 1 1475 3 is_stmt 1
	.loc 1 1475 12 is_stmt 0
	sw	s5,4(a5)
	.loc 1 1476 3 is_stmt 1
.LVL161:
	.loc 1 1477 3
	mv	a2,s3
	mv	a1,s1
	addi	a0,s0,15
	call	memcpy
.LVL162:
	.loc 1 1478 3
	.loc 1 1496 12 is_stmt 0
	lbu	a5,0(s7)
	.loc 1 1478 24
	add	s0,s0,s3
.LVL163:
	sb	zero,15(s0)
	.loc 1 1496 3 is_stmt 1
	.loc 1 1496 12 is_stmt 0
	addi	a5,a5,1
	.loc 1 1499 3
	mv	a0,s2
	.loc 1 1496 12
	sb	a5,0(s7)
	.loc 1 1499 3 is_stmt 1
	call	dns_check_entry
.LVL164:
	.loc 1 1502 3
	.loc 1 1502 10 is_stmt 0
	li	a4,-5
	j	.L121
.LVL165:
.L105:
	.loc 1 1424 5 is_stmt 1
	.loc 1 1424 8 is_stmt 0
	bne	a4,a6,.L107
.LBB98:
	.loc 1 1425 7 is_stmt 1
	.loc 1 1425 12 is_stmt 0
	lbu	a4,14(s8)
	sub	a4,a3,a4
	andi	a4,a4,0xff
.LVL166:
	.loc 1 1426 7 is_stmt 1
	.loc 1 1426 10 is_stmt 0
	bleu	a4,a2,.L107
	mv	s2,a1
.LVL167:
	mv	a2,a4
.LVL168:
.L107:
.LBE98:
	.loc 1 1417 22 is_stmt 1
	.loc 1 1417 15
	.loc 1 1417 3 is_stmt 0
	addi	a5,a5,1
.LVL169:
	addi	s8,s8,272
	bne	a5,a0,.L108
	.loc 1 1434 3 is_stmt 1
	.loc 1 1435 5
	.loc 1 1438 14 is_stmt 0
	li	a4,-1
	.loc 1 1435 8
	beq	s2,a5,.L121
	.loc 1 1435 42
	li	s0,272
	mul	s0,s2,s0
	.loc 1 1435 22
	li	a5,3
.LVL170:
	.loc 1 1438 14
	li	a4,-1
	.loc 1 1435 42
	add	s0,s6,s0
	.loc 1 1435 22
	lbu	a2,10(s0)
.LVL171:
	bne	a2,a5,.L121
	j	.L106
.LBE96:
.LBE95:
	.cfi_endproc
.LFE22:
	.size	dns_gethostbyname_addrtype, .-dns_gethostbyname_addrtype
	.section	.text.dns_gethostbyname,"ax",@progbits
	.align	1
	.globl	dns_gethostbyname
	.type	dns_gethostbyname, @function
dns_gethostbyname:
.LFB21:
	.loc 1 1528 1 is_stmt 1
	.cfi_startproc
.LVL172:
	.loc 1 1529 3
	.loc 1 1529 10 is_stmt 0
	li	a4,0
	tail	dns_gethostbyname_addrtype
.LVL173:
	.cfi_endproc
.LFE21:
	.size	dns_gethostbyname, .-dns_gethostbyname
	.globl	dns_mquery_v4group
	.section	.bss.dns_requests,"aw",@nobits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	dns_requests, @object
	.size	dns_requests, 32
dns_requests:
	.zero	32
	.section	.bss.dns_table,"aw",@nobits
	.align	2
	.set	.LANCHOR1,. + 0
	.type	dns_table, @object
	.size	dns_table, 1088
dns_table:
	.zero	1088
	.section	.sbss.dns_pcbs,"aw",@nobits
	.align	2
	.set	.LANCHOR3,. + 0
	.type	dns_pcbs, @object
	.size	dns_pcbs, 4
dns_pcbs:
	.zero	4
	.section	.sbss.dns_seqno,"aw",@nobits
	.set	.LANCHOR5,. + 0
	.type	dns_seqno, @object
	.size	dns_seqno, 1
dns_seqno:
	.zero	1
	.section	.sbss.dns_servers,"aw",@nobits
	.align	2
	.set	.LANCHOR2,. + 0
	.type	dns_servers, @object
	.size	dns_servers, 8
dns_servers:
	.zero	8
	.section	.sbss.dns_txid,"aw",@nobits
	.align	1
	.set	.LANCHOR4,. + 0
	.type	dns_txid, @object
	.size	dns_txid, 2
dns_txid:
	.zero	2
	.section	.srodata.dns_mquery_v4group,"a"
	.align	2
	.type	dns_mquery_v4group, @object
	.size	dns_mquery_v4group, 4
dns_mquery_v4group:
	.word	-83885856
	.text
.Letext0:
	.file 2 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 3 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h"
	.file 4 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 5 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/arch.h"
	.file 6 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/err.h"
	.file 7 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/pbuf.h"
	.file 8 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/ip4_addr.h"
	.file 9 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/ip_addr.h"
	.file 10 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/ctype.h"
	.file 11 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/memp.h"
	.file 12 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/netif.h"
	.file 13 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/udp.h"
	.file 14 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/dns.h"
	.file 15 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/prot/dns.h"
	.file 16 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/def.h"
	.file 17 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1622
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF196
	.byte	0xc
	.4byte	.LASF197
	.4byte	.LASF198
	.4byte	.Ldebug_ranges0+0x188
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.byte	0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x4
	.4byte	.LASF2
	.byte	0x2
	.byte	0x29
	.byte	0x15
	.4byte	0x3f
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1
	.byte	0x4
	.4byte	.LASF3
	.byte	0x2
	.byte	0x2b
	.byte	0x17
	.4byte	0x52
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF4
	.byte	0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF5
	.byte	0x4
	.4byte	.LASF6
	.byte	0x2
	.byte	0x39
	.byte	0x1c
	.4byte	0x6c
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF7
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF8
	.byte	0x4
	.4byte	.LASF9
	.byte	0x2
	.byte	0x4f
	.byte	0x1b
	.4byte	0x86
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF11
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF12
	.byte	0x4
	.4byte	.LASF13
	.byte	0x3
	.byte	0xd1
	.byte	0x16
	.4byte	0x25
	.byte	0x5
	.byte	0x4
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.byte	0x6
	.4byte	0xa9
	.byte	0x7
	.byte	0x4
	.4byte	0xb0
	.byte	0x4
	.4byte	.LASF15
	.byte	0x4
	.byte	0x14
	.byte	0x12
	.4byte	0x33
	.byte	0x4
	.4byte	.LASF16
	.byte	0x4
	.byte	0x18
	.byte	0x13
	.4byte	0x46
	.byte	0x4
	.4byte	.LASF17
	.byte	0x4
	.byte	0x24
	.byte	0x14
	.4byte	0x60
	.byte	0x4
	.4byte	.LASF18
	.byte	0x4
	.byte	0x30
	.byte	0x14
	.4byte	0x7a
	.byte	0x4
	.4byte	.LASF19
	.byte	0x5
	.byte	0x7d
	.byte	0x11
	.4byte	0xc7
	.byte	0x4
	.4byte	.LASF20
	.byte	0x5
	.byte	0x7e
	.byte	0x10
	.4byte	0xbb
	.byte	0x4
	.4byte	.LASF21
	.byte	0x5
	.byte	0x7f
	.byte	0x12
	.4byte	0xd3
	.byte	0x4
	.4byte	.LASF22
	.byte	0x5
	.byte	0x81
	.byte	0x12
	.4byte	0xdf
	.byte	0x8
	.4byte	0xb0
	.4byte	0x126
	.byte	0x9
	.byte	0
	.byte	0x6
	.4byte	0x11b
	.byte	0xa
	.4byte	.LASF64
	.byte	0xa
	.byte	0x46
	.byte	0x13
	.4byte	0x126
	.byte	0xb
	.byte	0x5
	.byte	0x4
	.4byte	0x2c
	.byte	0x6
	.byte	0x35
	.byte	0xe
	.4byte	0x1ac
	.byte	0xc
	.4byte	.LASF23
	.byte	0
	.byte	0xd
	.4byte	.LASF24
	.byte	0x7f
	.byte	0xd
	.4byte	.LASF25
	.byte	0x7e
	.byte	0xd
	.4byte	.LASF26
	.byte	0x7d
	.byte	0xd
	.4byte	.LASF27
	.byte	0x7c
	.byte	0xd
	.4byte	.LASF28
	.byte	0x7b
	.byte	0xd
	.4byte	.LASF29
	.byte	0x7a
	.byte	0xd
	.4byte	.LASF30
	.byte	0x79
	.byte	0xd
	.4byte	.LASF31
	.byte	0x78
	.byte	0xd
	.4byte	.LASF32
	.byte	0x77
	.byte	0xd
	.4byte	.LASF33
	.byte	0x76
	.byte	0xd
	.4byte	.LASF34
	.byte	0x75
	.byte	0xd
	.4byte	.LASF35
	.byte	0x74
	.byte	0xd
	.4byte	.LASF36
	.byte	0x73
	.byte	0xd
	.4byte	.LASF37
	.byte	0x72
	.byte	0xd
	.4byte	.LASF38
	.byte	0x71
	.byte	0xd
	.4byte	.LASF39
	.byte	0x70
	.byte	0
	.byte	0x4
	.4byte	.LASF40
	.byte	0x6
	.byte	0x60
	.byte	0xe
	.4byte	0xf7
	.byte	0xb
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x7
	.byte	0x59
	.byte	0xe
	.4byte	0x1e5
	.byte	0xc
	.4byte	.LASF41
	.byte	0xb6
	.byte	0xc
	.4byte	.LASF42
	.byte	0xa2
	.byte	0xc
	.4byte	.LASF43
	.byte	0x8e
	.byte	0xc
	.4byte	.LASF44
	.byte	0x80
	.byte	0xc
	.4byte	.LASF45
	.byte	0
	.byte	0
	.byte	0xb
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x7
	.byte	0x91
	.byte	0xe
	.4byte	0x20e
	.byte	0xe
	.4byte	.LASF46
	.2byte	0x280
	.byte	0xc
	.4byte	.LASF47
	.byte	0x1
	.byte	0xc
	.4byte	.LASF48
	.byte	0x41
	.byte	0xe
	.4byte	.LASF49
	.2byte	0x182
	.byte	0
	.byte	0xf
	.4byte	.LASF56
	.byte	0x10
	.byte	0x7
	.byte	0xba
	.byte	0x8
	.4byte	0x284
	.byte	0x10
	.4byte	.LASF50
	.byte	0x7
	.byte	0xbc
	.byte	0x10
	.4byte	0x284
	.byte	0
	.byte	0x10
	.4byte	.LASF51
	.byte	0x7
	.byte	0xbf
	.byte	0x9
	.4byte	0xa7
	.byte	0x4
	.byte	0x10
	.4byte	.LASF52
	.byte	0x7
	.byte	0xc8
	.byte	0x9
	.4byte	0x103
	.byte	0x8
	.byte	0x11
	.string	"len"
	.byte	0x7
	.byte	0xcb
	.byte	0x9
	.4byte	0x103
	.byte	0xa
	.byte	0x10
	.4byte	.LASF53
	.byte	0x7
	.byte	0xd0
	.byte	0x8
	.4byte	0xeb
	.byte	0xc
	.byte	0x10
	.4byte	.LASF54
	.byte	0x7
	.byte	0xd3
	.byte	0x8
	.4byte	0xeb
	.byte	0xd
	.byte	0x11
	.string	"ref"
	.byte	0x7
	.byte	0xda
	.byte	0x8
	.4byte	0xeb
	.byte	0xe
	.byte	0x10
	.4byte	.LASF55
	.byte	0x7
	.byte	0xdd
	.byte	0x8
	.4byte	0xeb
	.byte	0xf
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x20e
	.byte	0xf
	.4byte	.LASF57
	.byte	0x4
	.byte	0x8
	.byte	0x33
	.byte	0x8
	.4byte	0x2a5
	.byte	0x10
	.4byte	.LASF58
	.byte	0x8
	.byte	0x34
	.byte	0x9
	.4byte	0x10f
	.byte	0
	.byte	0
	.byte	0x4
	.4byte	.LASF59
	.byte	0x8
	.byte	0x39
	.byte	0x19
	.4byte	0x28a
	.byte	0x12
	.4byte	.LASF82
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x9
	.byte	0x36
	.byte	0x6
	.4byte	0x2d6
	.byte	0xc
	.4byte	.LASF60
	.byte	0
	.byte	0xc
	.4byte	.LASF61
	.byte	0x6
	.byte	0xc
	.4byte	.LASF62
	.byte	0x2e
	.byte	0
	.byte	0x13
	.4byte	.LASF63
	.byte	0x9
	.2byte	0x10e
	.byte	0x14
	.4byte	0x2a5
	.byte	0x6
	.4byte	0x2d6
	.byte	0x14
	.4byte	.LASF65
	.byte	0x9
	.2byte	0x171
	.byte	0x18
	.4byte	0x2e3
	.byte	0xb
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0xb
	.byte	0x34
	.byte	0xe
	.4byte	0x364
	.byte	0xc
	.4byte	.LASF66
	.byte	0
	.byte	0xc
	.4byte	.LASF67
	.byte	0x1
	.byte	0xc
	.4byte	.LASF68
	.byte	0x2
	.byte	0xc
	.4byte	.LASF69
	.byte	0x3
	.byte	0xc
	.4byte	.LASF70
	.byte	0x4
	.byte	0xc
	.4byte	.LASF71
	.byte	0x5
	.byte	0xc
	.4byte	.LASF72
	.byte	0x6
	.byte	0xc
	.4byte	.LASF73
	.byte	0x7
	.byte	0xc
	.4byte	.LASF74
	.byte	0x8
	.byte	0xc
	.4byte	.LASF75
	.byte	0x9
	.byte	0xc
	.4byte	.LASF76
	.byte	0xa
	.byte	0xc
	.4byte	.LASF77
	.byte	0xb
	.byte	0xc
	.4byte	.LASF78
	.byte	0xc
	.byte	0xc
	.4byte	.LASF79
	.byte	0xd
	.byte	0xc
	.4byte	.LASF80
	.byte	0xe
	.byte	0xc
	.4byte	.LASF81
	.byte	0xf
	.byte	0
	.byte	0x12
	.4byte	.LASF83
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0xc
	.byte	0x71
	.byte	0x6
	.4byte	0x389
	.byte	0xc
	.4byte	.LASF84
	.byte	0
	.byte	0xc
	.4byte	.LASF85
	.byte	0x1
	.byte	0xc
	.4byte	.LASF86
	.byte	0x2
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x2e3
	.byte	0x4
	.4byte	.LASF87
	.byte	0xd
	.byte	0x4d
	.byte	0x10
	.4byte	0x39b
	.byte	0x7
	.byte	0x4
	.4byte	0x3a1
	.byte	0x15
	.4byte	0x3c0
	.byte	0x16
	.4byte	0xa7
	.byte	0x16
	.4byte	0x3c0
	.byte	0x16
	.4byte	0x284
	.byte	0x16
	.4byte	0x389
	.byte	0x16
	.4byte	0x103
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x3c6
	.byte	0xf
	.4byte	.LASF88
	.byte	0x28
	.byte	0xd
	.byte	0x51
	.byte	0x8
	.4byte	0x497
	.byte	0x10
	.4byte	.LASF89
	.byte	0xd
	.byte	0x53
	.byte	0xd
	.4byte	0x2d6
	.byte	0
	.byte	0x10
	.4byte	.LASF90
	.byte	0xd
	.byte	0x53
	.byte	0x21
	.4byte	0x2d6
	.byte	0x4
	.byte	0x10
	.4byte	.LASF91
	.byte	0xd
	.byte	0x53
	.byte	0x31
	.4byte	0xeb
	.byte	0x8
	.byte	0x10
	.4byte	.LASF92
	.byte	0xd
	.byte	0x53
	.byte	0x41
	.4byte	0xeb
	.byte	0x9
	.byte	0x11
	.string	"tos"
	.byte	0xd
	.byte	0x53
	.byte	0x52
	.4byte	0xeb
	.byte	0xa
	.byte	0x11
	.string	"ttl"
	.byte	0xd
	.byte	0x53
	.byte	0x5c
	.4byte	0xeb
	.byte	0xb
	.byte	0x10
	.4byte	.LASF50
	.byte	0xd
	.byte	0x57
	.byte	0x13
	.4byte	0x3c0
	.byte	0xc
	.byte	0x10
	.4byte	.LASF54
	.byte	0xd
	.byte	0x59
	.byte	0x8
	.4byte	0xeb
	.byte	0x10
	.byte	0x10
	.4byte	.LASF93
	.byte	0xd
	.byte	0x5b
	.byte	0x9
	.4byte	0x103
	.byte	0x12
	.byte	0x10
	.4byte	.LASF94
	.byte	0xd
	.byte	0x5b
	.byte	0x15
	.4byte	0x103
	.byte	0x14
	.byte	0x10
	.4byte	.LASF95
	.byte	0xd
	.byte	0x60
	.byte	0xe
	.4byte	0x2a5
	.byte	0x18
	.byte	0x10
	.4byte	.LASF96
	.byte	0xd
	.byte	0x63
	.byte	0x8
	.4byte	0xeb
	.byte	0x1c
	.byte	0x10
	.4byte	.LASF97
	.byte	0xd
	.byte	0x65
	.byte	0x8
	.4byte	0xeb
	.byte	0x1d
	.byte	0x10
	.4byte	.LASF98
	.byte	0xd
	.byte	0x6e
	.byte	0xf
	.4byte	0x38f
	.byte	0x20
	.byte	0x10
	.4byte	.LASF99
	.byte	0xd
	.byte	0x70
	.byte	0x9
	.4byte	0xa7
	.byte	0x24
	.byte	0
	.byte	0xa
	.4byte	.LASF100
	.byte	0xe
	.byte	0x5a
	.byte	0x18
	.4byte	0x2e3
	.byte	0x4
	.4byte	.LASF101
	.byte	0xe
	.byte	0x67
	.byte	0x10
	.4byte	0x4af
	.byte	0x7
	.byte	0x4
	.4byte	0x4b5
	.byte	0x15
	.4byte	0x4ca
	.byte	0x16
	.4byte	0xb5
	.byte	0x16
	.4byte	0x389
	.byte	0x16
	.4byte	0xa7
	.byte	0
	.byte	0xf
	.4byte	.LASF102
	.byte	0xc
	.byte	0xf
	.byte	0x67
	.byte	0x8
	.4byte	0x532
	.byte	0x11
	.string	"id"
	.byte	0xf
	.byte	0x68
	.byte	0x9
	.4byte	0x103
	.byte	0
	.byte	0x10
	.4byte	.LASF103
	.byte	0xf
	.byte	0x69
	.byte	0x8
	.4byte	0xeb
	.byte	0x2
	.byte	0x10
	.4byte	.LASF104
	.byte	0xf
	.byte	0x6a
	.byte	0x8
	.4byte	0xeb
	.byte	0x3
	.byte	0x10
	.4byte	.LASF105
	.byte	0xf
	.byte	0x6b
	.byte	0x9
	.4byte	0x103
	.byte	0x4
	.byte	0x10
	.4byte	.LASF106
	.byte	0xf
	.byte	0x6c
	.byte	0x9
	.4byte	0x103
	.byte	0x6
	.byte	0x10
	.4byte	.LASF107
	.byte	0xf
	.byte	0x6d
	.byte	0x9
	.4byte	0x103
	.byte	0x8
	.byte	0x10
	.4byte	.LASF108
	.byte	0xf
	.byte	0x6e
	.byte	0x9
	.4byte	0x103
	.byte	0xa
	.byte	0
	.byte	0x17
	.4byte	.LASF126
	.byte	0x1
	.byte	0x69
	.byte	0xe
	.4byte	0x103
	.byte	0x5
	.byte	0x3
	.4byte	dns_txid
	.byte	0xf
	.4byte	.LASF109
	.byte	0x4
	.byte	0x1
	.byte	0xbd
	.byte	0x8
	.4byte	0x56c
	.byte	0x10
	.4byte	.LASF110
	.byte	0x1
	.byte	0xc0
	.byte	0x9
	.4byte	0x103
	.byte	0
	.byte	0x11
	.string	"cls"
	.byte	0x1
	.byte	0xc1
	.byte	0x9
	.4byte	0x103
	.byte	0x2
	.byte	0
	.byte	0xf
	.4byte	.LASF111
	.byte	0xc
	.byte	0x1
	.byte	0xc7
	.byte	0x8
	.4byte	0x5ae
	.byte	0x10
	.4byte	.LASF110
	.byte	0x1
	.byte	0xca
	.byte	0x9
	.4byte	0x103
	.byte	0
	.byte	0x11
	.string	"cls"
	.byte	0x1
	.byte	0xcb
	.byte	0x9
	.4byte	0x103
	.byte	0x2
	.byte	0x11
	.string	"ttl"
	.byte	0x1
	.byte	0xcc
	.byte	0x9
	.4byte	0x10f
	.byte	0x4
	.byte	0x11
	.string	"len"
	.byte	0x1
	.byte	0xcd
	.byte	0x9
	.4byte	0x103
	.byte	0x8
	.byte	0
	.byte	0xb
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x1
	.byte	0xd4
	.byte	0xe
	.4byte	0x5d5
	.byte	0xc
	.4byte	.LASF112
	.byte	0
	.byte	0xc
	.4byte	.LASF113
	.byte	0x1
	.byte	0xc
	.4byte	.LASF114
	.byte	0x2
	.byte	0xc
	.4byte	.LASF115
	.byte	0x3
	.byte	0
	.byte	0x18
	.4byte	.LASF116
	.2byte	0x110
	.byte	0x1
	.byte	0xdc
	.byte	0x8
	.4byte	0x659
	.byte	0x11
	.string	"ttl"
	.byte	0x1
	.byte	0xdd
	.byte	0x9
	.4byte	0x10f
	.byte	0
	.byte	0x10
	.4byte	.LASF117
	.byte	0x1
	.byte	0xde
	.byte	0xd
	.4byte	0x2d6
	.byte	0x4
	.byte	0x10
	.4byte	.LASF118
	.byte	0x1
	.byte	0xdf
	.byte	0x9
	.4byte	0x103
	.byte	0x8
	.byte	0x10
	.4byte	.LASF119
	.byte	0x1
	.byte	0xe0
	.byte	0x8
	.4byte	0xeb
	.byte	0xa
	.byte	0x10
	.4byte	.LASF120
	.byte	0x1
	.byte	0xe1
	.byte	0x8
	.4byte	0xeb
	.byte	0xb
	.byte	0x11
	.string	"tmr"
	.byte	0x1
	.byte	0xe2
	.byte	0x8
	.4byte	0xeb
	.byte	0xc
	.byte	0x10
	.4byte	.LASF121
	.byte	0x1
	.byte	0xe3
	.byte	0x8
	.4byte	0xeb
	.byte	0xd
	.byte	0x10
	.4byte	.LASF122
	.byte	0x1
	.byte	0xe4
	.byte	0x8
	.4byte	0xeb
	.byte	0xe
	.byte	0x10
	.4byte	.LASF123
	.byte	0x1
	.byte	0xe8
	.byte	0x8
	.4byte	0x659
	.byte	0xf
	.byte	0
	.byte	0x8
	.4byte	0xa9
	.4byte	0x669
	.byte	0x19
	.4byte	0x25
	.byte	0xff
	.byte	0
	.byte	0xf
	.4byte	.LASF124
	.byte	0x8
	.byte	0x1
	.byte	0xf3
	.byte	0x8
	.4byte	0x691
	.byte	0x10
	.4byte	.LASF125
	.byte	0x1
	.byte	0xf5
	.byte	0x16
	.4byte	0x4a3
	.byte	0
	.byte	0x11
	.string	"arg"
	.byte	0x1
	.byte	0xf7
	.byte	0x9
	.4byte	0xa7
	.byte	0x4
	.byte	0
	.byte	0x8
	.4byte	0x3c0
	.4byte	0x6a1
	.byte	0x19
	.4byte	0x25
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LASF127
	.byte	0x1
	.2byte	0x126
	.byte	0x18
	.4byte	0x691
	.byte	0x5
	.byte	0x3
	.4byte	dns_pcbs
	.byte	0x1a
	.4byte	.LASF128
	.byte	0x1
	.2byte	0x12a
	.byte	0xd
	.4byte	0xeb
	.byte	0x5
	.byte	0x3
	.4byte	dns_seqno
	.byte	0x8
	.4byte	0x5d5
	.4byte	0x6d7
	.byte	0x19
	.4byte	0x25
	.byte	0x3
	.byte	0
	.byte	0x1a
	.4byte	.LASF129
	.byte	0x1
	.2byte	0x12b
	.byte	0x1f
	.4byte	0x6c7
	.byte	0x5
	.byte	0x3
	.4byte	dns_table
	.byte	0x8
	.4byte	0x669
	.4byte	0x6fa
	.byte	0x19
	.4byte	0x25
	.byte	0x3
	.byte	0
	.byte	0x1a
	.4byte	.LASF130
	.byte	0x1
	.2byte	0x12c
	.byte	0x1d
	.4byte	0x6ea
	.byte	0x5
	.byte	0x3
	.4byte	dns_requests
	.byte	0x8
	.4byte	0x2d6
	.4byte	0x71d
	.byte	0x19
	.4byte	0x25
	.byte	0x1
	.byte	0
	.byte	0x1a
	.4byte	.LASF131
	.byte	0x1
	.2byte	0x12d
	.byte	0x12
	.4byte	0x70d
	.byte	0x5
	.byte	0x3
	.4byte	dns_servers
	.byte	0x1b
	.4byte	0x497
	.byte	0x1
	.2byte	0x130
	.byte	0x11
	.byte	0x5
	.byte	0x3
	.4byte	dns_mquery_v4group
	.byte	0x1c
	.4byte	.LASF136
	.byte	0x1
	.2byte	0x60b
	.byte	0x1
	.4byte	0x1ac
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x1
	.byte	0x9c
	.4byte	0x8fb
	.byte	0x1d
	.4byte	.LASF132
	.byte	0x1
	.2byte	0x60b
	.byte	0x28
	.4byte	0xb5
	.4byte	.LLST45
	.byte	0x1d
	.4byte	.LASF58
	.byte	0x1
	.2byte	0x60b
	.byte	0x3d
	.4byte	0x8fb
	.4byte	.LLST46
	.byte	0x1d
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x60b
	.byte	0x56
	.4byte	0x4a3
	.4byte	.LLST47
	.byte	0x1d
	.4byte	.LASF133
	.byte	0x1
	.2byte	0x60c
	.byte	0x22
	.4byte	0xa7
	.4byte	.LLST48
	.byte	0x1d
	.4byte	.LASF134
	.byte	0x1
	.2byte	0x60c
	.byte	0x35
	.4byte	0xeb
	.4byte	.LLST49
	.byte	0x1e
	.4byte	.LASF135
	.byte	0x1
	.2byte	0x60e
	.byte	0xa
	.4byte	0x9b
	.4byte	.LLST50
	.byte	0x1f
	.4byte	0x11ed
	.4byte	.LBB91
	.4byte	.Ldebug_ranges0+0x158
	.byte	0x1
	.2byte	0x636
	.byte	0x7
	.4byte	0x80c
	.byte	0x20
	.4byte	0x120c
	.byte	0x20
	.4byte	0x11ff
	.byte	0x21
	.4byte	.Ldebug_ranges0+0x158
	.byte	0x22
	.4byte	0x1219
	.4byte	.LLST51
	.byte	0x23
	.4byte	.LVL152
	.4byte	0x153a
	.byte	0x24
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x24
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x89
	.byte	0xf
	.byte	0x24
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xa
	.2byte	0x100
	.byte	0
	.byte	0
	.byte	0
	.byte	0x25
	.4byte	0x98c
	.4byte	.LBB95
	.4byte	.LBE95-.LBB95
	.byte	0x1
	.2byte	0x65b
	.byte	0xa
	.4byte	0x8b3
	.byte	0x20
	.4byte	0x9c5
	.byte	0x20
	.4byte	0x9b8
	.byte	0x20
	.4byte	0x9ab
	.byte	0x20
	.4byte	0x99e
	.byte	0x22
	.4byte	0x9d2
	.4byte	.LLST52
	.byte	0x22
	.4byte	0x9dd
	.4byte	.LLST53
	.byte	0x22
	.4byte	0x9ea
	.4byte	.LLST54
	.byte	0x22
	.4byte	0x9f7
	.4byte	.LLST55
	.byte	0x22
	.4byte	0xa04
	.4byte	.LLST56
	.byte	0x22
	.4byte	0xa11
	.4byte	.LLST57
	.byte	0x26
	.4byte	0xa1e
	.4byte	.Ldebug_ranges0+0x170
	.4byte	0x882
	.byte	0x22
	.4byte	0xa1f
	.4byte	.LLST58
	.byte	0
	.byte	0x27
	.4byte	.LVL162
	.4byte	0x1546
	.4byte	0x8a2
	.byte	0x24
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0xf
	.byte	0x24
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x24
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0
	.byte	0x23
	.4byte	.LVL164
	.4byte	0xecf
	.byte	0x24
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0
	.byte	0x27
	.4byte	.LVL146
	.4byte	0x1552
	.4byte	0x8c7
	.byte	0x24
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x27
	.4byte	.LVL149
	.4byte	0x155e
	.4byte	0x8e4
	.byte	0x24
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x24
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0x23
	.4byte	.LVL150
	.4byte	0x156a
	.byte	0x24
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x24
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x87
	.byte	0
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x2d6
	.byte	0x1c
	.4byte	.LASF137
	.byte	0x1
	.2byte	0x5f6
	.byte	0x1
	.4byte	0x1ac
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x1
	.byte	0x9c
	.4byte	0x98c
	.byte	0x1d
	.4byte	.LASF132
	.byte	0x1
	.2byte	0x5f6
	.byte	0x1f
	.4byte	0xb5
	.4byte	.LLST59
	.byte	0x1d
	.4byte	.LASF58
	.byte	0x1
	.2byte	0x5f6
	.byte	0x34
	.4byte	0x8fb
	.4byte	.LLST60
	.byte	0x1d
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x5f6
	.byte	0x4d
	.4byte	0x4a3
	.4byte	.LLST61
	.byte	0x1d
	.4byte	.LASF133
	.byte	0x1
	.2byte	0x5f7
	.byte	0x19
	.4byte	0xa7
	.4byte	.LLST62
	.byte	0x28
	.4byte	.LVL173
	.4byte	0x73f
	.byte	0x24
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x24
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x24
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x24
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x24
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x29
	.4byte	.LASF151
	.byte	0x1
	.2byte	0x55f
	.byte	0x1
	.4byte	0x1ac
	.byte	0x1
	.4byte	0xa2e
	.byte	0x2a
	.4byte	.LASF123
	.byte	0x1
	.2byte	0x55f
	.byte	0x19
	.4byte	0xb5
	.byte	0x2a
	.4byte	.LASF135
	.byte	0x1
	.2byte	0x55f
	.byte	0x26
	.4byte	0x9b
	.byte	0x2a
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x55f
	.byte	0x46
	.4byte	0x4a3
	.byte	0x2a
	.4byte	.LASF133
	.byte	0x1
	.2byte	0x560
	.byte	0x13
	.4byte	0xa7
	.byte	0x2b
	.string	"i"
	.byte	0x1
	.2byte	0x562
	.byte	0x8
	.4byte	0xeb
	.byte	0x2c
	.4byte	.LASF138
	.byte	0x1
	.2byte	0x563
	.byte	0x8
	.4byte	0xeb
	.byte	0x2c
	.4byte	.LASF139
	.byte	0x1
	.2byte	0x563
	.byte	0xe
	.4byte	0xeb
	.byte	0x2c
	.4byte	.LASF140
	.byte	0x1
	.2byte	0x564
	.byte	0x1b
	.4byte	0xa2e
	.byte	0x2c
	.4byte	.LASF141
	.byte	0x1
	.2byte	0x565
	.byte	0xa
	.4byte	0x9b
	.byte	0x2b
	.string	"req"
	.byte	0x1
	.2byte	0x566
	.byte	0x19
	.4byte	0xa34
	.byte	0x2d
	.byte	0x2b
	.string	"age"
	.byte	0x1
	.2byte	0x591
	.byte	0xc
	.4byte	0xeb
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x5d5
	.byte	0x7
	.byte	0x4
	.4byte	0x669
	.byte	0x2e
	.4byte	.LASF149
	.byte	0x1
	.2byte	0x492
	.byte	0x1
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x1
	.byte	0x9c
	.4byte	0xe7f
	.byte	0x2f
	.string	"arg"
	.byte	0x1
	.2byte	0x492
	.byte	0x10
	.4byte	0xa7
	.4byte	.LLST16
	.byte	0x2f
	.string	"pcb"
	.byte	0x1
	.2byte	0x492
	.byte	0x25
	.4byte	0x3c0
	.4byte	.LLST17
	.byte	0x2f
	.string	"p"
	.byte	0x1
	.2byte	0x492
	.byte	0x37
	.4byte	0x284
	.4byte	.LLST18
	.byte	0x1d
	.4byte	.LASF58
	.byte	0x1
	.2byte	0x492
	.byte	0x4b
	.4byte	0x389
	.4byte	.LLST19
	.byte	0x1d
	.4byte	.LASF142
	.byte	0x1
	.2byte	0x492
	.byte	0x57
	.4byte	0x103
	.4byte	.LLST20
	.byte	0x30
	.string	"i"
	.byte	0x1
	.2byte	0x494
	.byte	0x8
	.4byte	0xeb
	.4byte	.LLST21
	.byte	0x1e
	.4byte	.LASF118
	.byte	0x1
	.2byte	0x495
	.byte	0x9
	.4byte	0x103
	.4byte	.LLST22
	.byte	0x1e
	.4byte	.LASF143
	.byte	0x1
	.2byte	0x496
	.byte	0x9
	.4byte	0x103
	.4byte	.LLST23
	.byte	0x31
	.string	"hdr"
	.byte	0x1
	.2byte	0x497
	.byte	0x12
	.4byte	0x4ca
	.byte	0x3
	.byte	0x91
	.byte	0xa8,0x7f
	.byte	0x31
	.string	"ans"
	.byte	0x1
	.2byte	0x498
	.byte	0x15
	.4byte	0x56c
	.byte	0x3
	.byte	0x91
	.byte	0xb4,0x7f
	.byte	0x31
	.string	"qry"
	.byte	0x1
	.2byte	0x499
	.byte	0x14
	.4byte	0x544
	.byte	0x3
	.byte	0x91
	.byte	0xa0,0x7f
	.byte	0x1e
	.4byte	.LASF144
	.byte	0x1
	.2byte	0x49a
	.byte	0x9
	.4byte	0x103
	.4byte	.LLST24
	.byte	0x1e
	.4byte	.LASF145
	.byte	0x1
	.2byte	0x49a
	.byte	0x15
	.4byte	0x103
	.4byte	.LLST25
	.byte	0x32
	.4byte	.LASF199
	.byte	0x1
	.2byte	0x54f
	.byte	0x1
	.4byte	.L50
	.byte	0x33
	.4byte	.Ldebug_ranges0+0x30
	.4byte	0xe40
	.byte	0x1e
	.4byte	.LASF140
	.byte	0x1
	.2byte	0x4ac
	.byte	0x1f
	.4byte	0xa2e
	.4byte	.LLST26
	.byte	0x33
	.4byte	.Ldebug_ranges0+0xe0
	.4byte	0xc01
	.byte	0x1a
	.4byte	.LASF146
	.byte	0x1
	.2byte	0x50b
	.byte	0x1e
	.4byte	0x2a5
	.byte	0x3
	.byte	0x91
	.byte	0xa4,0x7f
	.byte	0x1f
	.4byte	0xe7f
	.4byte	.LBB58
	.4byte	.Ldebug_ranges0+0xf8
	.byte	0x1
	.2byte	0x513
	.byte	0x13
	.4byte	0xbbd
	.byte	0x34
	.4byte	0xe9a
	.4byte	.LLST36
	.byte	0x34
	.4byte	0xe8d
	.4byte	.LLST37
	.byte	0x21
	.4byte	.Ldebug_ranges0+0xf8
	.byte	0x22
	.4byte	0xea7
	.4byte	.LLST38
	.byte	0x23
	.4byte	.LVL93
	.4byte	0x1014
	.byte	0x24
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x86
	.byte	0
	.byte	0x24
	.byte	0x1
	.byte	0x5b
	.byte	0x7
	.byte	0x78
	.byte	0
	.byte	0x85
	.byte	0
	.byte	0x22
	.byte	0x23
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.byte	0x27
	.4byte	.LVL88
	.4byte	0x1576
	.4byte	0xbe3
	.byte	0x24
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x24
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0xa4,0x7f
	.byte	0x24
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x34
	.byte	0x24
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x27
	.4byte	.LVL90
	.4byte	0x1583
	.4byte	0xbf7
	.byte	0x24
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x35
	.4byte	.LVL91
	.4byte	0x1590
	.byte	0
	.byte	0x1f
	.4byte	0x116e
	.4byte	.LBB38
	.4byte	.Ldebug_ranges0+0x58
	.byte	0x1
	.2byte	0x4cc
	.byte	0x13
	.4byte	0xcd5
	.byte	0x34
	.4byte	0x1198
	.4byte	.LLST27
	.byte	0x34
	.4byte	0x118d
	.4byte	.LLST28
	.byte	0x34
	.4byte	0x1180
	.4byte	.LLST29
	.byte	0x21
	.4byte	.Ldebug_ranges0+0x58
	.byte	0x22
	.4byte	0x11a5
	.4byte	.LLST30
	.byte	0x22
	.4byte	0x11b0
	.4byte	.LLST31
	.byte	0x26
	.4byte	0x11bd
	.4byte	.Ldebug_ranges0+0x78
	.4byte	0xca3
	.byte	0x22
	.4byte	0x11be
	.4byte	.LLST32
	.byte	0x26
	.4byte	0x11c9
	.4byte	.Ldebug_ranges0+0x98
	.4byte	0xc71
	.byte	0x36
	.4byte	0x11ce
	.byte	0
	.byte	0x37
	.4byte	0x11dc
	.4byte	.LBB44
	.4byte	.LBE44-.LBB44
	.4byte	0xc8c
	.byte	0x22
	.4byte	0x11dd
	.4byte	.LLST33
	.byte	0
	.byte	0x23
	.4byte	.LVL97
	.4byte	0x159c
	.byte	0x24
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x24
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0
	.byte	0x27
	.4byte	.LVL67
	.4byte	0x159c
	.4byte	0xcbd
	.byte	0x24
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x24
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x23
	.4byte	.LVL72
	.4byte	0x159c
	.byte	0x24
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x24
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x1f
	.4byte	0x112b
	.4byte	.LBB50
	.4byte	.Ldebug_ranges0+0xb8
	.byte	0x1
	.2byte	0x4f6
	.byte	0x17
	.4byte	0xd3d
	.byte	0x20
	.4byte	0x1148
	.byte	0x20
	.4byte	0x113d
	.byte	0x21
	.4byte	.Ldebug_ranges0+0xb8
	.byte	0x22
	.4byte	0x1155
	.4byte	.LLST34
	.byte	0x22
	.4byte	0x1160
	.4byte	.LLST35
	.byte	0x27
	.4byte	.LVL80
	.4byte	0x159c
	.4byte	0xd25
	.byte	0x24
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x24
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x23
	.4byte	.LVL83
	.4byte	0x159c
	.byte	0x24
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x24
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x1f
	.4byte	0xfb3
	.4byte	.LBB63
	.4byte	.Ldebug_ranges0+0x110
	.byte	0x1
	.2byte	0x4e9
	.byte	0xf
	.4byte	0xd8b
	.byte	0x34
	.4byte	0xfc5
	.4byte	.LLST39
	.byte	0x21
	.4byte	.Ldebug_ranges0+0x110
	.byte	0x22
	.4byte	0xfd2
	.4byte	.LLST40
	.byte	0x38
	.4byte	0xfb3
	.4byte	.LBB65
	.4byte	.LBE65-.LBB65
	.byte	0x1
	.2byte	0x400
	.byte	0x1
	.byte	0x34
	.4byte	0xfc5
	.4byte	.LLST41
	.byte	0x36
	.4byte	0xfd2
	.byte	0
	.byte	0
	.byte	0
	.byte	0x35
	.4byte	.LVL59
	.4byte	0x15a9
	.byte	0x35
	.4byte	.LVL61
	.4byte	0x15a9
	.byte	0x27
	.4byte	.LVL74
	.4byte	0x1576
	.4byte	0xdc3
	.byte	0x24
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x24
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0xa0,0x7f
	.byte	0x24
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x34
	.byte	0x24
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x88
	.byte	0
	.byte	0
	.byte	0x27
	.4byte	.LVL86
	.4byte	0x1576
	.4byte	0xdec
	.byte	0x24
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x24
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0xb4,0x7f
	.byte	0x24
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x3a
	.byte	0x24
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x91
	.byte	0x9c,0x7f
	.byte	0x94
	.byte	0x2
	.byte	0
	.byte	0x27
	.4byte	.LVL105
	.4byte	0x1583
	.4byte	0xe00
	.byte	0x24
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x27
	.4byte	.LVL106
	.4byte	0x1014
	.4byte	0xe19
	.byte	0x24
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x86
	.byte	0
	.byte	0x24
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x27
	.4byte	.LVL112
	.4byte	0xecf
	.4byte	0xe2d
	.byte	0x24
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x86
	.byte	0
	.byte	0
	.byte	0x35
	.4byte	.LVL117
	.4byte	0x15a9
	.byte	0x35
	.4byte	.LVL119
	.4byte	0x15a9
	.byte	0
	.byte	0x27
	.4byte	.LVL54
	.4byte	0x1576
	.4byte	0xe65
	.byte	0x24
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x24
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0xa8,0x7f
	.byte	0x24
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x3c
	.byte	0x24
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x35
	.4byte	.LVL55
	.4byte	0x15a9
	.byte	0x23
	.4byte	.LVL113
	.4byte	0x1583
	.byte	0x24
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0
	.byte	0x39
	.4byte	.LASF147
	.byte	0x1
	.2byte	0x471
	.byte	0x1
	.byte	0x1
	.4byte	0xeb5
	.byte	0x3a
	.string	"idx"
	.byte	0x1
	.2byte	0x471
	.byte	0x1b
	.4byte	0xeb
	.byte	0x3a
	.string	"ttl"
	.byte	0x1
	.2byte	0x471
	.byte	0x26
	.4byte	0x10f
	.byte	0x2c
	.4byte	.LASF140
	.byte	0x1
	.2byte	0x473
	.byte	0x1b
	.4byte	0xa2e
	.byte	0
	.byte	0x39
	.4byte	.LASF148
	.byte	0x1
	.2byte	0x464
	.byte	0x1
	.byte	0x1
	.4byte	0xecf
	.byte	0x2b
	.string	"i"
	.byte	0x1
	.2byte	0x466
	.byte	0x8
	.4byte	0xeb
	.byte	0
	.byte	0x2e
	.4byte	.LASF150
	.byte	0x1
	.2byte	0x417
	.byte	0x1
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x1
	.byte	0x9c
	.4byte	0xfb3
	.byte	0x2f
	.string	"i"
	.byte	0x1
	.2byte	0x417
	.byte	0x16
	.4byte	0xeb
	.4byte	.LLST9
	.byte	0x2b
	.string	"err"
	.byte	0x1
	.2byte	0x419
	.byte	0x9
	.4byte	0x1ac
	.byte	0x1e
	.4byte	.LASF140
	.byte	0x1
	.2byte	0x41a
	.byte	0x1b
	.4byte	0xa2e
	.4byte	.LLST10
	.byte	0x1f
	.4byte	0xfe0
	.4byte	.LBB14
	.4byte	.Ldebug_ranges0+0x18
	.byte	0x1
	.2byte	0x421
	.byte	0x15
	.4byte	0xf4a
	.byte	0x21
	.4byte	.Ldebug_ranges0+0x18
	.byte	0x22
	.4byte	0xff2
	.4byte	.LLST11
	.byte	0x22
	.4byte	0xfff
	.4byte	.LLST12
	.byte	0x3b
	.4byte	0x100a
	.4byte	.L28
	.byte	0
	.byte	0
	.byte	0x25
	.4byte	0xfb3
	.4byte	.LBB18
	.4byte	.LBE18-.LBB18
	.byte	0x1
	.2byte	0x431
	.byte	0xf
	.4byte	0xf92
	.byte	0x34
	.4byte	0xfc5
	.4byte	.LLST13
	.byte	0x22
	.4byte	0xfd2
	.4byte	.LLST14
	.byte	0x38
	.4byte	0xfb3
	.4byte	.LBB20
	.4byte	.LBE20-.LBB20
	.byte	0x1
	.2byte	0x400
	.byte	0x1
	.byte	0x34
	.4byte	0xfc5
	.4byte	.LLST15
	.byte	0x36
	.4byte	0xfd2
	.byte	0
	.byte	0
	.byte	0x3c
	.4byte	.LVL40
	.4byte	0x1362
	.byte	0x23
	.4byte	.LVL45
	.4byte	0x1014
	.byte	0x24
	.byte	0x1
	.byte	0x5a
	.byte	0x4
	.byte	0x91
	.byte	0x6c
	.byte	0x94
	.byte	0x1
	.byte	0x24
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x29
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x400
	.byte	0x1
	.4byte	0xeb
	.byte	0x1
	.4byte	0xfe0
	.byte	0x2a
	.4byte	.LASF153
	.byte	0x1
	.2byte	0x400
	.byte	0x34
	.4byte	0xa2e
	.byte	0x2b
	.string	"ret"
	.byte	0x1
	.2byte	0x402
	.byte	0x8
	.4byte	0xeb
	.byte	0
	.byte	0x29
	.4byte	.LASF154
	.byte	0x1
	.2byte	0x3e8
	.byte	0x1
	.4byte	0x103
	.byte	0x1
	.4byte	0x1014
	.byte	0x2c
	.4byte	.LASF118
	.byte	0x1
	.2byte	0x3ea
	.byte	0x9
	.4byte	0x103
	.byte	0x2b
	.string	"i"
	.byte	0x1
	.2byte	0x3eb
	.byte	0x8
	.4byte	0xeb
	.byte	0x3d
	.4byte	.LASF161
	.byte	0x1
	.2byte	0x3ed
	.byte	0x1
	.byte	0
	.byte	0x2e
	.4byte	.LASF155
	.byte	0x1
	.2byte	0x3ae
	.byte	0x1
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x1
	.byte	0x9c
	.4byte	0x105b
	.byte	0x2f
	.string	"idx"
	.byte	0x1
	.2byte	0x3ae
	.byte	0x15
	.4byte	0xeb
	.4byte	.LLST0
	.byte	0x1d
	.4byte	.LASF58
	.byte	0x1
	.2byte	0x3ae
	.byte	0x25
	.4byte	0x8fb
	.4byte	.LLST1
	.byte	0x3e
	.4byte	.LVL2
	.byte	0x24
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0
	.byte	0
	.byte	0x29
	.4byte	.LASF156
	.byte	0x1
	.2byte	0x2ec
	.byte	0x1
	.4byte	0x1ac
	.byte	0x1
	.4byte	0x112b
	.byte	0x3a
	.string	"idx"
	.byte	0x1
	.2byte	0x2ec
	.byte	0xf
	.4byte	0xeb
	.byte	0x2b
	.string	"err"
	.byte	0x1
	.2byte	0x2ee
	.byte	0x9
	.4byte	0x1ac
	.byte	0x2b
	.string	"hdr"
	.byte	0x1
	.2byte	0x2ef
	.byte	0x12
	.4byte	0x4ca
	.byte	0x2b
	.string	"qry"
	.byte	0x1
	.2byte	0x2f0
	.byte	0x14
	.4byte	0x544
	.byte	0x2b
	.string	"p"
	.byte	0x1
	.2byte	0x2f1
	.byte	0x10
	.4byte	0x284
	.byte	0x2c
	.4byte	.LASF157
	.byte	0x1
	.2byte	0x2f2
	.byte	0x9
	.4byte	0x103
	.byte	0x2c
	.4byte	.LASF158
	.byte	0x1
	.2byte	0x2f2
	.byte	0x14
	.4byte	0x103
	.byte	0x2c
	.4byte	.LASF132
	.byte	0x1
	.2byte	0x2f3
	.byte	0xf
	.4byte	0xb5
	.byte	0x2c
	.4byte	.LASF159
	.byte	0x1
	.2byte	0x2f3
	.byte	0x1a
	.4byte	0xb5
	.byte	0x2b
	.string	"n"
	.byte	0x1
	.2byte	0x2f4
	.byte	0x8
	.4byte	0xeb
	.byte	0x2c
	.4byte	.LASF160
	.byte	0x1
	.2byte	0x2f5
	.byte	0x8
	.4byte	0xeb
	.byte	0x2c
	.4byte	.LASF140
	.byte	0x1
	.2byte	0x2f6
	.byte	0x1b
	.4byte	0xa2e
	.byte	0x3d
	.4byte	.LASF162
	.byte	0x1
	.2byte	0x35b
	.byte	0x1
	.byte	0x2d
	.byte	0x2b
	.string	"dst"
	.byte	0x1
	.2byte	0x30c
	.byte	0x16
	.4byte	0x389
	.byte	0x2c
	.4byte	.LASF163
	.byte	0x1
	.2byte	0x30d
	.byte	0xb
	.4byte	0x103
	.byte	0
	.byte	0
	.byte	0x29
	.4byte	.LASF164
	.byte	0x1
	.2byte	0x2c4
	.byte	0x1
	.4byte	0x103
	.byte	0x1
	.4byte	0x116e
	.byte	0x3a
	.string	"p"
	.byte	0x1
	.2byte	0x2c4
	.byte	0x1c
	.4byte	0x284
	.byte	0x2a
	.4byte	.LASF157
	.byte	0x1
	.2byte	0x2c4
	.byte	0x25
	.4byte	0x103
	.byte	0x2b
	.string	"n"
	.byte	0x1
	.2byte	0x2c6
	.byte	0x7
	.4byte	0x2c
	.byte	0x2c
	.4byte	.LASF165
	.byte	0x1
	.2byte	0x2c7
	.byte	0x9
	.4byte	0x103
	.byte	0
	.byte	0x29
	.4byte	.LASF166
	.byte	0x1
	.2byte	0x28b
	.byte	0x1
	.4byte	0x103
	.byte	0x1
	.4byte	0x11ed
	.byte	0x2a
	.4byte	.LASF167
	.byte	0x1
	.2byte	0x28b
	.byte	0x1e
	.4byte	0xb5
	.byte	0x3a
	.string	"p"
	.byte	0x1
	.2byte	0x28b
	.byte	0x32
	.4byte	0x284
	.byte	0x2a
	.4byte	.LASF168
	.byte	0x1
	.2byte	0x28b
	.byte	0x3b
	.4byte	0x103
	.byte	0x2b
	.string	"n"
	.byte	0x1
	.2byte	0x28d
	.byte	0x7
	.4byte	0x2c
	.byte	0x2c
	.4byte	.LASF169
	.byte	0x1
	.2byte	0x28e
	.byte	0x9
	.4byte	0x103
	.byte	0x2d
	.byte	0x2b
	.string	"c"
	.byte	0x1
	.2byte	0x29e
	.byte	0xd
	.4byte	0x2c
	.byte	0x3f
	.4byte	0x11dc
	.byte	0x2b
	.string	"__x"
	.byte	0x1
	.2byte	0x2a2
	.byte	0xe
	.4byte	0x52
	.byte	0
	.byte	0x2d
	.byte	0x2b
	.string	"__x"
	.byte	0x1
	.2byte	0x2a2
	.byte	0x28
	.4byte	0x52
	.byte	0
	.byte	0
	.byte	0
	.byte	0x29
	.4byte	.LASF170
	.byte	0x1
	.2byte	0x25a
	.byte	0x1
	.4byte	0x1ac
	.byte	0x1
	.4byte	0x1225
	.byte	0x2a
	.4byte	.LASF123
	.byte	0x1
	.2byte	0x25a
	.byte	0x18
	.4byte	0xb5
	.byte	0x2a
	.4byte	.LASF58
	.byte	0x1
	.2byte	0x25a
	.byte	0x29
	.4byte	0x8fb
	.byte	0x2b
	.string	"i"
	.byte	0x1
	.2byte	0x25c
	.byte	0x8
	.4byte	0xeb
	.byte	0
	.byte	0x40
	.4byte	.LASF173
	.byte	0x1
	.2byte	0x18b
	.byte	0x1
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0x12a6
	.byte	0x41
	.4byte	0xeb5
	.4byte	.LBB76
	.4byte	.Ldebug_ranges0+0x128
	.byte	0x1
	.2byte	0x18e
	.byte	0x3
	.byte	0x21
	.4byte	.Ldebug_ranges0+0x128
	.byte	0x22
	.4byte	0xec3
	.4byte	.LLST44
	.byte	0x27
	.4byte	.LVL135
	.4byte	0xecf
	.4byte	0x126e
	.byte	0x24
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x27
	.4byte	.LVL136
	.4byte	0xecf
	.4byte	0x1281
	.byte	0x24
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x27
	.4byte	.LVL137
	.4byte	0xecf
	.4byte	0x1294
	.byte	0x24
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0x28
	.4byte	.LVL138
	.4byte	0xecf
	.byte	0x24
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x1c
	.4byte	.LASF171
	.byte	0x1
	.2byte	0x17d
	.byte	0x1
	.4byte	0x389
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.4byte	0x12d3
	.byte	0x1d
	.4byte	.LASF172
	.byte	0x1
	.2byte	0x17d
	.byte	0x14
	.4byte	0xeb
	.4byte	.LLST43
	.byte	0
	.byte	0x40
	.4byte	.LASF174
	.byte	0x1
	.2byte	0x169
	.byte	0x1
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0x130b
	.byte	0x1d
	.4byte	.LASF172
	.byte	0x1
	.2byte	0x169
	.byte	0x14
	.4byte	0xeb
	.4byte	.LLST42
	.byte	0x42
	.4byte	.LASF175
	.byte	0x1
	.2byte	0x169
	.byte	0x2d
	.4byte	0x389
	.byte	0x1
	.byte	0x5b
	.byte	0
	.byte	0x40
	.4byte	.LASF176
	.byte	0x1
	.2byte	0x13b
	.byte	0x1
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0x1362
	.byte	0x27
	.4byte	.LVL125
	.4byte	0x15b5
	.4byte	0x1336
	.byte	0x24
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x2e
	.byte	0
	.byte	0x27
	.4byte	.LVL126
	.4byte	0x15c1
	.4byte	0x1349
	.byte	0x24
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x28
	.4byte	.LVL127
	.4byte	0x15cd
	.byte	0x24
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	dns_recv
	.byte	0x24
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x43
	.4byte	0x105b
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x1
	.byte	0x9c
	.4byte	0x153a
	.byte	0x34
	.4byte	0x106d
	.4byte	.LLST2
	.byte	0x36
	.4byte	0x107a
	.byte	0x44
	.4byte	0x1087
	.byte	0x2
	.byte	0x91
	.byte	0x44
	.byte	0x44
	.4byte	0x1094
	.byte	0x2
	.byte	0x91
	.byte	0x40
	.byte	0x44
	.4byte	0x10a1
	.byte	0x1
	.byte	0x59
	.byte	0x22
	.4byte	0x10ac
	.4byte	.LLST3
	.byte	0x22
	.4byte	0x10b9
	.4byte	.LLST4
	.byte	0x22
	.4byte	0x10c6
	.4byte	.LLST5
	.byte	0x36
	.4byte	0x10d3
	.byte	0x22
	.4byte	0x10e0
	.4byte	.LLST6
	.byte	0x45
	.4byte	0x10eb
	.byte	0
	.byte	0x22
	.4byte	0x10f8
	.4byte	.LLST7
	.byte	0x46
	.4byte	0x1105
	.byte	0x26
	.4byte	0x110e
	.4byte	.Ldebug_ranges0+0
	.4byte	0x14fb
	.byte	0x22
	.4byte	0x110f
	.4byte	.LLST8
	.byte	0x45
	.4byte	0x111c
	.byte	0x35
	.byte	0x27
	.4byte	.LVL10
	.4byte	0x15d9
	.4byte	0x1411
	.byte	0x24
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x44
	.byte	0x24
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x24
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x3c
	.byte	0
	.byte	0x35
	.4byte	.LVL11
	.4byte	0x15a9
	.byte	0x27
	.4byte	.LVL12
	.4byte	0x15e5
	.4byte	0x1439
	.byte	0x24
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x24
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x44
	.byte	0x24
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x3c
	.byte	0
	.byte	0x27
	.4byte	.LVL19
	.4byte	0x1583
	.4byte	0x144d
	.byte	0x24
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x27
	.4byte	.LVL25
	.4byte	0x15f2
	.4byte	0x146a
	.byte	0x24
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x24
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x91
	.byte	0xbc,0x7f
	.byte	0x94
	.byte	0x2
	.byte	0
	.byte	0x27
	.4byte	.LVL26
	.4byte	0x15ff
	.4byte	0x1498
	.byte	0x24
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x24
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x88
	.byte	0
	.byte	0x24
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x86
	.byte	0
	.byte	0x24
	.byte	0x1
	.byte	0x5d
	.byte	0xa
	.byte	0x91
	.byte	0xbc,0x7f
	.byte	0x6
	.byte	0x23
	.byte	0x1
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x25
	.byte	0
	.byte	0x27
	.4byte	.LVL28
	.4byte	0x15f2
	.4byte	0x14bb
	.byte	0x24
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x24
	.byte	0x1
	.byte	0x5b
	.byte	0x6
	.byte	0x83
	.byte	0x1
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x25
	.byte	0x24
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x27
	.4byte	.LVL30
	.4byte	0x15ff
	.4byte	0x14e4
	.byte	0x24
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x24
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x40
	.byte	0x24
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x34
	.byte	0x24
	.byte	0x1
	.byte	0x5d
	.byte	0x6
	.byte	0x83
	.byte	0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x25
	.byte	0
	.byte	0x23
	.4byte	.LVL32
	.4byte	0x160c
	.byte	0x24
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x24
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x8
	.byte	0x35
	.byte	0
	.byte	0
	.byte	0x27
	.4byte	.LVL4
	.4byte	0x1014
	.4byte	0x150e
	.byte	0x24
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x27
	.4byte	.LVL7
	.4byte	0x1552
	.4byte	0x1522
	.byte	0x24
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x23
	.4byte	.LVL8
	.4byte	0x1618
	.byte	0x24
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0xb6
	.byte	0x24
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xa
	.2byte	0x280
	.byte	0
	.byte	0
	.byte	0x47
	.4byte	.LASF177
	.4byte	.LASF177
	.byte	0x10
	.byte	0x89
	.byte	0x5
	.byte	0x47
	.4byte	.LASF178
	.4byte	.LASF178
	.byte	0x11
	.byte	0x1f
	.byte	0x8
	.byte	0x47
	.4byte	.LASF179
	.4byte	.LASF179
	.byte	0x11
	.byte	0x29
	.byte	0x8
	.byte	0x47
	.4byte	.LASF180
	.4byte	.LASF180
	.byte	0x11
	.byte	0x24
	.byte	0x5
	.byte	0x47
	.4byte	.LASF181
	.4byte	.LASF181
	.byte	0x8
	.byte	0xcd
	.byte	0x5
	.byte	0x48
	.4byte	.LASF182
	.4byte	.LASF182
	.byte	0x7
	.2byte	0x128
	.byte	0x7
	.byte	0x48
	.4byte	.LASF183
	.4byte	.LASF183
	.byte	0x7
	.2byte	0x122
	.byte	0x6
	.byte	0x47
	.4byte	.LASF184
	.4byte	.LASF184
	.byte	0x10
	.byte	0x65
	.byte	0x7
	.byte	0x48
	.4byte	.LASF185
	.4byte	.LASF185
	.byte	0x7
	.2byte	0x138
	.byte	0x5
	.byte	0x47
	.4byte	.LASF186
	.4byte	.LASF186
	.byte	0x10
	.byte	0x60
	.byte	0x7
	.byte	0x47
	.4byte	.LASF187
	.4byte	.LASF187
	.byte	0xd
	.byte	0x78
	.byte	0x12
	.byte	0x47
	.4byte	.LASF188
	.4byte	.LASF188
	.byte	0xd
	.byte	0x7a
	.byte	0x7
	.byte	0x47
	.4byte	.LASF189
	.4byte	.LASF189
	.byte	0xd
	.byte	0x80
	.byte	0x6
	.byte	0x47
	.4byte	.LASF190
	.4byte	.LASF190
	.byte	0x11
	.byte	0x21
	.byte	0x8
	.byte	0x48
	.4byte	.LASF191
	.4byte	.LASF191
	.byte	0x7
	.2byte	0x12a
	.byte	0x7
	.byte	0x48
	.4byte	.LASF192
	.4byte	.LASF192
	.byte	0x7
	.2byte	0x139
	.byte	0x6
	.byte	0x48
	.4byte	.LASF193
	.4byte	.LASF193
	.byte	0x7
	.2byte	0x12b
	.byte	0x7
	.byte	0x47
	.4byte	.LASF194
	.4byte	.LASF194
	.byte	0xd
	.byte	0x88
	.byte	0x7
	.byte	0x48
	.4byte	.LASF195
	.4byte	.LASF195
	.byte	0x7
	.2byte	0x110
	.byte	0xe
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
	.byte	0x3c
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0xb
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
	.byte	0xc
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xd
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xd
	.byte	0
	.byte	0
	.byte	0xe
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0xf
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
	.byte	0x10
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
	.byte	0x11
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
	.byte	0x12
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
	.byte	0x13
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
	.byte	0x14
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
	.byte	0x3f
	.byte	0x19
	.byte	0x3c
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x15
	.byte	0x15
	.byte	0x1
	.byte	0x27
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x16
	.byte	0x5
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x17
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
	.byte	0x18
	.byte	0x13
	.byte	0x1
	.byte	0x3
	.byte	0xe
	.byte	0xb
	.byte	0x5
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
	.byte	0x19
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
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
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x1b
	.byte	0x34
	.byte	0
	.byte	0x47
	.byte	0x13
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x2
	.byte	0x18
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
	.byte	0x1d
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
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x1e
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
	.byte	0x1f
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
	.byte	0x20
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x21
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x22
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x23
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x24
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x25
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
	.byte	0x26
	.byte	0xb
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0x55
	.byte	0x17
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x27
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
	.byte	0x28
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
	.byte	0x29
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
	.byte	0x2a
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
	.byte	0x2b
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
	.byte	0
	.byte	0
	.byte	0x2c
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
	.byte	0
	.byte	0
	.byte	0x2d
	.byte	0xb
	.byte	0x1
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
	.byte	0x2f
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
	.byte	0x30
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
	.byte	0x31
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
	.byte	0x32
	.byte	0xa
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x11
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x33
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x34
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x35
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x36
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x37
	.byte	0xb
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x38
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
	.byte	0
	.byte	0
	.byte	0x39
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
	.byte	0x20
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x3a
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
	.byte	0x3b
	.byte	0xa
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x11
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x3c
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
	.byte	0x3d
	.byte	0xa
	.byte	0
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
	.byte	0x3e
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x3f
	.byte	0xb
	.byte	0x1
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x40
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
	.byte	0x41
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
	.byte	0
	.byte	0
	.byte	0x42
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
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x43
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
	.byte	0x44
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x45
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x46
	.byte	0xa
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x47
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
	.byte	0x48
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
.LLST45:
	.4byte	.LVL139
	.4byte	.LVL141
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL141
	.4byte	.LVL142
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL142
	.4byte	.LVL143
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL143
	.4byte	.LVL144
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL144
	.4byte	.LVL145
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL145
	.4byte	.LFE22
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL139
	.4byte	.LVL142
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL142
	.4byte	.LVL144
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL144
	.4byte	.LVL146-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL146-1
	.4byte	.LVL156
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL156
	.4byte	.LFE22
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL139
	.4byte	.LVL142
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL142
	.4byte	.LVL144
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL144
	.4byte	.LVL146-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL146-1
	.4byte	.LFE22
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL139
	.4byte	.LVL142
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL142
	.4byte	.LVL144
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL144
	.4byte	.LVL146-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL146-1
	.4byte	.LFE22
	.2byte	0x1
	.byte	0x65
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL139
	.4byte	.LVL140
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL140
	.4byte	.LVL144
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	.LVL144
	.4byte	.LVL146-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL146-1
	.4byte	.LFE22
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL147
	.4byte	.LVL148
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL148
	.4byte	.LFE22
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL151
	.4byte	.LVL153
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL154
	.4byte	.LVL155
	.2byte	0x3
	.byte	0x82
	.byte	0x1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LVL157
	.4byte	.LVL160
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL160
	.4byte	.LVL165
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL165
	.4byte	.LVL168
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL168
	.4byte	.LVL169
	.2byte	0x3
	.byte	0x7f
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL169
	.4byte	.LFE22
	.2byte	0x3
	.byte	0x7b
	.byte	0x1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LVL157
	.4byte	.LVL160
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL165
	.4byte	.LVL171
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST54:
	.4byte	.LVL157
	.4byte	.LVL159
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL165
	.4byte	.LVL167
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL168
	.4byte	.LFE22
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST55:
	.4byte	.LVL157
	.4byte	.LVL158
	.2byte	0xd
	.byte	0x7f
	.byte	0
	.byte	0xa
	.2byte	0x110
	.byte	0x1e
	.byte	0x3
	.4byte	dns_table
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL160
	.4byte	.LVL163
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL165
	.4byte	.LVL169
	.2byte	0xd
	.byte	0x7f
	.byte	0
	.byte	0xa
	.2byte	0x110
	.byte	0x1e
	.byte	0x3
	.4byte	dns_table
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL169
	.4byte	.LVL170
	.2byte	0xd
	.byte	0x7f
	.byte	0x7f
	.byte	0xa
	.2byte	0x110
	.byte	0x1e
	.byte	0x3
	.4byte	dns_table
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST56:
	.4byte	.LVL161
	.4byte	.LVL165
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST57:
	.4byte	.LVL160
	.4byte	.LVL165
	.2byte	0xb
	.byte	0x82
	.byte	0
	.byte	0x33
	.byte	0x24
	.byte	0x3
	.4byte	dns_requests
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST58:
	.4byte	.LVL166
	.4byte	.LVL168
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST59:
	.4byte	.LVL172
	.4byte	.LVL173-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL173-1
	.4byte	.LFE21
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST60:
	.4byte	.LVL172
	.4byte	.LVL173-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL173-1
	.4byte	.LFE21
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST61:
	.4byte	.LVL172
	.4byte	.LVL173-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL173-1
	.4byte	.LFE21
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST62:
	.4byte	.LVL172
	.4byte	.LVL173-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL173-1
	.4byte	.LFE21
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL48
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL53
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL48
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL52
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL48
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL50
	.4byte	.LVL109
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL109
	.4byte	.LVL110
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL110
	.4byte	.LFE19
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL48
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL51
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL64
	.4byte	.LVL123
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL123
	.4byte	.LFE19
	.2byte	0x1
	.byte	0x68
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL49
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL55
	.4byte	.LVL56
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL57
	.4byte	.LVL108
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL110
	.4byte	.LVL112
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL114
	.4byte	.LVL123
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL123
	.4byte	.LVL124
	.2byte	0x3
	.byte	0x82
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL124
	.4byte	.LFE19
	.2byte	0x3
	.byte	0x86
	.byte	0x1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL55
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL123
	.4byte	.LFE19
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL73
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL75
	.4byte	.LVL76
	.2byte	0x3
	.byte	0x78
	.byte	0x5
	.byte	0x9f
	.4byte	.LVL77
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL85
	.4byte	.LVL86-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL86-1
	.4byte	.LVL87
	.2byte	0x3
	.byte	0x91
	.byte	0x9c,0x7f
	.4byte	.LVL87
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL103
	.4byte	.LVL104
	.2byte	0x3
	.byte	0x78
	.byte	0x5
	.byte	0x9f
	.4byte	.LVL110
	.4byte	.LVL112
	.2byte	0x3
	.byte	0x78
	.byte	0x5
	.byte	0x9f
	.4byte	.LVL116
	.4byte	.LVL120
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL121
	.4byte	.LVL123
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL60
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x65
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL62
	.4byte	.LVL108
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL110
	.4byte	.LVL112
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL114
	.4byte	.LVL118
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL122
	.4byte	.LVL123
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL57
	.4byte	.LVL94
	.2byte	0xd
	.byte	0x82
	.byte	0
	.byte	0xa
	.2byte	0x110
	.byte	0x1e
	.byte	0x3
	.4byte	dns_table
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL96
	.4byte	.LVL107
	.2byte	0xd
	.byte	0x82
	.byte	0
	.byte	0xa
	.2byte	0x110
	.byte	0x1e
	.byte	0x3
	.4byte	dns_table
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL110
	.4byte	.LVL112
	.2byte	0xd
	.byte	0x82
	.byte	0
	.byte	0xa
	.2byte	0x110
	.byte	0x1e
	.byte	0x3
	.4byte	dns_table
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL114
	.4byte	.LVL124
	.2byte	0xd
	.byte	0x82
	.byte	0
	.byte	0xa
	.2byte	0x110
	.byte	0x1e
	.byte	0x3
	.4byte	dns_table
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL124
	.4byte	.LFE19
	.2byte	0xd
	.byte	0x82
	.byte	0x7f
	.byte	0xa
	.2byte	0x110
	.byte	0x1e
	.byte	0x3
	.4byte	dns_table
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL91
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL115
	.4byte	.LVL116
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL91
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL115
	.4byte	.LVL116
	.2byte	0x1
	.byte	0x66
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL91
	.4byte	.LVL94
	.2byte	0xd
	.byte	0x82
	.byte	0
	.byte	0xa
	.2byte	0x110
	.byte	0x1e
	.byte	0x3
	.4byte	dns_table
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL115
	.4byte	.LVL116
	.2byte	0xd
	.byte	0x82
	.byte	0
	.byte	0xa
	.2byte	0x110
	.byte	0x1e
	.byte	0x3
	.4byte	dns_table
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL65
	.4byte	.LVL73
	.2byte	0x2
	.byte	0x3c
	.byte	0x9f
	.4byte	.LVL96
	.4byte	.LVL103
	.2byte	0x2
	.byte	0x3c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL65
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL96
	.4byte	.LVL103
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL65
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL96
	.4byte	.LVL103
	.2byte	0x1
	.byte	0x6b
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL67
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL72
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL66
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL69
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL96
	.4byte	.LVL100
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL101
	.4byte	.LVL103
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL97
	.4byte	.LVL99
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL98
	.4byte	.LVL99
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL80
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL83
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL114
	.4byte	.LVL115
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL78
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL79
	.4byte	.LVL82
	.2byte	0x3
	.byte	0x91
	.byte	0x9c,0x7f
	.4byte	.LVL82
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL114
	.4byte	.LVL115
	.2byte	0x3
	.byte	0x91
	.byte	0x9c,0x7f
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL103
	.4byte	.LVL104
	.2byte	0xd
	.byte	0x82
	.byte	0
	.byte	0xa
	.2byte	0x110
	.byte	0x1e
	.byte	0x3
	.4byte	dns_table
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL110
	.4byte	.LVL111
	.2byte	0xd
	.byte	0x82
	.byte	0
	.byte	0xa
	.2byte	0x110
	.byte	0x1e
	.byte	0x3
	.4byte	dns_table
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL103
	.4byte	.LVL104
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL110
	.4byte	.LVL111
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL110
	.4byte	.LVL111
	.2byte	0xd
	.byte	0x82
	.byte	0
	.byte	0xa
	.2byte	0x110
	.byte	0x1e
	.byte	0x3
	.4byte	dns_table
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL33
	.4byte	.LVL40-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL40-1
	.4byte	.LVL40
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL40
	.4byte	.LVL45-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL45-1
	.4byte	.LVL47
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LFE16
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL33
	.4byte	.LVL40-1
	.2byte	0xd
	.byte	0x7a
	.byte	0
	.byte	0xa
	.2byte	0x110
	.byte	0x1e
	.byte	0x3
	.4byte	dns_table
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL40
	.4byte	.LVL45-1
	.2byte	0xd
	.byte	0x7a
	.byte	0
	.byte	0xa
	.2byte	0x110
	.byte	0x1e
	.byte	0x3
	.4byte	dns_table
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL45-1
	.4byte	.LVL46
	.2byte	0xe
	.byte	0x91
	.byte	0x6c
	.byte	0x6
	.byte	0xa
	.2byte	0x110
	.byte	0x1e
	.byte	0x3
	.4byte	dns_table
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LFE16
	.2byte	0xd
	.byte	0x7a
	.byte	0
	.byte	0xa
	.2byte	0x110
	.byte	0x1e
	.byte	0x3
	.4byte	dns_table
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL34
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x13
	.byte	0x7f
	.byte	0
	.byte	0x3
	.4byte	dns_table
	.byte	0x1c
	.byte	0xf7
	.byte	0x25
	.byte	0xa
	.2byte	0x110
	.byte	0xf7
	.byte	0x25
	.byte	0x1b
	.byte	0xf7
	.byte	0
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x15
	.byte	0x7f
	.byte	0
	.byte	0x3
	.4byte	dns_table
	.byte	0x1c
	.byte	0xf7
	.byte	0x25
	.byte	0xa
	.2byte	0x110
	.byte	0xf7
	.byte	0x25
	.byte	0x1b
	.byte	0xf7
	.byte	0
	.byte	0x23
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x15
	.byte	0x7f
	.byte	0
	.byte	0x3
	.4byte	dns_table+272
	.byte	0x1c
	.byte	0xf7
	.byte	0x25
	.byte	0xa
	.2byte	0x110
	.byte	0xf7
	.byte	0x25
	.byte	0x1b
	.byte	0xf7
	.byte	0
	.byte	0x23
	.byte	0x1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL41
	.4byte	.LVL43
	.2byte	0xd
	.byte	0x7a
	.byte	0
	.byte	0xa
	.2byte	0x110
	.byte	0x1e
	.byte	0x3
	.4byte	dns_table
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL41
	.4byte	.LVL43
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0xd
	.byte	0x7a
	.byte	0
	.byte	0xa
	.2byte	0x110
	.byte	0x1e
	.byte	0x3
	.4byte	dns_table
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL2-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL2-1
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL134
	.4byte	.LVL135
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL135
	.4byte	.LVL136
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL136
	.4byte	.LVL137
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL137
	.4byte	.LFE8
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL130
	.4byte	.LVL131
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL131
	.4byte	.LVL132
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL132
	.4byte	.LVL133
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL133
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL128
	.4byte	.LVL129
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL129
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL3
	.4byte	.LVL4-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL4-1
	.4byte	.LVL5
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL6
	.4byte	.LFE24
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x2
	.byte	0x3c
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL20
	.4byte	.LVL25-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL27
	.4byte	.LVL28-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL28-1
	.4byte	.LVL28
	.2byte	0x7
	.byte	0x83
	.byte	0x1
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x3
	.byte	0x83
	.byte	0x2
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LFE24
	.2byte	0x3
	.byte	0x83
	.byte	0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL17
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL24
	.4byte	.LFE24
	.2byte	0x1
	.byte	0x66
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL12
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL16
	.4byte	.LFE24
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL22
	.4byte	.LVL25-1
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL3
	.4byte	.LVL4-1
	.2byte	0xd
	.byte	0x7a
	.byte	0
	.byte	0xa
	.2byte	0x110
	.byte	0x1e
	.byte	0x3
	.4byte	dns_table
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0xd
	.byte	0x7a
	.byte	0
	.byte	0xa
	.2byte	0x110
	.byte	0x1e
	.byte	0x3
	.4byte	dns_table
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LVL18
	.2byte	0xd
	.byte	0x84
	.byte	0
	.byte	0xa
	.2byte	0x110
	.byte	0x1e
	.byte	0x3
	.4byte	dns_table
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL31
	.2byte	0xd
	.byte	0x84
	.byte	0
	.byte	0xa
	.2byte	0x110
	.byte	0x1e
	.byte	0x3
	.4byte	dns_table
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x1a
	.byte	0x84
	.byte	0
	.byte	0xa
	.2byte	0x110
	.byte	0x1e
	.byte	0x3
	.4byte	dns_table+11
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.4byte	dns_servers
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x64
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB6
	.4byte	.LBE6
	.4byte	.LBB7
	.4byte	.LBE7
	.4byte	0
	.4byte	0
	.4byte	.LBB14
	.4byte	.LBE14
	.4byte	.LBB17
	.4byte	.LBE17
	.4byte	0
	.4byte	0
	.4byte	.LBB37
	.4byte	.LBE37
	.4byte	.LBB71
	.4byte	.LBE71
	.4byte	.LBB72
	.4byte	.LBE72
	.4byte	.LBB73
	.4byte	.LBE73
	.4byte	0
	.4byte	0
	.4byte	.LBB38
	.4byte	.LBE38
	.4byte	.LBB49
	.4byte	.LBE49
	.4byte	.LBB62
	.4byte	.LBE62
	.4byte	0
	.4byte	0
	.4byte	.LBB40
	.4byte	.LBE40
	.4byte	.LBB45
	.4byte	.LBE45
	.4byte	.LBB46
	.4byte	.LBE46
	.4byte	0
	.4byte	0
	.4byte	.LBB41
	.4byte	.LBE41
	.4byte	.LBB42
	.4byte	.LBE42
	.4byte	.LBB43
	.4byte	.LBE43
	.4byte	0
	.4byte	0
	.4byte	.LBB50
	.4byte	.LBE50
	.4byte	.LBB55
	.4byte	.LBE55
	.4byte	.LBB56
	.4byte	.LBE56
	.4byte	.LBB69
	.4byte	.LBE69
	.4byte	0
	.4byte	0
	.4byte	.LBB57
	.4byte	.LBE57
	.4byte	.LBB70
	.4byte	.LBE70
	.4byte	0
	.4byte	0
	.4byte	.LBB58
	.4byte	.LBE58
	.4byte	.LBB61
	.4byte	.LBE61
	.4byte	0
	.4byte	0
	.4byte	.LBB63
	.4byte	.LBE63
	.4byte	.LBB68
	.4byte	.LBE68
	.4byte	0
	.4byte	0
	.4byte	.LBB76
	.4byte	.LBE76
	.4byte	.LBB82
	.4byte	.LBE82
	.4byte	.LBB83
	.4byte	.LBE83
	.4byte	.LBB84
	.4byte	.LBE84
	.4byte	.LBB85
	.4byte	.LBE85
	.4byte	0
	.4byte	0
	.4byte	.LBB91
	.4byte	.LBE91
	.4byte	.LBB94
	.4byte	.LBE94
	.4byte	0
	.4byte	0
	.4byte	.LBB97
	.4byte	.LBE97
	.4byte	.LBB98
	.4byte	.LBE98
	.4byte	0
	.4byte	0
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF162:
	.string	"overflow_return"
.LASF115:
	.string	"DNS_STATE_DONE"
.LASF88:
	.string	"udp_pcb"
.LASF103:
	.string	"flags1"
.LASF104:
	.string	"flags2"
.LASF101:
	.string	"dns_found_callback"
.LASF69:
	.string	"MEMP_TCP_PCB_LISTEN"
.LASF92:
	.string	"so_options"
.LASF109:
	.string	"dns_query"
.LASF179:
	.string	"strlen"
.LASF161:
	.string	"again"
.LASF137:
	.string	"dns_gethostbyname"
.LASF46:
	.string	"PBUF_RAM"
.LASF85:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_IGMP"
.LASF45:
	.string	"PBUF_RAW"
.LASF54:
	.string	"flags"
.LASF38:
	.string	"ERR_CLSD"
.LASF31:
	.string	"ERR_USE"
.LASF39:
	.string	"ERR_ARG"
.LASF174:
	.string	"dns_setserver"
.LASF0:
	.string	"unsigned int"
.LASF91:
	.string	"netif_idx"
.LASF50:
	.string	"next"
.LASF168:
	.string	"start_offset"
.LASF127:
	.string	"dns_pcbs"
.LASF40:
	.string	"err_t"
.LASF146:
	.string	"ip4addr"
.LASF149:
	.string	"dns_recv"
.LASF21:
	.string	"u16_t"
.LASF97:
	.string	"mcast_ttl"
.LASF150:
	.string	"dns_check_entry"
.LASF152:
	.string	"dns_backupserver_available"
.LASF172:
	.string	"numdns"
.LASF184:
	.string	"lwip_htonl"
.LASF186:
	.string	"lwip_htons"
.LASF135:
	.string	"hostnamelen"
.LASF80:
	.string	"MEMP_PBUF_POOL"
.LASF196:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
.LASF37:
	.string	"ERR_RST"
.LASF181:
	.string	"ip4addr_aton"
.LASF125:
	.string	"found"
.LASF126:
	.string	"dns_txid"
.LASF41:
	.string	"PBUF_TRANSPORT"
.LASF157:
	.string	"query_idx"
.LASF32:
	.string	"ERR_ALREADY"
.LASF82:
	.string	"lwip_ip_addr_type"
.LASF122:
	.string	"seqno"
.LASF153:
	.string	"pentry"
.LASF18:
	.string	"uint32_t"
.LASF15:
	.string	"int8_t"
.LASF76:
	.string	"MEMP_IGMP_GROUP"
.LASF191:
	.string	"pbuf_take"
.LASF74:
	.string	"MEMP_TCPIP_MSG_API"
.LASF120:
	.string	"server_idx"
.LASF93:
	.string	"local_port"
.LASF143:
	.string	"res_idx"
.LASF170:
	.string	"dns_lookup"
.LASF138:
	.string	"lseq"
.LASF65:
	.string	"ip_addr_any"
.LASF139:
	.string	"lseqi"
.LASF12:
	.string	"long long unsigned int"
.LASF163:
	.string	"dst_port"
.LASF100:
	.string	"dns_mquery_v4group"
.LASF116:
	.string	"dns_table_entry"
.LASF6:
	.string	"__uint16_t"
.LASF164:
	.string	"dns_skip_name"
.LASF29:
	.string	"ERR_VAL"
.LASF199:
	.string	"ignore_packet"
.LASF75:
	.string	"MEMP_TCPIP_MSG_INPKT"
.LASF48:
	.string	"PBUF_REF"
.LASF83:
	.string	"lwip_internal_netif_client_data_index"
.LASF53:
	.string	"type_internal"
.LASF52:
	.string	"tot_len"
.LASF117:
	.string	"ipaddr"
.LASF198:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/lwip"
.LASF13:
	.string	"size_t"
.LASF145:
	.string	"nanswers"
.LASF51:
	.string	"payload"
.LASF42:
	.string	"PBUF_IP"
.LASF56:
	.string	"pbuf"
.LASF131:
	.string	"dns_servers"
.LASF113:
	.string	"DNS_STATE_NEW"
.LASF49:
	.string	"PBUF_POOL"
.LASF158:
	.string	"copy_len"
.LASF197:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/core/dns.c"
.LASF81:
	.string	"MEMP_MAX"
.LASF20:
	.string	"s8_t"
.LASF73:
	.string	"MEMP_NETCONN"
.LASF156:
	.string	"dns_send"
.LASF155:
	.string	"dns_call_found"
.LASF30:
	.string	"ERR_WOULDBLOCK"
.LASF26:
	.string	"ERR_TIMEOUT"
.LASF79:
	.string	"MEMP_PBUF"
.LASF14:
	.string	"char"
.LASF106:
	.string	"numanswers"
.LASF185:
	.string	"pbuf_try_get_at"
.LASF141:
	.string	"namelen"
.LASF95:
	.string	"mcast_ip4"
.LASF182:
	.string	"pbuf_copy_partial"
.LASF16:
	.string	"uint8_t"
.LASF102:
	.string	"dns_hdr"
.LASF195:
	.string	"pbuf_alloc"
.LASF132:
	.string	"hostname"
.LASF72:
	.string	"MEMP_NETBUF"
.LASF11:
	.string	"long long int"
.LASF62:
	.string	"IPADDR_TYPE_ANY"
.LASF35:
	.string	"ERR_IF"
.LASF175:
	.string	"dnsserver"
.LASF193:
	.string	"pbuf_take_at"
.LASF68:
	.string	"MEMP_TCP_PCB"
.LASF19:
	.string	"u8_t"
.LASF194:
	.string	"udp_sendto"
.LASF107:
	.string	"numauthrr"
.LASF190:
	.string	"memset"
.LASF94:
	.string	"remote_port"
.LASF136:
	.string	"dns_gethostbyname_addrtype"
.LASF159:
	.string	"hostname_part"
.LASF183:
	.string	"pbuf_free"
.LASF128:
	.string	"dns_seqno"
.LASF43:
	.string	"PBUF_LINK"
.LASF71:
	.string	"MEMP_ALTCP_PCB"
.LASF2:
	.string	"__int8_t"
.LASF154:
	.string	"dns_create_txid"
.LASF166:
	.string	"dns_compare_name"
.LASF177:
	.string	"lwip_strnicmp"
.LASF167:
	.string	"query"
.LASF86:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_MAX"
.LASF171:
	.string	"dns_getserver"
.LASF17:
	.string	"uint16_t"
.LASF55:
	.string	"if_idx"
.LASF25:
	.string	"ERR_BUF"
.LASF87:
	.string	"udp_recv_fn"
.LASF22:
	.string	"u32_t"
.LASF5:
	.string	"short int"
.LASF144:
	.string	"nquestions"
.LASF59:
	.string	"ip4_addr_t"
.LASF8:
	.string	"long int"
.LASF105:
	.string	"numquestions"
.LASF77:
	.string	"MEMP_SYS_TIMEOUT"
.LASF165:
	.string	"offset"
.LASF130:
	.string	"dns_requests"
.LASF67:
	.string	"MEMP_UDP_PCB"
.LASF89:
	.string	"local_ip"
.LASF28:
	.string	"ERR_INPROGRESS"
.LASF96:
	.string	"mcast_ifindex"
.LASF57:
	.string	"ip4_addr"
.LASF3:
	.string	"__uint8_t"
.LASF33:
	.string	"ERR_ISCONN"
.LASF123:
	.string	"name"
.LASF192:
	.string	"pbuf_put_at"
.LASF66:
	.string	"MEMP_RAW_PCB"
.LASF99:
	.string	"recv_arg"
.LASF10:
	.string	"long unsigned int"
.LASF148:
	.string	"dns_check_entries"
.LASF142:
	.string	"port"
.LASF173:
	.string	"dns_tmr"
.LASF108:
	.string	"numextrarr"
.LASF189:
	.string	"udp_recv"
.LASF124:
	.string	"dns_req_entry"
.LASF140:
	.string	"entry"
.LASF110:
	.string	"type"
.LASF4:
	.string	"unsigned char"
.LASF9:
	.string	"__uint32_t"
.LASF60:
	.string	"IPADDR_TYPE_V4"
.LASF61:
	.string	"IPADDR_TYPE_V6"
.LASF70:
	.string	"MEMP_TCP_SEG"
.LASF129:
	.string	"dns_table"
.LASF160:
	.string	"pcb_idx"
.LASF133:
	.string	"callback_arg"
.LASF58:
	.string	"addr"
.LASF114:
	.string	"DNS_STATE_ASKING"
.LASF176:
	.string	"dns_init"
.LASF119:
	.string	"state"
.LASF188:
	.string	"udp_bind"
.LASF111:
	.string	"dns_answer"
.LASF36:
	.string	"ERR_ABRT"
.LASF112:
	.string	"DNS_STATE_UNUSED"
.LASF121:
	.string	"retries"
.LASF23:
	.string	"ERR_OK"
.LASF98:
	.string	"recv"
.LASF169:
	.string	"response_offset"
.LASF84:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_DHCP"
.LASF64:
	.string	"_ctype_"
.LASF134:
	.string	"dns_addrtype"
.LASF1:
	.string	"signed char"
.LASF7:
	.string	"short unsigned int"
.LASF178:
	.string	"memcpy"
.LASF34:
	.string	"ERR_CONN"
.LASF151:
	.string	"dns_enqueue"
.LASF90:
	.string	"remote_ip"
.LASF27:
	.string	"ERR_RTE"
.LASF147:
	.string	"dns_correct_response"
.LASF63:
	.string	"ip_addr_t"
.LASF78:
	.string	"MEMP_NETDB"
.LASF44:
	.string	"PBUF_RAW_TX"
.LASF47:
	.string	"PBUF_ROM"
.LASF118:
	.string	"txid"
.LASF24:
	.string	"ERR_MEM"
.LASF180:
	.string	"strcmp"
.LASF187:
	.string	"udp_new_ip_type"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
