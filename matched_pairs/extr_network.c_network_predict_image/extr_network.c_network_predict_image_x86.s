	.text
	.globl	network_predict_image           # -- Begin function network_predict_image
	.p2align	4, 0x90
network_predict_image:                  # @network_predict_image
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%esi, -8(%rbp)
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	4(%rax), %esi
	movq	-16(%rbp), %rax
	movl	(%rax), %edx
	movl	-8(%rbp), %edi
	callq	letterbox_image@PLT
	movl	%eax, -24(%rbp)
	movq	-16(%rbp), %rdi
	movl	$1, %esi
	callq	set_batch_network@PLT
	movq	-16(%rbp), %rdi
	movl	-24(%rbp), %esi
	callq	network_predict@PLT
	movq	%rax, -32(%rbp)
	movl	-24(%rbp), %edi
	callq	free_image@PLT
	movq	-32(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym letterbox_image
	.addrsig_sym set_batch_network
	.addrsig_sym network_predict
	.addrsig_sym free_image