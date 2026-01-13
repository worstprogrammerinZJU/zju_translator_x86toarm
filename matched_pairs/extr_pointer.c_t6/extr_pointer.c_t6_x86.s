	.text
	.p2align	4, 0x90                         # -- Begin function t6
t6:                                     # @t6
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	.L__const.t6.node1(%rip), %rax
	movq	%rax, -16(%rbp)
	movq	.L__const.t6.node1+8(%rip), %rax
	movq	%rax, -8(%rbp)
	movl	$2, -32(%rbp)
	leaq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	movl	$3, -48(%rbp)
	leaq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	leaq	-48(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movl	(%rax), %esi
	movl	$3, %edi
	callq	expect@PLT
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %esi
	movl	$2, %edi
	callq	expect@PLT
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movl	(%rax), %esi
	movl	$1, %edi
	callq	expect@PLT
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, 8(%rax)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %esi
	movl	$1, %edi
	callq	expect@PLT
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	3
.L__const.t6.node1:
	.long	1                               # 0x1
	.zero	4
	.quad	0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym t6
	.addrsig_sym expect