	.text
	.globl	network_accuracies              # -- Begin function network_accuracies
	.p2align	4, 0x90
network_accuracies:                     # @network_accuracies
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%esi, -8(%rbp)
	movq	%rdi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-16(%rbp), %rdi
	movl	-8(%rbp), %esi
	callq	network_predict_data@PLT
	movl	%eax, -24(%rbp)
	movl	-8(%rbp), %edi
	movl	-24(%rbp), %esi
	movl	$1, %edx
	callq	matrix_topk_accuracy@PLT
	movss	%xmm0, network_accuracies.acc(%rip)
	movl	-8(%rbp), %edi
	movl	-24(%rbp), %esi
	movl	-20(%rbp), %edx
	callq	matrix_topk_accuracy@PLT
	movss	%xmm0, network_accuracies.acc+4(%rip)
	movl	-24(%rbp), %edi
	callq	free_matrix@PLT
	leaq	network_accuracies.acc(%rip), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.local	network_accuracies.acc
	.comm	network_accuracies.acc,8,4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym network_predict_data
	.addrsig_sym matrix_topk_accuracy
	.addrsig_sym free_matrix
	.addrsig_sym network_accuracies.acc