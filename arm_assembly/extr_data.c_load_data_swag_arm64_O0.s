	.text
	.globl	load_data_swag                  // -- Begin function load_data_swag
	.p2align	2
	.type	load_data_swag,@function
load_data_swag:                         // @load_data_swag
// %bb.0:
	sub	sp, sp, #336
	stp	x29, x30, [sp, #304]            // 16-byte Folded Spill
	str	x28, [sp, #320]                 // 8-byte Folded Spill
	add	x29, sp, #304
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	stur	w2, [x29, #-16]
	stur	s0, [x29, #-20]
	bl	rand
	ldur	w9, [x29, #-12]
	sdiv	w8, w0, w9
	mul	w8, w8, w9
	subs	w8, w0, w8
	stur	w8, [x29, #-24]
	ldur	x8, [x29, #-8]
	ldursw	x9, [x29, #-24]
	ldr	x8, [x8, x9, lsl #3]
	stur	x8, [x29, #-32]
	ldur	x0, [x29, #-32]
	mov	w2, wzr
	str	w2, [sp, #20]                   // 4-byte Folded Spill
	mov	w1, w2
	bl	load_image_color
	mov	x9, x0
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	mov	x8, x1
	ldr	w1, [sp, #20]                   // 4-byte Folded Reload
	stur	x9, [x29, #-64]
	stur	x8, [x29, #-56]
	ldur	x8, [x29, #-64]
	stur	x8, [x29, #-48]
	ldur	w8, [x29, #-56]
	stur	w8, [x29, #-40]
	ldur	w8, [x29, #-48]
	stur	w8, [x29, #-68]
	ldur	w8, [x29, #-44]
	stur	w8, [x29, #-72]
	mov	x2, #48
	bl	memset
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	str	xzr, [x8, #32]
	ldur	w9, [x29, #-72]
	str	w9, [x8]
	ldur	w9, [x29, #-68]
	str	w9, [x8, #4]
	mov	w9, #1
	str	w9, [sp, #4]                    // 4-byte Folded Spill
	str	w9, [x8, #16]
	ldr	w0, [x8, #16]
	mov	w1, #8
	bl	calloc
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	mov	x8, x0
	ldr	w0, [sp, #4]                    // 4-byte Folded Reload
	str	x8, [x9, #24]
	ldur	w8, [x29, #-68]
	ldur	w10, [x29, #-72]
	mul	w8, w8, w10
	mov	w10, #3
	mul	w8, w8, w10
	str	w8, [x9, #20]
	ldur	w8, [x29, #-16]
	add	w8, w8, #4
	mov	w9, #90
	mul	w8, w8, w9
	stur	w8, [x29, #-76]
	ldur	w1, [x29, #-76]
	bl	make_matrix
	ldr	x10, [sp, #8]                   // 8-byte Folded Reload
	ldr	w8, [sp, #20]                   // 4-byte Folded Reload
	stur	x0, [x29, #-88]
	ldur	x9, [x29, #-88]
	str	x9, [x10, #8]
	ldur	s0, [x29, #-72]
	scvtf	s0, s0
	ldur	s1, [x29, #-20]
	fmul	s0, s0, s1
	fcvtzs	w9, s0
	stur	w9, [x29, #-92]
	ldur	s0, [x29, #-68]
	scvtf	s0, s0
	ldur	s1, [x29, #-20]
	fmul	s0, s0, s1
	fcvtzs	w9, s0
	stur	w9, [x29, #-96]
	ldur	w9, [x29, #-92]
	subs	w0, w8, w9
	ldur	w1, [x29, #-92]
	bl	rand_uniform
	ldr	w8, [sp, #20]                   // 4-byte Folded Reload
	stur	w0, [x29, #-100]
	ldur	w9, [x29, #-92]
	subs	w0, w8, w9
	ldur	w1, [x29, #-92]
	bl	rand_uniform
	ldr	w8, [sp, #20]                   // 4-byte Folded Reload
	stur	w0, [x29, #-104]
	ldur	w9, [x29, #-96]
	subs	w0, w8, w9
	ldur	w1, [x29, #-96]
	bl	rand_uniform
	ldr	w8, [sp, #20]                   // 4-byte Folded Reload
	stur	w0, [x29, #-108]
	ldur	w9, [x29, #-96]
	subs	w0, w8, w9
	ldur	w1, [x29, #-96]
	bl	rand_uniform
	stur	w0, [x29, #-112]
	ldur	w8, [x29, #-72]
	ldur	w9, [x29, #-100]
	subs	w8, w8, w9
	ldur	w9, [x29, #-104]
	subs	w8, w8, w9
	stur	w8, [x29, #-116]
	ldur	w8, [x29, #-68]
	ldur	w9, [x29, #-108]
	subs	w8, w8, w9
	ldur	w9, [x29, #-112]
	subs	w8, w8, w9
	stur	w8, [x29, #-120]
	ldur	s0, [x29, #-116]
	scvtf	s0, s0
	ldur	s1, [x29, #-72]
	scvtf	s1, s1
	fdiv	s0, s0, s1
	stur	s0, [x29, #-124]
	ldur	s0, [x29, #-120]
	scvtf	s0, s0
	ldur	s1, [x29, #-68]
	scvtf	s1, s1
	fdiv	s0, s0, s1
	stur	s0, [x29, #-128]
	bl	rand
	mov	w9, #2
	sdiv	w8, w0, w9
	mul	w8, w8, w9
	subs	w8, w0, w8
	stur	w8, [x29, #-132]
	ldur	w2, [x29, #-100]
	ldur	w3, [x29, #-108]
	ldur	w4, [x29, #-116]
	ldur	w5, [x29, #-120]
	ldur	x8, [x29, #-48]
	str	x8, [sp, #144]
	ldur	w8, [x29, #-40]
	str	w8, [sp, #152]
	ldr	x0, [sp, #144]
	ldr	x1, [sp, #152]
	bl	crop_image
	str	x0, [sp, #128]
	str	x1, [sp, #136]
	ldr	x8, [sp, #128]
	stur	x8, [x29, #-144]
	ldr	w8, [sp, #136]
	stur	w8, [x29, #-136]
	ldur	s0, [x29, #-100]
	scvtf	s0, s0
	ldur	s1, [x29, #-72]
	scvtf	s1, s1
	fdiv	s0, s0, s1
	ldur	s1, [x29, #-124]
	fdiv	s0, s0, s1
	str	s0, [sp, #124]
	ldur	s0, [x29, #-108]
	scvtf	s0, s0
	ldur	s1, [x29, #-68]
	scvtf	s1, s1
	fdiv	s0, s0, s1
	ldur	s1, [x29, #-128]
	fdiv	s0, s0, s1
	str	s0, [sp, #120]
	ldur	w2, [x29, #-72]
	ldur	w3, [x29, #-68]
	ldur	x8, [x29, #-144]
	str	x8, [sp, #88]
	ldur	w8, [x29, #-136]
	str	w8, [sp, #96]
	ldr	x0, [sp, #88]
	ldr	x1, [sp, #96]
	bl	resize_image
	str	x0, [sp, #72]
	str	x1, [sp, #80]
	ldr	x8, [sp, #72]
	str	x8, [sp, #104]
	ldr	w8, [sp, #80]
	str	w8, [sp, #112]
	ldur	w8, [x29, #-132]
	cbz	w8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x8, [sp, #104]
	str	x8, [sp, #56]
	ldr	w8, [sp, #112]
	str	w8, [sp, #64]
	ldr	x0, [sp, #56]
	ldr	x1, [sp, #64]
	bl	flip_image
	b	.LBB0_2
.LBB0_2:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	w9, [sp, #112]
	ldr	x10, [x8, #24]
	str	w9, [x10]
	ldur	x0, [x29, #-32]
	ldr	x8, [x8, #8]
	ldr	w1, [x8]
	ldur	w2, [x29, #-16]
	ldur	w3, [x29, #-132]
	ldr	s0, [sp, #124]
	ldr	s1, [sp, #120]
	ldur	s2, [x29, #-124]
	fcvt	d3, s2
	fmov	d2, #1.00000000
	fdiv	d3, d2, d3
	fcvtzs	w4, d3
	ldur	s3, [x29, #-128]
	fcvt	d3, s3
	fdiv	d2, d2, d3
	fcvtzs	w5, d2
	bl	fill_truth_swag
	ldur	x8, [x29, #-48]
	str	x8, [sp, #40]
	ldur	w8, [x29, #-40]
	str	w8, [sp, #48]
	ldr	x0, [sp, #40]
	ldr	x1, [sp, #48]
	bl	free_image
	ldur	x8, [x29, #-144]
	str	x8, [sp, #24]
	ldur	w8, [x29, #-136]
	str	w8, [sp, #32]
	ldr	x0, [sp, #24]
	ldr	x1, [sp, #32]
	bl	free_image
	ldr	x28, [sp, #320]                 // 8-byte Folded Reload
	ldp	x29, x30, [sp, #304]            // 16-byte Folded Reload
	add	sp, sp, #336
	ret
.Lfunc_end0:
	.size	load_data_swag, .Lfunc_end0-load_data_swag
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym rand
	.addrsig_sym load_image_color
	.addrsig_sym calloc
	.addrsig_sym make_matrix
	.addrsig_sym rand_uniform
	.addrsig_sym crop_image
	.addrsig_sym resize_image
	.addrsig_sym flip_image
	.addrsig_sym fill_truth_swag
	.addrsig_sym free_image