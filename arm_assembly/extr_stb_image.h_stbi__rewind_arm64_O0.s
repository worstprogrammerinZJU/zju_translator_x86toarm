	.text
	.p2align	2                               // -- Begin function stbi__rewind
	.type	stbi__rewind,@function
stbi__rewind:                           // @stbi__rewind
// %bb.0:
	sub	sp, sp, #16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	w8, [x8, #8]
	ldr	x9, [sp, #8]
	str	w8, [x9, #12]
	ldr	x8, [sp, #8]
	ldr	w8, [x8]
	ldr	x9, [sp, #8]
	str	w8, [x9, #4]
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	stbi__rewind, .Lfunc_end0-stbi__rewind
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__rewind