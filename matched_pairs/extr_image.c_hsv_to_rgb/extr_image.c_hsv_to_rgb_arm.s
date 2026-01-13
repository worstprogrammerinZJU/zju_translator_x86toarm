	.text
	.globl	hsv_to_rgb                      // -- Begin function hsv_to_rgb
	.p2align	2
	.type	hsv_to_rgb,@function
hsv_to_rgb:                             // @hsv_to_rgb
// %bb.0:
	sub	sp, sp, #208
	stp	x29, x30, [sp, #192]            // 16-byte Folded Spill
	add	x29, sp, #192
	stur	x0, [x29, #-32]
	stur	x1, [x29, #-24]
	ldur	x8, [x29, #-32]
	stur	x8, [x29, #-16]
	ldur	w8, [x29, #-24]
	stur	w8, [x29, #-8]
	ldur	w8, [x29, #-16]
	subs	w8, w8, #3
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	stur	wzr, [x29, #-40]
	b	.LBB0_1
.LBB0_1:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_3 Depth 2
	ldur	w8, [x29, #-40]
	ldur	w9, [x29, #-12]
	subs	w8, w8, w9
	b.ge	.LBB0_26
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	stur	wzr, [x29, #-36]
	b	.LBB0_3
.LBB0_3:                                //   Parent Loop BB0_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldur	w8, [x29, #-36]
	ldur	w9, [x29, #-8]
	subs	w8, w8, w9
	b.ge	.LBB0_24
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_3 Depth=2
	ldur	w2, [x29, #-36]
	ldur	w3, [x29, #-40]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #96]
	ldur	w8, [x29, #-8]
	str	w8, [sp, #104]
	ldr	x0, [sp, #96]
	ldr	x1, [sp, #104]
	mov	w4, wzr
	bl	get_pixel
	mov	w8, #6
	mul	w8, w8, w0
	scvtf	s0, w8
	stur	s0, [x29, #-56]
	ldur	w2, [x29, #-36]
	ldur	w3, [x29, #-40]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #80]
	ldur	w8, [x29, #-8]
	str	w8, [sp, #88]
	ldr	x0, [sp, #80]
	ldr	x1, [sp, #88]
	mov	w4, #1
	bl	get_pixel
	scvtf	s0, w0
	stur	s0, [x29, #-60]
	ldur	w2, [x29, #-36]
	ldur	w3, [x29, #-40]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #64]
	ldur	w8, [x29, #-8]
	str	w8, [sp, #72]
	ldr	x0, [sp, #64]
	ldr	x1, [sp, #72]
	mov	w4, #2
	bl	get_pixel
	scvtf	s0, w0
	stur	s0, [x29, #-64]
	ldur	s0, [x29, #-60]
	fcmp	s0, #0.0
	b.ne	.LBB0_6
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_3 Depth=2
	ldur	w8, [x29, #-64]
	stur	w8, [x29, #-52]
	stur	w8, [x29, #-48]
	stur	w8, [x29, #-44]
	b	.LBB0_22
.LBB0_6:                                //   in Loop: Header=BB0_3 Depth=2
	ldur	s0, [x29, #-56]
	bl	floor
	str	w0, [sp, #60]
	ldur	s0, [x29, #-56]
	ldr	s1, [sp, #60]
	scvtf	s1, s1
	fsub	s0, s0, s1
	stur	s0, [x29, #-68]
	ldur	s0, [x29, #-64]
	ldur	s1, [x29, #-60]
	fmov	s3, #1.00000000
	fsub	s1, s3, s1
	fmul	s0, s0, s1
	stur	s0, [x29, #-72]
	ldur	s0, [x29, #-64]
	ldur	s1, [x29, #-60]
	ldur	s2, [x29, #-68]
	fmsub	s1, s1, s2, s3
	fmul	s0, s0, s1
	stur	s0, [x29, #-76]
	ldur	s0, [x29, #-64]
	ldur	s1, [x29, #-60]
	ldur	s2, [x29, #-68]
	fsub	s2, s3, s2
	fmsub	s1, s1, s2, s3
	fmul	s0, s0, s1
	stur	s0, [x29, #-80]
	ldr	w8, [sp, #60]
	cbnz	w8, .LBB0_8
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_3 Depth=2
	ldur	w8, [x29, #-64]
	stur	w8, [x29, #-44]
	ldur	w8, [x29, #-80]
	stur	w8, [x29, #-48]
	ldur	w8, [x29, #-72]
	stur	w8, [x29, #-52]
	b	.LBB0_21
.LBB0_8:                                //   in Loop: Header=BB0_3 Depth=2
	ldr	w8, [sp, #60]
	subs	w8, w8, #1
	b.ne	.LBB0_10
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_3 Depth=2
	ldur	w8, [x29, #-76]
	stur	w8, [x29, #-44]
	ldur	w8, [x29, #-64]
	stur	w8, [x29, #-48]
	ldur	w8, [x29, #-72]
	stur	w8, [x29, #-52]
	b	.LBB0_20
.LBB0_10:                               //   in Loop: Header=BB0_3 Depth=2
	ldr	w8, [sp, #60]
	subs	w8, w8, #2
	b.ne	.LBB0_12
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_3 Depth=2
	ldur	w8, [x29, #-72]
	stur	w8, [x29, #-44]
	ldur	w8, [x29, #-64]
	stur	w8, [x29, #-48]
	ldur	w8, [x29, #-80]
	stur	w8, [x29, #-52]
	b	.LBB0_19
.LBB0_12:                               //   in Loop: Header=BB0_3 Depth=2
	ldr	w8, [sp, #60]
	subs	w8, w8, #3
	b.ne	.LBB0_14
	b	.LBB0_13
.LBB0_13:                               //   in Loop: Header=BB0_3 Depth=2
	ldur	w8, [x29, #-72]
	stur	w8, [x29, #-44]
	ldur	w8, [x29, #-76]
	stur	w8, [x29, #-48]
	ldur	w8, [x29, #-64]
	stur	w8, [x29, #-52]
	b	.LBB0_18
.LBB0_14:                               //   in Loop: Header=BB0_3 Depth=2
	ldr	w8, [sp, #60]
	subs	w8, w8, #4
	b.ne	.LBB0_16
	b	.LBB0_15
.LBB0_15:                               //   in Loop: Header=BB0_3 Depth=2
	ldur	w8, [x29, #-80]
	stur	w8, [x29, #-44]
	ldur	w8, [x29, #-72]
	stur	w8, [x29, #-48]
	ldur	w8, [x29, #-64]
	stur	w8, [x29, #-52]
	b	.LBB0_17
.LBB0_16:                               //   in Loop: Header=BB0_3 Depth=2
	ldur	w8, [x29, #-64]
	stur	w8, [x29, #-44]
	ldur	w8, [x29, #-72]
	stur	w8, [x29, #-48]
	ldur	w8, [x29, #-76]
	stur	w8, [x29, #-52]
	b	.LBB0_17
.LBB0_17:                               //   in Loop: Header=BB0_3 Depth=2
	b	.LBB0_18
.LBB0_18:                               //   in Loop: Header=BB0_3 Depth=2
	b	.LBB0_19
.LBB0_19:                               //   in Loop: Header=BB0_3 Depth=2
	b	.LBB0_20
.LBB0_20:                               //   in Loop: Header=BB0_3 Depth=2
	b	.LBB0_21
.LBB0_21:                               //   in Loop: Header=BB0_3 Depth=2
	b	.LBB0_22
.LBB0_22:                               //   in Loop: Header=BB0_3 Depth=2
	ldur	w2, [x29, #-36]
	ldur	w3, [x29, #-40]
	ldur	s0, [x29, #-44]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #40]
	ldur	w8, [x29, #-8]
	str	w8, [sp, #48]
	ldr	x0, [sp, #40]
	ldr	x1, [sp, #48]
	mov	w4, wzr
	bl	set_pixel
	ldur	w2, [x29, #-36]
	ldur	w3, [x29, #-40]
	ldur	s0, [x29, #-48]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #24]
	ldur	w8, [x29, #-8]
	str	w8, [sp, #32]
	ldr	x0, [sp, #24]
	ldr	x1, [sp, #32]
	mov	w4, #1
	bl	set_pixel
	ldur	w2, [x29, #-36]
	ldur	w3, [x29, #-40]
	ldur	s0, [x29, #-52]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #8]
	ldur	w8, [x29, #-8]
	str	w8, [sp, #16]
	ldr	x0, [sp, #8]
	ldr	x1, [sp, #16]
	mov	w4, #2
	bl	set_pixel
	b	.LBB0_23
.LBB0_23:                               //   in Loop: Header=BB0_3 Depth=2
	ldur	w8, [x29, #-36]
	add	w8, w8, #1
	stur	w8, [x29, #-36]
	b	.LBB0_3
.LBB0_24:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_25
.LBB0_25:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-40]
	add	w8, w8, #1
	stur	w8, [x29, #-40]
	b	.LBB0_1
.LBB0_26:
	ldp	x29, x30, [sp, #192]            // 16-byte Folded Reload
	add	sp, sp, #208
	ret
.Lfunc_end0:
	.size	hsv_to_rgb, .Lfunc_end0-hsv_to_rgb
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym assert
	.addrsig_sym get_pixel
	.addrsig_sym floor
	.addrsig_sym set_pixel