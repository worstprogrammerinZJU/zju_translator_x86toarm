	.text
	.p2align	4, 0x90                         # -- Begin function empty2
empty2:                                 # @empty2
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym empty2