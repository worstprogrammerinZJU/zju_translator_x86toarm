	.text
	.p2align	4, 0x90                         # -- Begin function peek
peek:                                   # @peek
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movb	$0, %al
	callq	peek_token@PLT
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym peek
	.addrsig_sym peek_token