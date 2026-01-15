	.text
	.globl	center_crop_image               // -- Begin function center_crop_image
	.p2align	2
	.type	center_crop_image,@function
center_crop_image:                      // @center_crop_image
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-16]
	stur	w1, [x29, #-20]
	str	w2, [sp, #24]
	ldur	w8, [x29, #-16]
	ldur	w9, [x29, #-12]
	subs	w8, w8, w9
	b.ge	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	w8, [x29, #-16]
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	b	.LBB0_3
.LBB0_2:
	ldur	w8, [x29, #-12]
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	b	.LBB0_3
.LBB0_3:
	ldr	w8, [sp, #8]                    // 4-byte Folded Reload
	str	w8, [sp, #20]
	ldur	w8, [x29, #-16]
	ldr	w9, [sp, #20]
	subs	w8, w8, w9
	mov	w9, #2
	sdiv	w1, w8, w9
	ldur	w8, [x29, #-12]
	ldr	w10, [sp, #20]
	subs	w8, w8, w10
	sdiv	w2, w8, w9
	ldr	w3, [sp, #20]
	ldr	w4, [sp, #20]
	ldur	x0, [x29, #-16]
	bl	crop_image
	stur	x0, [sp, #12]
	ldur	w1, [x29, #-20]
	ldr	w2, [sp, #24]
	ldur	x0, [sp, #12]
	bl	resize_image
	stur	x0, [x29, #-8]
	ldur	x0, [sp, #12]
	bl	free_image
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	center_crop_image, .Lfunc_end0-center_crop_image
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym crop_image
	.addrsig_sym resize_image
	.addrsig_sym free_image