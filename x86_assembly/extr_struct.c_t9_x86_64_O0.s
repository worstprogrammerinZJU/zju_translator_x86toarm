	.text
	.p2align	4, 0x90                         # -- Begin function t9
t9:                                     # @t9
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	$73, -24(%rbp)
	movl	-24(%rbp), %esi
	movl	$73, %edi
	callq	expect@PLT
	movl	$74, -8(%rbp)
	movl	-8(%rbp), %esi
	movl	$74, %edi
	callq	expect@PLT
	movl	-8(%rbp), %esi
	movl	$74, %edi
	callq	expect@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym t9
	.addrsig_sym expect