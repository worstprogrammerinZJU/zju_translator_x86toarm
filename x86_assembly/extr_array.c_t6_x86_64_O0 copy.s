	.text
	.p2align	4, 0x90                         # -- Begin function t6
t6:                                     # @t6
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	leaq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movl	$65, 16(%rax)
	leaq	-32(%rbp), %rsi
	movl	$65, %edi
	movb	$0, %al
	callq	t6a@PLT
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym t6
	.addrsig_sym t6a