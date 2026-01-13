	.text
	.globl	mean_array                      # -- Begin function mean_array
	.p2align	4, 0x90
mean_array:                             # @mean_array
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	sum_array@PLT
	cltd
	idivl	-12(%rbp)
	cvtsi2ss	%eax, %xmm0
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym sum_array