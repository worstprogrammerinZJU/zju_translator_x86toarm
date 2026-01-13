	.text
	.globl	hierarchy_top_prediction        // -- Begin function hierarchy_top_prediction
	.p2align	2
	.type	hierarchy_top_prediction,@function
hierarchy_top_prediction:               // @hierarchy_top_prediction
// %bb.0:
	sub	sp, sp, #64
	str	x0, [sp, #48]
	str	x1, [sp, #40]
	str	s0, [sp, #36]
	str	w2, [sp, #32]
	fmov	s0, #1.00000000
	str	s0, [sp, #28]
	str	wzr, [sp, #24]
	b	.LBB0_1
.LBB0_1:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_2 Depth 2
	movi	d0, #0000000000000000
	str	s0, [sp, #16]
	str	wzr, [sp, #12]
	str	wzr, [sp, #20]
	b	.LBB0_2
.LBB0_2:                                //   Parent Loop BB0_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	w8, [sp, #20]
	ldr	x9, [sp, #40]
	ldr	x9, [x9]
	ldrsw	x10, [sp, #24]
	ldr	w9, [x9, x10, lsl #2]
	subs	w8, w8, w9
	b.ge	.LBB0_7
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_2 Depth=2
	ldr	w8, [sp, #20]
	ldr	x9, [sp, #40]
	ldr	x9, [x9, #8]
	ldrsw	x10, [sp, #24]
	ldr	w9, [x9, x10, lsl #2]
	add	w8, w8, w9
	str	w8, [sp, #8]
	ldr	x8, [sp, #48]
	ldr	w9, [sp, #20]
	ldr	x10, [sp, #40]
	ldr	x10, [x10, #8]
	ldrsw	x11, [sp, #24]
	ldr	w10, [x10, x11, lsl #2]
	add	w9, w9, w10
	ldr	w10, [sp, #32]
	mul	w9, w9, w10
	ldr	w8, [x8, w9, sxtw #2]
	str	w8, [sp, #4]
	ldr	s0, [sp, #4]
	ldr	s1, [sp, #16]
	fcmp	s0, s1
	b.le	.LBB0_5
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_2 Depth=2
	ldr	w8, [sp, #8]
	str	w8, [sp, #12]
	ldr	w8, [sp, #4]
	str	w8, [sp, #16]
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_2 Depth=2
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_2 Depth=2
	ldr	w8, [sp, #20]
	add	w8, w8, #1
	str	w8, [sp, #20]
	b	.LBB0_2
.LBB0_7:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	s0, [sp, #28]
	ldr	s1, [sp, #16]
	fmul	s0, s0, s1
	ldr	s1, [sp, #36]
	fcmp	s0, s1
	b.le	.LBB0_11
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	s0, [sp, #28]
	ldr	s1, [sp, #16]
	fmul	s0, s0, s1
	str	s0, [sp, #28]
	ldr	x8, [sp, #40]
	ldr	x8, [x8, #16]
	ldrsw	x9, [sp, #12]
	ldr	w8, [x8, x9, lsl #2]
	str	w8, [sp, #24]
	ldr	x8, [sp, #40]
	ldr	x8, [x8, #16]
	ldrsw	x9, [sp, #12]
	ldr	w8, [x8, x9, lsl #2]
	subs	w8, w8, #0
	b.ge	.LBB0_10
	b	.LBB0_9
.LBB0_9:
	ldr	w8, [sp, #12]
	str	w8, [sp, #60]
	b	.LBB0_15
.LBB0_10:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_14
.LBB0_11:
	ldr	w8, [sp, #24]
	cbnz	w8, .LBB0_13
	b	.LBB0_12
.LBB0_12:
	ldr	w8, [sp, #12]
	str	w8, [sp, #60]
	b	.LBB0_15
.LBB0_13:
	ldr	x8, [sp, #40]
	ldr	x8, [x8, #24]
	ldr	x9, [sp, #40]
	ldr	x9, [x9, #8]
	ldrsw	x10, [sp, #24]
	ldrsw	x9, [x9, x10, lsl #2]
	ldr	w8, [x8, x9, lsl #2]
	str	w8, [sp, #60]
	b	.LBB0_15
.LBB0_14:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_1
.LBB0_15:
	ldr	w0, [sp, #60]
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	hierarchy_top_prediction, .Lfunc_end0-hierarchy_top_prediction
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig