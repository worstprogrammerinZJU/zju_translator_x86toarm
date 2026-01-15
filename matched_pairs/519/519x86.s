	.text
	.globl	get_labels                      # -- Begin function get_labels
	.p2align	4, 0x90
get_labels:                             # @get_labels
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	get_paths@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	list_to_array@PLT
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	free_list@PLT
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym get_paths
	.addrsig_sym list_to_array
	.addrsig_sym free_list