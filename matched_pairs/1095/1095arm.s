	.text
	.globl	float_to_image                  // -- Begin function float_to_image
	.p2align	2
	.type	float_to_image,@function
float_to_image:                         // @float_to_image
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	w0, [x29, #-12]
	str	w1, [sp, #16]
	str	w2, [sp, #12]
	str	x3, [sp]
	ldur	w0, [x29, #-12]
	ldr	w1, [sp, #16]
	ldr	w2, [sp, #12]
	bl	make_empty_image
	stur	x0, [x29, #-8]
	ldr	x8, [sp]
	stur	x8, [x29, #-8]
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	float_to_image, .Lfunc_end0-float_to_image
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym make_empty_image