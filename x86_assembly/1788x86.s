	.text
	.globl	resize_normalization_layer      # -- Begin function resize_normalization_layer
	.p2align	4, 0x90
resize_normalization_layer:             # @resize_normalization_layer
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -20(%rbp)
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, -24(%rbp)
	movl	-16(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 8(%rax)
	movl	-12(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 12(%rax)
	movl	-16(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 16(%rax)
	movl	-12(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 20(%rax)
	movl	-12(%rbp), %ecx
	imull	-16(%rbp), %ecx
	imull	-20(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 24(%rax)
	movq	-8(%rbp), %rax
	movl	24(%rax), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 28(%rax)
	movq	-8(%rbp), %rax
	movq	80(%rax), %rdi
	movl	-16(%rbp), %eax
	imull	-12(%rbp), %eax
	imull	-20(%rbp), %eax
	imull	-24(%rbp), %eax
	cltq
	shlq	$2, %rax
	movl	%eax, %esi
	callq	realloc@PLT
	movq	%rax, %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, 80(%rax)
	movq	-8(%rbp), %rax
	movq	64(%rax), %rdi
	movl	-16(%rbp), %eax
	imull	-12(%rbp), %eax
	imull	-20(%rbp), %eax
	imull	-24(%rbp), %eax
	cltq
	shlq	$2, %rax
	movl	%eax, %esi
	callq	realloc@PLT
	movq	%rax, %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, 64(%rax)
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	movl	-16(%rbp), %eax
	imull	-12(%rbp), %eax
	imull	-20(%rbp), %eax
	imull	-24(%rbp), %eax
	cltq
	shlq	$2, %rax
	movl	%eax, %esi
	callq	realloc@PLT
	movq	%rax, %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, 48(%rax)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	movl	-16(%rbp), %eax
	imull	-12(%rbp), %eax
	imull	-20(%rbp), %eax
	imull	-24(%rbp), %eax
	cltq
	shlq	$2, %rax
	movl	%eax, %esi
	callq	realloc@PLT
	movq	%rax, %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, 32(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym realloc