	.text
	.globl	backward_crop_layer_gpu         # -- Begin function backward_crop_layer_gpu
	.p2align	4, 0x90
backward_crop_layer_gpu:                # @backward_crop_layer_gpu
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