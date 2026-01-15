	.text
	.p2align	4, 0x90                         # -- Begin function arrow
arrow:                                  # @arrow
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	.L__const.arrow.v1(%rip), %rax
	movq	%rax, -16(%rbp)
	movq	.L__const.arrow.v1+8(%rip), %rax
	movq	%rax, -8(%rbp)
	movl	$6, -32(%rbp)
	leaq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	movl	$7, -48(%rbp)
	leaq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	leaq	-48(%rbp), %rax
	movq	%rax, -56(%rbp)
	movl	-48(%rbp), %esi
	movl	$7, %edi
	callq	expect@PLT
	movq	-56(%rbp), %rax
	movl	(%rax), %esi
	movl	$7, %edi
	callq	expect@PLT
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %esi
	movl	$6, %edi
	callq	expect@PLT
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movl	(%rax), %esi
	movl	$5, %edi
	callq	expect@PLT
	movq	-56(%rbp), %rax
	movl	$10, (%rax)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movl	$11, (%rax)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movl	$12, (%rax)
	movq	-56(%rbp), %rax
	movl	(%rax), %esi
	movl	$10, %edi
	callq	expect@PLT
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %esi
	movl	$11, %edi
	callq	expect@PLT
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movl	(%rax), %esi
	movl	$12, %edi
	callq	expect@PLT
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	3
.L__const.arrow.v1:
	.long	5                               # 0x5
	.zero	4
	.quad	0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym arrow
	.addrsig_sym expect