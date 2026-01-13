	.text
	.globl	get_predicted_class_network     # -- Begin function get_predicted_class_network
	.p2align	4, 0x90
get_predicted_class_network:            # @get_predicted_class_network
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	4(%rax), %edi
	movq	-8(%rbp), %rax
	movl	(%rax), %esi
	callq	max_index@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym max_index