	.text
	.globl	rgb_to_hsv                      // -- Begin function rgb_to_hsv
	.p2align	2
	.type	rgb_to_hsv,@function
rgb_to_hsv:                             // @rgb_to_hsv
// %bb.0:
	sub	sp, sp, #192
	stp	x29, x30, [sp, #176]            // 16-byte Folded Spill
	add	x29, sp, #176
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
	b.ge	.LBB0_19
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	stur	wzr, [x29, #-36]
	b	.LBB0_3
.LBB0_3:                                //   Parent Loop BB0_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldur	w8, [x29, #-36]
	ldur	w9, [x29, #-8]
	subs	w8, w8, w9
	b.ge	.LBB0_17
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_3 Depth=2
	ldur	w2, [x29, #-36]
	ldur	w3, [x29, #-40]
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-80]
	ldur	w8, [x29, #-8]
	stur	w8, [x29, #-72]
	ldur	x0, [x29, #-80]
	ldur	x1, [x29, #-72]
	mov	w4, wzr
	bl	get_pixel
	stur	s0, [x29, #-44]
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
	stur	s0, [x29, #-48]
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
	stur	s0, [x29, #-52]
	ldur	s0, [x29, #-44]
	ldur	s1, [x29, #-48]
	ldur	s2, [x29, #-52]
	bl	three_way_max
	str	s0, [sp, #60]
	ldur	s0, [x29, #-44]
	ldur	s1, [x29, #-48]
	ldur	s2, [x29, #-52]
	bl	three_way_min
	str	s0, [sp, #56]
	ldr	s0, [sp, #60]
	ldr	s1, [sp, #56]
	fsub	s0, s0, s1
	str	s0, [sp, #52]
	ldr	w8, [sp, #60]
	stur	w8, [x29, #-64]
	ldr	s0, [sp, #60]
	fcmp	s0, #0.0
	b.ne	.LBB0_6
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_3 Depth=2
	movi	d0, #0000000000000000
	stur	s0, [x29, #-60]
	stur	s0, [x29, #-56]
	b	.LBB0_15
.LBB0_6:                                //   in Loop: Header=BB0_3 Depth=2
	ldr	s0, [sp, #52]
	ldr	s1, [sp, #60]
	fdiv	s0, s0, s1
	stur	s0, [x29, #-60]
	ldur	s0, [x29, #-44]
	ldr	s1, [sp, #60]
	fcmp	s0, s1
	b.ne	.LBB0_8
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_3 Depth=2
	ldur	s0, [x29, #-48]
	ldur	s1, [x29, #-52]
	fsub	s0, s0, s1
	ldr	s1, [sp, #52]
	fdiv	s0, s0, s1
	stur	s0, [x29, #-56]
	b	.LBB0_12
.LBB0_8:                                //   in Loop: Header=BB0_3 Depth=2
	ldur	s0, [x29, #-48]
	ldr	s1, [sp, #60]
	fcmp	s0, s1
	b.ne	.LBB0_10
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_3 Depth=2
	ldur	s0, [x29, #-52]
	ldur	s1, [x29, #-44]
	fsub	s0, s0, s1
	ldr	s1, [sp, #52]
	fdiv	s1, s0, s1
	fmov	s0, #2.00000000
	fadd	s0, s0, s1
	stur	s0, [x29, #-56]
	b	.LBB0_11
.LBB0_10:                               //   in Loop: Header=BB0_3 Depth=2
	ldur	s0, [x29, #-44]
	ldur	s1, [x29, #-48]
	fsub	s0, s0, s1
	ldr	s1, [sp, #52]
	fdiv	s1, s0, s1
	fmov	s0, #4.00000000
	fadd	s0, s0, s1
	stur	s0, [x29, #-56]
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_3 Depth=2
	b	.LBB0_12
.LBB0_12:                               //   in Loop: Header=BB0_3 Depth=2
	ldur	s0, [x29, #-56]
	fcmp	s0, #0.0
	b.pl	.LBB0_14
	b	.LBB0_13
.LBB0_13:                               //   in Loop: Header=BB0_3 Depth=2
	ldur	s0, [x29, #-56]
	fmov	s1, #6.00000000
	fadd	s0, s0, s1
	stur	s0, [x29, #-56]
	b	.LBB0_14
.LBB0_14:                               //   in Loop: Header=BB0_3 Depth=2
	ldur	s0, [x29, #-56]
	fcvt	d0, s0
	fmov	d1, #6.00000000
	fdiv	d0, d0, d1
	fcvt	s0, d0
	stur	s0, [x29, #-56]
	b	.LBB0_15
.LBB0_15:                               //   in Loop: Header=BB0_3 Depth=2
	ldur	w2, [x29, #-36]
	ldur	w3, [x29, #-40]
	ldur	s0, [x29, #-56]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #32]
	ldur	w8, [x29, #-8]
	str	w8, [sp, #40]
	ldr	x0, [sp, #32]
	ldr	x1, [sp, #40]
	mov	w4, wzr
	bl	set_pixel
	ldur	w2, [x29, #-36]
	ldur	w3, [x29, #-40]
	ldur	s0, [x29, #-60]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #16]
	ldur	w8, [x29, #-8]
	str	w8, [sp, #24]
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #24]
	mov	w4, #1
	bl	set_pixel
	ldur	w2, [x29, #-36]
	ldur	w3, [x29, #-40]
	ldur	s0, [x29, #-64]
	ldur	x8, [x29, #-16]
	str	x8, [sp]
	ldur	w8, [x29, #-8]
	str	w8, [sp, #8]
	ldr	x0, [sp]
	ldr	x1, [sp, #8]
	mov	w4, #2
	bl	set_pixel
	b	.LBB0_16
.LBB0_16:                               //   in Loop: Header=BB0_3 Depth=2
	ldur	w8, [x29, #-36]
	add	w8, w8, #1
	stur	w8, [x29, #-36]
	b	.LBB0_3
.LBB0_17:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_18
.LBB0_18:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-40]
	add	w8, w8, #1
	stur	w8, [x29, #-40]
	b	.LBB0_1
.LBB0_19:
	ldp	x29, x30, [sp, #176]            // 16-byte Folded Reload
	add	sp, sp, #192
	ret
.Lfunc_end0:
	.size	rgb_to_hsv, .Lfunc_end0-rgb_to_hsv
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym assert
	.addrsig_sym get_pixel
	.addrsig_sym three_way_max
	.addrsig_sym three_way_min
	.addrsig_sym set_pixel