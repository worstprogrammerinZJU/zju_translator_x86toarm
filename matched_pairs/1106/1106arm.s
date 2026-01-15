	.text
	.globl	hue_image                       // -- Begin function hue_image
	.p2align	2
	.type	hue_image,@function
hue_image:                              // @hue_image
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	str	x0, [sp, #16]
	str	x1, [sp, #24]
	str	s0, [sp, #12]
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #24]
	bl	rgb_to_hsv
	str	wzr, [sp, #8]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #8]
	ldr	w9, [sp, #16]
	ldr	w10, [sp, #20]
	mul	w9, w9, w10
	subs	w8, w8, w9
	b.ge	.LBB0_8
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #24]
	ldrsw	x9, [sp, #8]
	ldr	s0, [x8, x9, lsl #2]
	ldr	s1, [sp, #12]
	fadd	s0, s0, s1
	ldr	x8, [sp, #24]
	ldrsw	x9, [sp, #8]
	str	s0, [x8, x9, lsl #2]
	ldr	x8, [sp, #24]
	ldrsw	x9, [sp, #8]
	ldr	s0, [x8, x9, lsl #2]
	fmov	s1, #1.00000000
	fcmp	s0, s1
	b.le	.LBB0_4
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #24]
	ldrsw	x9, [sp, #8]
	add	x8, x8, x9, lsl #2
	ldr	s0, [x8]
	fmov	s1, #1.00000000
	fsub	s0, s0, s1
	str	s0, [x8]
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #24]
	ldrsw	x9, [sp, #8]
	ldr	s0, [x8, x9, lsl #2]
	fcmp	s0, #0.0
	b.pl	.LBB0_6
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #24]
	ldrsw	x9, [sp, #8]
	add	x8, x8, x9, lsl #2
	ldr	s0, [x8]
	fmov	s1, #1.00000000
	fadd	s0, s0, s1
	str	s0, [x8]
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #8]
	add	w8, w8, #1
	str	w8, [sp, #8]
	b	.LBB0_1
.LBB0_8:
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #24]
	bl	hsv_to_rgb
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #24]
	bl	constrain_image
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	hue_image, .Lfunc_end0-hue_image
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym rgb_to_hsv
	.addrsig_sym hsv_to_rgb
	.addrsig_sym constrain_image