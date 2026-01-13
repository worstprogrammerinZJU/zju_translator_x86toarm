	.text
	.globl	load_data_detection             // -- Begin function load_data_detection
	.p2align	2
	.type	load_data_detection,@function
load_data_detection:                    // @load_data_detection
// %bb.0:
	sub	sp, sp, #208
	stp	x29, x30, [sp, #192]            // 16-byte Folded Spill
	add	x29, sp, #192
	sub	x9, x29, #16
	str	x9, [sp, #24]                   // 8-byte Folded Spill
	mov	x9, x8
	ldr	x8, [sp, #24]                   // 8-byte Folded Reload
	str	x9, [sp, #32]                   // 8-byte Folded Spill
	stur	w0, [x29, #-4]
	str	x1, [x8]
	stur	w2, [x29, #-20]
	stur	w3, [x29, #-24]
	stur	w4, [x29, #-28]
	stur	w5, [x29, #-32]
	stur	w6, [x29, #-36]
	stur	s0, [x29, #-40]
	stur	s1, [x29, #-44]
	stur	s2, [x29, #-48]
	stur	s3, [x29, #-52]
	ldr	x0, [x8]
	ldur	w1, [x29, #-4]
	ldur	w2, [x29, #-20]
	bl	get_random_paths
	mov	x8, x0
	ldr	x0, [sp, #32]                   // 8-byte Folded Reload
	stur	x8, [x29, #-64]
	mov	w1, wzr
	mov	x2, #40
	bl	memset
	ldr	x8, [sp, #32]                   // 8-byte Folded Reload
	str	xzr, [x8, #24]
	ldur	w9, [x29, #-4]
	str	w9, [x8, #8]
	ldr	w0, [x8, #8]
	mov	w1, #8
	bl	calloc
	ldr	x9, [sp, #32]                   // 8-byte Folded Reload
	str	x0, [x9, #16]
	ldur	w8, [x29, #-28]
	ldur	w10, [x29, #-24]
	mul	w8, w8, w10
	mov	w10, #3
	mul	w8, w8, w10
	str	w8, [x9, #12]
	ldur	w0, [x29, #-4]
	ldur	w9, [x29, #-32]
	mov	w8, #5
	mul	w1, w8, w9
	bl	make_matrix
	ldr	x9, [sp, #32]                   // 8-byte Folded Reload
	stur	x0, [x29, #-80]
	ldur	x8, [x29, #-80]
	str	x8, [x9]
	stur	wzr, [x29, #-68]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-68]
	ldur	w9, [x29, #-4]
	subs	w8, w8, w9
	b.ge	.LBB0_9
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-64]
	ldursw	x9, [x29, #-68]
	ldr	x0, [x8, x9, lsl #3]
	mov	w2, wzr
	mov	w1, w2
	bl	load_image_color
	str	x0, [sp, #96]
	str	x1, [sp, #104]
	ldur	w0, [x29, #-24]
	ldur	w1, [x29, #-28]
	ldr	w2, [sp, #108]
	bl	make_image
	str	x0, [sp, #80]
	str	x1, [sp, #88]
	ldr	x0, [sp, #80]
	ldr	x1, [sp, #88]
	fmov	d0, #0.50000000
	bl	fill_image
	ldur	s0, [x29, #-40]
	ldr	s1, [sp, #96]
	fmul	s0, s0, s1
	str	s0, [sp, #76]
	ldur	s0, [x29, #-40]
	ldr	s1, [sp, #100]
	fmul	s0, s0, s1
	str	s0, [sp, #72]
	ldr	s0, [sp, #96]
	str	s0, [sp, #12]                   // 4-byte Folded Spill
	ldr	s0, [sp, #76]
	fneg	s0, s0
	ldr	s1, [sp, #76]
	fcvtzs	w0, s1
	bl	rand_uniform
	fmov	s1, s0
	ldr	s0, [sp, #12]                   // 4-byte Folded Reload
	fadd	s0, s0, s1
	str	s0, [sp, #20]                   // 4-byte Folded Spill
	ldr	s0, [sp, #100]
	str	s0, [sp, #16]                   // 4-byte Folded Spill
	ldr	s0, [sp, #72]
	fneg	s0, s0
	ldr	s1, [sp, #72]
	fcvtzs	w0, s1
	bl	rand_uniform
	ldr	s1, [sp, #16]                   // 4-byte Folded Reload
	fmov	s2, s0
	ldr	s0, [sp, #20]                   // 4-byte Folded Reload
	fadd	s1, s1, s2
	fdiv	s0, s0, s1
	str	s0, [sp, #68]
	fmov	s1, #1.00000000
	str	s1, [sp, #64]
	ldr	s0, [sp, #68]
	fcmp	s0, s1
	b.pl	.LBB0_4
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	s0, [sp, #64]
	ldur	s1, [x29, #-28]
	scvtf	s1, s1
	fmul	s0, s0, s1
	str	s0, [sp, #56]
	ldr	s0, [sp, #56]
	ldr	s1, [sp, #68]
	fmul	s0, s0, s1
	str	s0, [sp, #60]
	b	.LBB0_5
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	s0, [sp, #64]
	ldur	s1, [x29, #-24]
	scvtf	s1, s1
	fmul	s0, s0, s1
	str	s0, [sp, #60]
	ldr	s0, [sp, #60]
	ldr	s1, [sp, #68]
	fdiv	s0, s0, s1
	str	s0, [sp, #56]
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	s0, [x29, #-24]
	scvtf	s0, s0
	ldr	s1, [sp, #60]
	fsub	s0, s0, s1
	fcvtzs	w0, s0
	movi	d0, #0000000000000000
	str	s0, [sp, #8]                    // 4-byte Folded Spill
	bl	rand_uniform
	fmov	s1, s0
	ldr	s0, [sp, #8]                    // 4-byte Folded Reload
	str	s1, [sp, #52]
	ldur	s1, [x29, #-28]
	scvtf	s1, s1
	ldr	s2, [sp, #56]
	fsub	s1, s1, s2
	fcvtzs	w0, s1
	bl	rand_uniform
	str	s0, [sp, #48]
	ldr	s0, [sp, #60]
	ldr	s1, [sp, #56]
	ldr	s2, [sp, #52]
	ldr	s3, [sp, #48]
	ldr	x0, [sp, #96]
	ldr	x1, [sp, #104]
	ldr	x2, [sp, #80]
	ldr	x3, [sp, #88]
	bl	place_image
	ldur	s0, [x29, #-44]
	ldur	s1, [x29, #-48]
	ldur	s2, [x29, #-52]
	ldr	x0, [sp, #80]
	ldr	x1, [sp, #88]
	bl	random_distort_image
	bl	rand
	mov	w9, #2
	sdiv	w8, w0, w9
	mul	w8, w8, w9
	subs	w8, w0, w8
	str	w8, [sp, #44]
	ldr	w8, [sp, #44]
	cbz	w8, .LBB0_7
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x0, [sp, #80]
	ldr	x1, [sp, #88]
	bl	flip_image
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #32]                   // 8-byte Folded Reload
	ldr	w9, [sp, #88]
	ldr	x10, [x8, #16]
	ldursw	x11, [x29, #-68]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-64]
	ldursw	x10, [x29, #-68]
	ldr	x0, [x9, x10, lsl #3]
	ldur	w1, [x29, #-32]
	ldr	x8, [x8]
	ldursw	x9, [x29, #-68]
	ldr	w2, [x8, x9, lsl #2]
	ldur	w3, [x29, #-36]
	ldr	w4, [sp, #44]
	ldr	s0, [sp, #52]
	fneg	s0, s0
	ldur	s1, [x29, #-24]
	scvtf	s1, s1
	fdiv	s0, s0, s1
	ldr	s1, [sp, #48]
	fneg	s1, s1
	ldur	s2, [x29, #-28]
	scvtf	s2, s2
	fdiv	s1, s1, s2
	ldr	s2, [sp, #60]
	ldur	s3, [x29, #-24]
	scvtf	s3, s3
	fdiv	s2, s2, s3
	ldr	s3, [sp, #56]
	ldur	s4, [x29, #-28]
	scvtf	s4, s4
	fdiv	s3, s3, s4
	bl	fill_truth_detection
	ldr	x0, [sp, #96]
	ldr	x1, [sp, #104]
	bl	free_image
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-68]
	add	w8, w8, #1
	stur	w8, [x29, #-68]
	b	.LBB0_1
.LBB0_9:
	ldur	x0, [x29, #-64]
	bl	free
	ldp	x29, x30, [sp, #192]            // 16-byte Folded Reload
	add	sp, sp, #208
	ret
.Lfunc_end0:
	.size	load_data_detection, .Lfunc_end0-load_data_detection
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym get_random_paths
	.addrsig_sym calloc
	.addrsig_sym make_matrix
	.addrsig_sym load_image_color
	.addrsig_sym make_image
	.addrsig_sym fill_image
	.addrsig_sym rand_uniform
	.addrsig_sym place_image
	.addrsig_sym random_distort_image
	.addrsig_sym rand
	.addrsig_sym flip_image
	.addrsig_sym fill_truth_detection
	.addrsig_sym free_image
	.addrsig_sym free