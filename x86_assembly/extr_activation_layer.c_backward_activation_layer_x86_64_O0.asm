	.text
	.globl	backward_activation_layer       # -- Begin function backward_activation_layer
	.p2align	4, 0x90
backward_activation_layer:              # @backward_activation_layer
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	leaq	16(%rbp), %rax
	movq	%rax, -16(%rbp)                 # 8-byte Spill
	movl	%edi, -8(%rbp)
	movl	16(%rax), %edi
	movl	(%rax), %esi
	imull	4(%rax), %esi
	movl	12(%rax), %edx
	movl	8(%rax), %ecx
	callq	gradient_array@PLT
                                        # kill: def $ecx killed $eax
	movq	-16(%rbp), %rax                 # 8-byte Reload
	movl	(%rax), %edi
	imull	4(%rax), %edi
	movl	8(%rax), %esi
	movl	-8(%rbp), %ecx
	movl	$1, %r8d
	movl	%r8d, %edx
	callq	copy_cpu@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym gradient_array
	.addrsig_sym copy_cpu