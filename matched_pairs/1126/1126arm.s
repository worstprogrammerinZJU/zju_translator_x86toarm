	.text
	.globl	resize_image                    // -- Begin function resize_image
	.p2align	2
	.type	resize_image,@function
resize_image:                           // @resize_image
// %bb.0:
	sub	sp, sp, #384
	stp	x29, x30, [sp, #352]            // 16-byte Folded Spill
	str	x28, [sp, #368]                 // 8-byte Folded Spill
	add	x29, sp, #352
	stur	x0, [x29, #-48]
	stur	x1, [x29, #-40]
	ldur	x8, [x29, #-48]
	stur	x8, [x29, #-32]
	ldur	w8, [x29, #-40]
	stur	w8, [x29, #-24]
	stur	w2, [x29, #-52]
	stur	w3, [x29, #-56]
	ldur	w0, [x29, #-52]
	ldur	w1, [x29, #-56]
	ldur	w2, [x29, #-32]
	bl	make_image
	stur	x0, [x29, #-72]
	stur	x1, [x29, #-64]
	ldur	x8, [x29, #-72]
	stur	x8, [x29, #-16]
	ldur	w8, [x29, #-64]
	stur	w8, [x29, #-8]
	ldur	w0, [x29, #-52]
	ldur	w1, [x29, #-28]
	ldur	w2, [x29, #-32]
	bl	make_image
	stur	x0, [x29, #-104]
	stur	x1, [x29, #-96]
	ldur	x8, [x29, #-104]
	stur	x8, [x29, #-88]
	ldur	w8, [x29, #-96]
	stur	w8, [x29, #-80]
	ldur	w8, [x29, #-24]
	subs	w8, w8, #1
	scvtf	s0, w8
	ldur	w8, [x29, #-52]
	subs	w8, w8, #1
	scvtf	s1, w8
	fdiv	s0, s0, s1
	stur	s0, [x29, #-120]
	ldur	w8, [x29, #-28]
	subs	w8, w8, #1
	scvtf	s0, w8
	ldur	w8, [x29, #-56]
	subs	w8, w8, #1
	scvtf	s1, w8
	fdiv	s0, s0, s1
	stur	s0, [x29, #-124]
	stur	wzr, [x29, #-116]
	b	.LBB0_1
.LBB0_1:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_3 Depth 2
                                        //       Child Loop BB0_5 Depth 3
	ldur	w8, [x29, #-116]
	ldur	w9, [x29, #-32]
	subs	w8, w8, w9
	b.ge	.LBB0_16
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	stur	wzr, [x29, #-108]
	b	.LBB0_3
.LBB0_3:                                //   Parent Loop BB0_1 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB0_5 Depth 3
	ldur	w8, [x29, #-108]
	ldur	w9, [x29, #-28]
	subs	w8, w8, w9
	b.ge	.LBB0_14
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_3 Depth=2
	stur	wzr, [x29, #-112]
	b	.LBB0_5
.LBB0_5:                                //   Parent Loop BB0_1 Depth=1
                                        //     Parent Loop BB0_3 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	ldur	w8, [x29, #-112]
	ldur	w9, [x29, #-52]
	subs	w8, w8, w9
	b.ge	.LBB0_12
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_5 Depth=3
	movi	d0, #0000000000000000
	stur	s0, [x29, #-128]
	ldur	w8, [x29, #-112]
	ldur	w9, [x29, #-52]
	subs	w9, w9, #1
	subs	w8, w8, w9
	b.eq	.LBB0_8
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_5 Depth=3
	ldur	w8, [x29, #-24]
	subs	w8, w8, #1
	b.ne	.LBB0_9
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_5 Depth=3
	ldur	w8, [x29, #-24]
	subs	w2, w8, #1
	ldur	w3, [x29, #-108]
	ldur	w4, [x29, #-116]
	ldur	x8, [x29, #-32]
	stur	x8, [x29, #-144]
	ldur	w8, [x29, #-24]
	stur	w8, [x29, #-136]
	ldur	x0, [x29, #-144]
	ldur	x1, [x29, #-136]
	bl	get_pixel
	stur	s0, [x29, #-128]
	b	.LBB0_10
.LBB0_9:                                //   in Loop: Header=BB0_5 Depth=3
	ldur	s0, [x29, #-112]
	scvtf	s0, s0
	ldur	s1, [x29, #-120]
	fmul	s0, s0, s1
	stur	s0, [x29, #-148]
	ldur	s0, [x29, #-148]
	fcvtzs	w8, s0
	stur	w8, [x29, #-152]
	ldur	s0, [x29, #-148]
	ldur	s1, [x29, #-152]
	scvtf	s1, s1
	fsub	s0, s0, s1
	stur	s0, [x29, #-156]
	ldur	s1, [x29, #-156]
	fmov	s0, #1.00000000
	fsub	s0, s0, s1
	str	s0, [sp, #20]                   // 4-byte Folded Spill
	ldur	w2, [x29, #-152]
	ldur	w3, [x29, #-108]
	ldur	w4, [x29, #-116]
	ldur	x8, [x29, #-32]
	str	x8, [sp, #176]
	ldur	w8, [x29, #-24]
	str	w8, [sp, #184]
	ldr	x0, [sp, #176]
	ldr	x1, [sp, #184]
	bl	get_pixel
	str	s0, [sp, #16]                   // 4-byte Folded Spill
	ldur	s0, [x29, #-156]
	str	s0, [sp, #12]                   // 4-byte Folded Spill
	ldur	w8, [x29, #-152]
	add	w2, w8, #1
	ldur	w3, [x29, #-108]
	ldur	w4, [x29, #-116]
	ldur	x8, [x29, #-32]
	str	x8, [sp, #160]
	ldur	w8, [x29, #-24]
	str	w8, [sp, #168]
	ldr	x0, [sp, #160]
	ldr	x1, [sp, #168]
	bl	get_pixel
	ldr	s2, [sp, #12]                   // 4-byte Folded Reload
	ldr	s1, [sp, #16]                   // 4-byte Folded Reload
	fmov	s3, s0
	ldr	s0, [sp, #20]                   // 4-byte Folded Reload
	fmul	s2, s2, s3
	fmadd	s0, s0, s1, s2
	stur	s0, [x29, #-128]
	b	.LBB0_10
.LBB0_10:                               //   in Loop: Header=BB0_5 Depth=3
	ldur	w2, [x29, #-112]
	ldur	w3, [x29, #-108]
	ldur	w4, [x29, #-116]
	ldur	s0, [x29, #-128]
	ldur	x8, [x29, #-88]
	str	x8, [sp, #144]
	ldur	w8, [x29, #-80]
	str	w8, [sp, #152]
	ldr	x0, [sp, #144]
	ldr	x1, [sp, #152]
	bl	set_pixel
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_5 Depth=3
	ldur	w8, [x29, #-112]
	add	w8, w8, #1
	stur	w8, [x29, #-112]
	b	.LBB0_5
.LBB0_12:                               //   in Loop: Header=BB0_3 Depth=2
	b	.LBB0_13
.LBB0_13:                               //   in Loop: Header=BB0_3 Depth=2
	ldur	w8, [x29, #-108]
	add	w8, w8, #1
	stur	w8, [x29, #-108]
	b	.LBB0_3
.LBB0_14:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_15
.LBB0_15:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-116]
	add	w8, w8, #1
	stur	w8, [x29, #-116]
	b	.LBB0_1
.LBB0_16:
	stur	wzr, [x29, #-116]
	b	.LBB0_17
.LBB0_17:                               // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_19 Depth 2
                                        //       Child Loop BB0_21 Depth 3
                                        //       Child Loop BB0_28 Depth 3
	ldur	w8, [x29, #-116]
	ldur	w9, [x29, #-32]
	subs	w8, w8, w9
	b.ge	.LBB0_35
	b	.LBB0_18
.LBB0_18:                               //   in Loop: Header=BB0_17 Depth=1
	stur	wzr, [x29, #-108]
	b	.LBB0_19
.LBB0_19:                               //   Parent Loop BB0_17 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB0_21 Depth 3
                                        //       Child Loop BB0_28 Depth 3
	ldur	w8, [x29, #-108]
	ldur	w9, [x29, #-56]
	subs	w8, w8, w9
	b.ge	.LBB0_33
	b	.LBB0_20
.LBB0_20:                               //   in Loop: Header=BB0_19 Depth=2
	ldur	s0, [x29, #-108]
	scvtf	s0, s0
	ldur	s1, [x29, #-124]
	fmul	s0, s0, s1
	str	s0, [sp, #140]
	ldr	s0, [sp, #140]
	fcvtzs	w8, s0
	str	w8, [sp, #136]
	ldr	s0, [sp, #140]
	ldr	s1, [sp, #136]
	scvtf	s1, s1
	fsub	s0, s0, s1
	str	s0, [sp, #132]
	stur	wzr, [x29, #-112]
	b	.LBB0_21
.LBB0_21:                               //   Parent Loop BB0_17 Depth=1
                                        //     Parent Loop BB0_19 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	ldur	w8, [x29, #-112]
	ldur	w9, [x29, #-52]
	subs	w8, w8, w9
	b.ge	.LBB0_24
	b	.LBB0_22
.LBB0_22:                               //   in Loop: Header=BB0_21 Depth=3
	ldr	s1, [sp, #132]
	fmov	s0, #1.00000000
	fsub	s0, s0, s1
	str	s0, [sp, #8]                    // 4-byte Folded Spill
	ldur	w2, [x29, #-112]
	ldr	w3, [sp, #136]
	ldur	w4, [x29, #-116]
	ldur	x8, [x29, #-88]
	str	x8, [sp, #112]
	ldur	w8, [x29, #-80]
	str	w8, [sp, #120]
	ldr	x0, [sp, #112]
	ldr	x1, [sp, #120]
	bl	get_pixel
	fmov	s1, s0
	ldr	s0, [sp, #8]                    // 4-byte Folded Reload
	fmul	s0, s0, s1
	str	s0, [sp, #128]
	ldur	w2, [x29, #-112]
	ldur	w3, [x29, #-108]
	ldur	w4, [x29, #-116]
	ldr	s0, [sp, #128]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #96]
	ldur	w8, [x29, #-8]
	str	w8, [sp, #104]
	ldr	x0, [sp, #96]
	ldr	x1, [sp, #104]
	bl	set_pixel
	b	.LBB0_23
.LBB0_23:                               //   in Loop: Header=BB0_21 Depth=3
	ldur	w8, [x29, #-112]
	add	w8, w8, #1
	stur	w8, [x29, #-112]
	b	.LBB0_21
.LBB0_24:                               //   in Loop: Header=BB0_19 Depth=2
	ldur	w8, [x29, #-108]
	ldur	w9, [x29, #-56]
	subs	w9, w9, #1
	subs	w8, w8, w9
	b.eq	.LBB0_26
	b	.LBB0_25
.LBB0_25:                               //   in Loop: Header=BB0_19 Depth=2
	ldur	w8, [x29, #-28]
	subs	w8, w8, #1
	b.ne	.LBB0_27
	b	.LBB0_26
.LBB0_26:                               //   in Loop: Header=BB0_19 Depth=2
	b	.LBB0_32
.LBB0_27:                               //   in Loop: Header=BB0_19 Depth=2
	stur	wzr, [x29, #-112]
	b	.LBB0_28
.LBB0_28:                               //   Parent Loop BB0_17 Depth=1
                                        //     Parent Loop BB0_19 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	ldur	w8, [x29, #-112]
	ldur	w9, [x29, #-52]
	subs	w8, w8, w9
	b.ge	.LBB0_31
	b	.LBB0_29
.LBB0_29:                               //   in Loop: Header=BB0_28 Depth=3
	ldr	s0, [sp, #132]
	str	s0, [sp, #4]                    // 4-byte Folded Spill
	ldur	w2, [x29, #-112]
	ldr	w8, [sp, #136]
	add	w3, w8, #1
	ldur	w4, [x29, #-116]
	ldur	x8, [x29, #-88]
	str	x8, [sp, #72]
	ldur	w8, [x29, #-80]
	str	w8, [sp, #80]
	ldr	x0, [sp, #72]
	ldr	x1, [sp, #80]
	bl	get_pixel
	fmov	s1, s0
	ldr	s0, [sp, #4]                    // 4-byte Folded Reload
	fmul	s0, s0, s1
	str	s0, [sp, #92]
	ldur	w2, [x29, #-112]
	ldur	w3, [x29, #-108]
	ldur	w4, [x29, #-116]
	ldr	s0, [sp, #92]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #56]
	ldur	w8, [x29, #-8]
	str	w8, [sp, #64]
	ldr	x0, [sp, #56]
	ldr	x1, [sp, #64]
	bl	add_pixel
	b	.LBB0_30
.LBB0_30:                               //   in Loop: Header=BB0_28 Depth=3
	ldur	w8, [x29, #-112]
	add	w8, w8, #1
	stur	w8, [x29, #-112]
	b	.LBB0_28
.LBB0_31:                               //   in Loop: Header=BB0_19 Depth=2
	b	.LBB0_32
.LBB0_32:                               //   in Loop: Header=BB0_19 Depth=2
	ldur	w8, [x29, #-108]
	add	w8, w8, #1
	stur	w8, [x29, #-108]
	b	.LBB0_19
.LBB0_33:                               //   in Loop: Header=BB0_17 Depth=1
	b	.LBB0_34
.LBB0_34:                               //   in Loop: Header=BB0_17 Depth=1
	ldur	w8, [x29, #-116]
	add	w8, w8, #1
	stur	w8, [x29, #-116]
	b	.LBB0_17
.LBB0_35:
	ldur	x8, [x29, #-88]
	str	x8, [sp, #40]
	ldur	w8, [x29, #-80]
	str	w8, [sp, #48]
	ldr	x0, [sp, #40]
	ldr	x1, [sp, #48]
	bl	free_image
	ldur	x8, [x29, #-16]
	str	x8, [sp, #24]
	ldur	w8, [x29, #-8]
	str	w8, [sp, #32]
	ldr	x0, [sp, #24]
	ldr	x1, [sp, #32]
	ldr	x28, [sp, #368]                 // 8-byte Folded Reload
	ldp	x29, x30, [sp, #352]            // 16-byte Folded Reload
	add	sp, sp, #384
	ret
.Lfunc_end0:
	.size	resize_image, .Lfunc_end0-resize_image
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym make_image
	.addrsig_sym get_pixel
	.addrsig_sym set_pixel
	.addrsig_sym add_pixel
	.addrsig_sym free_image