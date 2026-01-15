	.text
	.p2align	2                               // -- Begin function stbi__blinn_8x8
	.type	stbi__blinn_8x8,@function
stbi__blinn_8x8:                        // @stbi__blinn_8x8
// %bb.0:
	sub	sp, sp, #16
	str	w0, [sp, #12]
	str	w1, [sp, #8]
	ldr	w8, [sp, #12]
	ldr	w9, [sp, #8]
	mul	w8, w8, w9
	add	w8, w8, #128
	str	w8, [sp, #4]
	ldr	w8, [sp, #4]
	ldr	w9, [sp, #4]
	add	w8, w8, w9, lsr #8
	lsr	w0, w8, #8
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	stbi__blinn_8x8, .Lfunc_end0-stbi__blinn_8x8
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__blinn_8x8