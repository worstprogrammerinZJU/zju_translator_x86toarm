	.text
	.p2align	2                               // -- Begin function logistic_gradient
	.type	logistic_gradient,@function
logistic_gradient:                      // @logistic_gradient
// %bb.0:
	sub	sp, sp, #16
	str	s0, [sp, #12]
	ldr	s1, [sp, #12]
	fmov	s0, #1.00000000
	fsub	s0, s0, s1
	ldr	s1, [sp, #12]
	fmul	s0, s0, s1
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	logistic_gradient, .Lfunc_end0-logistic_gradient
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym logistic_gradient