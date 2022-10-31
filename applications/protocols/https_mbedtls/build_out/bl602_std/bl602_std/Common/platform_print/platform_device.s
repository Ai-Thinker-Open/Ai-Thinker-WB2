	.file	"platform_device.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.bflb_platform_uart_dbg_init,"ax",@progbits
	.align	1
	.globl	bflb_platform_uart_dbg_init
	.type	bflb_platform_uart_dbg_init, @function
bflb_platform_uart_dbg_init:
.LFB10:
	.file 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/Common/platform_print/platform_device.c"
	.loc 1 91 1
	.cfi_startproc
.LVL0:
	.loc 1 92 5
	.loc 1 91 1 is_stmt 0
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	.loc 1 92 19
	lui	a1,%hi(.LANCHOR0)
	.loc 1 91 1
	sw	s0,56(sp)
	sw	s1,52(sp)
	.loc 1 92 19
	li	a2,36
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s1,a1,%lo(.LANCHOR0)
	.loc 1 91 1
	mv	s0,a0
	.loc 1 92 19
	addi	a1,a1,%lo(.LANCHOR0)
	addi	a0,sp,12
.LVL1:
	.loc 1 91 1
	sw	ra,60(sp)
	.cfi_offset 1, -4
	.loc 1 92 19
	call	memcpy
.LVL2:
	.loc 1 103 5 is_stmt 1
	.loc 1 103 23 is_stmt 0
	li	a2,12
	addi	a1,s1,36
	mv	a0,sp
	call	memcpy
.LVL3:
	.loc 1 111 5 is_stmt 1
	call	bflb_platform_init_uart_debug_gpio
.LVL4:
	.loc 1 113 5
	lui	a1,%hi(.LANCHOR1)
	lui	a0,%hi(.LANCHOR2)
	li	a4,0
	li	a3,0
	li	a2,64
	addi	a1,a1,%lo(.LANCHOR1)
	addi	a0,a0,%lo(.LANCHOR2)
	call	Ring_Buffer_Init
.LVL5:
	.loc 1 117 5
	li	a2,0
	li	a1,1
	li	a0,1
	call	GLB_Set_UART_CLK
.LVL6:
	.loc 1 118 5
	.loc 1 118 25 is_stmt 0
	li	a5,160002048
	addi	a5,a5,-2048
	sw	a5,12(sp)
	.loc 1 120 5 is_stmt 1
	.loc 1 120 7 is_stmt 0
	beq	s0,zero,.L2
	.loc 1 121 9 is_stmt 1
	.loc 1 121 30 is_stmt 0
	sw	s0,16(sp)
.L2:
	.loc 1 124 5 is_stmt 1
	li	a0,16
	call	GLB_AHB_Slave1_Reset
.LVL7:
	.loc 1 127 5
	li	a2,1
	li	a1,8
	li	a0,0
	call	UART_IntMask
.LVL8:
	.loc 1 130 5
	li	a1,2
	li	a0,0
	call	UART_Disable
.LVL9:
	.loc 1 133 5
	addi	a1,sp,12
	li	a0,0
	call	UART_Init
.LVL10:
	.loc 1 136 5
	mv	a1,sp
	li	a0,0
	call	UART_FifoConfig
.LVL11:
	.loc 1 140 5
	li	a1,1
	li	a0,0
	call	UART_TxFreeRun
.LVL12:
	.loc 1 143 5
	li	a1,80
	li	a0,0
	call	UART_SetRxTimeoutValue
.LVL13:
	.loc 1 147 5
	li	a2,0
	li	a1,3
	li	a0,0
	call	UART_IntMask
.LVL14:
	.loc 1 148 5
	li	a2,0
	li	a1,4
	li	a0,0
	call	UART_IntMask
.LVL15:
	.loc 1 151 5
	lui	a2,%hi(UART_RFR_Cbf)
	addi	a2,a2,%lo(UART_RFR_Cbf)
	li	a1,3
	li	a0,0
	call	UART_Int_Callback_Install
.LVL16:
	.loc 1 152 5
	lui	a2,%hi(UART_RTO_Cbf)
	addi	a2,a2,%lo(UART_RTO_Cbf)
	li	a1,4
	li	a0,0
	call	UART_Int_Callback_Install
.LVL17:
	.loc 1 155 5
	li	a0,45
	call	clic_enable_interrupt
.LVL18:
	.loc 1 158 5
	li	a1,2
	li	a0,0
	call	UART_Enable
.LVL19:
	.loc 1 159 1 is_stmt 0
	lw	ra,60(sp)
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
.LVL20:
	lw	s1,52(sp)
	.cfi_restore 9
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE10:
	.size	bflb_platform_uart_dbg_init, .-bflb_platform_uart_dbg_init
	.section	.text.bflb_platform_usart_dbg_send,"ax",@progbits
	.align	1
	.globl	bflb_platform_usart_dbg_send
	.type	bflb_platform_usart_dbg_send, @function
bflb_platform_usart_dbg_send:
.LFB11:
	.loc 1 176 1 is_stmt 1
	.cfi_startproc
.LVL21:
	.loc 1 183 5
	.loc 1 176 1 is_stmt 0
	mv	a2,a1
	.loc 1 183 5
	mv	a1,a0
.LVL22:
	li	a0,0
.LVL23:
	tail	UART_SendData
.LVL24:
	.cfi_endproc
.LFE11:
	.size	bflb_platform_usart_dbg_send, .-bflb_platform_usart_dbg_send
	.section	.text.bflb_platform_uart_dbg_deinit,"ax",@progbits
	.align	1
	.globl	bflb_platform_uart_dbg_deinit
	.type	bflb_platform_uart_dbg_deinit, @function
bflb_platform_uart_dbg_deinit:
.LFB12:
	.loc 1 187 1 is_stmt 1
	.cfi_startproc
	.loc 1 188 5
	.loc 1 187 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 188 5
	li	a1,2
	li	a0,0
	.loc 1 187 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 188 5
	call	UART_Disable
.LVL25:
	.loc 1 189 5 is_stmt 1
	li	a0,16
	call	GLB_AHB_Slave1_Reset
.LVL26:
	.loc 1 190 5
	.loc 1 191 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 190 5
	tail	bflb_platform_deinit_uart_debug_gpio
.LVL27:
	.cfi_endproc
.LFE12:
	.size	bflb_platform_uart_dbg_deinit, .-bflb_platform_uart_dbg_deinit
	.section	.text.bflb_platform_printf,"ax",@progbits
	.align	1
	.globl	bflb_platform_printf
	.type	bflb_platform_printf, @function
bflb_platform_printf:
.LFB13:
	.loc 1 194 1 is_stmt 1
	.cfi_startproc
.LVL28:
	.loc 1 195 5
	.loc 1 196 5
	.loc 1 197 5
	.loc 1 194 1 is_stmt 0
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	a5,52(sp)
	.loc 1 197 7
	lui	a5,%hi(.LANCHOR3)
	lbu	a5,%lo(.LANCHOR3)(a5)
	.loc 1 194 1
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -36
	.cfi_offset 8, -40
	.loc 1 194 1
	sw	a1,36(sp)
	sw	a2,40(sp)
	sw	a3,44(sp)
	sw	a4,48(sp)
	sw	a6,56(sp)
	sw	a7,60(sp)
	.loc 1 197 7
	bne	a5,zero,.L10
	.loc 1 198 8 is_stmt 1
	.loc 1 199 9 is_stmt 0
	lui	s0,%hi(.LANCHOR4)
	.loc 1 198 8
	addi	a3,sp,36
	.loc 1 199 9
	mv	a2,a0
	li	a1,127
	addi	a0,s0,%lo(.LANCHOR4)
.LVL29:
	.loc 1 198 8
	sw	a3,12(sp)
	.loc 1 199 9 is_stmt 1
	call	vsnprintf
.LVL30:
	.loc 1 200 8
	.loc 1 201 9
	.loc 1 201 58 is_stmt 0
	addi	a0,s0,%lo(.LANCHOR4)
	call	strlen
.LVL31:
	mv	a1,a0
	.loc 1 201 9
	addi	a0,s0,%lo(.LANCHOR4)
	call	bflb_platform_usart_dbg_send
.LVL32:
.L10:
	.loc 1 203 1
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE13:
	.size	bflb_platform_printf, .-bflb_platform_printf
	.section	.rodata.UART_RFR_Cbf.str1.4,"aMS",@progbits,1
	.align	2
.LC2:
	.string	"UART Recv Full\r\n"
	.section	.text.UART_RFR_Cbf,"ax",@progbits
	.align	1
	.type	UART_RFR_Cbf, @function
UART_RFR_Cbf:
.LFB8:
	.loc 1 46 1 is_stmt 1
	.cfi_startproc
	.loc 1 47 5
	.loc 1 48 5
	.loc 1 46 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	.loc 1 48 18
	li	a0,0
	.loc 1 46 1
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.loc 1 48 18
	call	UART_GetRxFifoCount
.LVL33:
	.loc 1 49 5 is_stmt 1
	slli	a1,a0,16
	lui	s0,%hi(.LANCHOR2)
	lui	a2,%hi(UART_ReceiveData)
	li	a3,0
	addi	a2,a2,%lo(UART_ReceiveData)
	srli	a1,a1,16
	addi	a0,s0,%lo(.LANCHOR2)
.LVL34:
	call	Ring_Buffer_Write_Callback
.LVL35:
	.loc 1 53 5
	.loc 1 53 9 is_stmt 0
	li	a0,0
	call	UART_GetRxFifoCount
.LVL36:
	.loc 1 54 5 is_stmt 1
	.loc 1 54 7 is_stmt 0
	beq	a0,zero,.L13
	.loc 1 54 16 discriminator 1
	addi	a0,s0,%lo(.LANCHOR2)
.LVL37:
	call	Ring_Buffer_Get_Empty_Length
.LVL38:
	.loc 1 54 14 discriminator 1
	bne	a0,zero,.L13
.LBB8:
.LBB9:
	.loc 1 82 9 is_stmt 1
	lui	a0,%hi(.LC2)
	addi	a0,a0,%lo(.LC2)
	call	bflb_platform_printf
.LVL39:
.L17:
	.loc 1 83 9
	.loc 1 84 13
	li	a2,16
	mv	a1,sp
	li	a0,0
	call	UART_ReceiveData
.LVL40:
	.loc 1 85 15
	.loc 1 85 16 is_stmt 0
	li	a0,0
	call	UART_GetRxFifoCount
.LVL41:
	.loc 1 85 9
	bne	a0,zero,.L17
.L13:
.LBE9:
.LBE8:
	.loc 1 60 1
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE8:
	.size	UART_RFR_Cbf, .-UART_RFR_Cbf
	.section	.text.UART_RTO_Cbf,"ax",@progbits
	.align	1
	.type	UART_RTO_Cbf, @function
UART_RTO_Cbf:
.LFB36:
	.cfi_startproc
	tail	UART_RFR_Cbf
	.cfi_endproc
.LFE36:
	.size	UART_RTO_Cbf, .-UART_RTO_Cbf
	.section	.rodata.bflb_platform_dump.str1.4,"aMS",@progbits,1
	.align	2
.LC3:
	.string	"\r\n"
	.align	2
.LC4:
	.string	"%02x "
	.section	.text.bflb_platform_dump,"ax",@progbits
	.align	1
	.globl	bflb_platform_dump
	.type	bflb_platform_dump, @function
bflb_platform_dump:
.LFB14:
	.loc 1 206 1 is_stmt 1
	.cfi_startproc
.LVL42:
	.loc 1 207 5
	.loc 1 208 5
	.loc 1 206 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	s1,20(sp)
	sw	s2,16(sp)
	sw	s3,12(sp)
	sw	s4,8(sp)
	sw	ra,28(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 1, -4
	.loc 1 206 1
	mv	s2,a0
.LVL43:
	.loc 1 210 5 is_stmt 1
	.loc 1 206 1 is_stmt 0
	mv	s1,a1
	.loc 1 210 10
	li	s0,0
	.loc 1 212 13
	lui	s3,%hi(.LC3)
	.loc 1 214 9
	lui	s4,%hi(.LC4)
.LVL44:
.L22:
	.loc 1 210 13 is_stmt 1 discriminator 1
	.loc 1 210 5 is_stmt 0 discriminator 1
	bne	s0,s1,.L24
	.loc 1 216 5 is_stmt 1
	.loc 1 217 1 is_stmt 0
	lw	s0,24(sp)
	.cfi_remember_state
	.cfi_restore 8
.LVL45:
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s1,20(sp)
	.cfi_restore 9
.LVL46:
	lw	s2,16(sp)
	.cfi_restore 18
.LVL47:
	lw	s3,12(sp)
	.cfi_restore 19
	lw	s4,8(sp)
	.cfi_restore 20
	.loc 1 216 5
	lui	a0,%hi(.LC3)
	.loc 1 217 1
	.loc 1 216 5
	addi	a0,a0,%lo(.LC3)
	.loc 1 217 1
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	.loc 1 216 5
	tail	bflb_platform_printf
.LVL48:
.L24:
	.cfi_restore_state
	.loc 1 211 9 is_stmt 1
	.loc 1 211 13 is_stmt 0
	andi	a5,s0,15
	.loc 1 211 11
	bne	a5,zero,.L23
	.loc 1 212 13 is_stmt 1
	addi	a0,s3,%lo(.LC3)
	call	bflb_platform_printf
.LVL49:
.L23:
	.loc 1 214 9 discriminator 2
	.loc 1 214 39 is_stmt 0 discriminator 2
	add	a5,s2,s0
	.loc 1 214 9 discriminator 2
	lbu	a1,0(a5)
	addi	a0,s4,%lo(.LC4)
	.loc 1 210 20 discriminator 2
	addi	s0,s0,1
.LVL50:
	.loc 1 214 9 discriminator 2
	call	bflb_platform_printf
.LVL51:
	.loc 1 210 19 is_stmt 1 discriminator 2
	j	.L22
	.cfi_endproc
.LFE14:
	.size	bflb_platform_dump, .-bflb_platform_dump
	.section	.text.bflb_platform_prints,"ax",@progbits
	.align	1
	.globl	bflb_platform_prints
	.type	bflb_platform_prints, @function
bflb_platform_prints:
.LFB15:
	.loc 1 220 1
	.cfi_startproc
.LVL52:
	.loc 1 221 5
	.loc 1 220 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	.loc 1 220 1
	mv	s0,a0
	.loc 1 221 49
	call	strlen
.LVL53:
	mv	a1,a0
	.loc 1 221 5
	mv	a0,s0
	.loc 1 222 1
	lw	s0,8(sp)
	.cfi_restore 8
.LVL54:
	lw	ra,12(sp)
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 221 5
	tail	bflb_platform_usart_dbg_send
.LVL55:
	.cfi_endproc
.LFE15:
	.size	bflb_platform_prints, .-bflb_platform_prints
	.section	.text.bflb_platform_printx,"ax",@progbits
	.align	1
	.globl	bflb_platform_printx
	.type	bflb_platform_printx, @function
bflb_platform_printx:
.LFB16:
	.loc 1 225 1 is_stmt 1
	.cfi_startproc
.LVL56:
	.loc 1 226 5
	.loc 1 227 5
	.loc 1 228 5
	.loc 1 228 13
	.loc 1 225 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	.loc 1 229 30
	lui	a3,%hi(.LANCHOR5)
	.loc 1 225 1
	sw	ra,28(sp)
	.cfi_offset 1, -4
	.loc 1 228 10
	li	a5,7
	.loc 1 229 30
	addi	a3,a3,%lo(.LANCHOR5)
	.loc 1 228 5
	li	a2,-1
.LVL57:
.L29:
	.loc 1 229 9 is_stmt 1 discriminator 3
	.loc 1 229 21 is_stmt 0 discriminator 3
	addi	a4,sp,8
	add	a1,a4,a5
	.loc 1 229 35 discriminator 3
	andi	a4,a0,15
	.loc 1 229 30 discriminator 3
	add	a4,a3,a4
	.loc 1 229 21 discriminator 3
	lbu	a4,0(a4)
	.loc 1 228 19 discriminator 3
	addi	a5,a5,-1
.LVL58:
	.loc 1 230 12 discriminator 3
	srli	a0,a0,4
.LVL59:
	.loc 1 229 21 discriminator 3
	sb	a4,0(a1)
	.loc 1 230 9 is_stmt 1 discriminator 3
.LVL60:
	.loc 1 228 18 discriminator 3
	.loc 1 228 13 discriminator 3
	.loc 1 228 5 is_stmt 0 discriminator 3
	bne	a5,a2,.L29
	.loc 1 232 5 is_stmt 1
	addi	a0,sp,8
.LVL61:
	li	a1,8
	call	bflb_platform_usart_dbg_send
.LVL62:
	.loc 1 233 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_restore 1
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE16:
	.size	bflb_platform_printx, .-bflb_platform_printx
	.section	.text.bflb_platform_printc,"ax",@progbits
	.align	1
	.globl	bflb_platform_printc
	.type	bflb_platform_printc, @function
bflb_platform_printc:
.LFB17:
	.loc 1 236 1 is_stmt 1
	.cfi_startproc
.LVL63:
	.loc 1 237 5
	.loc 1 236 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sb	a0,15(sp)
	.loc 1 237 5
	addi	a1,sp,15
	li	a2,1
	li	a0,0
.LVL64:
	.loc 1 236 1
	sw	ra,28(sp)
	.cfi_offset 1, -4
	.loc 1 237 5
	call	UART_SendData
.LVL65:
	.loc 1 238 1
	lw	ra,28(sp)
	.cfi_restore 1
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE17:
	.size	bflb_platform_printc, .-bflb_platform_printc
	.section	.text.bflb_platform_clear_time,"ax",@progbits
	.align	1
	.globl	bflb_platform_clear_time
	.type	bflb_platform_clear_time, @function
bflb_platform_clear_time:
.LFB18:
	.loc 1 241 1 is_stmt 1
	.cfi_startproc
	.loc 1 242 5
	.loc 1 242 51 is_stmt 0
	li	a5,33603584
	li	a3,0
	li	a4,0
	sw	a3,-8(a5)
	sw	a4,-4(a5)
	.loc 1 243 1
	ret
	.cfi_endproc
.LFE18:
	.size	bflb_platform_clear_time, .-bflb_platform_clear_time
	.globl	__udivdi3
	.section	.text.bflb_platform_get_time_ms,"ax",@progbits
	.align	1
	.globl	bflb_platform_get_time_ms
	.type	bflb_platform_get_time_ms, @function
bflb_platform_get_time_ms:
.LFB19:
	.loc 1 246 1 is_stmt 1
	.cfi_startproc
	.loc 1 248 5
	.loc 1 249 5
.LVL66:
	.loc 1 246 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	sw	s1,20(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.loc 1 246 1
	li	a4,5
	.loc 1 252 18
	li	a5,33603584
.LVL67:
.L42:
	.loc 1 251 5 is_stmt 1
	.loc 1 252 9
	.loc 1 252 18 is_stmt 0
	lw	a2,-8(a5)
.LVL68:
	.loc 1 253 9 is_stmt 1
	.loc 1 253 19 is_stmt 0
	lw	a3,-4(a5)
.LVL69:
	.loc 1 254 9 is_stmt 1
	.loc 1 254 19 is_stmt 0
	lw	s0,-8(a5)
.LVL70:
	.loc 1 255 9 is_stmt 1
	.loc 1 255 20 is_stmt 0
	lw	a1,-4(a5)
.LVL71:
	.loc 1 256 9 is_stmt 1
	.loc 1 257 9
	.loc 1 257 11 is_stmt 0
	addi	a4,a4,-1
.LVL72:
	bne	a4,zero,.L36
.LVL73:
.L40:
	sw	a1,12(sp)
	.loc 1 262 5 is_stmt 1
	.loc 1 262 11 is_stmt 0
	li	a5,1073803264
	lw	s1,264(a5)
	.loc 1 262 49
	call	GLB_Get_BCLK_Div
.LVL74:
	.loc 1 263 5 is_stmt 1
	.loc 1 262 67 is_stmt 0
	addi	a0,a0,1
.LVL75:
	.loc 1 262 8
	divu	a0,s1,a0
	.loc 1 265 7
	lw	a1,12(sp)
	.loc 1 263 8
	li	a2,1000
	.loc 1 263 13
	srli	a0,a0,3
	.loc 1 263 8
	divu	a2,a0,a2
.LVL76:
	.loc 1 265 5 is_stmt 1
	.loc 1 265 7 is_stmt 0
	beq	a1,zero,.L37
	.loc 1 268 9 is_stmt 1
	.loc 1 268 56 is_stmt 0
	li	a3,0
	mv	a0,s0
	call	__udivdi3
.LVL77:
	j	.L35
.LVL78:
.L36:
	.loc 1 260 11 is_stmt 1
	.loc 1 260 5 is_stmt 0
	bgtu	a2,s0,.L42
	.loc 1 260 32 discriminator 1
	bgtu	a3,a1,.L42
	j	.L40
.LVL79:
.L37:
	.loc 1 266 9 is_stmt 1
	.loc 1 266 36 is_stmt 0
	divu	a0,s0,a2
	.loc 1 266 15
	li	a1,0
.LVL80:
.L35:
	.loc 1 270 1
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
.LVL81:
	lw	s1,20(sp)
	.cfi_restore 9
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
.LVL82:
	jr	ra
	.cfi_endproc
.LFE19:
	.size	bflb_platform_get_time_ms, .-bflb_platform_get_time_ms
	.section	.text.bflb_platform_start_time,"ax",@progbits
	.align	1
	.globl	bflb_platform_start_time
	.type	bflb_platform_start_time, @function
bflb_platform_start_time:
.LFB34:
	.cfi_startproc
	tail	bflb_platform_clear_time
	.cfi_endproc
.LFE34:
	.size	bflb_platform_start_time, .-bflb_platform_start_time
	.section	.text.bflb_platform_stop_time,"ax",@progbits
	.align	1
	.globl	bflb_platform_stop_time
	.type	bflb_platform_stop_time, @function
bflb_platform_stop_time:
.LFB21:
	.loc 1 278 1 is_stmt 1
	.cfi_startproc
	.loc 1 280 1
	ret
	.cfi_endproc
.LFE21:
	.size	bflb_platform_stop_time, .-bflb_platform_stop_time
	.section	.text.bflb_platform_set_alarm_time,"ax",@progbits
	.align	1
	.globl	bflb_platform_set_alarm_time
	.type	bflb_platform_set_alarm_time, @function
bflb_platform_set_alarm_time:
.LFB22:
	.loc 1 283 1
	.cfi_startproc
.LVL83:
	.loc 1 284 5
	.loc 1 286 5
	.loc 1 283 1 is_stmt 0
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
	.loc 1 286 11
	li	a5,1073803264
	lw	s0,264(a5)
	.loc 1 283 1
	mv	s2,a0
	mv	s1,a1
	.loc 1 286 49
	call	GLB_Get_BCLK_Div
.LVL84:
	.loc 1 287 5 is_stmt 1
	.loc 1 286 67 is_stmt 0
	addi	a0,a0,1
.LVL85:
	.loc 1 286 8
	divu	s0,s0,a0
	.loc 1 291 54
	li	a5,33603584
	lw	a2,-8(a5)
	lw	a3,-4(a5)
	.loc 1 287 8
	li	a5,1000
	.loc 1 292 5
	li	a0,7
	.loc 1 287 13
	srli	s0,s0,3
.LVL86:
	.loc 1 289 5 is_stmt 1
	.loc 1 291 5
	.loc 1 287 8 is_stmt 0
	divu	a5,s0,a5
.LVL87:
	.loc 1 289 10
	mul	a4,a5,s2
	mul	s1,s1,a5
.LVL88:
	.loc 1 291 100
	add	a1,a4,a2
	sltu	a4,a1,a4
	.loc 1 289 10
	mulhu	a5,a5,s2
.LVL89:
	add	a5,s1,a5
	.loc 1 291 100
	add	a5,a5,a3
	add	a3,a4,a5
	.loc 1 291 51
	li	a5,33570816
	sw	a1,0(a5)
	sw	a3,4(a5)
	.loc 1 292 5 is_stmt 1
	.loc 1 293 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_restore 8
.LVL90:
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s1,4(sp)
	.cfi_restore 9
	lw	s2,0(sp)
	.cfi_restore 18
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 292 5
	tail	clic_enable_interrupt
.LVL91:
	.cfi_endproc
.LFE22:
	.size	bflb_platform_set_alarm_time, .-bflb_platform_set_alarm_time
	.section	.text.bflb_platform_init_time,"ax",@progbits
	.align	1
	.globl	bflb_platform_init_time
	.type	bflb_platform_init_time, @function
bflb_platform_init_time:
.LFB23:
	.loc 1 296 1 is_stmt 1
	.cfi_startproc
	.loc 1 297 5
	.loc 1 296 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 297 5
	li	a0,7
	.loc 1 296 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 297 5
	call	clic_disable_interrupt
.LVL92:
	.loc 1 300 5 is_stmt 1
	li	a2,7
	li	a1,0
	li	a0,1
	call	GLB_Set_MTimer_CLK
.LVL93:
	.loc 1 302 5
	.loc 1 303 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 302 5
	tail	bflb_platform_clear_time
.LVL94:
	.cfi_endproc
.LFE23:
	.size	bflb_platform_init_time, .-bflb_platform_init_time
	.section	.text.bflb_platform_deinit_time,"ax",@progbits
	.align	1
	.globl	bflb_platform_deinit_time
	.type	bflb_platform_deinit_time, @function
bflb_platform_deinit_time:
.LFB24:
	.loc 1 306 1 is_stmt 1
	.cfi_startproc
	.loc 1 307 5
	li	a0,7
	tail	clic_disable_interrupt
.LVL95:
	.cfi_endproc
.LFE24:
	.size	bflb_platform_deinit_time, .-bflb_platform_deinit_time
	.section	.text.bflb_platform_delay_ms,"ax",@progbits
	.align	1
	.globl	bflb_platform_delay_ms
	.type	bflb_platform_delay_ms, @function
bflb_platform_delay_ms:
.LFB25:
	.loc 1 312 1
	.cfi_startproc
.LVL96:
	.loc 1 313 5
	.loc 1 314 5
	.loc 1 312 1 is_stmt 0
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
	.loc 1 314 14
	li	a5,1073803264
	lw	s0,264(a5)
.LVL97:
	.loc 1 316 5 is_stmt 1
	.loc 1 280 1
	.loc 1 317 5
	.loc 1 312 1 is_stmt 0
	mv	s1,a0
	.loc 1 313 14
	li	s2,0
	.loc 1 321 28
	srli	s0,s0,15
.LVL98:
	.loc 1 321 38
	mul	s0,s0,s1
	.loc 1 317 5
	call	bflb_platform_clear_time
.LVL99:
	.loc 1 318 5 is_stmt 1
	.loc 1 313 14 is_stmt 0
	li	s3,0
	.loc 1 321 38
	slli	s0,s0,1
.LVL100:
.L53:
	.loc 1 318 10 is_stmt 1
	.loc 1 318 11 is_stmt 0
	call	bflb_platform_get_time_ms
.LVL101:
	.loc 1 318 10
	bne	a1,zero,.L52
	bleu	s1,a0,.L52
	.loc 1 319 9 is_stmt 1
	.loc 1 319 12 is_stmt 0
	addi	a5,s2,1
	sltu	a4,a5,s2
	add	s3,a4,s3
.LVL102:
	.loc 1 321 9 is_stmt 1
	.loc 1 319 12 is_stmt 0
	mv	s2,a5
	.loc 1 321 11
	bne	s3,zero,.L52
	bleu	a5,s0,.L53
.LVL103:
.L52:
	.loc 1 325 1
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	lw	s1,20(sp)
	.cfi_restore 9
.LVL104:
	lw	s2,16(sp)
	.cfi_restore 18
	lw	s3,12(sp)
	.cfi_restore 19
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE25:
	.size	bflb_platform_delay_ms, .-bflb_platform_delay_ms
	.section	.rodata.bflb_platform_init.str1.4,"aMS",@progbits,1
	.align	2
.LC5:
	.string	"system clock=%dM\r\n"
	.section	.text.bflb_platform_init,"ax",@progbits
	.align	1
	.globl	bflb_platform_init
	.type	bflb_platform_init, @function
bflb_platform_init:
.LFB26:
	.loc 1 328 1 is_stmt 1
	.cfi_startproc
.LVL105:
	.loc 1 329 5
	.loc 1 329 11 is_stmt 0
	lui	a5,%hi(.LANCHOR6)
	addi	a5,a5,%lo(.LANCHOR6)
	.loc 1 329 7
	lw	a4,0(a5)
	bne	a4,zero,.L64
	.loc 1 328 1
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.loc 1 332 15
	li	a4,1
	sw	a4,0(a5)
	mv	s0,a0
	.loc 1 332 5 is_stmt 1
	.loc 1 334 5
	call	bflb_platform_init_time
.LVL106:
	.loc 1 336 5
	call	Sec_Eng_Trng_Enable
.LVL107:
	.loc 1 338 5
	.loc 1 338 7 is_stmt 0
	lui	a5,%hi(.LANCHOR3)
	lbu	a5,%lo(.LANCHOR3)(a5)
	bne	a5,zero,.L59
	.loc 1 339 9 is_stmt 1
	mv	a0,s0
	call	bflb_platform_uart_dbg_init
.LVL108:
	.loc 1 340 9
	.loc 1 340 54 is_stmt 0
	li	a5,1073803264
	lw	a1,264(a5)
	.loc 1 340 9
	li	a5,999424
	addi	a5,a5,576
	divu	a1,a1,a5
	.loc 1 342 1
	lw	s0,8(sp)
	.cfi_remember_state
	.cfi_restore 8
.LVL109:
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 340 9
	lui	a0,%hi(.LC5)
	.loc 1 342 1
	.loc 1 340 9
	addi	a0,a0,%lo(.LC5)
	.loc 1 342 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 340 9
	tail	bflb_platform_printf
.LVL110:
.L59:
	.cfi_restore_state
	.loc 1 342 1
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
.LVL111:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL112:
.L64:
	ret
	.cfi_endproc
.LFE26:
	.size	bflb_platform_init, .-bflb_platform_init
	.section	.text.bflb_platform_deinit,"ax",@progbits
	.align	1
	.globl	bflb_platform_deinit
	.type	bflb_platform_deinit, @function
bflb_platform_deinit:
.LFB27:
	.loc 1 346 1 is_stmt 1
	.cfi_startproc
	.loc 1 347 5
	.loc 1 347 11 is_stmt 0
	lui	a5,%hi(.LANCHOR6)
	addi	a5,a5,%lo(.LANCHOR6)
	.loc 1 347 7
	lw	a4,0(a5)
	beq	a4,zero,.L67
	.loc 1 350 5 is_stmt 1
	.loc 1 346 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 350 15
	sw	zero,0(a5)
	.loc 1 352 5 is_stmt 1
	call	bflb_platform_deinit_time
.LVL113:
	.loc 1 354 5
	call	Sec_Eng_Trng_Disable
.LVL114:
	.loc 1 356 5
	.loc 1 356 7 is_stmt 0
	lui	a5,%hi(.LANCHOR3)
	lbu	a5,%lo(.LANCHOR3)(a5)
	bne	a5,zero,.L69
	.loc 1 357 9 is_stmt 1
	call	bflb_platform_uart_dbg_deinit
.LVL115:
.L69:
	.loc 1 359 5
	.loc 1 360 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 359 5
	tail	bflb_platform_deinit_time
.LVL116:
.L67:
	ret
	.cfi_endproc
.LFE27:
	.size	bflb_platform_deinit, .-bflb_platform_deinit
	.section	.text.bflb_platform_print_set,"ax",@progbits
	.align	1
	.globl	bflb_platform_print_set
	.type	bflb_platform_print_set, @function
bflb_platform_print_set:
.LFB28:
	.loc 1 363 1 is_stmt 1
	.cfi_startproc
.LVL117:
	.loc 1 364 5
	.loc 1 364 21 is_stmt 0
	lui	a5,%hi(.LANCHOR3)
	sb	a0,%lo(.LANCHOR3)(a5)
	.loc 1 365 1
	ret
	.cfi_endproc
.LFE28:
	.size	bflb_platform_print_set, .-bflb_platform_print_set
	.section	.text.bflb_platform_get_random,"ax",@progbits
	.align	1
	.globl	bflb_platform_get_random
	.type	bflb_platform_get_random, @function
bflb_platform_get_random:
.LFB29:
	.loc 1 368 1 is_stmt 1
	.cfi_startproc
.LVL118:
	.loc 1 369 5
	.loc 1 370 5
	.loc 1 371 5
	.loc 1 373 5
	.loc 1 368 1 is_stmt 0
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	s0,56(sp)
	sw	s1,52(sp)
	sw	s2,48(sp)
	sw	s3,44(sp)
	sw	ra,60(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 1, -4
	.loc 1 368 1
	mv	s2,a0
	mv	s1,a1
	.loc 1 370 14
	li	s0,0
	li	s3,32
.LVL119:
.L75:
	.loc 1 373 10 is_stmt 1
	bltu	s0,s1,.L79
	.loc 1 387 12 is_stmt 0
	li	a0,0
.L74:
	.loc 1 388 1
	lw	ra,60(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
.LVL120:
	lw	s1,52(sp)
	.cfi_restore 9
.LVL121:
	lw	s2,48(sp)
	.cfi_restore 18
.LVL122:
	lw	s3,44(sp)
	.cfi_restore 19
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
.LVL123:
.L79:
	.cfi_restore_state
	.loc 1 374 9 is_stmt 1
	.loc 1 374 12 is_stmt 0
	mv	a0,sp
	call	Sec_Eng_Trng_Read
.LVL124:
	.loc 1 374 11
	bne	a0,zero,.L80
	.loc 1 377 9 is_stmt 1
	.loc 1 377 12 is_stmt 0
	sub	a5,s1,s0
	.loc 1 378 9 is_stmt 1
	bleu	a5,s3,.L78
	li	a5,32
.LVL125:
	.loc 1 381 9
	.loc 1 381 17
.L78:
	.loc 1 382 13 discriminator 3
	.loc 1 382 35 is_stmt 0 discriminator 3
	add	a3,sp,a0
	.loc 1 382 28 discriminator 3
	lbu	a3,0(a3)
	add	a4,s0,a0
	add	a4,s2,a4
	sb	a3,0(a4)
	.loc 1 381 23 is_stmt 1 discriminator 3
	.loc 1 381 24 is_stmt 0 discriminator 3
	addi	a0,a0,1
.LVL126:
	.loc 1 381 17 is_stmt 1 discriminator 3
	.loc 1 381 9 is_stmt 0 discriminator 3
	bne	a5,a0,.L78
	.loc 1 384 9 is_stmt 1
	.loc 1 384 16 is_stmt 0
	add	s0,s0,a5
.LVL127:
	j	.L75
.LVL128:
.L80:
	.loc 1 375 20
	li	a0,-1
	j	.L74
	.cfi_endproc
.LFE29:
	.size	bflb_platform_get_random, .-bflb_platform_get_random
	.section	.text.bflb_platform_get_input,"ax",@progbits
	.align	1
	.globl	bflb_platform_get_input
	.type	bflb_platform_get_input, @function
bflb_platform_get_input:
.LFB30:
	.loc 1 392 1 is_stmt 1
	.cfi_startproc
.LVL129:
	.loc 1 393 5
	.loc 1 392 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	.cfi_offset 8, -8
	.loc 1 393 21
	lui	s0,%hi(.LANCHOR2)
	.loc 1 392 1
	sw	s2,0(sp)
	.cfi_offset 18, -16
	mv	s2,a0
	.loc 1 393 21
	addi	a0,s0,%lo(.LANCHOR2)
.LVL130:
	.loc 1 392 1
	sw	s1,4(sp)
	sw	ra,12(sp)
	.cfi_offset 9, -12
	.cfi_offset 1, -4
	.loc 1 392 1
	mv	s1,a1
	.loc 1 393 21
	call	Ring_Buffer_Get_Length
.LVL131:
	.loc 1 395 5 is_stmt 1
	.loc 1 399 5
	.loc 1 399 12 is_stmt 0
	bleu	a0,s1,.L84
	mv	a0,s1
.LVL132:
.L84:
	slli	a2,a0,16
	mv	a1,s2
	addi	a0,s0,%lo(.LANCHOR2)
	srli	a2,a2,16
	call	Ring_Buffer_Read
.LVL133:
	.loc 1 400 1
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	lw	s1,4(sp)
	.cfi_restore 9
.LVL134:
	lw	s2,0(sp)
	.cfi_restore 18
.LVL135:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE30:
	.size	bflb_platform_get_input, .-bflb_platform_get_input
	.section	.rodata
	.align	2
	.set	.LANCHOR0,. + 0
.LC0:
	.word	32000000
	.word	2000000
	.word	3
	.word	1
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
.LC1:
	.byte	16
	.byte	16
	.zero	2
	.word	0
	.word	0
	.section	.bss.print_buf.0,"aw",@nobits
	.align	2
	.set	.LANCHOR4,. + 0
	.type	print_buf.0, @object
	.size	print_buf.0, 128
print_buf.0:
	.zero	128
	.section	.bss.uartBuf,"aw",@nobits
	.align	2
	.set	.LANCHOR1,. + 0
	.type	uartBuf, @object
	.size	uartBuf, 64
uartBuf:
	.zero	64
	.section	.bss.uartRB,"aw",@nobits
	.align	2
	.set	.LANCHOR2,. + 0
	.type	uartRB, @object
	.size	uartRB, 24
uartRB:
	.zero	24
	.section	.rodata.hexTable,"a"
	.align	2
	.set	.LANCHOR5,. + 0
	.type	hexTable, @object
	.size	hexTable, 16
hexTable:
	.ascii	"0123456789ABCDEF"
	.section	.sbss.init_flag,"aw",@nobits
	.align	2
	.set	.LANCHOR6,. + 0
	.type	init_flag, @object
	.size	init_flag, 4
init_flag:
	.zero	4
	.section	.sbss.systick_int_cnt,"aw",@nobits
	.align	2
	.type	systick_int_cnt, @object
	.size	systick_int_cnt, 4
systick_int_cnt:
	.zero	4
	.section	.sbss.uart_dbg_disable,"aw",@nobits
	.set	.LANCHOR3,. + 0
	.type	uart_dbg_disable, @object
	.size	uart_dbg_disable, 1
uart_dbg_disable:
	.zero	1
	.text
.Letext0:
	.file 2 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 3 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdarg.h"
	.file 4 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h"
	.file 5 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 6 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/bl602.h"
	.file 7 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_common.h"
	.file 8 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_uart.h"
	.file 9 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_hbn.h"
	.file 10 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_glb.h"
	.file 11 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/Common/ring_buffer/ring_buffer.h"
	.file 12 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_sec_eng.h"
	.file 13 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/RISCV/Core/Include/cmsis_compatible_gcc.h"
	.file 14 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h"
	.file 15 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/Common/platform_print/platform_gpio.h"
	.file 16 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x12df
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF256
	.byte	0xc
	.4byte	.LASF257
	.4byte	.LASF258
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF1
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.byte	0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0x2b
	.byte	0x17
	.4byte	0x46
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.byte	0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.byte	0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0x39
	.byte	0x1c
	.4byte	0x60
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF7
	.byte	0x3
	.4byte	.LASF8
	.byte	0x2
	.byte	0x4d
	.byte	0x12
	.4byte	0x73
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF9
	.byte	0x3
	.4byte	.LASF10
	.byte	0x2
	.byte	0x4f
	.byte	0x1b
	.4byte	0x86
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF12
	.byte	0x3
	.4byte	.LASF13
	.byte	0x2
	.byte	0x69
	.byte	0x20
	.4byte	0x2c
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x3
	.4byte	.LASF14
	.byte	0x3
	.byte	0x28
	.byte	0x1b
	.4byte	0xb3
	.byte	0x5
	.byte	0x4
	.4byte	.LASF259
	.byte	0x3
	.4byte	.LASF15
	.byte	0x4
	.byte	0x2e
	.byte	0x18
	.4byte	0xa7
	.byte	0x6
	.byte	0x4
	.byte	0x7
	.byte	0x4
	.4byte	0xcd
	.byte	0x8
	.byte	0x7
	.byte	0x4
	.4byte	0xd4
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF16
	.byte	0x3
	.4byte	.LASF17
	.byte	0x5
	.byte	0x18
	.byte	0x13
	.4byte	0x3a
	.byte	0x9
	.4byte	0xdb
	.byte	0x3
	.4byte	.LASF18
	.byte	0x5
	.byte	0x24
	.byte	0x14
	.4byte	0x54
	.byte	0x3
	.4byte	.LASF19
	.byte	0x5
	.byte	0x2c
	.byte	0x13
	.4byte	0x67
	.byte	0x3
	.4byte	.LASF20
	.byte	0x5
	.byte	0x30
	.byte	0x14
	.4byte	0x7a
	.byte	0xa
	.4byte	0x104
	.byte	0x3
	.4byte	.LASF21
	.byte	0x5
	.byte	0x3c
	.byte	0x14
	.4byte	0x94
	.byte	0xb
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x6
	.byte	0x41
	.byte	0xe
	.4byte	0x2ce
	.byte	0xc
	.4byte	.LASF22
	.byte	0x3
	.byte	0xc
	.4byte	.LASF23
	.byte	0x7
	.byte	0xc
	.4byte	.LASF24
	.byte	0xb
	.byte	0xc
	.4byte	.LASF25
	.byte	0xc
	.byte	0xc
	.4byte	.LASF26
	.byte	0x10
	.byte	0xc
	.4byte	.LASF27
	.byte	0x11
	.byte	0xc
	.4byte	.LASF28
	.byte	0x12
	.byte	0xc
	.4byte	.LASF29
	.byte	0x13
	.byte	0xc
	.4byte	.LASF30
	.byte	0x14
	.byte	0xc
	.4byte	.LASF31
	.byte	0x15
	.byte	0xc
	.4byte	.LASF32
	.byte	0x16
	.byte	0xc
	.4byte	.LASF33
	.byte	0x17
	.byte	0xc
	.4byte	.LASF34
	.byte	0x18
	.byte	0xc
	.4byte	.LASF35
	.byte	0x19
	.byte	0xc
	.4byte	.LASF36
	.byte	0x1a
	.byte	0xc
	.4byte	.LASF37
	.byte	0x1b
	.byte	0xc
	.4byte	.LASF38
	.byte	0x1c
	.byte	0xc
	.4byte	.LASF39
	.byte	0x1d
	.byte	0xc
	.4byte	.LASF40
	.byte	0x1e
	.byte	0xc
	.4byte	.LASF41
	.byte	0x1f
	.byte	0xc
	.4byte	.LASF42
	.byte	0x20
	.byte	0xc
	.4byte	.LASF43
	.byte	0x21
	.byte	0xc
	.4byte	.LASF44
	.byte	0x22
	.byte	0xc
	.4byte	.LASF45
	.byte	0x23
	.byte	0xc
	.4byte	.LASF46
	.byte	0x24
	.byte	0xc
	.4byte	.LASF47
	.byte	0x25
	.byte	0xc
	.4byte	.LASF48
	.byte	0x26
	.byte	0xc
	.4byte	.LASF49
	.byte	0x27
	.byte	0xc
	.4byte	.LASF50
	.byte	0x28
	.byte	0xc
	.4byte	.LASF51
	.byte	0x29
	.byte	0xc
	.4byte	.LASF52
	.byte	0x2a
	.byte	0xc
	.4byte	.LASF53
	.byte	0x2b
	.byte	0xc
	.4byte	.LASF54
	.byte	0x2c
	.byte	0xc
	.4byte	.LASF55
	.byte	0x2d
	.byte	0xc
	.4byte	.LASF56
	.byte	0x2e
	.byte	0xc
	.4byte	.LASF57
	.byte	0x2f
	.byte	0xc
	.4byte	.LASF58
	.byte	0x30
	.byte	0xc
	.4byte	.LASF59
	.byte	0x31
	.byte	0xc
	.4byte	.LASF60
	.byte	0x32
	.byte	0xc
	.4byte	.LASF61
	.byte	0x33
	.byte	0xc
	.4byte	.LASF62
	.byte	0x34
	.byte	0xc
	.4byte	.LASF63
	.byte	0x35
	.byte	0xc
	.4byte	.LASF64
	.byte	0x36
	.byte	0xc
	.4byte	.LASF65
	.byte	0x37
	.byte	0xc
	.4byte	.LASF66
	.byte	0x38
	.byte	0xc
	.4byte	.LASF67
	.byte	0x39
	.byte	0xc
	.4byte	.LASF68
	.byte	0x3a
	.byte	0xc
	.4byte	.LASF69
	.byte	0x3b
	.byte	0xc
	.4byte	.LASF70
	.byte	0x3c
	.byte	0xc
	.4byte	.LASF71
	.byte	0x3d
	.byte	0xc
	.4byte	.LASF72
	.byte	0x3e
	.byte	0xc
	.4byte	.LASF73
	.byte	0x3f
	.byte	0xc
	.4byte	.LASF74
	.byte	0x40
	.byte	0xc
	.4byte	.LASF75
	.byte	0x41
	.byte	0xc
	.4byte	.LASF76
	.byte	0x42
	.byte	0xc
	.4byte	.LASF77
	.byte	0x43
	.byte	0xc
	.4byte	.LASF78
	.byte	0x44
	.byte	0xc
	.4byte	.LASF79
	.byte	0x45
	.byte	0xc
	.4byte	.LASF80
	.byte	0x46
	.byte	0xc
	.4byte	.LASF81
	.byte	0x47
	.byte	0xc
	.4byte	.LASF82
	.byte	0x48
	.byte	0xc
	.4byte	.LASF83
	.byte	0x49
	.byte	0xc
	.4byte	.LASF84
	.byte	0x4a
	.byte	0xc
	.4byte	.LASF85
	.byte	0x4b
	.byte	0xc
	.4byte	.LASF86
	.byte	0x4c
	.byte	0xc
	.4byte	.LASF87
	.byte	0x4d
	.byte	0xc
	.4byte	.LASF88
	.byte	0x4e
	.byte	0xc
	.4byte	.LASF89
	.byte	0x4f
	.byte	0xc
	.4byte	.LASF90
	.byte	0x50
	.byte	0
	.byte	0xb
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x6
	.byte	0xd3
	.byte	0xe
	.4byte	0x373
	.byte	0xc
	.4byte	.LASF91
	.byte	0
	.byte	0xc
	.4byte	.LASF92
	.byte	0x1
	.byte	0xc
	.4byte	.LASF93
	.byte	0x2
	.byte	0xc
	.4byte	.LASF94
	.byte	0x3
	.byte	0xc
	.4byte	.LASF95
	.byte	0x4
	.byte	0xc
	.4byte	.LASF96
	.byte	0x5
	.byte	0xc
	.4byte	.LASF97
	.byte	0x6
	.byte	0xc
	.4byte	.LASF98
	.byte	0x7
	.byte	0xc
	.4byte	.LASF99
	.byte	0x8
	.byte	0xc
	.4byte	.LASF100
	.byte	0x9
	.byte	0xc
	.4byte	.LASF101
	.byte	0xa
	.byte	0xc
	.4byte	.LASF102
	.byte	0xb
	.byte	0xc
	.4byte	.LASF103
	.byte	0xc
	.byte	0xc
	.4byte	.LASF104
	.byte	0xd
	.byte	0xc
	.4byte	.LASF105
	.byte	0xe
	.byte	0xc
	.4byte	.LASF106
	.byte	0xf
	.byte	0xc
	.4byte	.LASF107
	.byte	0x10
	.byte	0xc
	.4byte	.LASF108
	.byte	0x11
	.byte	0xc
	.4byte	.LASF109
	.byte	0x12
	.byte	0xc
	.4byte	.LASF110
	.byte	0x13
	.byte	0xc
	.4byte	.LASF111
	.byte	0x14
	.byte	0xc
	.4byte	.LASF112
	.byte	0x15
	.byte	0xc
	.4byte	.LASF113
	.byte	0x16
	.byte	0xc
	.4byte	.LASF114
	.byte	0x17
	.byte	0xc
	.4byte	.LASF115
	.byte	0x18
	.byte	0
	.byte	0xb
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x7
	.byte	0x17
	.byte	0x1
	.4byte	0x394
	.byte	0xc
	.4byte	.LASF116
	.byte	0
	.byte	0xc
	.4byte	.LASF117
	.byte	0x1
	.byte	0xc
	.4byte	.LASF118
	.byte	0x2
	.byte	0
	.byte	0xb
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x7
	.byte	0x21
	.byte	0x1
	.4byte	0x3af
	.byte	0xc
	.4byte	.LASF119
	.byte	0
	.byte	0xc
	.4byte	.LASF120
	.byte	0x1
	.byte	0
	.byte	0x3
	.4byte	.LASF121
	.byte	0x7
	.byte	0x24
	.byte	0x2
	.4byte	0x394
	.byte	0xb
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x7
	.byte	0x33
	.byte	0x1
	.4byte	0x3d6
	.byte	0xc
	.4byte	.LASF122
	.byte	0
	.byte	0xc
	.4byte	.LASF123
	.byte	0x1
	.byte	0
	.byte	0xb
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x8
	.byte	0x39
	.byte	0xe
	.4byte	0x3f7
	.byte	0xc
	.4byte	.LASF124
	.byte	0
	.byte	0xc
	.4byte	.LASF125
	.byte	0x1
	.byte	0xc
	.4byte	.LASF126
	.byte	0x2
	.byte	0
	.byte	0xb
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x8
	.byte	0x42
	.byte	0xe
	.4byte	0x418
	.byte	0xc
	.4byte	.LASF127
	.byte	0
	.byte	0xc
	.4byte	.LASF128
	.byte	0x1
	.byte	0xc
	.4byte	.LASF129
	.byte	0x2
	.byte	0
	.byte	0xb
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x8
	.byte	0x4b
	.byte	0xe
	.4byte	0x439
	.byte	0xc
	.4byte	.LASF130
	.byte	0
	.byte	0xc
	.4byte	.LASF131
	.byte	0x1
	.byte	0xc
	.4byte	.LASF132
	.byte	0x2
	.byte	0
	.byte	0x3
	.4byte	.LASF133
	.byte	0x8
	.byte	0x4f
	.byte	0x2
	.4byte	0x418
	.byte	0xb
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x8
	.byte	0x54
	.byte	0xe
	.4byte	0x46c
	.byte	0xc
	.4byte	.LASF134
	.byte	0
	.byte	0xc
	.4byte	.LASF135
	.byte	0x1
	.byte	0xc
	.4byte	.LASF136
	.byte	0x2
	.byte	0xc
	.4byte	.LASF137
	.byte	0x3
	.byte	0
	.byte	0x3
	.4byte	.LASF138
	.byte	0x8
	.byte	0x59
	.byte	0x2
	.4byte	0x445
	.byte	0xb
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x8
	.byte	0x5e
	.byte	0xe
	.4byte	0x49f
	.byte	0xc
	.4byte	.LASF139
	.byte	0
	.byte	0xc
	.4byte	.LASF140
	.byte	0x1
	.byte	0xc
	.4byte	.LASF141
	.byte	0x2
	.byte	0xc
	.4byte	.LASF142
	.byte	0x3
	.byte	0
	.byte	0x3
	.4byte	.LASF143
	.byte	0x8
	.byte	0x63
	.byte	0x2
	.4byte	0x478
	.byte	0xb
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x8
	.byte	0x68
	.byte	0xe
	.4byte	0x4c6
	.byte	0xc
	.4byte	.LASF144
	.byte	0
	.byte	0xc
	.4byte	.LASF145
	.byte	0x1
	.byte	0
	.byte	0x3
	.4byte	.LASF146
	.byte	0x8
	.byte	0x6b
	.byte	0x2
	.4byte	0x4ab
	.byte	0xb
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x8
	.byte	0x78
	.byte	0xe
	.4byte	0x517
	.byte	0xc
	.4byte	.LASF147
	.byte	0
	.byte	0xc
	.4byte	.LASF148
	.byte	0x1
	.byte	0xc
	.4byte	.LASF149
	.byte	0x2
	.byte	0xc
	.4byte	.LASF150
	.byte	0x3
	.byte	0xc
	.4byte	.LASF151
	.byte	0x4
	.byte	0xc
	.4byte	.LASF152
	.byte	0x5
	.byte	0xc
	.4byte	.LASF153
	.byte	0x6
	.byte	0xc
	.4byte	.LASF154
	.byte	0x7
	.byte	0xc
	.4byte	.LASF155
	.byte	0x8
	.byte	0
	.byte	0xd
	.byte	0x24
	.byte	0x8
	.byte	0x91
	.byte	0x9
	.4byte	0x596
	.byte	0xe
	.4byte	.LASF156
	.byte	0x8
	.byte	0x92
	.byte	0xe
	.4byte	0x104
	.byte	0
	.byte	0xe
	.4byte	.LASF157
	.byte	0x8
	.byte	0x93
	.byte	0xe
	.4byte	0x104
	.byte	0x4
	.byte	0xe
	.4byte	.LASF158
	.byte	0x8
	.byte	0x94
	.byte	0x18
	.4byte	0x46c
	.byte	0x8
	.byte	0xe
	.4byte	.LASF159
	.byte	0x8
	.byte	0x95
	.byte	0x18
	.4byte	0x49f
	.byte	0xc
	.byte	0xe
	.4byte	.LASF160
	.byte	0x8
	.byte	0x96
	.byte	0x16
	.4byte	0x439
	.byte	0x10
	.byte	0xe
	.4byte	.LASF161
	.byte	0x8
	.byte	0x97
	.byte	0x11
	.4byte	0x3af
	.byte	0x14
	.byte	0xe
	.4byte	.LASF162
	.byte	0x8
	.byte	0x98
	.byte	0x11
	.4byte	0x3af
	.byte	0x18
	.byte	0xe
	.4byte	.LASF163
	.byte	0x8
	.byte	0x99
	.byte	0x11
	.4byte	0x3af
	.byte	0x1c
	.byte	0xe
	.4byte	.LASF164
	.byte	0x8
	.byte	0x9a
	.byte	0x1e
	.4byte	0x4c6
	.byte	0x20
	.byte	0
	.byte	0x3
	.4byte	.LASF165
	.byte	0x8
	.byte	0x9b
	.byte	0x2
	.4byte	0x517
	.byte	0xd
	.byte	0xc
	.byte	0x8
	.byte	0xa0
	.byte	0x9
	.4byte	0x5e0
	.byte	0xe
	.4byte	.LASF166
	.byte	0x8
	.byte	0xa1
	.byte	0xd
	.4byte	0xdb
	.byte	0
	.byte	0xe
	.4byte	.LASF167
	.byte	0x8
	.byte	0xa2
	.byte	0xd
	.4byte	0xdb
	.byte	0x1
	.byte	0xe
	.4byte	.LASF168
	.byte	0x8
	.byte	0xa3
	.byte	0x11
	.4byte	0x3af
	.byte	0x4
	.byte	0xe
	.4byte	.LASF169
	.byte	0x8
	.byte	0xa4
	.byte	0x11
	.4byte	0x3af
	.byte	0x8
	.byte	0
	.byte	0x3
	.4byte	.LASF170
	.byte	0x8
	.byte	0xa5
	.byte	0x2
	.4byte	0x5a2
	.byte	0xf
	.4byte	0xdb
	.4byte	0x5fc
	.byte	0x10
	.4byte	0x25
	.byte	0xf
	.byte	0
	.byte	0xf
	.4byte	0xdb
	.4byte	0x60c
	.byte	0x10
	.4byte	0x25
	.byte	0x7
	.byte	0
	.byte	0xb
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x9
	.byte	0x7e
	.byte	0xe
	.4byte	0x627
	.byte	0xc
	.4byte	.LASF171
	.byte	0
	.byte	0xc
	.4byte	.LASF172
	.byte	0x1
	.byte	0
	.byte	0xb
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0xa
	.byte	0xb7
	.byte	0xe
	.4byte	0x642
	.byte	0xc
	.4byte	.LASF173
	.byte	0
	.byte	0xc
	.4byte	.LASF174
	.byte	0x1
	.byte	0
	.byte	0xd
	.byte	0x18
	.byte	0xb
	.byte	0x41
	.byte	0x9
	.4byte	0x6b4
	.byte	0xe
	.4byte	.LASF175
	.byte	0xb
	.byte	0x42
	.byte	0xe
	.4byte	0x6b4
	.byte	0
	.byte	0xe
	.4byte	.LASF176
	.byte	0xb
	.byte	0x43
	.byte	0xd
	.4byte	0xdb
	.byte	0x4
	.byte	0xe
	.4byte	.LASF177
	.byte	0xb
	.byte	0x44
	.byte	0xe
	.4byte	0xec
	.byte	0x6
	.byte	0xe
	.4byte	.LASF178
	.byte	0xb
	.byte	0x45
	.byte	0xd
	.4byte	0xdb
	.byte	0x8
	.byte	0xe
	.4byte	.LASF179
	.byte	0xb
	.byte	0x46
	.byte	0xe
	.4byte	0xec
	.byte	0xa
	.byte	0xe
	.4byte	.LASF180
	.byte	0xb
	.byte	0x47
	.byte	0xe
	.4byte	0xec
	.byte	0xc
	.byte	0xe
	.4byte	.LASF181
	.byte	0xb
	.byte	0x48
	.byte	0xc
	.4byte	0xc7
	.byte	0x10
	.byte	0xe
	.4byte	.LASF182
	.byte	0xb
	.byte	0x49
	.byte	0xc
	.4byte	0xc7
	.byte	0x14
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0xdb
	.byte	0x3
	.4byte	.LASF183
	.byte	0xb
	.byte	0x4a
	.byte	0x2
	.4byte	0x642
	.byte	0x11
	.4byte	0x6db
	.byte	0x12
	.4byte	0xc5
	.byte	0x12
	.4byte	0x6b4
	.byte	0x12
	.4byte	0xec
	.byte	0
	.byte	0x3
	.4byte	.LASF184
	.byte	0xb
	.byte	0x60
	.byte	0xf
	.4byte	0x6c6
	.byte	0x13
	.4byte	.LASF185
	.byte	0x1
	.byte	0xd
	.byte	0x10
	.4byte	0xdb
	.byte	0x5
	.byte	0x3
	.4byte	uart_dbg_disable
	.byte	0xf
	.4byte	0xe7
	.4byte	0x709
	.byte	0x10
	.4byte	0x25
	.byte	0xf
	.byte	0
	.byte	0x9
	.4byte	0x6f9
	.byte	0x13
	.4byte	.LASF186
	.byte	0x1
	.byte	0x1b
	.byte	0x16
	.4byte	0x709
	.byte	0x5
	.byte	0x3
	.4byte	hexTable
	.byte	0x13
	.4byte	.LASF187
	.byte	0x1
	.byte	0x1c
	.byte	0x1a
	.4byte	0x110
	.byte	0x5
	.byte	0x3
	.4byte	systick_int_cnt
	.byte	0x13
	.4byte	.LASF188
	.byte	0x1
	.byte	0x1e
	.byte	0x19
	.4byte	0x6ba
	.byte	0x5
	.byte	0x3
	.4byte	uartRB
	.byte	0xf
	.4byte	0xdb
	.4byte	0x754
	.byte	0x10
	.4byte	0x25
	.byte	0x3f
	.byte	0
	.byte	0x13
	.4byte	.LASF189
	.byte	0x1
	.byte	0x1f
	.byte	0x10
	.4byte	0x744
	.byte	0x5
	.byte	0x3
	.4byte	uartBuf
	.byte	0x13
	.4byte	.LASF190
	.byte	0x1
	.byte	0x22
	.byte	0x11
	.4byte	0x104
	.byte	0x5
	.byte	0x3
	.4byte	init_flag
	.byte	0x14
	.4byte	.LASF194
	.byte	0x1
	.2byte	0x187
	.byte	0x5
	.4byte	0xa0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x1
	.byte	0x9c
	.4byte	0x7f7
	.byte	0x15
	.4byte	.LASF191
	.byte	0x1
	.2byte	0x187
	.byte	0x26
	.4byte	0x6b4
	.4byte	.LLST30
	.byte	0x15
	.4byte	.LASF192
	.byte	0x1
	.2byte	0x187
	.byte	0x34
	.4byte	0x104
	.4byte	.LLST31
	.byte	0x16
	.4byte	.LASF193
	.byte	0x1
	.2byte	0x189
	.byte	0xe
	.4byte	0x104
	.4byte	.LLST32
	.byte	0x17
	.4byte	.LVL131
	.4byte	0x115f
	.4byte	0x7dd
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR2
	.byte	0
	.byte	0x19
	.4byte	.LVL133
	.4byte	0x116b
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR2
	.byte	0x18
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0
	.byte	0x14
	.4byte	.LASF195
	.byte	0x1
	.2byte	0x16f
	.byte	0x5
	.4byte	0xa0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x1
	.byte	0x9c
	.4byte	0x886
	.byte	0x15
	.4byte	.LASF191
	.byte	0x1
	.2byte	0x16f
	.byte	0x27
	.4byte	0x6b4
	.4byte	.LLST25
	.byte	0x1a
	.string	"len"
	.byte	0x1
	.2byte	0x16f
	.byte	0x35
	.4byte	0x104
	.4byte	.LLST26
	.byte	0x1b
	.4byte	.LASF196
	.byte	0x1
	.2byte	0x171
	.byte	0xd
	.4byte	0x886
	.byte	0x2
	.byte	0x91
	.byte	0x40
	.byte	0x16
	.4byte	.LASF197
	.byte	0x1
	.2byte	0x172
	.byte	0xe
	.4byte	0x104
	.4byte	.LLST27
	.byte	0x1c
	.string	"i"
	.byte	0x1
	.2byte	0x173
	.byte	0xe
	.4byte	0x104
	.4byte	.LLST28
	.byte	0x1c
	.string	"cnt"
	.byte	0x1
	.2byte	0x173
	.byte	0x12
	.4byte	0x104
	.4byte	.LLST29
	.byte	0x19
	.4byte	.LVL124
	.4byte	0x1177
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0
	.byte	0
	.byte	0xf
	.4byte	0xdb
	.4byte	0x896
	.byte	0x10
	.4byte	0x25
	.byte	0x1f
	.byte	0
	.byte	0x1d
	.4byte	.LASF199
	.byte	0x1
	.2byte	0x16a
	.byte	0x6
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x1
	.byte	0x9c
	.4byte	0x8bd
	.byte	0x1e
	.4byte	.LASF198
	.byte	0x1
	.2byte	0x16a
	.byte	0x26
	.4byte	0xdb
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0x1d
	.4byte	.LASF200
	.byte	0x1
	.2byte	0x159
	.byte	0x6
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x1
	.byte	0x9c
	.4byte	0x8f9
	.byte	0x1f
	.4byte	.LVL113
	.4byte	0x9b8
	.byte	0x1f
	.4byte	.LVL114
	.4byte	0x1184
	.byte	0x1f
	.4byte	.LVL115
	.4byte	0xd5f
	.byte	0x20
	.4byte	.LVL116
	.4byte	0x9b8
	.byte	0
	.byte	0x1d
	.4byte	.LASF201
	.byte	0x1
	.2byte	0x147
	.byte	0x6
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x1
	.byte	0x9c
	.4byte	0x95b
	.byte	0x15
	.4byte	.LASF202
	.byte	0x1
	.2byte	0x147
	.byte	0x22
	.4byte	0x104
	.4byte	.LLST24
	.byte	0x1f
	.4byte	.LVL106
	.4byte	0x9df
	.byte	0x1f
	.4byte	.LVL107
	.4byte	0x1191
	.byte	0x17
	.4byte	.LVL108
	.4byte	0xdfe
	.4byte	0x947
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x21
	.4byte	.LVL110
	.4byte	0xcb3
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.byte	0
	.byte	0x1d
	.4byte	.LASF203
	.byte	0x1
	.2byte	0x137
	.byte	0x6
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x1
	.byte	0x9c
	.4byte	0x9b8
	.byte	0x15
	.4byte	.LASF204
	.byte	0x1
	.2byte	0x137
	.byte	0x26
	.4byte	0x104
	.4byte	.LLST21
	.byte	0x1c
	.string	"cnt"
	.byte	0x1
	.2byte	0x139
	.byte	0xe
	.4byte	0x115
	.4byte	.LLST22
	.byte	0x16
	.4byte	.LASF205
	.byte	0x1
	.2byte	0x13a
	.byte	0xe
	.4byte	0x104
	.4byte	.LLST23
	.byte	0x1f
	.4byte	.LVL99
	.4byte	0xb22
	.byte	0x1f
	.4byte	.LVL101
	.4byte	0xa95
	.byte	0
	.byte	0x1d
	.4byte	.LASF206
	.byte	0x1
	.2byte	0x131
	.byte	0x6
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x1
	.byte	0x9c
	.4byte	0x9df
	.byte	0x21
	.4byte	.LVL95
	.4byte	0x119e
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x37
	.byte	0
	.byte	0
	.byte	0x1d
	.4byte	.LASF207
	.byte	0x1
	.2byte	0x127
	.byte	0x6
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x1
	.byte	0x9c
	.4byte	0xa30
	.byte	0x17
	.4byte	.LVL92
	.4byte	0x119e
	.4byte	0xa09
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x37
	.byte	0
	.byte	0x17
	.4byte	.LVL93
	.4byte	0x11aa
	.4byte	0xa26
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0x18
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x18
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x37
	.byte	0
	.byte	0x20
	.4byte	.LVL94
	.4byte	0xb22
	.byte	0
	.byte	0x1d
	.4byte	.LASF208
	.byte	0x1
	.2byte	0x11a
	.byte	0x6
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x1
	.byte	0x9c
	.4byte	0xa82
	.byte	0x15
	.4byte	.LASF204
	.byte	0x1
	.2byte	0x11a
	.byte	0x2c
	.4byte	0x115
	.4byte	.LLST19
	.byte	0x1c
	.string	"tmp"
	.byte	0x1
	.2byte	0x11c
	.byte	0xe
	.4byte	0x104
	.4byte	.LLST20
	.byte	0x1f
	.4byte	.LVL84
	.4byte	0x11b7
	.byte	0x21
	.4byte	.LVL91
	.4byte	0x11c4
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x37
	.byte	0
	.byte	0
	.byte	0x22
	.4byte	.LASF260
	.byte	0x1
	.2byte	0x115
	.byte	0x6
	.byte	0x1
	.byte	0x23
	.4byte	.LASF261
	.byte	0x1
	.2byte	0x110
	.byte	0x6
	.byte	0x24
	.4byte	.LASF209
	.byte	0x1
	.byte	0xf5
	.byte	0xa
	.4byte	0x115
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x1
	.byte	0x9c
	.4byte	0xb22
	.byte	0x25
	.4byte	.LASF210
	.byte	0x1
	.byte	0xf8
	.byte	0xe
	.4byte	0x104
	.4byte	.LLST13
	.byte	0x25
	.4byte	.LASF211
	.byte	0x1
	.byte	0xf8
	.byte	0x18
	.4byte	0x104
	.4byte	.LLST14
	.byte	0x25
	.4byte	.LASF212
	.byte	0x1
	.byte	0xf8
	.byte	0x23
	.4byte	0x104
	.4byte	.LLST15
	.byte	0x25
	.4byte	.LASF213
	.byte	0x1
	.byte	0xf8
	.byte	0x2e
	.4byte	0x104
	.4byte	.LLST16
	.byte	0x26
	.string	"cnt"
	.byte	0x1
	.byte	0xf9
	.byte	0xe
	.4byte	0x104
	.4byte	.LLST17
	.byte	0x26
	.string	"tmp"
	.byte	0x1
	.byte	0xf9
	.byte	0x14
	.4byte	0x104
	.4byte	.LLST18
	.byte	0x1f
	.4byte	.LVL74
	.4byte	0x11b7
	.byte	0x1f
	.4byte	.LVL77
	.4byte	0x11d0
	.byte	0
	.byte	0x27
	.4byte	.LASF262
	.byte	0x1
	.byte	0xf0
	.byte	0x6
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x1
	.byte	0x9c
	.byte	0x28
	.4byte	.LASF214
	.byte	0x1
	.byte	0xeb
	.byte	0x6
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x1
	.byte	0x9c
	.4byte	0xb73
	.byte	0x29
	.string	"c"
	.byte	0x1
	.byte	0xeb
	.byte	0x20
	.4byte	0xd4
	.4byte	.LLST12
	.byte	0x19
	.4byte	.LVL65
	.4byte	0x11d9
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0x18
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x6f
	.byte	0x18
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0x28
	.4byte	.LASF215
	.byte	0x1
	.byte	0xe0
	.byte	0x6
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x1
	.byte	0x9c
	.4byte	0xbcc
	.byte	0x29
	.string	"val"
	.byte	0x1
	.byte	0xe0
	.byte	0x24
	.4byte	0x104
	.4byte	.LLST10
	.byte	0x13
	.4byte	.LASF216
	.byte	0x1
	.byte	0xe2
	.byte	0xd
	.4byte	0x5fc
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x26
	.string	"i"
	.byte	0x1
	.byte	0xe3
	.byte	0xd
	.4byte	0xf8
	.4byte	.LLST11
	.byte	0x19
	.4byte	.LVL62
	.4byte	0xdaa
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x18
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x38
	.byte	0
	.byte	0
	.byte	0x28
	.4byte	.LASF217
	.byte	0x1
	.byte	0xdb
	.byte	0x6
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x1
	.byte	0x9c
	.4byte	0xc18
	.byte	0x2a
	.4byte	.LASF191
	.byte	0x1
	.byte	0xdb
	.byte	0x21
	.4byte	0xce
	.4byte	.LLST9
	.byte	0x17
	.4byte	.LVL53
	.4byte	0x11e6
	.4byte	0xc06
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x21
	.4byte	.LVL55
	.4byte	0xdaa
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0
	.byte	0x28
	.4byte	.LASF218
	.byte	0x1
	.byte	0xcd
	.byte	0x6
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x1
	.byte	0x9c
	.4byte	0xcac
	.byte	0x2a
	.4byte	.LASF191
	.byte	0x1
	.byte	0xcd
	.byte	0x25
	.4byte	0xcac
	.4byte	.LLST5
	.byte	0x29
	.string	"len"
	.byte	0x1
	.byte	0xcd
	.byte	0x33
	.4byte	0x104
	.4byte	.LLST6
	.byte	0x26
	.string	"i"
	.byte	0x1
	.byte	0xcf
	.byte	0xe
	.4byte	0x104
	.4byte	.LLST7
	.byte	0x26
	.string	"p"
	.byte	0x1
	.byte	0xd0
	.byte	0xe
	.4byte	0x6b4
	.4byte	.LLST8
	.byte	0x2b
	.4byte	.LVL48
	.4byte	0xcb3
	.4byte	0xc81
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0x17
	.4byte	.LVL49
	.4byte	0xcb3
	.4byte	0xc98
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0x19
	.4byte	.LVL51
	.4byte	0xcb3
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0xcb2
	.byte	0x2c
	.byte	0x28
	.4byte	.LASF219
	.byte	0x1
	.byte	0xc1
	.byte	0x6
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x1
	.byte	0x9c
	.4byte	0xd4f
	.byte	0x29
	.string	"fmt"
	.byte	0x1
	.byte	0xc1
	.byte	0x21
	.4byte	0xce
	.4byte	.LLST3
	.byte	0x2d
	.byte	0x13
	.4byte	.LASF216
	.byte	0x1
	.byte	0xc3
	.byte	0x11
	.4byte	0xd4f
	.byte	0x5
	.byte	0x3
	.4byte	print_buf.0
	.byte	0x2e
	.string	"ap"
	.byte	0x1
	.byte	0xc4
	.byte	0xd
	.4byte	0xb9
	.byte	0x2
	.byte	0x91
	.byte	0x4c
	.byte	0x17
	.4byte	.LVL30
	.4byte	0x11f2
	.4byte	0xd24
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR4
	.byte	0x18
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x8
	.byte	0x7f
	.byte	0x18
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x18
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0
	.byte	0x17
	.4byte	.LVL31
	.4byte	0x11e6
	.4byte	0xd3b
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR4
	.byte	0
	.byte	0x19
	.4byte	.LVL32
	.4byte	0xdaa
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR4
	.byte	0
	.byte	0
	.byte	0xf
	.4byte	0xd4
	.4byte	0xd5f
	.byte	0x10
	.4byte	0x25
	.byte	0x7f
	.byte	0
	.byte	0x2f
	.4byte	.LASF263
	.byte	0x1
	.byte	0xba
	.byte	0x6
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x1
	.byte	0x9c
	.4byte	0xdaa
	.byte	0x17
	.4byte	.LVL25
	.4byte	0x11ff
	.4byte	0xd8d
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0x18
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0x17
	.4byte	.LVL26
	.4byte	0x120c
	.4byte	0xda0
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x40
	.byte	0
	.byte	0x20
	.4byte	.LVL27
	.4byte	0x1219
	.byte	0
	.byte	0x28
	.4byte	.LASF220
	.byte	0x1
	.byte	0xaf
	.byte	0x6
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x1
	.byte	0x9c
	.4byte	0xdfe
	.byte	0x2a
	.4byte	.LASF191
	.byte	0x1
	.byte	0xaf
	.byte	0x2c
	.4byte	0x6b4
	.4byte	.LLST1
	.byte	0x29
	.string	"len"
	.byte	0x1
	.byte	0xaf
	.byte	0x3a
	.4byte	0x104
	.4byte	.LLST2
	.byte	0x21
	.4byte	.LVL24
	.4byte	0x11d9
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0x18
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x18
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0
	.byte	0
	.byte	0x28
	.4byte	.LASF221
	.byte	0x1
	.byte	0x5a
	.byte	0x6
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x1
	.byte	0x9c
	.4byte	0x1027
	.byte	0x2a
	.4byte	.LASF222
	.byte	0x1
	.byte	0x5a
	.byte	0x2b
	.4byte	0x104
	.4byte	.LLST0
	.byte	0x13
	.4byte	.LASF223
	.byte	0x1
	.byte	0x5c
	.byte	0x13
	.4byte	0x596
	.byte	0x2
	.byte	0x91
	.byte	0x4c
	.byte	0x13
	.4byte	.LASF224
	.byte	0x1
	.byte	0x67
	.byte	0x17
	.4byte	0x5e0
	.byte	0x2
	.byte	0x91
	.byte	0x40
	.byte	0x17
	.4byte	.LVL2
	.4byte	0x1225
	.4byte	0xe62
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x4c
	.byte	0x18
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x18
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x24
	.byte	0
	.byte	0x17
	.4byte	.LVL3
	.4byte	0x1225
	.4byte	0xe81
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0x18
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0x24
	.byte	0x18
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x3c
	.byte	0
	.byte	0x1f
	.4byte	.LVL4
	.4byte	0x1230
	.byte	0x17
	.4byte	.LVL5
	.4byte	0x123c
	.4byte	0xeba
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR2
	.byte	0x18
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR1
	.byte	0x18
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x40
	.byte	0x18
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0x18
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x17
	.4byte	.LVL6
	.4byte	0x1248
	.4byte	0xed7
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0x18
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0x18
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x17
	.4byte	.LVL7
	.4byte	0x120c
	.4byte	0xeea
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x40
	.byte	0
	.byte	0x17
	.4byte	.LVL8
	.4byte	0x1255
	.4byte	0xf07
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0x18
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x38
	.byte	0x18
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x17
	.4byte	.LVL9
	.4byte	0x11ff
	.4byte	0xf1f
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0x18
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0x17
	.4byte	.LVL10
	.4byte	0x1262
	.4byte	0xf38
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0x18
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x4c
	.byte	0
	.byte	0x17
	.4byte	.LVL11
	.4byte	0x126f
	.4byte	0xf51
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0x18
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0
	.byte	0x17
	.4byte	.LVL12
	.4byte	0x127c
	.4byte	0xf69
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0x18
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x17
	.4byte	.LVL13
	.4byte	0x1289
	.4byte	0xf82
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0x18
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x8
	.byte	0x50
	.byte	0
	.byte	0x17
	.4byte	.LVL14
	.4byte	0x1255
	.4byte	0xf9f
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0x18
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x33
	.byte	0x18
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x17
	.4byte	.LVL15
	.4byte	0x1255
	.4byte	0xfbc
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0x18
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x34
	.byte	0x18
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x17
	.4byte	.LVL16
	.4byte	0x1296
	.4byte	0xfdd
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0x18
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x33
	.byte	0x18
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	UART_RFR_Cbf
	.byte	0
	.byte	0x17
	.4byte	.LVL17
	.4byte	0x1296
	.4byte	0xffe
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0x18
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x34
	.byte	0x18
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	UART_RTO_Cbf
	.byte	0
	.byte	0x17
	.4byte	.LVL18
	.4byte	0x11c4
	.4byte	0x1012
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x2d
	.byte	0
	.byte	0x19
	.4byte	.LVL19
	.4byte	0x12a3
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0x18
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.byte	0x30
	.4byte	.LASF225
	.byte	0x1
	.byte	0x48
	.byte	0xd
	.byte	0x1
	.4byte	0x104d
	.byte	0x31
	.4byte	.LASF196
	.byte	0x1
	.byte	0x4a
	.byte	0xd
	.4byte	0x5ec
	.byte	0x32
	.string	"len"
	.byte	0x1
	.byte	0x4b
	.byte	0xe
	.4byte	0x104
	.byte	0
	.byte	0x30
	.4byte	.LASF226
	.byte	0x1
	.byte	0x2d
	.byte	0xd
	.byte	0x1
	.4byte	0x1073
	.byte	0x31
	.4byte	.LASF196
	.byte	0x1
	.byte	0x2f
	.byte	0xd
	.4byte	0x5ec
	.byte	0x32
	.string	"len"
	.byte	0x1
	.byte	0x30
	.byte	0xe
	.4byte	0x104
	.byte	0
	.byte	0x33
	.4byte	0x104d
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0x1150
	.byte	0x34
	.4byte	0x105a
	.byte	0x35
	.4byte	0x1066
	.4byte	.LLST4
	.byte	0x36
	.4byte	0x1027
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.byte	0x1
	.byte	0x48
	.byte	0xd
	.4byte	0x10fa
	.byte	0x37
	.4byte	0x1034
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0x34
	.4byte	0x1040
	.byte	0x17
	.4byte	.LVL39
	.4byte	0xcb3
	.4byte	0x10cc
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0x17
	.4byte	.LVL40
	.4byte	0x12b0
	.4byte	0x10ea
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0x18
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0x18
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x40
	.byte	0
	.byte	0x19
	.4byte	.LVL41
	.4byte	0x12bd
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x17
	.4byte	.LVL33
	.4byte	0x12bd
	.4byte	0x110d
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x17
	.4byte	.LVL35
	.4byte	0x12ca
	.4byte	0x1129
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR2
	.byte	0x18
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x17
	.4byte	.LVL36
	.4byte	0x12bd
	.4byte	0x113c
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x19
	.4byte	.LVL38
	.4byte	0x12d6
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR2
	.byte	0
	.byte	0
	.byte	0x38
	.4byte	0xa82
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x1
	.byte	0x9c
	.byte	0x39
	.4byte	.LASF227
	.4byte	.LASF227
	.byte	0xb
	.byte	0x76
	.byte	0xa
	.byte	0x39
	.4byte	.LASF228
	.4byte	.LASF228
	.byte	0xb
	.byte	0x72
	.byte	0xa
	.byte	0x3a
	.4byte	.LASF229
	.4byte	.LASF229
	.byte	0xc
	.2byte	0x1d1
	.byte	0xd
	.byte	0x3a
	.4byte	.LASF230
	.4byte	.LASF230
	.byte	0xc
	.2byte	0x1d4
	.byte	0x6
	.byte	0x3a
	.4byte	.LASF231
	.4byte	.LASF231
	.byte	0xc
	.2byte	0x1ce
	.byte	0xd
	.byte	0x39
	.4byte	.LASF232
	.4byte	.LASF232
	.byte	0xd
	.byte	0x73
	.byte	0xd
	.byte	0x3a
	.4byte	.LASF233
	.4byte	.LASF233
	.byte	0xa
	.2byte	0x260
	.byte	0xd
	.byte	0x3a
	.4byte	.LASF234
	.4byte	.LASF234
	.byte	0xa
	.2byte	0x22c
	.byte	0x9
	.byte	0x39
	.4byte	.LASF235
	.4byte	.LASF235
	.byte	0xd
	.byte	0x72
	.byte	0xd
	.byte	0x3b
	.4byte	.LASF264
	.4byte	.LASF264
	.byte	0x3a
	.4byte	.LASF236
	.4byte	.LASF236
	.byte	0x8
	.2byte	0x129
	.byte	0xd
	.byte	0x39
	.4byte	.LASF237
	.4byte	.LASF237
	.byte	0xe
	.byte	0x29
	.byte	0x8
	.byte	0x3a
	.4byte	.LASF238
	.4byte	.LASF238
	.byte	0x4
	.2byte	0x10c
	.byte	0x5
	.byte	0x3a
	.4byte	.LASF239
	.4byte	.LASF239
	.byte	0x8
	.2byte	0x11a
	.byte	0xd
	.byte	0x3a
	.4byte	.LASF240
	.4byte	.LASF240
	.byte	0xa
	.2byte	0x240
	.byte	0xd
	.byte	0x39
	.4byte	.LASF241
	.4byte	.LASF241
	.byte	0xf
	.byte	0x21
	.byte	0x6
	.byte	0x3c
	.4byte	.LASF265
	.4byte	.LASF266
	.byte	0x10
	.byte	0
	.byte	0x39
	.4byte	.LASF242
	.4byte	.LASF242
	.byte	0xf
	.byte	0x20
	.byte	0x6
	.byte	0x39
	.4byte	.LASF243
	.4byte	.LASF243
	.byte	0xb
	.byte	0x67
	.byte	0xd
	.byte	0x3a
	.4byte	.LASF244
	.4byte	.LASF244
	.byte	0xa
	.2byte	0x238
	.byte	0xd
	.byte	0x3a
	.4byte	.LASF245
	.4byte	.LASF245
	.byte	0x8
	.2byte	0x126
	.byte	0xd
	.byte	0x3a
	.4byte	.LASF246
	.4byte	.LASF246
	.byte	0x8
	.2byte	0x115
	.byte	0xd
	.byte	0x3a
	.4byte	.LASF247
	.4byte	.LASF247
	.byte	0x8
	.2byte	0x117
	.byte	0xd
	.byte	0x3a
	.4byte	.LASF248
	.4byte	.LASF248
	.byte	0x8
	.2byte	0x122
	.byte	0xd
	.byte	0x3a
	.4byte	.LASF249
	.4byte	.LASF249
	.byte	0x8
	.2byte	0x11d
	.byte	0xd
	.byte	0x3a
	.4byte	.LASF250
	.4byte	.LASF250
	.byte	0x8
	.2byte	0x128
	.byte	0xd
	.byte	0x3a
	.4byte	.LASF251
	.4byte	.LASF251
	.byte	0x8
	.2byte	0x119
	.byte	0xd
	.byte	0x3a
	.4byte	.LASF252
	.4byte	.LASF252
	.byte	0x8
	.2byte	0x12b
	.byte	0xa
	.byte	0x3a
	.4byte	.LASF253
	.4byte	.LASF253
	.byte	0x8
	.2byte	0x12e
	.byte	0x9
	.byte	0x39
	.4byte	.LASF254
	.4byte	.LASF254
	.byte	0xb
	.byte	0x6a
	.byte	0xa
	.byte	0x39
	.4byte	.LASF255
	.4byte	.LASF255
	.byte	0xb
	.byte	0x77
	.byte	0xa
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
	.byte	0x15
	.byte	0
	.byte	0x27
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x9
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x35
	.byte	0
	.byte	0x49
	.byte	0x13
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
	.byte	0xe
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
	.byte	0xf
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x10
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x11
	.byte	0x15
	.byte	0x1
	.byte	0x27
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x12
	.byte	0x5
	.byte	0
	.byte	0x49
	.byte	0x13
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
	.byte	0x15
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
	.byte	0x16
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
	.byte	0x17
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
	.byte	0x1b
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
	.byte	0x1c
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
	.byte	0x1e
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
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x95,0x42
	.byte	0x19
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x21
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
	.byte	0x22
	.byte	0x2e
	.byte	0
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
	.byte	0x20
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x23
	.byte	0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.byte	0x24
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
	.byte	0x25
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
	.byte	0x26
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
	.byte	0x27
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
	.byte	0x28
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
	.byte	0x29
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
	.byte	0x2a
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
	.byte	0x2b
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x95,0x42
	.byte	0x19
	.byte	0x31
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x2c
	.byte	0x26
	.byte	0
	.byte	0
	.byte	0
	.byte	0x2d
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.byte	0x2e
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
	.byte	0x2f
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
	.byte	0x31
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
	.byte	0x32
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
	.byte	0x33
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
	.byte	0x34
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x35
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x36
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
	.byte	0x37
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x38
	.byte	0x2e
	.byte	0
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
	.byte	0x39
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
	.byte	0x3a
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
	.byte	0x3b
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
	.byte	0
	.byte	0
	.byte	0x3c
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST30:
	.4byte	.LVL129
	.4byte	.LVL130
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL130
	.4byte	.LVL135
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL135
	.4byte	.LFE30
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL129
	.4byte	.LVL131-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL131-1
	.4byte	.LVL134
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL134
	.4byte	.LFE30
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL131
	.4byte	.LVL132
	.2byte	0x16
	.byte	0x7a
	.byte	0
	.byte	0x12
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x79
	.byte	0
	.byte	0x16
	.byte	0x14
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL118
	.4byte	.LVL119
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL119
	.4byte	.LVL122
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL122
	.4byte	.LVL123
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL123
	.4byte	.LFE29
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL118
	.4byte	.LVL119
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL119
	.4byte	.LVL121
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL121
	.4byte	.LVL123
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL123
	.4byte	.LFE29
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL118
	.4byte	.LVL119
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL119
	.4byte	.LVL120
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL123
	.4byte	.LFE29
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL118
	.4byte	.LVL119
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL125
	.4byte	.LVL128
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL118
	.4byte	.LVL119
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL105
	.4byte	.LVL106-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL106-1
	.4byte	.LVL109
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL109
	.4byte	.LVL110
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL110
	.4byte	.LVL111
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL111
	.4byte	.LVL112
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL112
	.4byte	.LFE26
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL96
	.4byte	.LVL99-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL99-1
	.4byte	.LVL104
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL104
	.4byte	.LFE25
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL96
	.4byte	.LVL100
	.2byte	0xa
	.byte	0x9e
	.byte	0x8
	.8byte	0
	.4byte	.LVL100
	.4byte	.LVL102
	.2byte	0x6
	.byte	0x62
	.byte	0x93
	.byte	0x4
	.byte	0x63
	.byte	0x93
	.byte	0x4
	.4byte	.LVL102
	.4byte	.LVL103
	.2byte	0x6
	.byte	0x5f
	.byte	0x93
	.byte	0x4
	.byte	0x63
	.byte	0x93
	.byte	0x4
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL97
	.4byte	.LVL98
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL83
	.4byte	.LVL84-1
	.2byte	0x6
	.byte	0x5a
	.byte	0x93
	.byte	0x4
	.byte	0x5b
	.byte	0x93
	.byte	0x4
	.4byte	.LVL84-1
	.4byte	.LVL86
	.2byte	0x6
	.byte	0xf3
	.byte	0x3
	.byte	0xf5
	.byte	0xa
	.byte	0x2c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL84
	.4byte	.LVL85
	.2byte	0x11
	.byte	0x78
	.byte	0
	.byte	0xf7
	.byte	0x25
	.byte	0x7a
	.byte	0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x23
	.byte	0x1
	.byte	0xf7
	.byte	0x25
	.byte	0x1b
	.byte	0xf7
	.byte	0
	.byte	0x9f
	.4byte	.LVL86
	.4byte	.LVL87
	.2byte	0xd
	.byte	0x78
	.byte	0
	.byte	0xf7
	.byte	0x25
	.byte	0xa
	.2byte	0x3e8
	.byte	0xf7
	.byte	0x25
	.byte	0x1b
	.byte	0xf7
	.byte	0
	.byte	0x9f
	.4byte	.LVL87
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL89
	.4byte	.LVL90
	.2byte	0xd
	.byte	0x78
	.byte	0
	.byte	0xf7
	.byte	0x25
	.byte	0xa
	.2byte	0x3e8
	.byte	0xf7
	.byte	0x25
	.byte	0x1b
	.byte	0xf7
	.byte	0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL68
	.4byte	.LVL74-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL78
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL69
	.4byte	.LVL74-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL78
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL70
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL71
	.4byte	.LVL74-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL74-1
	.4byte	.LVL78
	.2byte	0x2
	.byte	0x91
	.byte	0x6c
	.4byte	.LVL78
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL79
	.4byte	.LVL82
	.2byte	0x2
	.byte	0x91
	.byte	0x6c
	.4byte	.LVL82
	.4byte	.LFE19
	.2byte	0x2
	.byte	0x72
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL66
	.4byte	.LVL67
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL67
	.4byte	.LVL71
	.2byte	0x5
	.byte	0x35
	.byte	0x7e
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL71
	.4byte	.LVL72
	.2byte	0x5
	.byte	0x36
	.byte	0x7e
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL72
	.4byte	.LVL73
	.2byte	0x5
	.byte	0x35
	.byte	0x7e
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL78
	.4byte	.LVL79
	.2byte	0x5
	.byte	0x36
	.byte	0x7e
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL74
	.4byte	.LVL75
	.2byte	0x11
	.byte	0x79
	.byte	0
	.byte	0xf7
	.byte	0x25
	.byte	0x7a
	.byte	0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x23
	.byte	0x1
	.byte	0xf7
	.byte	0x25
	.byte	0x1b
	.byte	0xf7
	.byte	0
	.byte	0x9f
	.4byte	.LVL76
	.4byte	.LVL77-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL79
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL63
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL64
	.4byte	.LVL65-1
	.2byte	0x2
	.byte	0x7b
	.byte	0
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL56
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL60
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL56
	.4byte	.LVL57
	.2byte	0x2
	.byte	0x37
	.byte	0x9f
	.4byte	.LVL57
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL58
	.4byte	.LVL60
	.2byte	0x3
	.byte	0x7f
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL60
	.4byte	.LVL62-1
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL52
	.4byte	.LVL53-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL53-1
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL54
	.4byte	.LVL55-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL55-1
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL42
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL44
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL48
	.4byte	.LFE14
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL42
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL44
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL46
	.4byte	.LVL48
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL48
	.4byte	.LFE14
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL42
	.4byte	.LVL44
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL48
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL50
	.4byte	.LVL51
	.2byte	0x3
	.byte	0x78
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL51
	.4byte	.LFE14
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL44
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL48
	.4byte	.LFE14
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL29
	.4byte	.LVL30-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL30-1
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL21
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL23
	.4byte	.LVL24-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL24-1
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL22
	.4byte	.LVL24-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL24-1
	.4byte	.LFE11
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
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL20
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x6
	.byte	0x7a
	.byte	0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x6
	.byte	0x7a
	.byte	0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0xbc
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF117:
	.string	"ERROR"
.LASF232:
	.string	"clic_disable_interrupt"
.LASF28:
	.string	"L1C_BMX_ERR_IRQn"
.LASF24:
	.string	"MEXT_IRQn"
.LASF94:
	.string	"BL_AHB_SLAVE1_SEC_DBG"
.LASF33:
	.string	"SDIO_IRQn"
.LASF76:
	.string	"PDS_WAKEUP_IRQn"
.LASF134:
	.string	"UART_DATABITS_5"
.LASF135:
	.string	"UART_DATABITS_6"
.LASF81:
	.string	"BZ_PHY_IRQn"
.LASF202:
	.string	"baudrate"
.LASF227:
	.string	"Ring_Buffer_Get_Length"
.LASF147:
	.string	"UART_INT_TX_END"
.LASF37:
	.string	"SEC_PKA_IRQn"
.LASF0:
	.string	"unsigned int"
.LASF145:
	.string	"UART_MSB_FIRST"
.LASF194:
	.string	"bflb_platform_get_input"
.LASF88:
	.string	"MAC_PORT_TRG_IRQn"
.LASF193:
	.string	"retLen"
.LASF185:
	.string	"uart_dbg_disable"
.LASF250:
	.string	"UART_Int_Callback_Install"
.LASF8:
	.string	"__int32_t"
.LASF149:
	.string	"UART_INT_TX_FIFO_REQ"
.LASF79:
	.string	"BOR_IRQn"
.LASF27:
	.string	"BMX_TO_IRQn"
.LASF234:
	.string	"GLB_Get_BCLK_Div"
.LASF195:
	.string	"bflb_platform_get_random"
.LASF4:
	.string	"short int"
.LASF40:
	.string	"SEC_SHA_IRQn"
.LASF261:
	.string	"bflb_platform_start_time"
.LASF64:
	.string	"TIMER_WDT_IRQn"
.LASF214:
	.string	"bflb_platform_printc"
.LASF101:
	.string	"BL_AHB_SLAVE1_RSVD0A"
.LASF219:
	.string	"bflb_platform_printf"
.LASF178:
	.string	"writeMirror"
.LASF266:
	.string	"__builtin_memcpy"
.LASF217:
	.string	"bflb_platform_prints"
.LASF256:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
.LASF215:
	.string	"bflb_platform_printx"
.LASF186:
	.string	"hexTable"
.LASF155:
	.string	"UART_INT_ALL"
.LASF107:
	.string	"BL_AHB_SLAVE1_UART0"
.LASF108:
	.string	"BL_AHB_SLAVE1_UART1"
.LASF243:
	.string	"Ring_Buffer_Init"
.LASF2:
	.string	"signed char"
.LASF20:
	.string	"uint32_t"
.LASF166:
	.string	"txFifoDmaThreshold"
.LASF239:
	.string	"UART_Disable"
.LASF254:
	.string	"Ring_Buffer_Write_Callback"
.LASF70:
	.string	"GPIO_INT0_IRQn"
.LASF124:
	.string	"UART0_ID"
.LASF187:
	.string	"systick_int_cnt"
.LASF128:
	.string	"UART_RX"
.LASF253:
	.string	"UART_GetRxFifoCount"
.LASF246:
	.string	"UART_Init"
.LASF1:
	.string	"long long unsigned int"
.LASF189:
	.string	"uartBuf"
.LASF32:
	.string	"RF_TOP_INT1_IRQn"
.LASF228:
	.string	"Ring_Buffer_Read"
.LASF115:
	.string	"BL_AHB_SLAVE1_MAX"
.LASF6:
	.string	"__uint16_t"
.LASF49:
	.string	"SF_CTRL_IRQn"
.LASF141:
	.string	"UART_STOPBITS_1_5"
.LASF62:
	.string	"TIMER_CH0_IRQn"
.LASF245:
	.string	"UART_IntMask"
.LASF204:
	.string	"time"
.LASF123:
	.string	"MASK"
.LASF223:
	.string	"uart_dbg_cfg"
.LASF244:
	.string	"GLB_Set_UART_CLK"
.LASF14:
	.string	"__gnuc_va_list"
.LASF226:
	.string	"UART_RFR_Cbf"
.LASF129:
	.string	"UART_TXRX"
.LASF183:
	.string	"Ring_Buffer_Type"
.LASF257:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/Common/platform_print/platform_device.c"
.LASF196:
	.string	"tmpBuf"
.LASF56:
	.string	"UART1_IRQn"
.LASF165:
	.string	"UART_CFG_Type"
.LASF127:
	.string	"UART_TX"
.LASF156:
	.string	"uartClk"
.LASF174:
	.string	"GLB_MTIMER_CLK_32K"
.LASF150:
	.string	"UART_INT_RX_FIFO_REQ"
.LASF78:
	.string	"HBN_OUT1_IRQn"
.LASF205:
	.string	"clock"
.LASF89:
	.string	"WIFI_IPC_PUBLIC_IRQn"
.LASF41:
	.string	"DMA_ALL_IRQn"
.LASF53:
	.string	"SPI_IRQn"
.LASF229:
	.string	"Sec_Eng_Trng_Read"
.LASF119:
	.string	"DISABLE"
.LASF116:
	.string	"SUCCESS"
.LASF16:
	.string	"char"
.LASF143:
	.string	"UART_StopBits_Type"
.LASF99:
	.string	"BL_AHB_SLAVE1_CCI"
.LASF133:
	.string	"UART_Parity_Type"
.LASF241:
	.string	"bflb_platform_deinit_uart_debug_gpio"
.LASF58:
	.string	"I2C_IRQn"
.LASF258:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/bl602_std"
.LASF255:
	.string	"Ring_Buffer_Get_Empty_Length"
.LASF120:
	.string	"ENABLE"
.LASF13:
	.string	"__uint64_t"
.LASF151:
	.string	"UART_INT_RTO"
.LASF17:
	.string	"uint8_t"
.LASF86:
	.string	"MAC_TX_TRG_IRQn"
.LASF103:
	.string	"BL_AHB_SLAVE1_DMA"
.LASF130:
	.string	"UART_PARITY_NONE"
.LASF122:
	.string	"UNMASK"
.LASF132:
	.string	"UART_PARITY_EVEN"
.LASF177:
	.string	"readIndex"
.LASF15:
	.string	"va_list"
.LASF212:
	.string	"tmpValLow1"
.LASF12:
	.string	"long long int"
.LASF105:
	.string	"BL_AHB_SLAVE1_PDS_HBN_AON_HBNRAM"
.LASF118:
	.string	"TIMEOUT"
.LASF181:
	.string	"lock"
.LASF210:
	.string	"tmpValLow"
.LASF113:
	.string	"BL_AHB_SLAVE1_IRR"
.LASF82:
	.string	"BLE_IRQn"
.LASF152:
	.string	"UART_INT_PCE"
.LASF159:
	.string	"stopBits"
.LASF233:
	.string	"GLB_Set_MTimer_CLK"
.LASF140:
	.string	"UART_STOPBITS_1"
.LASF142:
	.string	"UART_STOPBITS_2"
.LASF77:
	.string	"HBN_OUT0_IRQn"
.LASF90:
	.string	"IRQn_LAST"
.LASF180:
	.string	"size"
.LASF146:
	.string	"UART_ByteBitInverse_Type"
.LASF60:
	.string	"PWM_IRQn"
.LASF198:
	.string	"logDisable"
.LASF26:
	.string	"BMX_ERR_IRQn"
.LASF34:
	.string	"DMA_BMX_ERR_IRQn"
.LASF91:
	.string	"BL_AHB_SLAVE1_GLB"
.LASF263:
	.string	"bflb_platform_uart_dbg_deinit"
.LASF179:
	.string	"writeIndex"
.LASF199:
	.string	"bflb_platform_print_set"
.LASF157:
	.string	"baudRate"
.LASF201:
	.string	"bflb_platform_init"
.LASF87:
	.string	"MAC_GEN_IRQn"
.LASF237:
	.string	"strlen"
.LASF235:
	.string	"clic_enable_interrupt"
.LASF109:
	.string	"BL_AHB_SLAVE1_SPI"
.LASF230:
	.string	"Sec_Eng_Trng_Disable"
.LASF168:
	.string	"txFifoDmaEnable"
.LASF31:
	.string	"RF_TOP_INT0_IRQn"
.LASF213:
	.string	"tmpValHigh1"
.LASF18:
	.string	"uint16_t"
.LASF52:
	.string	"EFUSE_IRQn"
.LASF170:
	.string	"UART_FifoCfg_Type"
.LASF106:
	.string	"BL_AHB_SLAVE1_RSVD0F"
.LASF96:
	.string	"BL_AHB_SLAVE1_TZ1"
.LASF97:
	.string	"BL_AHB_SLAVE1_TZ2"
.LASF154:
	.string	"UART_INT_RX_FER"
.LASF30:
	.string	"SEC_BMX_ERR_IRQn"
.LASF160:
	.string	"parity"
.LASF84:
	.string	"MAC_TXRX_MISC_IRQn"
.LASF42:
	.string	"RESERVED0"
.LASF43:
	.string	"RESERVED1"
.LASF44:
	.string	"RESERVED2"
.LASF47:
	.string	"RESERVED3"
.LASF48:
	.string	"RESERVED4"
.LASF50:
	.string	"RESERVED5"
.LASF54:
	.string	"RESERVED6"
.LASF208:
	.string	"bflb_platform_set_alarm_time"
.LASF59:
	.string	"RESERVED8"
.LASF61:
	.string	"RESERVED9"
.LASF176:
	.string	"readMirror"
.LASF9:
	.string	"long int"
.LASF167:
	.string	"rxFifoDmaThreshold"
.LASF172:
	.string	"HBN_UART_CLK_160M"
.LASF55:
	.string	"UART0_IRQn"
.LASF264:
	.string	"__udivdi3"
.LASF221:
	.string	"bflb_platform_uart_dbg_init"
.LASF188:
	.string	"uartRB"
.LASF158:
	.string	"dataBits"
.LASF173:
	.string	"GLB_MTIMER_CLK_BCLK"
.LASF46:
	.string	"IRRX_IRQn"
.LASF35:
	.string	"SEC_GMAC_IRQn"
.LASF200:
	.string	"bflb_platform_deinit"
.LASF175:
	.string	"pointer"
.LASF247:
	.string	"UART_FifoConfig"
.LASF85:
	.string	"MAC_RX_TRG_IRQn"
.LASF216:
	.string	"print_buf"
.LASF260:
	.string	"bflb_platform_stop_time"
.LASF5:
	.string	"__uint8_t"
.LASF126:
	.string	"UART_ID_MAX"
.LASF80:
	.string	"WIFI_IRQn"
.LASF218:
	.string	"bflb_platform_dump"
.LASF240:
	.string	"GLB_AHB_Slave1_Reset"
.LASF225:
	.string	"UART_RTO_Cbf"
.LASF231:
	.string	"Sec_Eng_Trng_Enable"
.LASF220:
	.string	"bflb_platform_usart_dbg_send"
.LASF164:
	.string	"byteBitInverse"
.LASF36:
	.string	"SEC_CDET_IRQn"
.LASF191:
	.string	"data"
.LASF22:
	.string	"MSOFT_IRQn"
.LASF11:
	.string	"long unsigned int"
.LASF98:
	.string	"BL_AHB_SLAVE1_EFUSE"
.LASF23:
	.string	"MTIME_IRQn"
.LASF144:
	.string	"UART_LSB_FIRST"
.LASF207:
	.string	"bflb_platform_init_time"
.LASF100:
	.string	"BL_AHB_SLAVE1_L1C"
.LASF125:
	.string	"UART1_ID"
.LASF192:
	.string	"maxLen"
.LASF211:
	.string	"tmpValHigh"
.LASF171:
	.string	"HBN_UART_CLK_FCLK"
.LASF224:
	.string	"fifoCfg"
.LASF121:
	.string	"BL_Fun_Type"
.LASF153:
	.string	"UART_INT_TX_FER"
.LASF203:
	.string	"bflb_platform_delay_ms"
.LASF112:
	.string	"BL_AHB_SLAVE1_TMR"
.LASF51:
	.string	"GPADC_DMA_IRQn"
.LASF148:
	.string	"UART_INT_RX_END"
.LASF236:
	.string	"UART_SendData"
.LASF262:
	.string	"bflb_platform_clear_time"
.LASF3:
	.string	"unsigned char"
.LASF10:
	.string	"__uint32_t"
.LASF39:
	.string	"SEC_AES_IRQn"
.LASF104:
	.string	"BL_AHB_SLAVE1_SDU"
.LASF25:
	.string	"CLIC_SOFT_PEND_IRQn"
.LASF45:
	.string	"IRTX_IRQn"
.LASF93:
	.string	"BL_AHB_SLAVE1_GPIP_PHY_AGC"
.LASF65:
	.string	"RESERVED10"
.LASF66:
	.string	"RESERVED11"
.LASF67:
	.string	"RESERVED12"
.LASF68:
	.string	"RESERVED13"
.LASF69:
	.string	"RESERVED14"
.LASF71:
	.string	"RESERVED16"
.LASF72:
	.string	"RESERVED17"
.LASF73:
	.string	"RESERVED18"
.LASF74:
	.string	"RESERVED19"
.LASF184:
	.string	"ringBuffer_Write_Callback"
.LASF131:
	.string	"UART_PARITY_ODD"
.LASF206:
	.string	"bflb_platform_deinit_time"
.LASF110:
	.string	"BL_AHB_SLAVE1_I2C"
.LASF139:
	.string	"UART_STOPBITS_0_5"
.LASF21:
	.string	"uint64_t"
.LASF95:
	.string	"BL_AHB_SLAVE1_SEC"
.LASF111:
	.string	"BL_AHB_SLAVE1_PWM"
.LASF249:
	.string	"UART_SetRxTimeoutValue"
.LASF190:
	.string	"init_flag"
.LASF182:
	.string	"unlock"
.LASF222:
	.string	"bdrate"
.LASF248:
	.string	"UART_TxFreeRun"
.LASF38:
	.string	"SEC_TRNG_IRQn"
.LASF242:
	.string	"bflb_platform_init_uart_debug_gpio"
.LASF63:
	.string	"TIMER_CH1_IRQn"
.LASF7:
	.string	"short unsigned int"
.LASF75:
	.string	"RESERVED20"
.LASF265:
	.string	"memcpy"
.LASF259:
	.string	"__builtin_va_list"
.LASF29:
	.string	"L1C_BMX_TO_IRQn"
.LASF162:
	.string	"rxDeglitch"
.LASF197:
	.string	"readLen"
.LASF114:
	.string	"BL_AHB_SLAVE1_CKS"
.LASF102:
	.string	"BL_AHB_SLAVE1_SFC"
.LASF19:
	.string	"int32_t"
.LASF57:
	.string	"RESERVED7"
.LASF161:
	.string	"ctsFlowControl"
.LASF83:
	.string	"MAC_TXRX_TIMER_IRQn"
.LASF251:
	.string	"UART_Enable"
.LASF252:
	.string	"UART_ReceiveData"
.LASF92:
	.string	"BL_AHB_SLAVE1_RF"
.LASF209:
	.string	"bflb_platform_get_time_ms"
.LASF169:
	.string	"rxFifoDmaEnable"
.LASF138:
	.string	"UART_DataBits_Type"
.LASF238:
	.string	"vsnprintf"
.LASF136:
	.string	"UART_DATABITS_7"
.LASF137:
	.string	"UART_DATABITS_8"
.LASF163:
	.string	"rtsSoftwareControl"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
