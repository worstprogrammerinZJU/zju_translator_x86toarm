	.text
	.p2align	4, 0x90                         # -- Begin function t7
t7:                                     # @t7
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movl	$68, -16(%rbp)
	movl	-16(%rbp), %esi
	movl	$68, %edi
	callq	expect@PLT
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym t7
	.addrsig_sym expect