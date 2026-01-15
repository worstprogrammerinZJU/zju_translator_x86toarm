	.text
	.globl	top_k                           // -- Begin function top_k
	.p2align	2
	.type	top_k,@function
top_k:                                  // @top_k
// %bb.0:
	sub	sp, sp, #48
	str	x0, [sp, #40]
	str	w1, [sp, #36]
	str	w2, [sp, #32]
	str	x3, [sp, #24]
	str	wzr, [sp, #16]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #16]
	ldr	w9, [sp, #32]
	subs	w8, w8, w9
	b.ge	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x9, [sp, #24]
	ldrsw	x10, [sp, #16]
	mov	w8, #-1
	str	w8, [x9, x10, lsl #2]
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #16]
	add	w8, w8, #1
	str	w8, [sp, #16]
	b	.LBB0_1
.LBB0_4:
	str	wzr, [sp, #20]
	b	.LBB0_5
.LBB0_5:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_7 Depth 2
	ldr	w8, [sp, #20]
	ldr	w9, [sp, #36]
	subs	w8, w8, w9
	b.ge	.LBB0_15
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_5 Depth=1
	ldr	w8, [sp, #20]
	str	w8, [sp, #12]
	str	wzr, [sp, #16]
	b	.LBB0_7
.LBB0_7:                                //   Parent Loop BB0_5 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	w8, [sp, #16]
	ldr	w9, [sp, #32]
	subs	w8, w8, w9
	b.ge	.LBB0_13
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_7 Depth=2
	ldr	x8, [sp, #24]
	ldrsw	x9, [sp, #16]
	ldr	w8, [x8, x9, lsl #2]
	tbnz	w8, #31, .LBB0_10
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_7 Depth=2
	ldr	x8, [sp, #40]
	ldrsw	x9, [sp, #12]
	ldr	s0, [x8, x9, lsl #2]
	ldr	x8, [sp, #40]
	ldr	x9, [sp, #24]
	ldrsw	x10, [sp, #16]
	ldrsw	x9, [x9, x10, lsl #2]
	ldr	s1, [x8, x9, lsl #2]
	fcmp	s0, s1
	b.le	.LBB0_11
	b	.LBB0_10
.LBB0_10:                               //   in Loop: Header=BB0_7 Depth=2
	ldr	w8, [sp, #12]
	str	w8, [sp, #8]
	ldr	x8, [sp, #24]
	ldrsw	x9, [sp, #16]
	ldr	w8, [x8, x9, lsl #2]
	str	w8, [sp, #12]
	ldr	w8, [sp, #8]
	ldr	x9, [sp, #24]
	ldrsw	x10, [sp, #16]
	str	w8, [x9, x10, lsl #2]
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_7 Depth=2
	b	.LBB0_12
.LBB0_12:                               //   in Loop: Header=BB0_7 Depth=2
	ldr	w8, [sp, #16]
	add	w8, w8, #1
	str	w8, [sp, #16]
	b	.LBB0_7
.LBB0_13:                               //   in Loop: Header=BB0_5 Depth=1
	b	.LBB0_14
.LBB0_14:                               //   in Loop: Header=BB0_5 Depth=1
	ldr	w8, [sp, #20]
	add	w8, w8, #1
	str	w8, [sp, #20]
	b	.LBB0_5
.LBB0_15:
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	top_k, .Lfunc_end0-top_k
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig