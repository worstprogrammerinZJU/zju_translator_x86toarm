	.text
	.globl	resize_maxpool_layer            # -- Begin function resize_maxpool_layer
	.p2align	4, 0x90
resize_maxpool_layer:                   # @resize_maxpool_layer
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	-16(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, (%rax)
	movl	-12(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 4(%rax)
	movl	-16(%rbp), %ecx
	imull	-12(%rbp), %ecx
	movq	-8(%rbp), %rax
	imull	12(%rax), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 8(%rax)
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	addl	20(%rcx), %eax
	movq	-8(%rbp), %rcx
	subl	24(%rcx), %eax
	movq	-8(%rbp), %rcx
	cltd
	idivl	28(%rcx)
	movl	%eax, %ecx
	addl	$1, %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 16(%rax)
	movl	-16(%rbp), %eax
	movq	-8(%rbp), %rcx
	addl	20(%rcx), %eax
	movq	-8(%rbp), %rcx
	subl	24(%rcx), %eax
	movq	-8(%rbp), %rcx
	cltd
	idivl	28(%rcx)
	movl	%eax, %ecx
	addl	$1, %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 32(%rax)
	movq	-8(%rbp), %rax
	movl	16(%rax), %ecx
	movq	-8(%rbp), %rax
	imull	32(%rax), %ecx
	movq	-8(%rbp), %rax
	imull	12(%rax), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 36(%rax)
	movq	-8(%rbp), %rax
	movl	36(%rax), %eax
	movq	-8(%rbp), %rcx
	imull	40(%rcx), %eax
	movl	%eax, -20(%rbp)
	movq	-8(%rbp), %rax
	movq	88(%rax), %rdi
	movslq	-20(%rbp), %rax
	shlq	$2, %rax
	movl	%eax, %esi
	callq	realloc@PLT
	movq	%rax, %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, 88(%rax)
	movq	-8(%rbp), %rax
	movq	72(%rax), %rdi
	movslq	-20(%rbp), %rax
	shlq	$2, %rax
	movl	%eax, %esi
	callq	realloc@PLT
	movq	%rax, %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, 72(%rax)
	movq	-8(%rbp), %rax
	movq	64(%rax), %rdi
	movslq	-20(%rbp), %rax
	shlq	$2, %rax
	movl	%eax, %esi
	callq	realloc@PLT
	movq	%rax, %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, 64(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym realloc