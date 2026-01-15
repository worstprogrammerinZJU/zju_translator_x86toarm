	.text
	.p2align	4, 0x90                         # -- Begin function do_read_conditional_expr
do_read_conditional_expr:               # @do_read_conditional_expr
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movb	$0, %al
	callq	read_comma_expr@PLT
	movl	%eax, %edi
	callq	conv@PLT
	movq	%rax, -24(%rbp)
	movl	$58, %edi
	callq	expect@PLT
	movb	$0, %al
	callq	read_conditional_expr@PLT
	movl	%eax, %edi
	callq	conv@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB0_2
# %bb.1:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)                 # 8-byte Spill
	jmp	.LBB0_3
.LBB0_2:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)                 # 8-byte Spill
.LBB0_3:
	movq	-64(%rbp), %rax                 # 8-byte Reload
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rdi
	callq	is_arithtype@PLT
	cmpq	$0, %rax
	je	.LBB0_9
# %bb.4:
	movq	-48(%rbp), %rdi
	callq	is_arithtype@PLT
	cmpq	$0, %rax
	je	.LBB0_9
# %bb.5:
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	usual_arith_conv@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -80(%rbp)                 # 8-byte Spill
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)                 # 8-byte Spill
	cmpq	$0, -24(%rbp)
	je	.LBB0_7
# %bb.6:
	movq	-56(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	wrap@PLT
	movq	%rax, -88(%rbp)                 # 8-byte Spill
	jmp	.LBB0_8
.LBB0_7:
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, -88(%rbp)                 # 8-byte Spill
	jmp	.LBB0_8
.LBB0_8:
	movq	-88(%rbp), %rax                 # 8-byte Reload
	movq	%rax, -96(%rbp)                 # 8-byte Spill
	movq	-56(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	wrap@PLT
	movq	-80(%rbp), %rdi                 # 8-byte Reload
	movq	-72(%rbp), %rsi                 # 8-byte Reload
	movq	-96(%rbp), %rdx                 # 8-byte Reload
	movq	%rax, %rcx
	callq	ast_ternary@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_10
.LBB0_9:
	movq	-48(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	callq	ast_ternary@PLT
	movq	%rax, -8(%rbp)
.LBB0_10:
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym do_read_conditional_expr
	.addrsig_sym conv
	.addrsig_sym read_comma_expr
	.addrsig_sym expect
	.addrsig_sym read_conditional_expr
	.addrsig_sym is_arithtype
	.addrsig_sym usual_arith_conv
	.addrsig_sym ast_ternary
	.addrsig_sym wrap