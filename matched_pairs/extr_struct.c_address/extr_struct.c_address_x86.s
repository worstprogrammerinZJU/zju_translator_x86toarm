	.text
	.p2align	4, 0x90                         # -- Begin function address
address:                                # @address
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	.L__const.address.x(%rip), %rax
	movq	%rax, -8(%rbp)
	leaq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	leaq	-8(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movl	(%rax), %esi
	movl	$6, %edi
	movb	$0, %al
	callq	expect@PLT
	movq	-24(%rbp), %rax
	movl	(%rax), %esi
	movl	$7, %edi
	movb	$0, %al
	callq	expect@PLT
	movl	-8(%rbp), %esi
	movl	$6, %edi
	movb	$0, %al
	callq	expect@PLT
	movl	-4(%rbp), %esi
	movl	$7, %edi
	movb	$0, %al
	callq	expect@PLT
	leaq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movl	(%rax), %esi
	movl	$6, %edi
	movb	$0, %al
	callq	expect@PLT
	movq	-48(%rbp), %rax
	movl	(%rax), %esi
	movl	$7, %edi
	movb	$0, %al
	callq	expect@PLT
	movq	-32(%rbp), %rax
	movl	(%rax), %esi
	movl	$6, %edi
	movb	$0, %al
	callq	expect@PLT
	movq	-32(%rbp), %rax
	movl	4(%rax), %esi
	movl	$7, %edi
	movb	$0, %al
	callq	expect@PLT
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	2
.L__const.address.x:
	.long	6                               # 0x6
	.long	7                               # 0x7
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym address
	.addrsig_sym expect