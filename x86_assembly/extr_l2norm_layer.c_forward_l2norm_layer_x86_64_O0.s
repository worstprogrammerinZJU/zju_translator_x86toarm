	.text
	.globl	forward_l2norm_layer            # -- Begin function forward_l2norm_layer
	.p2align	4, 0x90
forward_l2norm_layer:                   # @forward_l2norm_layer
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	leaq	16(%rbp), %rax
	movq	%rax, -16(%rbp)                 # 8-byte Spill
	movl	%edi, -8(%rbp)
	movl	(%rax), %edi
	imull	4(%rax), %edi
	movl	-8(%rbp), %esi
	movl	24(%rax), %ecx
	movl	$1, %r8d
	movl	%r8d, %edx
	callq	copy_cpu@PLT
                                        # kill: def $ecx killed $eax
	movq	-16(%rbp), %rax                 # 8-byte Reload
	movl	24(%rax), %edi
	movl	20(%rax), %esi
	movl	4(%rax), %edx
	movl	16(%rax), %ecx
	movl	8(%rax), %r8d
	imull	12(%rax), %r8d
	callq	l2normalize_cpu@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym copy_cpu
	.addrsig_sym l2normalize_cpu