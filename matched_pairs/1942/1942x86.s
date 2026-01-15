	.text
	.p2align	4, 0x90                         # -- Begin function read_unary_minus
read_unary_minus:                       # @read_unary_minus
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movb	$0, %al
	callq	read_cast_expr@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	ensure_arithtype@PLT
	movq	-16(%rbp), %rax
	movl	(%rax), %edi
	callq	is_inttype@PLT
	cmpq	$0, %rax
	je	.LBB0_2
# %bb.1:
	movq	-16(%rbp), %rax
	movl	(%rax), %edi
	xorl	%esi, %esi
	callq	ast_inttype@PLT
	movq	%rax, %rdi
	callq	conv@PLT
	movq	%rax, -24(%rbp)                 # 8-byte Spill
	movq	-16(%rbp), %rdi
	callq	conv@PLT
	movq	-24(%rbp), %rsi                 # 8-byte Reload
	movq	%rax, %rdx
	movl	$45, %edi
	callq	binop@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_3
.LBB0_2:
	movq	-16(%rbp), %rax
	movl	(%rax), %edi
	xorl	%esi, %esi
	callq	ast_floattype@PLT
	movq	%rax, %rsi
	movq	-16(%rbp), %rdx
	movl	$45, %edi
	callq	binop@PLT
	movq	%rax, -8(%rbp)
.LBB0_3:
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_unary_minus
	.addrsig_sym read_cast_expr
	.addrsig_sym ensure_arithtype
	.addrsig_sym is_inttype
	.addrsig_sym binop
	.addrsig_sym conv
	.addrsig_sym ast_inttype
	.addrsig_sym ast_floattype