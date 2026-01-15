	.text
	.globl	saturate_exposure_image         // -- Begin function saturate_exposure_image
	.p2align	2
	.type	saturate_exposure_image,@function
saturate_exposure_image:                // @saturate_exposure_image
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	stur	w0, [x29, #-4]
	str	s0, [sp, #8]
	str	s1, [sp, #4]
	ldur	w0, [x29, #-4]
	bl	rgb_to_hsv
	ldur	w0, [x29, #-4]
	ldr	s0, [sp, #8]
	mov	w1, #1
	bl	scale_image_channel
	ldur	w0, [x29, #-4]
	ldr	s0, [sp, #4]
	mov	w1, #2
	bl	scale_image_channel
	ldur	w0, [x29, #-4]
	bl	hsv_to_rgb
	ldur	w0, [x29, #-4]
	bl	constrain_image
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	saturate_exposure_image, .Lfunc_end0-saturate_exposure_image
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym rgb_to_hsv
	.addrsig_sym scale_image_channel
	.addrsig_sym hsv_to_rgb
	.addrsig_sym constrain_image