	.text
	.p2align	4, 0x90                         # -- Begin function maybe_skip_comma
maybe_skip_comma:                       # @maybe_skip_comma
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$44, %edi
	callq	next_token@PLT
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym maybe_skip_comma
	.addrsig_sym next_token