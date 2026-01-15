	.text
	.globl	binarize_weights                // -- Begin function binarize_weights
	.p2align	2
	.type	binarize_weights,@function
binarize_weights:                       // @binarize_weights
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	stur	w2, [x29, #-16]
	str	x3, [sp, #24]
	str	wzr, [sp, #16]
	b	.LBB0_1
.LBB0_1:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_3 Depth 2
                                        //     Child Loop BB0_7 Depth 2
	ldr	w8, [sp, #16]
	ldur	w9, [x29, #-12]
	subs	w8, w8, w9
	b.ge	.LBB0_15
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	movi	d0, #0000000000000000
	str	s0, [sp, #12]
	str	wzr, [sp, #20]
	b	.LBB0_3
.LBB0_3:                                //   Parent Loop BB0_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	w8, [sp, #20]
	ldur	w9, [x29, #-16]
	subs	w8, w8, w9
	b.ge	.LBB0_6
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_3 Depth=2
	ldur	x8, [x29, #-8]
	ldr	w9, [sp, #16]
	ldur	w10, [x29, #-16]
	mul	w9, w9, w10
	ldr	w10, [sp, #20]
	add	w9, w9, w10
	ldr	s0, [x8, w9, sxtw #2]
	bl	fabs
	scvtf	s1, x0
	ldr	s0, [sp, #12]
	fadd	s0, s0, s1
	str	s0, [sp, #12]
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_3 Depth=2
	ldr	w8, [sp, #20]
	add	w8, w8, #1
	str	w8, [sp, #20]
	b	.LBB0_3
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	s0, [sp, #12]
	ldur	s1, [x29, #-16]
	scvtf	s1, s1
	fdiv	s0, s0, s1
	str	s0, [sp, #12]
	str	wzr, [sp, #20]
	b	.LBB0_7
.LBB0_7:                                //   Parent Loop BB0_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	w8, [sp, #20]
	ldur	w9, [x29, #-16]
	subs	w8, w8, w9
	b.ge	.LBB0_13
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_7 Depth=2
	ldur	x8, [x29, #-8]
	ldr	w9, [sp, #16]
	ldur	w10, [x29, #-16]
	mul	w9, w9, w10
	ldr	w10, [sp, #20]
	add	w9, w9, w10
	ldr	s0, [x8, w9, sxtw #2]
	fcmp	s0, #0.0
	b.le	.LBB0_10
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_7 Depth=2
	ldr	s0, [sp, #12]
	str	s0, [sp, #8]                    // 4-byte Folded Spill
	b	.LBB0_11
.LBB0_10:                               //   in Loop: Header=BB0_7 Depth=2
	ldr	s0, [sp, #12]
	fneg	s0, s0
	str	s0, [sp, #8]                    // 4-byte Folded Spill
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_7 Depth=2
	ldr	s0, [sp, #8]                    // 4-byte Folded Reload
	ldr	x8, [sp, #24]
	ldr	w9, [sp, #16]
	ldur	w10, [x29, #-16]
	mul	w9, w9, w10
	ldr	w10, [sp, #20]
	add	w9, w9, w10
	str	s0, [x8, w9, sxtw #2]
	b	.LBB0_12
.LBB0_12:                               //   in Loop: Header=BB0_7 Depth=2
	ldr	w8, [sp, #20]
	add	w8, w8, #1
	str	w8, [sp, #20]
	b	.LBB0_7
.LBB0_13:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_14
.LBB0_14:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #16]
	add	w8, w8, #1
	str	w8, [sp, #16]
	b	.LBB0_1
.LBB0_15:
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	binarize_weights, .Lfunc_end0-binarize_weights
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym fabs