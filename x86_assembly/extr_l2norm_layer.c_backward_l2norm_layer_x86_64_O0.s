	.text
	.globl	backward_l2norm_layer           # -- Begin function backward_l2norm_layer
	.p2align	4, 0x90
backward_l2norm_layer:                  # @backward_l2norm_layer
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -32(%rbp)
	movl	%esi, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -8(%rbp)
	movl	%edx, -40(%rbp)
	movl	-16(%rbp), %edi
	imull	-12(%rbp), %edi
	movl	-8(%rbp), %edx
	movl	-40(%rbp), %r8d
	movl	$1, %r9d
	movl	%r9d, %esi
	movl	%r9d, %ecx
	callq	axpy_cpu@PLT
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym axpy_cpu