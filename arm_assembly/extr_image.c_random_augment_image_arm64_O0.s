	.text
	.globl	random_augment_image            // -- Begin function random_augment_image
	.p2align	2
	.type	random_augment_image,@function
random_augment_image:                   // @random_augment_image
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	stur	w0, [x29, #-4]
	stur	s0, [x29, #-8]
	stur	s1, [x29, #-12]
	stur	w1, [x29, #-16]
	stur	w2, [x29, #-20]
	stur	w3, [x29, #-24]
	stur	w4, [x29, #-28]
	ldur	w0, [x29, #-4]
	ldur	s0, [x29, #-8]
	ldur	s1, [x29, #-12]
	ldur	w1, [x29, #-16]
	ldur	w2, [x29, #-20]
	ldur	w3, [x29, #-24]
	ldur	w4, [x29, #-28]
	add	x8, sp, #8
	bl	random_augment_args
	ldur	w0, [x29, #-4]
	ldr	w1, [sp, #32]
	ldr	w2, [sp, #28]
	ldr	w3, [sp, #24]
	ldr	w4, [sp, #20]
	ldr	w5, [sp, #16]
	ldr	w6, [sp, #12]
	ldr	w7, [sp, #8]
	bl	rotate_crop_image
	str	w0, [sp, #4]
	ldr	w0, [sp, #4]
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	random_augment_image, .Lfunc_end0-random_augment_image
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym random_augment_args
	.addrsig_sym rotate_crop_image