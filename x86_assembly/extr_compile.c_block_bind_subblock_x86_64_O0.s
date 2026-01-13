	.text
	.p2align	4, 0x90                         # -- Begin function block_bind_subblock
block_bind_subblock:                    # @block_bind_subblock
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	%ecx, -16(%rbp)
	movl	-4(%rbp), %esi
	movl	-8(%rbp), %edx
	movl	-12(%rbp), %ecx
	movl	-16(%rbp), %r8d
	leaq	-20(%rbp), %rdi
	callq	block_bind_subblock_inner@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym block_bind_subblock
	.addrsig_sym block_bind_subblock_inner