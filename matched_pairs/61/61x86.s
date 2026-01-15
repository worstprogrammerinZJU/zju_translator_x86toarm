	.text
	.globl	backward_batchnorm_layer        # -- Begin function backward_batchnorm_layer
	.p2align	4, 0x90
backward_batchnorm_layer:               # @backward_batchnorm_layer
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	leaq	16(%rbp), %rax
	movq	%rax, -16(%rbp)                 # 8-byte Spill
	movq	%rdi, -8(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.LBB0_2
# %bb.1:
	movq	-16(%rbp), %rax                 # 8-byte Reload
	movl	76(%rax), %ecx
	movl	%ecx, 48(%rax)
	movl	72(%rax), %ecx
	movl	%ecx, 44(%rax)
.LBB0_2:
	movq	-16(%rbp), %rax                 # 8-byte Reload
	movl	68(%rax), %edi
	movl	28(%rax), %esi
	movl	(%rax), %edx
	movl	32(%rax), %ecx
	movl	4(%rax), %r8d
	imull	8(%rax), %r8d
	callq	backward_bias@PLT
                                        # kill: def $ecx killed $eax
	movq	-16(%rbp), %rax                 # 8-byte Reload
	movl	64(%rax), %edi
	movl	28(%rax), %esi
	movl	(%rax), %edx
	movl	32(%rax), %ecx
	movl	4(%rax), %r8d
	imull	8(%rax), %r8d
	movl	60(%rax), %r9d
	callq	backward_scale_cpu@PLT
                                        # kill: def $ecx killed $eax
	movq	-16(%rbp), %rax                 # 8-byte Reload
	movl	28(%rax), %edi
	movl	56(%rax), %esi
	movl	(%rax), %edx
	movl	32(%rax), %ecx
	movl	8(%rax), %r8d
	imull	4(%rax), %r8d
	callq	scale_bias@PLT
                                        # kill: def $ecx killed $eax
	movq	-16(%rbp), %rax                 # 8-byte Reload
	movl	28(%rax), %edi
	movl	44(%rax), %esi
	movl	(%rax), %edx
	movl	32(%rax), %ecx
	movl	4(%rax), %r8d
	imull	8(%rax), %r8d
	movl	40(%rax), %r9d
	callq	mean_delta_cpu@PLT
                                        # kill: def $ecx killed $eax
	movq	-16(%rbp), %rax                 # 8-byte Reload
	movl	52(%rax), %edi
	movl	28(%rax), %esi
	movl	48(%rax), %edx
	movl	44(%rax), %ecx
	movl	(%rax), %r8d
	movl	32(%rax), %r9d
	movl	4(%rax), %r10d
	imull	8(%rax), %r10d
	movl	36(%rax), %eax
	movl	%r10d, (%rsp)
	movl	%eax, 8(%rsp)
	callq	variance_delta_cpu@PLT
                                        # kill: def $ecx killed $eax
	movq	-16(%rbp), %rax                 # 8-byte Reload
	movl	52(%rax), %edi
	movl	48(%rax), %esi
	movl	44(%rax), %edx
	movl	40(%rax), %ecx
	movl	36(%rax), %r8d
	movl	(%rax), %r9d
	movl	32(%rax), %r11d
	movl	4(%rax), %r10d
	imull	8(%rax), %r10d
	movl	28(%rax), %eax
	movl	%r11d, (%rsp)
	movl	%r10d, 8(%rsp)
	movl	%eax, 16(%rsp)
	callq	normalize_delta_cpu@PLT
                                        # kill: def $ecx killed $eax
	movq	-16(%rbp), %rax                 # 8-byte Reload
	movq	16(%rax), %rax
	cmpq	BATCHNORM(%rip), %rax
	jne	.LBB0_4
# %bb.3:
	movq	-16(%rbp), %rax                 # 8-byte Reload
	movl	24(%rax), %edi
	imull	(%rax), %edi
	movl	28(%rax), %esi
	movl	-8(%rbp), %ecx
	movl	$1, %r8d
	movl	%r8d, %edx
	callq	copy_cpu@PLT
.LBB0_4:
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	BATCHNORM
	.p2align	3
BATCHNORM:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym backward_bias
	.addrsig_sym backward_scale_cpu
	.addrsig_sym scale_bias
	.addrsig_sym mean_delta_cpu
	.addrsig_sym variance_delta_cpu
	.addrsig_sym normalize_delta_cpu
	.addrsig_sym copy_cpu
	.addrsig_sym BATCHNORM