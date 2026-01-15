	.text
	.globl	backward_crop_layer             // -- Begin function backward_crop_layer
	.p2align	2
	.type	backward_crop_layer,@function
backward_crop_layer:                    // @backward_crop_layer
// %bb.0:
	sub	sp, sp, #16
	str	w0, [sp, #12]
	str	w1, [sp, #8]
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	backward_crop_layer, .Lfunc_end0-backward_crop_layer
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig