	.text
	.p2align	4, 0x90                         # -- Begin function read_expr_opt
read_expr_opt:                          # @read_expr_opt
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movb	$0, %al
	callq	read_comma_expr@PLT
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_expr_opt
	.addrsig_sym read_comma_expr