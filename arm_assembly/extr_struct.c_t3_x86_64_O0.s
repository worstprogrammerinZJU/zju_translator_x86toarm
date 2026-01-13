	.text
	.p2align	4, 0x90                         # -- Begin function t3
t3:                                     # @t3
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$61, -16(%rbp)
	movb	$3, -12(%rbp)
	movl	$3, -8(%rbp)
	movl	-16(%rbp), %esi
	movsbl	-12(%rbp), %eax
	addl	%eax, %esi
	addl	-8(%rbp), %esi
	movl	$67, %edi
	callq	expect@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym t3
	.addrsig_sym expect