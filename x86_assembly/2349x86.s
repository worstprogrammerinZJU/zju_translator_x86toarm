	.text
	.p2align	4, 0x90                         # -- Begin function incomplete
incomplete:                             # @incomplete
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	.L__const.incomplete.v1(%rip), %eax
	movl	%eax, -8(%rbp)
	leaq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	(%rax), %esi
	movl	$3, %edi
	callq	expect@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2
.L__const.incomplete.v1:
	.long	3                               # 0x3
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym incomplete
	.addrsig_sym expect