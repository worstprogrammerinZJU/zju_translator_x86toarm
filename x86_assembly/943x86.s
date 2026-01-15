	.text
	.p2align	4, 0x90                         # -- Begin function t5
t5:                                     # @t5
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	.L__const.t5.a(%rip), %rax
	movq	%rax, -12(%rbp)
	movl	.L__const.t5.a+8(%rip), %eax
	movl	%eax, -4(%rbp)
	leaq	-12(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	$99, (%rax)
	movq	-24(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	$98, (%rax)
	movq	-24(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	$97, (%rax)
	leaq	-12(%rbp), %rdi
	callq	t5a@PLT
	leaq	-12(%rbp), %rdi
	callq	t5b@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata,"a",@progbits
	.p2align	2
.L__const.t5.a:
	.long	1                               # 0x1
	.long	2                               # 0x2
	.long	3                               # 0x3
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym t5
	.addrsig_sym t5a
	.addrsig_sym t5b