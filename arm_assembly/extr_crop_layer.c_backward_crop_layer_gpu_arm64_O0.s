	.text
	.globl	backward_crop_layer_gpu         // -- Begin function backward_crop_layer_gpu
	.p2align	2
	.type	backward_crop_layer_gpu,@function
backward_crop_layer_gpu:                // @backward_crop_layer_gpu
// %bb.0:
	sub	sp, sp, #16
	str	w0, [sp, #12]
	str	w1, [sp, #8]
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	backward_crop_layer_gpu, .Lfunc_end0-backward_crop_layer_gpu
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig