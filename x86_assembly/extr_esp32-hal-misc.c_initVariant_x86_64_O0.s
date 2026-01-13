	.text
	.globl	initVariant                     # -- Begin function initVariant
	.p2align	4, 0x90
initVariant:                            # @initVariant
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig