	.text
	.globl	resize_avgpool_layer            # -- Begin function resize_avgpool_layer
	.p2align	4, 0x90
resize_avgpool_layer:                   # @resize_avgpool_layer
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	-12(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, (%rax)
	movl	-16(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 4(%rax)
	movl	-16(%rbp), %ecx
	imull	-12(%rbp), %ecx
	movq	-8(%rbp), %rax
	imull	12(%rax), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 8(%rax)
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig