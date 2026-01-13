	.text
	.globl	resize_deconvolutional_layer    # -- Begin function resize_deconvolutional_layer
	.p2align	4, 0x90
resize_deconvolutional_layer:           # @resize_deconvolutional_layer
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	-12(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, (%rax)
	movl	-16(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 4(%rax)
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	subl	$1, %ecx
	movq	-8(%rbp), %rax
	imull	12(%rax), %ecx
	movq	-8(%rbp), %rax
	addl	16(%rax), %ecx
	movq	-8(%rbp), %rax
	movl	20(%rax), %eax
	shll	$1, %eax
	subl	%eax, %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 8(%rax)
	movq	-8(%rbp), %rax
	movl	4(%rax), %ecx
	subl	$1, %ecx
	movq	-8(%rbp), %rax
	imull	12(%rax), %ecx
	movq	-8(%rbp), %rax
	addl	16(%rax), %ecx
	movq	-8(%rbp), %rax
	movl	20(%rax), %eax
	shll	$1, %eax
	subl	%eax, %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 24(%rax)
	movq	-8(%rbp), %rax
	movl	8(%rax), %ecx
	movq	-8(%rbp), %rax
	imull	24(%rax), %ecx
	movq	-8(%rbp), %rax
	imull	32(%rax), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 28(%rax)
	movq	-8(%rbp), %rax
	movl	4(%rax), %ecx
	movq	-8(%rbp), %rax
	imull	(%rax), %ecx
	movq	-8(%rbp), %rax
	imull	40(%rax), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 36(%rax)
	movq	-8(%rbp), %rax
	movq	64(%rax), %rdi
	movq	-8(%rbp), %rax
	movl	44(%rax), %eax
	movq	-8(%rbp), %rcx
	imull	28(%rcx), %eax
	cltq
	shlq	$2, %rax
	movl	%eax, %esi
	callq	realloc@PLT
	movq	%rax, %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, 64(%rax)
	movq	-8(%rbp), %rax
	movq	104(%rax), %rdi
	movq	-8(%rbp), %rax
	movl	44(%rax), %eax
	movq	-8(%rbp), %rcx
	imull	28(%rcx), %eax
	cltq
	shlq	$2, %rax
	movl	%eax, %esi
	callq	realloc@PLT
	movq	%rax, %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, 104(%rax)
	movq	-8(%rbp), %rax
	cmpq	$0, 88(%rax)
	je	.LBB0_2
# %bb.1:
	movq	-8(%rbp), %rax
	movq	128(%rax), %rdi
	movq	-8(%rbp), %rax
	movl	44(%rax), %eax
	movq	-8(%rbp), %rcx
	imull	28(%rcx), %eax
	cltq
	shlq	$2, %rax
	movl	%eax, %esi
	callq	realloc@PLT
	movq	%rax, %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, 128(%rax)
	movq	-8(%rbp), %rax
	movq	120(%rax), %rdi
	movq	-8(%rbp), %rax
	movl	44(%rax), %eax
	movq	-8(%rbp), %rcx
	imull	28(%rcx), %eax
	cltq
	shlq	$2, %rax
	movl	%eax, %esi
	callq	realloc@PLT
	movq	%rax, %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, 120(%rax)
.LBB0_2:
	movq	-8(%rbp), %rsi
	movq	%rsp, %rdi
	movl	$17, %ecx
	rep;movsq (%rsi), %es:(%rdi)
	callq	get_workspace_size@PLT
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 48(%rax)
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	CUDNN_DATA_FLOAT
	.p2align	2
CUDNN_DATA_FLOAT:
	.long	0                               # 0x0
	.globl	CUDNN_TENSOR_NCHW
	.p2align	2
CUDNN_TENSOR_NCHW:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym realloc
	.addrsig_sym get_workspace_size