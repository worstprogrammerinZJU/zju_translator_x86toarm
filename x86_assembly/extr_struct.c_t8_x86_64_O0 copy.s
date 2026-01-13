	.text
	.p2align	4, 0x90                         # -- Begin function t8
t8:                                     # @t8
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	leaq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	$72, 4(%rax)
	movl	-4(%rbp), %esi
	movl	$72, %edi
	movb	$0, %al
	callq	expect@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym t8
	.addrsig_sym expect