	.text
	.globl	place_image                     // -- Begin function place_image
	.p2align	2
	.type	place_image,@function
place_image:                            // @place_image
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
	stur	x6, [x29, #-64]
	stur	x7, [x29, #-56]
	ldur	x8, [x29, #-64]
	stur	x8, [x29, #-48]
	ldur	w8, [x29, #-56]
	stur	w8, [x29, #-40]
	stur	w2, [x29, #-68]
	str	w3, [sp, #72]
	str	w4, [sp, #68]
	str	w5, [sp, #64]
	str	wzr, [sp, #52]
	b	.LBB0_1
.LBB0_1:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_3 Depth 2
                                        //       Child Loop BB0_5 Depth 3
	ldr	w8, [sp, #52]
	ldur	w9, [x29, #-16]
	subs	w8, w8, w9
	b.ge	.LBB0_12
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	str	wzr, [sp, #56]
	b	.LBB0_3
.LBB0_3:                                //   Parent Loop BB0_1 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB0_5 Depth 3
	ldr	w8, [sp, #56]
	ldr	w9, [sp, #72]
	subs	w8, w8, w9
	b.ge	.LBB0_10
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_3 Depth=2
	str	wzr, [sp, #60]
	b	.LBB0_5
.LBB0_5:                                //   Parent Loop BB0_1 Depth=1
                                        //     Parent Loop BB0_3 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	ldr	w8, [sp, #60]
	ldur	w9, [x29, #-68]
	subs	w8, w8, w9
	b.ge	.LBB0_8
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_5 Depth=3
	ldr	s0, [sp, #60]
	scvtf	s0, s0
	ldur	s1, [x29, #-68]
	scvtf	s1, s1
	fdiv	s0, s0, s1
	ldur	s1, [x29, #-12]
	fmul	s0, s0, s1
	str	s0, [sp, #48]
	ldr	s0, [sp, #56]
	scvtf	s0, s0
	ldr	s1, [sp, #72]
	scvtf	s1, s1
	fdiv	s0, s0, s1
	ldur	s1, [x29, #-8]
	fmul	s0, s0, s1
	str	s0, [sp, #44]
	ldr	s0, [sp, #48]
	ldr	s1, [sp, #44]
	ldr	w2, [sp, #52]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #24]
	ldur	w8, [x29, #-8]
	str	w8, [sp, #32]
	ldr	x0, [sp, #24]
	ldr	x1, [sp, #32]
	bl	bilinear_interpolate
	str	s0, [sp, #40]
	ldr	w8, [sp, #60]
	ldr	w9, [sp, #68]
	add	w2, w8, w9
	ldr	w8, [sp, #56]
	ldr	w9, [sp, #64]
	add	w3, w8, w9
	ldr	w4, [sp, #52]
	ldr	s0, [sp, #40]
	ldur	x8, [x29, #-48]
	str	x8, [sp, #8]
	ldur	w8, [x29, #-40]
	str	w8, [sp, #16]
	ldr	x0, [sp, #8]
	ldr	x1, [sp, #16]
	bl	set_pixel
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_5 Depth=3
	ldr	w8, [sp, #60]
	add	w8, w8, #1
	str	w8, [sp, #60]
	b	.LBB0_5
.LBB0_8:                                //   in Loop: Header=BB0_3 Depth=2
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_3 Depth=2
	ldr	w8, [sp, #56]
	add	w8, w8, #1
	str	w8, [sp, #56]
	b	.LBB0_3
.LBB0_10:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #52]
	add	w8, w8, #1
	str	w8, [sp, #52]
	b	.LBB0_1
.LBB0_12:
	ldp	x29, x30, [sp, #144]            // 16-byte Folded Reload
	add	sp, sp, #160
	ret
.Lfunc_end0:
	.size	place_image, .Lfunc_end0-place_image
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym bilinear_interpolate
	.addrsig_sym set_pixel