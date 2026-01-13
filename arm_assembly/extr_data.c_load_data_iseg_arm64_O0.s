	.text
	.globl	load_data_iseg                  // -- Begin function load_data_iseg
	.p2align	2
	.type	load_data_iseg,@function
load_data_iseg:                         // @load_data_iseg
// %bb.0:
	sub	sp, sp, #384
	stp	x29, x30, [sp, #352]            // 16-byte Folded Spill
	str	x28, [sp, #368]                 // 8-byte Folded Spill
	add	x29, sp, #352
	str	x8, [sp, #24]                   // 8-byte Folded Spill
	ldr	w9, [x29, #32]
	ldr	w8, [x29, #40]
	stur	w0, [x29, #-4]
	stur	x1, [x29, #-16]
	stur	w2, [x29, #-20]
	stur	w3, [x29, #-24]
	stur	w4, [x29, #-28]
	stur	w5, [x29, #-32]
	stur	w6, [x29, #-36]
	stur	w7, [x29, #-40]
	stur	w9, [x29, #-44]
	stur	w8, [x29, #-48]
	stur	s0, [x29, #-52]
	stur	s1, [x29, #-56]
	stur	s2, [x29, #-60]
	stur	s3, [x29, #-64]
	stur	s4, [x29, #-68]
	ldur	x0, [x29, #-16]
	ldur	w1, [x29, #-4]
	ldur	w2, [x29, #-20]
	bl	get_random_paths
	mov	x8, x0
	ldr	x0, [sp, #24]                   // 8-byte Folded Reload
	stur	x8, [x29, #-80]
	mov	w1, wzr
	mov	x2, #40
	bl	memset
	ldr	x8, [sp, #24]                   // 8-byte Folded Reload
	str	xzr, [x8, #24]
	ldur	w9, [x29, #-4]
	str	w9, [x8, #8]
	ldr	w0, [x8, #8]
	mov	w1, #8
	bl	calloc
	ldr	x9, [sp, #24]                   // 8-byte Folded Reload
	str	x0, [x9, #16]
	ldur	w8, [x29, #-28]
	ldur	w10, [x29, #-24]
	mul	w8, w8, w10
	mov	w10, #3
	mul	w8, w8, w10
	str	w8, [x9, #12]
	ldur	w0, [x29, #-4]
	ldur	w8, [x29, #-24]
	ldur	w9, [x29, #-40]
	sdiv	w8, w8, w9
	ldur	w9, [x29, #-28]
	ldur	w10, [x29, #-40]
	sdiv	w9, w9, w10
	mul	w8, w8, w9
	add	w8, w8, #1
	ldur	w9, [x29, #-36]
	mul	w1, w8, w9
	bl	make_matrix
	ldr	x9, [sp, #24]                   // 8-byte Folded Reload
	stur	x0, [x29, #-96]
	ldur	x8, [x29, #-96]
	str	x8, [x9]
	stur	wzr, [x29, #-84]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-84]
	ldur	w9, [x29, #-4]
	subs	w8, w8, w9
	b.ge	.LBB0_6
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-80]
	ldursw	x9, [x29, #-84]
	ldr	x0, [x8, x9, lsl #3]
	mov	w2, wzr
	mov	w1, w2
	bl	load_image_color
	stur	x0, [x29, #-128]
	stur	x1, [x29, #-120]
	ldur	x8, [x29, #-128]
	stur	x8, [x29, #-112]
	ldur	w8, [x29, #-120]
	stur	w8, [x29, #-104]
	ldur	s0, [x29, #-52]
	ldur	s1, [x29, #-56]
	ldur	w2, [x29, #-44]
	ldur	w3, [x29, #-48]
	ldur	w4, [x29, #-24]
	ldur	w5, [x29, #-28]
	ldur	x8, [x29, #-112]
	str	x8, [sp, #176]
	ldur	w8, [x29, #-104]
	str	w8, [sp, #184]
	ldr	x0, [sp, #176]
	ldr	x1, [sp, #184]
	sub	x8, x29, #156
	bl	random_augment_args
	ldur	w2, [x29, #-132]
	ldur	w3, [x29, #-136]
	ldur	w4, [x29, #-140]
	ldur	w5, [x29, #-144]
	ldur	w6, [x29, #-148]
	ldur	w7, [x29, #-152]
	ldur	w8, [x29, #-156]
	ldur	x9, [x29, #-112]
	str	x9, [sp, #144]
	ldur	w9, [x29, #-104]
	str	w9, [sp, #152]
	ldr	x0, [sp, #144]
	ldr	x1, [sp, #152]
	mov	x9, sp
	str	w8, [x9]
	bl	rotate_crop_image
	str	x0, [sp, #128]
	str	x1, [sp, #136]
	ldr	x8, [sp, #128]
	str	x8, [sp, #160]
	ldr	w8, [sp, #136]
	str	w8, [sp, #168]
	bl	rand
	mov	w9, #2
	sdiv	w8, w0, w9
	mul	w8, w8, w9
	subs	w8, w0, w8
	str	w8, [sp, #124]
	ldr	w8, [sp, #124]
	cbz	w8, .LBB0_4
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #160]
	str	x8, [sp, #104]
	ldr	w8, [sp, #168]
	str	w8, [sp, #112]
	ldr	x0, [sp, #104]
	ldr	x1, [sp, #112]
	bl	flip_image
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	s0, [x29, #-60]
	ldur	s1, [x29, #-64]
	ldur	s2, [x29, #-68]
	ldr	x8, [sp, #160]
	str	x8, [sp, #88]
	ldr	w8, [sp, #168]
	str	w8, [sp, #96]
	ldr	x0, [sp, #88]
	ldr	x1, [sp, #96]
	bl	random_distort_image
	ldr	x8, [sp, #24]                   // 8-byte Folded Reload
	ldr	w9, [sp, #168]
	ldr	x10, [x8, #16]
	ldursw	x11, [x29, #-84]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-80]
	ldursw	x10, [x29, #-84]
	ldr	x0, [x9, x10, lsl #3]
	ldur	w1, [x29, #-36]
	ldr	x8, [x8]
	ldursw	x9, [x29, #-84]
	ldr	w2, [x8, x9, lsl #2]
	ldur	w3, [x29, #-32]
	ldur	w4, [x29, #-108]
	ldur	w5, [x29, #-112]
	ldr	w7, [sp, #124]
	ldur	w8, [x29, #-24]
	ldur	w9, [x29, #-40]
	sdiv	w10, w8, w9
	ldur	w8, [x29, #-28]
	ldur	w9, [x29, #-40]
	sdiv	w8, w8, w9
	sub	x9, x29, #156
	ldur	q0, [x29, #-156]
	add	x6, sp, #48
	str	q0, [sp, #48]
	ldur	q0, [x9, #12]
	stur	q0, [x6, #12]
	mov	x9, sp
	str	w10, [x9]
	str	w8, [x9, #8]
	bl	fill_truth_iseg
	ldur	x8, [x29, #-112]
	str	x8, [sp, #32]
	ldur	w8, [x29, #-104]
	str	w8, [sp, #40]
	ldr	x0, [sp, #32]
	ldr	x1, [sp, #40]
	bl	free_image
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-84]
	add	w8, w8, #1
	stur	w8, [x29, #-84]
	b	.LBB0_1
.LBB0_6:
	ldur	x0, [x29, #-80]
	bl	free
	ldr	x28, [sp, #368]                 // 8-byte Folded Reload
	ldp	x29, x30, [sp, #352]            // 16-byte Folded Reload
	add	sp, sp, #384
	ret
.Lfunc_end0:
	.size	load_data_iseg, .Lfunc_end0-load_data_iseg
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym get_random_paths
	.addrsig_sym calloc
	.addrsig_sym make_matrix
	.addrsig_sym load_image_color
	.addrsig_sym random_augment_args
	.addrsig_sym rotate_crop_image
	.addrsig_sym rand
	.addrsig_sym flip_image
	.addrsig_sym random_distort_image
	.addrsig_sym fill_truth_iseg
	.addrsig_sym free_image
	.addrsig_sym free