	.text
	.p2align	4, 0x90                         # -- Begin function t2
t2:                                     # @t2
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	leaq	-32(%rbp), %rax
	addq	$12, %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movl	$1, (%rax)
	leaq	-32(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movl	$32, (%rax)
	movq	-48(%rbp), %rax
	movl	12(%rax), %esi
	movl	$32, %edi
	movb	$0, %al
	callq	expect@PLT
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym t2
	.addrsig_sym expect