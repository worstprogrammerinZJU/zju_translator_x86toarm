	.text
	.globl	resize_upsample_layer           # -- Begin function resize_upsample_layer
	.p2align	4, 0x90
resize_upsample_layer:                  # @resize_upsample_layer
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	-12(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, (%rax)
	movl	-16(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 4(%rax)
	movl	-12(%rbp), %ecx
	movq	-8(%rbp), %rax
	imull	12(%rax), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 8(%rax)
	movl	-16(%rbp), %ecx
	movq	-8(%rbp), %rax
	imull	12(%rax), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 16(%rax)
	movq	-8(%rbp), %rax
	cmpq	$0, 72(%rax)
	je	.LBB0_2
# %bb.1:
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	cltd
	idivl	12(%rcx)
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 8(%rax)
	movl	-16(%rbp), %eax
	movq	-8(%rbp), %rcx
	cltd
	idivl	12(%rcx)
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 16(%rax)
.LBB0_2:
	movq	-8(%rbp), %rax
	movl	8(%rax), %ecx
	movq	-8(%rbp), %rax
	imull	16(%rax), %ecx
	movq	-8(%rbp), %rax
	imull	24(%rax), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 20(%rax)
	movq	-8(%rbp), %rax
	movl	4(%rax), %ecx
	movq	-8(%rbp), %rax
	imull	(%rax), %ecx
	movq	-8(%rbp), %rax
	imull	32(%rax), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 28(%rax)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdi
	movq	-8(%rbp), %rax
	movl	20(%rax), %eax
	movq	-8(%rbp), %rcx
	imull	36(%rcx), %eax
	cltq
	shlq	$2, %rax
	movl	%eax, %esi
	callq	realloc@PLT
	movq	%rax, %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, 40(%rax)
	movq	-8(%rbp), %rax
	movq	56(%rax), %rdi
	movq	-8(%rbp), %rax
	movl	20(%rax), %eax
	movq	-8(%rbp), %rcx
	imull	36(%rcx), %eax
	cltq
	shlq	$2, %rax
	movl	%eax, %esi
	callq	realloc@PLT
	movq	%rax, %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, 56(%rax)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym realloc