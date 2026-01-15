	.text
	.p2align	2                               // -- Begin function stair_gradient
	.type	stair_gradient,@function
stair_gradient:                         // @stair_gradient
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	s0, [sp, #8]
	ldr	s0, [sp, #8]
	bl	floor
	ldr	s1, [sp, #8]
	fcmp	s0, s1
	b.ne	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	movi	d0, #0000000000000000
	stur	s0, [x29, #-4]
	b	.LBB0_3
.LBB0_2:
	fmov	s0, #1.00000000
	stur	s0, [x29, #-4]
	b	.LBB0_3
.LBB0_3:
	ldur	s0, [x29, #-4]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	stair_gradient, .Lfunc_end0-stair_gradient
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stair_gradient
	.addrsig_sym floor