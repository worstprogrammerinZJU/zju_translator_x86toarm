	.text
	.globl	decFloatIsSigned                # -- Begin function decFloatIsSigned
	.p2align	4, 0x90
decFloatIsSigned:                       # @decFloatIsSigned
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	DFISSIGNED@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym DFISSIGNED