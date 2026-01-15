	.text
	.p2align	2                               // -- Begin function hardtan_gradient
	.type	hardtan_gradient,@function
hardtan_gradient:                       // @hardtan_gradient
// %bb.0:
	sub	sp, sp, #16
	str	s0, [sp, #8]
	ldr	s0, [sp, #8]
	fmov	s1, #-1.00000000
	fcmp	s0, s1
	b.le	.LBB0_3
	b	.LBB0_1
.LBB0_1:
	ldr	s0, [sp, #8]
	fmov	s1, #1.00000000
	fcmp	s0, s1
	b.pl	.LBB0_3
	b	.LBB0_2
.LBB0_2:
	fmov	s0, #1.00000000
	str	s0, [sp, #12]
	b	.LBB0_4
.LBB0_3:
	movi	d0, #0000000000000000
	str	s0, [sp, #12]
	b	.LBB0_4
.LBB0_4:
	ldr	s0, [sp, #12]
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	hardtan_gradient, .Lfunc_end0-hardtan_gradient
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym hardtan_gradient