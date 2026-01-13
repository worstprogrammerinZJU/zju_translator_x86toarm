	.text
	.p2align	2                               // -- Begin function lhtan_gradient
	.type	lhtan_gradient,@function
lhtan_gradient:                         // @lhtan_gradient
// %bb.0:
	sub	sp, sp, #16
	str	s0, [sp, #8]
	ldr	s0, [sp, #8]
	fcmp	s0, #0.0
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
	mov	w8, #4719
	movk	w8, #14979, lsl #16
	fmov	s0, w8
	str	s0, [sp, #12]
	b	.LBB0_4
.LBB0_4:
	ldr	s0, [sp, #12]
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	lhtan_gradient, .Lfunc_end0-lhtan_gradient
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym lhtan_gradient