	.text
	.p2align	2                               // -- Begin function hardtan_activate
	.type	hardtan_activate,@function
hardtan_activate:                       // @hardtan_activate
// %bb.0:
	sub	sp, sp, #16
	str	s0, [sp, #8]
	ldr	s0, [sp, #8]
	fmov	s1, #-1.00000000
	fcmp	s0, s1
	b.pl	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	fmov	s0, #-1.00000000
	str	s0, [sp, #12]
	b	.LBB0_5
.LBB0_2:
	ldr	s0, [sp, #8]
	fmov	s1, #1.00000000
	fcmp	s0, s1
	b.le	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	fmov	s0, #1.00000000
	str	s0, [sp, #12]
	b	.LBB0_5
.LBB0_4:
	ldr	w8, [sp, #8]
	str	w8, [sp, #12]
	b	.LBB0_5
.LBB0_5:
	ldr	s0, [sp, #12]
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	hardtan_activate, .Lfunc_end0-hardtan_activate
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym hardtan_activate