	.text
	.p2align	4, 0x90                         # -- Begin function read_postfix_expr
read_postfix_expr:                      # @read_postfix_expr
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movb	$0, %al
	callq	read_primary_expr@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	read_postfix_expr_tail@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_postfix_expr
	.addrsig_sym read_primary_expr
	.addrsig_sym read_postfix_expr_tail