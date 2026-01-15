	.text
	.globl	scale_bias                      // -- Begin function scale_bias
	.p2align	2
	.type	scale_bias,@function
scale_bias:                             // @scale_bias
// %bb.0:
	sub	sp, sp, #48
	str	x0, [sp, #40]
	str	x1, [sp, #32]
	str	w2, [sp, #28]
	str	w3, [sp, #24]
	str	w4, [sp, #20]
	str	wzr, [sp, #8]
	b	.LBB0_1
.LBB0_1:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_3 Depth 2
                                        //       Child Loop BB0_5 Depth 3
	ldr	w8, [sp, #8]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	b.ge	.LBB0_12
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	str	wzr, [sp, #16]
	b	.LBB0_3
.LBB0_3:                                //   Parent Loop BB0_1 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB0_5 Depth 3
	ldr	w8, [sp, #16]
	ldr	w9, [sp, #24]
	subs	w8, w8, w9
	b.ge	.LBB0_10
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_3 Depth=2
	str	wzr, [sp, #12]
	b	.LBB0_5
.LBB0_5:                                //   Parent Loop BB0_1 Depth=1
                                        //     Parent Loop BB0_3 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	ldr	w8, [sp, #12]
	ldr	w9, [sp, #20]
	subs	w8, w8, w9
	b.ge	.LBB0_8
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_5 Depth=3
	ldr	x8, [sp, #32]
	ldrsw	x9, [sp, #16]
	ldr	s1, [x8, x9, lsl #2]
	ldr	x8, [sp, #40]
	ldr	w9, [sp, #8]
	ldr	w10, [sp, #24]
	mul	w9, w9, w10
	ldr	w10, [sp, #16]
	add	w9, w9, w10
	ldr	w10, [sp, #20]
	mul	w9, w9, w10
	ldr	w10, [sp, #12]
	add	w9, w9, w10
	add	x8, x8, w9, sxtw #2
	ldr	s0, [x8]
	fmul	s0, s0, s1
	str	s0, [x8]
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_5 Depth=3
	ldr	w8, [sp, #12]
	add	w8, w8, #1
	str	w8, [sp, #12]
	b	.LBB0_5
.LBB0_8:                                //   in Loop: Header=BB0_3 Depth=2
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_3 Depth=2
	ldr	w8, [sp, #16]
	add	w8, w8, #1
	str	w8, [sp, #16]
	b	.LBB0_3
.LBB0_10:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #8]
	add	w8, w8, #1
	str	w8, [sp, #8]
	b	.LBB0_1
.LBB0_12:
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	scale_bias, .Lfunc_end0-scale_bias
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig