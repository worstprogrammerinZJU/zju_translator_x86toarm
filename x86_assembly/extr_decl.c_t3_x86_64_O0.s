	.text
	.p2align	4, 0x90                         # -- Begin function t3
t3:                                     # @t3
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	.L__const.t3.a(%rip), %eax
	movl	%eax, -4(%rbp)
	leaq	-4(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	(%rax), %esi
	movl	$55, %edi
	callq	expect@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2
.L__const.t3.a:
	.long	55                              # 0x37
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym t3
	.addrsig_sym expect