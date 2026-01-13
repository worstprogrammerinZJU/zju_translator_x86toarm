	.text
	.globl	hierarchy_predictions           // -- Begin function hierarchy_predictions
	.p2align	2
	.type	hierarchy_predictions,@function
hierarchy_predictions:                  // @hierarchy_predictions
// %bb.0:
	sub	sp, sp, #48
	str	x0, [sp, #40]
	str	w1, [sp, #36]
	str	x2, [sp, #24]
	str	w3, [sp, #20]
	str	w4, [sp, #16]
	str	wzr, [sp, #12]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #12]
	ldr	w9, [sp, #36]
	subs	w8, w8, w9
	b.ge	.LBB0_6
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #24]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #12]
	ldr	w8, [x8, x9, lsl #2]
	str	w8, [sp, #8]
	ldr	w8, [sp, #8]
	tbnz	w8, #31, .LBB0_4
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #40]
	ldr	w9, [sp, #8]
	ldr	w10, [sp, #16]
	mul	w9, w9, w10
	ldr	s1, [x8, w9, sxtw #2]
	ldr	x8, [sp, #40]
	ldr	w9, [sp, #12]
	ldr	w10, [sp, #16]
	mul	w9, w9, w10
	add	x8, x8, w9, sxtw #2
	ldr	s0, [x8]
	fmul	s0, s0, s1
	str	s0, [x8]
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #12]
	add	w8, w8, #1
	str	w8, [sp, #12]
	b	.LBB0_1
.LBB0_6:
	ldr	w8, [sp, #20]
	cbz	w8, .LBB0_14
	b	.LBB0_7
.LBB0_7:
	str	wzr, [sp, #12]
	b	.LBB0_8
.LBB0_8:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #12]
	ldr	w9, [sp, #36]
	subs	w8, w8, w9
	b.ge	.LBB0_13
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_8 Depth=1
	ldr	x8, [sp, #24]
	ldr	x8, [x8, #8]
	ldrsw	x9, [sp, #12]
	ldr	w8, [x8, x9, lsl #2]
	cbnz	w8, .LBB0_11
	b	.LBB0_10
.LBB0_10:                               //   in Loop: Header=BB0_8 Depth=1
	ldr	x8, [sp, #40]
	ldr	w9, [sp, #12]
	ldr	w10, [sp, #16]
	mul	w9, w9, w10
	movi	d0, #0000000000000000
	str	s0, [x8, w9, sxtw #2]
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_8 Depth=1
	b	.LBB0_12
.LBB0_12:                               //   in Loop: Header=BB0_8 Depth=1
	ldr	w8, [sp, #12]
	add	w8, w8, #1
	str	w8, [sp, #12]
	b	.LBB0_8
.LBB0_13:
	b	.LBB0_14
.LBB0_14:
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	hierarchy_predictions, .Lfunc_end0-hierarchy_predictions
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig