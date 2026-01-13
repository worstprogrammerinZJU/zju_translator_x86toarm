	.text
	.p2align	2                               // -- Begin function relu_gradient
	.type	relu_gradient,@function
relu_gradient:                          // @relu_gradient
// %bb.0:
	sub	sp, sp, #16
	str	s0, [sp, #12]
	ldr	s0, [sp, #12]
	fcmp	s0, #0.0
	cset	w8, gt
	and	w8, w8, #0x1
	scvtf	s0, w8
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	relu_gradient, .Lfunc_end0-relu_gradient
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym relu_gradient