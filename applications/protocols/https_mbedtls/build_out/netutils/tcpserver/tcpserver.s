	.file	"tcpserver.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.rodata.TCP_Server.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"socket creat failed\r\n"
	.align	2
.LC1:
	.string	"socket:%d\r\n"
	.align	2
.LC2:
	.string	"setsockopt failed\r\n"
	.align	2
.LC3:
	.string	"bind failed\r\n"
	.align	2
.LC4:
	.string	"listen failed\r\n"
	.align	2
.LC5:
	.string	"We are waiting a connection on port 5150.\r\n"
	.align	2
.LC6:
	.string	"Listen(\346\255\243\345\234\250\347\233\221\345\220\254)...\r\n"
	.align	2
.LC7:
	.string	"disconnect becase time out\r\n"
	.align	2
.LC8:
	.string	"select failed\r\n"
	.align	2
.LC9:
	.string	"recv failed:%d\r\n"
	.align	2
.LC10:
	.string	"We successfully received %d bytes from %d client\r\n"
	.align	2
.LC11:
	.string	"%s\r\n"
	.align	2
.LC12:
	.string	"send failed\r\n"
	.align	2
.LC13:
	.string	"We successfully send %d bytes to %d client\r\n"
	.align	2
.LC14:
	.string	"\r\n"
	.align	2
.LC15:
	.string	"accept failed\r\n"
	.align	2
.LC16:
	.string	"new_sock:%d\r\n"
	.align	2
.LC17:
	.string	"We successfully got a connection from %s:%d\r\n"
	.align	2
.LC18:
	.string	"We are waiting to receive data\r\n"
	.align	2
.LC19:
	.string	"amount:%d\r\n"
	.align	2
.LC20:
	.string	"Max connections arrived!\r\n"
	.align	2
.LC21:
	.string	"Bye"
	.section	.text.TCP_Server,"ax",@progbits
	.align	1
	.globl	TCP_Server
	.type	TCP_Server, @function
TCP_Server:
.LFB5:
	.file 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/netutils/tcpserver/tcpserver.c"
	.loc 1 15 1
	.cfi_startproc
.LVL0:
	.loc 1 16 5
	.loc 1 17 5
	.loc 1 18 5
	.loc 1 19 5
	.loc 1 20 5
	.loc 1 15 1 is_stmt 0
	addi	sp,sp,-224
	.cfi_def_cfa_offset 224
	sw	s0,216(sp)
	.cfi_offset 8, -8
	.loc 1 31 19
	li	s0,12288
	.loc 1 20 9
	li	a5,1
	.loc 1 15 1
	sw	s4,200(sp)
	.cfi_offset 20, -24
	mv	s4,a0
	.loc 1 31 19
	addi	a0,s0,-2048
.LVL1:
	.loc 1 15 1
	sw	ra,220(sp)
	.loc 1 20 9
	sw	a5,20(sp)
	.loc 1 21 5 is_stmt 1
	.loc 1 23 5
	.loc 1 24 5
	.loc 1 25 5
	.loc 1 26 5
	.loc 1 27 5
	.loc 1 28 5
.LVL2:
	.loc 1 29 5
	.loc 1 31 5
	.loc 1 15 1 is_stmt 0
	sw	s2,208(sp)
	sw	s3,204(sp)
	sw	s1,212(sp)
	sw	s5,196(sp)
	sw	s6,192(sp)
	sw	s7,188(sp)
	sw	s8,184(sp)
	sw	s9,180(sp)
	sw	s10,176(sp)
	sw	s11,172(sp)
	.cfi_offset 1, -4
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 9, -12
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 23, -36
	.cfi_offset 24, -40
	.cfi_offset 25, -44
	.cfi_offset 26, -48
	.cfi_offset 27, -52
	.loc 1 31 19
	call	pvPortMalloc
.LVL3:
	.loc 1 32 5
	addi	a2,s0,-2048
	li	a1,0
	.loc 1 31 19
	mv	s3,a0
.LVL4:
	.loc 1 32 5 is_stmt 1
	call	memset
.LVL5:
	.loc 1 33 5
	li	a2,20
	li	a1,0
	addi	a0,sp,140
	call	memset
.LVL6:
	.loc 1 34 5
	li	a2,20
	li	a1,0
	addi	a0,sp,100
	call	memset
.LVL7:
	.loc 1 35 5
	li	a2,20
	li	a1,0
	addi	a0,sp,120
	call	memset
.LVL8:
	.loc 1 36 5
	li	a2,20
	li	a1,0
	addi	a0,sp,80
	call	memset
.LVL9:
	.loc 1 39 5
	.loc 1 39 29 is_stmt 0
	li	a2,6
	li	a1,1
	li	a0,2
	call	lwip_socket
.LVL10:
	.loc 1 39 48
	srli	s2,a0,31
.LVL11:
	.loc 1 39 8
	bge	a0,zero,.L2
	.loc 1 40 9 is_stmt 1
	lui	a0,%hi(.LC0)
	addi	a0,a0,%lo(.LC0)
	call	printf
.LVL12:
	.loc 1 41 9
	mv	a0,s3
	call	vPortFree
.LVL13:
	.loc 1 42 9
	li	a0,0
	call	vTaskDelete
.LVL14:
.L3:
	.loc 1 46 5
	.loc 1 46 9 is_stmt 0
	li	s0,4096
	li	a4,4
	addi	a3,sp,20
	li	a2,4
	addi	a1,s0,-1
	mv	a0,s2
	call	lwip_setsockopt
.LVL15:
	.loc 1 46 8
	li	a5,-1
	bne	a0,a5,.L4
	.loc 1 47 9 is_stmt 1
	lui	a0,%hi(.LC2)
	addi	a0,a0,%lo(.LC2)
.LVL16:
.L41:
.L5:
	.loc 1 104 13 is_stmt 0
	call	printf
.LVL17:
	.loc 1 105 13 is_stmt 1
	.loc 1 179 5
	mv	a0,s3
	call	vPortFree
.LVL18:
	.loc 1 180 5
	mv	a0,s2
	call	lwip_close
.LVL19:
	.loc 1 181 5
	li	a0,0
	call	vTaskDelete
.LVL20:
	.loc 1 182 1 is_stmt 0
	lw	ra,220(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,216(sp)
	.cfi_restore 8
	lw	s1,212(sp)
	.cfi_restore 9
	lw	s2,208(sp)
	.cfi_restore 18
.LVL21:
	lw	s3,204(sp)
	.cfi_restore 19
.LVL22:
	lw	s4,200(sp)
	.cfi_restore 20
.LVL23:
	lw	s5,196(sp)
	.cfi_restore 21
	lw	s6,192(sp)
	.cfi_restore 22
	lw	s7,188(sp)
	.cfi_restore 23
	lw	s8,184(sp)
	.cfi_restore 24
	lw	s9,180(sp)
	.cfi_restore 25
	lw	s10,176(sp)
	.cfi_restore 26
	lw	s11,172(sp)
	.cfi_restore 27
	addi	sp,sp,224
	.cfi_def_cfa_offset 0
	jr	ra
.LVL24:
.L2:
	.cfi_restore_state
	.loc 1 44 9 is_stmt 1
	lui	a0,%hi(.LC1)
	li	a1,0
	addi	a0,a0,%lo(.LC1)
	call	printf
.LVL25:
	j	.L3
.L4:
	.loc 1 51 5
	.loc 1 51 28 is_stmt 0
	li	a5,2
	.loc 1 52 28
	addi	a0,s0,1054
	.loc 1 51 28
	sb	a5,49(sp)
	.loc 1 52 5 is_stmt 1
	.loc 1 52 28 is_stmt 0
	call	lwip_htons
.LVL26:
	.loc 1 52 26
	sh	a0,50(sp)
	.loc 1 53 5 is_stmt 1
	.loc 1 53 35 is_stmt 0
	li	a0,0
	call	lwip_htonl
.LVL27:
	.loc 1 53 33
	sw	a0,52(sp)
	.loc 1 55 5 is_stmt 1
	.loc 1 55 10 is_stmt 0
	li	a2,16
	addi	a1,sp,48
	mv	a0,s2
	call	lwip_bind
.LVL28:
	.loc 1 55 8
	bge	a0,zero,.L6
	.loc 1 56 9 is_stmt 1
	lui	a0,%hi(.LC3)
	addi	a0,a0,%lo(.LC3)
	j	.L41
.L6:
	.loc 1 60 5
	.loc 1 60 9 is_stmt 0
	li	a1,5
	mv	a0,s2
	call	lwip_listen
.LVL29:
	.loc 1 60 8
	bge	a0,zero,.L7
	.loc 1 61 6 is_stmt 1
	lui	a0,%hi(.LC4)
	addi	a0,a0,%lo(.LC4)
	j	.L41
.L7:
	.loc 1 65 5
	lui	a0,%hi(.LC5)
	addi	a0,a0,%lo(.LC5)
	call	printf
.LVL30:
	.loc 1 66 5
	lui	a0,%hi(.LC6)
	addi	a0,a0,%lo(.LC6)
	call	printf
.LVL31:
	.loc 1 68 5
	.loc 1 69 5
	.loc 1 69 20 is_stmt 0
	li	a5,16
	sw	a5,16(sp)
	.loc 1 70 5 is_stmt 1
	.loc 1 70 16 is_stmt 0
	call	xTaskGetTickCount
.LVL32:
	mv	s1,a0
.LVL33:
	.loc 1 72 5 is_stmt 1
	.loc 1 72 17
	.loc 1 70 14 is_stmt 0
	li	s0,0
	.loc 1 72 5
	li	s5,20
.LVL34:
.L8:
	.loc 1 73 9 is_stmt 1 discriminator 3
	.loc 1 73 22 is_stmt 0 discriminator 3
	addi	a5,sp,120
	add	a5,a5,s0
	sw	s1,0(a5)
	.loc 1 74 9 is_stmt 1 discriminator 3
	.loc 1 74 27 is_stmt 0 discriminator 3
	mv	a0,s4
	call	atoi
.LVL35:
	.loc 1 74 25 discriminator 3
	addi	a5,sp,80
	add	a5,a5,s0
	sw	a0,0(a5)
	.loc 1 72 26 is_stmt 1 discriminator 3
	.loc 1 72 17 discriminator 3
	.loc 1 72 5 is_stmt 0 discriminator 3
	addi	s0,s0,4
	bne	s0,s5,.L8
	.loc 1 79 57
	li	a5,1
	sll	a5,a5,s2
	sw	a5,8(sp)
	.loc 1 39 27
	sw	s2,4(sp)
	.loc 1 28 9
	li	s1,0
.LVL36:
.L9:
	.loc 1 85 17
	li	s0,32
.L13:
.LVL37:
	.loc 1 77 5 is_stmt 1
	.loc 1 78 8
.LBB2:
	.loc 1 78 13
	.loc 1 78 25
	.loc 1 78 38
	.loc 1 78 11
	.loc 1 78 98
	.loc 1 78 104
	.loc 1 78 113
.LBE2:
	.loc 1 79 40 is_stmt 0
	lw	a5,8(sp)
	.loc 1 81 19
	li	a6,0
	addi	s10,sp,140
	.loc 1 79 40
	sw	a5,24(sp)
	addi	s7,sp,80
	.loc 1 81 19
	li	a5,1
	addi	s11,sp,120
.LBB3:
	.loc 1 78 134
	sw	zero,28(sp)
	.loc 1 78 104 is_stmt 1
	.loc 1 78 113
.LVL38:
	.loc 1 78 104
.LBE3:
	.loc 1 78 147
	.loc 1 79 8
	.loc 1 81 9
	.loc 1 81 19 is_stmt 0
	sw	a5,32(sp)
	sw	a6,36(sp)
	.loc 1 82 9 is_stmt 1
	.loc 1 82 20 is_stmt 0
	sw	zero,40(sp)
	.loc 1 83 9 is_stmt 1
.LVL39:
	.loc 1 83 21
	.loc 1 82 20 is_stmt 0
	mv	s8,s11
	mv	s5,s7
	mv	s9,s10
	li	s6,0
.LVL40:
.L11:
	.loc 1 84 13 is_stmt 1
	.loc 1 84 26 is_stmt 0
	lw	a5,0(s9)
	.loc 1 84 16
	beq	a5,zero,.L10
	.loc 1 85 16 is_stmt 1
	.loc 1 85 17 is_stmt 0
	div	a0,a5,s0
	.loc 1 85 48
	addi	a4,sp,160
	.loc 1 85 18
	rem	a5,a5,s0
	.loc 1 85 48
	slli	a0,a0,2
	add	a0,a4,a0
	lw	a6,-136(a0)
	.loc 1 85 65
	li	a4,1
	sll	a5,a4,a5
	.loc 1 85 48
	or	a5,a5,a6
	sw	a5,-136(a0)
	.loc 1 86 17 is_stmt 1
	.loc 1 86 28 is_stmt 0
	call	xTaskGetTickCount
.LVL41:
	.loc 1 87 17 is_stmt 1
	.loc 1 87 41 is_stmt 0
	lw	a5,0(s8)
	.loc 1 87 30
	addi	a4,sp,100
	add	a6,a4,s6
	.loc 1 87 41
	sub	a5,a0,a5
	.loc 1 87 30
	sw	a5,0(a6)
	.loc 1 88 17 is_stmt 1
	.loc 1 88 20 is_stmt 0
	li	a4,999
	bleu	a5,a4,.L10
	.loc 1 89 21 is_stmt 1
	.loc 1 90 36 is_stmt 0
	lw	a5,0(s5)
	.loc 1 89 34
	sw	a0,0(s8)
	.loc 1 90 21 is_stmt 1
	.loc 1 90 36 is_stmt 0
	addi	a5,a5,-1
	sw	a5,0(s5)
	.loc 1 91 21 is_stmt 1
	.loc 1 91 24 is_stmt 0
	bgt	a5,zero,.L10
	.loc 1 92 25 is_stmt 1
	lw	a0,0(s9)
.LVL42:
	.loc 1 96 35 is_stmt 0
	addi	s1,s1,-1
.LVL43:
	.loc 1 92 25
	call	lwip_close
.LVL44:
	.loc 1 93 25 is_stmt 1
	.loc 1 93 43 is_stmt 0
	mv	a0,s4
	call	atoi
.LVL45:
	.loc 1 94 33
	lw	a5,0(s9)
	.loc 1 93 41
	sw	a0,0(s5)
	.loc 1 94 24 is_stmt 1
	.loc 1 94 56 is_stmt 0
	addi	a4,sp,160
	.loc 1 94 25
	div	a0,a5,s0
	.loc 1 95 38
	sw	zero,0(s9)
	.loc 1 94 26
	rem	a5,a5,s0
	.loc 1 94 56
	slli	a0,a0,2
	add	a0,a4,a0
	lw	a6,-136(a0)
	.loc 1 94 74
	li	a4,1
	sll	a5,a4,a5
	.loc 1 94 59
	not	a5,a5
	.loc 1 94 56
	and	a5,a5,a6
	sw	a5,-136(a0)
	.loc 1 95 25 is_stmt 1
	.loc 1 96 25
.LVL46:
	.loc 1 97 25
	lui	a5,%hi(.LC7)
	addi	a0,a5,%lo(.LC7)
	call	printf
.LVL47:
.L10:
	.loc 1 83 30 discriminator 2
	.loc 1 83 21 discriminator 2
	.loc 1 83 9 is_stmt 0 discriminator 2
	addi	s6,s6,4
	li	a5,20
	addi	s9,s9,4
	addi	s5,s5,4
	addi	s8,s8,4
	bne	s6,a5,.L11
	.loc 1 102 9 is_stmt 1
	.loc 1 102 15 is_stmt 0
	lw	a5,4(sp)
	addi	a4,sp,32
	li	a3,0
	li	a2,0
	addi	a1,sp,24
.LVL48:
	addi	a0,a5,1
	call	lwip_select
.LVL49:
	.loc 1 103 9 is_stmt 1
	.loc 1 103 12 is_stmt 0
	bge	a0,zero,.L12
	.loc 1 104 13 is_stmt 1
	lui	a0,%hi(.LC8)
.LVL50:
	addi	a0,a0,%lo(.LC8)
	j	.L41
.LVL51:
.L12:
	.loc 1 106 16
	.loc 1 106 19 is_stmt 0
	beq	a0,zero,.L13
	.loc 1 114 21
	li	s8,12288
	addi	s0,sp,140
	.loc 1 110 16
	li	s6,0
	.loc 1 114 21
	addi	s9,s8,-2048
.LVL52:
.L17:
	.loc 1 111 13 is_stmt 1
	.loc 1 111 26 is_stmt 0
	lw	a5,0(s0)
	.loc 1 111 16
	beq	a5,s2,.L14
	.loc 1 112 17 is_stmt 1
	.loc 1 112 21 is_stmt 0
	li	s5,32
	div	a3,a5,s5
	.loc 1 112 33
	addi	a4,sp,160
	slli	a3,a3,2
	add	a3,a4,a3
	.loc 1 112 22
	rem	a4,a5,s5
	.loc 1 112 56
	lw	a5,-136(a3)
	srl	a5,a5,a4
	andi	a5,a5,1
	.loc 1 112 20
	beq	a5,zero,.L14
	.loc 1 113 21 is_stmt 1
	.loc 1 113 32 is_stmt 0
	call	xTaskGetTickCount
.LVL53:
	sw	a0,12(sp)
.LVL54:
	.loc 1 114 21 is_stmt 1
	mv	a2,s9
	li	a1,0
	mv	a0,s3
.LVL55:
	call	memset
.LVL56:
	.loc 1 115 21
	.loc 1 115 31 is_stmt 0
	lw	a0,0(s0)
	li	a3,0
	mv	a2,s9
	mv	a1,s3
	call	lwip_recv
.LVL57:
	mv	s8,a0
.LVL58:
	.loc 1 115 23
	bgt	a0,zero,.L15
	.loc 1 116 25 is_stmt 1
	lui	a5,%hi(.LC9)
	mv	a1,a0
	addi	a0,a5,%lo(.LC9)
.LVL59:
	call	printf
.LVL60:
	.loc 1 117 25
.L40:
	.loc 1 130 29
	lw	a0,0(s0)
	.loc 1 134 39 is_stmt 0
	addi	s1,s1,-1
.LVL61:
	.loc 1 130 29
	call	lwip_close
.LVL62:
	.loc 1 131 29 is_stmt 1
	.loc 1 131 47 is_stmt 0
	mv	a0,s4
	call	atoi
.LVL63:
	.loc 1 131 45
	sw	a0,0(s7)
.LVL64:
	.loc 1 132 28 is_stmt 1
	.loc 1 132 37 is_stmt 0
	lw	a4,0(s0)
	.loc 1 132 60
	addi	a3,sp,160
	.loc 1 132 29
	div	a5,a4,s5
	.loc 1 132 30
	rem	a4,a4,s5
	.loc 1 132 60
	slli	a5,a5,2
	add	a5,a3,a5
	.loc 1 132 78
	li	s5,1
	sll	s5,s5,a4
	.loc 1 132 60
	lw	a4,-136(a5)
	.loc 1 132 63
	not	s5,s5
	.loc 1 132 60
	and	s5,s5,a4
	sw	s5,-136(a5)
	.loc 1 133 29 is_stmt 1
	.loc 1 133 42 is_stmt 0
	sw	zero,0(s0)
	.loc 1 134 29 is_stmt 1
.LVL65:
.L14:
	.loc 1 110 30 discriminator 2
	.loc 1 110 31 is_stmt 0 discriminator 2
	addi	s6,s6,1
.LVL66:
	.loc 1 110 21 is_stmt 1 discriminator 2
	.loc 1 110 9 is_stmt 0 discriminator 2
	li	a5,5
	addi	s0,s0,4
	addi	s7,s7,4
	addi	s11,s11,4
	bne	s6,a5,.L17
	.loc 1 144 9 is_stmt 1
	.loc 1 144 12 is_stmt 0
	lw	a5,24(sp)
	lw	a4,8(sp)
	and	a5,a4,a5
	beq	a5,zero,.L9
	.loc 1 145 13 is_stmt 1
	.loc 1 145 35 is_stmt 0
	addi	a2,sp,16
	addi	a1,sp,64
	mv	a0,s2
	call	lwip_accept
.LVL67:
	mv	s5,a0
.LVL68:
	.loc 1 145 16
	bgt	a0,zero,.L19
	.loc 1 146 17 is_stmt 1
	lui	a0,%hi(.LC15)
.LVL69:
	addi	a0,a0,%lo(.LC15)
	call	printf
.LVL70:
	.loc 1 147 17
	j	.L9
.LVL71:
.L15:
	.loc 1 123 25
	.loc 1 123 43 is_stmt 0
	mv	a0,s4
.LVL72:
	call	atoi
.LVL73:
	.loc 1 124 38
	lw	a5,12(sp)
	.loc 1 125 25
	mv	a2,s6
	.loc 1 123 41
	sw	a0,0(s7)
	.loc 1 124 25 is_stmt 1
	.loc 1 124 38 is_stmt 0
	sw	a5,0(s11)
	.loc 1 125 25 is_stmt 1
	lui	a5,%hi(.LC10)
	mv	a1,s8
	addi	a0,a5,%lo(.LC10)
	call	printf
.LVL74:
	.loc 1 127 25
	lui	a5,%hi(.LC11)
	mv	a1,s3
	addi	a0,a5,%lo(.LC11)
	call	printf
.LVL75:
	.loc 1 128 25
	.loc 1 128 36 is_stmt 0
	lw	a0,0(s0)
	mv	a1,s3
	li	a3,0
	mv	a2,s8
	call	lwip_send
.LVL76:
	mv	a1,a0
.LVL77:
	.loc 1 128 28
	bgt	a0,zero,.L16
	.loc 1 129 29 is_stmt 1
	lui	a5,%hi(.LC12)
	addi	a0,a5,%lo(.LC12)
.LVL78:
	call	printf
.LVL79:
	j	.L40
.LVL80:
.L16:
	.loc 1 136 29
	lui	a5,%hi(.LC13)
	mv	a2,s6
	addi	a0,a5,%lo(.LC13)
.LVL81:
	call	printf
.LVL82:
	.loc 1 137 29
	lui	a5,%hi(.LC14)
	addi	a0,a5,%lo(.LC14)
	call	printf
.LVL83:
	j	.L14
.LVL84:
.L19:
	.loc 1 149 17
	mv	a1,a0
	lui	a0,%hi(.LC16)
.LVL85:
	addi	a0,a0,%lo(.LC16)
	call	printf
.LVL86:
	.loc 1 152 13
	addi	a0,sp,68
	call	ip4addr_ntoa
.LVL87:
	sw	a0,12(sp)
	.loc 1 152 129 is_stmt 0
	lhu	a0,66(sp)
	call	lwip_htons
.LVL88:
	.loc 1 152 13
	lw	a1,12(sp)
	.loc 1 152 129
	mv	a2,a0
	.loc 1 152 13
	lui	a0,%hi(.LC17)
	addi	a0,a0,%lo(.LC17)
	call	printf
.LVL89:
	.loc 1 153 13 is_stmt 1
	lui	a0,%hi(.LC18)
	addi	a0,a0,%lo(.LC18)
	call	printf
.LVL90:
	.loc 1 155 13
	.loc 1 155 16 is_stmt 0
	li	a5,4
	bgt	s1,a5,.L20
	.loc 1 156 24
	li	s0,0
	.loc 1 156 17
	li	a5,5
.LVL91:
.L23:
	.loc 1 157 21 is_stmt 1
	.loc 1 157 24 is_stmt 0
	lw	a4,0(s10)
	bne	a4,zero,.L21
	.loc 1 158 25 is_stmt 1
	.loc 1 158 36 is_stmt 0
	call	xTaskGetTickCount
.LVL92:
	.loc 1 159 25 is_stmt 1
	.loc 1 159 38 is_stmt 0
	addi	a5,sp,160
	slli	s0,s0,2
.LVL93:
	add	s0,a5,s0
	sw	a0,-40(s0)
	.loc 1 160 25 is_stmt 1
	.loc 1 160 43 is_stmt 0
	mv	a0,s4
.LVL94:
	call	atoi
.LVL95:
	lw	a5,4(sp)
	.loc 1 160 41
	sw	a0,-80(s0)
	.loc 1 161 25 is_stmt 1
	.loc 1 161 38 is_stmt 0
	sw	s5,-20(s0)
	.loc 1 162 25 is_stmt 1
	bge	a5,s5,.L22
	sw	s5,4(sp)
.L22:
.LVL96:
	.loc 1 165 25
	.loc 1 165 35 is_stmt 0
	addi	s1,s1,1
.LVL97:
	.loc 1 166 25 is_stmt 1
	lui	a0,%hi(.LC19)
	mv	a1,s1
	addi	a0,a0,%lo(.LC19)
	call	printf
.LVL98:
	.loc 1 167 25
	j	.L9
.LVL99:
.L21:
	.loc 1 156 38 discriminator 2
	.loc 1 156 39 is_stmt 0 discriminator 2
	addi	s0,s0,1
.LVL100:
	.loc 1 156 29 is_stmt 1 discriminator 2
	.loc 1 156 17 is_stmt 0 discriminator 2
	addi	s10,s10,4
	bne	s0,a5,.L23
	j	.L9
.LVL101:
.L20:
	.loc 1 171 17 is_stmt 1
	lui	a0,%hi(.LC20)
	addi	a0,a0,%lo(.LC20)
	call	printf
.LVL102:
	.loc 1 172 17
	lui	a1,%hi(.LC21)
	li	a3,0
	li	a2,4
	addi	a1,a1,%lo(.LC21)
	mv	a0,s5
	call	lwip_send
.LVL103:
	.loc 1 173 17
	mv	a0,s5
	call	lwip_close
.LVL104:
	j	.L9
	.cfi_endproc
.LFE5:
	.size	TCP_Server, .-TCP_Server
	.section	.rodata.cmd_tcp_server.str1.4,"aMS",@progbits,1
	.align	2
.LC22:
	.string	"Please Input Parameter!\r\n"
	.align	2
.LC23:
	.string	"TCP Server"
	.section	.text.cmd_tcp_server,"ax",@progbits
	.align	1
	.type	cmd_tcp_server, @function
cmd_tcp_server:
.LFB6:
	.loc 1 185 1
	.cfi_startproc
.LVL105:
	.loc 1 186 5
	.loc 1 186 8 is_stmt 0
	li	a5,2
	beq	a2,a5,.L43
	.loc 1 187 9 is_stmt 1
	lui	a0,%hi(.LC22)
.LVL106:
	addi	a0,a0,%lo(.LC22)
	tail	printf
.LVL107:
.L43:
.LBB6:
.LBB7:
	.loc 1 190 5
	lw	a3,4(a3)
.LVL108:
	lui	a1,%hi(.LC23)
.LVL109:
	lui	a0,%hi(TCP_Server)
.LVL110:
	li	a5,0
	li	a4,20
	li	a2,1024
.LVL111:
	addi	a1,a1,%lo(.LC23)
	addi	a0,a0,%lo(TCP_Server)
	tail	xTaskCreate
.LVL112:
.LBE7:
.LBE6:
	.cfi_endproc
.LFE6:
	.size	cmd_tcp_server, .-cmd_tcp_server
	.section	.text.network_netutils_tcpserver_cli_register,"ax",@progbits
	.align	1
	.globl	network_netutils_tcpserver_cli_register
	.type	network_netutils_tcpserver_cli_register, @function
network_netutils_tcpserver_cli_register:
.LFB7:
	.loc 1 198 1
	.cfi_startproc
	.loc 1 203 5
	.loc 1 204 1 is_stmt 0
	li	a0,0
	ret
	.cfi_endproc
.LFE7:
	.size	network_netutils_tcpserver_cli_register, .-network_netutils_tcpserver_cli_register
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	2
.LC24:
	.string	"tcps"
	.align	2
.LC25:
	.string	"create a tcp server for in a new task"
	.section	.static_cli_cmds,"a"
	.align	2
	.type	cmds_user, @object
	.size	cmds_user, 12
cmds_user:
	.word	.LC24
	.word	.LC25
	.word	cmd_tcp_server
	.text
.Letext0:
	.file 2 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.file 3 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h"
	.file 4 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 5 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_types.h"
	.file 6 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_timeval.h"
	.file 7 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/select.h"
	.file 8 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/types.h"
	.file 9 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/cli/cli/include/cli.h"
	.file 10 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/arch.h"
	.file 11 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/ip4_addr.h"
	.file 12 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/inet.h"
	.file 13 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/sockets.h"
	.file 14 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/portable.h"
	.file 15 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h"
	.file 16 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h"
	.file 17 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
	.file 18 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/def.h"
	.file 19 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdlib.h"
	.file 20 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/memp.h"
	.file 21 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/netif.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xc4f
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF106
	.byte	0xc
	.4byte	.LASF107
	.4byte	.LASF108
	.4byte	.Ldebug_ranges0+0x18
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
	.byte	0x2
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
	.byte	0x2
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
	.byte	0x5
	.byte	0x4
	.byte	0x4
	.4byte	.LASF11
	.byte	0x3
	.byte	0x41
	.byte	0x12
	.4byte	0x69
	.byte	0x6
	.byte	0x4
	.4byte	0x9e
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.byte	0x7
	.4byte	0x97
	.byte	0x4
	.4byte	.LASF13
	.byte	0x4
	.byte	0x39
	.byte	0x1c
	.4byte	0x62
	.byte	0x4
	.4byte	.LASF14
	.byte	0x4
	.byte	0x4f
	.byte	0x1b
	.4byte	0x75
	.byte	0x4
	.4byte	.LASF15
	.byte	0x4
	.byte	0xc8
	.byte	0x17
	.4byte	0x48
	.byte	0x4
	.4byte	.LASF16
	.byte	0x5
	.byte	0x83
	.byte	0x16
	.4byte	0x2c
	.byte	0x4
	.4byte	.LASF17
	.byte	0x5
	.byte	0xd2
	.byte	0xe
	.4byte	0x41
	.byte	0x6
	.byte	0x4
	.4byte	0x97
	.byte	0x8
	.4byte	0x97
	.4byte	0xf5
	.byte	0x9
	.4byte	0x2c
	.byte	0x7
	.byte	0
	.byte	0x4
	.4byte	.LASF18
	.byte	0x6
	.byte	0x25
	.byte	0x17
	.4byte	0xd3
	.byte	0x4
	.4byte	.LASF19
	.byte	0x6
	.byte	0x2a
	.byte	0x19
	.4byte	0xbb
	.byte	0xa
	.4byte	.LASF23
	.byte	0x10
	.byte	0x6
	.byte	0x36
	.byte	0x8
	.4byte	0x135
	.byte	0xb
	.4byte	.LASF20
	.byte	0x6
	.byte	0x37
	.byte	0x9
	.4byte	0x101
	.byte	0
	.byte	0xb
	.4byte	.LASF21
	.byte	0x6
	.byte	0x38
	.byte	0xe
	.4byte	0xf5
	.byte	0x8
	.byte	0
	.byte	0x4
	.4byte	.LASF22
	.byte	0x7
	.byte	0x22
	.byte	0x17
	.4byte	0x75
	.byte	0xa
	.4byte	.LASF24
	.byte	0x8
	.byte	0x7
	.byte	0x30
	.byte	0x10
	.4byte	0x15c
	.byte	0xb
	.4byte	.LASF25
	.byte	0x7
	.byte	0x31
	.byte	0xc
	.4byte	0x15c
	.byte	0
	.byte	0
	.byte	0x8
	.4byte	0x135
	.4byte	0x16c
	.byte	0x9
	.4byte	0x2c
	.byte	0x1
	.byte	0
	.byte	0x4
	.4byte	.LASF24
	.byte	0x7
	.byte	0x32
	.byte	0x3
	.4byte	0x141
	.byte	0x4
	.4byte	.LASF26
	.byte	0x8
	.byte	0x37
	.byte	0x14
	.4byte	0xaf
	.byte	0x4
	.4byte	.LASF27
	.byte	0x8
	.byte	0x3c
	.byte	0x14
	.4byte	0xa3
	.byte	0xa
	.4byte	.LASF28
	.byte	0xc
	.byte	0x9
	.byte	0x32
	.byte	0x8
	.4byte	0x1c5
	.byte	0xb
	.4byte	.LASF29
	.byte	0x9
	.byte	0x33
	.byte	0x11
	.4byte	0x91
	.byte	0
	.byte	0xb
	.4byte	.LASF30
	.byte	0x9
	.byte	0x34
	.byte	0x11
	.4byte	0x91
	.byte	0x4
	.byte	0xb
	.4byte	.LASF31
	.byte	0x9
	.byte	0x36
	.byte	0xc
	.4byte	0x1ea
	.byte	0x8
	.byte	0
	.byte	0x7
	.4byte	0x190
	.byte	0xc
	.4byte	0x1e4
	.byte	0xd
	.4byte	0xdf
	.byte	0xd
	.4byte	0x25
	.byte	0xd
	.4byte	0x25
	.byte	0xd
	.4byte	0x1e4
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0xdf
	.byte	0x6
	.byte	0x4
	.4byte	0x1ca
	.byte	0x4
	.4byte	.LASF32
	.byte	0xa
	.byte	0x7d
	.byte	0x11
	.4byte	0x4f
	.byte	0x4
	.4byte	.LASF33
	.byte	0xa
	.byte	0x81
	.byte	0x12
	.4byte	0x69
	.byte	0xa
	.4byte	.LASF34
	.byte	0x4
	.byte	0xb
	.byte	0x33
	.byte	0x8
	.4byte	0x223
	.byte	0xb
	.4byte	.LASF35
	.byte	0xb
	.byte	0x34
	.byte	0x9
	.4byte	0x1fc
	.byte	0
	.byte	0
	.byte	0x4
	.4byte	.LASF36
	.byte	0xb
	.byte	0x39
	.byte	0x19
	.4byte	0x208
	.byte	0xe
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0x14
	.byte	0x34
	.byte	0xe
	.4byte	0x29e
	.byte	0xf
	.4byte	.LASF37
	.byte	0
	.byte	0xf
	.4byte	.LASF38
	.byte	0x1
	.byte	0xf
	.4byte	.LASF39
	.byte	0x2
	.byte	0xf
	.4byte	.LASF40
	.byte	0x3
	.byte	0xf
	.4byte	.LASF41
	.byte	0x4
	.byte	0xf
	.4byte	.LASF42
	.byte	0x5
	.byte	0xf
	.4byte	.LASF43
	.byte	0x6
	.byte	0xf
	.4byte	.LASF44
	.byte	0x7
	.byte	0xf
	.4byte	.LASF45
	.byte	0x8
	.byte	0xf
	.4byte	.LASF46
	.byte	0x9
	.byte	0xf
	.4byte	.LASF47
	.byte	0xa
	.byte	0xf
	.4byte	.LASF48
	.byte	0xb
	.byte	0xf
	.4byte	.LASF49
	.byte	0xc
	.byte	0xf
	.4byte	.LASF50
	.byte	0xd
	.byte	0xf
	.4byte	.LASF51
	.byte	0xe
	.byte	0xf
	.4byte	.LASF52
	.byte	0xf
	.byte	0
	.byte	0x10
	.4byte	.LASF109
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0x15
	.byte	0x71
	.byte	0x6
	.4byte	0x2c3
	.byte	0xf
	.4byte	.LASF53
	.byte	0
	.byte	0xf
	.4byte	.LASF54
	.byte	0x1
	.byte	0xf
	.4byte	.LASF55
	.byte	0x2
	.byte	0
	.byte	0xa
	.4byte	.LASF56
	.byte	0x4
	.byte	0xc
	.byte	0x3a
	.byte	0x8
	.4byte	0x2de
	.byte	0xb
	.4byte	.LASF57
	.byte	0xc
	.byte	0x3b
	.byte	0xd
	.4byte	0x178
	.byte	0
	.byte	0
	.byte	0x4
	.4byte	.LASF58
	.byte	0xd
	.byte	0x3d
	.byte	0xe
	.4byte	0x1f0
	.byte	0xa
	.4byte	.LASF59
	.byte	0x10
	.byte	0xd
	.byte	0x47
	.byte	0x8
	.4byte	0x339
	.byte	0xb
	.4byte	.LASF60
	.byte	0xd
	.byte	0x48
	.byte	0x8
	.4byte	0x1f0
	.byte	0
	.byte	0xb
	.4byte	.LASF61
	.byte	0xd
	.byte	0x49
	.byte	0xf
	.4byte	0x2de
	.byte	0x1
	.byte	0xb
	.4byte	.LASF62
	.byte	0xd
	.byte	0x4a
	.byte	0xd
	.4byte	0x184
	.byte	0x2
	.byte	0xb
	.4byte	.LASF63
	.byte	0xd
	.byte	0x4b
	.byte	0x12
	.4byte	0x2c3
	.byte	0x4
	.byte	0xb
	.4byte	.LASF64
	.byte	0xd
	.byte	0x4d
	.byte	0x8
	.4byte	0xe5
	.byte	0x8
	.byte	0
	.byte	0xa
	.4byte	.LASF65
	.byte	0x10
	.byte	0xd
	.byte	0x5c
	.byte	0x8
	.4byte	0x36e
	.byte	0xb
	.4byte	.LASF66
	.byte	0xd
	.byte	0x5d
	.byte	0x8
	.4byte	0x1f0
	.byte	0
	.byte	0xb
	.4byte	.LASF67
	.byte	0xd
	.byte	0x5e
	.byte	0xf
	.4byte	0x2de
	.byte	0x1
	.byte	0xb
	.4byte	.LASF68
	.byte	0xd
	.byte	0x5f
	.byte	0x8
	.4byte	0x36e
	.byte	0x2
	.byte	0
	.byte	0x8
	.4byte	0x97
	.4byte	0x37e
	.byte	0x9
	.4byte	0x2c
	.byte	0xd
	.byte	0
	.byte	0x8
	.4byte	0x1c5
	.4byte	0x38e
	.byte	0x9
	.4byte	0x2c
	.byte	0
	.byte	0
	.byte	0x7
	.4byte	0x37e
	.byte	0x11
	.4byte	.LASF71
	.byte	0x1
	.byte	0xc1
	.byte	0x21
	.4byte	0x38e
	.byte	0x5
	.byte	0x3
	.4byte	cmds_user
	.byte	0x12
	.4byte	.LASF110
	.byte	0x1
	.byte	0xc5
	.byte	0x5
	.4byte	0x25
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.byte	0x13
	.4byte	.LASF111
	.byte	0x1
	.byte	0xb8
	.byte	0xd
	.byte	0x1
	.4byte	0x3f9
	.byte	0x14
	.string	"buf"
	.byte	0x1
	.byte	0xb8
	.byte	0x22
	.4byte	0xdf
	.byte	0x14
	.string	"len"
	.byte	0x1
	.byte	0xb8
	.byte	0x2b
	.4byte	0x25
	.byte	0x15
	.4byte	.LASF69
	.byte	0x1
	.byte	0xb8
	.byte	0x34
	.4byte	0x25
	.byte	0x15
	.4byte	.LASF70
	.byte	0x1
	.byte	0xb8
	.byte	0x41
	.4byte	0x1e4
	.byte	0
	.byte	0x16
	.4byte	.LASF112
	.byte	0x1
	.byte	0xe
	.byte	0x6
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0xa92
	.byte	0x17
	.4byte	.LASF113
	.byte	0x1
	.byte	0xe
	.byte	0x17
	.4byte	0x83
	.4byte	.LLST0
	.byte	0x18
	.4byte	.LASF72
	.byte	0x1
	.byte	0x10
	.byte	0x9
	.4byte	0x25
	.4byte	.LLST1
	.byte	0x18
	.4byte	.LASF73
	.byte	0x1
	.byte	0x10
	.byte	0x1b
	.4byte	0x25
	.4byte	.LLST2
	.byte	0x19
	.string	"i"
	.byte	0x1
	.byte	0x10
	.byte	0x2b
	.4byte	0x25
	.4byte	.LLST3
	.byte	0x11
	.4byte	.LASF74
	.byte	0x1
	.byte	0x11
	.byte	0xe
	.4byte	0x69
	.byte	0x3
	.byte	0x91
	.byte	0xb0,0x7e
	.byte	0x11
	.4byte	.LASF75
	.byte	0x1
	.byte	0x12
	.byte	0x18
	.4byte	0x2ea
	.byte	0x3
	.byte	0x91
	.byte	0xd0,0x7e
	.byte	0x11
	.4byte	.LASF76
	.byte	0x1
	.byte	0x12
	.byte	0x25
	.4byte	0x2ea
	.byte	0x3
	.byte	0x91
	.byte	0xe0,0x7e
	.byte	0x18
	.4byte	.LASF77
	.byte	0x1
	.byte	0x13
	.byte	0xb
	.4byte	0xdf
	.4byte	.LLST4
	.byte	0x1a
	.string	"yes"
	.byte	0x1
	.byte	0x14
	.byte	0x9
	.4byte	0x25
	.byte	0x3
	.byte	0x91
	.byte	0xb4,0x7e
	.byte	0x11
	.4byte	.LASF78
	.byte	0x1
	.byte	0x15
	.byte	0x9
	.4byte	0xa92
	.byte	0x3
	.byte	0x91
	.byte	0xf0,0x7e
	.byte	0x18
	.4byte	.LASF79
	.byte	0x1
	.byte	0x17
	.byte	0x9
	.4byte	0x25
	.4byte	.LLST5
	.byte	0x11
	.4byte	.LASF80
	.byte	0x1
	.byte	0x17
	.byte	0x13
	.4byte	0xa92
	.byte	0x3
	.byte	0x91
	.byte	0x84,0x7f
	.byte	0x11
	.4byte	.LASF81
	.byte	0x1
	.byte	0x17
	.byte	0x23
	.4byte	0xa92
	.byte	0x3
	.byte	0x91
	.byte	0x98,0x7f
	.byte	0x11
	.4byte	.LASF82
	.byte	0x1
	.byte	0x18
	.byte	0xc
	.4byte	0x16c
	.byte	0x3
	.byte	0x91
	.byte	0xb8,0x7e
	.byte	0x18
	.4byte	.LASF83
	.byte	0x1
	.byte	0x19
	.byte	0x9
	.4byte	0x25
	.4byte	.LLST6
	.byte	0x1a
	.string	"tv"
	.byte	0x1
	.byte	0x1a
	.byte	0x14
	.4byte	0x10d
	.byte	0x3
	.byte	0x91
	.byte	0xc0,0x7e
	.byte	0x11
	.4byte	.LASF84
	.byte	0x1
	.byte	0x1b
	.byte	0x9
	.4byte	0xa92
	.byte	0x3
	.byte	0x91
	.byte	0xac,0x7f
	.byte	0x18
	.4byte	.LASF85
	.byte	0x1
	.byte	0x1c
	.byte	0x9
	.4byte	0x25
	.4byte	.LLST7
	.byte	0x19
	.string	"ret"
	.byte	0x1
	.byte	0x1d
	.byte	0x9
	.4byte	0x25
	.4byte	.LLST8
	.byte	0x1b
	.4byte	.LASF114
	.byte	0x1
	.byte	0xb2
	.byte	0x1
	.4byte	.L5
	.byte	0x1c
	.4byte	.Ldebug_ranges0+0
	.4byte	0x570
	.byte	0x19
	.string	"_p"
	.byte	0x1
	.byte	0x4e
	.byte	0x15
	.4byte	0xaa2
	.4byte	.LLST9
	.byte	0x19
	.string	"_n"
	.byte	0x1
	.byte	0x4e
	.byte	0x22
	.4byte	0xc7
	.4byte	.LLST10
	.byte	0
	.byte	0x1d
	.4byte	.LVL3
	.4byte	0xb56
	.4byte	0x585
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x78
	.byte	0x80,0x70
	.byte	0
	.byte	0x1d
	.4byte	.LVL5
	.4byte	0xb62
	.4byte	0x5a5
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x1e
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x1e
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0x78
	.byte	0x80,0x70
	.byte	0
	.byte	0x1d
	.4byte	.LVL6
	.4byte	0xb62
	.4byte	0x5c4
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xac,0x7f
	.byte	0x1e
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x1e
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x44
	.byte	0
	.byte	0x1d
	.4byte	.LVL7
	.4byte	0xb62
	.4byte	0x5e3
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0x84,0x7f
	.byte	0x1e
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x1e
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x44
	.byte	0
	.byte	0x1d
	.4byte	.LVL8
	.4byte	0xb62
	.4byte	0x602
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0x98,0x7f
	.byte	0x1e
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x1e
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x44
	.byte	0
	.byte	0x1d
	.4byte	.LVL9
	.4byte	0xb62
	.4byte	0x621
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xf0,0x7e
	.byte	0x1e
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x1e
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x44
	.byte	0
	.byte	0x1d
	.4byte	.LVL10
	.4byte	0xb6e
	.4byte	0x63e
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x32
	.byte	0x1e
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0x1e
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x36
	.byte	0
	.byte	0x1d
	.4byte	.LVL12
	.4byte	0xb7b
	.4byte	0x655
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0x1d
	.4byte	.LVL13
	.4byte	0xb87
	.4byte	0x669
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0
	.byte	0x1d
	.4byte	.LVL14
	.4byte	0xb93
	.4byte	0x67c
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x1d
	.4byte	.LVL15
	.4byte	0xba0
	.4byte	0x6a7
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x1e
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0x7f
	.byte	0x1e
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x34
	.byte	0x1e
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0x91
	.byte	0xb4,0x7e
	.byte	0x1e
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x34
	.byte	0
	.byte	0x1f
	.4byte	.LVL17
	.4byte	0xb7b
	.byte	0x1d
	.4byte	.LVL18
	.4byte	0xb87
	.4byte	0x6c4
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0
	.byte	0x1d
	.4byte	.LVL19
	.4byte	0xbad
	.4byte	0x6d8
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x1d
	.4byte	.LVL20
	.4byte	0xb93
	.4byte	0x6eb
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x1d
	.4byte	.LVL25
	.4byte	0xb7b
	.4byte	0x707
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x1e
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x1d
	.4byte	.LVL26
	.4byte	0xbba
	.4byte	0x71c
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x78
	.byte	0x9e,0x8
	.byte	0
	.byte	0x1d
	.4byte	.LVL27
	.4byte	0xbc6
	.4byte	0x72f
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x1d
	.4byte	.LVL28
	.4byte	0xbd2
	.4byte	0x74f
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x1e
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0xd0,0x7e
	.byte	0x1e
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x40
	.byte	0
	.byte	0x1d
	.4byte	.LVL29
	.4byte	0xbdf
	.4byte	0x768
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x1e
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x35
	.byte	0
	.byte	0x1d
	.4byte	.LVL30
	.4byte	0xb7b
	.4byte	0x77f
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.byte	0x1d
	.4byte	.LVL31
	.4byte	0xb7b
	.4byte	0x796
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0
	.byte	0x1f
	.4byte	.LVL32
	.4byte	0xbec
	.byte	0x1d
	.4byte	.LVL35
	.4byte	0xbf9
	.4byte	0x7b3
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0
	.byte	0x1f
	.4byte	.LVL41
	.4byte	0xbec
	.byte	0x1f
	.4byte	.LVL44
	.4byte	0xbad
	.byte	0x1d
	.4byte	.LVL45
	.4byte	0xbf9
	.4byte	0x7d9
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0
	.byte	0x1d
	.4byte	.LVL47
	.4byte	0xb7b
	.4byte	0x7f0
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0
	.byte	0x1d
	.4byte	.LVL49
	.4byte	0xc05
	.4byte	0x820
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x6
	.byte	0x91
	.byte	0xa4,0x7e
	.byte	0x6
	.byte	0x23
	.byte	0x1
	.byte	0x1e
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0xb8,0x7e
	.byte	0x1e
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0x1e
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0x1e
	.byte	0x1
	.byte	0x5e
	.byte	0x3
	.byte	0x91
	.byte	0xc0,0x7e
	.byte	0
	.byte	0x1f
	.4byte	.LVL53
	.4byte	0xbec
	.byte	0x1d
	.4byte	.LVL56
	.4byte	0xb62
	.4byte	0x848
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x1e
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x1e
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x89
	.byte	0
	.byte	0
	.byte	0x1d
	.4byte	.LVL57
	.4byte	0xc12
	.4byte	0x867
	.byte	0x1e
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x1e
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x89
	.byte	0
	.byte	0x1e
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x1d
	.4byte	.LVL60
	.4byte	0xb7b
	.4byte	0x884
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0x1e
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x88
	.byte	0
	.byte	0
	.byte	0x1f
	.4byte	.LVL62
	.4byte	0xbad
	.byte	0x1d
	.4byte	.LVL63
	.4byte	0xbf9
	.4byte	0x8a1
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0
	.byte	0x1d
	.4byte	.LVL67
	.4byte	0xc1f
	.4byte	0x8c3
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x1e
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0xe0,0x7e
	.byte	0x1e
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0x91
	.byte	0xb0,0x7e
	.byte	0
	.byte	0x1d
	.4byte	.LVL70
	.4byte	0xb7b
	.4byte	0x8da
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC15
	.byte	0
	.byte	0x1d
	.4byte	.LVL73
	.4byte	0xbf9
	.4byte	0x8ee
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0
	.byte	0x1d
	.4byte	.LVL74
	.4byte	0xb7b
	.4byte	0x911
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC10
	.byte	0x1e
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x88
	.byte	0
	.byte	0x1e
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x86
	.byte	0
	.byte	0
	.byte	0x1d
	.4byte	.LVL75
	.4byte	0xb7b
	.4byte	0x92e
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC11
	.byte	0x1e
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0
	.byte	0x1d
	.4byte	.LVL76
	.4byte	0xc2c
	.4byte	0x94d
	.byte	0x1e
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x1e
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x88
	.byte	0
	.byte	0x1e
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x1d
	.4byte	.LVL79
	.4byte	0xb7b
	.4byte	0x964
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC12
	.byte	0
	.byte	0x1d
	.4byte	.LVL82
	.4byte	0xb7b
	.4byte	0x981
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC13
	.byte	0x1e
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x86
	.byte	0
	.byte	0
	.byte	0x1d
	.4byte	.LVL83
	.4byte	0xb7b
	.4byte	0x998
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC14
	.byte	0
	.byte	0x1d
	.4byte	.LVL86
	.4byte	0xb7b
	.4byte	0x9b5
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC16
	.byte	0x1e
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0
	.byte	0x1d
	.4byte	.LVL87
	.4byte	0xc39
	.4byte	0x9ca
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xe4,0x7e
	.byte	0
	.byte	0x1f
	.4byte	.LVL88
	.4byte	0xbba
	.byte	0x1d
	.4byte	.LVL89
	.4byte	0xb7b
	.4byte	0x9f2
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC17
	.byte	0x1e
	.byte	0x1
	.byte	0x5b
	.byte	0x4
	.byte	0x91
	.byte	0xac,0x7e
	.byte	0x6
	.byte	0
	.byte	0x1d
	.4byte	.LVL90
	.4byte	0xb7b
	.4byte	0xa09
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC18
	.byte	0
	.byte	0x1f
	.4byte	.LVL92
	.4byte	0xbec
	.byte	0x1d
	.4byte	.LVL95
	.4byte	0xbf9
	.4byte	0xa26
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0
	.byte	0x1d
	.4byte	.LVL98
	.4byte	0xb7b
	.4byte	0xa43
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC19
	.byte	0x1e
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x1d
	.4byte	.LVL102
	.4byte	0xb7b
	.4byte	0xa5a
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC20
	.byte	0
	.byte	0x1d
	.4byte	.LVL103
	.4byte	0xc2c
	.4byte	0xa81
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0x1e
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC21
	.byte	0x1e
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x34
	.byte	0x1e
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x20
	.4byte	.LVL104
	.4byte	0xbad
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0
	.byte	0
	.byte	0x8
	.4byte	0x25
	.4byte	0xaa2
	.byte	0x9
	.4byte	0x2c
	.byte	0x4
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x16c
	.byte	0x21
	.4byte	0x3bb
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0xb56
	.byte	0x22
	.4byte	0x3c8
	.4byte	.LLST11
	.byte	0x22
	.4byte	0x3d4
	.4byte	.LLST12
	.byte	0x22
	.4byte	0x3e0
	.4byte	.LLST13
	.byte	0x22
	.4byte	0x3ec
	.4byte	.LLST14
	.byte	0x23
	.4byte	0x3bb
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.byte	0x1
	.byte	0xb8
	.byte	0xd
	.4byte	0xb42
	.byte	0x22
	.4byte	0x3c8
	.4byte	.LLST15
	.byte	0x22
	.4byte	0x3d4
	.4byte	.LLST16
	.byte	0x24
	.4byte	0x3e0
	.byte	0x2
	.byte	0x22
	.4byte	0x3ec
	.4byte	.LLST17
	.byte	0x25
	.4byte	.LVL112
	.4byte	0xc45
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	TCP_Server
	.byte	0x1e
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC23
	.byte	0x1e
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xa
	.2byte	0x400
	.byte	0x1e
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x44
	.byte	0x1e
	.byte	0x1
	.byte	0x5f
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x25
	.4byte	.LVL107
	.4byte	0xb7b
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC22
	.byte	0
	.byte	0
	.byte	0x26
	.4byte	.LASF86
	.4byte	.LASF86
	.byte	0xe
	.byte	0x91
	.byte	0x7
	.byte	0x26
	.4byte	.LASF87
	.4byte	.LASF87
	.byte	0xf
	.byte	0x21
	.byte	0x8
	.byte	0x27
	.4byte	.LASF88
	.4byte	.LASF88
	.byte	0xd
	.2byte	0x254
	.byte	0x5
	.byte	0x26
	.4byte	.LASF89
	.4byte	.LASF89
	.byte	0x10
	.byte	0xc8
	.byte	0x5
	.byte	0x26
	.4byte	.LASF90
	.4byte	.LASF90
	.byte	0xe
	.byte	0x94
	.byte	0x6
	.byte	0x27
	.4byte	.LASF91
	.4byte	.LASF91
	.byte	0x11
	.2byte	0x2c2
	.byte	0x6
	.byte	0x27
	.4byte	.LASF92
	.4byte	.LASF92
	.byte	0xd
	.2byte	0x246
	.byte	0x5
	.byte	0x27
	.4byte	.LASF93
	.4byte	.LASF93
	.byte	0xd
	.2byte	0x247
	.byte	0x6
	.byte	0x26
	.4byte	.LASF94
	.4byte	.LASF94
	.byte	0x12
	.byte	0x60
	.byte	0x7
	.byte	0x26
	.4byte	.LASF95
	.4byte	.LASF95
	.byte	0x12
	.byte	0x65
	.byte	0x7
	.byte	0x27
	.4byte	.LASF96
	.4byte	.LASF96
	.byte	0xd
	.2byte	0x241
	.byte	0x5
	.byte	0x27
	.4byte	.LASF97
	.4byte	.LASF97
	.byte	0xd
	.2byte	0x249
	.byte	0x5
	.byte	0x27
	.4byte	.LASF98
	.4byte	.LASF98
	.byte	0x11
	.2byte	0x547
	.byte	0xc
	.byte	0x26
	.4byte	.LASF99
	.4byte	.LASF99
	.byte	0x13
	.byte	0x51
	.byte	0x5
	.byte	0x27
	.4byte	.LASF100
	.4byte	.LASF100
	.byte	0xd
	.2byte	0x258
	.byte	0x5
	.byte	0x27
	.4byte	.LASF101
	.4byte	.LASF101
	.byte	0xd
	.2byte	0x24a
	.byte	0x9
	.byte	0x27
	.4byte	.LASF102
	.4byte	.LASF102
	.byte	0xd
	.2byte	0x240
	.byte	0x5
	.byte	0x27
	.4byte	.LASF103
	.4byte	.LASF103
	.byte	0xd
	.2byte	0x250
	.byte	0x9
	.byte	0x26
	.4byte	.LASF104
	.4byte	.LASF104
	.byte	0xb
	.byte	0xcf
	.byte	0x7
	.byte	0x27
	.4byte	.LASF105
	.4byte	.LASF105
	.byte	0x11
	.2byte	0x14a
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
	.byte	0x15
	.byte	0x1
	.byte	0x27
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xd
	.byte	0x5
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xe
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
	.byte	0xf
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x10
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
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x12
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
	.byte	0x20
	.byte	0xb
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
	.byte	0x19
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
	.byte	0xa
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x11
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x1c
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1d
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
	.byte	0x1e
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x1f
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
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
	.byte	0
	.byte	0
	.byte	0x21
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
	.byte	0x22
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x23
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
	.byte	0x24
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x25
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
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x27
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
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL11
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL24
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL68
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL69
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL84
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL85
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x65
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL52
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL91
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL99
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL101
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x66
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL4
	.4byte	.LVL5-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL5-1
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL24
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL33
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL42
	.4byte	.LVL44-1
	.2byte	0x2
	.byte	0x88
	.byte	0
	.4byte	.LVL54
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL55
	.4byte	.LVL64
	.2byte	0x3
	.byte	0x91
	.byte	0xac,0x7e
	.4byte	.LVL71
	.4byte	.LVL84
	.2byte	0x3
	.byte	0x91
	.byte	0xac,0x7e
	.4byte	.LVL92
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL94
	.4byte	.LVL95-1
	.2byte	0x2
	.byte	0x78
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL31
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL37
	.4byte	.LVL52
	.2byte	0x3
	.byte	0x91
	.byte	0xa4,0x7e
	.4byte	.LVL96
	.4byte	.LVL99
	.2byte	0x3
	.byte	0x91
	.byte	0xa4,0x7e
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL2
	.4byte	.LVL16
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LVL36
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL37
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL43
	.4byte	.LVL46
	.2byte	0x3
	.byte	0x79
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL61
	.4byte	.LVL65
	.2byte	0x3
	.byte	0x79
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL65
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL58
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL59
	.4byte	.LVL60-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL60-1
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL71
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL72
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL77
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL78
	.4byte	.LVL79-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL80
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL81
	.4byte	.LVL82-1
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL37
	.4byte	.LVL48
	.2byte	0x4
	.byte	0x91
	.byte	0xb8,0x7e
	.byte	0x9f
	.4byte	.LVL48
	.4byte	.LVL49-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL49-1
	.4byte	.LFE5
	.2byte	0x4
	.byte	0x91
	.byte	0xb8,0x7e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL38
	.4byte	.LFE5
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL105
	.4byte	.LVL106
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL106
	.4byte	.LVL107
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL107
	.4byte	.LVL110
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL110
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL105
	.4byte	.LVL107-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL107-1
	.4byte	.LVL107
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL107
	.4byte	.LVL109
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL109
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL105
	.4byte	.LVL107-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL107-1
	.4byte	.LVL107
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL107
	.4byte	.LVL111
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL111
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL105
	.4byte	.LVL107-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL107-1
	.4byte	.LVL107
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL107
	.4byte	.LVL108
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL108
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL107
	.4byte	.LVL110
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL110
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL107
	.4byte	.LVL109
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL109
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL107
	.4byte	.LVL108
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL108
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
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
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB2
	.4byte	.LBE2
	.4byte	.LBB3
	.4byte	.LBE3
	.4byte	0
	.4byte	0
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF42:
	.string	"MEMP_ALTCP_PCB"
.LASF64:
	.string	"sin_zero"
.LASF93:
	.string	"lwip_close"
.LASF81:
	.string	"time_last"
.LASF109:
	.string	"lwip_internal_netif_client_data_index"
.LASF66:
	.string	"sa_len"
.LASF97:
	.string	"lwip_listen"
.LASF2:
	.string	"short int"
.LASF85:
	.string	"con_amount"
.LASF41:
	.string	"MEMP_TCP_SEG"
.LASF107:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/netutils/tcpserver/tcpserver.c"
.LASF100:
	.string	"lwip_select"
.LASF73:
	.string	"new_connection"
.LASF88:
	.string	"lwip_socket"
.LASF14:
	.string	"__uint32_t"
.LASF46:
	.string	"MEMP_TCPIP_MSG_INPKT"
.LASF13:
	.string	"__uint16_t"
.LASF49:
	.string	"MEMP_NETDB"
.LASF30:
	.string	"help"
.LASF48:
	.string	"MEMP_SYS_TIMEOUT"
.LASF57:
	.string	"s_addr"
.LASF19:
	.string	"time_t"
.LASF7:
	.string	"uint8_t"
.LASF40:
	.string	"MEMP_TCP_PCB_LISTEN"
.LASF61:
	.string	"sin_family"
.LASF60:
	.string	"sin_len"
.LASF103:
	.string	"lwip_send"
.LASF22:
	.string	"__fd_mask"
.LASF25:
	.string	"__fds_bits"
.LASF35:
	.string	"addr"
.LASF4:
	.string	"long long int"
.LASF10:
	.string	"long long unsigned int"
.LASF87:
	.string	"memset"
.LASF18:
	.string	"suseconds_t"
.LASF3:
	.string	"long int"
.LASF83:
	.string	"maxsock"
.LASF55:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_MAX"
.LASF89:
	.string	"printf"
.LASF101:
	.string	"lwip_recv"
.LASF77:
	.string	"data_buffer"
.LASF98:
	.string	"xTaskGetTickCount"
.LASF96:
	.string	"lwip_bind"
.LASF114:
	.string	"Failed"
.LASF99:
	.string	"atoi"
.LASF92:
	.string	"lwip_setsockopt"
.LASF63:
	.string	"sin_addr"
.LASF29:
	.string	"name"
.LASF53:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_DHCP"
.LASF11:
	.string	"TickType_t"
.LASF20:
	.string	"tv_sec"
.LASF58:
	.string	"sa_family_t"
.LASF5:
	.string	"unsigned char"
.LASF15:
	.string	"__int_least64_t"
.LASF72:
	.string	"listening_socket"
.LASF69:
	.string	"argc"
.LASF52:
	.string	"MEMP_MAX"
.LASF21:
	.string	"tv_usec"
.LASF108:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/netutils"
.LASF1:
	.string	"signed char"
.LASF80:
	.string	"time_diff"
.LASF54:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_IGMP"
.LASF79:
	.string	"time_cur"
.LASF8:
	.string	"uint32_t"
.LASF0:
	.string	"unsigned int"
.LASF95:
	.string	"lwip_htonl"
.LASF112:
	.string	"TCP_Server"
.LASF47:
	.string	"MEMP_IGMP_GROUP"
.LASF113:
	.string	"pvParameters"
.LASF70:
	.string	"argv"
.LASF94:
	.string	"lwip_htons"
.LASF110:
	.string	"network_netutils_tcpserver_cli_register"
.LASF68:
	.string	"sa_data"
.LASF6:
	.string	"short unsigned int"
.LASF111:
	.string	"cmd_tcp_server"
.LASF90:
	.string	"vPortFree"
.LASF12:
	.string	"char"
.LASF31:
	.string	"function"
.LASF16:
	.string	"__size_t"
.LASF45:
	.string	"MEMP_TCPIP_MSG_API"
.LASF24:
	.string	"fd_set"
.LASF91:
	.string	"vTaskDelete"
.LASF26:
	.string	"in_addr_t"
.LASF34:
	.string	"ip4_addr"
.LASF50:
	.string	"MEMP_PBUF"
.LASF104:
	.string	"ip4addr_ntoa"
.LASF9:
	.string	"long unsigned int"
.LASF56:
	.string	"in_addr"
.LASF74:
	.string	"client_addrlen"
.LASF37:
	.string	"MEMP_RAW_PCB"
.LASF82:
	.string	"fdsr"
.LASF36:
	.string	"ip4_addr_t"
.LASF23:
	.string	"timeval"
.LASF62:
	.string	"sin_port"
.LASF32:
	.string	"u8_t"
.LASF33:
	.string	"u32_t"
.LASF84:
	.string	"client_fd"
.LASF28:
	.string	"cli_command"
.LASF71:
	.string	"cmds_user"
.LASF67:
	.string	"sa_family"
.LASF51:
	.string	"MEMP_PBUF_POOL"
.LASF76:
	.string	"client_addr"
.LASF44:
	.string	"MEMP_NETCONN"
.LASF102:
	.string	"lwip_accept"
.LASF39:
	.string	"MEMP_TCP_PCB"
.LASF17:
	.string	"__suseconds_t"
.LASF38:
	.string	"MEMP_UDP_PCB"
.LASF78:
	.string	"connect_time"
.LASF86:
	.string	"pvPortMalloc"
.LASF75:
	.string	"server_addr"
.LASF105:
	.string	"xTaskCreate"
.LASF59:
	.string	"sockaddr_in"
.LASF27:
	.string	"in_port_t"
.LASF65:
	.string	"sockaddr"
.LASF43:
	.string	"MEMP_NETBUF"
.LASF106:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
