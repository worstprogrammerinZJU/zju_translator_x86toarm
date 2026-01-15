	.text
	.p2align	4, 0x90                         # -- Begin function t7
t7:                                     # @t7
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	leaq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	movl	$71, -4(%rbp)
	movq	-16(%rbp), %rax
	movl	4(%rax), %esi
	movl	$71, %edi
	movb	$0, %al
	callq	expect@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym t7
	.addrsig_sym expect