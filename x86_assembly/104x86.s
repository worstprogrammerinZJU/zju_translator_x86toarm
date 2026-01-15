	.text
	.globl	box_rmse                        # -- Begin function box_rmse
	.p2align	4, 0x90
box_rmse:                               # @box_rmse
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	leaq	48(%rbp), %rax
	movq	%rax, -16(%rbp)                 # 8-byte Spill
	leaq	16(%rbp), %rcx
	movq	%rcx, -24(%rbp)                 # 8-byte Spill
	movq	24(%rcx), %rdi
	subq	24(%rax), %rdi
	movl	$2, %esi
	callq	pow@PLT
	movq	-24(%rbp), %rcx                 # 8-byte Reload
	movq	%rax, %rdx
	movq	-16(%rbp), %rax                 # 8-byte Reload
	movq	%rdx, -40(%rbp)                 # 8-byte Spill
	movq	16(%rcx), %rdi
	subq	16(%rax), %rdi
	movl	$2, %esi
	callq	pow@PLT
	movq	-40(%rbp), %rdx                 # 8-byte Reload
	movq	-24(%rbp), %rcx                 # 8-byte Reload
	movq	%rax, %rsi
	movq	-16(%rbp), %rax                 # 8-byte Reload
	addq	%rsi, %rdx
	movq	%rdx, -32(%rbp)                 # 8-byte Spill
	movq	8(%rcx), %rdi
	subq	8(%rax), %rdi
	movl	$2, %esi
	callq	pow@PLT
	movq	-32(%rbp), %rdx                 # 8-byte Reload
	movq	-24(%rbp), %rcx                 # 8-byte Reload
	movq	%rax, %rsi
	movq	-16(%rbp), %rax                 # 8-byte Reload
	addq	%rsi, %rdx
	movq	%rdx, -8(%rbp)                  # 8-byte Spill
	movq	(%rcx), %rdi
	subq	(%rax), %rdi
	movl	$2, %esi
	callq	pow@PLT
	movq	-8(%rbp), %rdi                  # 8-byte Reload
	addq	%rax, %rdi
	callq	sqrt@PLT
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym sqrt
	.addrsig_sym pow