	.text
	.p2align	4, 0x90                         # -- Begin function exit_process
exit_process:                           # @exit_process
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	callq	UNUSED_PARAMETER@PLT
	xorl	%edi, %edi
	callq	exit@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym exit_process
	.addrsig_sym UNUSED_PARAMETER
	.addrsig_sym exit