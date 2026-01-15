	.text
	.globl	load_image_augment_paths        // -- Begin function load_image_augment_paths
	.p2align	2
	.type	load_image_augment_paths,@function
load_image_augment_paths:               // @load_image_augment_paths
// %bb.0:
	sub	sp, sp, #176
	stp	x29, x30, [sp, #160]            // 16-byte Folded Spill
	add	x29, sp, #160
	sub	x8, x29, #16
	str	x8, [sp]                        // 8-byte Folded Spill
	stur	x0, [x29, #-24]
	stur	w1, [x29, #-28]
	stur	w2, [x29, #-32]
	stur	w3, [x29, #-36]
	stur	w4, [x29, #-40]
	stur	s0, [x29, #-44]
	stur	s1, [x29, #-48]
	stur	s2, [x29, #-52]
	stur	s3, [x29, #-56]
	stur	s4, [x29, #-60]
	stur	w5, [x29, #-64]
	ldur	w8, [x29, #-28]
	stur	w8, [x29, #-16]
	ldur	w0, [x29, #-16]
	mov	w1, #8
	bl	calloc
	ldr	x8, [sp]                        // 8-byte Folded Reload
	str	x0, [x8, #8]
	stur	wzr, [x29, #-12]
	stur	wzr, [x29, #-68]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-68]
	ldur	w9, [x29, #-28]
	subs	w8, w8, w9
	b.ge	.LBB0_9
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-24]
	ldursw	x9, [x29, #-68]
	ldr	x0, [x8, x9, lsl #3]
	mov	w2, wzr
	mov	w1, w2
	bl	load_image_color
	stur	x0, [sp, #76]
	stur	x1, [sp, #84]
	ldur	w8, [x29, #-64]
	cbz	w8, .LBB0_4
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w2, [x29, #-40]
	ldur	w3, [x29, #-40]
	ldur	x0, [sp, #76]
	ldur	x1, [sp, #84]
	bl	center_crop_image
	str	x0, [sp, #32]
	str	x1, [sp, #40]
	ldr	q0, [sp, #32]
	str	q0, [sp, #48]
	b	.LBB0_5
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	s0, [x29, #-44]
	ldur	s1, [x29, #-48]
	ldur	w2, [x29, #-32]
	ldur	w3, [x29, #-36]
	ldur	w4, [x29, #-40]
	ldur	w5, [x29, #-40]
	ldur	x0, [sp, #76]
	ldur	x1, [sp, #84]
	bl	random_augment_image
	str	x0, [sp, #16]
	str	x1, [sp, #24]
	ldr	q0, [sp, #16]
	str	q0, [sp, #48]
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	bl	rand
	mov	w9, #2
	sdiv	w8, w0, w9
	mul	w8, w8, w9
	subs	w8, w0, w8
	str	w8, [sp, #12]
	ldr	w8, [sp, #12]
	cbz	w8, .LBB0_7
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x0, [sp, #48]
	ldr	x1, [sp, #56]
	bl	flip_image
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	s0, [x29, #-52]
	ldur	s1, [x29, #-56]
	ldur	s2, [x29, #-60]
	ldr	x0, [sp, #48]
	ldr	x1, [sp, #56]
	bl	random_distort_image
	ldur	x0, [sp, #76]
	ldur	x1, [sp, #84]
	bl	free_image
	ldr	x9, [sp]                        // 8-byte Folded Reload
	ldr	w8, [sp, #60]
	ldr	x9, [x9, #8]
	ldursw	x10, [x29, #-68]
	str	w8, [x9, x10, lsl #2]
	ldr	w8, [sp, #48]
	ldr	w9, [sp, #52]
	mul	w8, w8, w9
	ldr	w9, [sp, #56]
	mul	w8, w8, w9
	stur	w8, [x29, #-12]
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-68]
	add	w8, w8, #1
	stur	w8, [x29, #-68]
	b	.LBB0_1
.LBB0_9:
	ldr	x8, [sp]                        // 8-byte Folded Reload
	ldr	x0, [x8]
	ldr	x1, [x8, #8]
	ldp	x29, x30, [sp, #160]            // 16-byte Folded Reload
	add	sp, sp, #176
	ret
.Lfunc_end0:
	.size	load_image_augment_paths, .Lfunc_end0-load_image_augment_paths
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym calloc
	.addrsig_sym load_image_color
	.addrsig_sym center_crop_image
	.addrsig_sym random_augment_image
	.addrsig_sym rand
	.addrsig_sym flip_image
	.addrsig_sym random_distort_image
	.addrsig_sym free_image