	.text
	.globl	decFloatIsSignaling             # -- Begin function decFloatIsSignaling
	.p2align	4, 0x90
decFloatIsSignaling:                    # @decFloatIsSignaling
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	DFISSNAN@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym DFISSNAN