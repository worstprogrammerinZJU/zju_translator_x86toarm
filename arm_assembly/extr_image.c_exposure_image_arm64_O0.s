	.text
	.globl	exposure_image                  // -- Begin function exposure_image
	.p2align	2
	.type	exposure_image,@function
exposure_image:                         // @exposure_image
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	stur	w0, [x29, #-4]
	str	s0, [sp, #8]
	ldur	w0, [x29, #-4]
	bl	rgb_to_hsv
	ldur	w0, [x29, #-4]
	ldr	s0, [sp, #8]
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
	.size	exposure_image, .Lfunc_end0-exposure_image
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym rgb_to_hsv
	.addrsig_sym scale_image_channel
	.addrsig_sym hsv_to_rgb
	.addrsig_sym constrain_image