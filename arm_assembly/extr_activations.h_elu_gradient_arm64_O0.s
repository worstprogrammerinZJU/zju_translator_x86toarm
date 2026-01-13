	.text
	.p2align	2                               // -- Begin function elu_gradient
	.type	elu_gradient,@function
elu_gradient:                           // @elu_gradient
// %bb.0:
	sub	sp, sp, #16
	str	s0, [sp, #12]
	ldr	s0, [sp, #12]
	fcmp	s0, #0.0
	cset	w8, ge
	and	w8, w8, #0x1
	scvtf	s2, w8
	ldr	s0, [sp, #12]
	fcmp	s0, #0.0
	cset	w8, mi
	and	w8, w8, #0x1
	scvtf	s0, w8
	ldr	s1, [sp, #12]
	fmov	s3, #1.00000000
	fadd	s1, s1, s3
	fmadd	s0, s0, s1, s2
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	elu_gradient, .Lfunc_end0-elu_gradient
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym elu_gradient