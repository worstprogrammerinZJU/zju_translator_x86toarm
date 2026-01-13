	.text
	.globl	backward_region_layer           // -- Begin function backward_region_layer
	.p2align	2
	.type	backward_region_layer,@function
backward_region_layer:                  // @backward_region_layer
// %bb.0:
	sub	sp, sp, #16
	str	w0, [sp, #12]
	str	w1, [sp, #8]
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	backward_region_layer, .Lfunc_end0-backward_region_layer
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig