	.text
	.p2align	4, 0x90                         # -- Begin function t1
t1:                                     # @t1
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$90, -8(%rbp)
	movl	-8(%rbp), %esi
	movl	$90, %edi
	callq	expect@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym t1
	.addrsig_sym expect