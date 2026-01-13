	.text
	.p2align	4, 0x90                         # -- Begin function t6
t6:                                     # @t6
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	leaq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	$69, (%rax)
	movl	-8(%rbp), %esi
	movl	$69, %edi
	movb	$0, %al
	callq	expect@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym t6
	.addrsig_sym expect