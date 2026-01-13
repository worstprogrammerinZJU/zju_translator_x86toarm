	.text
	.p2align	4, 0x90                         # -- Begin function t5
t5:                                     # @t5
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	leaq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	movl	$68, -8(%rbp)
	movq	-16(%rbp), %rax
	movl	(%rax), %esi
	movl	$68, %edi
	movb	$0, %al
	callq	expect@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym t5
	.addrsig_sym expect