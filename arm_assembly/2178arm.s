	.text
	.p2align	2                               // -- Begin function stbi__compute_y
	.type	stbi__compute_y,@function
stbi__compute_y:                        // @stbi__compute_y
// %bb.0:
	sub	sp, sp, #16
	str	w0, [sp, #12]
	str	w1, [sp, #8]
	str	w2, [sp, #4]
	ldr	w8, [sp, #12]
	mov	w9, #77
	mul	w8, w8, w9
	ldr	w9, [sp, #8]
	mov	w10, #150
	mul	w9, w9, w10
	add	w8, w8, w9
	ldr	w10, [sp, #4]
	mov	w9, #29
	mul	w9, w9, w10
	add	w8, w8, w9
	asr	w0, w8, #8
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	stbi__compute_y, .Lfunc_end0-stbi__compute_y
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__compute_y