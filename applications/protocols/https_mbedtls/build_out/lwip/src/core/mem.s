	.file	"mem.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.mem_init,"ax",@progbits
	.align	1
	.globl	mem_init
	.type	mem_init, @function
mem_init:
.LFB8:
	.file 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/core/mem.c"
	.loc 1 517 1
	.cfi_startproc
	.loc 1 518 3
	.loc 1 520 3
	.loc 1 520 8
	.loc 1 520 80
	.loc 1 520 90
	.loc 1 524 3
	.loc 1 524 54 is_stmt 0
	lui	a5,%hi(ram_heap+3)
	addi	a5,a5,%lo(ram_heap+3)
	.loc 1 524 59
	andi	a5,a5,-4
	.loc 1 524 7
	lui	a4,%hi(.LANCHOR0)
	sw	a5,%lo(.LANCHOR0)(a4)
	.loc 1 526 3 is_stmt 1
.LVL0:
	.loc 1 527 3
	.loc 1 528 3
	.loc 1 529 3
	.loc 1 527 13 is_stmt 0
	li	a4,8192
.LBB53:
.LBB54:
	.loc 1 453 10
	add	a3,a5,a4
.LBE54:
.LBE53:
	.loc 1 531 11
	lui	a2,%hi(.LANCHOR1)
	.loc 1 527 13
	sw	a4,0(a5)
	.loc 1 529 13
	sb	zero,4(a5)
	.loc 1 531 3 is_stmt 1
.LVL1:
.LBB56:
.LBB55:
	.loc 1 453 3
.LBE55:
.LBE56:
	.loc 1 531 11 is_stmt 0
	sw	a3,%lo(.LANCHOR1)(a2)
	.loc 1 532 3 is_stmt 1
	.loc 1 533 3
	.loc 1 534 3
	.loc 1 533 17 is_stmt 0
	li	a2,536879104
	sw	a2,0(a3)
	.loc 1 532 17
	li	a2,1
	sb	a2,4(a3)
	.loc 1 535 3 is_stmt 1
	.loc 1 538 3
	.loc 1 542 7 is_stmt 0
	lui	a0,%hi(.LANCHOR3)
	.loc 1 538 9
	lui	a3,%hi(.LANCHOR2)
	sw	a5,%lo(.LANCHOR2)(a3)
	.loc 1 540 3 is_stmt 1
	.loc 1 542 7 is_stmt 0
	addi	a0,a0,%lo(.LANCHOR3)
	.loc 1 540 24
	lui	a5,%hi(lwip_stats+174)
.LVL2:
	sh	a4,%lo(lwip_stats+174)(a5)
	.loc 1 542 3 is_stmt 1
	.loc 1 542 7 is_stmt 0
	tail	sys_mutex_new
.LVL3:
	.cfi_endproc
.LFE8:
	.size	mem_init, .-mem_init
	.section	.text.mem_free,"ax",@progbits
	.align	1
	.globl	mem_free
	.type	mem_free, @function
mem_free:
.LFB10:
	.loc 1 618 1 is_stmt 1
	.cfi_startproc
.LVL4:
	.loc 1 619 3
	.loc 1 620 3
	.loc 1 622 3
	.loc 1 622 6 is_stmt 0
	beq	a0,zero,.L2
	.loc 1 618 1
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	s2,16(sp)
	sw	ra,28(sp)
	.cfi_offset 8, -8
	.cfi_offset 18, -16
	.cfi_offset 1, -4
	lui	s2,%hi(lwip_stats)
	sw	s1,20(sp)
	sw	s3,12(sp)
	sw	s4,8(sp)
	sw	s5,4(sp)
	.cfi_offset 9, -12
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.loc 1 626 26
	andi	a5,a0,3
	mv	s0,a0
	.loc 1 626 3 is_stmt 1
	addi	s2,s2,%lo(lwip_stats)
	.loc 1 626 6 is_stmt 0
	beq	a5,zero,.L4
.LVL5:
.L22:
	.loc 1 654 5 is_stmt 1 discriminator 1
	.loc 1 656 5 discriminator 1
.LBB83:
	.loc 1 656 10 discriminator 1
	.loc 1 656 32 discriminator 1
	.loc 1 656 44 is_stmt 0 discriminator 1
	call	sys_arch_protect
.LVL6:
	.loc 1 656 64 is_stmt 1 discriminator 1
	lhu	a5,180(s2)
.LBE83:
	.loc 1 686 1 is_stmt 0 discriminator 1
	lw	s0,24(sp)
	.cfi_remember_state
	.cfi_restore 8
.LVL7:
	lw	ra,28(sp)
	.cfi_restore 1
.LBB84:
	.loc 1 656 64 discriminator 1
	addi	a5,a5,1
.LBE84:
	.loc 1 686 1 discriminator 1
	lw	s1,20(sp)
	.cfi_restore 9
	lw	s3,12(sp)
	.cfi_restore 19
	lw	s4,8(sp)
	.cfi_restore 20
	lw	s5,4(sp)
	.cfi_restore 21
.LBB85:
	.loc 1 656 64 discriminator 1
	sh	a5,180(s2)
	.loc 1 656 90 is_stmt 1 discriminator 1
.LBE85:
	.loc 1 686 1 is_stmt 0 discriminator 1
	lw	s2,16(sp)
	.cfi_restore 18
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
.LBB86:
	.loc 1 656 90 discriminator 1
	tail	sys_arch_unprotect
.LVL8:
.L4:
	.cfi_restore_state
.LBE86:
	.loc 1 636 3 is_stmt 1
	.loc 1 638 19 is_stmt 0
	lui	s4,%hi(.LANCHOR0)
	addi	s4,s4,%lo(.LANCHOR0)
	.loc 1 638 6
	lw	a5,0(s4)
	.loc 1 636 7
	addi	s1,a0,-8
.LVL9:
	.loc 1 638 3 is_stmt 1
	.loc 1 638 6 is_stmt 0
	bgtu	a5,s1,.L22
	.loc 1 638 74 discriminator 1
	lui	a5,%hi(.LANCHOR1)
	.loc 1 638 25 discriminator 1
	lw	a3,%lo(.LANCHOR1)(a5)
	.loc 1 638 41 discriminator 1
	addi	a4,a0,12
	addi	s3,a5,%lo(.LANCHOR1)
	.loc 1 638 25 discriminator 1
	bltu	a3,a4,.L22
	.loc 1 649 3 is_stmt 1
	lui	s5,%hi(.LANCHOR3)
	addi	a0,s5,%lo(.LANCHOR3)
	call	sys_mutex_lock
.LVL10:
	.loc 1 651 3
	.loc 1 651 6 is_stmt 0
	lbu	a5,-4(s0)
	bne	a5,zero,.L6
.L7:
	.loc 1 652 5 is_stmt 1 discriminator 1
	.loc 1 652 10 discriminator 1
	.loc 1 652 22 discriminator 1
	.loc 1 652 32 discriminator 1
	.loc 1 653 5 discriminator 1
	addi	a0,s5,%lo(.LANCHOR3)
	call	sys_mutex_unlock
.LVL11:
	j	.L22
.L6:
	.loc 1 660 3
.LVL12:
.LBB87:
.LBB88:
	.loc 1 553 3
	.loc 1 554 3
	.loc 1 555 3
.LBB89:
.LBB90:
	.loc 1 459 3
.LBE90:
.LBE89:
	.loc 1 556 3
	.loc 1 556 10 is_stmt 0
	lhu	a1,-8(s0)
.LVL13:
.LBB92:
.LBB93:
	.loc 1 453 3 is_stmt 1
.LBE93:
.LBE92:
	.loc 1 557 3
.LBB95:
.LBB96:
	.loc 1 453 3
.LBE96:
.LBE95:
	.loc 1 558 3
	.loc 1 558 6 is_stmt 0
	li	a5,8192
	bgtu	a1,a5,.L7
	.loc 1 557 10
	lhu	a4,-6(s0)
	.loc 1 558 56
	bgtu	a4,a5,.L7
.LBB97:
.LBB91:
	.loc 1 459 35
	lw	a5,0(s4)
	sub	a2,s1,a5
	.loc 1 459 10
	slli	a2,a2,16
	srli	a2,a2,16
.LBE91:
.LBE97:
	.loc 1 558 108
	beq	a2,a4,.L8
	.loc 1 559 40
	add	a4,a5,a4
	.loc 1 559 32
	lhu	a4,0(a4)
	bne	a4,a2,.L7
.L8:
	.loc 1 560 14
	lw	a6,0(s3)
.LBB98:
.LBB94:
	.loc 1 453 10
	add	a4,a5,a1
.LBE94:
.LBE98:
	.loc 1 559 61
	beq	a4,a6,.L9
	.loc 1 560 26
	lhu	a4,2(a4)
	bne	a4,a2,.L7
.L9:
.LVL14:
.LBE88:
.LBE87:
	.loc 1 670 3 is_stmt 1
	.loc 1 672 11 is_stmt 0
	lui	a4,%hi(.LANCHOR2)
	.loc 1 672 6
	lw	a3,%lo(.LANCHOR2)(a4)
	.loc 1 670 13
	sb	zero,-4(s0)
	.loc 1 672 3 is_stmt 1
	addi	a4,a4,%lo(.LANCHOR2)
	.loc 1 672 6 is_stmt 0
	bleu	a3,s1,.L10
	.loc 1 674 5 is_stmt 1
	.loc 1 674 11 is_stmt 0
	sw	s1,0(a4)
.L10:
	.loc 1 677 3 is_stmt 1
	.loc 1 677 25 is_stmt 0
	lhu	a3,176(s2)
	sub	a3,a3,a1
	add	a3,a2,a3
	.loc 1 677 23
	sh	a3,176(s2)
.LVL15:
	.loc 1 680 3 is_stmt 1
.LBB99:
.LBB100:
	.loc 1 476 3
	.loc 1 477 3
	.loc 1 479 3
	.loc 1 479 8
	.loc 1 479 37
	.loc 1 479 47
	.loc 1 480 3
	.loc 1 480 8
	.loc 1 480 48
	.loc 1 480 58
	.loc 1 481 3
	.loc 1 481 8
	.loc 1 481 33
	.loc 1 481 43
	.loc 1 484 3
	.loc 1 484 8
	.loc 1 484 66
	.loc 1 484 76
	.loc 1 486 3
.LBB101:
.LBB102:
	.loc 1 453 3
	.loc 1 453 32 is_stmt 0
	lhu	a3,-8(s0)
	.loc 1 453 10
	add	a3,a5,a3
.LVL16:
.LBE102:
.LBE101:
	.loc 1 487 3 is_stmt 1
	.loc 1 487 6 is_stmt 0
	beq	s1,a3,.L12
	.loc 1 487 19
	lbu	a1,4(a3)
.LVL17:
	bne	a1,zero,.L12
	.loc 1 487 38
	beq	a6,a3,.L12
	.loc 1 489 5 is_stmt 1
	.loc 1 489 8 is_stmt 0
	lw	a1,0(a4)
	bne	a3,a1,.L14
	.loc 1 490 7 is_stmt 1
	.loc 1 490 13 is_stmt 0
	sw	s1,0(a4)
.L14:
	.loc 1 492 5 is_stmt 1
	.loc 1 492 21 is_stmt 0
	lhu	a1,0(a3)
	.loc 1 492 15
	sh	a1,-8(s0)
	.loc 1 493 5 is_stmt 1
	.loc 1 493 13 is_stmt 0
	lhu	a3,0(a3)
.LVL18:
	.loc 1 493 8
	li	a1,8192
	beq	a3,a1,.L12
	.loc 1 494 7 is_stmt 1
.LVL19:
.LBB103:
.LBB104:
	.loc 1 453 3
.LBE104:
.LBE103:
.LBE100:
.LBE99:
	.loc 1 459 3
.LBB111:
.LBB109:
	.loc 1 494 36 is_stmt 0
	add	a3,a5,a3
	sh	a2,2(a3)
.LVL20:
.L12:
	.loc 1 499 3 is_stmt 1
	.loc 1 499 10 is_stmt 0
	lhu	a2,-6(s0)
.LVL21:
.LBB105:
.LBB106:
	.loc 1 453 3 is_stmt 1
	.loc 1 453 10 is_stmt 0
	add	a3,a5,a2
.LVL22:
.LBE106:
.LBE105:
	.loc 1 500 3 is_stmt 1
	.loc 1 500 6 is_stmt 0
	beq	s1,a3,.L16
	.loc 1 500 19
	lbu	a1,4(a3)
	bne	a1,zero,.L16
	.loc 1 502 5 is_stmt 1
	.loc 1 502 8 is_stmt 0
	lw	a1,0(a4)
	bne	s1,a1,.L18
	.loc 1 503 7 is_stmt 1
	.loc 1 503 13 is_stmt 0
	sw	a3,0(a4)
.L18:
	.loc 1 505 5 is_stmt 1
	.loc 1 505 21 is_stmt 0
	lhu	a4,-8(s0)
	.loc 1 505 16
	sh	a4,0(a3)
	.loc 1 506 5 is_stmt 1
	.loc 1 506 12 is_stmt 0
	lhu	a4,-8(s0)
	.loc 1 506 8
	li	a3,8192
.LVL23:
	beq	a4,a3,.L16
	.loc 1 507 7 is_stmt 1
.LVL24:
.LBB107:
.LBB108:
	.loc 1 453 3
.LBE108:
.LBE107:
.LBE109:
.LBE111:
	.loc 1 459 3
.LBB112:
.LBB110:
	.loc 1 507 35 is_stmt 0
	add	a5,a5,a4
.LVL25:
	sh	a2,2(a5)
.L16:
.LVL26:
.LBE110:
.LBE112:
	.loc 1 681 3 is_stmt 1
	.loc 1 685 3
	.loc 1 686 1 is_stmt 0
	lw	s0,24(sp)
	.cfi_restore 8
.LVL27:
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s1,20(sp)
	.cfi_restore 9
.LVL28:
	lw	s2,16(sp)
	.cfi_restore 18
	lw	s3,12(sp)
	.cfi_restore 19
	lw	s4,8(sp)
	.cfi_restore 20
	.loc 1 685 3
	addi	a0,s5,%lo(.LANCHOR3)
	.loc 1 686 1
	lw	s5,4(sp)
	.cfi_restore 21
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	.loc 1 685 3
	tail	sys_mutex_unlock
.LVL29:
.L2:
	ret
	.cfi_endproc
.LFE10:
	.size	mem_free, .-mem_free
	.section	.text.mem_trim,"ax",@progbits
	.align	1
	.globl	mem_trim
	.type	mem_trim, @function
mem_trim:
.LFB11:
	.loc 1 700 1 is_stmt 1
	.cfi_startproc
.LVL30:
	.loc 1 701 3
	.loc 1 702 3
	.loc 1 703 3
	.loc 1 705 3
	.loc 1 709 3
	.loc 1 700 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	.cfi_offset 8, -8
	.loc 1 709 42
	addi	s0,a1,3
	.loc 1 709 11
	andi	s0,s0,-4
	slli	s0,s0,16
	.loc 1 700 1
	sw	s3,12(sp)
	sw	ra,28(sp)
	sw	s1,20(sp)
	sw	s2,16(sp)
	sw	s4,8(sp)
	sw	s5,4(sp)
	sw	s6,0(sp)
	.cfi_offset 19, -20
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.loc 1 709 11
	srli	s0,s0,16
.LVL31:
	.loc 1 710 3 is_stmt 1
	.loc 1 710 6 is_stmt 0
	li	a5,11
	.loc 1 700 1
	mv	s3,a0
	.loc 1 710 6
	bleu	s0,a5,.L34
	.loc 1 717 3 is_stmt 1
	.loc 1 717 6 is_stmt 0
	li	a5,8192
	bleu	s0,a5,.L24
.LVL32:
.L37:
	.loc 1 718 11
	li	s3,0
	j	.L25
.LVL33:
.L34:
	.loc 1 712 13
	li	s0,12
.LVL34:
.L24:
	.loc 1 717 54 discriminator 1
	bgtu	a1,s0,.L37
	.loc 1 721 3 is_stmt 1
	.loc 1 721 8
	.loc 1 721 27 is_stmt 0
	lui	s5,%hi(.LANCHOR0)
	addi	s5,s5,%lo(.LANCHOR0)
	lw	a5,0(s5)
	.loc 1 721 80 is_stmt 1
	.loc 1 721 90
	.loc 1 724 3
	.loc 1 724 6 is_stmt 0
	bgtu	a5,s3,.L26
	.loc 1 724 34 discriminator 1
	lui	a4,%hi(.LANCHOR1)
	lw	a4,%lo(.LANCHOR1)(a4)
	bgtu	a4,s3,.L27
.L26:
	.loc 1 725 5 is_stmt 1
	.loc 1 727 5
.LBB113:
	.loc 1 727 10
	.loc 1 727 32
	.loc 1 727 44 is_stmt 0
	call	sys_arch_protect
.LVL35:
	.loc 1 727 64 is_stmt 1
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	lhu	a4,180(a5)
	addi	a4,a4,1
	sh	a4,180(a5)
	.loc 1 727 90
	call	sys_arch_unprotect
.LVL36:
.LBE113:
	.loc 1 727 128
	.loc 1 728 5
.L25:
	.loc 1 820 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	lw	s1,20(sp)
	.cfi_restore 9
	lw	s2,16(sp)
	.cfi_restore 18
	lw	s4,8(sp)
	.cfi_restore 20
	lw	s5,4(sp)
	.cfi_restore 21
	lw	s6,0(sp)
	.cfi_restore 22
	mv	a0,s3
	lw	s3,12(sp)
	.cfi_restore 19
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL37:
.L27:
	.cfi_restore_state
	.loc 1 732 3 is_stmt 1
	.loc 1 737 3
.LBB114:
.LBB115:
	.loc 1 459 3
	lhu	s2,-8(s3)
.LBE115:
.LBE114:
	.loc 1 732 7 is_stmt 0
	addi	s1,s3,-8
.LVL38:
.LBB117:
.LBB116:
	.loc 1 459 35
	sub	s1,s1,a5
.LVL39:
	addi	s2,s2,-8
	.loc 1 459 10
	slli	s1,s1,16
	slli	s2,s2,16
	srli	s1,s1,16
.LVL40:
.LBE116:
.LBE117:
	.loc 1 739 3 is_stmt 1
	srli	s2,s2,16
	.loc 1 739 8 is_stmt 0
	sub	s4,s2,s1
	slli	s4,s4,16
	srli	s4,s4,16
.LVL41:
	.loc 1 740 3 is_stmt 1
	.loc 1 740 8
	.loc 1 740 34
	.loc 1 740 44
	.loc 1 741 3
	.loc 1 741 6 is_stmt 0
	bltu	s4,s0,.L37
	.loc 1 745 3 is_stmt 1
	.loc 1 745 6 is_stmt 0
	beq	s4,s0,.L25
	.loc 1 751 3 is_stmt 1
	lui	s6,%hi(.LANCHOR3)
	addi	a0,s6,%lo(.LANCHOR3)
.LVL42:
	call	sys_mutex_lock
.LVL43:
	.loc 1 753 3
.LBB118:
.LBB119:
	.loc 1 453 3
	.loc 1 453 32 is_stmt 0
	lw	a5,0(s5)
	lhu	a2,-8(s3)
	.loc 1 453 10
	add	a2,a5,a2
.LVL44:
.LBE119:
.LBE118:
	.loc 1 754 3 is_stmt 1
	.loc 1 754 6 is_stmt 0
	lbu	a4,4(a2)
	bne	a4,zero,.L28
.LBB120:
	.loc 1 756 5 is_stmt 1
	.loc 1 757 5
	.loc 1 757 10
	.loc 1 757 68
	.loc 1 757 78
	.loc 1 759 5
	.loc 1 762 15 is_stmt 0
	lui	a1,%hi(.LANCHOR2)
	.loc 1 761 10
	addi	a4,s1,8
	.loc 1 762 15
	addi	a1,a1,%lo(.LANCHOR2)
	.loc 1 761 10
	add	a4,s0,a4
	.loc 1 762 8
	lw	a7,0(a1)
	.loc 1 761 10
	slli	a4,a4,16
	srli	a4,a4,16
	.loc 1 759 10
	lhu	a6,0(a2)
.LVL45:
	.loc 1 761 5 is_stmt 1
	.loc 1 762 5
.LBB121:
.LBB122:
	.loc 1 453 10 is_stmt 0
	add	a3,a5,a4
.LBE122:
.LBE121:
	.loc 1 762 8
	bne	a7,a2,.L29
	.loc 1 763 7 is_stmt 1
.LVL46:
.LBB124:
.LBB123:
	.loc 1 453 3
.LBE123:
.LBE124:
	.loc 1 763 13 is_stmt 0
	sw	a3,0(a1)
.L29:
	.loc 1 765 5 is_stmt 1
.LVL47:
.LBE120:
	.loc 1 453 3
.LBB127:
	.loc 1 766 5
	.loc 1 766 16 is_stmt 0
	sb	zero,4(a3)
	.loc 1 768 5 is_stmt 1
	.loc 1 768 16 is_stmt 0
	sh	a6,0(a3)
	.loc 1 770 5 is_stmt 1
	.loc 1 770 16 is_stmt 0
	sh	s1,2(a3)
	.loc 1 772 5 is_stmt 1
	.loc 1 772 15 is_stmt 0
	sh	a4,-8(s3)
	.loc 1 776 5 is_stmt 1
	.loc 1 776 13 is_stmt 0
	lhu	a3,0(a3)
	.loc 1 776 8
	li	a2,8192
	beq	a3,a2,.L30
	.loc 1 777 7 is_stmt 1
.LVL48:
.LBB125:
.LBB126:
	.loc 1 453 3
.LBE126:
.LBE125:
	.loc 1 777 36 is_stmt 0
	add	a5,a5,a3
.LVL49:
	sh	a4,2(a5)
.L30:
	.loc 1 779 5 is_stmt 1
	.loc 1 779 25 is_stmt 0
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	.loc 1 779 27
	sub	s2,s1,s2
	lhu	s1,176(a5)
.LVL50:
	add	s2,s2,s1
	add	s0,s0,s2
.LVL51:
.L39:
.LBE127:
	.loc 1 802 25
	sh	s0,176(a5)
.LVL52:
.L31:
	.loc 1 814 3 is_stmt 1
	.loc 1 818 3
	addi	a0,s6,%lo(.LANCHOR3)
	call	sys_mutex_unlock
.LVL53:
	.loc 1 819 3
	.loc 1 819 10 is_stmt 0
	j	.L25
.LVL54:
.L28:
	.loc 1 781 10 is_stmt 1
	.loc 1 781 13 is_stmt 0
	addi	a4,s0,20
	slli	a4,a4,16
	srli	a4,a4,16
	bltu	s4,a4,.L31
	.loc 1 789 5 is_stmt 1
	.loc 1 789 10 is_stmt 0
	addi	a4,s1,8
	.loc 1 792 14
	lui	a2,%hi(.LANCHOR2)
.LVL55:
	.loc 1 789 10
	add	a4,s0,a4
	.loc 1 792 14
	addi	a2,a2,%lo(.LANCHOR2)
	.loc 1 789 10
	slli	a4,a4,16
	.loc 1 792 8
	lw	a1,0(a2)
	.loc 1 789 10
	srli	a4,a4,16
.LVL56:
	.loc 1 790 5 is_stmt 1
	.loc 1 790 10
	.loc 1 790 68
	.loc 1 790 78
	.loc 1 791 5
.LBB128:
.LBB129:
	.loc 1 453 3
	.loc 1 453 10 is_stmt 0
	add	a3,a5,a4
.LVL57:
.LBE129:
.LBE128:
	.loc 1 792 5 is_stmt 1
	.loc 1 792 8 is_stmt 0
	bleu	a1,a3,.L32
	.loc 1 793 7 is_stmt 1
	.loc 1 793 13 is_stmt 0
	sw	a3,0(a2)
.L32:
	.loc 1 795 5 is_stmt 1
	.loc 1 795 16 is_stmt 0
	sb	zero,4(a3)
	.loc 1 796 5 is_stmt 1
	.loc 1 796 21 is_stmt 0
	lhu	a2,-8(s3)
	.loc 1 797 16
	sh	s1,2(a3)
	.loc 1 796 16
	sh	a2,0(a3)
	.loc 1 797 5 is_stmt 1
	.loc 1 798 5
	.loc 1 798 15 is_stmt 0
	sh	a4,-8(s3)
	.loc 1 799 5 is_stmt 1
	.loc 1 799 13 is_stmt 0
	lhu	a3,0(a3)
.LVL58:
	.loc 1 799 8
	li	a2,8192
	beq	a3,a2,.L33
	.loc 1 800 7 is_stmt 1
.LVL59:
.LBB130:
.LBB131:
	.loc 1 453 3
.LBE131:
.LBE130:
	.loc 1 800 36 is_stmt 0
	add	a5,a5,a3
.LVL60:
	sh	a4,2(a5)
.L33:
	.loc 1 802 5 is_stmt 1
	.loc 1 802 25 is_stmt 0
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	.loc 1 802 27
	sub	s1,s1,s2
.LVL61:
	lhu	s2,176(a5)
	add	s1,s1,s2
	add	s0,s0,s1
	j	.L39
	.cfi_endproc
.LFE11:
	.size	mem_trim, .-mem_trim
	.section	.text.mem_malloc,"ax",@progbits
	.align	1
	.globl	mem_malloc
	.type	mem_malloc, @function
mem_malloc:
.LFB12:
	.loc 1 832 1 is_stmt 1
	.cfi_startproc
.LVL62:
	.loc 1 833 3
	.loc 1 834 3
	.loc 1 838 3
	.loc 1 840 3
	.loc 1 840 6 is_stmt 0
	beq	a0,zero,.L54
	.loc 1 832 1
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s1,4(sp)
	.cfi_offset 9, -12
	.loc 1 846 38
	addi	s1,a0,3
	.loc 1 846 8
	andi	s1,s1,-4
	slli	s1,s1,16
	.loc 1 832 1
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.loc 1 846 8
	srli	s1,s1,16
	.loc 1 847 6
	li	a4,11
	mv	a5,a0
	.loc 1 846 3 is_stmt 1
.LVL63:
	.loc 1 847 3
	.loc 1 847 6 is_stmt 0
	bleu	s1,a4,.L55
	.loc 1 854 3 is_stmt 1
	.loc 1 854 6 is_stmt 0
	li	a4,8192
	.loc 1 841 11
	li	a0,0
.LVL64:
	.loc 1 854 6
	bleu	s1,a4,.L42
.LVL65:
.L40:
	.loc 1 976 1
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	lw	s1,4(sp)
	.cfi_restore 9
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL66:
.L55:
	.cfi_restore_state
	.loc 1 849 10
	li	s1,12
.LVL67:
.L42:
	.loc 1 841 11 discriminator 1
	li	a0,0
	.loc 1 854 51 discriminator 1
	bgtu	a5,s1,.L40
	.loc 1 859 3 is_stmt 1
	lui	s0,%hi(.LANCHOR3)
	addi	a0,s0,%lo(.LANCHOR3)
	call	sys_mutex_lock
.LVL68:
	.loc 1 860 3
	.loc 1 870 5
	.loc 1 870 16 is_stmt 0
	lui	a3,%hi(.LANCHOR2)
.LBB132:
.LBB133:
	.loc 1 459 35
	lui	a5,%hi(.LANCHOR0)
.LBE133:
.LBE132:
	.loc 1 870 16
	lw	a6,%lo(.LANCHOR2)(a3)
.LVL69:
.LBB136:
.LBB134:
	.loc 1 459 3 is_stmt 1
	.loc 1 459 35 is_stmt 0
	lw	a7,%lo(.LANCHOR0)(a5)
.LBE134:
.LBE136:
	.loc 1 870 76
	li	t1,8192
	addi	t3,a3,%lo(.LANCHOR2)
.LBB137:
.LBB135:
	.loc 1 459 35
	sub	a5,a6,a7
	.loc 1 459 10
	slli	a4,a5,16
	srli	a4,a4,16
.LVL70:
	mv	a0,s0
.LBE135:
.LBE137:
	.loc 1 870 76
	sub	a3,t1,s1
	.loc 1 887 22
	li	a1,-8
.LVL71:
.L63:
	.loc 1 870 35 is_stmt 1 discriminator 1
	.loc 1 870 5 is_stmt 0 discriminator 1
	bltu	a4,a3,.L53
	.loc 1 971 3 is_stmt 1
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	lhu	a4,172(a5)
.LVL72:
	.loc 1 973 3 is_stmt 0
	addi	a0,a0,%lo(.LANCHOR3)
	.loc 1 971 3
	addi	a4,a4,1
	sh	a4,172(a5)
	.loc 1 972 3 is_stmt 1
	.loc 1 973 3
	call	sys_mutex_unlock
.LVL73:
	.loc 1 974 3
	.loc 1 975 3
	.loc 1 975 9 is_stmt 0
	li	a0,0
	j	.L40
.LVL74:
.L53:
	.loc 1 872 7 is_stmt 1
.LBB138:
.LBB139:
	.loc 1 453 3
	.loc 1 453 10 is_stmt 0
	add	s0,a7,a4
.LVL75:
.LBE139:
.LBE138:
	.loc 1 886 7 is_stmt 1
	.loc 1 886 10 is_stmt 0
	lbu	a2,4(s0)
	.loc 1 887 15
	lhu	a5,0(s0)
	.loc 1 886 10
	bne	a2,zero,.L59
	.loc 1 887 22 discriminator 1
	sub	a2,a1,a4
	add	a2,a2,a5
	.loc 1 886 24 discriminator 1
	bltu	a2,s1,.L59
	.loc 1 891 9 is_stmt 1
	.loc 1 891 134 is_stmt 0
	addi	a1,s1,20
	slli	a1,a1,16
	lui	a3,%hi(lwip_stats)
	srli	a1,a1,16
	addi	a3,a3,%lo(lwip_stats)
	.loc 1 891 12
	bltu	a2,a1,.L44
	.loc 1 902 11 is_stmt 1
	.loc 1 902 16 is_stmt 0
	addi	a5,s1,8
	add	a5,a4,a5
	slli	a5,a5,16
	srli	a5,a5,16
.LVL76:
	.loc 1 903 11 is_stmt 1
	.loc 1 903 16
	.loc 1 903 69
	.loc 1 903 79
	.loc 1 905 11
.LBB140:
.LBB141:
	.loc 1 453 3
	.loc 1 453 10 is_stmt 0
	add	a2,a7,a5
.LVL77:
.LBE141:
.LBE140:
	.loc 1 906 11 is_stmt 1
	.loc 1 906 22 is_stmt 0
	sb	zero,4(a2)
	.loc 1 907 11 is_stmt 1
	.loc 1 907 27 is_stmt 0
	lhu	a1,0(s0)
	.loc 1 908 22
	sh	a4,2(a2)
	.loc 1 911 21
	li	a4,1
.LVL78:
	.loc 1 907 22
	sh	a1,0(a2)
	.loc 1 908 11 is_stmt 1
	.loc 1 910 11
	.loc 1 910 21 is_stmt 0
	sh	a5,0(s0)
.LVL79:
	.loc 1 911 11 is_stmt 1
	.loc 1 911 21 is_stmt 0
	sb	a4,4(s0)
	.loc 1 913 11 is_stmt 1
	.loc 1 913 19 is_stmt 0
	lhu	a4,0(a2)
	.loc 1 913 14
	beq	a4,t1,.L45
	.loc 1 914 13 is_stmt 1
.LVL80:
.LBB142:
.LBB143:
	.loc 1 453 3
.LBE143:
.LBE142:
	.loc 1 914 42 is_stmt 0
	add	a4,a7,a4
	sh	a5,2(a4)
.L45:
	.loc 1 916 11 is_stmt 1
	.loc 1 916 16
	.loc 1 916 38 is_stmt 0
	lhu	a5,176(a3)
.LVL81:
	addi	a5,a5,8
	add	s1,s1,a5
	slli	s1,s1,16
	.loc 1 916 132
	lhu	a5,178(a3)
	.loc 1 916 38
	srli	s1,s1,16
	.loc 1 916 36
	sh	s1,176(a3)
	.loc 1 916 129 is_stmt 1
	.loc 1 916 132 is_stmt 0
	bgeu	a5,s1,.L47
	.loc 1 916 177 is_stmt 1 discriminator 1
	.loc 1 916 196 is_stmt 0 discriminator 1
	sh	s1,178(a3)
.LVL82:
.L47:
	.loc 1 926 202 is_stmt 1 discriminator 3
	.loc 1 931 9 discriminator 3
	.loc 1 931 12 is_stmt 0 discriminator 3
	bne	a6,s0,.L49
.LBB144:
	.loc 1 934 35
	lui	a5,%hi(.LANCHOR1)
	lw	a5,%lo(.LANCHOR1)(a5)
.L50:
.LVL83:
	.loc 1 934 17 is_stmt 1
	lbu	a4,4(a6)
	beq	a4,zero,.L51
	.loc 1 934 28 is_stmt 0 discriminator 1
	bne	a5,a6,.L52
.L51:
	.loc 1 948 11 is_stmt 1
	.loc 1 948 17 is_stmt 0
	sw	a6,0(t3)
	.loc 1 949 11 is_stmt 1
	.loc 1 949 16
.LVL84:
.L49:
	.loc 1 949 65 discriminator 3
	.loc 1 949 75 discriminator 3
.LBE144:
	.loc 1 951 9 discriminator 3
	.loc 1 952 9 discriminator 3
	addi	a0,a0,%lo(.LANCHOR3)
	call	sys_mutex_unlock
.LVL85:
	.loc 1 953 9 discriminator 3
	.loc 1 953 14 discriminator 3
	.loc 1 953 115 discriminator 3
	.loc 1 953 125 discriminator 3
	.loc 1 955 9 discriminator 3
	.loc 1 955 14 discriminator 3
	.loc 1 955 97 discriminator 3
	.loc 1 955 107 discriminator 3
	.loc 1 957 9 discriminator 3
	.loc 1 957 14 discriminator 3
	.loc 1 957 58 discriminator 3
	.loc 1 957 68 discriminator 3
	.loc 1 963 9 discriminator 3
	.loc 1 964 9 discriminator 3
	.loc 1 964 75 is_stmt 0 discriminator 3
	addi	a0,s0,8
	j	.L40
.LVL86:
.L44:
	.loc 1 925 11 is_stmt 1
	.loc 1 925 21 is_stmt 0
	li	a2,1
	sb	a2,4(s0)
	.loc 1 926 11 is_stmt 1
	.loc 1 926 16
.LVL87:
	.loc 1 459 3
	.loc 1 926 38 is_stmt 0
	lhu	a2,176(a3)
	add	a5,a5,a2
	sub	a5,a5,a4
	slli	a5,a5,16
	.loc 1 926 106
	lhu	a4,178(a3)
.LVL88:
	.loc 1 926 38
	srli	a5,a5,16
	.loc 1 926 36
	sh	a5,176(a3)
	.loc 1 926 103 is_stmt 1
	.loc 1 926 106 is_stmt 0
	bgeu	a4,a5,.L47
	.loc 1 926 151 is_stmt 1 discriminator 1
	.loc 1 926 170 is_stmt 0 discriminator 1
	sh	a5,178(a3)
	j	.L47
.LVL89:
.L52:
.LBB147:
	.loc 1 946 13 is_stmt 1
.LBB145:
.LBB146:
	.loc 1 453 3
	.loc 1 453 32 is_stmt 0
	lhu	a6,0(a6)
.LVL90:
	.loc 1 453 10
	add	a6,a7,a6
.LVL91:
	j	.L50
.LVL92:
.L59:
.LBE146:
.LBE145:
.LBE147:
	mv	a4,a5
.LVL93:
	j	.L63
.LVL94:
.L54:
	.cfi_def_cfa_offset 0
	.cfi_restore 1
	.cfi_restore 8
	.cfi_restore 9
	.loc 1 841 11
	li	a0,0
.LVL95:
	.loc 1 976 1
	ret
	.cfi_endproc
.LFE12:
	.size	mem_malloc, .-mem_malloc
	.section	.text.mem_calloc,"ax",@progbits
	.align	1
	.globl	mem_calloc
	.type	mem_calloc, @function
mem_calloc:
.LFB13:
	.loc 1 1000 1 is_stmt 1
	.cfi_startproc
.LVL96:
	.loc 1 1001 3
	.loc 1 1002 3
	.loc 1 1002 10 is_stmt 0
	mul	a2,a0,a1
.LVL97:
	.loc 1 1004 3 is_stmt 1
	.loc 1 1000 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	ra,28(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	.loc 1 1006 11
	li	s0,0
	.loc 1 1004 6
	slli	a5,a2,16
	srli	a5,a5,16
	bne	a2,a5,.L68
	.loc 1 1010 3 is_stmt 1
	.loc 1 1010 7 is_stmt 0
	mv	a0,a5
.LVL98:
	sw	a2,12(sp)
	call	mem_malloc
.LVL99:
	mv	s0,a0
.LVL100:
	.loc 1 1011 3 is_stmt 1
	.loc 1 1011 6 is_stmt 0
	beq	a0,zero,.L68
	.loc 1 1013 5 is_stmt 1
	lw	a2,12(sp)
	li	a1,0
	call	memset
.LVL101:
.L68:
	.loc 1 1016 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_restore 1
	mv	a0,s0
	lw	s0,24(sp)
	.cfi_restore 8
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE13:
	.size	mem_calloc, .-mem_calloc
	.globl	ram_heap
	.section	.sbss.lfree,"aw",@nobits
	.align	2
	.set	.LANCHOR2,. + 0
	.type	lfree, @object
	.size	lfree, 4
lfree:
	.zero	4
	.section	.sbss.mem_mutex,"aw",@nobits
	.align	2
	.set	.LANCHOR3,. + 0
	.type	mem_mutex, @object
	.size	mem_mutex, 4
mem_mutex:
	.zero	4
	.section	.sbss.ram,"aw",@nobits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	ram, @object
	.size	ram, 4
ram:
	.zero	4
	.section	.sbss.ram_end,"aw",@nobits
	.align	2
	.set	.LANCHOR1,. + 0
	.type	ram_end, @object
	.size	ram_end, 4
ram_end:
	.zero	4
	.section	.wifi_ram,"aw"
	.align	2
	.type	ram_heap, @object
	.size	ram_heap, 8211
ram_heap:
	.zero	8211
	.text
.Letext0:
	.file 2 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/lwip-port/arch/cc.h"
	.file 3 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 4 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h"
	.file 5 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 6 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/arch.h"
	.file 7 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/mem.h"
	.file 8 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/queue.h"
	.file 9 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/semphr.h"
	.file 10 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/lwip-port/arch/sys_arch.h"
	.file 11 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/err.h"
	.file 12 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/memp.h"
	.file 13 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/stats.h"
	.file 14 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h"
	.file 15 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/sys.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xcda
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF125
	.byte	0xc
	.4byte	.LASF126
	.4byte	.LASF127
	.4byte	.Ldebug_ranges0+0x110
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.4byte	.LASF1
	.byte	0x2
	.byte	0x25
	.byte	0xd
	.4byte	0x31
	.byte	0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.byte	0x2
	.4byte	.LASF2
	.byte	0x3
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
	.byte	0x2
	.4byte	.LASF5
	.byte	0x3
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
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.byte	0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF9
	.byte	0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.byte	0x2
	.4byte	.LASF11
	.byte	0x3
	.byte	0xe8
	.byte	0x16
	.4byte	0x94
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.byte	0x2
	.4byte	.LASF13
	.byte	0x4
	.byte	0xd1
	.byte	0x16
	.4byte	0x94
	.byte	0x5
	.byte	0x4
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.byte	0x2
	.4byte	.LASF15
	.byte	0x5
	.byte	0x18
	.byte	0x13
	.4byte	0x3f
	.byte	0x2
	.4byte	.LASF16
	.byte	0x5
	.byte	0x24
	.byte	0x14
	.4byte	0x59
	.byte	0x2
	.4byte	.LASF17
	.byte	0x5
	.byte	0x52
	.byte	0x15
	.4byte	0x88
	.byte	0x2
	.4byte	.LASF18
	.byte	0x6
	.byte	0x7d
	.byte	0x11
	.4byte	0xb0
	.byte	0x2
	.4byte	.LASF19
	.byte	0x6
	.byte	0x7f
	.byte	0x12
	.4byte	0xbc
	.byte	0x2
	.4byte	.LASF20
	.byte	0x6
	.byte	0x87
	.byte	0x13
	.4byte	0xc8
	.byte	0x2
	.4byte	.LASF21
	.byte	0x7
	.byte	0x43
	.byte	0xf
	.4byte	0xe0
	.byte	0x6
	.byte	0x5
	.byte	0x4
	.4byte	0x31
	.byte	0xb
	.byte	0x35
	.byte	0xe
	.4byte	0x179
	.byte	0x7
	.4byte	.LASF22
	.byte	0
	.byte	0x8
	.4byte	.LASF23
	.byte	0x7f
	.byte	0x8
	.4byte	.LASF24
	.byte	0x7e
	.byte	0x8
	.4byte	.LASF25
	.byte	0x7d
	.byte	0x8
	.4byte	.LASF26
	.byte	0x7c
	.byte	0x8
	.4byte	.LASF27
	.byte	0x7b
	.byte	0x8
	.4byte	.LASF28
	.byte	0x7a
	.byte	0x8
	.4byte	.LASF29
	.byte	0x79
	.byte	0x8
	.4byte	.LASF30
	.byte	0x78
	.byte	0x8
	.4byte	.LASF31
	.byte	0x77
	.byte	0x8
	.4byte	.LASF32
	.byte	0x76
	.byte	0x8
	.4byte	.LASF33
	.byte	0x75
	.byte	0x8
	.4byte	.LASF34
	.byte	0x74
	.byte	0x8
	.4byte	.LASF35
	.byte	0x73
	.byte	0x8
	.4byte	.LASF36
	.byte	0x72
	.byte	0x8
	.4byte	.LASF37
	.byte	0x71
	.byte	0x8
	.4byte	.LASF38
	.byte	0x70
	.byte	0
	.byte	0x2
	.4byte	.LASF39
	.byte	0x8
	.byte	0x30
	.byte	0x22
	.4byte	0x185
	.byte	0x9
	.byte	0x4
	.4byte	0x18b
	.byte	0xa
	.4byte	.LASF128
	.byte	0x2
	.4byte	.LASF40
	.byte	0x9
	.byte	0x25
	.byte	0x17
	.4byte	0x179
	.byte	0x2
	.4byte	.LASF41
	.byte	0xa
	.byte	0x2d
	.byte	0x1b
	.4byte	0x190
	.byte	0x6
	.byte	0x7
	.byte	0x4
	.4byte	0x94
	.byte	0xc
	.byte	0x34
	.byte	0xe
	.4byte	0x217
	.byte	0x7
	.4byte	.LASF42
	.byte	0
	.byte	0x7
	.4byte	.LASF43
	.byte	0x1
	.byte	0x7
	.4byte	.LASF44
	.byte	0x2
	.byte	0x7
	.4byte	.LASF45
	.byte	0x3
	.byte	0x7
	.4byte	.LASF46
	.byte	0x4
	.byte	0x7
	.4byte	.LASF47
	.byte	0x5
	.byte	0x7
	.4byte	.LASF48
	.byte	0x6
	.byte	0x7
	.4byte	.LASF49
	.byte	0x7
	.byte	0x7
	.4byte	.LASF50
	.byte	0x8
	.byte	0x7
	.4byte	.LASF51
	.byte	0x9
	.byte	0x7
	.4byte	.LASF52
	.byte	0xa
	.byte	0x7
	.4byte	.LASF53
	.byte	0xb
	.byte	0x7
	.4byte	.LASF54
	.byte	0xc
	.byte	0x7
	.4byte	.LASF55
	.byte	0xd
	.byte	0x7
	.4byte	.LASF56
	.byte	0xe
	.byte	0x7
	.4byte	.LASF57
	.byte	0xf
	.byte	0
	.byte	0xb
	.4byte	.LASF61
	.byte	0xa
	.byte	0xd
	.byte	0x62
	.byte	0x8
	.4byte	0x266
	.byte	0xc
	.string	"err"
	.byte	0xd
	.byte	0x66
	.byte	0x9
	.4byte	0xe0
	.byte	0
	.byte	0xd
	.4byte	.LASF58
	.byte	0xd
	.byte	0x67
	.byte	0xe
	.4byte	0xf8
	.byte	0x2
	.byte	0xd
	.4byte	.LASF59
	.byte	0xd
	.byte	0x68
	.byte	0xe
	.4byte	0xf8
	.byte	0x4
	.byte	0xc
	.string	"max"
	.byte	0xd
	.byte	0x69
	.byte	0xe
	.4byte	0xf8
	.byte	0x6
	.byte	0xd
	.4byte	.LASF60
	.byte	0xd
	.byte	0x6a
	.byte	0x9
	.4byte	0xe0
	.byte	0x8
	.byte	0
	.byte	0x9
	.byte	0x4
	.4byte	0x217
	.byte	0x9
	.byte	0x4
	.4byte	0xd4
	.byte	0xb
	.4byte	.LASF62
	.byte	0x18
	.byte	0xd
	.byte	0x40
	.byte	0x8
	.4byte	0x31b
	.byte	0xd
	.4byte	.LASF63
	.byte	0xd
	.byte	0x41
	.byte	0x9
	.4byte	0xe0
	.byte	0
	.byte	0xd
	.4byte	.LASF64
	.byte	0xd
	.byte	0x42
	.byte	0x9
	.4byte	0xe0
	.byte	0x2
	.byte	0xc
	.string	"fw"
	.byte	0xd
	.byte	0x43
	.byte	0x9
	.4byte	0xe0
	.byte	0x4
	.byte	0xd
	.4byte	.LASF65
	.byte	0xd
	.byte	0x44
	.byte	0x9
	.4byte	0xe0
	.byte	0x6
	.byte	0xd
	.4byte	.LASF66
	.byte	0xd
	.byte	0x45
	.byte	0x9
	.4byte	0xe0
	.byte	0x8
	.byte	0xd
	.4byte	.LASF67
	.byte	0xd
	.byte	0x46
	.byte	0x9
	.4byte	0xe0
	.byte	0xa
	.byte	0xd
	.4byte	.LASF68
	.byte	0xd
	.byte	0x47
	.byte	0x9
	.4byte	0xe0
	.byte	0xc
	.byte	0xd
	.4byte	.LASF69
	.byte	0xd
	.byte	0x48
	.byte	0x9
	.4byte	0xe0
	.byte	0xe
	.byte	0xd
	.4byte	.LASF70
	.byte	0xd
	.byte	0x49
	.byte	0x9
	.4byte	0xe0
	.byte	0x10
	.byte	0xd
	.4byte	.LASF71
	.byte	0xd
	.byte	0x4a
	.byte	0x9
	.4byte	0xe0
	.byte	0x12
	.byte	0xc
	.string	"err"
	.byte	0xd
	.byte	0x4b
	.byte	0x9
	.4byte	0xe0
	.byte	0x14
	.byte	0xd
	.4byte	.LASF72
	.byte	0xd
	.byte	0x4c
	.byte	0x9
	.4byte	0xe0
	.byte	0x16
	.byte	0
	.byte	0xb
	.4byte	.LASF73
	.byte	0x1c
	.byte	0xd
	.byte	0x50
	.byte	0x8
	.4byte	0x3df
	.byte	0xd
	.4byte	.LASF63
	.byte	0xd
	.byte	0x51
	.byte	0x9
	.4byte	0xe0
	.byte	0
	.byte	0xd
	.4byte	.LASF64
	.byte	0xd
	.byte	0x52
	.byte	0x9
	.4byte	0xe0
	.byte	0x2
	.byte	0xd
	.4byte	.LASF65
	.byte	0xd
	.byte	0x53
	.byte	0x9
	.4byte	0xe0
	.byte	0x4
	.byte	0xd
	.4byte	.LASF66
	.byte	0xd
	.byte	0x54
	.byte	0x9
	.4byte	0xe0
	.byte	0x6
	.byte	0xd
	.4byte	.LASF67
	.byte	0xd
	.byte	0x55
	.byte	0x9
	.4byte	0xe0
	.byte	0x8
	.byte	0xd
	.4byte	.LASF68
	.byte	0xd
	.byte	0x56
	.byte	0x9
	.4byte	0xe0
	.byte	0xa
	.byte	0xd
	.4byte	.LASF70
	.byte	0xd
	.byte	0x57
	.byte	0x9
	.4byte	0xe0
	.byte	0xc
	.byte	0xd
	.4byte	.LASF74
	.byte	0xd
	.byte	0x58
	.byte	0x9
	.4byte	0xe0
	.byte	0xe
	.byte	0xd
	.4byte	.LASF75
	.byte	0xd
	.byte	0x59
	.byte	0x9
	.4byte	0xe0
	.byte	0x10
	.byte	0xd
	.4byte	.LASF76
	.byte	0xd
	.byte	0x5a
	.byte	0x9
	.4byte	0xe0
	.byte	0x12
	.byte	0xd
	.4byte	.LASF77
	.byte	0xd
	.byte	0x5b
	.byte	0x9
	.4byte	0xe0
	.byte	0x14
	.byte	0xd
	.4byte	.LASF78
	.byte	0xd
	.byte	0x5c
	.byte	0x9
	.4byte	0xe0
	.byte	0x16
	.byte	0xd
	.4byte	.LASF79
	.byte	0xd
	.byte	0x5d
	.byte	0x9
	.4byte	0xe0
	.byte	0x18
	.byte	0xd
	.4byte	.LASF80
	.byte	0xd
	.byte	0x5e
	.byte	0x9
	.4byte	0xe0
	.byte	0x1a
	.byte	0
	.byte	0xb
	.4byte	.LASF81
	.byte	0x6
	.byte	0xd
	.byte	0x6e
	.byte	0x8
	.4byte	0x414
	.byte	0xd
	.4byte	.LASF59
	.byte	0xd
	.byte	0x6f
	.byte	0x9
	.4byte	0xe0
	.byte	0
	.byte	0xc
	.string	"max"
	.byte	0xd
	.byte	0x70
	.byte	0x9
	.4byte	0xe0
	.byte	0x2
	.byte	0xc
	.string	"err"
	.byte	0xd
	.byte	0x71
	.byte	0x9
	.4byte	0xe0
	.byte	0x4
	.byte	0
	.byte	0xb
	.4byte	.LASF82
	.byte	0x12
	.byte	0xd
	.byte	0x75
	.byte	0x8
	.4byte	0x449
	.byte	0xc
	.string	"sem"
	.byte	0xd
	.byte	0x76
	.byte	0x18
	.4byte	0x3df
	.byte	0
	.byte	0xd
	.4byte	.LASF83
	.byte	0xd
	.byte	0x77
	.byte	0x18
	.4byte	0x3df
	.byte	0x6
	.byte	0xd
	.4byte	.LASF84
	.byte	0xd
	.byte	0x78
	.byte	0x18
	.4byte	0x3df
	.byte	0xc
	.byte	0
	.byte	0xe
	.4byte	.LASF85
	.2byte	0x108
	.byte	0xd
	.byte	0xe8
	.byte	0x8
	.4byte	0x4de
	.byte	0xd
	.4byte	.LASF86
	.byte	0xd
	.byte	0xeb
	.byte	0x16
	.4byte	0x272
	.byte	0
	.byte	0xd
	.4byte	.LASF87
	.byte	0xd
	.byte	0xef
	.byte	0x16
	.4byte	0x272
	.byte	0x18
	.byte	0xc
	.string	"ip"
	.byte	0xd
	.byte	0xf7
	.byte	0x16
	.4byte	0x272
	.byte	0x30
	.byte	0xd
	.4byte	.LASF88
	.byte	0xd
	.byte	0xfb
	.byte	0x16
	.4byte	0x272
	.byte	0x48
	.byte	0xd
	.4byte	.LASF89
	.byte	0xd
	.byte	0xff
	.byte	0x15
	.4byte	0x31b
	.byte	0x60
	.byte	0xf
	.string	"udp"
	.byte	0xd
	.2byte	0x103
	.byte	0x16
	.4byte	0x272
	.byte	0x7c
	.byte	0xf
	.string	"tcp"
	.byte	0xd
	.2byte	0x107
	.byte	0x16
	.4byte	0x272
	.byte	0x94
	.byte	0xf
	.string	"mem"
	.byte	0xd
	.2byte	0x10b
	.byte	0x14
	.4byte	0x217
	.byte	0xac
	.byte	0x10
	.4byte	.LASF90
	.byte	0xd
	.2byte	0x10f
	.byte	0x15
	.4byte	0x4de
	.byte	0xb8
	.byte	0xf
	.string	"sys"
	.byte	0xd
	.2byte	0x113
	.byte	0x14
	.4byte	0x414
	.byte	0xf4
	.byte	0
	.byte	0x11
	.4byte	0x266
	.4byte	0x4ee
	.byte	0x12
	.4byte	0x94
	.byte	0xe
	.byte	0
	.byte	0x13
	.4byte	.LASF93
	.byte	0xd
	.2byte	0x130
	.byte	0x16
	.4byte	0x449
	.byte	0x14
	.string	"mem"
	.byte	0x6
	.byte	0x1
	.2byte	0x15d
	.byte	0x8
	.4byte	0x534
	.byte	0x10
	.4byte	.LASF91
	.byte	0x1
	.2byte	0x15f
	.byte	0xe
	.4byte	0xf8
	.byte	0
	.byte	0x10
	.4byte	.LASF92
	.byte	0x1
	.2byte	0x161
	.byte	0xe
	.4byte	0xf8
	.byte	0x2
	.byte	0x10
	.4byte	.LASF59
	.byte	0x1
	.2byte	0x163
	.byte	0x8
	.4byte	0xd4
	.byte	0x4
	.byte	0
	.byte	0x11
	.4byte	0xd4
	.4byte	0x545
	.byte	0x15
	.4byte	0x94
	.2byte	0x2012
	.byte	0
	.byte	0x16
	.4byte	.LASF94
	.byte	0x1
	.2byte	0x17b
	.byte	0x6
	.4byte	0x534
	.byte	0x5
	.byte	0x3
	.4byte	ram_heap
	.byte	0x17
	.string	"ram"
	.byte	0x1
	.2byte	0x180
	.byte	0xe
	.4byte	0x26c
	.byte	0x5
	.byte	0x3
	.4byte	ram
	.byte	0x18
	.4byte	.LASF95
	.byte	0x1
	.2byte	0x182
	.byte	0x14
	.4byte	0x57e
	.byte	0x5
	.byte	0x3
	.4byte	ram_end
	.byte	0x9
	.byte	0x4
	.4byte	0x4fb
	.byte	0x18
	.4byte	.LASF96
	.byte	0x1
	.2byte	0x186
	.byte	0x14
	.4byte	0x19c
	.byte	0x5
	.byte	0x3
	.4byte	mem_mutex
	.byte	0x18
	.4byte	.LASF97
	.byte	0x1
	.2byte	0x1a5
	.byte	0x15
	.4byte	0x57e
	.byte	0x5
	.byte	0x3
	.4byte	lfree
	.byte	0x19
	.4byte	.LASF101
	.byte	0x1
	.2byte	0x3e7
	.byte	0x1
	.4byte	0xa7
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x1
	.byte	0x9c
	.4byte	0x63d
	.byte	0x1a
	.4byte	.LASF98
	.byte	0x1
	.2byte	0x3e7
	.byte	0x17
	.4byte	0xf8
	.4byte	.LLST36
	.byte	0x1a
	.4byte	.LASF99
	.byte	0x1
	.2byte	0x3e7
	.byte	0x29
	.4byte	0xf8
	.4byte	.LLST37
	.byte	0x1b
	.string	"p"
	.byte	0x1
	.2byte	0x3e9
	.byte	0x9
	.4byte	0xa7
	.4byte	.LLST38
	.byte	0x1c
	.4byte	.LASF100
	.byte	0x1
	.2byte	0x3ea
	.byte	0xa
	.4byte	0x9b
	.4byte	.LLST39
	.byte	0x1d
	.4byte	.LVL99
	.4byte	0x63d
	.4byte	0x620
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x7
	.byte	0x91
	.byte	0x6c
	.byte	0x6
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x25
	.byte	0
	.byte	0x1f
	.4byte	.LVL101
	.4byte	0xc93
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
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
	.byte	0x91
	.byte	0x6c
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0x19
	.4byte	.LASF102
	.byte	0x1
	.2byte	0x33f
	.byte	0x1
	.4byte	0xa7
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x1
	.byte	0x9c
	.4byte	0x7ae
	.byte	0x1a
	.4byte	.LASF103
	.byte	0x1
	.2byte	0x33f
	.byte	0x17
	.4byte	0xf8
	.4byte	.LLST25
	.byte	0x1b
	.string	"ptr"
	.byte	0x1
	.2byte	0x341
	.byte	0xe
	.4byte	0xf8
	.4byte	.LLST26
	.byte	0x1c
	.4byte	.LASF104
	.byte	0x1
	.2byte	0x341
	.byte	0x13
	.4byte	0xf8
	.4byte	.LLST27
	.byte	0x1c
	.4byte	.LASF99
	.byte	0x1
	.2byte	0x341
	.byte	0x19
	.4byte	0xf8
	.4byte	.LLST28
	.byte	0x1b
	.string	"mem"
	.byte	0x1
	.2byte	0x342
	.byte	0xf
	.4byte	0x57e
	.4byte	.LLST29
	.byte	0x1c
	.4byte	.LASF105
	.byte	0x1
	.2byte	0x342
	.byte	0x15
	.4byte	0x57e
	.4byte	.LLST30
	.byte	0x20
	.4byte	.Ldebug_ranges0+0xf8
	.4byte	0x6f4
	.byte	0x1b
	.string	"cur"
	.byte	0x1
	.2byte	0x3a4
	.byte	0x17
	.4byte	0x57e
	.4byte	.LLST34
	.byte	0x21
	.4byte	0xc73
	.4byte	.LBB145
	.4byte	.LBE145-.LBB145
	.byte	0x1
	.2byte	0x3b2
	.byte	0x13
	.byte	0x22
	.4byte	0xc85
	.4byte	.LLST35
	.byte	0
	.byte	0
	.byte	0x23
	.4byte	0xc53
	.4byte	.LBB132
	.4byte	.Ldebug_ranges0+0xd8
	.byte	0x1
	.2byte	0x366
	.byte	0x10
	.4byte	0x713
	.byte	0x22
	.4byte	0xc65
	.4byte	.LLST31
	.byte	0
	.byte	0x24
	.4byte	0xc73
	.4byte	.LBB138
	.4byte	.LBE138-.LBB138
	.byte	0x1
	.2byte	0x368
	.byte	0xd
	.4byte	0x732
	.byte	0x22
	.4byte	0xc85
	.4byte	.LLST32
	.byte	0
	.byte	0x24
	.4byte	0xc73
	.4byte	.LBB140
	.4byte	.LBE140-.LBB140
	.byte	0x1
	.2byte	0x389
	.byte	0x12
	.4byte	0x751
	.byte	0x22
	.4byte	0xc85
	.4byte	.LLST33
	.byte	0
	.byte	0x24
	.4byte	0xc73
	.4byte	.LBB142
	.4byte	.LBE142-.LBB142
	.byte	0x1
	.2byte	0x392
	.byte	0xd
	.4byte	0x76c
	.byte	0x25
	.4byte	0xc85
	.byte	0
	.byte	0x1d
	.4byte	.LVL68
	.4byte	0xc9f
	.4byte	0x783
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR3
	.byte	0
	.byte	0x1d
	.4byte	.LVL73
	.4byte	0xcab
	.4byte	0x79a
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR3
	.byte	0
	.byte	0x1f
	.4byte	.LVL85
	.4byte	0xcab
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR3
	.byte	0
	.byte	0
	.byte	0x19
	.4byte	.LASF106
	.byte	0x1
	.2byte	0x2bb
	.byte	0x1
	.4byte	0xa7
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x1
	.byte	0x9c
	.4byte	0x970
	.byte	0x1a
	.4byte	.LASF107
	.byte	0x1
	.2byte	0x2bb
	.byte	0x10
	.4byte	0xa7
	.4byte	.LLST13
	.byte	0x1a
	.4byte	.LASF108
	.byte	0x1
	.2byte	0x2bb
	.byte	0x21
	.4byte	0xf8
	.4byte	.LLST14
	.byte	0x18
	.4byte	.LASF99
	.byte	0x1
	.2byte	0x2bd
	.byte	0xe
	.4byte	0xf8
	.byte	0x1
	.byte	0x64
	.byte	0x1c
	.4byte	.LASF109
	.byte	0x1
	.2byte	0x2bd
	.byte	0x14
	.4byte	0xf8
	.4byte	.LLST15
	.byte	0x1b
	.string	"ptr"
	.byte	0x1
	.2byte	0x2be
	.byte	0xe
	.4byte	0xf8
	.4byte	.LLST16
	.byte	0x1c
	.4byte	.LASF104
	.byte	0x1
	.2byte	0x2be
	.byte	0x13
	.4byte	0xf8
	.4byte	.LLST17
	.byte	0x1b
	.string	"mem"
	.byte	0x1
	.2byte	0x2bf
	.byte	0xf
	.4byte	0x57e
	.4byte	.LLST18
	.byte	0x1c
	.4byte	.LASF105
	.byte	0x1
	.2byte	0x2bf
	.byte	0x15
	.4byte	0x57e
	.4byte	.LLST19
	.byte	0x26
	.4byte	.LBB113
	.4byte	.LBE113-.LBB113
	.4byte	0x880
	.byte	0x1c
	.4byte	.LASF110
	.byte	0x1
	.2byte	0x2d7
	.byte	0x15
	.4byte	0x25
	.4byte	.LLST20
	.byte	0x27
	.4byte	.LVL35
	.4byte	0xcb7
	.byte	0x27
	.4byte	.LVL36
	.4byte	0xcc4
	.byte	0
	.byte	0x20
	.4byte	.Ldebug_ranges0+0xa8
	.4byte	0x8cd
	.byte	0x1c
	.4byte	.LASF91
	.byte	0x1
	.2byte	0x2f4
	.byte	0x10
	.4byte	0xf8
	.4byte	.LLST23
	.byte	0x23
	.4byte	0xc73
	.4byte	.LBB121
	.4byte	.Ldebug_ranges0+0xc0
	.byte	0x1
	.2byte	0x2fb
	.byte	0xf
	.4byte	0x8b5
	.byte	0x25
	.4byte	0xc85
	.byte	0
	.byte	0x21
	.4byte	0xc73
	.4byte	.LBB125
	.4byte	.LBE125-.LBB125
	.byte	0x1
	.2byte	0x309
	.byte	0x7
	.byte	0x25
	.4byte	0xc85
	.byte	0
	.byte	0
	.byte	0x23
	.4byte	0xc53
	.4byte	.LBB114
	.4byte	.Ldebug_ranges0+0x90
	.byte	0x1
	.2byte	0x2e1
	.byte	0x9
	.4byte	0x8ec
	.byte	0x22
	.4byte	0xc65
	.4byte	.LLST21
	.byte	0
	.byte	0x24
	.4byte	0xc73
	.4byte	.LBB118
	.4byte	.LBE118-.LBB118
	.byte	0x1
	.2byte	0x2f1
	.byte	0xa
	.4byte	0x90b
	.byte	0x22
	.4byte	0xc85
	.4byte	.LLST22
	.byte	0
	.byte	0x24
	.4byte	0xc73
	.4byte	.LBB128
	.4byte	.LBE128-.LBB128
	.byte	0x1
	.2byte	0x317
	.byte	0xc
	.4byte	0x92a
	.byte	0x22
	.4byte	0xc85
	.4byte	.LLST24
	.byte	0
	.byte	0x24
	.4byte	0xc73
	.4byte	.LBB130
	.4byte	.LBE130-.LBB130
	.byte	0x1
	.2byte	0x320
	.byte	0x7
	.4byte	0x945
	.byte	0x25
	.4byte	0xc85
	.byte	0
	.byte	0x1d
	.4byte	.LVL43
	.4byte	0xc9f
	.4byte	0x95c
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR3
	.byte	0
	.byte	0x1f
	.4byte	.LVL53
	.4byte	0xcab
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR3
	.byte	0
	.byte	0
	.byte	0x28
	.4byte	.LASF114
	.byte	0x1
	.2byte	0x269
	.byte	0x1
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x1
	.byte	0x9c
	.4byte	0xb7f
	.byte	0x1a
	.4byte	.LASF107
	.byte	0x1
	.2byte	0x269
	.byte	0x10
	.4byte	0xa7
	.4byte	.LLST1
	.byte	0x1b
	.string	"mem"
	.byte	0x1
	.2byte	0x26b
	.byte	0xf
	.4byte	0x57e
	.4byte	.LLST2
	.byte	0x29
	.4byte	0x9bc
	.byte	0x2a
	.4byte	.LASF110
	.byte	0x1
	.2byte	0x276
	.byte	0x15
	.4byte	0x25
	.byte	0
	.byte	0x29
	.4byte	0x9cf
	.byte	0x2a
	.4byte	.LASF110
	.byte	0x1
	.2byte	0x282
	.byte	0x15
	.4byte	0x25
	.byte	0
	.byte	0x20
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0x9fc
	.byte	0x1c
	.4byte	.LASF110
	.byte	0x1
	.2byte	0x290
	.byte	0x15
	.4byte	0x25
	.4byte	.LLST3
	.byte	0x27
	.4byte	.LVL6
	.4byte	0xcb7
	.byte	0x2b
	.4byte	.LVL8
	.4byte	0xcc4
	.byte	0
	.byte	0x29
	.4byte	0xa0f
	.byte	0x2a
	.4byte	.LASF110
	.byte	0x1
	.2byte	0x299
	.byte	0x15
	.4byte	0x25
	.byte	0
	.byte	0x24
	.4byte	0xb7f
	.4byte	.LBB87
	.4byte	.LBE87-.LBB87
	.byte	0x1
	.2byte	0x294
	.byte	0x8
	.4byte	0xa96
	.byte	0x22
	.4byte	0xb91
	.4byte	.LLST4
	.byte	0x2c
	.4byte	0xb9e
	.4byte	.LLST5
	.byte	0x2c
	.4byte	0xbab
	.4byte	.LLST6
	.byte	0x2c
	.4byte	0xbb8
	.4byte	.LLST7
	.byte	0x23
	.4byte	0xc53
	.4byte	.LBB89
	.4byte	.Ldebug_ranges0+0x40
	.byte	0x1
	.2byte	0x22b
	.byte	0xe
	.4byte	0xa63
	.byte	0x25
	.4byte	0xc65
	.byte	0
	.byte	0x23
	.4byte	0xc73
	.4byte	.LBB92
	.4byte	.Ldebug_ranges0+0x58
	.byte	0x1
	.2byte	0x22c
	.byte	0xa
	.4byte	0xa7e
	.byte	0x25
	.4byte	0xc85
	.byte	0
	.byte	0x21
	.4byte	0xc73
	.4byte	.LBB95
	.4byte	.LBE95-.LBB95
	.byte	0x1
	.2byte	0x22d
	.byte	0xa
	.byte	0x25
	.4byte	0xc85
	.byte	0
	.byte	0
	.byte	0x23
	.4byte	0xc1d
	.4byte	.LBB99
	.4byte	.Ldebug_ranges0+0x70
	.byte	0x1
	.2byte	0x2a8
	.byte	0x3
	.4byte	0xb3d
	.byte	0x22
	.4byte	0xc2b
	.4byte	.LLST8
	.byte	0x2d
	.4byte	.Ldebug_ranges0+0x70
	.byte	0x2c
	.4byte	0xc38
	.4byte	.LLST9
	.byte	0x2c
	.4byte	0xc45
	.4byte	.LLST10
	.byte	0x24
	.4byte	0xc73
	.4byte	.LBB101
	.4byte	.LBE101-.LBB101
	.byte	0x1
	.2byte	0x1e6
	.byte	0xa
	.4byte	0xaea
	.byte	0x22
	.4byte	0xc85
	.4byte	.LLST11
	.byte	0
	.byte	0x24
	.4byte	0xc73
	.4byte	.LBB103
	.4byte	.LBE103-.LBB103
	.byte	0x1
	.2byte	0x1ee
	.byte	0x7
	.4byte	0xb05
	.byte	0x25
	.4byte	0xc85
	.byte	0
	.byte	0x24
	.4byte	0xc73
	.4byte	.LBB105
	.4byte	.LBE105-.LBB105
	.byte	0x1
	.2byte	0x1f3
	.byte	0xa
	.4byte	0xb24
	.byte	0x22
	.4byte	0xc85
	.4byte	.LLST12
	.byte	0
	.byte	0x21
	.4byte	0xc73
	.4byte	.LBB107
	.4byte	.LBE107-.LBB107
	.byte	0x1
	.2byte	0x1fb
	.byte	0x7
	.byte	0x25
	.4byte	0xc85
	.byte	0
	.byte	0
	.byte	0
	.byte	0x1d
	.4byte	.LVL10
	.4byte	0xc9f
	.4byte	0xb54
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR3
	.byte	0
	.byte	0x1d
	.4byte	.LVL11
	.4byte	0xcab
	.4byte	0xb6b
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR3
	.byte	0
	.byte	0x2e
	.4byte	.LVL29
	.4byte	0xcab
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR3
	.byte	0
	.byte	0
	.byte	0x2f
	.4byte	.LASF116
	.byte	0x1
	.2byte	0x227
	.byte	0x1
	.4byte	0x31
	.byte	0x1
	.4byte	0xbc6
	.byte	0x30
	.string	"mem"
	.byte	0x1
	.2byte	0x227
	.byte	0x1c
	.4byte	0x57e
	.byte	0x2a
	.4byte	.LASF111
	.byte	0x1
	.2byte	0x229
	.byte	0xf
	.4byte	0x57e
	.byte	0x2a
	.4byte	.LASF112
	.byte	0x1
	.2byte	0x229
	.byte	0x16
	.4byte	0x57e
	.byte	0x2a
	.4byte	.LASF113
	.byte	0x1
	.2byte	0x22a
	.byte	0xe
	.4byte	0xf8
	.byte	0
	.byte	0x28
	.4byte	.LASF115
	.byte	0x1
	.2byte	0x204
	.byte	0x1
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0xc1d
	.byte	0x1b
	.string	"mem"
	.byte	0x1
	.2byte	0x206
	.byte	0xf
	.4byte	0x57e
	.4byte	.LLST0
	.byte	0x23
	.4byte	0xc73
	.4byte	.LBB53
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.2byte	0x213
	.byte	0xd
	.4byte	0xc09
	.byte	0x25
	.4byte	0xc85
	.byte	0
	.byte	0x2e
	.4byte	.LVL3
	.4byte	0xcd1
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR3
	.byte	0
	.byte	0
	.byte	0x31
	.4byte	.LASF129
	.byte	0x1
	.2byte	0x1da
	.byte	0x1
	.byte	0x1
	.4byte	0xc53
	.byte	0x30
	.string	"mem"
	.byte	0x1
	.2byte	0x1da
	.byte	0x18
	.4byte	0x57e
	.byte	0x2a
	.4byte	.LASF111
	.byte	0x1
	.2byte	0x1dc
	.byte	0xf
	.4byte	0x57e
	.byte	0x2a
	.4byte	.LASF112
	.byte	0x1
	.2byte	0x1dd
	.byte	0xf
	.4byte	0x57e
	.byte	0
	.byte	0x2f
	.4byte	.LASF117
	.byte	0x1
	.2byte	0x1c9
	.byte	0x1
	.4byte	0xf8
	.byte	0x1
	.4byte	0xc73
	.byte	0x30
	.string	"mem"
	.byte	0x1
	.2byte	0x1c9
	.byte	0x12
	.4byte	0xa7
	.byte	0
	.byte	0x2f
	.4byte	.LASF118
	.byte	0x1
	.2byte	0x1c3
	.byte	0x1
	.4byte	0x57e
	.byte	0x1
	.4byte	0xc93
	.byte	0x30
	.string	"ptr"
	.byte	0x1
	.2byte	0x1c3
	.byte	0x17
	.4byte	0xf8
	.byte	0
	.byte	0x32
	.4byte	.LASF119
	.4byte	.LASF119
	.byte	0xe
	.byte	0x21
	.byte	0x8
	.byte	0x32
	.4byte	.LASF120
	.4byte	.LASF120
	.byte	0xf
	.byte	0x8f
	.byte	0x6
	.byte	0x32
	.4byte	.LASF121
	.4byte	.LASF121
	.byte	0xf
	.byte	0x95
	.byte	0x6
	.byte	0x33
	.4byte	.LASF122
	.4byte	.LASF122
	.byte	0xf
	.2byte	0x1ec
	.byte	0xc
	.byte	0x33
	.4byte	.LASF123
	.4byte	.LASF123
	.byte	0xf
	.2byte	0x1ed
	.byte	0x6
	.byte	0x32
	.4byte	.LASF124
	.4byte	.LASF124
	.byte	0xf
	.byte	0x89
	.byte	0x7
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
	.byte	0x8
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
	.byte	0x7
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xd
	.byte	0
	.byte	0
	.byte	0x9
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x13
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3c
	.byte	0x19
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
	.byte	0xf
	.byte	0xd
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
	.byte	0x38
	.byte	0xb
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
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x38
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x12
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
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
	.byte	0x14
	.byte	0x13
	.byte	0x1
	.byte	0x3
	.byte	0x8
	.byte	0xb
	.byte	0xb
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x15
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0x5
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
	.byte	0x3f
	.byte	0x19
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x17
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
	.byte	0x18
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
	.byte	0x1b
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
	.byte	0x1c
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
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x20
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0x1
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
	.byte	0x5
	.byte	0x57
	.byte	0xb
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
	.byte	0x24
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
	.byte	0x25
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x26
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
	.byte	0x27
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
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
	.byte	0x29
	.byte	0xb
	.byte	0x1
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x2a
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
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x2d
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x2e
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
	.byte	0x2f
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
	.byte	0x30
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
	.byte	0x31
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
	.byte	0x33
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
.LLST36:
	.4byte	.LVL96
	.4byte	.LVL98
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL98
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL96
	.4byte	.LVL99-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL99-1
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL100
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL97
	.4byte	.LVL99-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL99-1
	.4byte	.LVL101
	.2byte	0x2
	.byte	0x91
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL62
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL64
	.4byte	.LVL66
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL66
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL67
	.4byte	.LVL94
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL94
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL95
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL70
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL74
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL78
	.4byte	.LVL79
	.2byte	0x2
	.byte	0x7c
	.byte	0x2
	.4byte	.LVL86
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL92
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL76
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL63
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL66
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL75
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL77
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL83
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL89
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL91
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x60
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL89
	.4byte	.LVL90
	.2byte	0x2
	.byte	0x80
	.byte	0
	.4byte	.LVL90
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x60
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL69
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x60
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL74
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL76
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL30
	.4byte	.LVL35-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL35-1
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL37
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL42
	.4byte	.LFE11
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL30
	.4byte	.LVL35-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL35-1
	.4byte	.LVL37
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL37
	.4byte	.LVL43-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL43-1
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL40
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL54
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL45
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL56
	.4byte	.LFE11
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x3
	.byte	0x7a
	.byte	0x78
	.byte	0x9f
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL39
	.4byte	.LVL42
	.2byte	0x3
	.byte	0x7a
	.byte	0x78
	.byte	0x9f
	.4byte	.LVL42
	.4byte	.LFE11
	.2byte	0x3
	.byte	0x83
	.byte	0x78
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL44
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL47
	.4byte	.LVL49
	.2byte	0xa
	.byte	0x7e
	.byte	0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x7f
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL49
	.4byte	.LVL51
	.2byte	0xe
	.byte	0x7e
	.byte	0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x3
	.4byte	ram
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL54
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL55
	.4byte	.LVL57
	.2byte	0xc
	.byte	0x83
	.byte	0x78
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x7f
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL57
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL58
	.4byte	.LVL60
	.2byte	0x6
	.byte	0x7f
	.byte	0
	.byte	0x7e
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL60
	.4byte	.LFE11
	.2byte	0xa
	.byte	0x3
	.4byte	ram
	.byte	0x6
	.byte	0x7e
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL35
	.4byte	.LVL36-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL45
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x60
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x3
	.byte	0x7a
	.byte	0x78
	.byte	0x9f
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x3
	.byte	0x7a
	.byte	0x78
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x2
	.byte	0x83
	.byte	0x78
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL56
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL5
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x3
	.byte	0x79
	.byte	0x8
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LFE10
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL9
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x6
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x38
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL6
	.4byte	.LVL8-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL12
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL13
	.4byte	.LVL17
	.2byte	0xe
	.byte	0x7b
	.byte	0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x3
	.4byte	ram
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL13
	.4byte	.LVL15
	.2byte	0x10
	.byte	0x78
	.byte	0x7a
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x3
	.4byte	ram
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL12
	.4byte	.LVL20
	.2byte	0xa
	.byte	0x79
	.byte	0
	.byte	0x3
	.4byte	ram
	.byte	0x6
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL25
	.2byte	0x6
	.byte	0x79
	.byte	0
	.byte	0x7f
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LVL28
	.2byte	0xa
	.byte	0x79
	.byte	0
	.byte	0x3
	.4byte	ram
	.byte	0x6
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LVL29-1
	.2byte	0xd
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.4byte	ram
	.byte	0x6
	.byte	0x1c
	.byte	0x38
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL15
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL16
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL23
	.4byte	.LVL25
	.2byte	0x6
	.byte	0x7f
	.byte	0
	.byte	0x7c
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LVL29-1
	.2byte	0xa
	.byte	0x3
	.4byte	ram
	.byte	0x6
	.byte	0x7c
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x2
	.byte	0x78
	.byte	0x78
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL2
	.4byte	.LVL3-1
	.2byte	0x5
	.byte	0x3
	.4byte	ram
	.4byte	.LVL3-1
	.4byte	.LFE8
	.2byte	0x9
	.byte	0x3
	.4byte	ram_heap+3
	.byte	0x9
	.byte	0xfc
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x3c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
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
	.4byte	.LBB53
	.4byte	.LBE53
	.4byte	.LBB56
	.4byte	.LBE56
	.4byte	0
	.4byte	0
	.4byte	.LBB83
	.4byte	.LBE83
	.4byte	.LBB84
	.4byte	.LBE84
	.4byte	.LBB85
	.4byte	.LBE85
	.4byte	.LBB86
	.4byte	.LBE86
	.4byte	0
	.4byte	0
	.4byte	.LBB89
	.4byte	.LBE89
	.4byte	.LBB97
	.4byte	.LBE97
	.4byte	0
	.4byte	0
	.4byte	.LBB92
	.4byte	.LBE92
	.4byte	.LBB98
	.4byte	.LBE98
	.4byte	0
	.4byte	0
	.4byte	.LBB99
	.4byte	.LBE99
	.4byte	.LBB111
	.4byte	.LBE111
	.4byte	.LBB112
	.4byte	.LBE112
	.4byte	0
	.4byte	0
	.4byte	.LBB114
	.4byte	.LBE114
	.4byte	.LBB117
	.4byte	.LBE117
	.4byte	0
	.4byte	0
	.4byte	.LBB120
	.4byte	.LBE120
	.4byte	.LBB127
	.4byte	.LBE127
	.4byte	0
	.4byte	0
	.4byte	.LBB121
	.4byte	.LBE121
	.4byte	.LBB124
	.4byte	.LBE124
	.4byte	0
	.4byte	0
	.4byte	.LBB132
	.4byte	.LBE132
	.4byte	.LBB136
	.4byte	.LBE136
	.4byte	.LBB137
	.4byte	.LBE137
	.4byte	0
	.4byte	0
	.4byte	.LBB144
	.4byte	.LBE144
	.4byte	.LBB147
	.4byte	.LBE147
	.4byte	0
	.4byte	0
	.4byte	.LFB8
	.4byte	.LFE8
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
.LASF114:
	.string	"mem_free"
.LASF45:
	.string	"MEMP_TCP_PCB_LISTEN"
.LASF37:
	.string	"ERR_CLSD"
.LASF30:
	.string	"ERR_USE"
.LASF38:
	.string	"ERR_ARG"
.LASF77:
	.string	"rx_report"
.LASF12:
	.string	"unsigned int"
.LASF91:
	.string	"next"
.LASF97:
	.string	"lfree"
.LASF19:
	.string	"u16_t"
.LASF121:
	.string	"sys_mutex_unlock"
.LASF124:
	.string	"sys_mutex_new"
.LASF117:
	.string	"mem_to_ptr"
.LASF61:
	.string	"stats_mem"
.LASF92:
	.string	"prev"
.LASF56:
	.string	"MEMP_PBUF_POOL"
.LASF112:
	.string	"pmem"
.LASF93:
	.string	"lwip_stats"
.LASF125:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
.LASF36:
	.string	"ERR_RST"
.LASF31:
	.string	"ERR_ALREADY"
.LASF81:
	.string	"stats_syselem"
.LASF123:
	.string	"sys_arch_unprotect"
.LASF49:
	.string	"MEMP_NETCONN"
.LASF107:
	.string	"rmem"
.LASF52:
	.string	"MEMP_IGMP_GROUP"
.LASF50:
	.string	"MEMP_TCPIP_MSG_API"
.LASF71:
	.string	"opterr"
.LASF83:
	.string	"mutex"
.LASF128:
	.string	"QueueDefinition"
.LASF98:
	.string	"count"
.LASF60:
	.string	"illegal"
.LASF113:
	.string	"rmem_idx"
.LASF87:
	.string	"etharp"
.LASF10:
	.string	"long long unsigned int"
.LASF101:
	.string	"mem_calloc"
.LASF89:
	.string	"igmp"
.LASF5:
	.string	"__uint16_t"
.LASF28:
	.string	"ERR_VAL"
.LASF51:
	.string	"MEMP_TCPIP_MSG_INPKT"
.LASF59:
	.string	"used"
.LASF85:
	.string	"stats_"
.LASF120:
	.string	"sys_mutex_lock"
.LASF127:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/lwip"
.LASF13:
	.string	"size_t"
.LASF102:
	.string	"mem_malloc"
.LASF94:
	.string	"ram_heap"
.LASF57:
	.string	"MEMP_MAX"
.LASF32:
	.string	"ERR_ISCONN"
.LASF106:
	.string	"mem_trim"
.LASF76:
	.string	"rx_general"
.LASF29:
	.string	"ERR_WOULDBLOCK"
.LASF25:
	.string	"ERR_TIMEOUT"
.LASF55:
	.string	"MEMP_PBUF"
.LASF14:
	.string	"char"
.LASF21:
	.string	"mem_size_t"
.LASF62:
	.string	"stats_proto"
.LASF1:
	.string	"sys_prot_t"
.LASF115:
	.string	"mem_init"
.LASF39:
	.string	"QueueHandle_t"
.LASF15:
	.string	"uint8_t"
.LASF11:
	.string	"__uintptr_t"
.LASF48:
	.string	"MEMP_NETBUF"
.LASF9:
	.string	"long long int"
.LASF41:
	.string	"sys_mutex_t"
.LASF34:
	.string	"ERR_IF"
.LASF44:
	.string	"MEMP_TCP_PCB"
.LASF90:
	.string	"memp"
.LASF18:
	.string	"u8_t"
.LASF109:
	.string	"newsize"
.LASF119:
	.string	"memset"
.LASF95:
	.string	"ram_end"
.LASF129:
	.string	"plug_holes"
.LASF96:
	.string	"mem_mutex"
.LASF99:
	.string	"size"
.LASF66:
	.string	"chkerr"
.LASF47:
	.string	"MEMP_ALTCP_PCB"
.LASF103:
	.string	"size_in"
.LASF16:
	.string	"uint16_t"
.LASF126:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/core/mem.c"
.LASF24:
	.string	"ERR_BUF"
.LASF116:
	.string	"mem_link_valid"
.LASF4:
	.string	"short int"
.LASF88:
	.string	"icmp"
.LASF7:
	.string	"long int"
.LASF69:
	.string	"rterr"
.LASF58:
	.string	"avail"
.LASF40:
	.string	"SemaphoreHandle_t"
.LASF118:
	.string	"ptr_to_mem"
.LASF53:
	.string	"MEMP_SYS_TIMEOUT"
.LASF105:
	.string	"mem2"
.LASF43:
	.string	"MEMP_UDP_PCB"
.LASF104:
	.string	"ptr2"
.LASF84:
	.string	"mbox"
.LASF27:
	.string	"ERR_INPROGRESS"
.LASF20:
	.string	"mem_ptr_t"
.LASF2:
	.string	"__uint8_t"
.LASF72:
	.string	"cachehit"
.LASF108:
	.string	"new_size"
.LASF17:
	.string	"uintptr_t"
.LASF42:
	.string	"MEMP_RAW_PCB"
.LASF67:
	.string	"lenerr"
.LASF8:
	.string	"long unsigned int"
.LASF70:
	.string	"proterr"
.LASF110:
	.string	"old_level"
.LASF74:
	.string	"rx_v1"
.LASF82:
	.string	"stats_sys"
.LASF3:
	.string	"unsigned char"
.LASF68:
	.string	"memerr"
.LASF46:
	.string	"MEMP_TCP_SEG"
.LASF86:
	.string	"link"
.LASF78:
	.string	"tx_join"
.LASF63:
	.string	"xmit"
.LASF65:
	.string	"drop"
.LASF35:
	.string	"ERR_ABRT"
.LASF79:
	.string	"tx_leave"
.LASF22:
	.string	"ERR_OK"
.LASF64:
	.string	"recv"
.LASF0:
	.string	"signed char"
.LASF6:
	.string	"short unsigned int"
.LASF73:
	.string	"stats_igmp"
.LASF33:
	.string	"ERR_CONN"
.LASF26:
	.string	"ERR_RTE"
.LASF54:
	.string	"MEMP_NETDB"
.LASF80:
	.string	"tx_report"
.LASF100:
	.string	"alloc_size"
.LASF23:
	.string	"ERR_MEM"
.LASF122:
	.string	"sys_arch_protect"
.LASF75:
	.string	"rx_group"
.LASF111:
	.string	"nmem"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
