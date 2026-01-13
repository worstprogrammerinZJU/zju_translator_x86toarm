	.text
	.globl	get_convolutional_weight        // -- Begin function get_convolutional_weight
	.p2align	2
	.type	get_convolutional_weight,@function
get_convolutional_weight:               // @get_convolutional_weight
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	mov	x8, x0
	stur	w1, [x29, #-4]
	ldr	w9, [x8]
	str	w9, [sp, #8]
	ldr	w9, [x8]
	str	w9, [sp, #4]
	ldr	w9, [x8, #4]
	ldr	w10, [x8, #8]
	sdiv	w9, w9, w10
	str	w9, [sp]
	ldr	w0, [sp, #4]
	ldr	w1, [sp, #8]
	ldr	w2, [sp]
	ldr	x8, [x8, #16]
	ldur	w9, [x29, #-4]
	ldr	w10, [sp, #8]
	mul	w9, w9, w10
	ldr	w10, [sp, #4]
	mul	w9, w9, w10
	ldr	w10, [sp]
	mul	w9, w9, w10
	add	x3, x8, w9, sxtw
	bl	float_to_image
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	get_convolutional_weight, .Lfunc_end0-get_convolutional_weight
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym float_to_image