	.text
	.globl	decimal128ToEngString           # -- Begin function decimal128ToEngString
	.p2align	4, 0x90
decimal128ToEngString:                  # @decimal128ToEngString
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	leaq	-20(%rbp), %rsi
	callq	decimal128ToNumber@PLT
	movq	-16(%rbp), %rsi
	leaq	-20(%rbp), %rdi
	callq	decNumberToEngString@PLT
	movq	-16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym decimal128ToNumber
	.addrsig_sym decNumberToEngString