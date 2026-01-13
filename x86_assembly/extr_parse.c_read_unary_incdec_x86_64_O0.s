	.text
	.p2align	4, 0x90                         # -- Begin function read_unary_incdec
read_unary_incdec:                      # @read_unary_incdec
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movb	$0, %al
	callq	read_unary_expr@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	conv@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	ensure_lvalue@PLT
	movl	-4(%rbp), %edi
	movq	-16(%rbp), %rax
	movl	(%rax), %esi
	movq	-16(%rbp), %rdx
	callq	ast_uop@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_unary_incdec
	.addrsig_sym read_unary_expr
	.addrsig_sym conv
	.addrsig_sym ensure_lvalue
	.addrsig_sym ast_uop