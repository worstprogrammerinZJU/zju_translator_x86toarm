	.text
	.globl	init                            # -- Begin function init
	.p2align	4, 0x90
init:                                   # @init
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig