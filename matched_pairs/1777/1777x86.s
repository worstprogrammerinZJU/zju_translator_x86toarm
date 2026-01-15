	.text
	.globl	top_predictions                 # -- Begin function top_predictions
	.p2align	4, 0x90
top_predictions:                        # @top_predictions
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movl	4(%rax), %edi
	movq	-8(%rbp), %rax
	movl	(%rax), %esi
	movl	-12(%rbp), %edx
	movq	-24(%rbp), %rcx
	callq	top_k@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym top_k