	.text
	.globl	network_accuracy                # -- Begin function network_accuracy
	.p2align	4, 0x90
network_accuracy:                       # @network_accuracy
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%esi, -8(%rbp)
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movl	-8(%rbp), %esi
	callq	network_predict_data@PLT
	movl	%eax, -20(%rbp)
	movl	-8(%rbp), %edi
	movl	-20(%rbp), %esi
	movl	$1, %edx
	callq	matrix_topk_accuracy@PLT
	movss	%xmm0, -24(%rbp)
	movl	-20(%rbp), %edi
	callq	free_matrix@PLT
	movss	-24(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym network_predict_data
	.addrsig_sym matrix_topk_accuracy
	.addrsig_sym free_matrix