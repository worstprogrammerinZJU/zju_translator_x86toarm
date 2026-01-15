	.text
	.globl	load_data_super                 // -- Begin function load_data_super
	.p2align	2
	.type	load_data_super,@function
load_data_super:                        // @load_data_super
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	stur	w2, [x29, #-16]
	stur	w3, [x29, #-20]
	stur	w4, [x29, #-24]
	stur	w5, [x29, #-28]
	ldur	w8, [x29, #-16]
	cbz	w8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	x0, [x29, #-8]
	ldur	w1, [x29, #-12]
	ldur	w2, [x29, #-16]
	bl	get_random_paths
	stur	x0, [x29, #-8]
	b	.LBB0_2
.LBB0_2:
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	mov	w1, wzr
	mov	x2, #48
	bl	memset
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	str	xzr, [x9, #32]
	ldur	w8, [x29, #-12]
	str	w8, [x9, #16]
	ldur	w0, [x29, #-12]
	mov	w1, #8
	str	w1, [sp]                        // 4-byte Folded Spill
	bl	calloc
	ldr	w1, [sp]                        // 4-byte Folded Reload
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	str	x0, [x9, #24]
	ldur	w8, [x29, #-20]
	ldur	w10, [x29, #-24]
	mul	w8, w8, w10
	mov	w10, #3
	str	w10, [sp, #4]                   // 4-byte Folded Spill
	mul	w8, w8, w10
	str	w8, [x9, #20]
	ldur	w8, [x29, #-12]
	str	w8, [x9]
	ldur	w0, [x29, #-12]
	bl	calloc
	ldr	w10, [sp, #4]                   // 4-byte Folded Reload
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	str	x0, [x9, #8]
	ldur	w8, [x29, #-20]
	ldur	w11, [x29, #-28]
	mul	w8, w8, w11
	ldur	w11, [x29, #-24]
	mul	w8, w8, w11
	ldur	w11, [x29, #-28]
	mul	w8, w8, w11
	mul	w8, w8, w10
	str	w8, [x9, #4]
	str	wzr, [sp, #32]
	b	.LBB0_3
.LBB0_3:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #32]
	ldur	w9, [x29, #-12]
	subs	w8, w8, w9
	b.ge	.LBB0_8
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_3 Depth=1
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #32]
	ldr	x0, [x8, x9, lsl #3]
	mov	w2, wzr
	mov	w1, w2
	bl	load_image_color
	str	w0, [sp, #28]
	ldur	w8, [x29, #-20]
	ldur	w9, [x29, #-28]
	mul	w1, w8, w9
	ldur	w8, [x29, #-24]
	ldur	w9, [x29, #-28]
	mul	w2, w8, w9
	ldr	w8, [sp, #28]
	mov	w0, w8
	bl	random_crop_image
	str	w0, [sp, #24]
	bl	rand
	mov	w9, #2
	sdiv	w8, w0, w9
	mul	w8, w8, w9
	subs	w8, w0, w8
	str	w8, [sp, #20]
	ldr	w8, [sp, #20]
	cbz	w8, .LBB0_6
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_3 Depth=1
	ldr	w8, [sp, #24]
	mov	w0, w8
	bl	flip_image
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_3 Depth=1
	ldur	w1, [x29, #-20]
	ldur	w2, [x29, #-24]
	ldr	w8, [sp, #24]
	mov	w0, w8
	bl	resize_image
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	str	w0, [sp, #16]
	ldr	w8, [sp, #16]
	ldr	x10, [x9, #24]
	ldrsw	x11, [sp, #32]
	str	w8, [x10, x11, lsl #2]
	ldr	w8, [sp, #24]
	ldr	x9, [x9, #8]
	ldrsw	x10, [sp, #32]
	str	w8, [x9, x10, lsl #2]
	ldr	w8, [sp, #28]
	mov	w0, w8
	bl	free_image
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_3 Depth=1
	ldr	w8, [sp, #32]
	add	w8, w8, #1
	str	w8, [sp, #32]
	b	.LBB0_3
.LBB0_8:
	ldur	w8, [x29, #-16]
	cbz	w8, .LBB0_10
	b	.LBB0_9
.LBB0_9:
	ldur	x0, [x29, #-8]
	bl	free
	b	.LBB0_10
.LBB0_10:
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	load_data_super, .Lfunc_end0-load_data_super
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym get_random_paths
	.addrsig_sym calloc
	.addrsig_sym load_image_color
	.addrsig_sym random_crop_image
	.addrsig_sym rand
	.addrsig_sym flip_image
	.addrsig_sym resize_image
	.addrsig_sym free_image
	.addrsig_sym free