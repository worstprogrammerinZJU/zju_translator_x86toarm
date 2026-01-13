	.text
	.globl	decFloatToInt32                 # -- Begin function decFloatToInt32
	.p2align	4, 0x90
decFloatToInt32:                        # @decFloatToInt32
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	callq	decToInt32@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym decToInt32