	.text
	.globl	get_base_args                   # -- Begin function get_base_args
	.p2align	4, 0x90
get_base_args:                          # @get_base_args
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)                 # 8-byte Spill
	movq	%rdi, %rax
	movq	%rax, -16(%rbp)                 # 8-byte Spill
	movq	%rsi, -8(%rbp)
	xorl	%esi, %esi
	movl	$48, %edx
	callq	memset@PLT
	movq	-24(%rbp), %rdi                 # 8-byte Reload
	movq	-16(%rbp), %rax                 # 8-byte Reload
	movq	-8(%rbp), %rcx
	movl	32(%rcx), %ecx
	movl	%ecx, 40(%rdi)
	movq	-8(%rbp), %rcx
	movl	36(%rcx), %ecx
	movl	%ecx, 36(%rdi)
	movq	-8(%rbp), %rcx
	movl	32(%rcx), %ecx
	movl	%ecx, 32(%rdi)
	movq	-8(%rbp), %rcx
	movl	28(%rcx), %ecx
	movl	%ecx, 28(%rdi)
	movq	-8(%rbp), %rcx
	movl	24(%rcx), %ecx
	movl	%ecx, 24(%rdi)
	movq	-8(%rbp), %rcx
	movl	20(%rcx), %ecx
	movl	%ecx, 20(%rdi)
	movq	-8(%rbp), %rcx
	movl	16(%rcx), %ecx
	movl	%ecx, 16(%rdi)
	movq	-8(%rbp), %rcx
	movl	12(%rcx), %ecx
	movl	%ecx, 12(%rdi)
	movq	-8(%rbp), %rcx
	movl	8(%rcx), %ecx
	movl	%ecx, 8(%rdi)
	movq	-8(%rbp), %rcx
	movl	4(%rcx), %ecx
	movl	%ecx, 4(%rdi)
	movq	-8(%rbp), %rcx
	movl	(%rcx), %ecx
	movl	%ecx, (%rdi)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig