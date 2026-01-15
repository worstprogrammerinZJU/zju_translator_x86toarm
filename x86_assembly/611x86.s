	.text
	.globl	decFloatToUInt32                # -- Begin function decFloatToUInt32
	.p2align	4, 0x90
decFloatToUInt32:                       # @decFloatToUInt32
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
	xorl	%ecx, %ecx
	movl	$1, %r8d
	callq	decToInt32@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym decToInt32