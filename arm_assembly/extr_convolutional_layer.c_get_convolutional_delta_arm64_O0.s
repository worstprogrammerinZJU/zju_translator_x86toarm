	.text
	.globl	get_convolutional_delta         // -- Begin function get_convolutional_delta
	.p2align	2
	.type	get_convolutional_delta,@function
get_convolutional_delta:                // @get_convolutional_delta
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp]
	str	x1, [sp, #8]
	ldr	w0, [sp, #12]
	ldr	w1, [sp, #8]
	ldr	w2, [sp, #4]
	ldr	w3, [sp]
	bl	float_to_image
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	get_convolutional_delta, .Lfunc_end0-get_convolutional_delta
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym float_to_image