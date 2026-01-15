	.text
	.p2align	4, 0x90                         # -- Begin function flexible_member
flexible_member:                        # @flexible_member
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	$4, %edi
	movl	$4, %esi
	movb	$0, %al
	callq	expect@PLT
	movl	$4, %edi
	movl	$4, %esi
	movb	$0, %al
	callq	expect@PLT
	xorl	%edi, %edi
	xorl	%eax, %eax
	movl	%eax, %esi
	movb	$0, %al
	callq	expect@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym flexible_member
	.addrsig_sym expect