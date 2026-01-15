	.text
	.p2align	4, 0x90                         # -- Begin function t7
t7:                                     # @t7
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	leaq	-4(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -16(%rbp)
	leaq	-4(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	subq	%rcx, %rax
	sarq	$2, %rax
	movl	%eax, %esi
	xorl	%edi, %edi
	callq	expect@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym t7
	.addrsig_sym expect