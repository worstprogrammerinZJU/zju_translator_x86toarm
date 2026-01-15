	.text
	.globl	blend_image                     // -- Begin function blend_image
	.p2align	2
	.type	blend_image,@function
blend_image:                            // @blend_image
// %bb.0:
	sub	sp, sp, #224
	stp	x29, x30, [sp, #208]            // 16-byte Folded Spill
	add	x29, sp, #208
	stur	x0, [x29, #-48]
	stur	x1, [x29, #-40]
	ldur	x8, [x29, #-48]
	stur	x8, [x29, #-32]
	ldur	w8, [x29, #-40]
	stur	w8, [x29, #-24]
	stur	x2, [x29, #-80]
	stur	x3, [x29, #-72]
	ldur	x8, [x29, #-80]
	stur	x8, [x29, #-64]
	ldur	w8, [x29, #-72]
	stur	w8, [x29, #-56]
	stur	s0, [x29, #-84]
	ldur	w9, [x29, #-32]
	ldur	w10, [x29, #-64]
	mov	w8, #0
	subs	w9, w9, w10
	str	w8, [sp, #20]                   // 4-byte Folded Spill
	b.ne	.LBB0_3
	b	.LBB0_1
.LBB0_1:
	ldur	w9, [x29, #-28]
	ldur	w10, [x29, #-60]
	mov	w8, #0
	subs	w9, w9, w10
	str	w8, [sp, #20]                   // 4-byte Folded Spill
	b.ne	.LBB0_3
	b	.LBB0_2
.LBB0_2:
	ldur	w8, [x29, #-24]
	ldur	w9, [x29, #-56]
	subs	w8, w8, w9
	cset	w8, eq
	str	w8, [sp, #20]                   // 4-byte Folded Spill
	b	.LBB0_3
.LBB0_3:
	ldr	w8, [sp, #20]                   // 4-byte Folded Reload
	and	w0, w8, #0x1
	bl	assert
	ldur	w0, [x29, #-32]
	ldur	w1, [x29, #-28]
	ldur	w2, [x29, #-24]
	bl	make_image
	str	x0, [sp, #104]
	str	x1, [sp, #112]
	ldr	x8, [sp, #104]
	stur	x8, [x29, #-16]
	ldr	w8, [sp, #112]
	stur	w8, [x29, #-8]
	str	wzr, [sp, #92]
	b	.LBB0_4
.LBB0_4:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_6 Depth 2
                                        //       Child Loop BB0_8 Depth 3
	ldr	w8, [sp, #92]
	ldur	w9, [x29, #-24]
	subs	w8, w8, w9
	b.ge	.LBB0_15
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_4 Depth=1
	str	wzr, [sp, #96]
	b	.LBB0_6
.LBB0_6:                                //   Parent Loop BB0_4 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB0_8 Depth 3
	ldr	w8, [sp, #96]
	ldur	w9, [x29, #-28]
	subs	w8, w8, w9
	b.ge	.LBB0_13
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_6 Depth=2
	str	wzr, [sp, #100]
	b	.LBB0_8
.LBB0_8:                                //   Parent Loop BB0_4 Depth=1
                                        //     Parent Loop BB0_6 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	ldr	w8, [sp, #100]
	ldur	w9, [x29, #-32]
	subs	w8, w8, w9
	b.ge	.LBB0_11
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_8 Depth=3
	ldur	s0, [x29, #-84]
	str	s0, [sp, #16]                   // 4-byte Folded Spill
	ldr	w2, [sp, #100]
	ldr	w3, [sp, #96]
	ldr	w4, [sp, #92]
	ldur	x8, [x29, #-32]
	str	x8, [sp, #72]
	ldur	w8, [x29, #-24]
	str	w8, [sp, #80]
	ldr	x0, [sp, #72]
	ldr	x1, [sp, #80]
	bl	get_pixel
	scvtf	s0, w0
	str	s0, [sp, #12]                   // 4-byte Folded Spill
	ldur	s1, [x29, #-84]
	fmov	s0, #1.00000000
	fsub	s0, s0, s1
	str	s0, [sp, #8]                    // 4-byte Folded Spill
	ldr	w2, [sp, #100]
	ldr	w3, [sp, #96]
	ldr	w4, [sp, #92]
	ldur	x8, [x29, #-64]
	str	x8, [sp, #56]
	ldur	w8, [x29, #-56]
	str	w8, [sp, #64]
	ldr	x0, [sp, #56]
	ldr	x1, [sp, #64]
	bl	get_pixel
	ldr	s2, [sp, #8]                    // 4-byte Folded Reload
	ldr	s1, [sp, #12]                   // 4-byte Folded Reload
	ldr	s0, [sp, #16]                   // 4-byte Folded Reload
	scvtf	s3, w0
	fmul	s2, s2, s3
	fmadd	s0, s0, s1, s2
	str	s0, [sp, #88]
	ldr	w2, [sp, #100]
	ldr	w3, [sp, #96]
	ldr	w4, [sp, #92]
	ldr	s0, [sp, #88]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #40]
	ldur	w8, [x29, #-8]
	str	w8, [sp, #48]
	ldr	x0, [sp, #40]
	ldr	x1, [sp, #48]
	bl	set_pixel
	b	.LBB0_10
.LBB0_10:                               //   in Loop: Header=BB0_8 Depth=3
	ldr	w8, [sp, #100]
	add	w8, w8, #1
	str	w8, [sp, #100]
	b	.LBB0_8
.LBB0_11:                               //   in Loop: Header=BB0_6 Depth=2
	b	.LBB0_12
.LBB0_12:                               //   in Loop: Header=BB0_6 Depth=2
	ldr	w8, [sp, #96]
	add	w8, w8, #1
	str	w8, [sp, #96]
	b	.LBB0_6
.LBB0_13:                               //   in Loop: Header=BB0_4 Depth=1
	b	.LBB0_14
.LBB0_14:                               //   in Loop: Header=BB0_4 Depth=1
	ldr	w8, [sp, #92]
	add	w8, w8, #1
	str	w8, [sp, #92]
	b	.LBB0_4
.LBB0_15:
	ldur	x8, [x29, #-16]
	str	x8, [sp, #24]
	ldur	w8, [x29, #-8]
	str	w8, [sp, #32]
	ldr	x0, [sp, #24]
	ldr	x1, [sp, #32]
	ldp	x29, x30, [sp, #208]            // 16-byte Folded Reload
	add	sp, sp, #224
	ret
.Lfunc_end0:
	.size	blend_image, .Lfunc_end0-blend_image
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym assert
	.addrsig_sym make_image
	.addrsig_sym get_pixel
	.addrsig_sym set_pixel