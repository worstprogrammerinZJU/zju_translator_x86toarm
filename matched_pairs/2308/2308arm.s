	.text
	.p2align	2                               // -- Begin function stbi__start_write_callbacks
	.type	stbi__start_write_callbacks,@function
stbi__start_write_callbacks:            // @stbi__start_write_callbacks
// %bb.0:
	sub	sp, sp, #32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x8, [sp, #16]
	ldr	x9, [sp, #24]
	str	x8, [x9, #8]
	ldr	x8, [sp, #8]
	ldr	x9, [sp, #24]
	str	x8, [x9]
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	stbi__start_write_callbacks, .Lfunc_end0-stbi__start_write_callbacks
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__start_write_callbacks