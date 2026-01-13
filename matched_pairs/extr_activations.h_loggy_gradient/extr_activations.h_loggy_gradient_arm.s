	.text
	.p2align	2                               // -- Begin function loggy_gradient
	.type	loggy_gradient,@function
loggy_gradient:                         // @loggy_gradient
// %bb.0:
	sub	sp, sp, #16
	str	s0, [sp, #12]
	ldr	s0, [sp, #12]
	fcvt	d0, s0
	fmov	d1, #1.00000000
	fadd	d0, d0, d1
	fmov	d1, #2.00000000
	fdiv	d0, d0, d1
	fcvt	s0, d0
	str	s0, [sp, #8]
	ldr	s1, [sp, #8]
	fmov	s0, #1.00000000
	fsub	s1, s0, s1
	fmov	s0, #2.00000000
	fmul	s0, s0, s1
	ldr	s1, [sp, #8]
	fmul	s0, s0, s1
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	loggy_gradient, .Lfunc_end0-loggy_gradient
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym loggy_gradient