	.text
	.globl	draw_label                      // -- Begin function draw_label
	.p2align	2
	.type	draw_label,@function
draw_label:                             // @draw_label
// %bb.0:
	sub	sp, sp, #160
	stp	x29, x30, [sp, #144]            // 16-byte Folded Spill
	add	x29, sp, #144
	stur	x0, [x29, #-32]
	stur	x1, [x29, #-24]
	ldur	x8, [x29, #-32]
	stur	x8, [x29, #-16]
	ldur	w8, [x29, #-24]
	stur	w8, [x29, #-8]
	stur	x4, [x29, #-64]
	stur	x5, [x29, #-56]
	ldur	x8, [x29, #-64]
	stur	x8, [x29, #-48]
	ldur	w8, [x29, #-56]
	stur	w8, [x29, #-40]
	stur	w2, [x29, #-68]
	str	w3, [sp, #72]
	str	x6, [sp, #64]
	ldur	w8, [x29, #-48]
	str	w8, [sp, #60]
	ldur	w8, [x29, #-44]
	str	w8, [sp, #56]
	ldur	w8, [x29, #-68]
	ldr	w9, [sp, #56]
	subs	w8, w8, w9
	tbnz	w8, #31, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	w8, [x29, #-68]
	ldr	w9, [sp, #56]
	subs	w8, w8, w9
	stur	w8, [x29, #-68]
	b	.LBB0_2
.LBB0_2:
	str	wzr, [sp, #48]
	b	.LBB0_3
.LBB0_3:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_7 Depth 2
                                        //       Child Loop BB0_11 Depth 3
	ldr	w9, [sp, #48]
	ldr	w10, [sp, #56]
	mov	w8, #0
	subs	w9, w9, w10
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	b.ge	.LBB0_5
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_3 Depth=1
	ldr	w8, [sp, #48]
	ldur	w9, [x29, #-68]
	add	w8, w8, w9
	ldur	w9, [x29, #-12]
	subs	w8, w8, w9
	cset	w8, lt
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_3 Depth=1
	ldr	w8, [sp, #4]                    // 4-byte Folded Reload
	tbz	w8, #0, .LBB0_18
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_3 Depth=1
	str	wzr, [sp, #52]
	b	.LBB0_7
.LBB0_7:                                //   Parent Loop BB0_3 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB0_11 Depth 3
	ldr	w9, [sp, #52]
	ldr	w10, [sp, #60]
	mov	w8, #0
	subs	w9, w9, w10
	str	w8, [sp]                        // 4-byte Folded Spill
	b.ge	.LBB0_9
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_7 Depth=2
	ldr	w8, [sp, #52]
	ldr	w9, [sp, #72]
	add	w8, w8, w9
	ldur	w9, [x29, #-16]
	subs	w8, w8, w9
	cset	w8, lt
	str	w8, [sp]                        // 4-byte Folded Spill
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_7 Depth=2
	ldr	w8, [sp]                        // 4-byte Folded Reload
	tbz	w8, #0, .LBB0_16
	b	.LBB0_10
.LBB0_10:                               //   in Loop: Header=BB0_7 Depth=2
	str	wzr, [sp, #44]
	b	.LBB0_11
.LBB0_11:                               //   Parent Loop BB0_3 Depth=1
                                        //     Parent Loop BB0_7 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	ldr	w8, [sp, #44]
	ldur	w9, [x29, #-40]
	subs	w8, w8, w9
	b.ge	.LBB0_14
	b	.LBB0_12
.LBB0_12:                               //   in Loop: Header=BB0_11 Depth=3
	ldr	w2, [sp, #52]
	ldr	w3, [sp, #48]
	ldr	w4, [sp, #44]
	ldur	x8, [x29, #-48]
	str	x8, [sp, #24]
	ldur	w8, [x29, #-40]
	str	w8, [sp, #32]
	ldr	x0, [sp, #24]
	ldr	x1, [sp, #32]
	bl	get_pixel
	str	s0, [sp, #40]
	ldr	w8, [sp, #52]
	ldr	w9, [sp, #72]
	add	w2, w8, w9
	ldr	w8, [sp, #48]
	ldur	w9, [x29, #-68]
	add	w3, w8, w9
	ldr	w4, [sp, #44]
	ldr	x8, [sp, #64]
	ldrsw	x9, [sp, #44]
	ldr	s0, [x8, x9, lsl #2]
	ldr	s1, [sp, #40]
	fmul	s0, s0, s1
	ldur	x8, [x29, #-16]
	str	x8, [sp, #8]
	ldur	w8, [x29, #-8]
	str	w8, [sp, #16]
	ldr	x0, [sp, #8]
	ldr	x1, [sp, #16]
	bl	set_pixel
	b	.LBB0_13
.LBB0_13:                               //   in Loop: Header=BB0_11 Depth=3
	ldr	w8, [sp, #44]
	add	w8, w8, #1
	str	w8, [sp, #44]
	b	.LBB0_11
.LBB0_14:                               //   in Loop: Header=BB0_7 Depth=2
	b	.LBB0_15
.LBB0_15:                               //   in Loop: Header=BB0_7 Depth=2
	ldr	w8, [sp, #52]
	add	w8, w8, #1
	str	w8, [sp, #52]
	b	.LBB0_7
.LBB0_16:                               //   in Loop: Header=BB0_3 Depth=1
	b	.LBB0_17
.LBB0_17:                               //   in Loop: Header=BB0_3 Depth=1
	ldr	w8, [sp, #48]
	add	w8, w8, #1
	str	w8, [sp, #48]
	b	.LBB0_3
.LBB0_18:
	ldp	x29, x30, [sp, #144]            // 16-byte Folded Reload
	add	sp, sp, #160
	ret
.Lfunc_end0:
	.size	draw_label, .Lfunc_end0-draw_label
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym get_pixel
	.addrsig_sym set_pixel