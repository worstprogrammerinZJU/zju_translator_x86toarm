	.text
	.p2align	4, 0x90                         # -- Begin function defined
defined:                                # @defined
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$0, -4(%rbp)
	movl	-4(%rbp), %esi
	movl	$1, %edi
	callq	expect@PLT
	movl	-4(%rbp), %esi
	movl	$2, %edi
	callq	expect@PLT
	movl	$4, -4(%rbp)
	movl	-4(%rbp), %esi
	movl	$4, %edi
	callq	expect@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym defined
	.addrsig_sym expect