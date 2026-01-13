	.text
	.p2align	2                               // -- Begin function stbi__sse2_available
	.type	stbi__sse2_available,@function
stbi__sse2_available:                   // @stbi__sse2_available
// %bb.0:
	mov	w0, #1
	ret
.Lfunc_end0:
	.size	stbi__sse2_available, .Lfunc_end0-stbi__sse2_available
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__sse2_available