	.text
	.p2align	4, 0x90                         # -- Begin function t14
t14:                                    # @t14
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	.L__const.t14.v(%rip), %rax
	movq	%rax, -16(%rbp)
	movl	.L__const.t14.v+8(%rip), %eax
	movl	%eax, -8(%rbp)
	movl	-12(%rbp), %esi
	movl	$2, %edi
	callq	expect@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata,"a",@progbits
	.p2align	2
.L__const.t14.v:
	.long	1                               # 0x1
	.long	2                               # 0x2
	.long	3                               # 0x3
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym t14
	.addrsig_sym expect