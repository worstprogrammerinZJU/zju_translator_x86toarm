	.text
	.p2align	4, 0x90                         # -- Begin function t4
t4:                                     # @t4
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	.L__const.t4.a(%rip), %eax
	movl	%eax, -4(%rbp)
	leaq	-4(%rbp), %rdi
	callq	t4a@PLT
	movl	%eax, %esi
	movl	$98, %edi
	callq	expect@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2
.L__const.t4.a:
	.long	98                              # 0x62
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym t4
	.addrsig_sym expect
	.addrsig_sym t4a