	.text
	.p2align	2                               // -- Begin function stbi__get_chunk_header
	.type	stbi__get_chunk_header,@function
stbi__get_chunk_header:                 // @stbi__get_chunk_header
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	stbi__get32be
	str	x0, [sp, #24]
	ldr	x0, [sp, #8]
	bl	stbi__get32be
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #24]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	stbi__get_chunk_header, .Lfunc_end0-stbi__get_chunk_header
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__get_chunk_header
	.addrsig_sym stbi__get32be