	.text
	.p2align	4, 0x90                         # -- Begin function run_jq_tests
run_jq_tests:                           # @run_jq_tests
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8368, %rsp                     # imm = 0x20B0
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movl	$0, -8236(%rbp)
	movl	$0, -8240(%rbp)
	movl	$0, -8244(%rbp)
	movl	$0, -8248(%rbp)
	movl	$0, -8252(%rbp)
	movl	$0, -8256(%rbp)
	movq	$0, -8264(%rbp)
	cmpl	$0, -20(%rbp)
	jle	.LBB0_2
# %bb.1:
	movl	-20(%rbp), %eax
	movl	%eax, -8312(%rbp)               # 4-byte Spill
	jmp	.LBB0_3
.LBB0_2:
	xorl	%eax, %eax
	movl	%eax, -8312(%rbp)               # 4-byte Spill
	jmp	.LBB0_3
.LBB0_3:
	movl	-8312(%rbp), %eax               # 4-byte Reload
	movl	%eax, -8268(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -8272(%rbp)
	movb	$0, %al
	callq	jq_init@PLT
	movq	%rax, -8264(%rbp)
	movq	-8264(%rbp), %rdi
	callq	assert@PLT
	movl	-4(%rbp), %edi
	callq	jv_get_kind@PLT
	cmpq	JV_KIND_NULL(%rip), %rax
	jne	.LBB0_5
# %bb.4:
	movb	$0, %al
	callq	jv_array@PLT
	movl	%eax, -4(%rbp)
.LBB0_5:
	movq	-8264(%rbp), %rax
	movq	%rax, -8320(%rbp)               # 8-byte Spill
	leaq	.L.str(%rip), %rdi
	callq	jv_string@PLT
	movq	-8320(%rbp), %rdi               # 8-byte Reload
	movl	%eax, %esi
	movl	-4(%rbp), %edx
	callq	jq_set_attr@PLT
.LBB0_6:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_16 Depth 2
                                        #     Child Loop BB0_45 Depth 2
                                        #     Child Loop BB0_62 Depth 2
	leaq	-4128(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movl	$4096, %esi                     # imm = 0x1000
	callq	fgets@PLT
	cmpq	$0, %rax
	jne	.LBB0_8
# %bb.7:
	jmp	.LBB0_79
.LBB0_8:                                #   in Loop: Header=BB0_6 Depth=1
	movl	-8248(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8248(%rbp)
	leaq	-4128(%rbp), %rdi
	callq	skipline@PLT
	cmpq	$0, %rax
	je	.LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_6 Depth=1
	jmp	.LBB0_6
.LBB0_10:                               #   in Loop: Header=BB0_6 Depth=1
	leaq	-4128(%rbp), %rdi
	callq	checkfail@PLT
	cmpq	$0, %rax
	je	.LBB0_12
# %bb.11:                               #   in Loop: Header=BB0_6 Depth=1
	movl	$1, -8252(%rbp)
	leaq	-4128(%rbp), %rdi
	callq	checkerrormsg@PLT
	movl	%eax, -8256(%rbp)
	movq	-8264(%rbp), %rdi
	movq	test_err_cb(%rip), %rsi
	leaq	-8232(%rbp), %rdx
	callq	jq_set_error_cb@PLT
	jmp	.LBB0_6
.LBB0_12:                               #   in Loop: Header=BB0_6 Depth=1
	leaq	-4128(%rbp), %rdi
	callq	strlen@PLT
	subl	$1, %eax
	cltq
	movsbl	-4128(%rbp,%rax), %eax
	cmpl	$10, %eax
	jne	.LBB0_14
# %bb.13:                               #   in Loop: Header=BB0_6 Depth=1
	leaq	-4128(%rbp), %rdi
	callq	strlen@PLT
	subl	$1, %eax
	cltq
	movb	$0, -4128(%rbp,%rax)
.LBB0_14:                               #   in Loop: Header=BB0_6 Depth=1
	cmpl	$0, -20(%rbp)
	jle	.LBB0_23
# %bb.15:                               #   in Loop: Header=BB0_6 Depth=1
	movl	-20(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -20(%rbp)
.LBB0_16:                               #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leaq	-8224(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movl	$4096, %esi                     # imm = 0x1000
	callq	fgets@PLT
	cmpq	$0, %rax
	je	.LBB0_22
# %bb.17:                               #   in Loop: Header=BB0_16 Depth=2
	movl	-8248(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8248(%rbp)
	movsbl	-8224(%rbp), %eax
	cmpl	$10, %eax
	je	.LBB0_20
# %bb.18:                               #   in Loop: Header=BB0_16 Depth=2
	movsbl	-8224(%rbp), %eax
	cmpl	$13, %eax
	jne	.LBB0_21
# %bb.19:                               #   in Loop: Header=BB0_16 Depth=2
	movsbl	-8223(%rbp), %eax
	cmpl	$10, %eax
	jne	.LBB0_21
.LBB0_20:                               #   in Loop: Header=BB0_6 Depth=1
	jmp	.LBB0_22
.LBB0_21:                               #   in Loop: Header=BB0_16 Depth=2
	jmp	.LBB0_16
.LBB0_22:                               #   in Loop: Header=BB0_6 Depth=1
	movl	$0, -8252(%rbp)
	movl	$0, -8256(%rbp)
	jmp	.LBB0_6
.LBB0_23:                               #   in Loop: Header=BB0_6 Depth=1
	cmpl	$0, -20(%rbp)
	jne	.LBB0_25
# %bb.24:                               #   in Loop: Header=BB0_6 Depth=1
	movl	-8268(%rbp), %esi
	leaq	.L.str.1(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
	movl	$-1, -20(%rbp)
.LBB0_25:                               #   in Loop: Header=BB0_6 Depth=1
	jmp	.LBB0_26
.LBB0_26:                               #   in Loop: Header=BB0_6 Depth=1
	cmpl	$0, -24(%rbp)
	jle	.LBB0_28
# %bb.27:                               #   in Loop: Header=BB0_6 Depth=1
	movl	-24(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB0_31
.LBB0_28:                               #   in Loop: Header=BB0_6 Depth=1
	cmpl	$0, -24(%rbp)
	jne	.LBB0_30
# %bb.29:
	movl	-8272(%rbp), %esi
	leaq	.L.str.2(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
	movl	$-1, -24(%rbp)
	jmp	.LBB0_79
.LBB0_30:                               #   in Loop: Header=BB0_6 Depth=1
	jmp	.LBB0_31
.LBB0_31:                               #   in Loop: Header=BB0_6 Depth=1
	movl	$1, -8276(%rbp)
	movl	-8236(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8236(%rbp)
	movl	-8236(%rbp), %esi
	addl	-8268(%rbp), %esi
	leaq	-4128(%rbp), %rdx
	movl	-8248(%rbp), %ecx
	leaq	.L.str.3(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
	movq	-8264(%rbp), %rdi
	leaq	-4128(%rbp), %rsi
	callq	jq_compile@PLT
	movl	%eax, -8280(%rbp)
	cmpl	$0, -8252(%rbp)
	je	.LBB0_43
# %bb.32:                               #   in Loop: Header=BB0_6 Depth=1
	movq	-8264(%rbp), %rdi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	%rdx, %rsi
	callq	jq_set_error_cb@PLT
	leaq	-8224(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movl	$4096, %esi                     # imm = 0x1000
	callq	fgets@PLT
	cmpq	$0, %rax
	jne	.LBB0_34
# %bb.33:
	movl	-8244(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8244(%rbp)
	jmp	.LBB0_79
.LBB0_34:                               #   in Loop: Header=BB0_6 Depth=1
	movl	-8248(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8248(%rbp)
	leaq	-8224(%rbp), %rdi
	callq	strlen@PLT
	subl	$1, %eax
	cltq
	movsbl	-8224(%rbp,%rax), %eax
	cmpl	$10, %eax
	jne	.LBB0_36
# %bb.35:                               #   in Loop: Header=BB0_6 Depth=1
	leaq	-8224(%rbp), %rdi
	callq	strlen@PLT
	subl	$1, %eax
	cltq
	movb	$0, -8224(%rbp,%rax)
.LBB0_36:                               #   in Loop: Header=BB0_6 Depth=1
	cmpl	$0, -8280(%rbp)
	je	.LBB0_38
# %bb.37:                               #   in Loop: Header=BB0_6 Depth=1
	movl	-8248(%rbp), %esi
	leaq	-4128(%rbp), %rdx
	leaq	.L.str.4(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
	movl	$0, -8252(%rbp)
	movl	$0, -8256(%rbp)
	movl	-8244(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8244(%rbp)
	jmp	.LBB0_6
.LBB0_38:                               #   in Loop: Header=BB0_6 Depth=1
	cmpl	$0, -8256(%rbp)
	je	.LBB0_41
# %bb.39:                               #   in Loop: Header=BB0_6 Depth=1
	leaq	-8224(%rbp), %rdi
	movq	-8232(%rbp), %rsi
	callq	strcmp@PLT
	cmpq	$0, %rax
	je	.LBB0_41
# %bb.40:                               #   in Loop: Header=BB0_6 Depth=1
	movq	-8232(%rbp), %rsi
	movl	-8248(%rbp), %edx
	leaq	-4128(%rbp), %rcx
	leaq	.L.str.5(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
	movl	-8244(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8244(%rbp)
	jmp	.LBB0_42
.LBB0_41:                               #   in Loop: Header=BB0_6 Depth=1
	movl	-8240(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8240(%rbp)
.LBB0_42:                               #   in Loop: Header=BB0_6 Depth=1
	movl	$0, -8252(%rbp)
	movl	$0, -8256(%rbp)
	jmp	.LBB0_6
.LBB0_43:                               #   in Loop: Header=BB0_6 Depth=1
	cmpl	$0, -8280(%rbp)
	jne	.LBB0_52
# %bb.44:                               #   in Loop: Header=BB0_6 Depth=1
	movl	-8248(%rbp), %esi
	leaq	-4128(%rbp), %rdx
	leaq	.L.str.6(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
	movl	-8244(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8244(%rbp)
.LBB0_45:                               #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leaq	-8224(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movl	$4096, %esi                     # imm = 0x1000
	callq	fgets@PLT
	cmpq	$0, %rax
	je	.LBB0_51
# %bb.46:                               #   in Loop: Header=BB0_45 Depth=2
	movl	-8248(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8248(%rbp)
	movsbl	-8224(%rbp), %eax
	cmpl	$10, %eax
	je	.LBB0_49
# %bb.47:                               #   in Loop: Header=BB0_45 Depth=2
	movsbl	-8224(%rbp), %eax
	cmpl	$13, %eax
	jne	.LBB0_50
# %bb.48:                               #   in Loop: Header=BB0_45 Depth=2
	movsbl	-8223(%rbp), %eax
	cmpl	$10, %eax
	jne	.LBB0_50
.LBB0_49:                               #   in Loop: Header=BB0_6 Depth=1
	jmp	.LBB0_51
.LBB0_50:                               #   in Loop: Header=BB0_45 Depth=2
	jmp	.LBB0_45
.LBB0_51:                               #   in Loop: Header=BB0_6 Depth=1
	jmp	.LBB0_6
.LBB0_52:                               #   in Loop: Header=BB0_6 Depth=1
	cmpl	$0, -8(%rbp)
	je	.LBB0_54
# %bb.53:                               #   in Loop: Header=BB0_6 Depth=1
	leaq	.L.str.7(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
	movq	-8264(%rbp), %rdi
	movl	$2, %esi
	callq	jq_dump_disassembly@PLT
	leaq	.L.str.8(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
.LBB0_54:                               #   in Loop: Header=BB0_6 Depth=1
	leaq	-8224(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movl	$4096, %esi                     # imm = 0x1000
	callq	fgets@PLT
	cmpq	$0, %rax
	jne	.LBB0_56
# %bb.55:
	movl	-8244(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8244(%rbp)
	jmp	.LBB0_79
.LBB0_56:                               #   in Loop: Header=BB0_6 Depth=1
	movl	-8248(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8248(%rbp)
	leaq	-8224(%rbp), %rdi
	callq	jv_parse@PLT
	movl	%eax, -8284(%rbp)
	movl	-8284(%rbp), %edi
	callq	jv_is_valid@PLT
	cmpq	$0, %rax
	jne	.LBB0_58
# %bb.57:                               #   in Loop: Header=BB0_6 Depth=1
	movl	-8248(%rbp), %esi
	leaq	-8224(%rbp), %rdx
	leaq	.L.str.9(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
	movl	-8244(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8244(%rbp)
	jmp	.LBB0_6
.LBB0_58:                               #   in Loop: Header=BB0_6 Depth=1
	movq	-8264(%rbp), %rax
	movq	%rax, -8336(%rbp)               # 8-byte Spill
	movl	-8284(%rbp), %eax
	movl	%eax, -8324(%rbp)               # 4-byte Spill
	cmpl	$0, -8(%rbp)
	je	.LBB0_60
# %bb.59:                               #   in Loop: Header=BB0_6 Depth=1
	movl	JQ_DEBUG_TRACE(%rip), %eax
	movl	%eax, -8340(%rbp)               # 4-byte Spill
	jmp	.LBB0_61
.LBB0_60:                               #   in Loop: Header=BB0_6 Depth=1
	xorl	%eax, %eax
	movl	%eax, -8340(%rbp)               # 4-byte Spill
	jmp	.LBB0_61
.LBB0_61:                               #   in Loop: Header=BB0_6 Depth=1
	movl	-8324(%rbp), %esi               # 4-byte Reload
	movq	-8336(%rbp), %rdi               # 8-byte Reload
	movl	-8340(%rbp), %edx               # 4-byte Reload
	callq	jq_start@PLT
.LBB0_62:                               #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leaq	-8224(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movl	$4096, %esi                     # imm = 0x1000
	callq	fgets@PLT
	cmpq	$0, %rax
	je	.LBB0_73
# %bb.63:                               #   in Loop: Header=BB0_62 Depth=2
	movl	-8248(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8248(%rbp)
	leaq	-8224(%rbp), %rdi
	callq	skipline@PLT
	cmpq	$0, %rax
	je	.LBB0_65
# %bb.64:                               #   in Loop: Header=BB0_6 Depth=1
	jmp	.LBB0_73
.LBB0_65:                               #   in Loop: Header=BB0_62 Depth=2
	leaq	-8224(%rbp), %rdi
	callq	jv_parse@PLT
	movl	%eax, -8288(%rbp)
	movl	-8288(%rbp), %edi
	callq	jv_is_valid@PLT
	cmpq	$0, %rax
	jne	.LBB0_67
# %bb.66:                               #   in Loop: Header=BB0_62 Depth=2
	movl	-8248(%rbp), %esi
	leaq	-8224(%rbp), %rdx
	leaq	.L.str.10(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
	movl	-8244(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8244(%rbp)
	jmp	.LBB0_62
.LBB0_67:                               #   in Loop: Header=BB0_62 Depth=2
	movq	-8264(%rbp), %rdi
	callq	jq_next@PLT
	movl	%eax, -8292(%rbp)
	movl	-8292(%rbp), %edi
	callq	jv_is_valid@PLT
	cmpq	$0, %rax
	jne	.LBB0_69
# %bb.68:                               #   in Loop: Header=BB0_6 Depth=1
	movl	-8292(%rbp), %edi
	callq	jv_free@PLT
	movl	-8248(%rbp), %esi
	leaq	-4128(%rbp), %rdx
	leaq	.L.str.11(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
	movl	$0, -8276(%rbp)
	jmp	.LBB0_73
.LBB0_69:                               #   in Loop: Header=BB0_62 Depth=2
	movl	-8288(%rbp), %edi
	callq	jv_copy@PLT
	movl	%eax, -8344(%rbp)               # 4-byte Spill
	movl	-8292(%rbp), %edi
	callq	jv_copy@PLT
	movl	-8344(%rbp), %edi               # 4-byte Reload
	movl	%eax, %esi
	callq	jv_equal@PLT
	cmpq	$0, %rax
	jne	.LBB0_71
# %bb.70:                               #   in Loop: Header=BB0_62 Depth=2
	leaq	.L.str.12(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
	movl	-8288(%rbp), %edi
	callq	jv_copy@PLT
	movl	%eax, %edi
	xorl	%esi, %esi
	callq	jv_dump@PLT
	leaq	.L.str.13(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
	movl	-8292(%rbp), %edi
	callq	jv_copy@PLT
	movl	%eax, %edi
	xorl	%esi, %esi
	callq	jv_dump@PLT
	movl	-8248(%rbp), %esi
	leaq	-4128(%rbp), %rdx
	leaq	.L.str.14(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
	movl	$0, -8276(%rbp)
.LBB0_71:                               #   in Loop: Header=BB0_62 Depth=2
	jmp	.LBB0_72
.LBB0_72:                               #   in Loop: Header=BB0_62 Depth=2
	movl	-8288(%rbp), %edi
	callq	jv_copy@PLT
	movl	%eax, -8356(%rbp)               # 4-byte Spill
	movb	$0, %al
	callq	rand@PLT
	movl	-8356(%rbp), %edi               # 4-byte Reload
	movl	%eax, %esi
	movl	JV_PRINT_COLOR(%rip), %eax
	orl	JV_PRINT_REFCOUNT(%rip), %eax
	xorl	$-1, %eax
	andl	%eax, %esi
	callq	jv_dump_string@PLT
	movl	%eax, -8296(%rbp)
	movl	-8296(%rbp), %edi
	callq	jv_string_value@PLT
	movl	%eax, -8352(%rbp)               # 4-byte Spill
	movl	-8296(%rbp), %edi
	callq	jv_copy@PLT
	movl	%eax, %edi
	callq	jv_string_length_bytes@PLT
	movl	-8352(%rbp), %edi               # 4-byte Reload
	movl	%eax, %esi
	callq	jv_parse_sized@PLT
	movl	%eax, -8300(%rbp)
	movl	-8288(%rbp), %edi
	callq	jv_copy@PLT
	movl	%eax, -8348(%rbp)               # 4-byte Spill
	movl	-8300(%rbp), %edi
	callq	jv_copy@PLT
	movl	-8348(%rbp), %edi               # 4-byte Reload
	movl	%eax, %esi
	callq	jv_equal@PLT
	movq	%rax, %rdi
	callq	assert@PLT
	movl	-8296(%rbp), %edi
	callq	jv_free@PLT
	movl	-8300(%rbp), %edi
	callq	jv_free@PLT
	movl	-8288(%rbp), %edi
	callq	jv_free@PLT
	movl	-8292(%rbp), %edi
	callq	jv_free@PLT
	jmp	.LBB0_62
.LBB0_73:                               #   in Loop: Header=BB0_6 Depth=1
	cmpl	$0, -8276(%rbp)
	je	.LBB0_78
# %bb.74:                               #   in Loop: Header=BB0_6 Depth=1
	movq	-8264(%rbp), %rdi
	callq	jq_next@PLT
	movl	%eax, -8304(%rbp)
	movl	-8304(%rbp), %edi
	callq	jv_is_valid@PLT
	cmpq	$0, %rax
	je	.LBB0_76
# %bb.75:                               #   in Loop: Header=BB0_6 Depth=1
	leaq	.L.str.15(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
	movl	-8304(%rbp), %edi
	xorl	%esi, %esi
	callq	jv_dump@PLT
	movl	-8248(%rbp), %esi
	leaq	-4128(%rbp), %rdx
	leaq	.L.str.16(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
	movl	$0, -8276(%rbp)
	jmp	.LBB0_77
.LBB0_76:                               #   in Loop: Header=BB0_6 Depth=1
	movl	-8304(%rbp), %edi
	callq	jv_free@PLT
.LBB0_77:                               #   in Loop: Header=BB0_6 Depth=1
	jmp	.LBB0_78
.LBB0_78:                               #   in Loop: Header=BB0_6 Depth=1
	movl	-8276(%rbp), %eax
	addl	-8240(%rbp), %eax
	movl	%eax, -8240(%rbp)
	jmp	.LBB0_6
.LBB0_79:
	leaq	-8264(%rbp), %rdi
	callq	jq_teardown@PLT
	movl	-8268(%rbp), %eax
	movl	%eax, -8308(%rbp)
	cmpl	$0, -20(%rbp)
	jle	.LBB0_81
# %bb.80:
	movl	-8268(%rbp), %eax
	subl	-20(%rbp), %eax
	movl	%eax, -8308(%rbp)
.LBB0_81:
	movl	-8240(%rbp), %esi
	movl	-8236(%rbp), %edx
	movl	-8244(%rbp), %ecx
	movl	-8308(%rbp), %r8d
	leaq	.L.str.17(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
	cmpl	$0, -20(%rbp)
	jle	.LBB0_83
# %bb.82:
	leaq	.L.str.18(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
	movl	$2, %edi
	callq	exit@PLT
.LBB0_83:
	movl	-8240(%rbp), %eax
	cmpl	-8236(%rbp), %eax
	je	.LBB0_85
# %bb.84:
	movl	$1, %edi
	callq	exit@PLT
.LBB0_85:
	addq	$8368, %rsp                     # imm = 0x20B0
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	JV_KIND_NULL
	.p2align	3
JV_KIND_NULL:
	.quad	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"JQ_LIBRARY_PATH"
	.bss
	.globl	test_err_cb
	.p2align	3
test_err_cb:
	.quad	0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"Skipped %d tests\n"
.L.str.2:
	.asciz	"Hit the number of tests limit (%d), breaking\n"
.L.str.3:
	.asciz	"Test #%d: '%s' at line number %u\n"
.L.str.4:
	.asciz	"*** Test program compiled that should not have at line %u: %s\n"
.L.str.5:
	.asciz	"*** Erroneous test program failed with wrong message (%s) at line %u: %s\n"
.L.str.6:
	.asciz	"*** Test program failed to compile at line %u: %s\n"
.L.str.7:
	.asciz	"Disassembly:\n"
.L.str.8:
	.asciz	"\n"
.L.str.9:
	.asciz	"*** Input is invalid on line %u: %s\n"
	.bss
	.globl	JQ_DEBUG_TRACE
	.p2align	2
JQ_DEBUG_TRACE:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.10:
	.asciz	"*** Expected result is invalid on line %u: %s\n"
.L.str.11:
	.asciz	"*** Insufficient results for test at line number %u: %s\n"
.L.str.12:
	.asciz	"*** Expected "
.L.str.13:
	.asciz	", but got "
.L.str.14:
	.asciz	" for test at line number %u: %s\n"
	.bss
	.globl	JV_PRINT_COLOR
	.p2align	2
JV_PRINT_COLOR:
	.long	0                               # 0x0
	.globl	JV_PRINT_REFCOUNT
	.p2align	2
JV_PRINT_REFCOUNT:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.15:
	.asciz	"*** Superfluous result: "
.L.str.16:
	.asciz	" for test at line number %u, %s\n"
.L.str.17:
	.asciz	"%d of %d tests passed (%d malformed, %d skipped)\n"
.L.str.18:
	.asciz	"WARN: skipped past the end of file, exiting with status 2\n"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym run_jq_tests
	.addrsig_sym jq_init
	.addrsig_sym assert
	.addrsig_sym jv_get_kind
	.addrsig_sym jv_array
	.addrsig_sym jq_set_attr
	.addrsig_sym jv_string
	.addrsig_sym fgets
	.addrsig_sym skipline
	.addrsig_sym checkfail
	.addrsig_sym checkerrormsg
	.addrsig_sym jq_set_error_cb
	.addrsig_sym strlen
	.addrsig_sym printf
	.addrsig_sym jq_compile
	.addrsig_sym strcmp
	.addrsig_sym jq_dump_disassembly
	.addrsig_sym jv_parse
	.addrsig_sym jv_is_valid
	.addrsig_sym jq_start
	.addrsig_sym jq_next
	.addrsig_sym jv_free
	.addrsig_sym jv_equal
	.addrsig_sym jv_copy
	.addrsig_sym jv_dump
	.addrsig_sym jv_dump_string
	.addrsig_sym rand
	.addrsig_sym jv_parse_sized
	.addrsig_sym jv_string_value
	.addrsig_sym jv_string_length_bytes
	.addrsig_sym jq_teardown
	.addrsig_sym exit
	.addrsig_sym JV_KIND_NULL
	.addrsig_sym test_err_cb
	.addrsig_sym JQ_DEBUG_TRACE
	.addrsig_sym JV_PRINT_COLOR
	.addrsig_sym JV_PRINT_REFCOUNT