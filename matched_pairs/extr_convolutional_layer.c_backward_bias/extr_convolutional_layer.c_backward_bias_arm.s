	.text
	.globl	backward_bias                   // -- Begin function backward_bias
	.p2align	2
	.type	backward_bias,@function
backward_bias:                          // @backward_bias
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	w2, [x29, #-20]
	str	w3, [sp, #24]
	str	w4, [sp, #20]
	str	wzr, [sp, #12]
	b	.LBB0_1
.LBB0_1:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_3 Depth 2
	ldr	w8, [sp, #12]
	ldur	w9, [x29, #-20]
	subs	w8, w8, w9
	b.ge	.LBB0_8
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	str	wzr, [sp, #16]
	b	.LBB0_3
.LBB0_3:                                //   Parent Loop BB0_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	w8, [sp, #16]
	ldr	w9, [sp, #24]
	subs	w8, w8, w9
	b.ge	.LBB0_6
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_3 Depth=2
	ldur	x8, [x29, #-16]
	ldr	w9, [sp, #20]
	ldr	w10, [sp, #16]
	ldr	w11, [sp, #12]
	ldr	w12, [sp, #24]
	mul	w11, w11, w12
	add	w10, w10, w11
	mul	w9, w9, w10
	add	x0, x8, w9, sxtw #2
	ldr	w1, [sp, #20]
	bl	sum_array
	scvtf	s1, x0
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #16]
	add	x8, x8, x9, lsl #2
	ldr	s0, [x8]
	fadd	s0, s0, s1
	str	s0, [x8]
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_3 Depth=2
	ldr	w8, [sp, #16]
	add	w8, w8, #1
	str	w8, [sp, #16]
	b	.LBB0_3
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #12]
	add	w8, w8, #1
	str	w8, [sp, #12]
	b	.LBB0_1
.LBB0_8:
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	backward_bias, .Lfunc_end0-backward_bias
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym sum_array