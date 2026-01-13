	.text
	.p2align	4, 0x90                         # -- Begin function t4
t4:                                     # @t4
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	.L__const.t4.a(%rip), %rax
	movq	%rax, -8(%rbp)
	leaq	-8(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	(%rax), %esi
	movl	$67, %edi
	callq	expect@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	2
.L__const.t4.a:
	.long	55                              # 0x37
	.long	67                              # 0x43
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym t4
	.addrsig_sym expect