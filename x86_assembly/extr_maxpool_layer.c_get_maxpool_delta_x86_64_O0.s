	.text
	.globl	get_maxpool_delta               # -- Begin function get_maxpool_delta
	.p2align	4, 0x90
get_maxpool_delta:                      # @get_maxpool_delta
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -8(%rbp)
	movl	-16(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, -24(%rbp)
	movl	-8(%rbp), %eax
	movl	%eax, -28(%rbp)
	movl	-24(%rbp), %edi
	movl	-20(%rbp), %esi
	movl	-28(%rbp), %edx
	movl	-4(%rbp), %ecx
	callq	float_to_image@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym float_to_image