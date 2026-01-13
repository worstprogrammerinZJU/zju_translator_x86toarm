	.text
	.globl	random_crop_image               // -- Begin function random_crop_image
	.p2align	2
	.type	random_crop_image,@function
random_crop_image:                      // @random_crop_image
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	str	x0, [sp, #32]
	str	x1, [sp, #40]
	str	w2, [sp, #28]
	str	w3, [sp, #24]
	ldr	x8, [sp, #40]
	ldrsw	x9, [sp, #28]
	subs	x1, x8, x9
	mov	w0, wzr
	str	w0, [sp, #12]                   // 4-byte Folded Spill
	bl	rand_int
	mov	w8, w0
	ldr	w0, [sp, #12]                   // 4-byte Folded Reload
	str	w8, [sp, #20]
	ldr	x8, [sp, #32]
	ldrsw	x9, [sp, #24]
	subs	x1, x8, x9
	bl	rand_int
	str	w0, [sp, #16]
	ldr	w2, [sp, #20]
	ldr	w3, [sp, #16]
	ldr	w4, [sp, #28]
	ldr	w5, [sp, #24]
	ldr	x0, [sp, #32]
	ldr	x1, [sp, #40]
	bl	crop_image
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-8]
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-8]
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	random_crop_image, .Lfunc_end0-random_crop_image
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym rand_int
	.addrsig_sym crop_image