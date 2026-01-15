	.text
	.globl	load_data_seg                   // -- Begin function load_data_seg
	.p2align	2
	.type	load_data_seg,@function
load_data_seg:                          // @load_data_seg
// %bb.0:
	sub	sp, sp, #432
	stp	x29, x30, [sp, #400]            // 16-byte Folded Spill
	str	x28, [sp, #416]                 // 8-byte Folded Spill
	add	x29, sp, #400
	str	x8, [sp, #24]                   // 8-byte Folded Spill
	ldr	w8, [x29, #32]
	stur	w0, [x29, #-4]
	stur	x1, [x29, #-16]
	stur	w2, [x29, #-20]
	stur	w3, [x29, #-24]
	stur	w4, [x29, #-28]
	stur	w5, [x29, #-32]
	stur	w6, [x29, #-36]
	stur	w7, [x29, #-40]
	stur	s0, [x29, #-44]
	stur	s1, [x29, #-48]
	stur	s2, [x29, #-52]
	stur	s3, [x29, #-56]
	stur	s4, [x29, #-60]
	stur	w8, [x29, #-64]
	ldur	x0, [x29, #-16]
	ldur	w1, [x29, #-4]
	ldur	w2, [x29, #-20]
	bl	get_random_paths
	mov	x8, x0
	ldr	x0, [sp, #24]                   // 8-byte Folded Reload
	stur	x8, [x29, #-72]
	mov	w1, wzr
	mov	x2, #48
	bl	memset
	ldr	x8, [sp, #24]                   // 8-byte Folded Reload
	str	xzr, [x8, #32]
	ldur	w9, [x29, #-4]
	str	w9, [x8, #16]
	ldr	w0, [x8, #16]
	mov	w1, #8
	str	w1, [sp, #20]                   // 4-byte Folded Spill
	bl	calloc
	ldr	w1, [sp, #20]                   // 4-byte Folded Reload
	ldr	x8, [sp, #24]                   // 8-byte Folded Reload
	str	x0, [x8, #24]
	ldur	w9, [x29, #-28]
	ldur	w10, [x29, #-24]
	mul	w9, w9, w10
	mov	w10, #3
	mul	w9, w9, w10
	str	w9, [x8, #20]
	ldur	w9, [x29, #-4]
	str	w9, [x8]
	ldur	w9, [x29, #-28]
	ldur	w10, [x29, #-24]
	mul	w9, w9, w10
	ldur	w10, [x29, #-32]
	mul	w9, w9, w10
	ldur	w10, [x29, #-64]
	sdiv	w9, w9, w10
	ldur	w10, [x29, #-64]
	sdiv	w9, w9, w10
	str	w9, [x8, #4]
	ldr	w0, [x8, #16]
	bl	calloc
	ldr	x8, [sp, #24]                   // 8-byte Folded Reload
	str	x0, [x8, #8]
	stur	wzr, [x29, #-76]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-76]
	ldur	w9, [x29, #-4]
	subs	w8, w8, w9
	b.ge	.LBB0_8
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-72]
	ldursw	x9, [x29, #-76]
	ldr	x0, [x8, x9, lsl #3]
	mov	w2, wzr
	mov	w1, w2
	bl	load_image_color
	stur	x0, [x29, #-104]
	stur	x1, [x29, #-96]
	ldur	x8, [x29, #-104]
	stur	x8, [x29, #-88]
	ldur	w8, [x29, #-96]
	stur	w8, [x29, #-80]
	ldur	s0, [x29, #-44]
	ldur	s1, [x29, #-48]
	ldur	w2, [x29, #-36]
	ldur	w3, [x29, #-40]
	ldur	w4, [x29, #-24]
	ldur	w5, [x29, #-28]
	ldur	x8, [x29, #-88]
	stur	x8, [x29, #-152]
	ldur	w8, [x29, #-80]
	stur	w8, [x29, #-144]
	ldur	x0, [x29, #-152]
	ldur	x1, [x29, #-144]
	sub	x8, x29, #132
	bl	random_augment_args
	ldur	w2, [x29, #-108]
	ldur	w3, [x29, #-132]
	ldur	w4, [x29, #-128]
	ldur	w5, [x29, #-124]
	ldur	w6, [x29, #-120]
	ldur	w7, [x29, #-116]
	ldur	w8, [x29, #-112]
	ldur	x9, [x29, #-88]
	stur	x9, [x29, #-184]
	ldur	w9, [x29, #-80]
	stur	w9, [x29, #-176]
	ldur	x0, [x29, #-184]
	ldur	x1, [x29, #-176]
	mov	x9, sp
	str	w8, [x9]
	bl	rotate_crop_image
	str	x0, [sp, #200]
	str	x1, [sp, #208]
	ldr	x8, [sp, #200]
	stur	x8, [x29, #-168]
	ldr	w8, [sp, #208]
	stur	w8, [x29, #-160]
	bl	rand
	mov	w9, #2
	sdiv	w8, w0, w9
	mul	w8, w8, w9
	subs	w8, w0, w8
	str	w8, [sp, #196]
	ldr	w8, [sp, #196]
	cbz	w8, .LBB0_4
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-168]
	str	x8, [sp, #176]
	ldur	w8, [x29, #-160]
	str	w8, [sp, #184]
	ldr	x0, [sp, #176]
	ldr	x1, [sp, #184]
	bl	flip_image
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	s0, [x29, #-52]
	ldur	s1, [x29, #-56]
	ldur	s2, [x29, #-60]
	ldur	x8, [x29, #-168]
	str	x8, [sp, #160]
	ldur	w8, [x29, #-160]
	str	w8, [sp, #168]
	ldr	x0, [sp, #160]
	ldr	x1, [sp, #168]
	bl	random_distort_image
	ldr	x9, [sp, #24]                   // 8-byte Folded Reload
	ldur	w8, [x29, #-168]
	ldr	x9, [x9, #24]
	ldursw	x10, [x29, #-76]
	str	w8, [x9, x10, lsl #2]
	ldur	x8, [x29, #-72]
	ldursw	x9, [x29, #-76]
	ldr	x0, [x8, x9, lsl #3]
	ldur	w1, [x29, #-80]
	ldur	w2, [x29, #-84]
	ldur	w3, [x29, #-32]
	bl	get_segmentation_image
	str	x0, [sp, #128]
	str	x1, [sp, #136]
	ldr	x8, [sp, #128]
	str	x8, [sp, #144]
	ldr	w8, [sp, #136]
	str	w8, [sp, #152]
	ldur	w2, [x29, #-108]
	ldur	w8, [x29, #-132]
	ldur	w9, [x29, #-64]
	sdiv	w3, w8, w9
	ldur	w8, [x29, #-128]
	ldur	w9, [x29, #-64]
	sdiv	w4, w8, w9
	ldur	w8, [x29, #-124]
	ldur	w9, [x29, #-64]
	sdiv	w5, w8, w9
	ldur	w8, [x29, #-120]
	ldur	w9, [x29, #-64]
	sdiv	w6, w8, w9
	ldur	w8, [x29, #-116]
	ldur	w9, [x29, #-64]
	sdiv	w7, w8, w9
	ldur	w8, [x29, #-112]
	ldr	x9, [sp, #144]
	str	x9, [sp, #96]
	ldr	w9, [sp, #152]
	str	w9, [sp, #104]
	ldr	x0, [sp, #96]
	ldr	x1, [sp, #104]
	mov	x9, sp
	str	w8, [x9]
	bl	rotate_crop_image
	str	x0, [sp, #80]
	str	x1, [sp, #88]
	ldr	x8, [sp, #80]
	str	x8, [sp, #112]
	ldr	w8, [sp, #88]
	str	w8, [sp, #120]
	ldr	w8, [sp, #196]
	cbz	w8, .LBB0_6
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #112]
	str	x8, [sp, #64]
	ldr	w8, [sp, #120]
	str	w8, [sp, #72]
	ldr	x0, [sp, #64]
	ldr	x1, [sp, #72]
	bl	flip_image
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x9, [sp, #24]                   // 8-byte Folded Reload
	ldr	w8, [sp, #112]
	ldr	x9, [x9, #8]
	ldursw	x10, [x29, #-76]
	str	w8, [x9, x10, lsl #2]
	ldur	x8, [x29, #-88]
	str	x8, [sp, #48]
	ldur	w8, [x29, #-80]
	str	w8, [sp, #56]
	ldr	x0, [sp, #48]
	ldr	x1, [sp, #56]
	bl	free_image
	ldr	x8, [sp, #144]
	str	x8, [sp, #32]
	ldr	w8, [sp, #152]
	str	w8, [sp, #40]
	ldr	x0, [sp, #32]
	ldr	x1, [sp, #40]
	bl	free_image
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-76]
	add	w8, w8, #1
	stur	w8, [x29, #-76]
	b	.LBB0_1
.LBB0_8:
	ldur	x0, [x29, #-72]
	bl	free
	ldr	x28, [sp, #416]                 // 8-byte Folded Reload
	ldp	x29, x30, [sp, #400]            // 16-byte Folded Reload
	add	sp, sp, #432
	ret
.Lfunc_end0:
	.size	load_data_seg, .Lfunc_end0-load_data_seg
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym get_random_paths
	.addrsig_sym calloc
	.addrsig_sym load_image_color
	.addrsig_sym random_augment_args
	.addrsig_sym rotate_crop_image
	.addrsig_sym rand
	.addrsig_sym flip_image
	.addrsig_sym random_distort_image
	.addrsig_sym get_segmentation_image
	.addrsig_sym free_image
	.addrsig_sym free