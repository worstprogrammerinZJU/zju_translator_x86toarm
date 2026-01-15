	.text
	.globl	forward_activation_layer        # -- Begin function forward_activation_layer
	.p2align	4, 0x90
forward_activation_layer:               # @forward_activation_layer
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -8(%rbp)
	movl	%edx, -24(%rbp)
	movl	-16(%rbp), %edi
	imull	-12(%rbp), %edi
	movl	-24(%rbp), %esi
	movl	-4(%rbp), %ecx
	movl	$1, %r8d
	movl	%r8d, %edx
	callq	copy_cpu@PLT
	movl	-4(%rbp), %edi
	movl	-16(%rbp), %esi
	imull	-12(%rbp), %esi
	movl	-8(%rbp), %edx
	callq	activate_array@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym copy_cpu
	.addrsig_sym activate_array