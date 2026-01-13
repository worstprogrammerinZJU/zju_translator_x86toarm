	.text
	.globl	load_data_region                // -- Begin function load_data_region
	.p2align	2
	.type	load_data_region,@function
load_data_region:                       // @load_data_region
// %bb.0:
	sub	sp, sp, #384
	stp	x29, x30, [sp, #352]            // 16-byte Folded Spill
	str	x28, [sp, #368]                 // 8-byte Folded Spill
	add	x29, sp, #352
	str	x8, [sp, #16]                   // 8-byte Folded Spill
	stur	w0, [x29, #-4]
	stur	x1, [x29, #-16]
	stur	w2, [x29, #-20]
	stur	w3, [x29, #-24]
	stur	w4, [x29, #-28]
	stur	w5, [x29, #-32]
	stur	w6, [x29, #-36]
	stur	s0, [x29, #-40]
	stur	s1, [x29, #-44]
	stur	s2, [x29, #-48]
	stur	s3, [x29, #-52]
	ldur	x0, [x29, #-16]
	ldur	w1, [x29, #-4]
	ldur	w2, [x29, #-20]
	bl	get_random_paths
	mov	x8, x0
	ldr	x0, [sp, #16]                   // 8-byte Folded Reload
	stur	x8, [x29, #-64]
	mov	w1, wzr
	mov	x2, #40
	bl	memset
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	str	xzr, [x8, #24]
	ldur	w9, [x29, #-4]
	str	w9, [x8, #8]
	ldr	w0, [x8, #8]
	mov	w1, #8
	bl	calloc
	ldr	x9, [sp, #16]                   // 8-byte Folded Reload
	str	x0, [x9, #16]
	ldur	w8, [x29, #-28]
	ldur	w10, [x29, #-24]
	mul	w8, w8, w10
	mov	w10, #3
	mul	w8, w8, w10
	str	w8, [x9, #12]
	ldur	w8, [x29, #-32]
	ldur	w9, [x29, #-32]
	mul	w8, w8, w9
	ldur	w9, [x29, #-36]
	add	w9, w9, #5
	mul	w8, w8, w9
	stur	w8, [x29, #-72]
	ldur	w0, [x29, #-4]
	ldur	w1, [x29, #-72]
	bl	make_matrix
	ldr	x9, [sp, #16]                   // 8-byte Folded Reload
	stur	x0, [x29, #-80]
	ldur	x8, [x29, #-80]
	str	x8, [x9]
	stur	wzr, [x29, #-68]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-68]
	ldur	w9, [x29, #-4]
	subs	w8, w8, w9
	b.ge	.LBB0_6
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-64]
	ldursw	x9, [x29, #-68]
	ldr	x0, [x8, x9, lsl #3]
	mov	w2, wzr
	str	w2, [sp, #12]                   // 4-byte Folded Spill
	mov	w1, w2
	bl	load_image_color
	ldr	w8, [sp, #12]                   // 4-byte Folded Reload
	stur	x0, [x29, #-112]
	stur	x1, [x29, #-104]
	ldur	x9, [x29, #-112]
	stur	x9, [x29, #-96]
	ldur	w9, [x29, #-104]
	stur	w9, [x29, #-88]
	ldur	w9, [x29, #-96]
	stur	w9, [x29, #-116]
	ldur	w9, [x29, #-92]
	stur	w9, [x29, #-120]
	ldur	s0, [x29, #-120]
	scvtf	s0, s0
	ldur	s1, [x29, #-40]
	fmul	s0, s0, s1
	fcvtzs	w9, s0
	stur	w9, [x29, #-124]
	ldur	s0, [x29, #-116]
	scvtf	s0, s0
	ldur	s1, [x29, #-40]
	fmul	s0, s0, s1
	fcvtzs	w9, s0
	stur	w9, [x29, #-128]
	ldur	w9, [x29, #-124]
	subs	w0, w8, w9
	ldur	w1, [x29, #-124]
	bl	rand_uniform
	ldr	w8, [sp, #12]                   // 4-byte Folded Reload
	stur	w0, [x29, #-132]
	ldur	w9, [x29, #-124]
	subs	w0, w8, w9
	ldur	w1, [x29, #-124]
	bl	rand_uniform
	ldr	w8, [sp, #12]                   // 4-byte Folded Reload
	stur	w0, [x29, #-136]
	ldur	w9, [x29, #-128]
	subs	w0, w8, w9
	ldur	w1, [x29, #-128]
	bl	rand_uniform
	ldr	w8, [sp, #12]                   // 4-byte Folded Reload
	stur	w0, [x29, #-140]
	ldur	w9, [x29, #-128]
	subs	w0, w8, w9
	ldur	w1, [x29, #-128]
	bl	rand_uniform
	stur	w0, [x29, #-144]
	ldur	w8, [x29, #-120]
	ldur	w9, [x29, #-132]
	subs	w8, w8, w9
	ldur	w9, [x29, #-136]
	subs	w8, w8, w9
	stur	w8, [x29, #-148]
	ldur	w8, [x29, #-116]
	ldur	w9, [x29, #-140]
	subs	w8, w8, w9
	ldur	w9, [x29, #-144]
	subs	w8, w8, w9
	stur	w8, [x29, #-152]
	ldur	s0, [x29, #-148]
	scvtf	s0, s0
	ldur	s1, [x29, #-120]
	scvtf	s1, s1
	fdiv	s0, s0, s1
	stur	s0, [x29, #-156]
	ldur	s0, [x29, #-152]
	scvtf	s0, s0
	ldur	s1, [x29, #-116]
	scvtf	s1, s1
	fdiv	s0, s0, s1
	stur	s0, [x29, #-160]
	bl	rand
	mov	w9, #2
	sdiv	w8, w0, w9
	mul	w8, w8, w9
	subs	w8, w0, w8
	stur	w8, [x29, #-164]
	ldur	w2, [x29, #-132]
	ldur	w3, [x29, #-140]
	ldur	w4, [x29, #-148]
	ldur	w5, [x29, #-152]
	ldur	x8, [x29, #-96]
	str	x8, [sp, #160]
	ldur	w8, [x29, #-88]
	str	w8, [sp, #168]
	ldr	x0, [sp, #160]
	ldr	x1, [sp, #168]
	bl	crop_image
	str	x0, [sp, #144]
	str	x1, [sp, #152]
	ldr	x8, [sp, #144]
	str	x8, [sp, #176]
	ldr	w8, [sp, #152]
	str	w8, [sp, #184]
	ldur	s0, [x29, #-132]
	scvtf	s0, s0
	ldur	s1, [x29, #-120]
	scvtf	s1, s1
	fdiv	s0, s0, s1
	ldur	s1, [x29, #-156]
	fdiv	s0, s0, s1
	str	s0, [sp, #140]
	ldur	s0, [x29, #-140]
	scvtf	s0, s0
	ldur	s1, [x29, #-116]
	scvtf	s1, s1
	fdiv	s0, s0, s1
	ldur	s1, [x29, #-160]
	fdiv	s0, s0, s1
	str	s0, [sp, #136]
	ldur	w2, [x29, #-24]
	ldur	w3, [x29, #-28]
	ldr	x8, [sp, #176]
	str	x8, [sp, #104]
	ldr	w8, [sp, #184]
	str	w8, [sp, #112]
	ldr	x0, [sp, #104]
	ldr	x1, [sp, #112]
	bl	resize_image
	str	x0, [sp, #88]
	str	x1, [sp, #96]
	ldr	x8, [sp, #88]
	str	x8, [sp, #120]
	ldr	w8, [sp, #96]
	str	w8, [sp, #128]
	ldur	w8, [x29, #-164]
	cbz	w8, .LBB0_4
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #120]
	str	x8, [sp, #72]
	ldr	w8, [sp, #128]
	str	w8, [sp, #80]
	ldr	x0, [sp, #72]
	ldr	x1, [sp, #80]
	bl	flip_image
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	s0, [x29, #-44]
	ldur	s1, [x29, #-48]
	ldur	s2, [x29, #-52]
	ldr	x8, [sp, #120]
	str	x8, [sp, #56]
	ldr	w8, [sp, #128]
	str	w8, [sp, #64]
	ldr	x0, [sp, #56]
	ldr	x1, [sp, #64]
	bl	random_distort_image
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	ldr	w9, [sp, #128]
	ldr	x10, [x8, #16]
	ldursw	x11, [x29, #-68]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-64]
	ldursw	x10, [x29, #-68]
	ldr	x0, [x9, x10, lsl #3]
	ldr	x8, [x8]
	ldursw	x9, [x29, #-68]
	ldr	w1, [x8, x9, lsl #2]
	ldur	w2, [x29, #-36]
	ldur	w3, [x29, #-32]
	ldur	w4, [x29, #-164]
	ldr	s0, [sp, #140]
	ldr	s1, [sp, #136]
	ldur	s2, [x29, #-156]
	fcvt	d3, s2
	fmov	d2, #1.00000000
	fdiv	d3, d2, d3
	fcvtzs	w5, d3
	ldur	s3, [x29, #-160]
	fcvt	d3, s3
	fdiv	d2, d2, d3
	fcvtzs	w6, d2
	bl	fill_truth_region
	ldur	x8, [x29, #-96]
	str	x8, [sp, #40]
	ldur	w8, [x29, #-88]
	str	w8, [sp, #48]
	ldr	x0, [sp, #40]
	ldr	x1, [sp, #48]
	bl	free_image
	ldr	x8, [sp, #176]
	str	x8, [sp, #24]
	ldr	w8, [sp, #184]
	str	w8, [sp, #32]
	ldr	x0, [sp, #24]
	ldr	x1, [sp, #32]
	bl	free_image
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-68]
	add	w8, w8, #1
	stur	w8, [x29, #-68]
	b	.LBB0_1
.LBB0_6:
	ldur	x0, [x29, #-64]
	bl	free
	ldr	x28, [sp, #368]                 // 8-byte Folded Reload
	ldp	x29, x30, [sp, #352]            // 16-byte Folded Reload
	add	sp, sp, #384
	ret
.Lfunc_end0:
	.size	load_data_region, .Lfunc_end0-load_data_region
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym get_random_paths
	.addrsig_sym calloc
	.addrsig_sym make_matrix
	.addrsig_sym load_image_color
	.addrsig_sym rand_uniform
	.addrsig_sym rand
	.addrsig_sym crop_image
	.addrsig_sym resize_image
	.addrsig_sym flip_image
	.addrsig_sym random_distort_image
	.addrsig_sym fill_truth_region
	.addrsig_sym free_image
	.addrsig_sym free