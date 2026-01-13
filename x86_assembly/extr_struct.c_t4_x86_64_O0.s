	.text
	.p2align	4, 0x90                         # -- Begin function t4
t4:                                     # @t4
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	$61, -32(%rbp)
	movb	$3, -28(%rbp)
	movl	$3, -24(%rbp)
	movl	-32(%rbp), %esi
	movsbl	-28(%rbp), %eax
	addl	%eax, %esi
	addl	-24(%rbp), %esi
	movl	$67, %edi
	callq	expect@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym t4
	.addrsig_sym expect