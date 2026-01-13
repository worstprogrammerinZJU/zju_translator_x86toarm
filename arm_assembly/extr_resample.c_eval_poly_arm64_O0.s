	.text
	.p2align	2                               // -- Begin function eval_poly
	.type	eval_poly,@function
eval_poly:                              // @eval_poly
// %bb.0:
	sub	sp, sp, #48
	str	x0, [sp, #40]
	str	w1, [sp, #36]
	str	d0, [sp, #24]
	ldr	x8, [sp, #40]
	ldr	w9, [sp, #36]
	subs	w9, w9, #1
	ldr	x8, [x8, w9, sxtw #3]
	str	x8, [sp, #16]
	ldr	w8, [sp, #36]
	subs	w8, w8, #2
	str	w8, [sp, #12]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #12]
	tbnz	w8, #31, .LBB0_4
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	d1, [sp, #24]
	ldr	d0, [sp, #16]
	fmul	d0, d0, d1
	str	d0, [sp, #16]
	ldr	x8, [sp, #40]
	ldrsw	x9, [sp, #12]
	ldr	d1, [x8, x9, lsl #3]
	ldr	d0, [sp, #16]
	fadd	d0, d0, d1
	str	d0, [sp, #16]
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #12]
	subs	w8, w8, #1
	str	w8, [sp, #12]
	b	.LBB0_1
.LBB0_4:
	ldr	d0, [sp, #16]
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	eval_poly, .Lfunc_end0-eval_poly
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym eval_poly