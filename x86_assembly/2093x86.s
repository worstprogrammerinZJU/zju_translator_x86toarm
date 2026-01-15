	.text
	.globl	resize_reorg_layer              # -- Begin function resize_reorg_layer
	.p2align	4, 0x90
resize_reorg_layer:                     # @resize_reorg_layer
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
	movq	-8(%rbp), %rax
	cmpq	$0, 72(%rax)
	je	.LBB0_2
# %bb.1:
	movl	-12(%rbp), %ecx
	imull	-20(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 16(%rax)
	movl	-16(%rbp), %ecx
	imull	-20(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 20(%rax)
	movl	-24(%rbp), %eax
	movl	-20(%rbp), %ecx
	imull	-20(%rbp), %ecx
	cltd
	idivl	%ecx
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 24(%rax)
	jmp	.LBB0_3
.LBB0_2:
	movl	-12(%rbp), %eax
	cltd
	idivl	-20(%rbp)
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 16(%rax)
	movl	-16(%rbp), %eax
	cltd
	idivl	-20(%rbp)
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 20(%rax)
	movl	-24(%rbp), %ecx
	movl	-20(%rbp), %eax
	imull	-20(%rbp), %eax
	imull	%eax, %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 24(%rax)
.LBB0_3:
	movq	-8(%rbp), %rax
	movl	20(%rax), %ecx
	movq	-8(%rbp), %rax
	imull	16(%rax), %ecx
	movq	-8(%rbp), %rax
	imull	24(%rax), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 28(%rax)
	movq	-8(%rbp), %rax
	movl	28(%rax), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 32(%rax)
	movq	-8(%rbp), %rax
	movl	28(%rax), %eax
	movq	-8(%rbp), %rcx
	imull	36(%rcx), %eax
	movl	%eax, -28(%rbp)
	movq	-8(%rbp), %rax
	movq	56(%rax), %rdi
	movslq	-28(%rbp), %rax
	shlq	$2, %rax
	movl	%eax, %esi
	callq	realloc@PLT
	movq	%rax, %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, 56(%rax)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdi
	movslq	-28(%rbp), %rax
	shlq	$2, %rax
	movl	%eax, %esi
	callq	realloc@PLT
	movq	%rax, %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, 40(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym realloc