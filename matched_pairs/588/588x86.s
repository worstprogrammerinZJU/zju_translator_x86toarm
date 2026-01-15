	.text
	.globl	decFloatIsNaN                   # -- Begin function decFloatIsNaN
	.p2align	4, 0x90
decFloatIsNaN:                          # @decFloatIsNaN
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	DFISNAN@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym DFISNAN