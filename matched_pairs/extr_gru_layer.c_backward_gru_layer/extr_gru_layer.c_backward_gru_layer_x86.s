	.text
	.globl	backward_gru_layer              # -- Begin function backward_gru_layer
	.p2align	4, 0x90
backward_gru_layer:                     # @backward_gru_layer
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig