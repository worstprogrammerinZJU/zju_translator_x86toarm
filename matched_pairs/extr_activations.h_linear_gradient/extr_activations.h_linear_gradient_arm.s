	.text
	.p2align	2                               // -- Begin function linear_gradient
	.type	linear_gradient,@function
linear_gradient:                        // @linear_gradient
// %bb.0:
	sub	sp, sp, #16
	str	s0, [sp, #12]
	fmov	s0, #1.00000000
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	linear_gradient, .Lfunc_end0-linear_gradient
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym linear_gradient