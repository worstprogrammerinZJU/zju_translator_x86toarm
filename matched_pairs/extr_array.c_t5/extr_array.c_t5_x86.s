	.text
	.p2align	4, 0x90                         # -- Begin function t5
t5:                                     # @t5
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movl	$1, -28(%rbp)
	movl	$2, -16(%rbp)
	leaq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movl	4(%rax), %esi
	movl	$1, %edi
	movb	$0, %al
	callq	expect@PLT
	movq	-40(%rbp), %rax
	movl	16(%rax), %esi
	movl	$2, %edi
	movb	$0, %al
	callq	expect@PLT
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym t5
	.addrsig_sym expect