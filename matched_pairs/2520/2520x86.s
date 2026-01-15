	.text
	.p2align	4, 0x90                         # -- Begin function t2
t2:                                     # @t2
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$0, -8(%rbp)
	movb	$1, -7(%rbp)
	movl	-8(%rbp), %esi
	movl	$256, %edi                      # imm = 0x100
	callq	expect@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym t2
	.addrsig_sym expect