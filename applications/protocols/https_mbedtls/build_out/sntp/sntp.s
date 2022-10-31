	.file	"sntp.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.sntp_send_request,"ax",@progbits
	.align	1
	.type	sntp_send_request, @function
sntp_send_request:
.LFB14:
	.file 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/sntp/sntp.c"
	.loc 1 563 1
	.cfi_startproc
.LVL0:
	.loc 1 564 3
	.loc 1 566 3
	.loc 1 566 8
	.loc 1 566 7
	.loc 1 566 17
	.loc 1 568 3
	.loc 1 563 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s1,4(sp)
	.loc 1 568 7
	li	a2,640
	.cfi_offset 9, -12
	.loc 1 563 1
	mv	s1,a0
	.loc 1 568 7
	li	a1,48
	li	a0,182
.LVL1:
	.loc 1 563 1
	sw	ra,12(sp)
	sw	s0,8(sp)
	sw	s2,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 18, -16
	.loc 1 568 7
	call	pbuf_alloc
.LVL2:
	.loc 1 569 3 is_stmt 1
	.loc 1 569 6 is_stmt 0
	beq	a0,zero,.L2
.LBB6:
	.loc 1 570 22
	lw	s2,4(a0)
	mv	s0,a0
	.loc 1 570 5 is_stmt 1
.LVL3:
	.loc 1 571 5
	.loc 1 573 5
.LBB7:
.LBB8:
	.loc 1 356 3
	li	a2,48
	li	a1,0
	mv	a0,s2
.LVL4:
	call	memset
.LVL5:
	.loc 1 357 3
	.loc 1 357 19 is_stmt 0
	li	a5,35
	sb	a5,0(s2)
.LVL6:
.LBE8:
.LBE7:
	.loc 1 575 5 is_stmt 1
	lui	a5,%hi(.LANCHOR0)
	lw	a0,%lo(.LANCHOR0)(a5)
	mv	a2,s1
	mv	a1,s0
	li	a3,123
	call	udp_sendto
.LVL7:
	.loc 1 577 5
	mv	a0,s0
	call	pbuf_free
.LVL8:
	.loc 1 580 5
	.loc 1 580 52 is_stmt 0
	lui	a5,%hi(.LANCHOR1)
	lbu	a5,%lo(.LANCHOR1)(a5)
	li	a4,12
	.loc 1 583 5
	lui	a1,%hi(sntp_try_next_server)
	.loc 1 580 52
	mul	a4,a5,a4
	lui	a5,%hi(.LANCHOR2)
	addi	a5,a5,%lo(.LANCHOR2)
	.loc 1 583 5
	li	a2,0
	addi	a1,a1,%lo(sntp_try_next_server)
	.loc 1 580 52
	add	a5,a5,a4
	lbu	a4,8(a5)
	slli	a4,a4,1
	sb	a4,8(a5)
	.loc 1 583 5 is_stmt 1
.LVL9:
.L4:
.LBE6:
	.loc 1 594 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_remember_state
	.cfi_restore 8
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s1,4(sp)
	.cfi_restore 9
.LVL10:
	lw	s2,0(sp)
	.cfi_restore 18
	.loc 1 592 5
	li	a0,16384
	.loc 1 594 1
	.loc 1 592 5
	addi	a0,a0,-1384
	.loc 1 594 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 592 5
	tail	sys_timeout
.LVL11:
.L2:
	.cfi_restore_state
	.loc 1 590 65 is_stmt 1
	.loc 1 592 5
	lui	a1,%hi(sntp_request)
	li	a2,0
	addi	a1,a1,%lo(sntp_request)
	j	.L4
	.cfi_endproc
.LFE14:
	.size	sntp_send_request, .-sntp_send_request
	.section	.text.sntp_request,"ax",@progbits
	.align	1
	.type	sntp_request, @function
sntp_request:
.LFB16:
	.loc 1 626 1
	.cfi_startproc
.LVL12:
	.loc 1 627 3
	.loc 1 628 3
	.loc 1 630 3
	.loc 1 634 3
	.loc 1 626 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s1,20(sp)
	.cfi_offset 9, -12
	.loc 1 634 40
	lui	s1,%hi(.LANCHOR1)
	addi	s1,s1,%lo(.LANCHOR1)
	lbu	a5,0(s1)
	.loc 1 626 1
	sw	s2,16(sp)
	.cfi_offset 18, -16
	.loc 1 634 40
	li	s2,12
	mul	a5,a5,s2
	.loc 1 626 1
	sw	s0,24(sp)
	.cfi_offset 8, -8
	.loc 1 634 40
	lui	s0,%hi(.LANCHOR2)
	addi	s0,s0,%lo(.LANCHOR2)
	.loc 1 626 1
	sw	ra,28(sp)
	.cfi_offset 1, -4
	.loc 1 634 40
	add	a5,s0,a5
	lw	a0,0(a5)
.LVL13:
	.loc 1 634 6
	beq	a0,zero,.L6
	.loc 1 636 5 is_stmt 1
	.loc 1 637 11 is_stmt 0
	lui	a2,%hi(sntp_dns_found)
	.loc 1 636 54
	sw	zero,4(a5)
	.loc 1 637 5 is_stmt 1
	.loc 1 637 11 is_stmt 0
	li	a3,0
	addi	a2,a2,%lo(sntp_dns_found)
	addi	a1,sp,12
	call	dns_gethostbyname
.LVL14:
	.loc 1 639 5 is_stmt 1
	.loc 1 639 8 is_stmt 0
	li	a5,-5
	beq	a0,a5,.L5
	.loc 1 643 12 is_stmt 1
	.loc 1 643 15 is_stmt 0
	bne	a0,zero,.L8
	.loc 1 644 7 is_stmt 1
	.loc 1 644 40 is_stmt 0
	lbu	a5,0(s1)
	.loc 1 644 46
	mul	a5,a5,s2
	add	s0,s0,a5
	lw	a5,12(sp)
	sw	a5,4(s0)
.LVL15:
	.loc 1 653 3 is_stmt 1
.L9:
	.loc 1 655 71
	.loc 1 656 5
	addi	a0,sp,12
	call	sntp_send_request
.LVL16:
.L5:
	.loc 1 662 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	lw	s1,20(sp)
	.cfi_restore 9
	lw	s2,16(sp)
	.cfi_restore 18
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.L6:
	.cfi_restore_state
	.loc 1 649 5 is_stmt 1
	.loc 1 649 25 is_stmt 0
	lw	a5,4(a5)
	sw	a5,12(sp)
	.loc 1 650 5 is_stmt 1
	.loc 1 650 9 is_stmt 0
	bne	a5,zero,.L9
.L8:
	.loc 1 659 5 is_stmt 1
	.loc 1 660 5
	lui	a1,%hi(sntp_try_next_server)
	li	a0,16384
	li	a2,0
	addi	a1,a1,%lo(sntp_try_next_server)
	addi	a0,a0,-1384
	call	sys_timeout
.LVL17:
	j	.L5
	.cfi_endproc
.LFE16:
	.size	sntp_request, .-sntp_request
	.section	.text.sntp_try_next_server,"ax",@progbits
	.align	1
	.type	sntp_try_next_server, @function
sntp_try_next_server:
.LFB12:
	.loc 1 419 1
	.cfi_startproc
.LVL18:
	.loc 1 420 3
	.loc 1 421 3
	.loc 1 423 3
	.loc 1 423 14 is_stmt 0
	lui	a3,%hi(.LANCHOR1)
	lbu	a0,%lo(.LANCHOR1)(a3)
.LVL19:
	.loc 1 424 3 is_stmt 1
	.loc 1 424 15
	.loc 1 425 5
	.loc 1 419 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.loc 1 425 24
	addi	a5,a0,1
	.loc 1 419 1
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.loc 1 425 24
	andi	a5,a5,0xff
	.loc 1 426 5 is_stmt 1
	.loc 1 426 8 is_stmt 0
	li	a4,2
	addi	a3,a3,%lo(.LANCHOR1)
	bleu	a5,a4,.L16
	.loc 1 427 27
	li	a5,0
.L16:
	.loc 1 429 5 is_stmt 1
	.loc 1 429 57 is_stmt 0
	li	a1,12
	mul	a1,a5,a1
	lui	a4,%hi(.LANCHOR2)
	addi	a2,a4,%lo(.LANCHOR2)
	lui	s0,%hi(.LANCHOR3)
	addi	a4,a4,%lo(.LANCHOR2)
	addi	s0,s0,%lo(.LANCHOR3)
	add	a2,a2,a1
	.loc 1 429 8
	lw	a1,4(a2)
	bne	a1,zero,.L18
	.loc 1 431 9
	lw	a2,0(a2)
	bne	a2,zero,.L18
	.loc 1 424 26 is_stmt 1
.LVL20:
	.loc 1 424 15
	.loc 1 425 5
	.loc 1 425 24 is_stmt 0
	addi	a5,a5,1
	andi	a5,a5,0xff
	.loc 1 426 5 is_stmt 1
	.loc 1 426 8 is_stmt 0
	li	a2,3
	bne	a5,a2,.L19
	.loc 1 427 27
	li	a5,0
.L19:
	.loc 1 429 5 is_stmt 1
	.loc 1 429 57 is_stmt 0
	li	a2,12
	mul	a2,a5,a2
	add	a4,a4,a2
	.loc 1 429 8
	lw	a2,4(a4)
	beq	a2,zero,.L20
.LVL21:
.L18:
	sb	a5,0(a3)
.LVL22:
.LBB14:
.LBB15:
	.loc 1 435 66 is_stmt 1
	.loc 1 437 7
	.loc 1 437 26 is_stmt 0
	li	a5,16384
	addi	a5,a5,-1384
	sw	a5,0(s0)
	.loc 1 439 7 is_stmt 1
.LBE15:
.LBE14:
	.loc 1 446 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_remember_state
	.cfi_restore 8
	lw	ra,12(sp)
	.cfi_restore 1
.LBB18:
.LBB16:
	.loc 1 439 7
	li	a0,0
.LVL23:
.LBE16:
.LBE18:
	.loc 1 446 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
.LBB19:
.LBB17:
	.loc 1 439 7
	tail	sntp_request
.LVL24:
.L20:
	.cfi_restore_state
.LBE17:
.LBE19:
	.loc 1 431 9
	lw	a4,0(a4)
	bne	a4,zero,.L18
	.loc 1 424 26 is_stmt 1 discriminator 2
.LVL25:
	.loc 1 424 15 discriminator 2
	.loc 1 444 3 discriminator 2
	.loc 1 444 23 is_stmt 0 discriminator 2
	sb	a0,0(a3)
	.loc 1 445 3 is_stmt 1 discriminator 2
.LVL26:
.LBB20:
.LBB21:
	.loc 1 386 3 discriminator 2
	.loc 1 389 54 discriminator 2
	.loc 1 392 3 discriminator 2
	lw	a0,0(s0)
.LVL27:
	lui	a1,%hi(sntp_request)
	li	a2,0
	addi	a1,a1,%lo(sntp_request)
	call	sys_timeout
.LVL28:
.LBB22:
	.loc 1 396 5 discriminator 2
	.loc 1 398 5 discriminator 2
	.loc 1 398 44 is_stmt 0 discriminator 2
	lw	a3,0(s0)
	.loc 1 400 8 discriminator 2
	li	a4,151552
	addi	a4,a4,-1552
	.loc 1 398 23 discriminator 2
	slli	a5,a3,1
.LVL29:
	.loc 1 400 5 is_stmt 1 discriminator 2
	.loc 1 400 8 is_stmt 0 discriminator 2
	bgtu	a5,a4,.L15
	.loc 1 400 45
	bgeu	a3,a5,.L15
	.loc 1 402 7 is_stmt 1
	.loc 1 402 26 is_stmt 0
	sw	a5,0(s0)
.LVL30:
.L15:
.LBE22:
.LBE21:
.LBE20:
	.loc 1 446 1
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE12:
	.size	sntp_try_next_server, .-sntp_try_next_server
	.section	.text.sntp_dns_found,"ax",@progbits
	.align	1
	.type	sntp_dns_found, @function
sntp_dns_found:
.LFB15:
	.loc 1 602 1 is_stmt 1
	.cfi_startproc
.LVL31:
	.loc 1 603 3
	.loc 1 604 3
	.loc 1 606 3
	.loc 1 602 1 is_stmt 0
	mv	a0,a1
.LVL32:
	.loc 1 606 6
	beq	a1,zero,.L28
	.loc 1 608 5 is_stmt 1
	.loc 1 609 5
	.loc 1 609 38 is_stmt 0
	lui	a5,%hi(.LANCHOR1)
	lbu	a5,%lo(.LANCHOR1)(a5)
	.loc 1 609 44
	li	a4,12
	mul	a4,a5,a4
	lui	a5,%hi(.LANCHOR2)
	addi	a5,a5,%lo(.LANCHOR2)
	add	a5,a5,a4
	lw	a4,0(a1)
	sw	a4,4(a5)
	.loc 1 610 5 is_stmt 1
	tail	sntp_send_request
.LVL33:
.L28:
	.loc 1 613 5
	.loc 1 614 5
	li	a0,0
.LVL34:
	tail	sntp_try_next_server
.LVL35:
	.cfi_endproc
.LFE15:
	.size	sntp_dns_found, .-sntp_dns_found
	.section	.rodata.sntp_recv.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"SNTP time now\r\n"
	.align	2
.LC1:
	.string	"sntp_recv: Received Kiss-of-Death\r\n"
	.align	2
.LC2:
	.string	"Try process\r\n"
	.align	2
.LC3:
	.string	"Processing...\r\n"
	.align	2
.LC4:
	.string	"sntp_process: %ld, %lu us\r\n"
	.section	.text.sntp_recv,"ax",@progbits
	.align	1
	.type	sntp_recv, @function
sntp_recv:
.LFB13:
	.loc 1 455 1
	.cfi_startproc
.LVL36:
	.loc 1 456 3
	.loc 1 457 3
	.loc 1 458 3
	.loc 1 459 3
	.loc 1 461 3
	lui	a0,%hi(.LC0)
.LVL37:
	.loc 1 455 1 is_stmt 0
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	.loc 1 461 3
	addi	a0,a0,%lo(.LC0)
	.loc 1 455 1
	sw	s0,40(sp)
	sw	s1,36(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	mv	s0,a2
	sw	ra,44(sp)
	sw	s2,32(sp)
	sw	s3,28(sp)
	.cfi_offset 1, -4
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.loc 1 461 3
	call	printf
.LVL38:
	.loc 1 463 3 is_stmt 1
	.loc 1 464 3
	.loc 1 466 3
	.loc 1 472 3
	.loc 1 473 3
	.loc 1 477 5
	.loc 1 477 8 is_stmt 0
	lhu	a4,8(s0)
	li	a5,48
	.loc 1 466 7
	li	s1,-16
	.loc 1 477 8
	bne	a4,a5,.L30
	.loc 1 478 7 is_stmt 1
	.loc 1 478 14 is_stmt 0
	li	a1,0
	mv	a0,s0
	call	pbuf_get_at
.LVL39:
	.loc 1 480 25
	lui	a5,%hi(.LANCHOR4)
	lbu	a5,%lo(.LANCHOR4)(a5)
	.loc 1 478 12
	andi	a0,a0,7
.LVL40:
	.loc 1 480 7 is_stmt 1
	.loc 1 480 10 is_stmt 0
	bne	a5,zero,.L31
	.loc 1 480 31 discriminator 1
	li	a5,4
	.loc 1 507 13 discriminator 1
	li	s1,-3
	.loc 1 480 31 discriminator 1
	bne	a0,a5,.L30
.L32:
	.loc 1 482 9 is_stmt 1
	.loc 1 482 19 is_stmt 0
	li	a1,1
	mv	a0,s0
.LVL41:
	call	pbuf_get_at
.LVL42:
	.loc 1 484 9 is_stmt 1
	.loc 1 484 12 is_stmt 0
	bne	a0,zero,.L33
	.loc 1 486 11 is_stmt 1
.LVL43:
	.loc 1 487 11
	lui	a0,%hi(.LC1)
.LVL44:
	addi	a0,a0,%lo(.LC1)
	call	printf
.LVL45:
	.loc 1 486 15 is_stmt 0
	li	s1,1
	j	.L30
.LVL46:
.L31:
	.loc 1 480 50 discriminator 3
	li	a4,1
	.loc 1 507 13 discriminator 3
	li	s1,-3
	.loc 1 480 50 discriminator 3
	bne	a5,a4,.L30
	.loc 1 481 31
	li	a5,5
	beq	a0,a5,.L32
.LVL47:
.L30:
	.loc 1 510 7 is_stmt 1
	.loc 1 520 3
	mv	a0,s0
	call	pbuf_free
.LVL48:
	.loc 1 522 3
	lui	a0,%hi(.LC2)
	addi	a0,a0,%lo(.LC2)
	call	printf
.LVL49:
	.loc 1 523 3
	.loc 1 523 6 is_stmt 0
	bne	s1,zero,.L34
.LVL50:
	.loc 1 525 5 is_stmt 1
.LBB26:
.LBB27:
	.loc 1 296 3
	.loc 1 297 3
	.loc 1 299 3
	.loc 1 299 16 is_stmt 0
	lw	a0,8(sp)
	.loc 1 338 11
	lui	s3,%hi(.LANCHOR5)
	.loc 1 339 12
	lui	s2,%hi(.LANCHOR6)
	.loc 1 299 16
	call	lwip_htonl
.LVL51:
	mv	s0,a0
.LVL52:
	.loc 1 300 3 is_stmt 1
	.loc 1 300 10 is_stmt 0
	lw	a0,12(sp)
	call	lwip_htonl
.LVL53:
	mv	s1,a0
.LVL54:
	.loc 1 302 3 is_stmt 1
	lui	a0,%hi(.LC3)
	addi	a0,a0,%lo(.LC3)
	call	printf
.LVL55:
	.loc 1 335 3
	.loc 1 337 3
	call	vTaskEnterCritical
.LVL56:
	.loc 1 338 3
	.loc 1 338 17 is_stmt 0
	li	a5,2085978112
	addi	a5,a5,384
	add	s0,s0,a5
.LVL57:
	.loc 1 338 11
	sw	s0,%lo(.LANCHOR5)(s3)
	.loc 1 339 3 is_stmt 1
	.loc 1 339 12 is_stmt 0
	sw	s1,%lo(.LANCHOR6)(s2)
	.loc 1 340 3 is_stmt 1
	.loc 1 340 19 is_stmt 0
	call	xTaskGetTickCount
.LVL58:
	.loc 1 340 17
	lui	a5,%hi(.LANCHOR7)
	sw	a0,%lo(.LANCHOR7)(a5)
	.loc 1 341 3 is_stmt 1
	.loc 1 341 7 is_stmt 0
	lui	a5,%hi(.LANCHOR8)
	lw	a5,%lo(.LANCHOR8)(a5)
	addi	s3,s3,%lo(.LANCHOR5)
	addi	s2,s2,%lo(.LANCHOR6)
	.loc 1 341 6
	beq	a5,zero,.L35
	.loc 1 342 5 is_stmt 1
	jalr	a5
.LVL59:
.L35:
	.loc 1 343 3
	.loc 1 343 60 is_stmt 0
	lw	a0,0(s2)
	.loc 1 343 42
	li	a4,1000
	lw	a1,0(s3)
	.loc 1 343 60
	divu	a0,a0,a4
	.loc 1 343 42
	mul	a5,a4,a1
	mulhu	a1,a4,a1
	.loc 1 343 3
	add	a0,a5,a0
	sltu	a5,a0,a5
	add	a1,a5,a1
	call	bl_sys_time_update
.LVL60:
	.loc 1 344 3 is_stmt 1
	call	vTaskExitCritical
.LVL61:
	.loc 1 346 3
	.loc 1 347 3
	.loc 1 347 99 is_stmt 0
	li	a2,999424
	addi	a2,a2,576
	mulhu	a2,s1,a2
	.loc 1 347 3
	lui	a0,%hi(.LC4)
	mv	a1,s0
	addi	a0,a0,%lo(.LC4)
	call	printf
.LVL62:
.LBE27:
.LBE26:
	.loc 1 529 5 is_stmt 1
	.loc 1 529 52 is_stmt 0
	lui	a5,%hi(.LANCHOR1)
	lbu	a5,%lo(.LANCHOR1)(a5)
	li	a4,12
	mul	a4,a5,a4
	lui	a5,%hi(.LANCHOR2)
	addi	a5,a5,%lo(.LANCHOR2)
	add	a5,a5,a4
	lbu	a4,8(a5)
	ori	a4,a4,1
	sb	a4,8(a5)
	.loc 1 532 5 is_stmt 1
	.loc 1 532 8 is_stmt 0
	lui	a5,%hi(.LANCHOR4)
	lbu	a5,%lo(.LANCHOR4)(a5)
	bne	a5,zero,.L29
.LBB28:
	.loc 1 533 7 is_stmt 1
	.loc 1 534 7
	lui	a0,%hi(sntp_try_next_server)
	li	a1,0
	addi	a0,a0,%lo(sntp_try_next_server)
	call	sys_untimeout
.LVL63:
	.loc 1 535 7
	lui	s0,%hi(sntp_request)
.LVL64:
	li	a1,0
	addi	a0,s0,%lo(sntp_request)
	call	sys_untimeout
.LVL65:
	.loc 1 538 7
	.loc 1 538 26 is_stmt 0
	li	a5,16384
	addi	a5,a5,-1384
	lui	a4,%hi(.LANCHOR3)
	sw	a5,%lo(.LANCHOR3)(a4)
	.loc 1 541 7 is_stmt 1
.LVL66:
	.loc 1 542 7
	lui	a5,%hi(.LANCHOR9)
	lw	a0,%lo(.LANCHOR9)(a5)
	li	a2,0
	addi	a1,s0,%lo(sntp_request)
	call	sys_timeout
.LVL67:
.L29:
.LBE28:
	.loc 1 555 1 is_stmt 0
	lw	ra,44(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	lw	s1,36(sp)
	.cfi_restore 9
	lw	s2,32(sp)
	.cfi_restore 18
	lw	s3,28(sp)
	.cfi_restore 19
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
.LVL68:
.L33:
	.cfi_restore_state
	.loc 1 489 11 is_stmt 1
	li	a3,40
	li	a2,8
	addi	a1,sp,8
	mv	a0,s0
.LVL69:
	call	pbuf_copy_partial
.LVL70:
	.loc 1 501 13
	.loc 1 501 17 is_stmt 0
	li	s1,0
	j	.L30
.LVL71:
.L34:
	.loc 1 546 10 is_stmt 1
	.loc 1 546 13 is_stmt 0
	li	a5,1
	bne	s1,a5,.L29
.LVL72:
	.loc 1 548 5 is_stmt 1
	.loc 1 548 8 is_stmt 0
	lui	a5,%hi(.LANCHOR4)
	lbu	a5,%lo(.LANCHOR4)(a5)
	bne	a5,zero,.L29
	.loc 1 550 7 is_stmt 1
	li	a0,0
	call	sntp_try_next_server
.LVL73:
	.loc 1 554 3
	.loc 1 555 1 is_stmt 0
	j	.L29
	.cfi_endproc
.LFE13:
	.size	sntp_recv, .-sntp_recv
	.section	.rodata.sntp_init.str1.4,"aMS",@progbits,1
	.align	2
.LC5:
	.string	"[SNTP] pcb isready, %p\r\n"
	.section	.text.sntp_init,"ax",@progbits
	.align	1
	.globl	sntp_init
	.type	sntp_init, @function
sntp_init:
.LFB17:
	.loc 1 671 1 is_stmt 1
	.cfi_startproc
	.loc 1 682 3
	.loc 1 671 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	.cfi_offset 8, -8
	.loc 1 682 16
	lui	s0,%hi(.LANCHOR0)
	addi	s0,s0,%lo(.LANCHOR0)
	.loc 1 682 6
	lw	a5,0(s0)
	.loc 1 671 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 682 6
	bne	a5,zero,.L46
	.loc 1 683 5 is_stmt 1
	.loc 1 683 16 is_stmt 0
	li	a0,46
	call	udp_new_ip_type
.LVL74:
	mv	a1,a0
	.loc 1 683 14
	sw	a0,0(s0)
	.loc 1 684 5 is_stmt 1
	lui	a0,%hi(.LC5)
	addi	a0,a0,%lo(.LC5)
	call	printf
.LVL75:
	.loc 1 685 5
	.loc 1 685 10
	.loc 1 685 14 is_stmt 0
	lw	a0,0(s0)
	.loc 1 685 9 is_stmt 1
	.loc 1 685 19
	.loc 1 686 5
	.loc 1 686 8 is_stmt 0
	beq	a0,zero,.L46
	.loc 1 687 7 is_stmt 1
	lui	a1,%hi(sntp_recv)
	li	a2,0
	addi	a1,a1,%lo(sntp_recv)
	call	udp_recv
.LVL76:
	.loc 1 689 7
	.loc 1 689 23 is_stmt 0
	lui	a5,%hi(.LANCHOR4)
	lbu	a5,%lo(.LANCHOR4)(a5)
	.loc 1 689 10
	bne	a5,zero,.L50
	.loc 1 690 9 is_stmt 1
	.loc 1 690 28 is_stmt 0
	li	a5,16384
	addi	a5,a5,-1384
	lui	a4,%hi(.LANCHOR3)
	sw	a5,%lo(.LANCHOR3)(a4)
	.loc 1 692 9 is_stmt 1
	.loc 1 692 37 is_stmt 0
	call	bl_rand
.LVL77:
	.loc 1 692 9
	li	a5,4096
	addi	a5,a5,904
	remu	a0,a0,a5
	.loc 1 702 1
	lw	s0,8(sp)
	.cfi_remember_state
	.cfi_restore 8
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 692 9
	lui	a1,%hi(sntp_request)
	.loc 1 702 1
	.loc 1 692 9
	li	a2,0
	addi	a1,a1,%lo(sntp_request)
	.loc 1 702 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 692 9
	tail	sys_timeout
.LVL78:
.L50:
	.cfi_restore_state
	.loc 1 696 14 is_stmt 1
	.loc 1 696 17 is_stmt 0
	li	a4,1
	bne	a5,a4,.L46
	.loc 1 697 9 is_stmt 1
	.loc 1 697 52 is_stmt 0
	lw	a0,0(s0)
	.loc 1 698 9
	lui	a1,%hi(ip_addr_any)
	li	a2,123
	.loc 1 697 35
	lbu	a5,9(a0)
	.loc 1 698 9
	addi	a1,a1,%lo(ip_addr_any)
	.loc 1 697 35
	ori	a5,a5,32
	.loc 1 697 33
	sb	a5,9(a0)
	.loc 1 698 9 is_stmt 1
	.loc 1 702 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_remember_state
	.cfi_restore 8
	lw	ra,12(sp)
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 698 9
	tail	udp_bind
.LVL79:
.L46:
	.cfi_restore_state
	.loc 1 702 1
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE17:
	.size	sntp_init, .-sntp_init
	.section	.text.sntp_stop,"ax",@progbits
	.align	1
	.globl	sntp_stop
	.type	sntp_stop, @function
sntp_stop:
.LFB18:
	.loc 1 710 1 is_stmt 1
	.cfi_startproc
	.loc 1 711 3
	.loc 1 712 3
	.loc 1 710 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	.cfi_offset 8, -8
	.loc 1 712 16
	lui	s0,%hi(.LANCHOR0)
	addi	s0,s0,%lo(.LANCHOR0)
	.loc 1 712 6
	lw	a5,0(s0)
	.loc 1 710 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 712 6
	beq	a5,zero,.L55
.LVL80:
.LBB29:
	.loc 1 715 17 is_stmt 1
	.loc 1 716 7
	.loc 1 716 36 is_stmt 0
	lui	a5,%hi(.LANCHOR2)
	addi	a5,a5,%lo(.LANCHOR2)
	.loc 1 719 5
	lui	a0,%hi(sntp_request)
	.loc 1 716 36
	sb	zero,8(a5)
	.loc 1 715 24 is_stmt 1
.LVL81:
	.loc 1 715 17
	.loc 1 716 7
	.loc 1 716 36 is_stmt 0
	sb	zero,20(a5)
	.loc 1 715 24 is_stmt 1
.LVL82:
	.loc 1 715 17
	.loc 1 716 7
	.loc 1 716 36 is_stmt 0
	sb	zero,32(a5)
	.loc 1 715 24 is_stmt 1
.LVL83:
	.loc 1 715 17
	.loc 1 719 5
	li	a1,0
	addi	a0,a0,%lo(sntp_request)
	call	sys_untimeout
.LVL84:
	.loc 1 720 5
	lui	a0,%hi(sntp_try_next_server)
	li	a1,0
	addi	a0,a0,%lo(sntp_try_next_server)
	call	sys_untimeout
.LVL85:
	.loc 1 721 5
	lw	a0,0(s0)
	call	udp_remove
.LVL86:
	.loc 1 722 5
	.loc 1 722 14 is_stmt 0
	sw	zero,0(s0)
.LVL87:
.L55:
.LBE29:
	.loc 1 724 1
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE18:
	.size	sntp_stop, .-sntp_stop
	.section	.text.sntp_enabled,"ax",@progbits
	.align	1
	.globl	sntp_enabled
	.type	sntp_enabled, @function
sntp_enabled:
.LFB19:
	.loc 1 731 1 is_stmt 1
	.cfi_startproc
	.loc 1 732 3
	.loc 1 732 32 is_stmt 0
	lui	a5,%hi(.LANCHOR0)
	lw	a0,%lo(.LANCHOR0)(a5)
	.loc 1 733 1
	snez	a0,a0
	ret
	.cfi_endproc
.LFE19:
	.size	sntp_enabled, .-sntp_enabled
	.section	.text.sntp_setoperatingmode,"ax",@progbits
	.align	1
	.globl	sntp_setoperatingmode
	.type	sntp_setoperatingmode, @function
sntp_setoperatingmode:
.LFB20:
	.loc 1 742 1 is_stmt 1
	.cfi_startproc
.LVL88:
	.loc 1 743 3
	.loc 1 744 3
	.loc 1 744 8
	.loc 1 744 38
	.loc 1 744 48
	.loc 1 745 3
	.loc 1 745 8
	.loc 1 745 7
	.loc 1 745 17
	.loc 1 746 3
	.loc 1 746 15 is_stmt 0
	lui	a5,%hi(.LANCHOR4)
	sb	a0,%lo(.LANCHOR4)(a5)
	.loc 1 747 1
	ret
	.cfi_endproc
.LFE20:
	.size	sntp_setoperatingmode, .-sntp_setoperatingmode
	.section	.text.sntp_getoperatingmode,"ax",@progbits
	.align	1
	.globl	sntp_getoperatingmode
	.type	sntp_getoperatingmode, @function
sntp_getoperatingmode:
.LFB21:
	.loc 1 755 1 is_stmt 1
	.cfi_startproc
	.loc 1 756 3
	.loc 1 757 1 is_stmt 0
	lui	a5,%hi(.LANCHOR4)
	lbu	a0,%lo(.LANCHOR4)(a5)
	ret
	.cfi_endproc
.LFE21:
	.size	sntp_getoperatingmode, .-sntp_getoperatingmode
	.section	.text.sntp_getreachability,"ax",@progbits
	.align	1
	.globl	sntp_getreachability
	.type	sntp_getreachability, @function
sntp_getreachability:
.LFB22:
	.loc 1 768 1 is_stmt 1
	.cfi_startproc
.LVL89:
	.loc 1 769 3
	.loc 1 769 6 is_stmt 0
	li	a5,2
	bgtu	a0,a5,.L66
	.loc 1 770 5 is_stmt 1
	.loc 1 770 29 is_stmt 0
	li	a5,12
	mul	a0,a0,a5
.LVL90:
	lui	a5,%hi(.LANCHOR2)
	addi	a5,a5,%lo(.LANCHOR2)
	add	a0,a5,a0
	lbu	a0,8(a0)
	ret
.LVL91:
.L66:
	.loc 1 772 10
	li	a0,0
.LVL92:
	.loc 1 773 1
	ret
	.cfi_endproc
.LFE22:
	.size	sntp_getreachability, .-sntp_getreachability
	.section	.text.sntp_setserver,"ax",@progbits
	.align	1
	.globl	sntp_setserver
	.type	sntp_setserver, @function
sntp_setserver:
.LFB23:
	.loc 1 801 1 is_stmt 1
	.cfi_startproc
.LVL93:
	.loc 1 802 3
	.loc 1 803 3
	.loc 1 803 6 is_stmt 0
	li	a5,2
	bgtu	a0,a5,.L67
	.loc 1 804 5 is_stmt 1
	.loc 1 805 30 is_stmt 0
	li	a4,12
	mul	a4,a0,a4
	lui	a5,%hi(.LANCHOR2)
	addi	a5,a5,%lo(.LANCHOR2)
	add	a4,a5,a4
	.loc 1 804 8
	beq	a1,zero,.L69
	.loc 1 805 7 is_stmt 1
	.loc 1 805 30 is_stmt 0
	lw	a3,0(a1)
	sw	a3,4(a4)
.L70:
	.loc 1 810 5 is_stmt 1
	.loc 1 810 28 is_stmt 0
	li	a4,12
	mul	a0,a0,a4
.LVL94:
	add	a0,a5,a0
	sw	zero,0(a0)
.L67:
	.loc 1 813 1
	ret
.LVL95:
.L69:
	.loc 1 807 7 is_stmt 1
	.loc 1 807 40 is_stmt 0
	sw	zero,4(a4)
	j	.L70
	.cfi_endproc
.LFE23:
	.size	sntp_setserver, .-sntp_setserver
	.section	.text.sntp_getserver,"ax",@progbits
	.align	1
	.globl	sntp_getserver
	.type	sntp_getserver, @function
sntp_getserver:
.LFB24:
	.loc 1 852 1 is_stmt 1
	.cfi_startproc
.LVL96:
	.loc 1 853 3
	.loc 1 853 6 is_stmt 0
	li	a5,2
	bgtu	a0,a5,.L73
	.loc 1 854 5 is_stmt 1
	.loc 1 854 12 is_stmt 0
	li	a5,12
	mul	a0,a0,a5
.LVL97:
	addi	a5,a0,4
	lui	a0,%hi(.LANCHOR2)
	addi	a0,a0,%lo(.LANCHOR2)
	add	a0,a0,a5
	ret
.LVL98:
.L73:
	.loc 1 856 11
	lui	a0,%hi(ip_addr_any)
.LVL99:
	addi	a0,a0,%lo(ip_addr_any)
	.loc 1 857 1
	ret
	.cfi_endproc
.LFE24:
	.size	sntp_getserver, .-sntp_getserver
	.section	.text.sntp_get_time,"ax",@progbits
	.align	1
	.globl	sntp_get_time
	.type	sntp_get_time, @function
sntp_get_time:
.LFB25:
	.loc 1 860 1 is_stmt 1
	.cfi_startproc
.LVL100:
	.loc 1 861 5
	.loc 1 862 5
	.loc 1 864 5
	.loc 1 860 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s2,0(sp)
	.cfi_offset 18, -16
	.loc 1 866 11
	lui	s2,%hi(.LANCHOR5)
	.loc 1 860 1
	sw	s0,8(sp)
	sw	s1,4(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 1, -4
	.loc 1 860 1
	mv	s1,a0
	mv	s0,a1
	.loc 1 866 11
	addi	s2,s2,%lo(.LANCHOR5)
	.loc 1 864 5
	call	vTaskEnterCritical
.LVL101:
	.loc 1 866 5 is_stmt 1
	.loc 1 866 8 is_stmt 0
	lw	a5,0(s2)
	bne	a5,zero,.L75
	.loc 1 867 9 is_stmt 1
	.loc 1 867 18 is_stmt 0
	sw	zero,0(s1)
	.loc 1 868 9 is_stmt 1
	.loc 1 868 16 is_stmt 0
	sw	zero,0(s0)
.L76:
	.loc 1 882 5 is_stmt 1
	call	vTaskExitCritical
.LVL102:
	.loc 1 883 5
	.loc 1 884 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
.LVL103:
	lw	s1,4(sp)
	.cfi_restore 9
.LVL104:
	lw	s2,0(sp)
	.cfi_restore 18
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL105:
.L75:
	.cfi_restore_state
	.loc 1 870 9 is_stmt 1
	.loc 1 870 29 is_stmt 0
	call	xTaskGetTickCount
.LVL106:
	.loc 1 870 17
	lui	a5,%hi(.LANCHOR7)
	lw	a5,%lo(.LANCHOR7)(a5)
	.loc 1 873 19
	lui	a4,%hi(.LANCHOR6)
	lw	a4,%lo(.LANCHOR6)(a4)
	.loc 1 870 17
	sub	a5,a0,a5
.LVL107:
	.loc 1 872 9 is_stmt 1
	.loc 1 873 19 is_stmt 0
	li	a0,1000
	.loc 1 875 33
	div	a3,a5,a0
	.loc 1 872 21
	lw	a2,0(s2)
.LVL108:
	.loc 1 873 9 is_stmt 1
	.loc 1 873 19 is_stmt 0
	divu	a4,a4,a0
.LVL109:
	.loc 1 875 9 is_stmt 1
	.loc 1 876 9
	.loc 1 878 9
	.loc 1 875 21 is_stmt 0
	add	a3,a3,a2
.LVL110:
	.loc 1 878 18
	sw	a3,0(s1)
	.loc 1 879 9 is_stmt 1
	.loc 1 876 31 is_stmt 0
	rem	a5,a5,a0
.LVL111:
	.loc 1 876 19
	add	a5,a5,a4
.LVL112:
	.loc 1 879 16
	sw	a5,0(s0)
	j	.L76
	.cfi_endproc
.LFE25:
	.size	sntp_get_time, .-sntp_get_time
	.section	.text.sntp_setservername,"ax",@progbits
	.align	1
	.globl	sntp_setservername
	.type	sntp_setservername, @function
sntp_setservername:
.LFB26:
	.loc 1 895 1 is_stmt 1
	.cfi_startproc
.LVL113:
	.loc 1 896 3
	.loc 1 897 3
	.loc 1 897 6 is_stmt 0
	li	a5,2
	bgtu	a0,a5,.L78
	.loc 1 898 5 is_stmt 1
	.loc 1 898 28 is_stmt 0
	li	a5,12
	mul	a0,a0,a5
.LVL114:
	lui	a5,%hi(.LANCHOR2)
	addi	a5,a5,%lo(.LANCHOR2)
	add	a0,a5,a0
	sw	a1,0(a0)
.L78:
	.loc 1 900 1
	ret
	.cfi_endproc
.LFE26:
	.size	sntp_setservername, .-sntp_setservername
	.section	.text.sntp_getservername,"ax",@progbits
	.align	1
	.globl	sntp_getservername
	.type	sntp_getservername, @function
sntp_getservername:
.LFB27:
	.loc 1 911 1 is_stmt 1
	.cfi_startproc
.LVL115:
	.loc 1 912 3
	.loc 1 912 6 is_stmt 0
	li	a5,2
	bgtu	a0,a5,.L82
	.loc 1 913 5 is_stmt 1
	.loc 1 913 29 is_stmt 0
	li	a5,12
	mul	a0,a0,a5
.LVL116:
	lui	a5,%hi(.LANCHOR2)
	addi	a5,a5,%lo(.LANCHOR2)
	add	a0,a5,a0
	lw	a0,0(a0)
	ret
.LVL117:
.L82:
	.loc 1 915 9
	li	a0,0
.LVL118:
	.loc 1 916 1
	ret
	.cfi_endproc
.LFE27:
	.size	sntp_getservername, .-sntp_getservername
	.section	.text.sntp_settimesynccb,"ax",@progbits
	.align	1
	.globl	sntp_settimesynccb
	.type	sntp_settimesynccb, @function
sntp_settimesynccb:
.LFB28:
	.loc 1 920 1 is_stmt 1
	.cfi_startproc
.LVL119:
	.loc 1 921 5
	.loc 1 921 22 is_stmt 0
	lui	a5,%hi(.LANCHOR8)
	sw	a0,%lo(.LANCHOR8)(a5)
	.loc 1 922 1
	ret
	.cfi_endproc
.LFE28:
	.size	sntp_settimesynccb, .-sntp_settimesynccb
	.section	.text.sntp_setupdatedelay,"ax",@progbits
	.align	1
	.globl	sntp_setupdatedelay
	.type	sntp_setupdatedelay, @function
sntp_setupdatedelay:
.LFB29:
	.loc 1 925 1 is_stmt 1
	.cfi_startproc
.LVL120:
	.loc 1 926 5
	.loc 1 926 29 is_stmt 0
	li	a5,1000
	mul	a0,a0,a5
.LVL121:
	.loc 1 926 22
	lui	a5,%hi(.LANCHOR9)
	sw	a0,%lo(.LANCHOR9)(a5)
	.loc 1 927 1
	ret
	.cfi_endproc
.LFE29:
	.size	sntp_setupdatedelay, .-sntp_setupdatedelay
	.section	.bss.sntp_servers,"aw",@nobits
	.align	2
	.set	.LANCHOR2,. + 0
	.type	sntp_servers, @object
	.size	sntp_servers, 36
sntp_servers:
	.zero	36
	.section	.sbss.ntp_frag,"aw",@nobits
	.align	2
	.set	.LANCHOR6,. + 0
	.type	ntp_frag, @object
	.size	ntp_frag, 4
ntp_frag:
	.zero	4
	.section	.sbss.ntp_sec,"aw",@nobits
	.align	2
	.set	.LANCHOR5,. + 0
	.type	ntp_sec, @object
	.size	ntp_sec, 4
ntp_sec:
	.zero	4
	.section	.sbss.ntp_time_sync_cb,"aw",@nobits
	.align	2
	.set	.LANCHOR8,. + 0
	.type	ntp_time_sync_cb, @object
	.size	ntp_time_sync_cb, 4
ntp_time_sync_cb:
	.zero	4
	.section	.sbss.sntp_current_server,"aw",@nobits
	.set	.LANCHOR1,. + 0
	.type	sntp_current_server, @object
	.size	sntp_current_server, 1
sntp_current_server:
	.zero	1
	.section	.sbss.sntp_opmode,"aw",@nobits
	.set	.LANCHOR4,. + 0
	.type	sntp_opmode, @object
	.size	sntp_opmode, 1
sntp_opmode:
	.zero	1
	.section	.sbss.sntp_pcb,"aw",@nobits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	sntp_pcb, @object
	.size	sntp_pcb, 4
sntp_pcb:
	.zero	4
	.section	.sbss.sntp_retry_timeout,"aw",@nobits
	.align	2
	.set	.LANCHOR3,. + 0
	.type	sntp_retry_timeout, @object
	.size	sntp_retry_timeout, 4
sntp_retry_timeout:
	.zero	4
	.section	.sbss.time_obtained,"aw",@nobits
	.align	2
	.set	.LANCHOR7,. + 0
	.type	time_obtained, @object
	.size	time_obtained, 4
time_obtained:
	.zero	4
	.section	.sdata.ntp_update_delay,"aw"
	.align	2
	.set	.LANCHOR9,. + 0
	.type	ntp_update_delay, @object
	.size	ntp_update_delay, 4
ntp_update_delay:
	.word	3600000
	.text
.Letext0:
	.file 2 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.file 3 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/arch.h"
	.file 4 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/ip4_addr.h"
	.file 5 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/prot/iana.h"
	.file 6 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/ip_addr.h"
	.file 7 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/err.h"
	.file 8 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/pbuf.h"
	.file 9 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/memp.h"
	.file 10 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/netif.h"
	.file 11 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/udp.h"
	.file 12 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h"
	.file 13 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
	.file 14 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/timeouts.h"
	.file 15 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h"
	.file 16 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/lwip-port/config/lwipopts.h"
	.file 17 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/dns.h"
	.file 18 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h"
	.file 19 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/def.h"
	.file 20 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/sys/bltime/include/bl_sys_time.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1110
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF202
	.byte	0xc
	.4byte	.LASF203
	.4byte	.LASF204
	.4byte	.Ldebug_ranges0+0x20
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF0
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF1
	.byte	0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x4
	.4byte	.LASF4
	.byte	0x2
	.byte	0x22
	.byte	0x15
	.4byte	0x46
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.byte	0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF3
	.byte	0x4
	.4byte	.LASF5
	.byte	0x2
	.byte	0x28
	.byte	0x12
	.4byte	0x60
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.byte	0x4
	.4byte	.LASF8
	.byte	0x2
	.byte	0x2e
	.byte	0x17
	.4byte	0x7a
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF9
	.byte	0x4
	.4byte	.LASF10
	.byte	0x2
	.byte	0x31
	.byte	0x1c
	.4byte	0x8d
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF11
	.byte	0x4
	.4byte	.LASF12
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0xa0
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.byte	0x4
	.4byte	.LASF14
	.byte	0x2
	.byte	0x37
	.byte	0x20
	.4byte	0x25
	.byte	0x5
	.byte	0x4
	.byte	0x6
	.byte	0x4
	.4byte	0xc2
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.byte	0x7
	.4byte	0xbb
	.byte	0x6
	.byte	0x4
	.4byte	0xcd
	.byte	0x8
	.byte	0x4
	.4byte	.LASF16
	.byte	0x3
	.byte	0x7d
	.byte	0x11
	.4byte	0x6e
	.byte	0x4
	.4byte	.LASF17
	.byte	0x3
	.byte	0x7e
	.byte	0x10
	.4byte	0x3a
	.byte	0x4
	.4byte	.LASF18
	.byte	0x3
	.byte	0x7f
	.byte	0x12
	.4byte	0x81
	.byte	0x4
	.4byte	.LASF19
	.byte	0x3
	.byte	0x81
	.byte	0x12
	.4byte	0x94
	.byte	0x4
	.4byte	.LASF20
	.byte	0x3
	.byte	0x82
	.byte	0x11
	.4byte	0x54
	.byte	0x4
	.4byte	.LASF21
	.byte	0x3
	.byte	0x84
	.byte	0x12
	.4byte	0xa7
	.byte	0x9
	.4byte	.LASF37
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0x5
	.byte	0x3e
	.byte	0x6
	.4byte	0x182
	.byte	0xa
	.4byte	.LASF22
	.byte	0x19
	.byte	0xa
	.4byte	.LASF23
	.byte	0x43
	.byte	0xa
	.4byte	.LASF24
	.byte	0x44
	.byte	0xa
	.4byte	.LASF25
	.byte	0x45
	.byte	0xa
	.4byte	.LASF26
	.byte	0x50
	.byte	0xa
	.4byte	.LASF27
	.byte	0x7b
	.byte	0xa
	.4byte	.LASF28
	.byte	0x89
	.byte	0xa
	.4byte	.LASF29
	.byte	0xa1
	.byte	0xa
	.4byte	.LASF30
	.byte	0xa2
	.byte	0xb
	.4byte	.LASF31
	.2byte	0x1bb
	.byte	0xb
	.4byte	.LASF32
	.2byte	0x1d1
	.byte	0xb
	.4byte	.LASF33
	.2byte	0x75b
	.byte	0xb
	.4byte	.LASF34
	.2byte	0x14e9
	.byte	0xb
	.4byte	.LASF35
	.2byte	0x22b3
	.byte	0
	.byte	0xc
	.4byte	.LASF70
	.byte	0x4
	.byte	0x4
	.byte	0x33
	.byte	0x8
	.4byte	0x19d
	.byte	0xd
	.4byte	.LASF72
	.byte	0x4
	.byte	0x34
	.byte	0x9
	.4byte	0xf2
	.byte	0
	.byte	0
	.byte	0x4
	.4byte	.LASF36
	.byte	0x4
	.byte	0x39
	.byte	0x19
	.4byte	0x182
	.byte	0x9
	.4byte	.LASF38
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0x6
	.byte	0x36
	.byte	0x6
	.4byte	0x1ce
	.byte	0xa
	.4byte	.LASF39
	.byte	0
	.byte	0xa
	.4byte	.LASF40
	.byte	0x6
	.byte	0xa
	.4byte	.LASF41
	.byte	0x2e
	.byte	0
	.byte	0xe
	.4byte	.LASF42
	.byte	0x6
	.2byte	0x10e
	.byte	0x14
	.4byte	0x19d
	.byte	0x7
	.4byte	0x1ce
	.byte	0xf
	.4byte	.LASF205
	.byte	0x6
	.2byte	0x171
	.byte	0x18
	.4byte	0x1db
	.byte	0x10
	.byte	0x5
	.byte	0x4
	.4byte	0x33
	.byte	0x7
	.byte	0x35
	.byte	0xe
	.4byte	0x262
	.byte	0xa
	.4byte	.LASF43
	.byte	0
	.byte	0x11
	.4byte	.LASF44
	.byte	0x7f
	.byte	0x11
	.4byte	.LASF45
	.byte	0x7e
	.byte	0x11
	.4byte	.LASF46
	.byte	0x7d
	.byte	0x11
	.4byte	.LASF47
	.byte	0x7c
	.byte	0x11
	.4byte	.LASF48
	.byte	0x7b
	.byte	0x11
	.4byte	.LASF49
	.byte	0x7a
	.byte	0x11
	.4byte	.LASF50
	.byte	0x79
	.byte	0x11
	.4byte	.LASF51
	.byte	0x78
	.byte	0x11
	.4byte	.LASF52
	.byte	0x77
	.byte	0x11
	.4byte	.LASF53
	.byte	0x76
	.byte	0x11
	.4byte	.LASF54
	.byte	0x75
	.byte	0x11
	.4byte	.LASF55
	.byte	0x74
	.byte	0x11
	.4byte	.LASF56
	.byte	0x73
	.byte	0x11
	.4byte	.LASF57
	.byte	0x72
	.byte	0x11
	.4byte	.LASF58
	.byte	0x71
	.byte	0x11
	.4byte	.LASF59
	.byte	0x70
	.byte	0
	.byte	0x4
	.4byte	.LASF60
	.byte	0x7
	.byte	0x60
	.byte	0xe
	.4byte	0xda
	.byte	0x10
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0x8
	.byte	0x59
	.byte	0xe
	.4byte	0x29b
	.byte	0xa
	.4byte	.LASF61
	.byte	0xb6
	.byte	0xa
	.4byte	.LASF62
	.byte	0xa2
	.byte	0xa
	.4byte	.LASF63
	.byte	0x8e
	.byte	0xa
	.4byte	.LASF64
	.byte	0x80
	.byte	0xa
	.4byte	.LASF65
	.byte	0
	.byte	0
	.byte	0x10
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0x8
	.byte	0x91
	.byte	0xe
	.4byte	0x2c4
	.byte	0xb
	.4byte	.LASF66
	.2byte	0x280
	.byte	0xa
	.4byte	.LASF67
	.byte	0x1
	.byte	0xa
	.4byte	.LASF68
	.byte	0x41
	.byte	0xb
	.4byte	.LASF69
	.2byte	0x182
	.byte	0
	.byte	0xc
	.4byte	.LASF71
	.byte	0x10
	.byte	0x8
	.byte	0xba
	.byte	0x8
	.4byte	0x33a
	.byte	0xd
	.4byte	.LASF73
	.byte	0x8
	.byte	0xbc
	.byte	0x10
	.4byte	0x33a
	.byte	0
	.byte	0xd
	.4byte	.LASF74
	.byte	0x8
	.byte	0xbf
	.byte	0x9
	.4byte	0xb3
	.byte	0x4
	.byte	0xd
	.4byte	.LASF75
	.byte	0x8
	.byte	0xc8
	.byte	0x9
	.4byte	0xe6
	.byte	0x8
	.byte	0x12
	.string	"len"
	.byte	0x8
	.byte	0xcb
	.byte	0x9
	.4byte	0xe6
	.byte	0xa
	.byte	0xd
	.4byte	.LASF76
	.byte	0x8
	.byte	0xd0
	.byte	0x8
	.4byte	0xce
	.byte	0xc
	.byte	0xd
	.4byte	.LASF77
	.byte	0x8
	.byte	0xd3
	.byte	0x8
	.4byte	0xce
	.byte	0xd
	.byte	0x12
	.string	"ref"
	.byte	0x8
	.byte	0xda
	.byte	0x8
	.4byte	0xce
	.byte	0xe
	.byte	0xd
	.4byte	.LASF78
	.byte	0x8
	.byte	0xdd
	.byte	0x8
	.4byte	0xce
	.byte	0xf
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x2c4
	.byte	0x10
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0x9
	.byte	0x34
	.byte	0xe
	.4byte	0x3af
	.byte	0xa
	.4byte	.LASF79
	.byte	0
	.byte	0xa
	.4byte	.LASF80
	.byte	0x1
	.byte	0xa
	.4byte	.LASF81
	.byte	0x2
	.byte	0xa
	.4byte	.LASF82
	.byte	0x3
	.byte	0xa
	.4byte	.LASF83
	.byte	0x4
	.byte	0xa
	.4byte	.LASF84
	.byte	0x5
	.byte	0xa
	.4byte	.LASF85
	.byte	0x6
	.byte	0xa
	.4byte	.LASF86
	.byte	0x7
	.byte	0xa
	.4byte	.LASF87
	.byte	0x8
	.byte	0xa
	.4byte	.LASF88
	.byte	0x9
	.byte	0xa
	.4byte	.LASF89
	.byte	0xa
	.byte	0xa
	.4byte	.LASF90
	.byte	0xb
	.byte	0xa
	.4byte	.LASF91
	.byte	0xc
	.byte	0xa
	.4byte	.LASF92
	.byte	0xd
	.byte	0xa
	.4byte	.LASF93
	.byte	0xe
	.byte	0xa
	.4byte	.LASF94
	.byte	0xf
	.byte	0
	.byte	0x9
	.4byte	.LASF95
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0xa
	.byte	0x71
	.byte	0x6
	.4byte	0x3d4
	.byte	0xa
	.4byte	.LASF96
	.byte	0
	.byte	0xa
	.4byte	.LASF97
	.byte	0x1
	.byte	0xa
	.4byte	.LASF98
	.byte	0x2
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x1db
	.byte	0x4
	.4byte	.LASF99
	.byte	0xb
	.byte	0x4d
	.byte	0x10
	.4byte	0x3e6
	.byte	0x6
	.byte	0x4
	.4byte	0x3ec
	.byte	0x13
	.4byte	0x40b
	.byte	0x14
	.4byte	0xb3
	.byte	0x14
	.4byte	0x40b
	.byte	0x14
	.4byte	0x33a
	.byte	0x14
	.4byte	0x3d4
	.byte	0x14
	.4byte	0xe6
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x411
	.byte	0xc
	.4byte	.LASF100
	.byte	0x28
	.byte	0xb
	.byte	0x51
	.byte	0x8
	.4byte	0x4e2
	.byte	0xd
	.4byte	.LASF101
	.byte	0xb
	.byte	0x53
	.byte	0xd
	.4byte	0x1ce
	.byte	0
	.byte	0xd
	.4byte	.LASF102
	.byte	0xb
	.byte	0x53
	.byte	0x21
	.4byte	0x1ce
	.byte	0x4
	.byte	0xd
	.4byte	.LASF103
	.byte	0xb
	.byte	0x53
	.byte	0x31
	.4byte	0xce
	.byte	0x8
	.byte	0xd
	.4byte	.LASF104
	.byte	0xb
	.byte	0x53
	.byte	0x41
	.4byte	0xce
	.byte	0x9
	.byte	0x12
	.string	"tos"
	.byte	0xb
	.byte	0x53
	.byte	0x52
	.4byte	0xce
	.byte	0xa
	.byte	0x12
	.string	"ttl"
	.byte	0xb
	.byte	0x53
	.byte	0x5c
	.4byte	0xce
	.byte	0xb
	.byte	0xd
	.4byte	.LASF73
	.byte	0xb
	.byte	0x57
	.byte	0x13
	.4byte	0x40b
	.byte	0xc
	.byte	0xd
	.4byte	.LASF77
	.byte	0xb
	.byte	0x59
	.byte	0x8
	.4byte	0xce
	.byte	0x10
	.byte	0xd
	.4byte	.LASF105
	.byte	0xb
	.byte	0x5b
	.byte	0x9
	.4byte	0xe6
	.byte	0x12
	.byte	0xd
	.4byte	.LASF106
	.byte	0xb
	.byte	0x5b
	.byte	0x15
	.4byte	0xe6
	.byte	0x14
	.byte	0xd
	.4byte	.LASF107
	.byte	0xb
	.byte	0x60
	.byte	0xe
	.4byte	0x19d
	.byte	0x18
	.byte	0xd
	.4byte	.LASF108
	.byte	0xb
	.byte	0x63
	.byte	0x8
	.4byte	0xce
	.byte	0x1c
	.byte	0xd
	.4byte	.LASF109
	.byte	0xb
	.byte	0x65
	.byte	0x8
	.4byte	0xce
	.byte	0x1d
	.byte	0xd
	.4byte	.LASF110
	.byte	0xb
	.byte	0x6e
	.byte	0xf
	.4byte	0x3da
	.byte	0x20
	.byte	0xd
	.4byte	.LASF111
	.byte	0xb
	.byte	0x70
	.byte	0x9
	.4byte	0xb3
	.byte	0x24
	.byte	0
	.byte	0xc
	.4byte	.LASF112
	.byte	0x8
	.byte	0x1
	.byte	0xb4
	.byte	0x8
	.4byte	0x50a
	.byte	0x12
	.string	"sec"
	.byte	0x1
	.byte	0xb5
	.byte	0x9
	.4byte	0xf2
	.byte	0
	.byte	0xd
	.4byte	.LASF113
	.byte	0x1
	.byte	0xb6
	.byte	0x9
	.4byte	0xf2
	.byte	0x4
	.byte	0
	.byte	0xc
	.4byte	.LASF114
	.byte	0x8
	.byte	0x1
	.byte	0xbc
	.byte	0x8
	.4byte	0x525
	.byte	0xd
	.4byte	.LASF115
	.byte	0x1
	.byte	0xc1
	.byte	0x14
	.4byte	0x4e2
	.byte	0
	.byte	0
	.byte	0x7
	.4byte	0x50a
	.byte	0xc
	.4byte	.LASF116
	.byte	0x30
	.byte	0x1
	.byte	0xce
	.byte	0x8
	.4byte	0x5c7
	.byte	0xd
	.4byte	.LASF117
	.byte	0x1
	.byte	0xcf
	.byte	0x8
	.4byte	0xce
	.byte	0
	.byte	0xd
	.4byte	.LASF118
	.byte	0x1
	.byte	0xd0
	.byte	0x8
	.4byte	0xce
	.byte	0x1
	.byte	0xd
	.4byte	.LASF119
	.byte	0x1
	.byte	0xd1
	.byte	0x8
	.4byte	0xce
	.byte	0x2
	.byte	0xd
	.4byte	.LASF120
	.byte	0x1
	.byte	0xd2
	.byte	0x8
	.4byte	0xce
	.byte	0x3
	.byte	0xd
	.4byte	.LASF121
	.byte	0x1
	.byte	0xd3
	.byte	0x9
	.4byte	0xf2
	.byte	0x4
	.byte	0xd
	.4byte	.LASF122
	.byte	0x1
	.byte	0xd4
	.byte	0x9
	.4byte	0xf2
	.byte	0x8
	.byte	0xd
	.4byte	.LASF123
	.byte	0x1
	.byte	0xd5
	.byte	0x9
	.4byte	0xf2
	.byte	0xc
	.byte	0xd
	.4byte	.LASF124
	.byte	0x1
	.byte	0xd6
	.byte	0x9
	.4byte	0x5c7
	.byte	0x10
	.byte	0xd
	.4byte	.LASF125
	.byte	0x1
	.byte	0xd7
	.byte	0x9
	.4byte	0x5c7
	.byte	0x18
	.byte	0xd
	.4byte	.LASF126
	.byte	0x1
	.byte	0xd8
	.byte	0x9
	.4byte	0x5c7
	.byte	0x20
	.byte	0xd
	.4byte	.LASF127
	.byte	0x1
	.byte	0xd9
	.byte	0x9
	.4byte	0x5c7
	.byte	0x28
	.byte	0
	.byte	0x15
	.4byte	0xf2
	.4byte	0x5d7
	.byte	0x16
	.4byte	0x2c
	.byte	0x1
	.byte	0
	.byte	0x17
	.4byte	.LASF128
	.byte	0x1
	.byte	0xe4
	.byte	0xd
	.4byte	0xce
	.byte	0x5
	.byte	0x3
	.4byte	sntp_opmode
	.byte	0x17
	.4byte	.LASF129
	.byte	0x1
	.byte	0xe7
	.byte	0x18
	.4byte	0x40b
	.byte	0x5
	.byte	0x3
	.4byte	sntp_pcb
	.byte	0xc
	.4byte	.LASF130
	.byte	0xc
	.byte	0x1
	.byte	0xe9
	.byte	0x8
	.4byte	0x630
	.byte	0xd
	.4byte	.LASF131
	.byte	0x1
	.byte	0xeb
	.byte	0xf
	.4byte	0xb5
	.byte	0
	.byte	0xd
	.4byte	.LASF72
	.byte	0x1
	.byte	0xed
	.byte	0xd
	.4byte	0x1ce
	.byte	0x4
	.byte	0xd
	.4byte	.LASF132
	.byte	0x1
	.byte	0xf0
	.byte	0x8
	.4byte	0xce
	.byte	0x8
	.byte	0
	.byte	0x15
	.4byte	0x5fb
	.4byte	0x640
	.byte	0x16
	.4byte	0x2c
	.byte	0x2
	.byte	0
	.byte	0x17
	.4byte	.LASF133
	.byte	0x1
	.byte	0xf3
	.byte	0x1b
	.4byte	0x630
	.byte	0x5
	.byte	0x3
	.4byte	sntp_servers
	.byte	0x17
	.4byte	.LASF134
	.byte	0x1
	.byte	0xfa
	.byte	0xd
	.4byte	0xce
	.byte	0x5
	.byte	0x3
	.4byte	sntp_current_server
	.byte	0x18
	.4byte	.LASF135
	.byte	0x1
	.2byte	0x102
	.byte	0xe
	.4byte	0xf2
	.byte	0x5
	.byte	0x3
	.4byte	sntp_retry_timeout
	.byte	0x18
	.4byte	.LASF136
	.byte	0x1
	.2byte	0x11d
	.byte	0x11
	.4byte	0x94
	.byte	0x5
	.byte	0x3
	.4byte	ntp_sec
	.byte	0x18
	.4byte	.LASF137
	.byte	0x1
	.2byte	0x11d
	.byte	0x1a
	.4byte	0x94
	.byte	0x5
	.byte	0x3
	.4byte	ntp_frag
	.byte	0x18
	.4byte	.LASF138
	.byte	0x1
	.2byte	0x11d
	.byte	0x24
	.4byte	0x94
	.byte	0x5
	.byte	0x3
	.4byte	time_obtained
	.byte	0x18
	.4byte	.LASF139
	.byte	0x1
	.2byte	0x11e
	.byte	0x11
	.4byte	0x94
	.byte	0x5
	.byte	0x3
	.4byte	ntp_update_delay
	.byte	0xe
	.4byte	.LASF140
	.byte	0x1
	.2byte	0x11f
	.byte	0x10
	.4byte	0xc7
	.byte	0x18
	.4byte	.LASF141
	.byte	0x1
	.2byte	0x120
	.byte	0x14
	.4byte	0x6c3
	.byte	0x5
	.byte	0x3
	.4byte	ntp_time_sync_cb
	.byte	0x19
	.4byte	.LASF142
	.byte	0x1
	.2byte	0x39c
	.byte	0x6
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x1
	.byte	0x9c
	.4byte	0x70c
	.byte	0x1a
	.4byte	.LASF144
	.byte	0x1
	.2byte	0x39c
	.byte	0x23
	.4byte	0x94
	.4byte	.LLST38
	.byte	0
	.byte	0x19
	.4byte	.LASF143
	.byte	0x1
	.2byte	0x397
	.byte	0x6
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x1
	.byte	0x9c
	.4byte	0x732
	.byte	0x1b
	.string	"cb"
	.byte	0x1
	.2byte	0x397
	.byte	0x25
	.4byte	0x6c3
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0x1c
	.4byte	.LASF147
	.byte	0x1
	.2byte	0x38e
	.byte	0x1
	.4byte	0xb5
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x1
	.byte	0x9c
	.4byte	0x75f
	.byte	0x1d
	.string	"idx"
	.byte	0x1
	.2byte	0x38e
	.byte	0x19
	.4byte	0xce
	.4byte	.LLST37
	.byte	0
	.byte	0x19
	.4byte	.LASF145
	.byte	0x1
	.2byte	0x37e
	.byte	0x1
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x1
	.byte	0x9c
	.4byte	0x797
	.byte	0x1d
	.string	"idx"
	.byte	0x1
	.2byte	0x37e
	.byte	0x19
	.4byte	0xce
	.4byte	.LLST36
	.byte	0x1e
	.4byte	.LASF146
	.byte	0x1
	.2byte	0x37e
	.byte	0x2a
	.4byte	0xb5
	.byte	0x1
	.byte	0x5b
	.byte	0
	.byte	0x1c
	.4byte	.LASF148
	.byte	0x1
	.2byte	0x35b
	.byte	0x5
	.4byte	0x33
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x1
	.byte	0x9c
	.4byte	0x823
	.byte	0x1a
	.4byte	.LASF149
	.byte	0x1
	.2byte	0x35b
	.byte	0x1d
	.4byte	0x823
	.4byte	.LLST31
	.byte	0x1a
	.4byte	.LASF150
	.byte	0x1
	.2byte	0x35b
	.byte	0x30
	.4byte	0x823
	.4byte	.LLST32
	.byte	0x1f
	.4byte	.LASF151
	.byte	0x1
	.2byte	0x35d
	.byte	0xe
	.4byte	0x94
	.4byte	.LLST33
	.byte	0x1f
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x35d
	.byte	0x1b
	.4byte	0x94
	.4byte	.LLST34
	.byte	0x1f
	.4byte	.LASF153
	.byte	0x1
	.2byte	0x35e
	.byte	0x9
	.4byte	0x33
	.4byte	.LLST35
	.byte	0x20
	.4byte	.LVL101
	.4byte	0x101d
	.byte	0x20
	.4byte	.LVL102
	.4byte	0x1029
	.byte	0x20
	.4byte	.LVL106
	.4byte	0x1035
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x94
	.byte	0x1c
	.4byte	.LASF154
	.byte	0x1
	.2byte	0x353
	.byte	0x1
	.4byte	0x3d4
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x1
	.byte	0x9c
	.4byte	0x856
	.byte	0x1d
	.string	"idx"
	.byte	0x1
	.2byte	0x353
	.byte	0x15
	.4byte	0xce
	.4byte	.LLST30
	.byte	0
	.byte	0x19
	.4byte	.LASF155
	.byte	0x1
	.2byte	0x320
	.byte	0x1
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x1
	.byte	0x9c
	.4byte	0x88e
	.byte	0x1d
	.string	"idx"
	.byte	0x1
	.2byte	0x320
	.byte	0x15
	.4byte	0xce
	.4byte	.LLST29
	.byte	0x1e
	.4byte	.LASF146
	.byte	0x1
	.2byte	0x320
	.byte	0x2b
	.4byte	0x3d4
	.byte	0x1
	.byte	0x5b
	.byte	0
	.byte	0x1c
	.4byte	.LASF156
	.byte	0x1
	.2byte	0x2ff
	.byte	0x1
	.4byte	0xce
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x1
	.byte	0x9c
	.4byte	0x8bb
	.byte	0x1d
	.string	"idx"
	.byte	0x1
	.2byte	0x2ff
	.byte	0x1b
	.4byte	0xce
	.4byte	.LLST28
	.byte	0
	.byte	0x21
	.4byte	.LASF159
	.byte	0x1
	.2byte	0x2f2
	.byte	0x1
	.4byte	0xce
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x1
	.byte	0x9c
	.byte	0x19
	.4byte	.LASF157
	.byte	0x1
	.2byte	0x2e5
	.byte	0x1
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x1
	.byte	0x9c
	.4byte	0x8f9
	.byte	0x1e
	.4byte	.LASF158
	.byte	0x1
	.2byte	0x2e5
	.byte	0x1c
	.4byte	0xce
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0x21
	.4byte	.LASF160
	.byte	0x1
	.2byte	0x2da
	.byte	0x6
	.4byte	0xce
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x1
	.byte	0x9c
	.byte	0x19
	.4byte	.LASF161
	.byte	0x1
	.2byte	0x2c5
	.byte	0x1
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x1
	.byte	0x9c
	.4byte	0x982
	.byte	0x22
	.4byte	.LBB29
	.4byte	.LBE29-.LBB29
	.byte	0x23
	.string	"i"
	.byte	0x1
	.2byte	0x2ca
	.byte	0xa
	.4byte	0xce
	.4byte	.LLST27
	.byte	0x24
	.4byte	.LVL84
	.4byte	0x1042
	.4byte	0x95b
	.byte	0x25
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	sntp_request
	.byte	0x25
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x24
	.4byte	.LVL85
	.4byte	0x1042
	.4byte	0x977
	.byte	0x25
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	sntp_try_next_server
	.byte	0x25
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x20
	.4byte	.LVL86
	.4byte	0x104e
	.byte	0
	.byte	0
	.byte	0x19
	.4byte	.LASF162
	.byte	0x1
	.2byte	0x29e
	.byte	0x1
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x1
	.byte	0x9c
	.4byte	0xa16
	.byte	0x24
	.4byte	.LVL74
	.4byte	0x105a
	.4byte	0x9ad
	.byte	0x25
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x2e
	.byte	0
	.byte	0x24
	.4byte	.LVL75
	.4byte	0x1066
	.4byte	0x9c4
	.byte	0x25
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.byte	0x24
	.4byte	.LVL76
	.4byte	0x1072
	.4byte	0x9e0
	.byte	0x25
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	sntp_recv
	.byte	0x25
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x20
	.4byte	.LVL77
	.4byte	0x107e
	.byte	0x26
	.4byte	.LVL78
	.4byte	0x108b
	.4byte	0xa05
	.byte	0x25
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	sntp_request
	.byte	0x25
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x27
	.4byte	.LVL79
	.4byte	0x1097
	.byte	0x25
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x7b
	.byte	0
	.byte	0
	.byte	0x28
	.4byte	.LASF164
	.byte	0x1
	.2byte	0x271
	.byte	0x1
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x1
	.byte	0x9c
	.4byte	0xab5
	.byte	0x1d
	.string	"arg"
	.byte	0x1
	.2byte	0x271
	.byte	0x14
	.4byte	0xb3
	.4byte	.LLST4
	.byte	0x18
	.4byte	.LASF163
	.byte	0x1
	.2byte	0x273
	.byte	0xd
	.4byte	0x1ce
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x23
	.string	"err"
	.byte	0x1
	.2byte	0x274
	.byte	0x9
	.4byte	0x262
	.4byte	.LLST5
	.byte	0x24
	.4byte	.LVL14
	.4byte	0x10a3
	.4byte	0xa81
	.byte	0x25
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x25
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	sntp_dns_found
	.byte	0x25
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x24
	.4byte	.LVL16
	.4byte	0xb24
	.4byte	0xa95
	.byte	0x25
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0x29
	.4byte	.LVL17
	.4byte	0x108b
	.byte	0x25
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xa
	.2byte	0x3a98
	.byte	0x25
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	sntp_try_next_server
	.byte	0x25
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x28
	.4byte	.LASF165
	.byte	0x1
	.2byte	0x259
	.byte	0x1
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x1
	.byte	0x9c
	.4byte	0xb24
	.byte	0x1a
	.4byte	.LASF166
	.byte	0x1
	.2byte	0x259
	.byte	0x1c
	.4byte	0xb5
	.4byte	.LLST12
	.byte	0x1a
	.4byte	.LASF167
	.byte	0x1
	.2byte	0x259
	.byte	0x37
	.4byte	0x3d4
	.4byte	.LLST13
	.byte	0x1d
	.string	"arg"
	.byte	0x1
	.2byte	0x259
	.byte	0x45
	.4byte	0xb3
	.4byte	.LLST14
	.byte	0x26
	.4byte	.LVL33
	.4byte	0xb24
	.4byte	0xb14
	.byte	0x25
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0
	.byte	0x27
	.4byte	.LVL35
	.4byte	0xeab
	.byte	0x25
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x28
	.4byte	.LASF168
	.byte	0x1
	.2byte	0x232
	.byte	0x1
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x1
	.byte	0x9c
	.4byte	0xc17
	.byte	0x1a
	.4byte	.LASF169
	.byte	0x1
	.2byte	0x232
	.byte	0x24
	.4byte	0x3d4
	.4byte	.LLST0
	.byte	0x23
	.string	"p"
	.byte	0x1
	.2byte	0x234
	.byte	0x10
	.4byte	0x33a
	.4byte	.LLST1
	.byte	0x2a
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.4byte	0xbe4
	.byte	0x1f
	.4byte	.LASF170
	.byte	0x1
	.2byte	0x23a
	.byte	0x16
	.4byte	0xc17
	.4byte	.LLST2
	.byte	0x2b
	.4byte	0xf0a
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.byte	0x1
	.2byte	0x23d
	.byte	0x5
	.4byte	0xbb3
	.byte	0x2c
	.4byte	0xf18
	.4byte	.LLST3
	.byte	0x29
	.4byte	.LVL5
	.4byte	0x10af
	.byte	0x25
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x25
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x25
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x24
	.4byte	.LVL7
	.4byte	0x10bb
	.4byte	0xbd3
	.byte	0x25
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x25
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x25
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x8
	.byte	0x7b
	.byte	0
	.byte	0x29
	.4byte	.LVL8
	.4byte	0x10c7
	.byte	0x25
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0
	.byte	0x24
	.4byte	.LVL2
	.4byte	0x10d4
	.4byte	0xc05
	.byte	0x25
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0xb6
	.byte	0x25
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x8
	.byte	0x30
	.byte	0x25
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xa
	.2byte	0x280
	.byte	0
	.byte	0x27
	.4byte	.LVL11
	.4byte	0x108b
	.byte	0x25
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xa
	.2byte	0x3a98
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x52a
	.byte	0x2d
	.4byte	.LASF171
	.byte	0x1
	.2byte	0x1c6
	.byte	0x1
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x1
	.byte	0x9c
	.4byte	0xeab
	.byte	0x1d
	.string	"arg"
	.byte	0x1
	.2byte	0x1c6
	.byte	0x11
	.4byte	0xb3
	.4byte	.LLST15
	.byte	0x1d
	.string	"pcb"
	.byte	0x1
	.2byte	0x1c6
	.byte	0x26
	.4byte	0x40b
	.4byte	.LLST16
	.byte	0x1d
	.string	"p"
	.byte	0x1
	.2byte	0x1c6
	.byte	0x38
	.4byte	0x33a
	.4byte	.LLST17
	.byte	0x1a
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x1c6
	.byte	0x4c
	.4byte	0x3d4
	.4byte	.LLST18
	.byte	0x1a
	.4byte	.LASF172
	.byte	0x1
	.2byte	0x1c6
	.byte	0x58
	.4byte	0xe6
	.4byte	.LLST19
	.byte	0x18
	.4byte	.LASF173
	.byte	0x1
	.2byte	0x1c8
	.byte	0x1a
	.4byte	0x50a
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x1f
	.4byte	.LASF174
	.byte	0x1
	.2byte	0x1c9
	.byte	0x8
	.4byte	0xce
	.4byte	.LLST20
	.byte	0x1f
	.4byte	.LASF118
	.byte	0x1
	.2byte	0x1ca
	.byte	0x8
	.4byte	0xce
	.4byte	.LLST21
	.byte	0x23
	.string	"err"
	.byte	0x1
	.2byte	0x1cb
	.byte	0x9
	.4byte	0x262
	.4byte	.LLST22
	.byte	0x2a
	.4byte	.LBB28
	.4byte	.LBE28-.LBB28
	.4byte	0xd39
	.byte	0x1f
	.4byte	.LASF175
	.byte	0x1
	.2byte	0x215
	.byte	0xd
	.4byte	0xf2
	.4byte	.LLST26
	.byte	0x24
	.4byte	.LVL63
	.4byte	0x1042
	.4byte	0xd04
	.byte	0x25
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	sntp_try_next_server
	.byte	0x25
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x24
	.4byte	.LVL65
	.4byte	0x1042
	.4byte	0xd20
	.byte	0x25
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	sntp_request
	.byte	0x25
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x29
	.4byte	.LVL67
	.4byte	0x108b
	.byte	0x25
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	sntp_request
	.byte	0x25
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x2b
	.4byte	0xf26
	.4byte	.LBB26
	.4byte	.LBE26-.LBB26
	.byte	0x1
	.2byte	0x20d
	.byte	0x5
	.4byte	0xdeb
	.byte	0x2c
	.4byte	0xf34
	.4byte	.LLST23
	.byte	0x2e
	.4byte	0xf41
	.4byte	.LLST24
	.byte	0x2e
	.4byte	0xf4e
	.4byte	.LLST25
	.byte	0x20
	.4byte	.LVL51
	.4byte	0x10e1
	.byte	0x20
	.4byte	.LVL53
	.4byte	0x10e1
	.byte	0x24
	.4byte	.LVL55
	.4byte	0x1066
	.4byte	0xd92
	.byte	0x25
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0x20
	.4byte	.LVL56
	.4byte	0x101d
	.byte	0x20
	.4byte	.LVL58
	.4byte	0x1035
	.byte	0x20
	.4byte	.LVL60
	.4byte	0x10ed
	.byte	0x20
	.4byte	.LVL61
	.4byte	0x1029
	.byte	0x29
	.4byte	.LVL62
	.4byte	0x1066
	.byte	0x25
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0x25
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x25
	.byte	0x1
	.byte	0x5c
	.byte	0x17
	.byte	0x79
	.byte	0
	.byte	0xf7
	.byte	0x2c
	.byte	0xf7
	.byte	0x25
	.byte	0xc
	.4byte	0xf4240
	.byte	0xf7
	.byte	0x25
	.byte	0x1e
	.byte	0x8
	.byte	0x20
	.byte	0xf7
	.byte	0x25
	.byte	0x25
	.byte	0xf7
	.byte	0x2c
	.byte	0xf7
	.byte	0
	.byte	0
	.byte	0
	.byte	0x24
	.4byte	.LVL38
	.4byte	0x1066
	.4byte	0xe02
	.byte	0x25
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0x24
	.4byte	.LVL39
	.4byte	0x10f9
	.4byte	0xe1b
	.byte	0x25
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x25
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x24
	.4byte	.LVL42
	.4byte	0x10f9
	.4byte	0xe34
	.byte	0x25
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x25
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x24
	.4byte	.LVL45
	.4byte	0x1066
	.4byte	0xe4b
	.byte	0x25
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.byte	0x24
	.4byte	.LVL48
	.4byte	0x10c7
	.4byte	0xe5f
	.byte	0x25
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x24
	.4byte	.LVL49
	.4byte	0x1066
	.4byte	0xe76
	.byte	0x25
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0x24
	.4byte	.LVL70
	.4byte	0x1106
	.4byte	0xe9b
	.byte	0x25
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x25
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x25
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x38
	.byte	0x25
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x8
	.byte	0x28
	.byte	0
	.byte	0x29
	.4byte	.LVL73
	.4byte	0xeab
	.byte	0x25
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x2f
	.4byte	.LASF177
	.byte	0x1
	.2byte	0x1a2
	.byte	0x1
	.byte	0x1
	.4byte	0xedf
	.byte	0x30
	.string	"arg"
	.byte	0x1
	.2byte	0x1a2
	.byte	0x1c
	.4byte	0xb3
	.byte	0x31
	.4byte	.LASF176
	.byte	0x1
	.2byte	0x1a4
	.byte	0x8
	.4byte	0xce
	.byte	0x32
	.string	"i"
	.byte	0x1
	.2byte	0x1a4
	.byte	0x14
	.4byte	0xce
	.byte	0
	.byte	0x2f
	.4byte	.LASF178
	.byte	0x1
	.2byte	0x180
	.byte	0x1
	.byte	0x1
	.4byte	0xf0a
	.byte	0x30
	.string	"arg"
	.byte	0x1
	.2byte	0x180
	.byte	0x12
	.4byte	0xb3
	.byte	0x33
	.byte	0x31
	.4byte	.LASF179
	.byte	0x1
	.2byte	0x18c
	.byte	0xb
	.4byte	0xf2
	.byte	0
	.byte	0
	.byte	0x2f
	.4byte	.LASF180
	.byte	0x1
	.2byte	0x162
	.byte	0x1
	.byte	0x1
	.4byte	0xf26
	.byte	0x30
	.string	"req"
	.byte	0x1
	.2byte	0x162
	.byte	0x2a
	.4byte	0xc17
	.byte	0
	.byte	0x2f
	.4byte	.LASF181
	.byte	0x1
	.2byte	0x126
	.byte	0x1
	.byte	0x1
	.4byte	0xf5c
	.byte	0x34
	.4byte	.LASF173
	.byte	0x1
	.2byte	0x126
	.byte	0x2c
	.4byte	0xf5c
	.byte	0x32
	.string	"sec"
	.byte	0x1
	.2byte	0x128
	.byte	0x9
	.4byte	0xfe
	.byte	0x31
	.4byte	.LASF113
	.byte	0x1
	.2byte	0x129
	.byte	0x9
	.4byte	0xf2
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x525
	.byte	0x35
	.4byte	0xeab
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x1
	.byte	0x9c
	.4byte	0x101d
	.byte	0x2c
	.4byte	0xeb9
	.4byte	.LLST6
	.byte	0x2e
	.4byte	0xec6
	.4byte	.LLST7
	.byte	0x2e
	.4byte	0xed3
	.4byte	.LLST8
	.byte	0x36
	.4byte	0xeab
	.4byte	.LBB14
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.2byte	0x1a2
	.byte	0x1
	.4byte	0xfce
	.byte	0x2c
	.4byte	0xeb9
	.4byte	.LLST9
	.byte	0x37
	.4byte	.Ldebug_ranges0+0
	.byte	0x38
	.4byte	0xec6
	.byte	0x38
	.4byte	0xed3
	.byte	0x27
	.4byte	.LVL24
	.4byte	0xa16
	.byte	0x25
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.byte	0x39
	.4byte	0xedf
	.4byte	.LBB20
	.4byte	.LBE20-.LBB20
	.byte	0x1
	.2byte	0x1bd
	.byte	0x3
	.byte	0x2c
	.4byte	0xeed
	.4byte	.LLST10
	.byte	0x3a
	.4byte	0xefa
	.4byte	.LBB22
	.4byte	.LBE22-.LBB22
	.4byte	0x1003
	.byte	0x2e
	.4byte	0xefb
	.4byte	.LLST11
	.byte	0
	.byte	0x29
	.4byte	.LVL28
	.4byte	0x108b
	.byte	0x25
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	sntp_request
	.byte	0x25
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.byte	0x3b
	.4byte	.LASF182
	.4byte	.LASF182
	.byte	0xc
	.byte	0x61
	.byte	0xd
	.byte	0x3b
	.4byte	.LASF183
	.4byte	.LASF183
	.byte	0xc
	.byte	0x62
	.byte	0xd
	.byte	0x3c
	.4byte	.LASF184
	.4byte	.LASF184
	.byte	0xd
	.2byte	0x547
	.byte	0xc
	.byte	0x3b
	.4byte	.LASF185
	.4byte	.LASF185
	.byte	0xe
	.byte	0x70
	.byte	0x6
	.byte	0x3b
	.4byte	.LASF186
	.4byte	.LASF186
	.byte	0xb
	.byte	0x79
	.byte	0x6
	.byte	0x3b
	.4byte	.LASF187
	.4byte	.LASF187
	.byte	0xb
	.byte	0x78
	.byte	0x12
	.byte	0x3b
	.4byte	.LASF188
	.4byte	.LASF188
	.byte	0xf
	.byte	0xc8
	.byte	0x5
	.byte	0x3b
	.4byte	.LASF189
	.4byte	.LASF189
	.byte	0xb
	.byte	0x80
	.byte	0x6
	.byte	0x3c
	.4byte	.LASF190
	.4byte	.LASF190
	.byte	0x10
	.2byte	0x13b
	.byte	0xc
	.byte	0x3b
	.4byte	.LASF191
	.4byte	.LASF191
	.byte	0xe
	.byte	0x6d
	.byte	0x6
	.byte	0x3b
	.4byte	.LASF192
	.4byte	.LASF192
	.byte	0xb
	.byte	0x7a
	.byte	0x7
	.byte	0x3b
	.4byte	.LASF193
	.4byte	.LASF193
	.byte	0x11
	.byte	0x6d
	.byte	0x7
	.byte	0x3b
	.4byte	.LASF194
	.4byte	.LASF194
	.byte	0x12
	.byte	0x21
	.byte	0x8
	.byte	0x3b
	.4byte	.LASF195
	.4byte	.LASF195
	.byte	0xb
	.byte	0x88
	.byte	0x7
	.byte	0x3c
	.4byte	.LASF196
	.4byte	.LASF196
	.byte	0x8
	.2byte	0x122
	.byte	0x6
	.byte	0x3c
	.4byte	.LASF197
	.4byte	.LASF197
	.byte	0x8
	.2byte	0x110
	.byte	0xe
	.byte	0x3b
	.4byte	.LASF198
	.4byte	.LASF198
	.byte	0x13
	.byte	0x65
	.byte	0x7
	.byte	0x3b
	.4byte	.LASF199
	.4byte	.LASF199
	.byte	0x14
	.byte	0x7
	.byte	0x6
	.byte	0x3c
	.4byte	.LASF200
	.4byte	.LASF200
	.byte	0x8
	.2byte	0x137
	.byte	0x6
	.byte	0x3c
	.4byte	.LASF201
	.4byte	.LASF201
	.byte	0x8
	.2byte	0x128
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
	.byte	0x15
	.byte	0
	.byte	0x27
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x9
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
	.byte	0xa
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xb
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
	.byte	0xf
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
	.byte	0x10
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
	.byte	0x11
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xd
	.byte	0
	.byte	0
	.byte	0x12
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
	.byte	0x13
	.byte	0x15
	.byte	0x1
	.byte	0x27
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x14
	.byte	0x5
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x15
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x16
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
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
	.byte	0x22
	.byte	0xb
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0x23
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
	.byte	0x24
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
	.byte	0x25
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x26
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
	.byte	0x27
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
	.byte	0x28
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
	.byte	0x29
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x2a
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
	.byte	0x2b
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
	.byte	0x2c
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
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
	.byte	0x96,0x42
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x2e
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
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
	.byte	0x32
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
	.byte	0x33
	.byte	0xb
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x34
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
	.byte	0x35
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
	.byte	0x36
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
	.byte	0x37
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x38
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x39
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
	.byte	0x3a
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
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
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
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST38:
	.4byte	.LVL120
	.4byte	.LVL121
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL121
	.4byte	.LFE29
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL115
	.4byte	.LVL116
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL116
	.4byte	.LVL117
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL117
	.4byte	.LVL118
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL118
	.4byte	.LFE27
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL113
	.4byte	.LVL114
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL114
	.4byte	.LFE26
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL100
	.4byte	.LVL101-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL101-1
	.4byte	.LVL104
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL104
	.4byte	.LVL105
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL105
	.4byte	.LFE25
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL100
	.4byte	.LVL101-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL101-1
	.4byte	.LVL103
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL103
	.4byte	.LVL105
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL105
	.4byte	.LFE25
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL108
	.4byte	.LVL109
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL109
	.4byte	.LVL110
	.2byte	0xa
	.byte	0x7f
	.byte	0
	.byte	0xa
	.2byte	0x3e8
	.byte	0x1b
	.byte	0x7c
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL110
	.4byte	.LFE25
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL109
	.4byte	.LVL111
	.2byte	0xe
	.byte	0x7f
	.byte	0
	.byte	0xa
	.2byte	0x3e8
	.byte	0x14
	.byte	0x14
	.byte	0x1b
	.byte	0x1e
	.byte	0x1c
	.byte	0x7e
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL112
	.4byte	.LFE25
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL107
	.4byte	.LVL111
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL96
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL97
	.4byte	.LVL98
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL98
	.4byte	.LVL99
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL99
	.4byte	.LFE24
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL93
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL94
	.4byte	.LVL95
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL95
	.4byte	.LFE23
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL89
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL90
	.4byte	.LVL91
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL91
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL92
	.4byte	.LFE22
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL80
	.4byte	.LVL81
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL81
	.4byte	.LVL82
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL82
	.4byte	.LVL83
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL83
	.4byte	.LVL87
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL13
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL32
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL31
	.4byte	.LVL33-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL33-1
	.4byte	.LVL33
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL34
	.4byte	.LVL35-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL35-1
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL31
	.4byte	.LVL33-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL33-1
	.4byte	.LVL33
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LVL35-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL35-1
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LFE14
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL2
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL4
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL11
	.4byte	.LFE14
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL3
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL3
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL37
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL36
	.4byte	.LVL38-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL38-1
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL36
	.4byte	.LVL38-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL38-1
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL52
	.4byte	.LVL68
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL68
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL36
	.4byte	.LVL38-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL38-1
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL36
	.4byte	.LVL38-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL38-1
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL42
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL68
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL38
	.4byte	.LVL43
	.2byte	0x3
	.byte	0x9
	.byte	0xf0
	.byte	0x9f
	.4byte	.LVL43
	.4byte	.LVL46
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x3
	.byte	0x9
	.byte	0xf0
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL50
	.4byte	.LVL67
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL68
	.4byte	.LVL70
	.2byte	0x3
	.byte	0x9
	.byte	0xf0
	.byte	0x9f
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
	.4byte	.LFE13
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL66
	.4byte	.LVL67-1
	.2byte	0x5
	.byte	0x3
	.4byte	ntp_update_delay
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL50
	.4byte	.LVL62
	.2byte	0x3
	.byte	0x91
	.byte	0x58
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL52
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL57
	.4byte	.LVL64
	.2byte	0x7
	.byte	0x78
	.byte	0x80,0xfd,0xa9,0x9d,0x78
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL54
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL19
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL19
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL24
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL27
	.4byte	.LVL28-1
	.2byte	0x5
	.byte	0x3
	.4byte	sntp_current_server
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LFE12
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL22
	.4byte	.LVL24
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL26
	.4byte	.LVL30
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0xa4
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
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
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB14
	.4byte	.LBE14
	.4byte	.LBB18
	.4byte	.LBE18
	.4byte	.LBB19
	.4byte	.LBE19
	.4byte	0
	.4byte	0
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LFB13
	.4byte	.LFE13
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
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF41:
	.string	"IPADDR_TYPE_ANY"
.LASF24:
	.string	"LWIP_IANA_PORT_DHCP_CLIENT"
.LASF80:
	.string	"MEMP_UDP_PCB"
.LASF190:
	.string	"bl_rand"
.LASF90:
	.string	"MEMP_SYS_TIMEOUT"
.LASF71:
	.string	"pbuf"
.LASF43:
	.string	"ERR_OK"
.LASF192:
	.string	"udp_bind"
.LASF14:
	.string	"uint64_t"
.LASF173:
	.string	"timestamps"
.LASF78:
	.string	"if_idx"
.LASF99:
	.string	"udp_recv_fn"
.LASF118:
	.string	"stratum"
.LASF188:
	.string	"printf"
.LASF0:
	.string	"long long unsigned int"
.LASF134:
	.string	"sntp_current_server"
.LASF72:
	.string	"addr"
.LASF20:
	.string	"s32_t"
.LASF83:
	.string	"MEMP_TCP_SEG"
.LASF91:
	.string	"MEMP_NETDB"
.LASF73:
	.string	"next"
.LASF7:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF105:
	.string	"local_port"
.LASF51:
	.string	"ERR_USE"
.LASF204:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/sntp"
.LASF34:
	.string	"LWIP_IANA_PORT_MDNS"
.LASF182:
	.string	"vTaskEnterCritical"
.LASF44:
	.string	"ERR_MEM"
.LASF183:
	.string	"vTaskExitCritical"
.LASF6:
	.string	"long int"
.LASF62:
	.string	"PBUF_IP"
.LASF69:
	.string	"PBUF_POOL"
.LASF79:
	.string	"MEMP_RAW_PCB"
.LASF136:
	.string	"ntp_sec"
.LASF70:
	.string	"ip4_addr"
.LASF68:
	.string	"PBUF_REF"
.LASF133:
	.string	"sntp_servers"
.LASF98:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_MAX"
.LASF55:
	.string	"ERR_IF"
.LASF10:
	.string	"uint16_t"
.LASF171:
	.string	"sntp_recv"
.LASF141:
	.string	"ntp_time_sync_cb"
.LASF32:
	.string	"LWIP_IANA_PORT_SMTPS"
.LASF148:
	.string	"sntp_get_time"
.LASF150:
	.string	"frags"
.LASF180:
	.string	"sntp_initialize_request"
.LASF128:
	.string	"sntp_opmode"
.LASF199:
	.string	"bl_sys_time_update"
.LASF47:
	.string	"ERR_RTE"
.LASF153:
	.string	"ms_diff"
.LASF117:
	.string	"li_vn_mode"
.LASF48:
	.string	"ERR_INPROGRESS"
.LASF139:
	.string	"ntp_update_delay"
.LASF179:
	.string	"new_retry_timeout"
.LASF123:
	.string	"reference_identifier"
.LASF157:
	.string	"sntp_setoperatingmode"
.LASF76:
	.string	"type_internal"
.LASF172:
	.string	"port"
.LASF170:
	.string	"sntpmsg"
.LASF164:
	.string	"sntp_request"
.LASF16:
	.string	"u8_t"
.LASF89:
	.string	"MEMP_IGMP_GROUP"
.LASF92:
	.string	"MEMP_PBUF"
.LASF30:
	.string	"LWIP_IANA_PORT_SNMP_TRAP"
.LASF124:
	.string	"reference_timestamp"
.LASF13:
	.string	"long unsigned int"
.LASF103:
	.string	"netif_idx"
.LASF52:
	.string	"ERR_ALREADY"
.LASF110:
	.string	"recv"
.LASF201:
	.string	"pbuf_copy_partial"
.LASF131:
	.string	"name"
.LASF165:
	.string	"sntp_dns_found"
.LASF122:
	.string	"root_dispersion"
.LASF162:
	.string	"sntp_init"
.LASF205:
	.string	"ip_addr_any"
.LASF11:
	.string	"short unsigned int"
.LASF35:
	.string	"LWIP_IANA_PORT_SECURE_MQTT"
.LASF200:
	.string	"pbuf_get_at"
.LASF196:
	.string	"pbuf_free"
.LASF185:
	.string	"sys_untimeout"
.LASF81:
	.string	"MEMP_TCP_PCB"
.LASF176:
	.string	"old_server"
.LASF191:
	.string	"sys_timeout"
.LASF111:
	.string	"recv_arg"
.LASF145:
	.string	"sntp_setservername"
.LASF198:
	.string	"lwip_htonl"
.LASF184:
	.string	"xTaskGetTickCount"
.LASF109:
	.string	"mcast_ttl"
.LASF38:
	.string	"lwip_ip_addr_type"
.LASF168:
	.string	"sntp_send_request"
.LASF130:
	.string	"sntp_server"
.LASF94:
	.string	"MEMP_MAX"
.LASF42:
	.string	"ip_addr_t"
.LASF4:
	.string	"int8_t"
.LASF60:
	.string	"err_t"
.LASF119:
	.string	"poll"
.LASF155:
	.string	"sntp_setserver"
.LASF160:
	.string	"sntp_enabled"
.LASF75:
	.string	"tot_len"
.LASF33:
	.string	"LWIP_IANA_PORT_MQTT"
.LASF186:
	.string	"udp_remove"
.LASF74:
	.string	"payload"
.LASF116:
	.string	"sntp_msg"
.LASF67:
	.string	"PBUF_ROM"
.LASF1:
	.string	"unsigned int"
.LASF159:
	.string	"sntp_getoperatingmode"
.LASF31:
	.string	"LWIP_IANA_PORT_HTTPS"
.LASF175:
	.string	"sntp_update_delay"
.LASF177:
	.string	"sntp_try_next_server"
.LASF112:
	.string	"sntp_time"
.LASF195:
	.string	"udp_sendto"
.LASF156:
	.string	"sntp_getreachability"
.LASF189:
	.string	"udp_recv"
.LASF27:
	.string	"LWIP_IANA_PORT_SNTP"
.LASF63:
	.string	"PBUF_LINK"
.LASF113:
	.string	"frac"
.LASF149:
	.string	"seconds"
.LASF158:
	.string	"operating_mode"
.LASF137:
	.string	"ntp_frag"
.LASF203:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/sntp/sntp.c"
.LASF49:
	.string	"ERR_VAL"
.LASF28:
	.string	"LWIP_IANA_PORT_NETBIOS"
.LASF5:
	.string	"int32_t"
.LASF9:
	.string	"unsigned char"
.LASF59:
	.string	"ERR_ARG"
.LASF54:
	.string	"ERR_CONN"
.LASF101:
	.string	"local_ip"
.LASF144:
	.string	"delay"
.LASF97:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_IGMP"
.LASF3:
	.string	"short int"
.LASF21:
	.string	"u64_t"
.LASF143:
	.string	"sntp_settimesynccb"
.LASF178:
	.string	"sntp_retry"
.LASF19:
	.string	"u32_t"
.LASF140:
	.string	"ntp_sync_cb"
.LASF107:
	.string	"mcast_ip4"
.LASF146:
	.string	"server"
.LASF154:
	.string	"sntp_getserver"
.LASF142:
	.string	"sntp_setupdatedelay"
.LASF17:
	.string	"s8_t"
.LASF65:
	.string	"PBUF_RAW"
.LASF66:
	.string	"PBUF_RAM"
.LASF100:
	.string	"udp_pcb"
.LASF57:
	.string	"ERR_RST"
.LASF12:
	.string	"uint32_t"
.LASF135:
	.string	"sntp_retry_timeout"
.LASF106:
	.string	"remote_port"
.LASF96:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_DHCP"
.LASF120:
	.string	"precision"
.LASF87:
	.string	"MEMP_TCPIP_MSG_API"
.LASF56:
	.string	"ERR_ABRT"
.LASF15:
	.string	"char"
.LASF174:
	.string	"mode"
.LASF22:
	.string	"LWIP_IANA_PORT_SMTP"
.LASF163:
	.string	"sntp_server_address"
.LASF85:
	.string	"MEMP_NETBUF"
.LASF127:
	.string	"transmit_timestamp"
.LASF82:
	.string	"MEMP_TCP_PCB_LISTEN"
.LASF86:
	.string	"MEMP_NETCONN"
.LASF84:
	.string	"MEMP_ALTCP_PCB"
.LASF61:
	.string	"PBUF_TRANSPORT"
.LASF93:
	.string	"MEMP_PBUF_POOL"
.LASF147:
	.string	"sntp_getservername"
.LASF121:
	.string	"root_delay"
.LASF181:
	.string	"sntp_process"
.LASF169:
	.string	"server_addr"
.LASF23:
	.string	"LWIP_IANA_PORT_DHCP_SERVER"
.LASF187:
	.string	"udp_new_ip_type"
.LASF58:
	.string	"ERR_CLSD"
.LASF104:
	.string	"so_options"
.LASF36:
	.string	"ip4_addr_t"
.LASF125:
	.string	"originate_timestamp"
.LASF132:
	.string	"reachability"
.LASF18:
	.string	"u16_t"
.LASF45:
	.string	"ERR_BUF"
.LASF194:
	.string	"memset"
.LASF95:
	.string	"lwip_internal_netif_client_data_index"
.LASF53:
	.string	"ERR_ISCONN"
.LASF129:
	.string	"sntp_pcb"
.LASF126:
	.string	"receive_timestamp"
.LASF151:
	.string	"seconds_now"
.LASF39:
	.string	"IPADDR_TYPE_V4"
.LASF202:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
.LASF167:
	.string	"ipaddr"
.LASF114:
	.string	"sntp_timestamps"
.LASF46:
	.string	"ERR_TIMEOUT"
.LASF8:
	.string	"uint8_t"
.LASF138:
	.string	"time_obtained"
.LASF102:
	.string	"remote_ip"
.LASF77:
	.string	"flags"
.LASF37:
	.string	"lwip_iana_port_number"
.LASF152:
	.string	"frags_now"
.LASF25:
	.string	"LWIP_IANA_PORT_TFTP"
.LASF50:
	.string	"ERR_WOULDBLOCK"
.LASF64:
	.string	"PBUF_RAW_TX"
.LASF29:
	.string	"LWIP_IANA_PORT_SNMP"
.LASF166:
	.string	"hostname"
.LASF40:
	.string	"IPADDR_TYPE_V6"
.LASF193:
	.string	"dns_gethostbyname"
.LASF26:
	.string	"LWIP_IANA_PORT_HTTP"
.LASF108:
	.string	"mcast_ifindex"
.LASF197:
	.string	"pbuf_alloc"
.LASF161:
	.string	"sntp_stop"
.LASF115:
	.string	"xmit"
.LASF88:
	.string	"MEMP_TCPIP_MSG_INPKT"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
