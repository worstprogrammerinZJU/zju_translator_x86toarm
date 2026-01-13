	.text
	.globl	decFloatDivideInteger           # -- Begin function decFloatDivideInteger
	.p2align	4, 0x90
decFloatDivideInteger:                  # @decFloatDivideInteger
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movl	DIVIDEINT(%rip), %r8d
	callq	decDivide@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	DIVIDEINT
	.p2align	2
DIVIDEINT:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym decDivide
	.addrsig_sym DIVIDEINT