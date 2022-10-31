	.file	"test_case.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.rodata.mbedtls_tc_ecp_p256_mul.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"99A1F7B45827419C35E67F42BC02FE7CFA7629430EBBF32AF55E77E8B5ED88F5"
	.align	2
.LC1:
	.string	"%s: LN %d returned %d\r\n"
	.align	2
.LC2:
	.string	"06B8FBCE1A4909B119808FCDBE45DF209F9B2FFE5C17E12FC04F199B38FA687A"
	.align	2
.LC3:
	.string	"AE9FAFB90A1E91F2C1955C7D83D100C0CB5FC6F253EED2DFFD6C2C60A4F183B8"
	.align	2
.LC4:
	.string	"01"
	.align	2
.LC5:
	.string	"Result mismatch!\r\n"
	.section	.text.mbedtls_tc_ecp_p256_mul,"ax",@progbits
	.align	1
	.globl	mbedtls_tc_ecp_p256_mul
	.type	mbedtls_tc_ecp_p256_mul, @function
mbedtls_tc_ecp_p256_mul:
.LFB4:
	.file 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/mbedtls_lts/port/test_case.c"
	.loc 1 24 1
	.cfi_startproc
	.loc 1 25 5
	.loc 1 26 4
.LVL0:
	.loc 1 27 5
	.loc 1 28 5
	.loc 1 24 1 is_stmt 0
	addi	sp,sp,-224
	.cfi_def_cfa_offset 224
	.loc 1 28 5
	addi	a0,sp,84
	.loc 1 24 1
	sw	ra,220(sp)
	sw	s0,216(sp)
	sw	s1,212(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.loc 1 28 5
	call	mbedtls_ecp_group_init
.LVL1:
	.loc 1 29 5 is_stmt 1
	li	a1,3
	addi	a0,sp,84
	call	mbedtls_ecp_group_load
.LVL2:
	.loc 1 31 5
	.loc 1 32 5
	.loc 1 33 5
	addi	a0,sp,12
	call	mbedtls_ecp_point_init
.LVL3:
	.loc 1 34 5
	addi	a0,sp,48
	call	mbedtls_ecp_point_init
.LVL4:
	.loc 1 35 5
	mv	a0,sp
	call	mbedtls_mpi_init
.LVL5:
	.loc 1 37 5
	.loc 1 38 5
	.loc 1 39 5
	.loc 1 40 5
	.loc 1 42 5
	.loc 1 42 10
	.loc 1 42 21 is_stmt 0
	lui	a2,%hi(.LC0)
	addi	a2,a2,%lo(.LC0)
	li	a1,16
	mv	a0,sp
	call	mbedtls_mpi_read_string
.LVL6:
	.loc 1 42 13
	beq	a0,zero,.L2
	mv	s0,a0
	.loc 1 42 67 is_stmt 1 discriminator 1
	mv	a3,a0
	li	a2,42
.LVL7:
.L16:
	.loc 1 47 10 is_stmt 0 discriminator 1
	lui	a1,%hi(.LANCHOR0)
	lui	a0,%hi(.LC1)
	addi	a1,a1,%lo(.LANCHOR0)
	addi	a0,a0,%lo(.LC1)
	call	printf
.LVL8:
	.loc 1 47 66 is_stmt 1 discriminator 1
.L15:
	.loc 1 26 9 is_stmt 0
	li	s1,0
.L3:
.LVL9:
	.loc 1 54 5 is_stmt 1
	addi	a0,sp,84
	call	mbedtls_ecp_group_free
.LVL10:
	.loc 1 55 5
	addi	a0,sp,12
	call	mbedtls_ecp_point_free
.LVL11:
	.loc 1 56 5
	addi	a0,sp,48
	call	mbedtls_ecp_point_free
.LVL12:
	.loc 1 57 5
	mv	a0,sp
	call	mbedtls_mpi_free
.LVL13:
	.loc 1 58 5
	.loc 1 58 8 is_stmt 0
	beq	s0,zero,.L8
	.loc 1 59 16
	li	s1,0
.LVL14:
.L8:
	.loc 1 61 5 is_stmt 1
	.loc 1 62 1 is_stmt 0
	lw	ra,220(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,216(sp)
	.cfi_restore 8
.LVL15:
	mv	a0,s1
	lw	s1,212(sp)
	.cfi_restore 9
.LVL16:
	addi	sp,sp,224
	.cfi_def_cfa_offset 0
	jr	ra
.LVL17:
.L2:
	.cfi_restore_state
	.loc 1 42 143 is_stmt 1 discriminator 2
	.loc 1 43 5 discriminator 2
	.loc 1 43 10 discriminator 2
	.loc 1 43 21 is_stmt 0 discriminator 2
	lui	a2,%hi(.LC2)
	addi	a2,a2,%lo(.LC2)
	li	a1,16
	addi	a0,sp,48
.LVL18:
	call	mbedtls_mpi_read_string
.LVL19:
	mv	s0,a0
.LVL20:
	.loc 1 43 13 discriminator 2
	beq	a0,zero,.L4
	.loc 1 43 76 is_stmt 1 discriminator 1
	mv	a3,a0
	li	a2,43
	j	.L16
.L4:
	.loc 1 43 152 discriminator 2
	.loc 1 44 5 discriminator 2
	.loc 1 44 10 discriminator 2
	.loc 1 44 21 is_stmt 0 discriminator 2
	lui	a2,%hi(.LC3)
	addi	a2,a2,%lo(.LC3)
	li	a1,16
	addi	a0,sp,60
	call	mbedtls_mpi_read_string
.LVL21:
	mv	s0,a0
.LVL22:
	.loc 1 44 13 discriminator 2
	beq	a0,zero,.L5
	.loc 1 44 76 is_stmt 1 discriminator 1
	mv	a3,a0
	li	a2,44
	j	.L16
.L5:
	.loc 1 44 152 discriminator 2
	.loc 1 45 5 discriminator 2
	.loc 1 45 10 discriminator 2
	.loc 1 45 21 is_stmt 0 discriminator 2
	lui	a2,%hi(.LC4)
	addi	a2,a2,%lo(.LC4)
	li	a1,16
	addi	a0,sp,72
	call	mbedtls_mpi_read_string
.LVL23:
	mv	s0,a0
.LVL24:
	.loc 1 45 13 discriminator 2
	beq	a0,zero,.L6
	.loc 1 45 76 is_stmt 1 discriminator 1
	mv	a3,a0
	li	a2,45
	j	.L16
.L6:
	.loc 1 45 152 discriminator 2
	.loc 1 47 5 discriminator 2
	.loc 1 47 10 discriminator 2
	.loc 1 47 21 is_stmt 0 discriminator 2
	li	a5,0
	li	a4,0
	addi	a3,sp,124
	mv	a2,sp
	addi	a1,sp,12
	addi	a0,sp,84
	call	mbedtls_ecp_mul
.LVL25:
	mv	s0,a0
.LVL26:
	.loc 1 47 13 discriminator 2
	beq	a0,zero,.L7
	.loc 1 47 10 is_stmt 1 discriminator 1
	mv	a3,a0
	li	a2,47
	j	.L16
.L7:
	.loc 1 47 86 discriminator 2
	.loc 1 48 5 discriminator 2
	.loc 1 48 9 is_stmt 0 discriminator 2
	addi	a1,sp,48
	addi	a0,sp,12
	call	mbedtls_ecp_point_cmp
.LVL27:
	.loc 1 49 16 discriminator 2
	li	s1,1
	.loc 1 48 8 discriminator 2
	beq	a0,zero,.L3
	.loc 1 51 9 is_stmt 1
	lui	a0,%hi(.LC5)
	addi	a0,a0,%lo(.LC5)
	call	printf
.LVL28:
	j	.L15
	.cfi_endproc
.LFE4:
	.size	mbedtls_tc_ecp_p256_mul, .-mbedtls_tc_ecp_p256_mul
	.section	.rodata.mbedtls_tc_mpi_exp_mod.str1.4,"aMS",@progbits,1
	.align	2
.LC6:
	.ascii	"AA088D0869CAB1CE4A264DC94CC06FEA69D3B1E0D829D3AC1250332C2429"
	.ascii	"CB8C1B06655D23931AA46D9D4C83BAF05483BD6EF4F61355657B470EB3FD"
	.ascii	"2574FDBC0723A5E3606BBE219480F52276C7D6529C905E060D8708C809ED"
	.ascii	"07A545412681FF443D80AA34875F5BE3BDEB00A0A46899BB8A0CFB5A3CA7"
	.ascii	"E582EE3DF5384B"
	.string	"400D33CA64658D0FFBE502BE2486F9FA2E9A1CFBD27066370A7AE880F25144F45CE019457B77FF444441391588A014F429D65D8478FE4D36350578987379329B310D77AC060272B03D18FA642D989D4FF6C1A0F798C16CEF49F55909F8FF041A7F0984A5616C2C3D7E981523B015003494F07CF37E229415C0FF853D78033909"
	.align	2
.LC7:
	.string	"010001"
	.align	2
.LC8:
	.ascii	"B1B6DBD53B85084FDF88F85CDEE3AEF2844554AC9BE440E78D7CD83B50C6"
	.ascii	"D25CC7B0B5377CF0D1999ED7B94F7BA27B396164B4CCFCA497EB08F41211"
	.ascii	"B0932195C5FD8ABE09855687B6C51F20C514A110F1B6D169B48B545B9930"
	.ascii	"6075E8CCCCBD7ABDF3F59FAB4BCD900F60531EF855A754568A36D70E467B"
	.ascii	"719F22D02B40A505"
	.string	"1854CA59B5B9C3FDED203124CDE3BE427C5973435E040A3E6A45615235FD6F827205E1DD1BAA6658DB94BDF4CF3E9DF98D59C96AC2447C101455C618D8CCC59078708EE9DE3E33A6D88A771904948EFFEEB48611DA98F0A6A3D5C5B2E65C7A3F5D4D9D827FB117A0599970C305C39ADC01EEC70A52C7A2C8D84EFB5C52BA1B4B"
	.align	2
.LC9:
	.ascii	"22BA4261AACA908A6C5FD14A9038744AE64C30B14F56CF94378FEA98537F"
	.ascii	"9CD14C4BB171AA987F6DFD904865D7148746D635BFD0D76290E499A38FA9"
	.ascii	"068D29972BAB7BA8D042E19B6561DD5B1586FFB7560A6EB6834F059EC6F3"
	.ascii	"10C562F6896B4C3432C7FFB8867A86DE1CDB859EAF8C6FC07F5DC2ADD8D0"
	.ascii	"F485F8BD916B10C5"
	.string	"628A2ADE42653F750FC8440083317D78724D9BB25C00A0732518E8810F0F9B97BA89AE0F3677B053974ED2D2839423B6EE34A488AF42E5CA039103C4EBAB6CF0105549B647CBB5C13A52C5773C53040E37434620055993749FB37B9EFC37A5BF0CD6E46B0EBD950D8104B901F82C4D80662C6EF65A3F4CAECD5CE64CE1741EF3"
	.section	.text.mbedtls_tc_mpi_exp_mod,"ax",@progbits
	.align	1
	.globl	mbedtls_tc_mpi_exp_mod
	.type	mbedtls_tc_mpi_exp_mod, @function
mbedtls_tc_mpi_exp_mod:
.LFB5:
	.loc 1 65 1
	.cfi_startproc
	.loc 1 66 5
	.loc 1 67 4
.LVL29:
	.loc 1 68 5
	.loc 1 69 5
	.loc 1 70 5
	.loc 1 71 5
	.loc 1 72 5
	.loc 1 74 5
	.loc 1 65 1 is_stmt 0
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	.loc 1 74 5
	addi	a0,sp,4
	.loc 1 65 1
	sw	ra,76(sp)
	sw	s0,72(sp)
	sw	s1,68(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.loc 1 74 5
	call	mbedtls_mpi_init
.LVL30:
	.loc 1 75 5 is_stmt 1
	addi	a0,sp,16
	call	mbedtls_mpi_init
.LVL31:
	.loc 1 76 5
	addi	a0,sp,28
	call	mbedtls_mpi_init
.LVL32:
	.loc 1 77 5
	addi	a0,sp,40
	call	mbedtls_mpi_init
.LVL33:
	.loc 1 78 5
	addi	a0,sp,52
	call	mbedtls_mpi_init
.LVL34:
	.loc 1 79 5
	.loc 1 79 10
	.loc 1 79 21 is_stmt 0
	lui	a2,%hi(.LC6)
	addi	a2,a2,%lo(.LC6)
	li	a1,16
	addi	a0,sp,4
	call	mbedtls_mpi_read_string
.LVL35:
	.loc 1 79 13
	beq	a0,zero,.L18
	mv	s0,a0
	.loc 1 79 64 is_stmt 1 discriminator 1
	mv	a3,a0
	li	a2,79
.LVL36:
.L32:
	.loc 1 83 10 is_stmt 0 discriminator 1
	lui	a1,%hi(.LANCHOR1)
	lui	a0,%hi(.LC1)
	addi	a1,a1,%lo(.LANCHOR1)
	addi	a0,a0,%lo(.LC1)
	call	printf
.LVL37:
	.loc 1 83 66 is_stmt 1 discriminator 1
.L31:
	.loc 1 67 9 is_stmt 0
	li	s1,0
.L19:
.LVL38:
	.loc 1 90 5 is_stmt 1
	addi	a0,sp,4
	call	mbedtls_mpi_free
.LVL39:
	.loc 1 91 5
	addi	a0,sp,16
	call	mbedtls_mpi_free
.LVL40:
	.loc 1 92 5
	addi	a0,sp,28
	call	mbedtls_mpi_free
.LVL41:
	.loc 1 93 5
	addi	a0,sp,40
	call	mbedtls_mpi_free
.LVL42:
	.loc 1 94 5
	addi	a0,sp,52
	call	mbedtls_mpi_free
.LVL43:
	.loc 1 95 5
	.loc 1 95 8 is_stmt 0
	beq	s0,zero,.L24
	.loc 1 96 16
	li	s1,0
.LVL44:
.L24:
	.loc 1 98 5 is_stmt 1
	.loc 1 99 1 is_stmt 0
	lw	ra,76(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,72(sp)
	.cfi_restore 8
.LVL45:
	mv	a0,s1
	lw	s1,68(sp)
	.cfi_restore 9
.LVL46:
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
.LVL47:
.L18:
	.cfi_restore_state
	.loc 1 79 140 is_stmt 1 discriminator 2
	.loc 1 80 5 discriminator 2
	.loc 1 80 10 discriminator 2
	.loc 1 80 21 is_stmt 0 discriminator 2
	lui	a2,%hi(.LC7)
	addi	a2,a2,%lo(.LC7)
	li	a1,16
	addi	a0,sp,16
.LVL48:
	call	mbedtls_mpi_read_string
.LVL49:
	mv	s0,a0
.LVL50:
	.loc 1 80 13 discriminator 2
	beq	a0,zero,.L20
	.loc 1 80 64 is_stmt 1 discriminator 1
	mv	a3,a0
	li	a2,80
	j	.L32
.L20:
	.loc 1 80 140 discriminator 2
	.loc 1 81 5 discriminator 2
	.loc 1 81 10 discriminator 2
	.loc 1 81 21 is_stmt 0 discriminator 2
	lui	a2,%hi(.LC8)
	addi	a2,a2,%lo(.LC8)
	li	a1,16
	addi	a0,sp,28
	call	mbedtls_mpi_read_string
.LVL51:
	mv	s0,a0
.LVL52:
	.loc 1 81 13 discriminator 2
	beq	a0,zero,.L21
	.loc 1 81 64 is_stmt 1 discriminator 1
	mv	a3,a0
	li	a2,81
	j	.L32
.L21:
	.loc 1 81 140 discriminator 2
	.loc 1 82 5 discriminator 2
	.loc 1 82 10 discriminator 2
	.loc 1 82 21 is_stmt 0 discriminator 2
	lui	a2,%hi(.LC9)
	addi	a2,a2,%lo(.LC9)
	li	a1,16
	addi	a0,sp,52
	call	mbedtls_mpi_read_string
.LVL53:
	mv	s0,a0
.LVL54:
	.loc 1 82 13 discriminator 2
	beq	a0,zero,.L22
	.loc 1 82 74 is_stmt 1 discriminator 1
	mv	a3,a0
	li	a2,82
	j	.L32
.L22:
	.loc 1 82 150 discriminator 2
	.loc 1 83 5 discriminator 2
	.loc 1 83 10 discriminator 2
	.loc 1 83 21 is_stmt 0 discriminator 2
	li	a4,0
	addi	a3,sp,28
	addi	a2,sp,16
	addi	a1,sp,4
	addi	a0,sp,40
	call	mbedtls_mpi_exp_mod
.LVL55:
	mv	s0,a0
.LVL56:
	.loc 1 83 13 discriminator 2
	beq	a0,zero,.L23
	.loc 1 83 10 is_stmt 1 discriminator 1
	mv	a3,a0
	li	a2,83
	j	.L32
.L23:
	.loc 1 83 86 discriminator 2
	.loc 1 84 5 discriminator 2
	.loc 1 84 9 is_stmt 0 discriminator 2
	addi	a1,sp,52
	addi	a0,sp,40
	call	mbedtls_mpi_cmp_mpi
.LVL57:
	.loc 1 85 16 discriminator 2
	li	s1,1
	.loc 1 84 8 discriminator 2
	beq	a0,zero,.L19
	.loc 1 87 9 is_stmt 1
	lui	a0,%hi(.LC5)
	addi	a0,a0,%lo(.LC5)
	call	printf
.LVL58:
	j	.L31
	.cfi_endproc
.LFE5:
	.size	mbedtls_tc_mpi_exp_mod, .-mbedtls_tc_mpi_exp_mod
	.section	.rodata.mbedtls_tc_aes_ecb.str1.4,"aMS",@progbits,1
	.align	2
.LC11:
	.string	"FEDCBA9876543210"
	.align	2
.LC12:
	.string	"0123456789ABCDEF"
	.align	2
.LC10:
	.string	"8D6\031\301p\365\226\201\304\246\340\361\030\302I"
	.section	.text.mbedtls_tc_aes_ecb,"ax",@progbits
	.align	1
	.globl	mbedtls_tc_aes_ecb
	.type	mbedtls_tc_aes_ecb, @function
mbedtls_tc_aes_ecb:
.LFB6:
	.loc 1 102 1
	.cfi_startproc
	.loc 1 103 4
.LVL59:
	.loc 1 104 5
	.loc 1 105 5
	.loc 1 106 5
	.loc 1 107 5
	.loc 1 108 5
	.loc 1 102 1 is_stmt 0
	addi	sp,sp,-336
	.cfi_def_cfa_offset 336
	.loc 1 108 19
	lui	a1,%hi(.LC10)
	.loc 1 102 1
	sw	s0,328(sp)
	.loc 1 108 19
	li	a2,16
	addi	a1,a1,%lo(.LC10)
	addi	a0,sp,8
	.cfi_offset 8, -8
	li	s0,98304
	.loc 1 102 1
	sw	s1,324(sp)
	sw	s2,320(sp)
	sw	ra,332(sp)
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 1, -4
	.loc 1 108 19
	addi	s0,s0,1696
	call	memcpy
.LVL60:
	.loc 1 109 5 is_stmt 1
	.loc 1 111 5
.LBB2:
	.loc 1 111 10
	.loc 1 111 24
	.loc 1 114 9 is_stmt 0
	lui	s1,%hi(.LC11)
	.loc 1 115 9
	lui	s2,%hi(.LC12)
.LVL61:
.L35:
	.loc 1 112 9 is_stmt 1
	li	a2,16
	li	a1,0
	addi	a0,sp,24
	call	memset
.LVL62:
	.loc 1 113 9
	addi	a0,sp,40
	call	mbedtls_aes_init
.LVL63:
	.loc 1 114 9
	li	a2,128
	addi	a1,s1,%lo(.LC11)
	addi	a0,sp,40
	call	mbedtls_aes_setkey_enc
.LVL64:
	.loc 1 115 9
	addi	a2,s2,%lo(.LC12)
	li	a1,1
	addi	a3,sp,24
	addi	a0,sp,40
	call	mbedtls_aes_crypt_ecb
.LVL65:
	.loc 1 116 9
	addi	a0,sp,40
	call	mbedtls_aes_free
.LVL66:
	.loc 1 117 9
	.loc 1 117 13 is_stmt 0
	li	a2,16
	addi	a1,sp,24
	addi	a0,sp,8
	call	memcmp
.LVL67:
	.loc 1 117 12
	bne	a0,zero,.L36
	.loc 1 111 36 is_stmt 1 discriminator 2
.LVL68:
	.loc 1 111 24 discriminator 2
	.loc 1 111 5 is_stmt 0 discriminator 2
	addi	s0,s0,-1
.LVL69:
	bne	s0,zero,.L35
.LBE2:
	.loc 1 103 9
	li	a0,1
.LVL70:
.L34:
	.loc 1 123 5 is_stmt 1
	.loc 1 124 1 is_stmt 0
	lw	ra,332(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,328(sp)
	.cfi_restore 8
	lw	s1,324(sp)
	.cfi_restore 9
	lw	s2,320(sp)
	.cfi_restore 18
	addi	sp,sp,336
	.cfi_def_cfa_offset 0
	jr	ra
.LVL71:
.L36:
	.cfi_restore_state
.LBB3:
	.loc 1 118 20
	li	a0,0
	j	.L34
.LBE3:
	.cfi_endproc
.LFE6:
	.size	mbedtls_tc_aes_ecb, .-mbedtls_tc_aes_ecb
	.section	.rodata.mbedtls_test_case_run.str1.4,"aMS",@progbits,1
	.align	2
.LC13:
	.string	"Running test case %s\r\n"
	.align	2
.LC14:
	.string	"\t\tPassed\r\n"
	.align	2
.LC15:
	.string	"\t\tFailed\r\n"
	.section	.text.mbedtls_test_case_run,"ax",@progbits
	.align	1
	.globl	mbedtls_test_case_run
	.type	mbedtls_test_case_run, @function
mbedtls_test_case_run:
.LFB7:
	.loc 1 137 1 is_stmt 1
	.cfi_startproc
	.loc 1 138 5
.LBB4:
	.loc 1 138 10
.LVL72:
	.loc 1 138 21
.LBE4:
	.loc 1 137 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	.cfi_offset 8, -8
	lui	s0,%hi(.LANCHOR2)
	addi	s0,s0,%lo(.LANCHOR2)
	sw	s1,20(sp)
	sw	s2,16(sp)
	sw	s3,12(sp)
	sw	s4,8(sp)
	sw	ra,28(sp)
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 1, -4
	addi	s1,s0,24
.LBB5:
	.loc 1 139 9
	lui	s2,%hi(.LC13)
	.loc 1 143 13
	lui	s3,%hi(.LC15)
	.loc 1 141 13
	lui	s4,%hi(.LC14)
.LVL73:
.L42:
	.loc 1 139 9 is_stmt 1
	lw	a1,4(s0)
	addi	a0,s2,%lo(.LC13)
	call	printf
.LVL74:
	.loc 1 140 9
	.loc 1 140 13 is_stmt 0
	lw	a5,0(s0)
	jalr	a5
.LVL75:
	.loc 1 140 12
	beq	a0,zero,.L40
	.loc 1 141 13 is_stmt 1
	addi	a0,s4,%lo(.LC14)
.L45:
	.loc 1 138 5 is_stmt 0
	addi	s0,s0,8
	.loc 1 143 13
	call	printf
.LVL76:
	.loc 1 138 53 is_stmt 1
	.loc 1 138 21
	.loc 1 138 5 is_stmt 0
	bne	s0,s1,.L42
.LBE5:
	.loc 1 146 1
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	lw	s1,20(sp)
	.cfi_restore 9
	lw	s2,16(sp)
	.cfi_restore 18
	lw	s3,12(sp)
	.cfi_restore 19
	lw	s4,8(sp)
	.cfi_restore 20
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.L40:
	.cfi_restore_state
.LBB6:
	.loc 1 143 13 is_stmt 1
	addi	a0,s3,%lo(.LC15)
	j	.L45
.LBE6:
	.cfi_endproc
.LFE7:
	.size	mbedtls_test_case_run, .-mbedtls_test_case_run
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	2
.LC16:
	.string	"mbedtls_tc_ecp_p256_mul"
	.align	2
.LC17:
	.string	"mbedtls_tc_mpi_exp_mod"
	.align	2
.LC18:
	.string	"mbedtls_tc_aes_ecb"
	.section	.rodata.__func__.0,"a"
	.align	2
	.set	.LANCHOR1,. + 0
	.type	__func__.0, @object
	.size	__func__.0, 23
__func__.0:
	.string	"mbedtls_tc_mpi_exp_mod"
	.section	.rodata.__func__.1,"a"
	.align	2
	.set	.LANCHOR0,. + 0
	.type	__func__.1, @object
	.size	__func__.1, 24
__func__.1:
	.string	"mbedtls_tc_ecp_p256_mul"
	.section	.rodata.tc,"a"
	.align	2
	.set	.LANCHOR2,. + 0
	.type	tc, @object
	.size	tc, 24
tc:
	.word	mbedtls_tc_ecp_p256_mul
	.word	.LC16
	.word	mbedtls_tc_mpi_exp_mod
	.word	.LC17
	.word	mbedtls_tc_aes_ecb
	.word	.LC18
	.text
.Letext0:
	.file 2 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h"
	.file 3 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.file 4 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/mbedtls_lts/mbedtls/include/mbedtls/bignum.h"
	.file 5 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/mbedtls_lts/mbedtls/include/mbedtls/ecp.h"
	.file 6 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/mbedtls_lts/mbedtls/include/mbedtls/aes.h"
	.file 7 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h"
	.file 8 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h"
	.file 9 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xbdc
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF82
	.byte	0xc
	.4byte	.LASF83
	.4byte	.LASF84
	.4byte	.Ldebug_ranges0+0x38
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x3
	.4byte	.LASF10
	.byte	0x2
	.byte	0xd1
	.byte	0x16
	.4byte	0x3d
	.byte	0x4
	.4byte	0x2c
	.byte	0x5
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.byte	0x5
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1
	.byte	0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF2
	.byte	0x5
	.byte	0x2
	.byte	0x5
	.4byte	.LASF3
	.byte	0x5
	.byte	0x2
	.byte	0x7
	.4byte	.LASF4
	.byte	0x5
	.byte	0x4
	.byte	0x5
	.4byte	.LASF5
	.byte	0x5
	.byte	0x4
	.byte	0x7
	.4byte	.LASF6
	.byte	0x5
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.byte	0x5
	.byte	0x8
	.byte	0x7
	.4byte	.LASF8
	.byte	0x6
	.byte	0x4
	.byte	0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF9
	.byte	0x4
	.4byte	0x7e
	.byte	0x7
	.byte	0x4
	.4byte	0x85
	.byte	0x3
	.4byte	.LASF11
	.byte	0x3
	.byte	0x2e
	.byte	0x17
	.4byte	0x4b
	.byte	0x4
	.4byte	0x90
	.byte	0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x34
	.byte	0x1b
	.4byte	0x67
	.byte	0x3
	.4byte	.LASF13
	.byte	0x4
	.byte	0xb2
	.byte	0x16
	.4byte	0xa1
	.byte	0x8
	.4byte	.LASF14
	.byte	0xc
	.byte	0x4
	.byte	0xc0
	.byte	0x10
	.4byte	0xe8
	.byte	0x9
	.string	"s"
	.byte	0x4
	.byte	0xc2
	.byte	0x9
	.4byte	0x25
	.byte	0
	.byte	0x9
	.string	"n"
	.byte	0x4
	.byte	0xc3
	.byte	0xc
	.4byte	0x2c
	.byte	0x4
	.byte	0x9
	.string	"p"
	.byte	0x4
	.byte	0xc4
	.byte	0x17
	.4byte	0xe8
	.byte	0x8
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0xad
	.byte	0x3
	.4byte	.LASF14
	.byte	0x4
	.byte	0xc6
	.byte	0x1
	.4byte	0xb9
	.byte	0xa
	.byte	0x7
	.byte	0x4
	.4byte	0x3d
	.byte	0x5
	.byte	0x79
	.byte	0x1
	.4byte	0x15d
	.byte	0xb
	.4byte	.LASF15
	.byte	0
	.byte	0xb
	.4byte	.LASF16
	.byte	0x1
	.byte	0xb
	.4byte	.LASF17
	.byte	0x2
	.byte	0xb
	.4byte	.LASF18
	.byte	0x3
	.byte	0xb
	.4byte	.LASF19
	.byte	0x4
	.byte	0xb
	.4byte	.LASF20
	.byte	0x5
	.byte	0xb
	.4byte	.LASF21
	.byte	0x6
	.byte	0xb
	.4byte	.LASF22
	.byte	0x7
	.byte	0xb
	.4byte	.LASF23
	.byte	0x8
	.byte	0xb
	.4byte	.LASF24
	.byte	0x9
	.byte	0xb
	.4byte	.LASF25
	.byte	0xa
	.byte	0xb
	.4byte	.LASF26
	.byte	0xb
	.byte	0xb
	.4byte	.LASF27
	.byte	0xc
	.byte	0xb
	.4byte	.LASF28
	.byte	0xd
	.byte	0
	.byte	0x3
	.4byte	.LASF29
	.byte	0x5
	.byte	0x88
	.byte	0x3
	.4byte	0xfa
	.byte	0x8
	.4byte	.LASF30
	.byte	0x24
	.byte	0x5
	.byte	0xb1
	.byte	0x10
	.4byte	0x198
	.byte	0x9
	.string	"X"
	.byte	0x5
	.byte	0xb3
	.byte	0x11
	.4byte	0xee
	.byte	0
	.byte	0x9
	.string	"Y"
	.byte	0x5
	.byte	0xb4
	.byte	0x11
	.4byte	0xee
	.byte	0xc
	.byte	0x9
	.string	"Z"
	.byte	0x5
	.byte	0xb5
	.byte	0x11
	.4byte	0xee
	.byte	0x18
	.byte	0
	.byte	0x3
	.4byte	.LASF30
	.byte	0x5
	.byte	0xb7
	.byte	0x1
	.4byte	0x169
	.byte	0xc
	.4byte	.LASF31
	.byte	0x7c
	.byte	0x5
	.2byte	0x104
	.byte	0x10
	.4byte	0x276
	.byte	0xd
	.string	"id"
	.byte	0x5
	.2byte	0x106
	.byte	0x1a
	.4byte	0x15d
	.byte	0
	.byte	0xd
	.string	"P"
	.byte	0x5
	.2byte	0x107
	.byte	0x11
	.4byte	0xee
	.byte	0x4
	.byte	0xd
	.string	"A"
	.byte	0x5
	.2byte	0x108
	.byte	0x11
	.4byte	0xee
	.byte	0x10
	.byte	0xd
	.string	"B"
	.byte	0x5
	.2byte	0x10a
	.byte	0x11
	.4byte	0xee
	.byte	0x1c
	.byte	0xd
	.string	"G"
	.byte	0x5
	.2byte	0x10c
	.byte	0x17
	.4byte	0x198
	.byte	0x28
	.byte	0xd
	.string	"N"
	.byte	0x5
	.2byte	0x10d
	.byte	0x11
	.4byte	0xee
	.byte	0x4c
	.byte	0xe
	.4byte	.LASF32
	.byte	0x5
	.2byte	0x10e
	.byte	0xc
	.4byte	0x2c
	.byte	0x58
	.byte	0xe
	.4byte	.LASF33
	.byte	0x5
	.2byte	0x10f
	.byte	0xc
	.4byte	0x2c
	.byte	0x5c
	.byte	0xd
	.string	"h"
	.byte	0x5
	.2byte	0x112
	.byte	0x12
	.4byte	0x3d
	.byte	0x60
	.byte	0xe
	.4byte	.LASF34
	.byte	0x5
	.2byte	0x113
	.byte	0xb
	.4byte	0x28b
	.byte	0x64
	.byte	0xe
	.4byte	.LASF35
	.byte	0x5
	.2byte	0x115
	.byte	0xb
	.4byte	0x2ab
	.byte	0x68
	.byte	0xe
	.4byte	.LASF36
	.byte	0x5
	.2byte	0x116
	.byte	0xb
	.4byte	0x2ab
	.byte	0x6c
	.byte	0xe
	.4byte	.LASF37
	.byte	0x5
	.2byte	0x117
	.byte	0xb
	.4byte	0x7c
	.byte	0x70
	.byte	0xd
	.string	"T"
	.byte	0x5
	.2byte	0x118
	.byte	0x18
	.4byte	0x2a5
	.byte	0x74
	.byte	0xe
	.4byte	.LASF38
	.byte	0x5
	.2byte	0x119
	.byte	0xc
	.4byte	0x2c
	.byte	0x78
	.byte	0
	.byte	0xf
	.4byte	0x25
	.4byte	0x285
	.byte	0x10
	.4byte	0x285
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0xee
	.byte	0x7
	.byte	0x4
	.4byte	0x276
	.byte	0xf
	.4byte	0x25
	.4byte	0x2a5
	.byte	0x10
	.4byte	0x2a5
	.byte	0x10
	.4byte	0x7c
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x198
	.byte	0x7
	.byte	0x4
	.4byte	0x291
	.byte	0x11
	.4byte	.LASF31
	.byte	0x5
	.2byte	0x11b
	.byte	0x1
	.4byte	0x1a4
	.byte	0x12
	.4byte	.LASF39
	.2byte	0x118
	.byte	0x6
	.byte	0x5b
	.byte	0x10
	.4byte	0x2f2
	.byte	0x9
	.string	"nr"
	.byte	0x6
	.byte	0x5d
	.byte	0x9
	.4byte	0x25
	.byte	0
	.byte	0x9
	.string	"rk"
	.byte	0x6
	.byte	0x5e
	.byte	0xf
	.4byte	0x2f2
	.byte	0x4
	.byte	0x9
	.string	"buf"
	.byte	0x6
	.byte	0x5f
	.byte	0xe
	.4byte	0x2f8
	.byte	0x8
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0xa1
	.byte	0x13
	.4byte	0xa1
	.4byte	0x308
	.byte	0x14
	.4byte	0x3d
	.byte	0x43
	.byte	0
	.byte	0x3
	.4byte	.LASF39
	.byte	0x6
	.byte	0x68
	.byte	0x1
	.4byte	0x2be
	.byte	0x15
	.byte	0x8
	.byte	0x1
	.byte	0x7f
	.byte	0x8
	.4byte	0x338
	.byte	0x16
	.4byte	.LASF40
	.byte	0x1
	.byte	0x80
	.byte	0xb
	.4byte	0x344
	.byte	0
	.byte	0x16
	.4byte	.LASF41
	.byte	0x1
	.byte	0x81
	.byte	0x11
	.4byte	0x8a
	.byte	0x4
	.byte	0
	.byte	0x17
	.4byte	0x33d
	.byte	0x5
	.byte	0x1
	.byte	0x2
	.4byte	.LASF42
	.byte	0x7
	.byte	0x4
	.4byte	0x338
	.byte	0x13
	.4byte	0x314
	.4byte	0x35a
	.byte	0x14
	.4byte	0x3d
	.byte	0x2
	.byte	0
	.byte	0x18
	.string	"tc"
	.byte	0x1
	.byte	0x82
	.byte	0x3
	.4byte	0x34a
	.byte	0x5
	.byte	0x3
	.4byte	tc
	.byte	0x19
	.4byte	.LASF85
	.byte	0x1
	.byte	0x88
	.byte	0x6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.4byte	0x3b6
	.byte	0x1a
	.4byte	.Ldebug_ranges0+0x18
	.byte	0x1b
	.string	"i"
	.byte	0x1
	.byte	0x8a
	.byte	0xe
	.4byte	0x25
	.4byte	.LLST6
	.byte	0x1c
	.4byte	.LVL74
	.4byte	0xae5
	.4byte	0x3ab
	.byte	0x1d
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC13
	.byte	0
	.byte	0x1e
	.4byte	.LVL76
	.4byte	0xae5
	.byte	0
	.byte	0
	.byte	0x1f
	.4byte	.LASF48
	.byte	0x1
	.byte	0x65
	.byte	0x5
	.4byte	0x33d
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0x532
	.byte	0x20
	.4byte	.LASF43
	.byte	0x1
	.byte	0x67
	.byte	0x9
	.4byte	0x33d
	.4byte	.LLST4
	.byte	0x18
	.string	"aes"
	.byte	0x1
	.byte	0x68
	.byte	0x19
	.4byte	0x308
	.byte	0x3
	.byte	0x91
	.byte	0xd8,0x7d
	.byte	0x21
	.4byte	.LASF44
	.byte	0x1
	.byte	0x69
	.byte	0x12
	.4byte	0x38
	.4byte	0x186a0
	.byte	0x22
	.4byte	.LASF45
	.byte	0x1
	.byte	0x6a
	.byte	0x11
	.4byte	0x532
	.byte	0x6
	.byte	0x3
	.4byte	.LC12
	.byte	0x9f
	.byte	0x18
	.string	"key"
	.byte	0x1
	.byte	0x6b
	.byte	0x11
	.4byte	0x532
	.byte	0x6
	.byte	0x3
	.4byte	.LC11
	.byte	0x9f
	.byte	0x22
	.4byte	.LASF46
	.byte	0x1
	.byte	0x6c
	.byte	0x13
	.4byte	0x549
	.byte	0x3
	.byte	0x91
	.byte	0xb8,0x7d
	.byte	0x22
	.4byte	.LASF47
	.byte	0x1
	.byte	0x6d
	.byte	0xd
	.4byte	0x54e
	.byte	0x3
	.byte	0x91
	.byte	0xc8,0x7d
	.byte	0x23
	.4byte	.Ldebug_ranges0+0
	.4byte	0x512
	.byte	0x1b
	.string	"i"
	.byte	0x1
	.byte	0x6f
	.byte	0x11
	.4byte	0x2c
	.4byte	.LLST5
	.byte	0x1c
	.4byte	.LVL62
	.4byte	0xaf1
	.4byte	0x47c
	.byte	0x1d
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xc8,0x7d
	.byte	0x1d
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x1d
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x40
	.byte	0
	.byte	0x1c
	.4byte	.LVL63
	.4byte	0xafd
	.4byte	0x491
	.byte	0x1d
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xd8,0x7d
	.byte	0
	.byte	0x1c
	.4byte	.LVL64
	.4byte	0xb09
	.4byte	0x4b5
	.byte	0x1d
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xd8,0x7d
	.byte	0x1d
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC11
	.byte	0x1d
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x80
	.byte	0
	.byte	0x1c
	.4byte	.LVL65
	.4byte	0xb15
	.4byte	0x4df
	.byte	0x1d
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xd8,0x7d
	.byte	0x1d
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0x1d
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC12
	.byte	0x1d
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0x91
	.byte	0xc8,0x7d
	.byte	0
	.byte	0x1c
	.4byte	.LVL66
	.4byte	0xb22
	.4byte	0x4f4
	.byte	0x1d
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xd8,0x7d
	.byte	0
	.byte	0x24
	.4byte	.LVL67
	.4byte	0xb2e
	.byte	0x1d
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xb8,0x7d
	.byte	0x1d
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0xc8,0x7d
	.byte	0x1d
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x40
	.byte	0
	.byte	0
	.byte	0x24
	.4byte	.LVL60
	.4byte	0xb3a
	.byte	0x1d
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xb8,0x7d
	.byte	0x1d
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC10
	.byte	0x1d
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x40
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x538
	.byte	0x25
	.byte	0x13
	.4byte	0x9c
	.4byte	0x549
	.byte	0x14
	.4byte	0x3d
	.byte	0xf
	.byte	0
	.byte	0x4
	.4byte	0x539
	.byte	0x13
	.4byte	0x90
	.4byte	0x55e
	.byte	0x14
	.4byte	0x3d
	.byte	0xf
	.byte	0
	.byte	0x1f
	.4byte	.LASF49
	.byte	0x1
	.byte	0x40
	.byte	0x5
	.4byte	0x33d
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0x810
	.byte	0x1b
	.string	"ret"
	.byte	0x1
	.byte	0x42
	.byte	0x9
	.4byte	0x25
	.4byte	.LLST2
	.byte	0x20
	.4byte	.LASF43
	.byte	0x1
	.byte	0x43
	.byte	0x9
	.4byte	0x33d
	.4byte	.LLST3
	.byte	0x18
	.string	"A"
	.byte	0x1
	.byte	0x44
	.byte	0x11
	.4byte	0xee
	.byte	0x3
	.byte	0x91
	.byte	0xb4,0x7f
	.byte	0x18
	.string	"E"
	.byte	0x1
	.byte	0x44
	.byte	0x14
	.4byte	0xee
	.byte	0x2
	.byte	0x91
	.byte	0x40
	.byte	0x18
	.string	"N"
	.byte	0x1
	.byte	0x44
	.byte	0x17
	.4byte	0xee
	.byte	0x2
	.byte	0x91
	.byte	0x4c
	.byte	0x18
	.string	"X"
	.byte	0x1
	.byte	0x44
	.byte	0x1a
	.4byte	0xee
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x22
	.4byte	.LASF50
	.byte	0x1
	.byte	0x44
	.byte	0x1d
	.4byte	0xee
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0x22
	.4byte	.LASF51
	.byte	0x1
	.byte	0x45
	.byte	0x11
	.4byte	0x8a
	.byte	0x6
	.byte	0x3
	.4byte	.LC6
	.byte	0x9f
	.byte	0x22
	.4byte	.LASF52
	.byte	0x1
	.byte	0x46
	.byte	0x11
	.4byte	0x8a
	.byte	0x6
	.byte	0x3
	.4byte	.LC7
	.byte	0x9f
	.byte	0x22
	.4byte	.LASF53
	.byte	0x1
	.byte	0x47
	.byte	0x11
	.4byte	0x8a
	.byte	0x6
	.byte	0x3
	.4byte	.LC8
	.byte	0x9f
	.byte	0x22
	.4byte	.LASF54
	.byte	0x1
	.byte	0x48
	.byte	0x11
	.4byte	0x8a
	.byte	0x6
	.byte	0x3
	.4byte	.LC9
	.byte	0x9f
	.byte	0x26
	.4byte	.LASF62
	.4byte	0x820
	.byte	0x5
	.byte	0x3
	.4byte	__func__.0
	.byte	0x27
	.string	"out"
	.byte	0x1
	.byte	0x59
	.byte	0x1
	.4byte	.L19
	.byte	0x1c
	.4byte	.LVL30
	.4byte	0xb45
	.4byte	0x658
	.byte	0x1d
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xb4,0x7f
	.byte	0
	.byte	0x1c
	.4byte	.LVL31
	.4byte	0xb45
	.4byte	0x66c
	.byte	0x1d
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x40
	.byte	0
	.byte	0x1c
	.4byte	.LVL32
	.4byte	0xb45
	.4byte	0x680
	.byte	0x1d
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x4c
	.byte	0
	.byte	0x1c
	.4byte	.LVL33
	.4byte	0xb45
	.4byte	0x694
	.byte	0x1d
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0
	.byte	0x1c
	.4byte	.LVL34
	.4byte	0xb45
	.4byte	0x6a8
	.byte	0x1d
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0
	.byte	0x1c
	.4byte	.LVL35
	.4byte	0xb51
	.4byte	0x6cb
	.byte	0x1d
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xb4,0x7f
	.byte	0x1d
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x40
	.byte	0x1d
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0
	.byte	0x1c
	.4byte	.LVL37
	.4byte	0xae5
	.4byte	0x6eb
	.byte	0x1d
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x1d
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR1
	.byte	0
	.byte	0x1c
	.4byte	.LVL39
	.4byte	0xb5e
	.4byte	0x700
	.byte	0x1d
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xb4,0x7f
	.byte	0
	.byte	0x1c
	.4byte	.LVL40
	.4byte	0xb5e
	.4byte	0x714
	.byte	0x1d
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x40
	.byte	0
	.byte	0x1c
	.4byte	.LVL41
	.4byte	0xb5e
	.4byte	0x728
	.byte	0x1d
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x4c
	.byte	0
	.byte	0x1c
	.4byte	.LVL42
	.4byte	0xb5e
	.4byte	0x73c
	.byte	0x1d
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0
	.byte	0x1c
	.4byte	.LVL43
	.4byte	0xb5e
	.4byte	0x750
	.byte	0x1d
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0
	.byte	0x1c
	.4byte	.LVL49
	.4byte	0xb51
	.4byte	0x772
	.byte	0x1d
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x40
	.byte	0x1d
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x40
	.byte	0x1d
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0
	.byte	0x1c
	.4byte	.LVL51
	.4byte	0xb51
	.4byte	0x794
	.byte	0x1d
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x4c
	.byte	0x1d
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x40
	.byte	0x1d
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC8
	.byte	0
	.byte	0x1c
	.4byte	.LVL53
	.4byte	0xb51
	.4byte	0x7b6
	.byte	0x1d
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0x1d
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x40
	.byte	0x1d
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0
	.byte	0x1c
	.4byte	.LVL55
	.4byte	0xb6a
	.4byte	0x7e2
	.byte	0x1d
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x1d
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0xb4,0x7f
	.byte	0x1d
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x40
	.byte	0x1d
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x91
	.byte	0x4c
	.byte	0x1d
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x1c
	.4byte	.LVL57
	.4byte	0xb77
	.4byte	0x7fc
	.byte	0x1d
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x1d
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0
	.byte	0x24
	.4byte	.LVL58
	.4byte	0xae5
	.byte	0x1d
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.byte	0
	.byte	0x13
	.4byte	0x85
	.4byte	0x820
	.byte	0x14
	.4byte	0x3d
	.byte	0x16
	.byte	0
	.byte	0x4
	.4byte	0x810
	.byte	0x1f
	.4byte	.LASF55
	.byte	0x1
	.byte	0x17
	.byte	0x5
	.4byte	0x33d
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0xad0
	.byte	0x1b
	.string	"ret"
	.byte	0x1
	.byte	0x19
	.byte	0x9
	.4byte	0x25
	.4byte	.LLST0
	.byte	0x20
	.4byte	.LASF43
	.byte	0x1
	.byte	0x1a
	.byte	0x9
	.4byte	0x33d
	.4byte	.LLST1
	.byte	0x22
	.4byte	.LASF56
	.byte	0x1
	.byte	0x1b
	.byte	0x17
	.4byte	0x2b1
	.byte	0x3
	.byte	0x91
	.byte	0xf4,0x7e
	.byte	0x18
	.string	"R"
	.byte	0x1
	.byte	0x1f
	.byte	0x17
	.4byte	0x198
	.byte	0x3
	.byte	0x91
	.byte	0xac,0x7e
	.byte	0x22
	.4byte	.LASF57
	.byte	0x1
	.byte	0x1f
	.byte	0x1a
	.4byte	0x198
	.byte	0x3
	.byte	0x91
	.byte	0xd0,0x7e
	.byte	0x18
	.string	"m"
	.byte	0x1
	.byte	0x20
	.byte	0x11
	.4byte	0xee
	.byte	0x3
	.byte	0x91
	.byte	0xa0,0x7e
	.byte	0x22
	.4byte	.LASF58
	.byte	0x1
	.byte	0x25
	.byte	0x11
	.4byte	0x8a
	.byte	0x6
	.byte	0x3
	.4byte	.LC0
	.byte	0x9f
	.byte	0x22
	.4byte	.LASF59
	.byte	0x1
	.byte	0x26
	.byte	0x11
	.4byte	0x8a
	.byte	0x6
	.byte	0x3
	.4byte	.LC2
	.byte	0x9f
	.byte	0x22
	.4byte	.LASF60
	.byte	0x1
	.byte	0x27
	.byte	0x11
	.4byte	0x8a
	.byte	0x6
	.byte	0x3
	.4byte	.LC3
	.byte	0x9f
	.byte	0x22
	.4byte	.LASF61
	.byte	0x1
	.byte	0x28
	.byte	0x11
	.4byte	0x8a
	.byte	0x6
	.byte	0x3
	.4byte	.LC4
	.byte	0x9f
	.byte	0x26
	.4byte	.LASF62
	.4byte	0xae0
	.byte	0x5
	.byte	0x3
	.4byte	__func__.1
	.byte	0x27
	.string	"out"
	.byte	0x1
	.byte	0x35
	.byte	0x1
	.4byte	.L3
	.byte	0x1c
	.4byte	.LVL1
	.4byte	0xb84
	.4byte	0x917
	.byte	0x1d
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xf4,0x7e
	.byte	0
	.byte	0x1c
	.4byte	.LVL2
	.4byte	0xb91
	.4byte	0x931
	.byte	0x1d
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xf4,0x7e
	.byte	0x1d
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0x1c
	.4byte	.LVL3
	.4byte	0xb9e
	.4byte	0x946
	.byte	0x1d
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xac,0x7e
	.byte	0
	.byte	0x1c
	.4byte	.LVL4
	.4byte	0xb9e
	.4byte	0x95b
	.byte	0x1d
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xd0,0x7e
	.byte	0
	.byte	0x1c
	.4byte	.LVL5
	.4byte	0xb45
	.4byte	0x96f
	.byte	0x1d
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0
	.byte	0x1c
	.4byte	.LVL6
	.4byte	0xb51
	.4byte	0x991
	.byte	0x1d
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0x1d
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x40
	.byte	0x1d
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0x1c
	.4byte	.LVL8
	.4byte	0xae5
	.4byte	0x9b1
	.byte	0x1d
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x1d
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0
	.byte	0x1c
	.4byte	.LVL10
	.4byte	0xbab
	.4byte	0x9c6
	.byte	0x1d
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xf4,0x7e
	.byte	0
	.byte	0x1c
	.4byte	.LVL11
	.4byte	0xbb8
	.4byte	0x9db
	.byte	0x1d
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xac,0x7e
	.byte	0
	.byte	0x1c
	.4byte	.LVL12
	.4byte	0xbb8
	.4byte	0x9f0
	.byte	0x1d
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xd0,0x7e
	.byte	0
	.byte	0x1c
	.4byte	.LVL13
	.4byte	0xb5e
	.4byte	0xa04
	.byte	0x1d
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0
	.byte	0x1c
	.4byte	.LVL19
	.4byte	0xb51
	.4byte	0xa27
	.byte	0x1d
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xd0,0x7e
	.byte	0x1d
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x40
	.byte	0x1d
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0x1c
	.4byte	.LVL21
	.4byte	0xb51
	.4byte	0xa4a
	.byte	0x1d
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xdc,0x7e
	.byte	0x1d
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x40
	.byte	0x1d
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0x1c
	.4byte	.LVL23
	.4byte	0xb51
	.4byte	0xa6d
	.byte	0x1d
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xe8,0x7e
	.byte	0x1d
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x40
	.byte	0x1d
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.byte	0x1c
	.4byte	.LVL25
	.4byte	0xbc5
	.4byte	0xaa0
	.byte	0x1d
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xf4,0x7e
	.byte	0x1d
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0xac,0x7e
	.byte	0x1d
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0x1d
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0x91
	.byte	0x9c,0x7f
	.byte	0x1d
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x30
	.byte	0x1d
	.byte	0x1
	.byte	0x5f
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x1c
	.4byte	.LVL27
	.4byte	0xbd2
	.4byte	0xabc
	.byte	0x1d
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xac,0x7e
	.byte	0x1d
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0xd0,0x7e
	.byte	0
	.byte	0x24
	.4byte	.LVL28
	.4byte	0xae5
	.byte	0x1d
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.byte	0
	.byte	0x13
	.4byte	0x85
	.4byte	0xae0
	.byte	0x14
	.4byte	0x3d
	.byte	0x17
	.byte	0
	.byte	0x4
	.4byte	0xad0
	.byte	0x28
	.4byte	.LASF63
	.4byte	.LASF63
	.byte	0x7
	.byte	0xc8
	.byte	0x5
	.byte	0x28
	.4byte	.LASF64
	.4byte	.LASF64
	.byte	0x8
	.byte	0x21
	.byte	0x8
	.byte	0x28
	.4byte	.LASF65
	.4byte	.LASF65
	.byte	0x6
	.byte	0x83
	.byte	0x6
	.byte	0x28
	.4byte	.LASF66
	.4byte	.LASF66
	.byte	0x6
	.byte	0xb3
	.byte	0x5
	.byte	0x29
	.4byte	.LASF67
	.4byte	.LASF67
	.byte	0x6
	.2byte	0x10d
	.byte	0x5
	.byte	0x28
	.4byte	.LASF68
	.4byte	.LASF68
	.byte	0x6
	.byte	0x8c
	.byte	0x6
	.byte	0x28
	.4byte	.LASF69
	.4byte	.LASF69
	.byte	0x8
	.byte	0x1e
	.byte	0x5
	.byte	0x2a
	.4byte	.LASF86
	.4byte	.LASF87
	.byte	0x9
	.byte	0
	.byte	0x28
	.4byte	.LASF70
	.4byte	.LASF70
	.byte	0x4
	.byte	0xd0
	.byte	0x6
	.byte	0x29
	.4byte	.LASF71
	.4byte	.LASF71
	.byte	0x4
	.2byte	0x1a3
	.byte	0x5
	.byte	0x28
	.4byte	.LASF72
	.4byte	.LASF72
	.byte	0x4
	.byte	0xd9
	.byte	0x6
	.byte	0x29
	.4byte	.LASF73
	.4byte	.LASF73
	.byte	0x4
	.2byte	0x359
	.byte	0x5
	.byte	0x29
	.4byte	.LASF74
	.4byte	.LASF74
	.byte	0x4
	.2byte	0x259
	.byte	0x5
	.byte	0x29
	.4byte	.LASF75
	.4byte	.LASF75
	.byte	0x5
	.2byte	0x25c
	.byte	0x6
	.byte	0x29
	.4byte	.LASF76
	.4byte	.LASF76
	.byte	0x5
	.2byte	0x35a
	.byte	0x5
	.byte	0x29
	.4byte	.LASF77
	.4byte	.LASF77
	.byte	0x5
	.2byte	0x251
	.byte	0x6
	.byte	0x29
	.4byte	.LASF78
	.4byte	.LASF78
	.byte	0x5
	.2byte	0x273
	.byte	0x6
	.byte	0x29
	.4byte	.LASF79
	.4byte	.LASF79
	.byte	0x5
	.2byte	0x26a
	.byte	0x6
	.byte	0x29
	.4byte	.LASF80
	.4byte	.LASF80
	.byte	0x5
	.2byte	0x3bf
	.byte	0x5
	.byte	0x29
	.4byte	.LASF81
	.4byte	.LASF81
	.byte	0x5
	.2byte	0x2ce
	.byte	0x5
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
	.byte	0xb
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xb
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
	.byte	0x5
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
	.byte	0xe
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
	.byte	0xf
	.byte	0x15
	.byte	0x1
	.byte	0x27
	.byte	0x19
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x10
	.byte	0x5
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x11
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
	.byte	0x12
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
	.byte	0x13
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x14
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x15
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
	.byte	0x16
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
	.byte	0x17
	.byte	0x15
	.byte	0
	.byte	0x27
	.byte	0x19
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x18
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
	.byte	0xb
	.byte	0x39
	.byte	0xb
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
	.byte	0x1a
	.byte	0xb
	.byte	0x1
	.byte	0x55
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
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x1e
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
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
	.byte	0x20
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
	.byte	0x21
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
	.byte	0x6
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
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x23
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x24
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x25
	.byte	0x26
	.byte	0
	.byte	0
	.byte	0
	.byte	0x26
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x49
	.byte	0x13
	.byte	0x34
	.byte	0x19
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x27
	.byte	0xa
	.byte	0
	.byte	0x3
	.byte	0x8
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
	.byte	0x28
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
	.byte	0x29
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
	.byte	0x2a
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
.LLST6:
	.4byte	.LVL72
	.4byte	.LVL73
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL59
	.4byte	.LVL70
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL70
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL71
	.4byte	.LFE6
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL60
	.4byte	.LVL61
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL61
	.4byte	.LVL68
	.2byte	0x9
	.byte	0xc
	.4byte	0x186a0
	.byte	0x78
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL68
	.4byte	.LVL69
	.2byte	0x9
	.byte	0xc
	.4byte	0x186a1
	.byte	0x78
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL69
	.4byte	.LVL70
	.2byte	0x9
	.byte	0xc
	.4byte	0x186a0
	.byte	0x78
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL71
	.4byte	.LFE6
	.2byte	0x9
	.byte	0xc
	.4byte	0x186a0
	.byte	0x78
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL38
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL50
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL29
	.4byte	.LVL38
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL38
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL47
	.4byte	.LFE5
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL9
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL20
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL9
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL17
	.4byte	.LFE4
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x34
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
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
	.4byte	.LBB4
	.4byte	.LBE4
	.4byte	.LBB5
	.4byte	.LBE5
	.4byte	.LBB6
	.4byte	.LBE6
	.4byte	0
	.4byte	0
	.4byte	.LFB4
	.4byte	.LFE4
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
.LASF87:
	.string	"__builtin_memcpy"
.LASF81:
	.string	"mbedtls_ecp_point_cmp"
.LASF19:
	.string	"MBEDTLS_ECP_DP_SECP384R1"
.LASF77:
	.string	"mbedtls_ecp_point_init"
.LASF84:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/mbedtls_lts"
.LASF3:
	.string	"short int"
.LASF10:
	.string	"size_t"
.LASF45:
	.string	"plaintext"
.LASF30:
	.string	"mbedtls_ecp_point"
.LASF39:
	.string	"mbedtls_aes_context"
.LASF29:
	.string	"mbedtls_ecp_group_id"
.LASF53:
	.string	"N_str"
.LASF22:
	.string	"MBEDTLS_ECP_DP_BP384R1"
.LASF59:
	.string	"tv_R_X_str"
.LASF65:
	.string	"mbedtls_aes_init"
.LASF17:
	.string	"MBEDTLS_ECP_DP_SECP224R1"
.LASF38:
	.string	"T_size"
.LASF54:
	.string	"X_gold_str"
.LASF86:
	.string	"memcpy"
.LASF34:
	.string	"modp"
.LASF48:
	.string	"mbedtls_tc_aes_ecb"
.LASF40:
	.string	"tc_fun"
.LASF11:
	.string	"uint8_t"
.LASF85:
	.string	"mbedtls_test_case_run"
.LASF56:
	.string	"group"
.LASF80:
	.string	"mbedtls_ecp_mul"
.LASF33:
	.string	"nbits"
.LASF26:
	.string	"MBEDTLS_ECP_DP_SECP224K1"
.LASF14:
	.string	"mbedtls_mpi"
.LASF7:
	.string	"long long int"
.LASF47:
	.string	"ciphertext"
.LASF73:
	.string	"mbedtls_mpi_exp_mod"
.LASF64:
	.string	"memset"
.LASF58:
	.string	"tv_m_str"
.LASF37:
	.string	"t_data"
.LASF63:
	.string	"printf"
.LASF43:
	.string	"passed"
.LASF76:
	.string	"mbedtls_ecp_group_load"
.LASF72:
	.string	"mbedtls_mpi_free"
.LASF2:
	.string	"unsigned char"
.LASF60:
	.string	"tv_R_Y_str"
.LASF67:
	.string	"mbedtls_aes_crypt_ecb"
.LASF15:
	.string	"MBEDTLS_ECP_DP_NONE"
.LASF1:
	.string	"signed char"
.LASF8:
	.string	"long long unsigned int"
.LASF12:
	.string	"uint32_t"
.LASF83:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/mbedtls_lts/port/test_case.c"
.LASF28:
	.string	"MBEDTLS_ECP_DP_CURVE448"
.LASF0:
	.string	"unsigned int"
.LASF20:
	.string	"MBEDTLS_ECP_DP_SECP521R1"
.LASF71:
	.string	"mbedtls_mpi_read_string"
.LASF51:
	.string	"A_str"
.LASF41:
	.string	"desc"
.LASF78:
	.string	"mbedtls_ecp_group_free"
.LASF62:
	.string	"__func__"
.LASF4:
	.string	"short unsigned int"
.LASF50:
	.string	"X_gold"
.LASF46:
	.string	"expected_ciphertext"
.LASF74:
	.string	"mbedtls_mpi_cmp_mpi"
.LASF9:
	.string	"char"
.LASF5:
	.string	"long int"
.LASF57:
	.string	"R_gold"
.LASF36:
	.string	"t_post"
.LASF69:
	.string	"memcmp"
.LASF42:
	.string	"_Bool"
.LASF18:
	.string	"MBEDTLS_ECP_DP_SECP256R1"
.LASF44:
	.string	"rounds"
.LASF79:
	.string	"mbedtls_ecp_point_free"
.LASF35:
	.string	"t_pre"
.LASF55:
	.string	"mbedtls_tc_ecp_p256_mul"
.LASF66:
	.string	"mbedtls_aes_setkey_enc"
.LASF6:
	.string	"long unsigned int"
.LASF23:
	.string	"MBEDTLS_ECP_DP_BP512R1"
.LASF21:
	.string	"MBEDTLS_ECP_DP_BP256R1"
.LASF68:
	.string	"mbedtls_aes_free"
.LASF70:
	.string	"mbedtls_mpi_init"
.LASF13:
	.string	"mbedtls_mpi_uint"
.LASF27:
	.string	"MBEDTLS_ECP_DP_SECP256K1"
.LASF61:
	.string	"tv_R_Z_str"
.LASF16:
	.string	"MBEDTLS_ECP_DP_SECP192R1"
.LASF24:
	.string	"MBEDTLS_ECP_DP_CURVE25519"
.LASF31:
	.string	"mbedtls_ecp_group"
.LASF49:
	.string	"mbedtls_tc_mpi_exp_mod"
.LASF75:
	.string	"mbedtls_ecp_group_init"
.LASF52:
	.string	"E_str"
.LASF25:
	.string	"MBEDTLS_ECP_DP_SECP192K1"
.LASF32:
	.string	"pbits"
.LASF82:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
