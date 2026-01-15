	.text
	.globl	backward_normalization_layer    # -- Begin function backward_normalization_layer
	.p2align	4, 0x90
backward_normalization_layer:           # @backward_normalization_layer
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	leaq	16(%rbp), %rax
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	movl	%edi, -8(%rbp)
	movl	(%rax), %ecx
	movl	%ecx, -12(%rbp)
	movl	4(%rax), %ecx
	movl	%ecx, -16(%rbp)
	movl	8(%rax), %ecx
	movl	%ecx, -20(%rbp)
	movl	-12(%rbp), %edi
	imull	-16(%rbp), %edi
	imull	-20(%rbp), %edi
	imull	12(%rax), %edi
	xorl	%esi, %esi
	subl	24(%rax), %esi
	movl	20(%rax), %edx
	movl	-8(%rbp), %r8d
	movl	$1, %r9d
	movl	%r9d, %ecx
	callq	pow_cpu@PLT
                                        # kill: def $ecx killed $eax
	movq	-32(%rbp), %rax                 # 8-byte Reload
	movl	-12(%rbp), %edi
	imull	-16(%rbp), %edi
	imull	-20(%rbp), %edi
	imull	12(%rax), %edi
	movl	16(%rax), %esi
	movl	-8(%rbp), %ecx
	movl	$1, %r8d
	movl	%r8d, %edx
	callq	mul_cpu@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym pow_cpu
	.addrsig_sym mul_cpu