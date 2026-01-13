	.text
	.globl	__yield                         # -- Begin function __yield
	.p2align	4, 0x90
__yield:                                # @__yield
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movb	$0, %al
	callq	vPortYield@PLT
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym vPortYield