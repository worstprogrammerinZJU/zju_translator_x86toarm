	.text
	.p2align	4, 0x90                         # -- Begin function read_assignment_expr
read_assignment_expr:                   # @read_assignment_expr
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movb	$0, %al
	callq	read_logor_expr@PLT
	movq	%rax, -16(%rbp)
	movb	$0, %al
	callq	get@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB0_2
# %bb.1:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_17
.LBB0_2:
	movq	-24(%rbp), %rdi
	movl	$63, %esi
	callq	is_keyword@PLT
	cmpq	$0, %rax
	je	.LBB0_4
# %bb.3:
	movq	-16(%rbp), %rdi
	callq	do_read_conditional_expr@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_17
.LBB0_4:
	movq	-24(%rbp), %rdi
	callq	get_compound_assign_op@PLT
	movl	%eax, -28(%rbp)
	movq	-24(%rbp), %rdi
	movl	$61, %esi
	callq	is_keyword@PLT
	cmpq	$0, %rax
	jne	.LBB0_6
# %bb.5:
	cmpl	$0, -28(%rbp)
	je	.LBB0_16
.LBB0_6:
	callq	read_assignment_expr
	movq	%rax, %rdi
	callq	conv@PLT
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rdi
	movl	$61, %esi
	callq	is_keyword@PLT
	cmpq	$0, %rax
	jne	.LBB0_8
# %bb.7:
	cmpl	$0, -28(%rbp)
	je	.LBB0_9
.LBB0_8:
	movq	-16(%rbp), %rdi
	callq	ensure_lvalue@PLT
.LBB0_9:
	cmpl	$0, -28(%rbp)
	je	.LBB0_11
# %bb.10:
	movl	-28(%rbp), %eax
	movl	%eax, -60(%rbp)                 # 4-byte Spill
	movq	-16(%rbp), %rdi
	callq	conv@PLT
	movl	-60(%rbp), %edi                 # 4-byte Reload
	movq	%rax, %rsi
	movq	-40(%rbp), %rdx
	callq	binop@PLT
	movq	%rax, -56(%rbp)                 # 8-byte Spill
	jmp	.LBB0_12
.LBB0_11:
	movq	-40(%rbp), %rax
	movq	%rax, -56(%rbp)                 # 8-byte Spill
.LBB0_12:
	movq	-56(%rbp), %rax                 # 8-byte Reload
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	is_arithtype@PLT
	cmpq	$0, %rax
	je	.LBB0_15
# %bb.13:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	-48(%rbp), %rcx
	movq	(%rcx), %rcx
	cmpq	(%rcx), %rax
	je	.LBB0_15
# %bb.14:
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movq	-48(%rbp), %rsi
	callq	ast_conv@PLT
	movq	%rax, -48(%rbp)
.LBB0_15:
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movq	-16(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movl	$61, %esi
	callq	ast_binop@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_17
.LBB0_16:
	movq	-24(%rbp), %rdi
	callq	unget_token@PLT
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB0_17:
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_assignment_expr
	.addrsig_sym read_logor_expr
	.addrsig_sym get
	.addrsig_sym is_keyword
	.addrsig_sym do_read_conditional_expr
	.addrsig_sym get_compound_assign_op
	.addrsig_sym conv
	.addrsig_sym ensure_lvalue
	.addrsig_sym binop
	.addrsig_sym is_arithtype
	.addrsig_sym ast_conv
	.addrsig_sym ast_binop
	.addrsig_sym unget_token