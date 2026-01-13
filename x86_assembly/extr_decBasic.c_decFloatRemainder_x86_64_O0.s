	.text
	.globl	decFloatRemainder               # -- Begin function decFloatRemainder
	.p2align	4, 0x90
decFloatRemainder:                      # @decFloatRemainder
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
	movl	REMAINDER(%rip), %r8d
	callq	decDivide@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	REMAINDER
	.p2align	2
REMAINDER:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym decDivide
	.addrsig_sym REMAINDER