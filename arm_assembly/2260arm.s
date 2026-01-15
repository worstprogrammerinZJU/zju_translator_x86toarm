	.text
	.p2align	2                               // -- Begin function stbi__png_info
	.type	stbi__png_info,@function
stbi__png_info:                         // @stbi__png_info
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	str	x2, [sp, #24]
	str	x3, [sp, #16]
	ldur	x8, [x29, #-8]
	add	x0, sp, #8
	str	x8, [sp, #8]
	ldur	x1, [x29, #-16]
	ldr	x2, [sp, #24]
	ldr	x3, [sp, #16]
	bl	stbi__png_info_raw
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	stbi__png_info, .Lfunc_end0-stbi__png_info
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__png_info
	.addrsig_sym stbi__png_info_raw