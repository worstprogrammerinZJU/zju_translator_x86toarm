	.text
	.globl	do_nms                          // -- Begin function do_nms
	.p2align	2
	.type	do_nms,@function
do_nms:                                 // @do_nms
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	w2, [x29, #-20]
	str	w3, [sp, #24]
	str	s0, [sp, #20]
	str	wzr, [sp, #16]
	b	.LBB0_1
.LBB0_1:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_3 Depth 2
                                        //     Child Loop BB0_11 Depth 2
                                        //       Child Loop BB0_14 Depth 3
	ldr	w8, [sp, #16]
	ldur	w9, [x29, #-20]
	subs	w8, w8, w9
	b.ge	.LBB0_25
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	str	wzr, [sp, #4]
	str	wzr, [sp, #8]
	b	.LBB0_3
.LBB0_3:                                //   Parent Loop BB0_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	w8, [sp, #8]
	ldr	w9, [sp, #24]
	subs	w8, w8, w9
	b.ge	.LBB0_8
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_3 Depth=2
	ldr	w8, [sp, #4]
	mov	w9, #1
	str	w9, [sp]                        // 4-byte Folded Spill
	cbnz	w8, .LBB0_6
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_3 Depth=2
	ldur	x8, [x29, #-16]
	ldrsw	x9, [sp, #16]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #8]
	ldr	s0, [x8, x9, lsl #2]
	fcmp	s0, #0.0
	cset	w8, gt
	str	w8, [sp]                        // 4-byte Folded Spill
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_3 Depth=2
	ldr	w8, [sp]                        // 4-byte Folded Reload
	and	w8, w8, #0x1
	str	w8, [sp, #4]
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_3 Depth=2
	ldr	w8, [sp, #8]
	add	w8, w8, #1
	str	w8, [sp, #8]
	b	.LBB0_3
.LBB0_8:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #4]
	cbnz	w8, .LBB0_10
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_24
.LBB0_10:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #16]
	add	w8, w8, #1
	str	w8, [sp, #12]
	b	.LBB0_11
.LBB0_11:                               //   Parent Loop BB0_1 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB0_14 Depth 3
	ldr	w8, [sp, #12]
	ldur	w9, [x29, #-20]
	subs	w8, w8, w9
	b.ge	.LBB0_23
	b	.LBB0_12
.LBB0_12:                               //   in Loop: Header=BB0_11 Depth=2
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #16]
	ldr	w0, [x8, x9, lsl #2]
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #12]
	ldr	w1, [x8, x9, lsl #2]
	bl	box_iou
	ldr	s1, [sp, #20]
	fcmp	s0, s1
	b.le	.LBB0_21
	b	.LBB0_13
.LBB0_13:                               //   in Loop: Header=BB0_11 Depth=2
	str	wzr, [sp, #8]
	b	.LBB0_14
.LBB0_14:                               //   Parent Loop BB0_1 Depth=1
                                        //     Parent Loop BB0_11 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	ldr	w8, [sp, #8]
	ldr	w9, [sp, #24]
	subs	w8, w8, w9
	b.ge	.LBB0_20
	b	.LBB0_15
.LBB0_15:                               //   in Loop: Header=BB0_14 Depth=3
	ldur	x8, [x29, #-16]
	ldrsw	x9, [sp, #16]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #8]
	ldr	s0, [x8, x9, lsl #2]
	ldur	x8, [x29, #-16]
	ldrsw	x9, [sp, #12]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #8]
	ldr	s1, [x8, x9, lsl #2]
	fcmp	s0, s1
	b.pl	.LBB0_17
	b	.LBB0_16
.LBB0_16:                               //   in Loop: Header=BB0_14 Depth=3
	ldur	x8, [x29, #-16]
	ldrsw	x9, [sp, #16]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #8]
	movi	d0, #0000000000000000
	str	s0, [x8, x9, lsl #2]
	b	.LBB0_18
.LBB0_17:                               //   in Loop: Header=BB0_14 Depth=3
	ldur	x8, [x29, #-16]
	ldrsw	x9, [sp, #12]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #8]
	movi	d0, #0000000000000000
	str	s0, [x8, x9, lsl #2]
	b	.LBB0_18
.LBB0_18:                               //   in Loop: Header=BB0_14 Depth=3
	b	.LBB0_19
.LBB0_19:                               //   in Loop: Header=BB0_14 Depth=3
	ldr	w8, [sp, #8]
	add	w8, w8, #1
	str	w8, [sp, #8]
	b	.LBB0_14
.LBB0_20:                               //   in Loop: Header=BB0_11 Depth=2
	b	.LBB0_21
.LBB0_21:                               //   in Loop: Header=BB0_11 Depth=2
	b	.LBB0_22
.LBB0_22:                               //   in Loop: Header=BB0_11 Depth=2
	ldr	w8, [sp, #12]
	add	w8, w8, #1
	str	w8, [sp, #12]
	b	.LBB0_11
.LBB0_23:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_24
.LBB0_24:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #16]
	add	w8, w8, #1
	str	w8, [sp, #16]
	b	.LBB0_1
.LBB0_25:
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	do_nms, .Lfunc_end0-do_nms
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym box_iou