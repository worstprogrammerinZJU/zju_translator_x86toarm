	.text
	.p2align	4, 0x90                         # -- Begin function block_bind
block_bind:                             # @block_bind
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	-4(%rbp), %edi
	movl	-8(%rbp), %esi
	movl	-12(%rbp), %edx
	callq	block_bind_each@PLT
	movl	-4(%rbp), %edi
	movl	-8(%rbp), %esi
	callq	block_join@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym block_bind
	.addrsig_sym block_bind_each
	.addrsig_sym block_join