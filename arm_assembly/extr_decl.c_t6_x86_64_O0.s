	.text
	.p2align	4, 0x90                         # -- Begin function t6
t6:                                     # @t6
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	.L__const.t6.a(%rip), %rax
	movq	%rax, -12(%rbp)
	movl	.L__const.t6.a+8(%rip), %eax
	movl	%eax, -4(%rbp)
	movl	-12(%rbp), %esi
	movl	$20, %edi
	callq	expect@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata,"a",@progbits
	.p2align	2
.L__const.t6.a:
	.long	20                              # 0x14
	.long	30                              # 0x1e
	.long	40                              # 0x28
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym t6
	.addrsig_sym expect