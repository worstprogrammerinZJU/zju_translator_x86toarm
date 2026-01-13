	.text
	.p2align	4, 0x90                         # -- Begin function t12
t12:                                    # @t12
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movl	$83, -32(%rbp)
	movl	-32(%rbp), %esi
	movl	$83, %edi
	callq	expect@PLT
	movl	$84, -28(%rbp)
	movl	-28(%rbp), %esi
	movl	$84, %edi
	callq	expect@PLT
	movl	$85, -20(%rbp)
	movl	-20(%rbp), %esi
	movl	$85, %edi
	callq	expect@PLT
	leaq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movl	12(%rax), %esi
	movl	$85, %edi
	callq	expect@PLT
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym t12
	.addrsig_sym expect