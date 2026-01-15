	.text
	.p2align	4, 0x90                         # -- Begin function maybe_read_brace
maybe_read_brace:                       # @maybe_read_brace
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$123, %edi
	callq	next_token@PLT
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym maybe_read_brace
	.addrsig_sym next_token