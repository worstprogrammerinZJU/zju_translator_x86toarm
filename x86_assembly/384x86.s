	.text
	.globl	backward_cost_layer             # -- Begin function backward_cost_layer
	.p2align	4, 0x90
backward_cost_layer:                    # @backward_cost_layer
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -8(%rbp)
	movl	%edx, -24(%rbp)
	movl	-16(%rbp), %edi
	imull	-12(%rbp), %edi
	movl	-4(%rbp), %esi
	movl	-8(%rbp), %edx
	movl	-24(%rbp), %r8d
	movl	$1, %r9d
	movl	%r9d, %ecx
	callq	axpy_cpu@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym axpy_cpu