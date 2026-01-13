	.text
	.globl	get_maxpool_image               // -- Begin function get_maxpool_image
	.p2align	2
	.type	get_maxpool_image,@function
get_maxpool_image:                      // @get_maxpool_image
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	str	x0, [sp, #16]
	str	x1, [sp, #24]
	ldr	w8, [sp, #16]
	str	w8, [sp, #12]
	ldr	w8, [sp, #20]
	str	w8, [sp, #8]
	ldr	w8, [sp, #24]
	str	w8, [sp, #4]
	ldr	w0, [sp, #8]
	ldr	w1, [sp, #12]
	ldr	w2, [sp, #4]
	ldr	w3, [sp, #28]
	bl	float_to_image
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	get_maxpool_image, .Lfunc_end0-get_maxpool_image
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym float_to_image