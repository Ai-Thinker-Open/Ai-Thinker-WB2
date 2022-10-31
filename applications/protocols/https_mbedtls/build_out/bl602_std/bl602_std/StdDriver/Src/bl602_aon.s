	.file	"bl602_aon.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.sclock_rlt_code./mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_aon.c98,"ax",@progbits
	.align	1
	.weak	AON_Power_On_MBG
	.type	AON_Power_On_MBG, @function
AON_Power_On_MBG:
.LFB8:
	.file 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_aon.c"
	.loc 1 99 1
	.cfi_startproc
	.loc 1 100 5
.LVL0:
	.loc 1 103 5
	.loc 1 99 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 103 11
	li	a4,1073807360
	lw	a5,-1920(a4)
.LVL1:
	.loc 1 104 5 is_stmt 1
	.loc 1 107 5 is_stmt 0
	li	a0,55
	.loc 1 104 11
	ori	a5,a5,1
.LVL2:
	.loc 1 105 5 is_stmt 1
	.loc 1 105 61 is_stmt 0
	sw	a5,-1920(a4)
	.loc 1 107 5 is_stmt 1
	call	BL602_Delay_US
.LVL3:
	.loc 1 109 5
	.loc 1 110 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE8:
	.size	AON_Power_On_MBG, .-AON_Power_On_MBG
	.section	.sclock_rlt_code./mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_aon.c123,"ax",@progbits
	.align	1
	.weak	AON_Power_Off_MBG
	.type	AON_Power_Off_MBG, @function
AON_Power_Off_MBG:
.LFB9:
	.loc 1 124 1 is_stmt 1
	.cfi_startproc
	.loc 1 125 5
.LVL4:
	.loc 1 128 5
	.loc 1 128 11 is_stmt 0
	li	a4,1073807360
	lw	a5,-1920(a4)
.LVL5:
	.loc 1 129 5 is_stmt 1
	.loc 1 133 1 is_stmt 0
	li	a0,0
	.loc 1 129 11
	andi	a5,a5,-2
.LVL6:
	.loc 1 130 5 is_stmt 1
	.loc 1 130 61 is_stmt 0
	sw	a5,-1920(a4)
	.loc 1 132 5 is_stmt 1
	.loc 1 133 1 is_stmt 0
	ret
	.cfi_endproc
.LFE9:
	.size	AON_Power_Off_MBG, .-AON_Power_Off_MBG
	.section	.sclock_rlt_code./mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_aon.c146,"ax",@progbits
	.align	1
	.weak	AON_Power_On_XTAL
	.type	AON_Power_On_XTAL, @function
AON_Power_On_XTAL:
.LFB10:
	.loc 1 147 1 is_stmt 1
	.cfi_startproc
	.loc 1 148 5
.LVL7:
	.loc 1 149 5
	.loc 1 151 5
	.loc 1 147 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	s1,20(sp)
	sw	s2,16(sp)
	sw	s3,12(sp)
	sw	ra,28(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 1, -4
	.loc 1 151 11
	li	a4,1073807360
	lw	a5,-1920(a4)
.LVL8:
	.loc 1 152 5 is_stmt 1
	.loc 1 153 5
	.loc 1 149 14 is_stmt 0
	li	s0,0
	.loc 1 160 15
	li	s2,1073807360
	.loc 1 153 11
	ori	a5,a5,48
.LVL9:
	.loc 1 154 5 is_stmt 1
	.loc 1 154 61 is_stmt 0
	sw	a5,-1920(a4)
	.loc 1 161 24
	li	s3,268435456
	.loc 1 161 45
	li	s1,120
.LVL10:
.L6:
	.loc 1 157 5 is_stmt 1 discriminator 2
	.loc 1 158 9 discriminator 2
	li	a0,10
	call	BL602_Delay_US
.LVL11:
	.loc 1 159 9 discriminator 2
	.loc 1 160 15 is_stmt 0 discriminator 2
	lw	a5,-1912(s2)
	.loc 1 159 16 discriminator 2
	addi	s0,s0,1
.LVL12:
	.loc 1 160 9 is_stmt 1 discriminator 2
	.loc 1 161 11 discriminator 2
	.loc 1 161 24 is_stmt 0 discriminator 2
	and	a5,a5,s3
.LVL13:
	.loc 1 161 5 discriminator 2
	bne	a5,zero,.L5
	.loc 1 161 45 discriminator 1
	bne	s0,s1,.L6
	.loc 1 164 16
	li	a0,2
.L4:
	.loc 1 168 1
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
.LVL14:
	lw	s1,20(sp)
	.cfi_restore 9
	lw	s2,16(sp)
	.cfi_restore 18
	lw	s3,12(sp)
	.cfi_restore 19
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL15:
.L5:
	.cfi_restore_state
	.loc 1 163 5 is_stmt 1
	.loc 1 163 7 is_stmt 0
	li	a5,120
	.loc 1 164 16
	li	a0,2
	.loc 1 163 7
	beq	s0,a5,.L4
	.loc 1 167 12
	li	a0,0
	j	.L4
	.cfi_endproc
.LFE10:
	.size	AON_Power_On_XTAL, .-AON_Power_On_XTAL
	.section	.sclock_rlt_code./mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_aon.c182,"ax",@progbits
	.align	1
	.weak	AON_Set_Xtal_CapCode
	.type	AON_Set_Xtal_CapCode, @function
AON_Set_Xtal_CapCode:
.LFB11:
	.loc 1 183 1 is_stmt 1
	.cfi_startproc
.LVL16:
	.loc 1 184 5
	.loc 1 186 5
	.loc 1 183 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 186 11
	li	a3,1073807360
	lw	a5,-1916(a3)
.LVL17:
	.loc 1 187 5 is_stmt 1
	.loc 1 187 23 is_stmt 0
	li	a4,-264241152
	addi	a4,a4,-1
	and	a5,a5,a4
.LVL18:
	.loc 1 188 5 is_stmt 1
	.loc 1 187 78 is_stmt 0
	slli	a0,a0,22
.LVL19:
	.loc 1 187 11
	or	a0,a0,a5
.LVL20:
	.loc 1 188 23
	li	a5,-4128768
	addi	a5,a5,-1
	and	a0,a0,a5
.LVL21:
	.loc 1 188 79
	slli	a1,a1,16
.LVL22:
	.loc 1 188 11
	or	a0,a1,a0
.LVL23:
	.loc 1 189 5 is_stmt 1
	.loc 1 189 61 is_stmt 0
	sw	a0,-1916(a3)
	.loc 1 191 5 is_stmt 1
	li	a0,100
.LVL24:
	call	BL602_Delay_US
.LVL25:
	.loc 1 193 5
	.loc 1 194 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE11:
	.size	AON_Set_Xtal_CapCode, .-AON_Set_Xtal_CapCode
	.section	.sclock_rlt_code./mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_aon.c207,"ax",@progbits
	.align	1
	.weak	AON_Get_Xtal_CapCode
	.type	AON_Get_Xtal_CapCode, @function
AON_Get_Xtal_CapCode:
.LFB12:
	.loc 1 208 1 is_stmt 1
	.cfi_startproc
	.loc 1 209 5
.LVL26:
	.loc 1 211 5
	.loc 1 211 11 is_stmt 0
	li	a5,1073807360
	lw	a0,-1916(a5)
.LVL27:
	.loc 1 213 5 is_stmt 1
	.loc 1 213 57 is_stmt 0
	srli	a0,a0,22
.LVL28:
	.loc 1 214 1
	andi	a0,a0,63
	ret
	.cfi_endproc
.LFE12:
	.size	AON_Get_Xtal_CapCode, .-AON_Get_Xtal_CapCode
	.section	.sclock_rlt_code./mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_aon.c227,"ax",@progbits
	.align	1
	.weak	AON_Power_Off_XTAL
	.type	AON_Power_Off_XTAL, @function
AON_Power_Off_XTAL:
.LFB13:
	.loc 1 228 1 is_stmt 1
	.cfi_startproc
	.loc 1 229 5
.LVL29:
	.loc 1 231 5
	.loc 1 231 11 is_stmt 0
	li	a4,1073807360
	lw	a5,-1920(a4)
.LVL30:
	.loc 1 232 5 is_stmt 1
	.loc 1 233 5
	.loc 1 237 1 is_stmt 0
	li	a0,0
	.loc 1 233 11
	andi	a5,a5,-49
.LVL31:
	.loc 1 234 5 is_stmt 1
	.loc 1 234 61 is_stmt 0
	sw	a5,-1920(a4)
	.loc 1 236 5 is_stmt 1
	.loc 1 237 1 is_stmt 0
	ret
	.cfi_endproc
.LFE13:
	.size	AON_Power_Off_XTAL, .-AON_Power_Off_XTAL
	.section	.tcm_code./mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_aon.c250,"ax",@progbits
	.align	1
	.weak	AON_Power_On_BG
	.type	AON_Power_On_BG, @function
AON_Power_On_BG:
.LFB14:
	.loc 1 251 1 is_stmt 1
	.cfi_startproc
	.loc 1 252 5
.LVL32:
	.loc 1 255 5
	.loc 1 251 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 255 11
	li	a4,1073807360
	lw	a5,-2032(a4)
.LVL33:
	.loc 1 256 5 is_stmt 1
	.loc 1 259 5 is_stmt 0
	li	a0,55
	.loc 1 256 11
	ori	a5,a5,256
.LVL34:
	.loc 1 257 5 is_stmt 1
	.loc 1 257 61 is_stmt 0
	sw	a5,-2032(a4)
	.loc 1 259 5 is_stmt 1
	call	BL602_Delay_US
.LVL35:
	.loc 1 261 5
	.loc 1 262 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE14:
	.size	AON_Power_On_BG, .-AON_Power_On_BG
	.section	.tcm_code./mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_aon.c275,"ax",@progbits
	.align	1
	.weak	AON_Power_Off_BG
	.type	AON_Power_Off_BG, @function
AON_Power_Off_BG:
.LFB15:
	.loc 1 276 1 is_stmt 1
	.cfi_startproc
	.loc 1 277 5
.LVL36:
	.loc 1 280 5
	.loc 1 276 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 280 11
	li	a4,1073807360
	lw	a5,-2032(a4)
.LVL37:
	.loc 1 281 5 is_stmt 1
	.loc 1 284 5 is_stmt 0
	li	a0,55
	.loc 1 281 11
	andi	a5,a5,-257
.LVL38:
	.loc 1 282 5 is_stmt 1
	.loc 1 282 61 is_stmt 0
	sw	a5,-2032(a4)
	.loc 1 284 5 is_stmt 1
	call	BL602_Delay_US
.LVL39:
	.loc 1 286 5
	.loc 1 287 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE15:
	.size	AON_Power_Off_BG, .-AON_Power_Off_BG
	.section	.tcm_code./mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_aon.c300,"ax",@progbits
	.align	1
	.weak	AON_Power_On_LDO11_SOC
	.type	AON_Power_On_LDO11_SOC, @function
AON_Power_On_LDO11_SOC:
.LFB16:
	.loc 1 301 1 is_stmt 1
	.cfi_startproc
	.loc 1 302 5
.LVL40:
	.loc 1 304 5
	.loc 1 301 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 304 11
	li	a4,1073807360
	lw	a5,-2020(a4)
.LVL41:
	.loc 1 305 5 is_stmt 1
	.loc 1 308 5 is_stmt 0
	li	a0,55
	.loc 1 305 11
	ori	a5,a5,1
.LVL42:
	.loc 1 306 5 is_stmt 1
	.loc 1 306 61 is_stmt 0
	sw	a5,-2020(a4)
	.loc 1 308 5 is_stmt 1
	call	BL602_Delay_US
.LVL43:
	.loc 1 310 5
	.loc 1 311 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE16:
	.size	AON_Power_On_LDO11_SOC, .-AON_Power_On_LDO11_SOC
	.section	.tcm_code./mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_aon.c324,"ax",@progbits
	.align	1
	.weak	AON_Power_Off_LDO11_SOC
	.type	AON_Power_Off_LDO11_SOC, @function
AON_Power_Off_LDO11_SOC:
.LFB17:
	.loc 1 325 1 is_stmt 1
	.cfi_startproc
	.loc 1 326 5
.LVL44:
	.loc 1 328 5
	.loc 1 325 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 328 11
	li	a4,1073807360
	lw	a5,-2020(a4)
.LVL45:
	.loc 1 329 5 is_stmt 1
	.loc 1 332 5 is_stmt 0
	li	a0,55
	.loc 1 329 11
	andi	a5,a5,-2
.LVL46:
	.loc 1 330 5 is_stmt 1
	.loc 1 330 61 is_stmt 0
	sw	a5,-2020(a4)
	.loc 1 332 5 is_stmt 1
	call	BL602_Delay_US
.LVL47:
	.loc 1 334 5
	.loc 1 335 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE17:
	.size	AON_Power_Off_LDO11_SOC, .-AON_Power_Off_LDO11_SOC
	.section	.tcm_code./mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_aon.c348,"ax",@progbits
	.align	1
	.weak	AON_Power_On_LDO15_RF
	.type	AON_Power_On_LDO15_RF, @function
AON_Power_On_LDO15_RF:
.LFB18:
	.loc 1 349 1 is_stmt 1
	.cfi_startproc
	.loc 1 350 5
.LVL48:
	.loc 1 353 5
	.loc 1 349 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 353 11
	li	a4,1073807360
	lw	a5,-1920(a4)
.LVL49:
	.loc 1 354 5 is_stmt 1
	.loc 1 357 5 is_stmt 0
	li	a0,90
	.loc 1 354 11
	ori	a5,a5,2
.LVL50:
	.loc 1 355 5 is_stmt 1
	.loc 1 355 61 is_stmt 0
	sw	a5,-1920(a4)
	.loc 1 357 5 is_stmt 1
	call	BL602_Delay_US
.LVL51:
	.loc 1 359 5
	.loc 1 360 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE18:
	.size	AON_Power_On_LDO15_RF, .-AON_Power_On_LDO15_RF
	.section	.tcm_code./mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_aon.c373,"ax",@progbits
	.align	1
	.weak	AON_Power_Off_LDO15_RF
	.type	AON_Power_Off_LDO15_RF, @function
AON_Power_Off_LDO15_RF:
.LFB19:
	.loc 1 374 1 is_stmt 1
	.cfi_startproc
	.loc 1 375 5
.LVL52:
	.loc 1 378 5
	.loc 1 378 11 is_stmt 0
	li	a4,1073807360
	lw	a5,-1920(a4)
.LVL53:
	.loc 1 379 5 is_stmt 1
	.loc 1 383 1 is_stmt 0
	li	a0,0
	.loc 1 379 11
	andi	a5,a5,-3
.LVL54:
	.loc 1 380 5 is_stmt 1
	.loc 1 380 61 is_stmt 0
	sw	a5,-1920(a4)
	.loc 1 382 5 is_stmt 1
	.loc 1 383 1 is_stmt 0
	ret
	.cfi_endproc
.LFE19:
	.size	AON_Power_Off_LDO15_RF, .-AON_Power_Off_LDO15_RF
	.section	.tcm_code./mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_aon.c396,"ax",@progbits
	.align	1
	.weak	AON_Power_On_SFReg
	.type	AON_Power_On_SFReg, @function
AON_Power_On_SFReg:
.LFB20:
	.loc 1 397 1 is_stmt 1
	.cfi_startproc
	.loc 1 398 5
.LVL55:
	.loc 1 401 5
	.loc 1 397 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 401 11
	li	a4,1073807360
	lw	a5,-1920(a4)
.LVL56:
	.loc 1 402 5 is_stmt 1
	.loc 1 405 5 is_stmt 0
	li	a0,10
	.loc 1 402 11
	ori	a5,a5,4
.LVL57:
	.loc 1 403 5 is_stmt 1
	.loc 1 403 61 is_stmt 0
	sw	a5,-1920(a4)
	.loc 1 405 5 is_stmt 1
	call	BL602_Delay_US
.LVL58:
	.loc 1 407 5
	.loc 1 408 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE20:
	.size	AON_Power_On_SFReg, .-AON_Power_On_SFReg
	.section	.tcm_code./mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_aon.c421,"ax",@progbits
	.align	1
	.weak	AON_Power_Off_SFReg
	.type	AON_Power_Off_SFReg, @function
AON_Power_Off_SFReg:
.LFB21:
	.loc 1 422 1 is_stmt 1
	.cfi_startproc
	.loc 1 423 5
.LVL59:
	.loc 1 426 5
	.loc 1 426 11 is_stmt 0
	li	a4,1073807360
	lw	a5,-1920(a4)
.LVL60:
	.loc 1 427 5 is_stmt 1
	.loc 1 431 1 is_stmt 0
	li	a0,0
	.loc 1 427 11
	andi	a5,a5,-5
.LVL61:
	.loc 1 428 5 is_stmt 1
	.loc 1 428 61 is_stmt 0
	sw	a5,-1920(a4)
	.loc 1 430 5 is_stmt 1
	.loc 1 431 1 is_stmt 0
	ret
	.cfi_endproc
.LFE21:
	.size	AON_Power_Off_SFReg, .-AON_Power_Off_SFReg
	.section	.tcm_code./mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_aon.c444,"ax",@progbits
	.align	1
	.weak	AON_LowPower_Enter_PDS0
	.type	AON_LowPower_Enter_PDS0, @function
AON_LowPower_Enter_PDS0:
.LFB22:
	.loc 1 445 1 is_stmt 1
	.cfi_startproc
	.loc 1 446 5
.LVL62:
	.loc 1 449 5
	.loc 1 449 11 is_stmt 0
	li	a5,1073807360
	addi	a3,a5,-2048
	lw	a4,8(a3)
.LVL63:
	.loc 1 450 5 is_stmt 1
	.loc 1 453 11 is_stmt 0
	addi	a5,a5,-1920
	.loc 1 466 1
	li	a0,0
	.loc 1 450 11
	andi	a4,a4,-3
.LVL64:
	.loc 1 451 5 is_stmt 1
	.loc 1 451 61 is_stmt 0
	sw	a4,8(a3)
	.loc 1 453 5 is_stmt 1
	.loc 1 453 11 is_stmt 0
	lw	a4,0(a5)
.LVL65:
	.loc 1 454 5 is_stmt 1
	.loc 1 455 5
	.loc 1 456 5
	.loc 1 456 11 is_stmt 0
	andi	a4,a4,-8
.LVL66:
	.loc 1 457 5 is_stmt 1
	.loc 1 457 61 is_stmt 0
	sw	a4,0(a5)
	.loc 1 460 5 is_stmt 1
	.loc 1 460 11 is_stmt 0
	li	a4,1073741824
.LVL67:
	lw	a5,32(a4)
.LVL68:
	.loc 1 461 5 is_stmt 1
	.loc 1 462 5
	.loc 1 462 11 is_stmt 0
	andi	a5,a5,-193
.LVL69:
	.loc 1 463 5 is_stmt 1
	.loc 1 463 60 is_stmt 0
	sw	a5,32(a4)
	.loc 1 465 5 is_stmt 1
	.loc 1 466 1 is_stmt 0
	ret
	.cfi_endproc
.LFE22:
	.size	AON_LowPower_Enter_PDS0, .-AON_LowPower_Enter_PDS0
	.section	.tcm_code./mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_aon.c479,"ax",@progbits
	.align	1
	.weak	AON_LowPower_Exit_PDS0
	.type	AON_LowPower_Exit_PDS0, @function
AON_LowPower_Exit_PDS0:
.LFB23:
	.loc 1 480 1 is_stmt 1
	.cfi_startproc
	.loc 1 481 5
.LVL70:
	.loc 1 483 5
	.loc 1 480 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	sw	s1,4(sp)
	sw	s2,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.loc 1 483 11
	li	s0,1073807360
	lw	s1,-1920(s0)
.LVL71:
	.loc 1 485 5 is_stmt 1
	.loc 1 488 5 is_stmt 0
	li	a0,20
	.loc 1 501 11
	addi	s0,s0,-2048
	.loc 1 485 11
	ori	a5,s1,1
.LVL72:
	.loc 1 486 5 is_stmt 1
	.loc 1 486 61 is_stmt 0
	sw	a5,128(s0)
	.loc 1 488 5 is_stmt 1
	call	BL602_Delay_US
.LVL73:
	.loc 1 490 5
	.loc 1 490 11 is_stmt 0
	ori	a5,s1,3
.LVL74:
	.loc 1 491 5 is_stmt 1
	.loc 1 491 61 is_stmt 0
	sw	a5,128(s0)
	.loc 1 493 5 is_stmt 1
	li	a0,60
	call	BL602_Delay_US
.LVL75:
	.loc 1 495 5
	.loc 1 495 11 is_stmt 0
	ori	s1,s1,7
.LVL76:
	.loc 1 496 5 is_stmt 1
	.loc 1 496 61 is_stmt 0
	sw	s1,128(s0)
	.loc 1 498 5 is_stmt 1
	li	a0,20
	call	BL602_Delay_US
.LVL77:
	.loc 1 501 5
	.loc 1 501 11 is_stmt 0
	lw	a5,8(s0)
.LVL78:
	.loc 1 502 5 is_stmt 1
	.loc 1 506 11 is_stmt 0
	li	a4,1073741824
	.loc 1 512 1
	li	a0,0
	.loc 1 502 11
	ori	a5,a5,2
.LVL79:
	.loc 1 503 5 is_stmt 1
	.loc 1 503 61 is_stmt 0
	sw	a5,8(s0)
	.loc 1 506 5 is_stmt 1
	.loc 1 506 11 is_stmt 0
	lw	a5,32(a4)
.LVL80:
	.loc 1 507 5 is_stmt 1
	.loc 1 508 5
	.loc 1 508 11 is_stmt 0
	ori	a5,a5,192
.LVL81:
	.loc 1 509 5 is_stmt 1
	.loc 1 509 60 is_stmt 0
	sw	a5,32(a4)
	.loc 1 511 5 is_stmt 1
	.loc 1 512 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
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
.LFE23:
	.size	AON_LowPower_Exit_PDS0, .-AON_LowPower_Exit_PDS0
	.section	.tcm_code./mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_aon.c523,"ax",@progbits
	.align	1
	.globl	AON_Set_LDO11_SOC_Sstart_Delay
	.type	AON_Set_LDO11_SOC_Sstart_Delay, @function
AON_Set_LDO11_SOC_Sstart_Delay:
.LFB24:
	.loc 1 524 1 is_stmt 1
	.cfi_startproc
.LVL82:
	.loc 1 525 5
	.loc 1 527 5
	.loc 1 530 5
	.loc 1 530 11 is_stmt 0
	li	a4,1073807360
	lw	a5,-2020(a4)
.LVL83:
	.loc 1 531 5 is_stmt 1
	.loc 1 531 77 is_stmt 0
	slli	a0,a0,8
.LVL84:
	.loc 1 531 23
	andi	a5,a5,-769
.LVL85:
	.loc 1 531 11
	or	a0,a0,a5
.LVL86:
	.loc 1 532 5 is_stmt 1
	.loc 1 532 61 is_stmt 0
	sw	a0,-2020(a4)
	.loc 1 534 5 is_stmt 1
	.loc 1 535 1 is_stmt 0
	li	a0,0
.LVL87:
	ret
	.cfi_endproc
.LFE24:
	.size	AON_Set_LDO11_SOC_Sstart_Delay, .-AON_Set_LDO11_SOC_Sstart_Delay
	.text
.Letext0:
	.file 2 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.file 3 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_common.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x4b4
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF38
	.byte	0xc
	.4byte	.LASF39
	.4byte	.LASF40
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
	.byte	0x3
	.4byte	.LASF7
	.byte	0x2
	.byte	0x2e
	.byte	0x17
	.4byte	0x54
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
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
	.byte	0x7
	.4byte	.LASF16
	.byte	0x1
	.2byte	0x20b
	.byte	0xae
	.4byte	0xab
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x1
	.byte	0x9c
	.4byte	0xf5
	.byte	0x8
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x20b
	.byte	0xd5
	.4byte	0x48
	.4byte	.LLST19
	.byte	0x9
	.4byte	.LASF18
	.byte	0x1
	.2byte	0x20d
	.byte	0xe
	.4byte	0x62
	.4byte	.LLST20
	.byte	0
	.byte	0x7
	.4byte	.LASF17
	.byte	0x1
	.2byte	0x1df
	.byte	0xae
	.4byte	0xab
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x1
	.byte	0x9c
	.4byte	0x158
	.byte	0x9
	.4byte	.LASF18
	.byte	0x1
	.2byte	0x1e1
	.byte	0xe
	.4byte	0x62
	.4byte	.LLST18
	.byte	0xa
	.4byte	.LVL73
	.4byte	0x4ab
	.4byte	0x134
	.byte	0xb
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x44
	.byte	0
	.byte	0xa
	.4byte	.LVL75
	.4byte	0x4ab
	.4byte	0x148
	.byte	0xb
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x3c
	.byte	0
	.byte	0xc
	.4byte	.LVL77
	.4byte	0x4ab
	.byte	0xb
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x44
	.byte	0
	.byte	0
	.byte	0x7
	.4byte	.LASF19
	.byte	0x1
	.2byte	0x1bc
	.byte	0xae
	.4byte	0xab
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x1
	.byte	0x9c
	.4byte	0x185
	.byte	0x9
	.4byte	.LASF18
	.byte	0x1
	.2byte	0x1be
	.byte	0xe
	.4byte	0x62
	.4byte	.LLST17
	.byte	0
	.byte	0x7
	.4byte	.LASF20
	.byte	0x1
	.2byte	0x1a5
	.byte	0xae
	.4byte	0xab
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x1
	.byte	0x9c
	.4byte	0x1b2
	.byte	0x9
	.4byte	.LASF18
	.byte	0x1
	.2byte	0x1a7
	.byte	0xe
	.4byte	0x62
	.4byte	.LLST16
	.byte	0
	.byte	0x7
	.4byte	.LASF21
	.byte	0x1
	.2byte	0x18c
	.byte	0xae
	.4byte	0xab
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x1
	.byte	0x9c
	.4byte	0x1ee
	.byte	0x9
	.4byte	.LASF18
	.byte	0x1
	.2byte	0x18e
	.byte	0xe
	.4byte	0x62
	.4byte	.LLST15
	.byte	0xc
	.4byte	.LVL58
	.4byte	0x4ab
	.byte	0xb
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x3a
	.byte	0
	.byte	0
	.byte	0x7
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x175
	.byte	0xae
	.4byte	0xab
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x1
	.byte	0x9c
	.4byte	0x21b
	.byte	0x9
	.4byte	.LASF18
	.byte	0x1
	.2byte	0x177
	.byte	0xe
	.4byte	0x62
	.4byte	.LLST14
	.byte	0
	.byte	0x7
	.4byte	.LASF23
	.byte	0x1
	.2byte	0x15c
	.byte	0xae
	.4byte	0xab
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x1
	.byte	0x9c
	.4byte	0x258
	.byte	0x9
	.4byte	.LASF18
	.byte	0x1
	.2byte	0x15e
	.byte	0xe
	.4byte	0x62
	.4byte	.LLST13
	.byte	0xc
	.4byte	.LVL51
	.4byte	0x4ab
	.byte	0xb
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x5a
	.byte	0
	.byte	0
	.byte	0x7
	.4byte	.LASF24
	.byte	0x1
	.2byte	0x144
	.byte	0xae
	.4byte	0xab
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x1
	.byte	0x9c
	.4byte	0x295
	.byte	0x9
	.4byte	.LASF18
	.byte	0x1
	.2byte	0x146
	.byte	0xe
	.4byte	0x62
	.4byte	.LLST12
	.byte	0xc
	.4byte	.LVL47
	.4byte	0x4ab
	.byte	0xb
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x37
	.byte	0
	.byte	0
	.byte	0x7
	.4byte	.LASF25
	.byte	0x1
	.2byte	0x12c
	.byte	0xae
	.4byte	0xab
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x1
	.byte	0x9c
	.4byte	0x2d2
	.byte	0x9
	.4byte	.LASF18
	.byte	0x1
	.2byte	0x12e
	.byte	0xe
	.4byte	0x62
	.4byte	.LLST11
	.byte	0xc
	.4byte	.LVL43
	.4byte	0x4ab
	.byte	0xb
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x37
	.byte	0
	.byte	0
	.byte	0x7
	.4byte	.LASF26
	.byte	0x1
	.2byte	0x113
	.byte	0xae
	.4byte	0xab
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x1
	.byte	0x9c
	.4byte	0x30f
	.byte	0x9
	.4byte	.LASF18
	.byte	0x1
	.2byte	0x115
	.byte	0xe
	.4byte	0x62
	.4byte	.LLST10
	.byte	0xc
	.4byte	.LVL39
	.4byte	0x4ab
	.byte	0xb
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x37
	.byte	0
	.byte	0
	.byte	0xd
	.4byte	.LASF27
	.byte	0x1
	.byte	0xfa
	.byte	0xae
	.4byte	0xab
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x1
	.byte	0x9c
	.4byte	0x34a
	.byte	0xe
	.4byte	.LASF18
	.byte	0x1
	.byte	0xfc
	.byte	0xe
	.4byte	0x62
	.4byte	.LLST9
	.byte	0xc
	.4byte	.LVL35
	.4byte	0x4ab
	.byte	0xb
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x37
	.byte	0
	.byte	0
	.byte	0xd
	.4byte	.LASF28
	.byte	0x1
	.byte	0xe3
	.byte	0xb5
	.4byte	0xab
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x1
	.byte	0x9c
	.4byte	0x375
	.byte	0xe
	.4byte	.LASF18
	.byte	0x1
	.byte	0xe5
	.byte	0xe
	.4byte	0x62
	.4byte	.LLST8
	.byte	0
	.byte	0xd
	.4byte	.LASF29
	.byte	0x1
	.byte	0xcf
	.byte	0xb1
	.4byte	0x48
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x1
	.byte	0x9c
	.4byte	0x3a0
	.byte	0xe
	.4byte	.LASF18
	.byte	0x1
	.byte	0xd1
	.byte	0xe
	.4byte	0x62
	.4byte	.LLST7
	.byte	0
	.byte	0xd
	.4byte	.LASF30
	.byte	0x1
	.byte	0xb6
	.byte	0xb5
	.4byte	0xab
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x1
	.byte	0x9c
	.4byte	0x3fb
	.byte	0xf
	.4byte	.LASF32
	.byte	0x1
	.byte	0xb6
	.byte	0xd2
	.4byte	0x48
	.4byte	.LLST4
	.byte	0xf
	.4byte	.LASF33
	.byte	0x1
	.byte	0xb6
	.byte	0xe0
	.4byte	0x48
	.4byte	.LLST5
	.byte	0xe
	.4byte	.LASF18
	.byte	0x1
	.byte	0xb8
	.byte	0xe
	.4byte	0x62
	.4byte	.LLST6
	.byte	0xc
	.4byte	.LVL25
	.4byte	0x4ab
	.byte	0xb
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x64
	.byte	0
	.byte	0
	.byte	0xd
	.4byte	.LASF34
	.byte	0x1
	.byte	0x92
	.byte	0xb5
	.4byte	0xab
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x1
	.byte	0x9c
	.4byte	0x445
	.byte	0xe
	.4byte	.LASF18
	.byte	0x1
	.byte	0x94
	.byte	0xe
	.4byte	0x62
	.4byte	.LLST2
	.byte	0xe
	.4byte	.LASF35
	.byte	0x1
	.byte	0x95
	.byte	0xe
	.4byte	0x62
	.4byte	.LLST3
	.byte	0xc
	.4byte	.LVL11
	.4byte	0x4ab
	.byte	0xb
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x3a
	.byte	0
	.byte	0
	.byte	0xd
	.4byte	.LASF36
	.byte	0x1
	.byte	0x7b
	.byte	0xb5
	.4byte	0xab
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0x470
	.byte	0xe
	.4byte	.LASF18
	.byte	0x1
	.byte	0x7d
	.byte	0xe
	.4byte	0x62
	.4byte	.LLST1
	.byte	0
	.byte	0xd
	.4byte	.LASF37
	.byte	0x1
	.byte	0x62
	.byte	0xb4
	.4byte	0xab
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0x4ab
	.byte	0xe
	.4byte	.LASF18
	.byte	0x1
	.byte	0x64
	.byte	0xe
	.4byte	0x62
	.4byte	.LLST0
	.byte	0xc
	.4byte	.LVL3
	.4byte	0x4ab
	.byte	0xb
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x37
	.byte	0
	.byte	0
	.byte	0x10
	.4byte	.LASF41
	.4byte	.LASF41
	.byte	0x3
	.byte	0x87
	.byte	0x6
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
	.byte	0x8
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
	.byte	0x9
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
	.byte	0xa
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
	.byte	0xb
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0xc
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
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
	.byte	0xf
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
	.byte	0x10
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
.LLST19:
	.4byte	.LVL82
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL84
	.4byte	.LFE24
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL82
	.4byte	.LVL83
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL83
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL86
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL87
	.4byte	.LFE24
	.2byte	0x3
	.byte	0x7e
	.byte	0x9c,0x70
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL70
	.4byte	.LVL71
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL71
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL72
	.4byte	.LVL73-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL73-1
	.4byte	.LVL74
	.2byte	0x5
	.byte	0x79
	.byte	0
	.byte	0x31
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL74
	.4byte	.LVL75-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL75-1
	.4byte	.LVL76
	.2byte	0x5
	.byte	0x79
	.byte	0
	.byte	0x33
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL76
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL78
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL80
	.4byte	.LVL81
	.2byte	0x6
	.byte	0x7f
	.byte	0
	.byte	0x8
	.byte	0x40
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL81
	.4byte	.LFE23
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL63
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL65
	.4byte	.LVL66
	.2byte	0x6
	.byte	0x7e
	.byte	0
	.byte	0x9
	.byte	0xf9
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL66
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL67
	.4byte	.LVL68
	.2byte	0x2
	.byte	0x7f
	.byte	0
	.4byte	.LVL68
	.4byte	.LVL69
	.2byte	0x6
	.byte	0x7f
	.byte	0
	.byte	0x9
	.byte	0xbf
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL69
	.4byte	.LFE22
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL59
	.4byte	.LVL60
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL60
	.4byte	.LFE21
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL55
	.4byte	.LVL56
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL56
	.4byte	.LVL58-1
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL53
	.4byte	.LFE19
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL49
	.4byte	.LVL51-1
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL45
	.4byte	.LVL47-1
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL41
	.4byte	.LVL43-1
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL37
	.4byte	.LVL39-1
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LVL35-1
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x6
	.byte	0x7f
	.byte	0
	.byte	0x9
	.byte	0xdf
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL16
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL19
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL16
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL22
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x8
	.byte	0x7a
	.byte	0
	.byte	0x46
	.byte	0x24
	.byte	0x7f
	.byte	0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL24
	.4byte	.LVL25-1
	.2byte	0x3
	.byte	0x7d
	.byte	0x84,0x71
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x6
	.byte	0x7f
	.byte	0
	.byte	0x8
	.byte	0x20
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL7
	.4byte	.LVL10
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL15
	.4byte	.LFE10
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LFE9
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL1
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x9c
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF4:
	.string	"long long int"
.LASF23:
	.string	"AON_Power_On_LDO15_RF"
.LASF14:
	.string	"TIMEOUT"
.LASF21:
	.string	"AON_Power_On_SFReg"
.LASF3:
	.string	"long int"
.LASF39:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_aon.c"
.LASF10:
	.string	"long long unsigned int"
.LASF31:
	.string	"delay"
.LASF5:
	.string	"unsigned char"
.LASF12:
	.string	"SUCCESS"
.LASF36:
	.string	"AON_Power_Off_MBG"
.LASF17:
	.string	"AON_LowPower_Exit_PDS0"
.LASF6:
	.string	"short unsigned int"
.LASF19:
	.string	"AON_LowPower_Enter_PDS0"
.LASF18:
	.string	"tmpVal"
.LASF26:
	.string	"AON_Power_Off_BG"
.LASF38:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
.LASF9:
	.string	"long unsigned int"
.LASF2:
	.string	"short int"
.LASF24:
	.string	"AON_Power_Off_LDO11_SOC"
.LASF34:
	.string	"AON_Power_On_XTAL"
.LASF0:
	.string	"unsigned int"
.LASF11:
	.string	"char"
.LASF7:
	.string	"uint8_t"
.LASF16:
	.string	"AON_Set_LDO11_SOC_Sstart_Delay"
.LASF37:
	.string	"AON_Power_On_MBG"
.LASF35:
	.string	"timeOut"
.LASF22:
	.string	"AON_Power_Off_LDO15_RF"
.LASF30:
	.string	"AON_Set_Xtal_CapCode"
.LASF20:
	.string	"AON_Power_Off_SFReg"
.LASF41:
	.string	"BL602_Delay_US"
.LASF40:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/bl602_std"
.LASF28:
	.string	"AON_Power_Off_XTAL"
.LASF32:
	.string	"capIn"
.LASF29:
	.string	"AON_Get_Xtal_CapCode"
.LASF8:
	.string	"uint32_t"
.LASF13:
	.string	"ERROR"
.LASF33:
	.string	"capOut"
.LASF1:
	.string	"signed char"
.LASF27:
	.string	"AON_Power_On_BG"
.LASF15:
	.string	"BL_Err_Type"
.LASF25:
	.string	"AON_Power_On_LDO11_SOC"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
