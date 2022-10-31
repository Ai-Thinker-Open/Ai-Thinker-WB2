	.file	"bl602_dac.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.GLB_DAC_Init,"ax",@progbits
	.align	1
	.globl	GLB_DAC_Init
	.type	GLB_DAC_Init, @function
GLB_DAC_Init:
.LFB8:
	.file 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_dac.c"
	.loc 1 97 1
	.cfi_startproc
.LVL0:
	.loc 1 98 5
	.loc 1 101 5
	.loc 1 104 5
	.loc 1 104 11 is_stmt 0
	li	a3,1073741824
	lw	a5,776(a3)
.LVL1:
	.loc 1 105 5 is_stmt 1
	.loc 1 106 7 is_stmt 0
	lw	a2,4(a0)
	.loc 1 105 23
	andi	a4,a5,-257
	.loc 1 105 83
	lw	a5,0(a0)
.LVL2:
	slli	a5,a5,8
	.loc 1 105 11
	or	a5,a5,a4
.LVL3:
	.loc 1 106 5 is_stmt 1
	.loc 1 106 7 is_stmt 0
	li	a4,1
	bne	a2,a4,.L2
	.loc 1 107 9 is_stmt 1
	.loc 1 107 15 is_stmt 0
	andi	a5,a5,-2
.LVL4:
	.loc 1 108 9 is_stmt 1
	.loc 1 108 72 is_stmt 0
	sw	a5,776(a3)
	.loc 1 109 9 is_stmt 1
 #APP
# 109 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_dac.c" 1
	nop
# 0 "" 2
	.loc 1 110 9
# 110 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_dac.c" 1
	nop
# 0 "" 2
	.loc 1 111 9
# 111 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_dac.c" 1
	nop
# 0 "" 2
	.loc 1 112 9
# 112 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_dac.c" 1
	nop
# 0 "" 2
 #NO_APP
.L2:
	.loc 1 114 5
	.loc 1 114 7 is_stmt 0
	lw	a3,8(a0)
	li	a4,1
	bne	a3,a4,.L3
	.loc 1 115 9 is_stmt 1
	.loc 1 115 15 is_stmt 0
	andi	a5,a5,-3
.LVL5:
	.loc 1 116 9 is_stmt 1
	.loc 1 116 72 is_stmt 0
	li	a4,1073741824
	sw	a5,776(a4)
	.loc 1 117 9 is_stmt 1
 #APP
# 117 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_dac.c" 1
	nop
# 0 "" 2
	.loc 1 118 9
# 118 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_dac.c" 1
	nop
# 0 "" 2
	.loc 1 119 9
# 119 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_dac.c" 1
	nop
# 0 "" 2
	.loc 1 120 9
# 120 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_dac.c" 1
	nop
# 0 "" 2
 #NO_APP
.L3:
	.loc 1 124 5
.LVL6:
	.loc 1 125 5
	.loc 1 125 11 is_stmt 0
	ori	a5,a5,3
.LVL7:
	.loc 1 126 5 is_stmt 1
	.loc 1 126 68 is_stmt 0
	li	a4,1073741824
	sw	a5,776(a4)
	.loc 1 127 1
	ret
	.cfi_endproc
.LFE8:
	.size	GLB_DAC_Init, .-GLB_DAC_Init
	.section	.text.GLB_DAC_Set_ChanA_Config,"ax",@progbits
	.align	1
	.globl	GLB_DAC_Set_ChanA_Config
	.type	GLB_DAC_Set_ChanA_Config, @function
GLB_DAC_Set_ChanA_Config:
.LFB9:
	.loc 1 138 1 is_stmt 1
	.cfi_startproc
.LVL8:
	.loc 1 139 5
	.loc 1 142 5
	.loc 1 145 5
	.loc 1 145 11 is_stmt 0
	li	a3,1073741824
	lw	a5,780(a3)
.LVL9:
	.loc 1 146 5 is_stmt 1
	.loc 1 146 23 is_stmt 0
	li	a4,-7340032
	addi	a4,a4,-1
	and	a4,a5,a4
.LVL10:
	.loc 1 147 5 is_stmt 1
	.loc 1 146 84 is_stmt 0
	lw	a5,8(a0)
	slli	a5,a5,20
	.loc 1 146 11
	or	a5,a5,a4
.LVL11:
	.loc 1 148 5 is_stmt 1
	.loc 1 147 85 is_stmt 0
	lw	a4,4(a0)
	.loc 1 147 11
	andi	a5,a5,-4
.LVL12:
	.loc 1 147 85
	slli	a4,a4,1
	.loc 1 148 23
	or	a5,a5,a4
	.loc 1 148 11
	lw	a4,0(a0)
	or	a5,a5,a4
.LVL13:
	.loc 1 150 5 is_stmt 1
	.loc 1 150 68 is_stmt 0
	sw	a5,780(a3)
	.loc 1 151 1
	ret
	.cfi_endproc
.LFE9:
	.size	GLB_DAC_Set_ChanA_Config, .-GLB_DAC_Set_ChanA_Config
	.section	.text.GLB_DAC_Set_ChanB_Config,"ax",@progbits
	.align	1
	.globl	GLB_DAC_Set_ChanB_Config
	.type	GLB_DAC_Set_ChanB_Config, @function
GLB_DAC_Set_ChanB_Config:
.LFB10:
	.loc 1 162 1 is_stmt 1
	.cfi_startproc
.LVL14:
	.loc 1 163 5
	.loc 1 166 5
	.loc 1 169 5
	.loc 1 169 11 is_stmt 0
	li	a3,1073741824
	lw	a5,784(a3)
.LVL15:
	.loc 1 170 5 is_stmt 1
	.loc 1 170 23 is_stmt 0
	li	a4,-7340032
	addi	a4,a4,-1
	and	a4,a5,a4
.LVL16:
	.loc 1 171 5 is_stmt 1
	.loc 1 170 84 is_stmt 0
	lw	a5,8(a0)
	slli	a5,a5,20
	.loc 1 170 11
	or	a5,a5,a4
.LVL17:
	.loc 1 172 5 is_stmt 1
	.loc 1 171 85 is_stmt 0
	lw	a4,4(a0)
	.loc 1 171 11
	andi	a5,a5,-4
.LVL18:
	.loc 1 171 85
	slli	a4,a4,1
	.loc 1 172 23
	or	a5,a5,a4
	.loc 1 172 11
	lw	a4,0(a0)
	or	a5,a5,a4
.LVL19:
	.loc 1 174 5 is_stmt 1
	.loc 1 174 68 is_stmt 0
	sw	a5,784(a3)
	.loc 1 175 1
	ret
	.cfi_endproc
.LFE10:
	.size	GLB_DAC_Set_ChanB_Config, .-GLB_DAC_Set_ChanB_Config
	.section	.text.GPIP_Set_DAC_ChanB_SRC_SEL,"ax",@progbits
	.align	1
	.globl	GPIP_Set_DAC_ChanB_SRC_SEL
	.type	GPIP_Set_DAC_ChanB_SRC_SEL, @function
GPIP_Set_DAC_ChanB_SRC_SEL:
.LFB11:
	.loc 1 186 1 is_stmt 1
	.cfi_startproc
.LVL20:
	.loc 1 187 5
	.loc 1 189 5
	.loc 1 191 5
	.loc 1 191 11 is_stmt 0
	li	a3,1073750016
	lw	a5,64(a3)
.LVL21:
	.loc 1 192 5 is_stmt 1
	.loc 1 192 23 is_stmt 0
	li	a4,-15728640
	addi	a4,a4,-1
	and	a5,a5,a4
.LVL22:
	.loc 1 192 76
	slli	a0,a0,20
.LVL23:
	.loc 1 192 11
	or	a0,a0,a5
.LVL24:
	.loc 1 193 5 is_stmt 1
	.loc 1 193 60 is_stmt 0
	sw	a0,64(a3)
	.loc 1 194 1
	ret
	.cfi_endproc
.LFE11:
	.size	GPIP_Set_DAC_ChanB_SRC_SEL, .-GPIP_Set_DAC_ChanB_SRC_SEL
	.section	.text.GPIP_Set_DAC_ChanA_SRC_SEL,"ax",@progbits
	.align	1
	.globl	GPIP_Set_DAC_ChanA_SRC_SEL
	.type	GPIP_Set_DAC_ChanA_SRC_SEL, @function
GPIP_Set_DAC_ChanA_SRC_SEL:
.LFB12:
	.loc 1 205 1 is_stmt 1
	.cfi_startproc
.LVL25:
	.loc 1 206 5
	.loc 1 208 5
	.loc 1 210 5
	.loc 1 210 11 is_stmt 0
	li	a3,1073750016
	lw	a5,64(a3)
.LVL26:
	.loc 1 211 5 is_stmt 1
	.loc 1 211 23 is_stmt 0
	li	a4,-983040
	addi	a4,a4,-1
	and	a5,a5,a4
.LVL27:
	.loc 1 211 76
	slli	a0,a0,16
.LVL28:
	.loc 1 211 11
	or	a0,a0,a5
.LVL29:
	.loc 1 212 5 is_stmt 1
	.loc 1 212 60 is_stmt 0
	sw	a0,64(a3)
	.loc 1 213 1
	ret
	.cfi_endproc
.LFE12:
	.size	GPIP_Set_DAC_ChanA_SRC_SEL, .-GPIP_Set_DAC_ChanA_SRC_SEL
	.section	.text.GPIP_Set_DAC_Mod_SEL,"ax",@progbits
	.align	1
	.globl	GPIP_Set_DAC_Mod_SEL
	.type	GPIP_Set_DAC_Mod_SEL, @function
GPIP_Set_DAC_Mod_SEL:
.LFB13:
	.loc 1 224 1 is_stmt 1
	.cfi_startproc
.LVL30:
	.loc 1 225 5
	.loc 1 227 5
	.loc 1 229 5
	.loc 1 229 11 is_stmt 0
	li	a4,1073750016
	lw	a5,64(a4)
.LVL31:
	.loc 1 230 5 is_stmt 1
	.loc 1 230 75 is_stmt 0
	slli	a0,a0,8
.LVL32:
	.loc 1 230 23
	andi	a5,a5,-1793
.LVL33:
	.loc 1 230 11
	or	a0,a0,a5
.LVL34:
	.loc 1 231 5 is_stmt 1
	.loc 1 231 60 is_stmt 0
	sw	a0,64(a4)
	.loc 1 232 1
	ret
	.cfi_endproc
.LFE13:
	.size	GPIP_Set_DAC_Mod_SEL, .-GPIP_Set_DAC_Mod_SEL
	.section	.text.GPIP_DAC_ChanB_Enable,"ax",@progbits
	.align	1
	.globl	GPIP_DAC_ChanB_Enable
	.type	GPIP_DAC_ChanB_Enable, @function
GPIP_DAC_ChanB_Enable:
.LFB14:
	.loc 1 243 1 is_stmt 1
	.cfi_startproc
	.loc 1 244 5
	.loc 1 246 5
	.loc 1 246 11 is_stmt 0
	li	a4,1073750016
	lw	a5,64(a4)
.LVL35:
	.loc 1 247 5 is_stmt 1
	.loc 1 247 11 is_stmt 0
	ori	a5,a5,2
.LVL36:
	.loc 1 248 5 is_stmt 1
	.loc 1 248 60 is_stmt 0
	sw	a5,64(a4)
	.loc 1 249 1
	ret
	.cfi_endproc
.LFE14:
	.size	GPIP_DAC_ChanB_Enable, .-GPIP_DAC_ChanB_Enable
	.section	.text.GPIP_DAC_ChanB_Disable,"ax",@progbits
	.align	1
	.globl	GPIP_DAC_ChanB_Disable
	.type	GPIP_DAC_ChanB_Disable, @function
GPIP_DAC_ChanB_Disable:
.LFB15:
	.loc 1 260 1 is_stmt 1
	.cfi_startproc
	.loc 1 261 5
	.loc 1 263 5
	.loc 1 263 11 is_stmt 0
	li	a4,1073750016
	lw	a5,64(a4)
.LVL37:
	.loc 1 264 5 is_stmt 1
	.loc 1 264 11 is_stmt 0
	andi	a5,a5,-3
.LVL38:
	.loc 1 265 5 is_stmt 1
	.loc 1 265 60 is_stmt 0
	sw	a5,64(a4)
	.loc 1 266 1
	ret
	.cfi_endproc
.LFE15:
	.size	GPIP_DAC_ChanB_Disable, .-GPIP_DAC_ChanB_Disable
	.section	.text.GPIP_DAC_ChanA_Enable,"ax",@progbits
	.align	1
	.globl	GPIP_DAC_ChanA_Enable
	.type	GPIP_DAC_ChanA_Enable, @function
GPIP_DAC_ChanA_Enable:
.LFB16:
	.loc 1 277 1 is_stmt 1
	.cfi_startproc
	.loc 1 278 5
	.loc 1 280 5
	.loc 1 280 11 is_stmt 0
	li	a4,1073750016
	lw	a5,64(a4)
.LVL39:
	.loc 1 281 5 is_stmt 1
	.loc 1 281 11 is_stmt 0
	ori	a5,a5,1
.LVL40:
	.loc 1 282 5 is_stmt 1
	.loc 1 282 60 is_stmt 0
	sw	a5,64(a4)
	.loc 1 283 1
	ret
	.cfi_endproc
.LFE16:
	.size	GPIP_DAC_ChanA_Enable, .-GPIP_DAC_ChanA_Enable
	.section	.text.GPIP_DAC_ChanA_Disable,"ax",@progbits
	.align	1
	.globl	GPIP_DAC_ChanA_Disable
	.type	GPIP_DAC_ChanA_Disable, @function
GPIP_DAC_ChanA_Disable:
.LFB17:
	.loc 1 294 1 is_stmt 1
	.cfi_startproc
	.loc 1 295 5
	.loc 1 297 5
	.loc 1 297 11 is_stmt 0
	li	a4,1073750016
	lw	a5,64(a4)
.LVL41:
	.loc 1 298 5 is_stmt 1
	.loc 1 298 11 is_stmt 0
	andi	a5,a5,-2
.LVL42:
	.loc 1 299 5 is_stmt 1
	.loc 1 299 60 is_stmt 0
	sw	a5,64(a4)
	.loc 1 300 1
	ret
	.cfi_endproc
.LFE17:
	.size	GPIP_DAC_ChanA_Disable, .-GPIP_DAC_ChanA_Disable
	.section	.text.GPIP_Set_DAC_DMA_TX_FORMAT_SEL,"ax",@progbits
	.align	1
	.globl	GPIP_Set_DAC_DMA_TX_FORMAT_SEL
	.type	GPIP_Set_DAC_DMA_TX_FORMAT_SEL, @function
GPIP_Set_DAC_DMA_TX_FORMAT_SEL:
.LFB18:
	.loc 1 311 1 is_stmt 1
	.cfi_startproc
.LVL43:
	.loc 1 312 5
	.loc 1 314 5
	.loc 1 316 5
	.loc 1 316 11 is_stmt 0
	li	a4,1073750016
	lw	a5,68(a4)
.LVL44:
	.loc 1 317 5 is_stmt 1
	.loc 1 317 75 is_stmt 0
	slli	a0,a0,4
.LVL45:
	.loc 1 317 23
	andi	a5,a5,-49
.LVL46:
	.loc 1 317 11
	or	a0,a0,a5
.LVL47:
	.loc 1 318 5 is_stmt 1
	.loc 1 318 60 is_stmt 0
	sw	a0,68(a4)
	.loc 1 319 1
	ret
	.cfi_endproc
.LFE18:
	.size	GPIP_Set_DAC_DMA_TX_FORMAT_SEL, .-GPIP_Set_DAC_DMA_TX_FORMAT_SEL
	.section	.text.GPIP_Set_DAC_DMA_TX_Enable,"ax",@progbits
	.align	1
	.globl	GPIP_Set_DAC_DMA_TX_Enable
	.type	GPIP_Set_DAC_DMA_TX_Enable, @function
GPIP_Set_DAC_DMA_TX_Enable:
.LFB19:
	.loc 1 330 1 is_stmt 1
	.cfi_startproc
	.loc 1 331 5
	.loc 1 333 5
	.loc 1 333 11 is_stmt 0
	li	a4,1073750016
	lw	a5,68(a4)
.LVL48:
	.loc 1 334 5 is_stmt 1
	.loc 1 334 11 is_stmt 0
	ori	a5,a5,1
.LVL49:
	.loc 1 335 5 is_stmt 1
	.loc 1 335 60 is_stmt 0
	sw	a5,68(a4)
	.loc 1 336 1
	ret
	.cfi_endproc
.LFE19:
	.size	GPIP_Set_DAC_DMA_TX_Enable, .-GPIP_Set_DAC_DMA_TX_Enable
	.section	.text.GPIP_Set_DAC_DMA_TX_Disable,"ax",@progbits
	.align	1
	.globl	GPIP_Set_DAC_DMA_TX_Disable
	.type	GPIP_Set_DAC_DMA_TX_Disable, @function
GPIP_Set_DAC_DMA_TX_Disable:
.LFB20:
	.loc 1 347 1 is_stmt 1
	.cfi_startproc
	.loc 1 348 5
	.loc 1 350 5
	.loc 1 350 11 is_stmt 0
	li	a4,1073750016
	lw	a5,68(a4)
.LVL50:
	.loc 1 351 5 is_stmt 1
	.loc 1 351 11 is_stmt 0
	andi	a5,a5,-2
.LVL51:
	.loc 1 352 5 is_stmt 1
	.loc 1 352 60 is_stmt 0
	sw	a5,68(a4)
	.loc 1 353 1
	ret
	.cfi_endproc
.LFE20:
	.size	GPIP_Set_DAC_DMA_TX_Disable, .-GPIP_Set_DAC_DMA_TX_Disable
	.section	.text.GPIP_DAC_DMA_WriteData,"ax",@progbits
	.align	1
	.globl	GPIP_DAC_DMA_WriteData
	.type	GPIP_DAC_DMA_WriteData, @function
GPIP_DAC_DMA_WriteData:
.LFB21:
	.loc 1 364 1 is_stmt 1
	.cfi_startproc
.LVL52:
	.loc 1 365 5
	.loc 1 365 60 is_stmt 0
	li	a5,1073750016
	sw	a0,72(a5)
	.loc 1 366 1
	ret
	.cfi_endproc
.LFE21:
	.size	GPIP_DAC_DMA_WriteData, .-GPIP_DAC_DMA_WriteData
	.section	.text.GLB_GPIP_DAC_Init,"ax",@progbits
	.align	1
	.globl	GLB_GPIP_DAC_Init
	.type	GLB_GPIP_DAC_Init, @function
GLB_GPIP_DAC_Init:
.LFB22:
	.loc 1 377 1 is_stmt 1
	.cfi_startproc
.LVL53:
	.loc 1 378 5
	.loc 1 380 5
	.loc 1 381 5
	.loc 1 382 5
	.loc 1 385 5
	.loc 1 385 11 is_stmt 0
	li	a2,1073741824
	lw	a5,776(a2)
.LVL54:
	.loc 1 386 5 is_stmt 1
	.loc 1 387 7 is_stmt 0
	lw	a1,4(a0)
	.loc 1 377 1
	mv	a4,a0
	.loc 1 386 23
	andi	a3,a5,-257
	.loc 1 386 83
	lw	a5,0(a0)
.LVL55:
	slli	a5,a5,8
	.loc 1 386 11
	or	a5,a5,a3
.LVL56:
	.loc 1 387 5 is_stmt 1
	.loc 1 387 7 is_stmt 0
	li	a3,1
	bne	a1,a3,.L18
	.loc 1 388 9 is_stmt 1
	.loc 1 388 15 is_stmt 0
	andi	a5,a5,-2
.LVL57:
	.loc 1 389 9 is_stmt 1
	.loc 1 389 72 is_stmt 0
	sw	a5,776(a2)
	.loc 1 390 9 is_stmt 1
 #APP
# 390 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_dac.c" 1
	nop
# 0 "" 2
	.loc 1 391 9
# 391 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_dac.c" 1
	nop
# 0 "" 2
	.loc 1 392 9
# 392 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_dac.c" 1
	nop
# 0 "" 2
	.loc 1 393 9
# 393 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_dac.c" 1
	nop
# 0 "" 2
 #NO_APP
.L18:
	.loc 1 395 5
	.loc 1 395 7 is_stmt 0
	lw	a2,8(a4)
	li	a3,1
	bne	a2,a3,.L19
	.loc 1 396 9 is_stmt 1
	.loc 1 396 15 is_stmt 0
	andi	a5,a5,-3
.LVL58:
	.loc 1 397 9 is_stmt 1
	.loc 1 397 72 is_stmt 0
	li	a3,1073741824
	sw	a5,776(a3)
	.loc 1 398 9 is_stmt 1
 #APP
# 398 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_dac.c" 1
	nop
# 0 "" 2
	.loc 1 399 9
# 399 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_dac.c" 1
	nop
# 0 "" 2
	.loc 1 400 9
# 400 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_dac.c" 1
	nop
# 0 "" 2
	.loc 1 401 9
# 401 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_dac.c" 1
	nop
# 0 "" 2
 #NO_APP
.L19:
	.loc 1 405 5
.LVL59:
	.loc 1 406 5
	.loc 1 406 11 is_stmt 0
	ori	a5,a5,3
.LVL60:
	.loc 1 407 5 is_stmt 1
	.loc 1 407 68 is_stmt 0
	li	a3,1073741824
	sw	a5,776(a3)
	.loc 1 409 5 is_stmt 1
	.loc 1 409 7 is_stmt 0
	lw	a3,16(a4)
	lw	a5,12(a4)
.LVL61:
	bne	a3,zero,.L20
	.loc 1 409 30 discriminator 1
	li	a3,4
	.loc 1 410 16 discriminator 1
	li	a0,1
.LVL62:
	.loc 1 409 30 discriminator 1
	beq	a5,a3,.L17
.L20:
	.loc 1 414 5 is_stmt 1
	.loc 1 414 11 is_stmt 0
	li	a3,1073750016
	lw	a2,64(a3)
.LVL63:
	.loc 1 415 5 is_stmt 1
	.loc 1 415 80 is_stmt 0
	slli	a5,a5,8
	.loc 1 424 12
	li	a0,0
	.loc 1 415 23
	andi	a2,a2,-1793
.LVL64:
	.loc 1 415 11
	or	a5,a5,a2
.LVL65:
	.loc 1 416 5 is_stmt 1
	.loc 1 416 60 is_stmt 0
	sw	a5,64(a3)
	.loc 1 419 5 is_stmt 1
	.loc 1 419 11 is_stmt 0
	lw	a5,68(a3)
.LVL66:
	.loc 1 420 5 is_stmt 1
	.loc 1 420 11 is_stmt 0
	lw	a2,16(a4)
	.loc 1 421 83
	lw	a4,20(a4)
.LVL67:
	.loc 1 420 23
	andi	a5,a5,-2
.LVL68:
	.loc 1 421 5 is_stmt 1
	.loc 1 420 11 is_stmt 0
	or	a5,a5,a2
	.loc 1 421 23
	andi	a5,a5,-49
	.loc 1 421 83
	slli	a4,a4,4
	.loc 1 421 11
	or	a5,a4,a5
.LVL69:
	.loc 1 422 5 is_stmt 1
	.loc 1 422 60 is_stmt 0
	sw	a5,68(a3)
	.loc 1 424 5 is_stmt 1
.LVL70:
.L17:
	.loc 1 425 1 is_stmt 0
	ret
	.cfi_endproc
.LFE22:
	.size	GLB_GPIP_DAC_Init, .-GLB_GPIP_DAC_Init
	.section	.text.GLB_GPIP_DAC_Set_ChanA_Config,"ax",@progbits
	.align	1
	.globl	GLB_GPIP_DAC_Set_ChanA_Config
	.type	GLB_GPIP_DAC_Set_ChanA_Config, @function
GLB_GPIP_DAC_Set_ChanA_Config:
.LFB23:
	.loc 1 436 1 is_stmt 1
	.cfi_startproc
.LVL71:
	.loc 1 437 5
	.loc 1 439 5
	.loc 1 442 5
	.loc 1 442 11 is_stmt 0
	li	a4,1073750016
	lw	a5,64(a4)
.LVL72:
	.loc 1 443 5 is_stmt 1
	.loc 1 443 23 is_stmt 0
	li	a3,-983040
	addi	a3,a3,-1
	and	a3,a5,a3
	.loc 1 443 81
	lw	a5,12(a0)
.LVL73:
	slli	a5,a5,16
	.loc 1 443 11
	or	a5,a5,a3
.LVL74:
	.loc 1 444 5 is_stmt 1
	.loc 1 444 60 is_stmt 0
	sw	a5,64(a4)
	.loc 1 447 5 is_stmt 1
	.loc 1 447 11 is_stmt 0
	lw	a5,64(a4)
.LVL75:
	.loc 1 448 5 is_stmt 1
	.loc 1 448 11 is_stmt 0
	lw	a3,8(a0)
	.loc 1 448 23
	andi	a5,a5,-2
.LVL76:
	.loc 1 448 11
	or	a5,a5,a3
.LVL77:
	.loc 1 449 5 is_stmt 1
	.loc 1 449 60 is_stmt 0
	sw	a5,64(a4)
	.loc 1 452 5 is_stmt 1
	.loc 1 452 11 is_stmt 0
	li	a3,1073741824
	lw	a5,780(a3)
.LVL78:
	.loc 1 453 5 is_stmt 1
	.loc 1 454 5
	.loc 1 453 85 is_stmt 0
	lw	a4,4(a0)
	.loc 1 453 11
	andi	a5,a5,-4
.LVL79:
	.loc 1 453 85
	slli	a4,a4,1
	.loc 1 454 23
	or	a5,a5,a4
	.loc 1 454 11
	lw	a4,0(a0)
	or	a5,a5,a4
.LVL80:
	.loc 1 455 5 is_stmt 1
	.loc 1 455 68 is_stmt 0
	sw	a5,780(a3)
	.loc 1 456 1
	ret
	.cfi_endproc
.LFE23:
	.size	GLB_GPIP_DAC_Set_ChanA_Config, .-GLB_GPIP_DAC_Set_ChanA_Config
	.section	.text.GLB_GPIP_DAC_Set_ChanB_Config,"ax",@progbits
	.align	1
	.globl	GLB_GPIP_DAC_Set_ChanB_Config
	.type	GLB_GPIP_DAC_Set_ChanB_Config, @function
GLB_GPIP_DAC_Set_ChanB_Config:
.LFB24:
	.loc 1 467 1 is_stmt 1
	.cfi_startproc
.LVL81:
	.loc 1 468 5
	.loc 1 470 5
	.loc 1 473 5
	.loc 1 473 11 is_stmt 0
	li	a4,1073750016
	lw	a5,64(a4)
.LVL82:
	.loc 1 474 5 is_stmt 1
	.loc 1 474 23 is_stmt 0
	li	a3,-15728640
	addi	a3,a3,-1
	and	a3,a5,a3
	.loc 1 474 81
	lw	a5,12(a0)
.LVL83:
	slli	a5,a5,20
	.loc 1 474 11
	or	a5,a5,a3
.LVL84:
	.loc 1 475 5 is_stmt 1
	.loc 1 475 60 is_stmt 0
	sw	a5,64(a4)
	.loc 1 478 5 is_stmt 1
	.loc 1 478 11 is_stmt 0
	lw	a5,64(a4)
.LVL85:
	.loc 1 479 5 is_stmt 1
	.loc 1 479 23 is_stmt 0
	andi	a3,a5,-3
	.loc 1 479 83
	lw	a5,8(a0)
.LVL86:
	slli	a5,a5,1
	.loc 1 479 11
	or	a5,a5,a3
.LVL87:
	.loc 1 480 5 is_stmt 1
	.loc 1 480 60 is_stmt 0
	sw	a5,64(a4)
	.loc 1 483 5 is_stmt 1
	.loc 1 483 11 is_stmt 0
	li	a3,1073741824
	lw	a5,784(a3)
.LVL88:
	.loc 1 484 5 is_stmt 1
	.loc 1 485 5
	.loc 1 484 85 is_stmt 0
	lw	a4,4(a0)
	.loc 1 484 11
	andi	a5,a5,-4
.LVL89:
	.loc 1 484 85
	slli	a4,a4,1
	.loc 1 485 23
	or	a5,a5,a4
	.loc 1 485 11
	lw	a4,0(a0)
	or	a5,a5,a4
.LVL90:
	.loc 1 486 5 is_stmt 1
	.loc 1 486 68 is_stmt 0
	sw	a5,784(a3)
	.loc 1 487 1
	ret
	.cfi_endproc
.LFE24:
	.size	GLB_GPIP_DAC_Set_ChanB_Config, .-GLB_GPIP_DAC_Set_ChanB_Config
	.section	.text.GLB_DAC_Set_ChanA_Value,"ax",@progbits
	.align	1
	.globl	GLB_DAC_Set_ChanA_Value
	.type	GLB_DAC_Set_ChanA_Value, @function
GLB_DAC_Set_ChanA_Value:
.LFB25:
	.loc 1 498 1 is_stmt 1
	.cfi_startproc
.LVL91:
	.loc 1 499 5
	.loc 1 501 5
	.loc 1 501 11 is_stmt 0
	li	a3,1073741824
	lw	a5,788(a3)
.LVL92:
	.loc 1 502 5 is_stmt 1
	.loc 1 502 23 is_stmt 0
	li	a4,-67043328
	addi	a4,a4,-1
	and	a5,a5,a4
.LVL93:
	.loc 1 502 77
	slli	a0,a0,16
.LVL94:
	.loc 1 502 11
	or	a0,a0,a5
.LVL95:
	.loc 1 503 5 is_stmt 1
	.loc 1 503 68 is_stmt 0
	sw	a0,788(a3)
	.loc 1 504 1
	ret
	.cfi_endproc
.LFE25:
	.size	GLB_DAC_Set_ChanA_Value, .-GLB_DAC_Set_ChanA_Value
	.section	.text.GLB_DAC_Set_ChanB_Value,"ax",@progbits
	.align	1
	.globl	GLB_DAC_Set_ChanB_Value
	.type	GLB_DAC_Set_ChanB_Value, @function
GLB_DAC_Set_ChanB_Value:
.LFB26:
	.loc 1 515 1 is_stmt 1
	.cfi_startproc
.LVL96:
	.loc 1 516 5
	.loc 1 518 5
	.loc 1 518 11 is_stmt 0
	li	a4,1073741824
	lw	a5,788(a4)
.LVL97:
	.loc 1 519 5 is_stmt 1
	.loc 1 519 23 is_stmt 0
	andi	a5,a5,-1024
.LVL98:
	.loc 1 519 11
	or	a0,a0,a5
.LVL99:
	.loc 1 520 5 is_stmt 1
	.loc 1 520 68 is_stmt 0
	sw	a0,788(a4)
	.loc 1 521 1
	ret
	.cfi_endproc
.LFE26:
	.size	GLB_DAC_Set_ChanB_Value, .-GLB_DAC_Set_ChanB_Value
	.text
.Letext0:
	.file 2 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.file 3 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_common.h"
	.file 4 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_dac.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x7aa
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF94
	.byte	0xc
	.4byte	.LASF95
	.4byte	.LASF96
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1
	.byte	0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF3
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF4
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.byte	0x3
	.4byte	.LASF7
	.byte	0x2
	.byte	0x31
	.byte	0x1c
	.4byte	0x5b
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF6
	.byte	0x3
	.4byte	.LASF8
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0x6e
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF11
	.byte	0x5
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x3
	.byte	0x17
	.byte	0x1
	.4byte	0xab
	.byte	0x6
	.4byte	.LASF12
	.byte	0
	.byte	0x6
	.4byte	.LASF13
	.byte	0x1
	.byte	0x6
	.4byte	.LASF14
	.byte	0x2
	.byte	0
	.byte	0x3
	.4byte	.LASF15
	.byte	0x3
	.byte	0x1b
	.byte	0x2
	.4byte	0x8a
	.byte	0x5
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x3
	.byte	0x21
	.byte	0x1
	.4byte	0xd2
	.byte	0x6
	.4byte	.LASF16
	.byte	0
	.byte	0x6
	.4byte	.LASF17
	.byte	0x1
	.byte	0
	.byte	0x3
	.4byte	.LASF18
	.byte	0x3
	.byte	0x24
	.byte	0x2
	.4byte	0xb7
	.byte	0x5
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x4
	.byte	0x3b
	.byte	0xe
	.4byte	0xf9
	.byte	0x6
	.4byte	.LASF19
	.byte	0
	.byte	0x6
	.4byte	.LASF20
	.byte	0x1
	.byte	0
	.byte	0x3
	.4byte	.LASF21
	.byte	0x4
	.byte	0x3e
	.byte	0x2
	.4byte	0xde
	.byte	0x5
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x4
	.byte	0x43
	.byte	0xe
	.4byte	0x12c
	.byte	0x6
	.4byte	.LASF22
	.byte	0
	.byte	0x6
	.4byte	.LASF23
	.byte	0x1
	.byte	0x6
	.4byte	.LASF24
	.byte	0x2
	.byte	0x6
	.4byte	.LASF25
	.byte	0x3
	.byte	0
	.byte	0x3
	.4byte	.LASF26
	.byte	0x4
	.byte	0x48
	.byte	0x2
	.4byte	0x105
	.byte	0x5
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x4
	.byte	0x4d
	.byte	0xe
	.4byte	0x17d
	.byte	0x6
	.4byte	.LASF27
	.byte	0
	.byte	0x6
	.4byte	.LASF28
	.byte	0x1
	.byte	0x6
	.4byte	.LASF29
	.byte	0x2
	.byte	0x6
	.4byte	.LASF30
	.byte	0x3
	.byte	0x6
	.4byte	.LASF31
	.byte	0x4
	.byte	0x6
	.4byte	.LASF32
	.byte	0x5
	.byte	0x6
	.4byte	.LASF33
	.byte	0x6
	.byte	0x6
	.4byte	.LASF34
	.byte	0x7
	.byte	0x6
	.4byte	.LASF35
	.byte	0x8
	.byte	0
	.byte	0x3
	.4byte	.LASF36
	.byte	0x4
	.byte	0x57
	.byte	0x2
	.4byte	0x138
	.byte	0x7
	.byte	0x10
	.byte	0x4
	.byte	0x5c
	.byte	0x9
	.4byte	0x1c7
	.byte	0x8
	.4byte	.LASF37
	.byte	0x4
	.byte	0x5d
	.byte	0x11
	.4byte	0xd2
	.byte	0
	.byte	0x8
	.4byte	.LASF38
	.byte	0x4
	.byte	0x5e
	.byte	0x11
	.4byte	0xd2
	.byte	0x4
	.byte	0x8
	.4byte	.LASF39
	.byte	0x4
	.byte	0x5f
	.byte	0x17
	.4byte	0x17d
	.byte	0x8
	.byte	0x8
	.4byte	.LASF40
	.byte	0x4
	.byte	0x60
	.byte	0x24
	.4byte	0x12c
	.byte	0xc
	.byte	0
	.byte	0x3
	.4byte	.LASF41
	.byte	0x4
	.byte	0x61
	.byte	0x2
	.4byte	0x189
	.byte	0x7
	.byte	0xc
	.byte	0x4
	.byte	0x66
	.byte	0x9
	.4byte	0x204
	.byte	0x8
	.4byte	.LASF42
	.byte	0x4
	.byte	0x67
	.byte	0x1a
	.4byte	0xf9
	.byte	0
	.byte	0x8
	.4byte	.LASF43
	.byte	0x4
	.byte	0x68
	.byte	0x11
	.4byte	0xd2
	.byte	0x4
	.byte	0x8
	.4byte	.LASF44
	.byte	0x4
	.byte	0x69
	.byte	0x11
	.4byte	0xd2
	.byte	0x8
	.byte	0
	.byte	0x3
	.4byte	.LASF45
	.byte	0x4
	.byte	0x6a
	.byte	0x2
	.4byte	0x1d3
	.byte	0x5
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x4
	.byte	0x6f
	.byte	0xe
	.4byte	0x243
	.byte	0x6
	.4byte	.LASF46
	.byte	0
	.byte	0x6
	.4byte	.LASF47
	.byte	0x1
	.byte	0x6
	.4byte	.LASF48
	.byte	0x2
	.byte	0x6
	.4byte	.LASF49
	.byte	0x3
	.byte	0x6
	.4byte	.LASF50
	.byte	0x4
	.byte	0x6
	.4byte	.LASF51
	.byte	0x5
	.byte	0
	.byte	0x3
	.4byte	.LASF52
	.byte	0x4
	.byte	0x76
	.byte	0x2
	.4byte	0x210
	.byte	0x5
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x4
	.byte	0x7b
	.byte	0xe
	.4byte	0x276
	.byte	0x6
	.4byte	.LASF53
	.byte	0
	.byte	0x6
	.4byte	.LASF54
	.byte	0x1
	.byte	0x6
	.4byte	.LASF55
	.byte	0x2
	.byte	0x6
	.4byte	.LASF56
	.byte	0x3
	.byte	0
	.byte	0x3
	.4byte	.LASF57
	.byte	0x4
	.byte	0x80
	.byte	0x2
	.4byte	0x24f
	.byte	0x5
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x4
	.byte	0x85
	.byte	0xe
	.4byte	0x2af
	.byte	0x6
	.4byte	.LASF58
	.byte	0
	.byte	0x6
	.4byte	.LASF59
	.byte	0x1
	.byte	0x6
	.4byte	.LASF60
	.byte	0x2
	.byte	0x6
	.4byte	.LASF61
	.byte	0x3
	.byte	0x6
	.4byte	.LASF62
	.byte	0x4
	.byte	0
	.byte	0x3
	.4byte	.LASF63
	.byte	0x4
	.byte	0x8b
	.byte	0x2
	.4byte	0x282
	.byte	0x5
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x4
	.byte	0x90
	.byte	0xe
	.4byte	0x2dc
	.byte	0x6
	.4byte	.LASF64
	.byte	0
	.byte	0x6
	.4byte	.LASF65
	.byte	0x1
	.byte	0x6
	.4byte	.LASF66
	.byte	0x2
	.byte	0
	.byte	0x3
	.4byte	.LASF67
	.byte	0x4
	.byte	0x94
	.byte	0x2
	.4byte	0x2bb
	.byte	0x7
	.byte	0x18
	.byte	0x4
	.byte	0x99
	.byte	0x9
	.4byte	0x340
	.byte	0x8
	.4byte	.LASF42
	.byte	0x4
	.byte	0x9a
	.byte	0x1a
	.4byte	0xf9
	.byte	0
	.byte	0x8
	.4byte	.LASF43
	.byte	0x4
	.byte	0x9b
	.byte	0x11
	.4byte	0xd2
	.byte	0x4
	.byte	0x8
	.4byte	.LASF44
	.byte	0x4
	.byte	0x9c
	.byte	0x11
	.4byte	0xd2
	.byte	0x8
	.byte	0x9
	.string	"mod"
	.byte	0x4
	.byte	0x9d
	.byte	0x17
	.4byte	0x2af
	.byte	0xc
	.byte	0x8
	.4byte	.LASF68
	.byte	0x4
	.byte	0x9e
	.byte	0x11
	.4byte	0xd2
	.byte	0x10
	.byte	0x8
	.4byte	.LASF69
	.byte	0x4
	.byte	0x9f
	.byte	0x21
	.4byte	0x2dc
	.byte	0x14
	.byte	0
	.byte	0x3
	.4byte	.LASF70
	.byte	0x4
	.byte	0xa0
	.byte	0x2
	.4byte	0x2e8
	.byte	0x7
	.byte	0x10
	.byte	0x4
	.byte	0xa5
	.byte	0x9
	.4byte	0x38a
	.byte	0x8
	.4byte	.LASF71
	.byte	0x4
	.byte	0xa6
	.byte	0x11
	.4byte	0xd2
	.byte	0
	.byte	0x8
	.4byte	.LASF38
	.byte	0x4
	.byte	0xa7
	.byte	0x11
	.4byte	0xd2
	.byte	0x4
	.byte	0x8
	.4byte	.LASF37
	.byte	0x4
	.byte	0xa8
	.byte	0x11
	.4byte	0xd2
	.byte	0x8
	.byte	0x9
	.string	"src"
	.byte	0x4
	.byte	0xa9
	.byte	0x1d
	.4byte	0x276
	.byte	0xc
	.byte	0
	.byte	0x3
	.4byte	.LASF72
	.byte	0x4
	.byte	0xaa
	.byte	0x2
	.4byte	0x34c
	.byte	0x7
	.byte	0x10
	.byte	0x4
	.byte	0xaf
	.byte	0x9
	.4byte	0x3d4
	.byte	0x8
	.4byte	.LASF71
	.byte	0x4
	.byte	0xb0
	.byte	0x11
	.4byte	0xd2
	.byte	0
	.byte	0x8
	.4byte	.LASF38
	.byte	0x4
	.byte	0xb1
	.byte	0x11
	.4byte	0xd2
	.byte	0x4
	.byte	0x8
	.4byte	.LASF37
	.byte	0x4
	.byte	0xb2
	.byte	0x11
	.4byte	0xd2
	.byte	0x8
	.byte	0x9
	.string	"src"
	.byte	0x4
	.byte	0xb3
	.byte	0x1d
	.4byte	0x243
	.byte	0xc
	.byte	0
	.byte	0x3
	.4byte	.LASF73
	.byte	0x4
	.byte	0xb4
	.byte	0x2
	.4byte	0x396
	.byte	0xa
	.4byte	.LASF74
	.byte	0x1
	.2byte	0x202
	.byte	0x6
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x1
	.byte	0x9c
	.4byte	0x41a
	.byte	0xb
	.string	"val"
	.byte	0x1
	.2byte	0x202
	.byte	0x27
	.4byte	0x4f
	.4byte	.LLST17
	.byte	0xc
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x204
	.byte	0xe
	.4byte	0x62
	.4byte	.LLST18
	.byte	0
	.byte	0xa
	.4byte	.LASF75
	.byte	0x1
	.2byte	0x1f1
	.byte	0x6
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x1
	.byte	0x9c
	.4byte	0x454
	.byte	0xb
	.string	"val"
	.byte	0x1
	.2byte	0x1f1
	.byte	0x27
	.4byte	0x4f
	.4byte	.LLST15
	.byte	0xc
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x1f3
	.byte	0xe
	.4byte	0x62
	.4byte	.LLST16
	.byte	0
	.byte	0xa
	.4byte	.LASF77
	.byte	0x1
	.2byte	0x1d2
	.byte	0x6
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x1
	.byte	0x9c
	.4byte	0x48c
	.byte	0xd
	.string	"cfg"
	.byte	0x1
	.2byte	0x1d2
	.byte	0x41
	.4byte	0x48c
	.byte	0x1
	.byte	0x5a
	.byte	0xc
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x1d4
	.byte	0xe
	.4byte	0x62
	.4byte	.LLST14
	.byte	0
	.byte	0xe
	.byte	0x4
	.4byte	0x3d4
	.byte	0xa
	.4byte	.LASF78
	.byte	0x1
	.2byte	0x1b3
	.byte	0x6
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x1
	.byte	0x9c
	.4byte	0x4ca
	.byte	0xd
	.string	"cfg"
	.byte	0x1
	.2byte	0x1b3
	.byte	0x41
	.4byte	0x4ca
	.byte	0x1
	.byte	0x5a
	.byte	0xc
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x1b5
	.byte	0xe
	.4byte	0x62
	.4byte	.LLST13
	.byte	0
	.byte	0xe
	.byte	0x4
	.4byte	0x38a
	.byte	0xf
	.4byte	.LASF97
	.byte	0x1
	.2byte	0x178
	.byte	0xd
	.4byte	0xab
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x1
	.byte	0x9c
	.4byte	0x50e
	.byte	0xb
	.string	"cfg"
	.byte	0x1
	.2byte	0x178
	.byte	0x36
	.4byte	0x50e
	.4byte	.LLST11
	.byte	0xc
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x17a
	.byte	0xe
	.4byte	0x62
	.4byte	.LLST12
	.byte	0
	.byte	0xe
	.byte	0x4
	.4byte	0x340
	.byte	0xa
	.4byte	.LASF79
	.byte	0x1
	.2byte	0x16b
	.byte	0x6
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x1
	.byte	0x9c
	.4byte	0x53b
	.byte	0x10
	.4byte	.LASF80
	.byte	0x1
	.2byte	0x16b
	.byte	0x26
	.4byte	0x62
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0xa
	.4byte	.LASF81
	.byte	0x1
	.2byte	0x15a
	.byte	0x6
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x1
	.byte	0x9c
	.4byte	0x562
	.byte	0x11
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x15c
	.byte	0xe
	.4byte	0x62
	.byte	0x1
	.byte	0x5f
	.byte	0
	.byte	0xa
	.4byte	.LASF82
	.byte	0x1
	.2byte	0x149
	.byte	0x6
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x1
	.byte	0x9c
	.4byte	0x589
	.byte	0x11
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x14b
	.byte	0xe
	.4byte	0x62
	.byte	0x1
	.byte	0x5f
	.byte	0
	.byte	0xa
	.4byte	.LASF83
	.byte	0x1
	.2byte	0x136
	.byte	0x6
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x1
	.byte	0x9c
	.4byte	0x5c3
	.byte	0xb
	.string	"fmt"
	.byte	0x1
	.2byte	0x136
	.byte	0x41
	.4byte	0x2dc
	.4byte	.LLST9
	.byte	0xc
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x138
	.byte	0xe
	.4byte	0x62
	.4byte	.LLST10
	.byte	0
	.byte	0xa
	.4byte	.LASF84
	.byte	0x1
	.2byte	0x125
	.byte	0x6
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x1
	.byte	0x9c
	.4byte	0x5ea
	.byte	0x11
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x127
	.byte	0xe
	.4byte	0x62
	.byte	0x1
	.byte	0x5f
	.byte	0
	.byte	0xa
	.4byte	.LASF85
	.byte	0x1
	.2byte	0x114
	.byte	0x6
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x1
	.byte	0x9c
	.4byte	0x611
	.byte	0x11
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x116
	.byte	0xe
	.4byte	0x62
	.byte	0x1
	.byte	0x5f
	.byte	0
	.byte	0xa
	.4byte	.LASF86
	.byte	0x1
	.2byte	0x103
	.byte	0x6
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x1
	.byte	0x9c
	.4byte	0x638
	.byte	0x11
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x105
	.byte	0xe
	.4byte	0x62
	.byte	0x1
	.byte	0x5f
	.byte	0
	.byte	0x12
	.4byte	.LASF87
	.byte	0x1
	.byte	0xf2
	.byte	0x6
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x1
	.byte	0x9c
	.4byte	0x65d
	.byte	0x13
	.4byte	.LASF76
	.byte	0x1
	.byte	0xf4
	.byte	0xe
	.4byte	0x62
	.byte	0x1
	.byte	0x5f
	.byte	0
	.byte	0x12
	.4byte	.LASF88
	.byte	0x1
	.byte	0xdf
	.byte	0x6
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x1
	.byte	0x9c
	.4byte	0x694
	.byte	0x14
	.string	"mod"
	.byte	0x1
	.byte	0xdf
	.byte	0x2d
	.4byte	0x2af
	.4byte	.LLST7
	.byte	0x15
	.4byte	.LASF76
	.byte	0x1
	.byte	0xe1
	.byte	0xe
	.4byte	0x62
	.4byte	.LLST8
	.byte	0
	.byte	0x12
	.4byte	.LASF89
	.byte	0x1
	.byte	0xcc
	.byte	0x6
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x1
	.byte	0x9c
	.4byte	0x6cb
	.byte	0x14
	.string	"src"
	.byte	0x1
	.byte	0xcc
	.byte	0x39
	.4byte	0x276
	.4byte	.LLST5
	.byte	0x15
	.4byte	.LASF76
	.byte	0x1
	.byte	0xce
	.byte	0xe
	.4byte	0x62
	.4byte	.LLST6
	.byte	0
	.byte	0x12
	.4byte	.LASF90
	.byte	0x1
	.byte	0xb9
	.byte	0x6
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x1
	.byte	0x9c
	.4byte	0x702
	.byte	0x14
	.string	"src"
	.byte	0x1
	.byte	0xb9
	.byte	0x39
	.4byte	0x243
	.4byte	.LLST3
	.byte	0x15
	.4byte	.LASF76
	.byte	0x1
	.byte	0xbb
	.byte	0xe
	.4byte	0x62
	.4byte	.LLST4
	.byte	0
	.byte	0x12
	.4byte	.LASF91
	.byte	0x1
	.byte	0xa1
	.byte	0x6
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x1
	.byte	0x9c
	.4byte	0x737
	.byte	0x16
	.string	"cfg"
	.byte	0x1
	.byte	0xa1
	.byte	0x36
	.4byte	0x737
	.byte	0x1
	.byte	0x5a
	.byte	0x15
	.4byte	.LASF76
	.byte	0x1
	.byte	0xa3
	.byte	0xe
	.4byte	0x62
	.4byte	.LLST2
	.byte	0
	.byte	0xe
	.byte	0x4
	.4byte	0x1c7
	.byte	0x12
	.4byte	.LASF92
	.byte	0x1
	.byte	0x89
	.byte	0x6
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0x772
	.byte	0x16
	.string	"cfg"
	.byte	0x1
	.byte	0x89
	.byte	0x36
	.4byte	0x737
	.byte	0x1
	.byte	0x5a
	.byte	0x15
	.4byte	.LASF76
	.byte	0x1
	.byte	0x8b
	.byte	0xe
	.4byte	0x62
	.4byte	.LLST1
	.byte	0
	.byte	0x12
	.4byte	.LASF93
	.byte	0x1
	.byte	0x60
	.byte	0x6
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0x7a7
	.byte	0x16
	.string	"cfg"
	.byte	0x1
	.byte	0x60
	.byte	0x25
	.4byte	0x7a7
	.byte	0x1
	.byte	0x5a
	.byte	0x15
	.4byte	.LASF76
	.byte	0x1
	.byte	0x62
	.byte	0xe
	.4byte	0x62
	.4byte	.LLST0
	.byte	0
	.byte	0xe
	.byte	0x4
	.4byte	0x204
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
	.byte	0x6
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x7
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
	.byte	0x38
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x9
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
	.byte	0xa
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
	.byte	0xb
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
	.byte	0xc
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
	.byte	0xd
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
	.byte	0x18
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
	.byte	0x10
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
	.byte	0x11
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST17:
	.4byte	.LVL96
	.4byte	.LVL99
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL99
	.4byte	.LFE26
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL97
	.4byte	.LVL98
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL99
	.4byte	.LFE26
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL91
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL94
	.4byte	.LFE25
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL92
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL95
	.4byte	.LFE25
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL82
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL84
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL87
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL88
	.4byte	.LVL89
	.2byte	0xc
	.byte	0x7f
	.byte	0
	.byte	0x9
	.byte	0xfd
	.byte	0x1a
	.byte	0x7a
	.byte	0x4
	.byte	0x6
	.byte	0x31
	.byte	0x24
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL90
	.4byte	.LFE24
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL72
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL74
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL77
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL78
	.4byte	.LVL79
	.2byte	0xc
	.byte	0x7f
	.byte	0
	.byte	0x9
	.byte	0xfd
	.byte	0x1a
	.byte	0x7a
	.byte	0x4
	.byte	0x6
	.byte	0x31
	.byte	0x24
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL80
	.4byte	.LFE23
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL53
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL62
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL67
	.4byte	.LFE22
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL54
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL56
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL59
	.4byte	.LVL60
	.2byte	0x5
	.byte	0x7f
	.byte	0
	.byte	0x31
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL60
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL61
	.4byte	.LVL63
	.2byte	0x5
	.byte	0xc
	.4byte	0x40000308
	.4byte	.LVL63
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL65
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL69
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL43
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL45
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL44
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL47
	.4byte	.LFE18
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL30
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL32
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL31
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL34
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL25
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL28
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL29
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL20
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL23
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL24
	.4byte	.LFE11
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x9
	.byte	0x7a
	.byte	0x8
	.byte	0x6
	.byte	0x44
	.byte	0x24
	.byte	0x7e
	.byte	0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0xc
	.byte	0x7f
	.byte	0
	.byte	0x9
	.byte	0xfd
	.byte	0x1a
	.byte	0x7a
	.byte	0x4
	.byte	0x6
	.byte	0x31
	.byte	0x24
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LFE10
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x9
	.byte	0x7a
	.byte	0x8
	.byte	0x6
	.byte	0x44
	.byte	0x24
	.byte	0x7e
	.byte	0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0xc
	.byte	0x7f
	.byte	0
	.byte	0x9
	.byte	0xfd
	.byte	0x1a
	.byte	0x7a
	.byte	0x4
	.byte	0x6
	.byte	0x31
	.byte	0x24
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LFE9
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL3
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x5
	.byte	0x7f
	.byte	0
	.byte	0x31
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0xac
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
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
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
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
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
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LFB13
	.4byte	.LFE13
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
	.4byte	.LFB20
	.4byte	.LFE20
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF83:
	.string	"GPIP_Set_DAC_DMA_TX_FORMAT_SEL"
.LASF55:
	.string	"GPIP_DAC_ChanA_SRC_DMA_WITH_FILTER"
.LASF49:
	.string	"GPIP_DAC_ChanB_SRC_SIN_GEN"
.LASF71:
	.string	"chanCovtEn"
.LASF62:
	.string	"GPIP_DAC_MOD_512K"
.LASF61:
	.string	"GPIP_DAC_MOD_8K"
.LASF36:
	.string	"GLB_DAC_Chan_Type"
.LASF24:
	.string	"GLB_DAC_Output_Volt_RESEVED"
.LASF44:
	.string	"resetChanB"
.LASF77:
	.string	"GLB_GPIP_DAC_Set_ChanB_Config"
.LASF35:
	.string	"GLB_DAC_CHAN_ALL"
.LASF60:
	.string	"GPIP_DAC_MOD_RESERVE"
.LASF81:
	.string	"GPIP_Set_DAC_DMA_TX_Disable"
.LASF59:
	.string	"GPIP_DAC_MOD_16K"
.LASF17:
	.string	"ENABLE"
.LASF89:
	.string	"GPIP_Set_DAC_ChanA_SRC_SEL"
.LASF84:
	.string	"GPIP_DAC_ChanA_Disable"
.LASF76:
	.string	"tmpVal"
.LASF56:
	.string	"GPIP_DAC_ChanA_SRC_SIN_GEN"
.LASF90:
	.string	"GPIP_Set_DAC_ChanB_SRC_SEL"
.LASF86:
	.string	"GPIP_DAC_ChanB_Disable"
.LASF52:
	.string	"GPIP_DAC_ChanB_SRC_Type"
.LASF91:
	.string	"GLB_DAC_Set_ChanB_Config"
.LASF2:
	.string	"short int"
.LASF78:
	.string	"GLB_GPIP_DAC_Set_ChanA_Config"
.LASF57:
	.string	"GPIP_DAC_ChanA_SRC_Type"
.LASF4:
	.string	"long long int"
.LASF72:
	.string	"GLB_GPIP_DAC_ChanA_Cfg_Type"
.LASF11:
	.string	"char"
.LASF14:
	.string	"TIMEOUT"
.LASF74:
	.string	"GLB_DAC_Set_ChanB_Value"
.LASF3:
	.string	"long int"
.LASF65:
	.string	"GPIP_DAC_DMA_FORMAT_1"
.LASF15:
	.string	"BL_Err_Type"
.LASF63:
	.string	"GPIP_DAC_MOD_Type"
.LASF95:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_dac.c"
.LASF13:
	.string	"ERROR"
.LASF93:
	.string	"GLB_DAC_Init"
.LASF92:
	.string	"GLB_DAC_Set_ChanA_Config"
.LASF69:
	.string	"dmaFmt"
.LASF22:
	.string	"GLB_DAC_Output_Volt_0P2_1"
.LASF5:
	.string	"unsigned char"
.LASF48:
	.string	"GPIP_DAC_ChanB_SRC_DMA_WITH_FILTER"
.LASF70:
	.string	"GLB_GPIP_DAC_Cfg_Type"
.LASF1:
	.string	"signed char"
.LASF45:
	.string	"GLB_DAC_Cfg_Type"
.LASF10:
	.string	"long long unsigned int"
.LASF38:
	.string	"outputEn"
.LASF8:
	.string	"uint32_t"
.LASF0:
	.string	"unsigned int"
.LASF96:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/bl602_std"
.LASF7:
	.string	"uint16_t"
.LASF40:
	.string	"outRange"
.LASF64:
	.string	"GPIP_DAC_DMA_FORMAT_0"
.LASF46:
	.string	"GPIP_DAC_ChanB_SRC_REG"
.LASF66:
	.string	"GPIP_DAC_DMA_FORMAT_2"
.LASF12:
	.string	"SUCCESS"
.LASF6:
	.string	"short unsigned int"
.LASF27:
	.string	"GLB_DAC_CHAN0"
.LASF28:
	.string	"GLB_DAC_CHAN1"
.LASF29:
	.string	"GLB_DAC_CHAN2"
.LASF30:
	.string	"GLB_DAC_CHAN3"
.LASF31:
	.string	"GLB_DAC_CHAN4"
.LASF32:
	.string	"GLB_DAC_CHAN5"
.LASF33:
	.string	"GLB_DAC_CHAN6"
.LASF34:
	.string	"GLB_DAC_CHAN7"
.LASF87:
	.string	"GPIP_DAC_ChanB_Enable"
.LASF16:
	.string	"DISABLE"
.LASF42:
	.string	"refSel"
.LASF50:
	.string	"GPIP_DAC_ChanB_SRC_A"
.LASF80:
	.string	"data"
.LASF43:
	.string	"resetChanA"
.LASF54:
	.string	"GPIP_DAC_ChanA_SRC_DMA"
.LASF41:
	.string	"GLB_DAC_Chan_Cfg_Type"
.LASF73:
	.string	"GLB_GPIP_DAC_ChanB_Cfg_Type"
.LASF19:
	.string	"GLB_DAC_REF_SEL_INTERNAL"
.LASF9:
	.string	"long unsigned int"
.LASF47:
	.string	"GPIP_DAC_ChanB_SRC_DMA"
.LASF79:
	.string	"GPIP_DAC_DMA_WriteData"
.LASF85:
	.string	"GPIP_DAC_ChanA_Enable"
.LASF20:
	.string	"GLB_DAC_REF_SEL_EXTERNAL"
.LASF88:
	.string	"GPIP_Set_DAC_Mod_SEL"
.LASF23:
	.string	"GLB_DAC_Output_Volt_0P225_1P425"
.LASF75:
	.string	"GLB_DAC_Set_ChanA_Value"
.LASF67:
	.string	"GPIP_DAC_DMA_TX_FORMAT_Type"
.LASF18:
	.string	"BL_Fun_Type"
.LASF37:
	.string	"chanEn"
.LASF58:
	.string	"GPIP_DAC_MOD_32K"
.LASF25:
	.string	"GLB_DAC_Output_Volt_0P2_1P8"
.LASF82:
	.string	"GPIP_Set_DAC_DMA_TX_Enable"
.LASF21:
	.string	"GLB_DAC_Ref_Sel_Type"
.LASF39:
	.string	"outMux"
.LASF97:
	.string	"GLB_GPIP_DAC_Init"
.LASF51:
	.string	"GPIP_DAC_ChanB_SRC_INVERSE_A"
.LASF26:
	.string	"GLB_DAC_Output_Volt_Range_Type"
.LASF68:
	.string	"dmaEn"
.LASF53:
	.string	"GPIP_DAC_ChanA_SRC_REG"
.LASF94:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
