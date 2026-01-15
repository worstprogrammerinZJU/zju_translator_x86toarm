	.text
	.p2align	2                               // -- Begin function tanh_gradient
	.type	tanh_gradient,@function
tanh_gradient:                          // @tanh_gradient
// %bb.0:
	sub	sp, sp, #16
	str	s0, [sp, #12]
	ldr	s0, [sp, #12]
	ldr	s1, [sp, #12]
	fmov	s2, #1.00000000
	fmsub	s0, s0, s1, s2
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	tanh_gradient, .Lfunc_end0-tanh_gradient
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym tanh_gradient