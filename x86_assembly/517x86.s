	.text
	.globl	free_data                       # -- Begin function free_data
	.p2align	4, 0x90
free_data:                              # @free_data
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -32(%rbp)
	movl	%esi, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -8(%rbp)
	cmpl	$0, -8(%rbp)
	jne	.LBB0_2
# %bb.1:
	movl	-12(%rbp), %edi
	callq	free_matrix@PLT
	movl	-16(%rbp), %edi
	callq	free_matrix@PLT
	jmp	.LBB0_3
.LBB0_2:
	movl	-12(%rbp), %edi
	callq	free@PLT
	movl	-16(%rbp), %edi
	callq	free@PLT
.LBB0_3:
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym free_matrix
	.addrsig_sym free