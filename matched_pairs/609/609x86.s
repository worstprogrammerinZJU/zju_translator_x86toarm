	.text
	.globl	decFloatToIntegralExact         # -- Begin function decFloatToIntegralExact
	.p2align	4, 0x90
decFloatToIntegralExact:                # @decFloatToIntegralExact
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	movl	$1, %r8d
	callq	decToIntegral@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym decToIntegral