	.text
	.globl	border_image                    // -- Begin function border_image
	.p2align	2
	.type	border_image,@function
border_image:                           // @border_image
// %bb.0:
	sub	sp, sp, #160
	stp	x29, x30, [sp, #144]            // 16-byte Folded Spill
	add	x29, sp, #144
	stur	x0, [x29, #-48]
	stur	x1, [x29, #-40]
	ldur	x8, [x29, #-48]
	stur	x8, [x29, #-32]
	ldur	w8, [x29, #-40]
	stur	w8, [x29, #-24]
	stur	w2, [x29, #-52]
	ldur	w8, [x29, #-32]
	ldur	w10, [x29, #-52]
	mov	w9, #2
	mul	w10, w9, w10
	add	w0, w8, w10
	ldur	w8, [x29, #-28]
	ldur	w10, [x29, #-52]
	mul	w9, w9, w10
	add	w1, w8, w9
	ldur	w2, [x29, #-24]
	bl	make_image
	str	x0, [sp, #72]
	str	x1, [sp, #80]
	ldr	x8, [sp, #72]
	stur	x8, [x29, #-16]
	ldr	w8, [sp, #80]
	stur	w8, [x29, #-8]
	str	wzr, [sp, #60]
	b	.LBB0_1
.LBB0_1:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_3 Depth 2
                                        //       Child Loop BB0_5 Depth 3
	ldr	w8, [sp, #60]
	ldur	w9, [x29, #-8]
	subs	w8, w8, w9
	b.ge	.LBB0_17
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	str	wzr, [sp, #64]
	b	.LBB0_3
.LBB0_3:                                //   Parent Loop BB0_1 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB0_5 Depth 3
	ldr	w8, [sp, #64]
	ldur	w9, [x29, #-12]
	subs	w8, w8, w9
	b.ge	.LBB0_15
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_3 Depth=2
	str	wzr, [sp, #68]
	b	.LBB0_5
.LBB0_5:                                //   Parent Loop BB0_1 Depth=1
                                        //     Parent Loop BB0_3 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	ldr	w8, [sp, #68]
	ldur	w9, [x29, #-16]
	subs	w8, w8, w9
	b.ge	.LBB0_13
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_5 Depth=3
	ldr	w8, [sp, #68]
	ldur	w9, [x29, #-52]
	subs	w2, w8, w9
	ldr	w8, [sp, #64]
	ldur	w9, [x29, #-52]
	subs	w3, w8, w9
	ldr	w4, [sp, #60]
	ldur	x8, [x29, #-32]
	str	x8, [sp, #40]
	ldur	w8, [x29, #-24]
	str	w8, [sp, #48]
	ldr	x0, [sp, #40]
	ldr	x1, [sp, #48]
	bl	get_pixel_extend
	str	s0, [sp, #56]
	ldr	w8, [sp, #68]
	ldur	w9, [x29, #-52]
	subs	w8, w8, w9
	tbnz	w8, #31, .LBB0_10
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_5 Depth=3
	ldr	w8, [sp, #68]
	ldur	w9, [x29, #-52]
	subs	w8, w8, w9
	ldur	w9, [x29, #-32]
	subs	w8, w8, w9
	b.ge	.LBB0_10
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_5 Depth=3
	ldr	w8, [sp, #64]
	ldur	w9, [x29, #-52]
	subs	w8, w8, w9
	tbnz	w8, #31, .LBB0_10
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_5 Depth=3
	ldr	w8, [sp, #64]
	ldur	w9, [x29, #-52]
	subs	w8, w8, w9
	ldur	w9, [x29, #-28]
	subs	w8, w8, w9
	b.lt	.LBB0_11
	b	.LBB0_10
.LBB0_10:                               //   in Loop: Header=BB0_5 Depth=3
	fmov	s0, #1.00000000
	str	s0, [sp, #56]
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_5 Depth=3
	ldr	w2, [sp, #68]
	ldr	w3, [sp, #64]
	ldr	w4, [sp, #60]
	ldr	s0, [sp, #56]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #24]
	ldur	w8, [x29, #-8]
	str	w8, [sp, #32]
	ldr	x0, [sp, #24]
	ldr	x1, [sp, #32]
	bl	set_pixel
	b	.LBB0_12
.LBB0_12:                               //   in Loop: Header=BB0_5 Depth=3
	ldr	w8, [sp, #68]
	add	w8, w8, #1
	str	w8, [sp, #68]
	b	.LBB0_5
.LBB0_13:                               //   in Loop: Header=BB0_3 Depth=2
	b	.LBB0_14
.LBB0_14:                               //   in Loop: Header=BB0_3 Depth=2
	ldr	w8, [sp, #64]
	add	w8, w8, #1
	str	w8, [sp, #64]
	b	.LBB0_3
.LBB0_15:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_16
.LBB0_16:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #60]
	add	w8, w8, #1
	str	w8, [sp, #60]
	b	.LBB0_1
.LBB0_17:
	ldur	x8, [x29, #-16]
	str	x8, [sp, #8]
	ldur	w8, [x29, #-8]
	str	w8, [sp, #16]
	ldr	x0, [sp, #8]
	ldr	x1, [sp, #16]
	ldp	x29, x30, [sp, #144]            // 16-byte Folded Reload
	add	sp, sp, #160
	ret
.Lfunc_end0:
	.size	border_image, .Lfunc_end0-border_image
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym make_image
	.addrsig_sym get_pixel_extend
	.addrsig_sym set_pixel