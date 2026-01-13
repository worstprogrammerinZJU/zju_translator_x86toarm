	.text
	.globl	network_accuracy_multi          # -- Begin function network_accuracy_multi
	.p2align	4, 0x90
network_accuracy_multi:                 # @network_accuracy_multi
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%esi, -8(%rbp)
	movq	%rdi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %edx
	movl	-8(%rbp), %esi
	callq	network_predict_data_multi@PLT
	movl	%eax, -24(%rbp)
	movl	-8(%rbp), %edi
	movl	-24(%rbp), %esi
	movl	$1, %edx
	callq	matrix_topk_accuracy@PLT
	movss	%xmm0, -28(%rbp)
	movl	-24(%rbp), %edi
	callq	free_matrix@PLT
	movss	-28(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym network_predict_data_multi
	.addrsig_sym matrix_topk_accuracy
	.addrsig_sym free_matrix