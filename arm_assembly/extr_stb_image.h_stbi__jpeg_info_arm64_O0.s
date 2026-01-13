	.text
	.p2align	2                               // -- Begin function stbi__jpeg_info
	.type	stbi__jpeg_info,@function
stbi__jpeg_info:                        // @stbi__jpeg_info
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	str	x2, [sp, #24]
	str	x3, [sp, #16]
	mov	w0, #8
	bl	stbi__malloc
	str	x0, [sp]
	ldur	x8, [x29, #-8]
	ldr	x9, [sp]
	str	x8, [x9]
	ldr	x0, [sp]
	ldur	x1, [x29, #-16]
	ldr	x2, [sp, #24]
	ldr	x3, [sp, #16]
	bl	stbi__jpeg_info_raw
	str	w0, [sp, #12]
	ldr	x0, [sp]
	bl	STBI_FREE
	ldr	w0, [sp, #12]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	stbi__jpeg_info, .Lfunc_end0-stbi__jpeg_info
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__jpeg_info
	.addrsig_sym stbi__malloc
	.addrsig_sym stbi__jpeg_info_raw
	.addrsig_sym STBI_FREE