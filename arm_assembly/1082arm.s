	.text
	.globl	composite_image                 // -- Begin function composite_image
	.p2align	2
	.type	composite_image,@function
composite_image:                        // @composite_image
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
	stur	x2, [x29, #-64]
	stur	x3, [x29, #-56]
	ldur	x8, [x29, #-64]
	stur	x8, [x29, #-48]
	ldur	w8, [x29, #-56]
	stur	w8, [x29, #-40]
	stur	w4, [x29, #-68]
	str	w5, [sp, #72]
	str	wzr, [sp, #60]
	b	.LBB0_1
.LBB0_1:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_3 Depth 2
                                        //       Child Loop BB0_5 Depth 3
	ldr	w8, [sp, #60]
	ldur	w9, [x29, #-16]
	subs	w8, w8, w9
	b.ge	.LBB0_12
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
	b.ge	.LBB0_10
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_3 Depth=2
	str	wzr, [sp, #68]
	b	.LBB0_5
.LBB0_5:                                //   Parent Loop BB0_1 Depth=1
                                        //     Parent Loop BB0_3 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	ldr	w8, [sp, #68]
	ldur	w9, [x29, #-8]
	subs	w8, w8, w9
	b.ge	.LBB0_8
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_5 Depth=3
	ldr	w2, [sp, #68]
	ldr	w3, [sp, #64]
	ldr	w4, [sp, #60]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #40]
	ldur	w8, [x29, #-8]
	str	w8, [sp, #48]
	ldr	x0, [sp, #40]
	ldr	x1, [sp, #48]
	bl	get_pixel
	str	s0, [sp, #56]
	ldur	w8, [x29, #-68]
	ldr	w9, [sp, #68]
	add	w2, w8, w9
	ldr	w8, [sp, #72]
	ldr	w9, [sp, #64]
	add	w3, w8, w9
	ldr	w4, [sp, #60]
	ldur	x8, [x29, #-48]
	str	x8, [sp, #16]
	ldur	w8, [x29, #-40]
	str	w8, [sp, #24]
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #24]
	bl	get_pixel_extend
	str	s0, [sp, #36]
	ldur	w8, [x29, #-68]
	ldr	w9, [sp, #68]
	add	w2, w8, w9
	ldr	w8, [sp, #72]
	ldr	w9, [sp, #64]
	add	w3, w8, w9
	ldr	w4, [sp, #60]
	ldr	s0, [sp, #56]
	ldr	s1, [sp, #36]
	fmul	s0, s0, s1
	ldur	x8, [x29, #-48]
	str	x8, [sp]
	ldur	w8, [x29, #-40]
	str	w8, [sp, #8]
	ldr	x0, [sp]
	ldr	x1, [sp, #8]
	bl	set_pixel
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_5 Depth=3
	ldr	w8, [sp, #68]
	add	w8, w8, #1
	str	w8, [sp, #68]
	b	.LBB0_5
.LBB0_8:                                //   in Loop: Header=BB0_3 Depth=2
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_3 Depth=2
	ldr	w8, [sp, #64]
	add	w8, w8, #1
	str	w8, [sp, #64]
	b	.LBB0_3
.LBB0_10:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #60]
	add	w8, w8, #1
	str	w8, [sp, #60]
	b	.LBB0_1
.LBB0_12:
	ldp	x29, x30, [sp, #144]            // 16-byte Folded Reload
	add	sp, sp, #160
	ret
.Lfunc_end0:
	.size	composite_image, .Lfunc_end0-composite_image
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym get_pixel
	.addrsig_sym get_pixel_extend
	.addrsig_sym set_pixel