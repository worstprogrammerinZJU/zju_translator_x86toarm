	.text
	.p2align	4, 0x90                         # -- Begin function t3
t3:                                     # @t3
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	%ecx, -16(%rbp)
	movl	%r8d, -20(%rbp)
	movl	%r9d, -24(%rbp)
	movl	-4(%rbp), %esi
	movl	$1, %edi
	callq	expect@PLT
	movl	-8(%rbp), %esi
	movl	$2, %edi
	callq	expect@PLT
	movl	-12(%rbp), %esi
	movl	$3, %edi
	callq	expect@PLT
	movl	-16(%rbp), %esi
	movl	$4, %edi
	callq	expect@PLT
	movl	-20(%rbp), %esi
	movl	$5, %edi
	callq	expect@PLT
	movl	-24(%rbp), %esi
	movl	$6, %edi
	callq	expect@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym t3
	.addrsig_sym expect