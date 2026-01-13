	.text
	.p2align	4, 0x90                         # -- Begin function position_l
position_l:                             # @position_l
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	$1, %esi
	callq	newpatt@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	movl	IEmptyCapture(%rip), %esi
	movl	Cposition(%rip), %ecx
	xorl	%r8d, %r8d
	movl	%r8d, %edx
	callq	setinstcap@PLT
	movl	$1, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	IEmptyCapture
	.p2align	2
IEmptyCapture:
	.long	0                               # 0x0
	.globl	Cposition
	.p2align	2
Cposition:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym position_l
	.addrsig_sym newpatt
	.addrsig_sym setinstcap
	.addrsig_sym IEmptyCapture
	.addrsig_sym Cposition