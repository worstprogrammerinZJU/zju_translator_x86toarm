	.text
	.p2align	4, 0x90                         # -- Begin function incdec_struct
incdec_struct:                          # @incdec_struct
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	.L__const.incdec_struct.a(%rip), %rax
	movq	%rax, -16(%rbp)
	movq	.L__const.incdec_struct.a+8(%rip), %rax
	movq	%rax, -8(%rbp)
	leaq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %esi
	movl	$1, %edi
	callq	expect@PLT
	movq	-24(%rbp), %rax
	movl	4(%rax), %esi
	movl	$2, %edi
	callq	expect@PLT
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %esi
	movl	$3, %edi
	callq	expect@PLT
	movq	-24(%rbp), %rax
	movl	4(%rax), %esi
	movl	$4, %edi
	callq	expect@PLT
	movq	-24(%rbp), %rax
	addq	$-8, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %esi
	movl	$1, %edi
	callq	expect@PLT
	movq	-24(%rbp), %rax
	movl	4(%rax), %esi
	movl	$2, %edi
	callq	expect@PLT
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %esi
	movl	$3, %edi
	callq	expect@PLT
	movq	-24(%rbp), %rax
	movl	4(%rax), %esi
	movl	$4, %edi
	callq	expect@PLT
	movq	-24(%rbp), %rax
	addq	$-8, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %esi
	movl	$1, %edi
	callq	expect@PLT
	movq	-24(%rbp), %rax
	movl	4(%rax), %esi
	movl	$2, %edi
	callq	expect@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.L__const.incdec_struct.a:
	.long	1                               # 0x1
	.long	2                               # 0x2
	.long	3                               # 0x3
	.long	4                               # 0x4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym incdec_struct
	.addrsig_sym expect