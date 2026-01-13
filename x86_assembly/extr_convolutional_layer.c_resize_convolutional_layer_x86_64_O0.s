	.text
	.globl	resize_convolutional_layer      # -- Begin function resize_convolutional_layer
	.p2align	4, 0x90
resize_convolutional_layer:             # @resize_convolutional_layer
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	-12(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, (%rax)
	movl	-16(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 4(%rax)
	movq	-8(%rbp), %rcx
	movups	96(%rcx), %xmm0
	movq	%rsp, %rax
	movups	%xmm0, 96(%rax)
	movups	80(%rcx), %xmm0
	movups	%xmm0, 80(%rax)
	movups	64(%rcx), %xmm0
	movups	%xmm0, 64(%rax)
	movups	(%rcx), %xmm0
	movups	16(%rcx), %xmm1
	movups	32(%rcx), %xmm2
	movups	48(%rcx), %xmm3
	movups	%xmm3, 48(%rax)
	movups	%xmm2, 32(%rax)
	movups	%xmm1, 16(%rax)
	movups	%xmm0, (%rax)
	callq	convolutional_out_width@PLT
	movl	%eax, -20(%rbp)
	movq	-8(%rbp), %rcx
	movups	96(%rcx), %xmm0
	movq	%rsp, %rax
	movups	%xmm0, 96(%rax)
	movups	80(%rcx), %xmm0
	movups	%xmm0, 80(%rax)
	movups	64(%rcx), %xmm0
	movups	%xmm0, 64(%rax)
	movups	(%rcx), %xmm0
	movups	16(%rcx), %xmm1
	movups	32(%rcx), %xmm2
	movups	48(%rcx), %xmm3
	movups	%xmm3, 48(%rax)
	movups	%xmm2, 32(%rax)
	movups	%xmm1, 16(%rax)
	movups	%xmm0, (%rax)
	callq	convolutional_out_height@PLT
	movl	%eax, -24(%rbp)
	movl	-20(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 8(%rax)
	movl	-24(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 12(%rax)
	movq	-8(%rbp), %rax
	movl	12(%rax), %ecx
	movq	-8(%rbp), %rax
	imull	8(%rax), %ecx
	movq	-8(%rbp), %rax
	imull	20(%rax), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 16(%rax)
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	movq	-8(%rbp), %rax
	imull	4(%rax), %ecx
	movq	-8(%rbp), %rax
	imull	28(%rax), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 24(%rax)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdi
	movq	-8(%rbp), %rax
	movl	32(%rax), %eax
	movq	-8(%rbp), %rcx
	imull	16(%rcx), %eax
	cltq
	shlq	$2, %rax
	movl	%eax, %esi
	callq	realloc@PLT
	movq	%rax, %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, 40(%rax)
	movq	-8(%rbp), %rax
	movq	80(%rax), %rdi
	movq	-8(%rbp), %rax
	movl	32(%rax), %eax
	movq	-8(%rbp), %rcx
	imull	16(%rcx), %eax
	cltq
	shlq	$2, %rax
	movl	%eax, %esi
	callq	realloc@PLT
	movq	%rax, %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, 80(%rax)
	movq	-8(%rbp), %rax
	cmpq	$0, 64(%rax)
	je	.LBB0_2
# %bb.1:
	movq	-8(%rbp), %rax
	movq	104(%rax), %rdi
	movq	-8(%rbp), %rax
	movl	32(%rax), %eax
	movq	-8(%rbp), %rcx
	imull	16(%rcx), %eax
	cltq
	shlq	$2, %rax
	movl	%eax, %esi
	callq	realloc@PLT
	movq	%rax, %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, 104(%rax)
	movq	-8(%rbp), %rax
	movq	96(%rax), %rdi
	movq	-8(%rbp), %rax
	movl	32(%rax), %eax
	movq	-8(%rbp), %rcx
	imull	16(%rcx), %eax
	cltq
	shlq	$2, %rax
	movl	%eax, %esi
	callq	realloc@PLT
	movq	%rax, %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, 96(%rax)
.LBB0_2:
	movq	-8(%rbp), %rcx
	movups	96(%rcx), %xmm0
	movq	%rsp, %rax
	movups	%xmm0, 96(%rax)
	movups	80(%rcx), %xmm0
	movups	%xmm0, 80(%rax)
	movups	64(%rcx), %xmm0
	movups	%xmm0, 64(%rax)
	movups	(%rcx), %xmm0
	movups	16(%rcx), %xmm1
	movups	32(%rcx), %xmm2
	movups	48(%rcx), %xmm3
	movups	%xmm3, 48(%rax)
	movups	%xmm2, 32(%rax)
	movups	%xmm1, 16(%rax)
	movups	%xmm0, (%rax)
	callq	get_workspace_size@PLT
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 36(%rax)
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym convolutional_out_width
	.addrsig_sym convolutional_out_height
	.addrsig_sym realloc
	.addrsig_sym get_workspace_size