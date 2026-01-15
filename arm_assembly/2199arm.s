	.text
	.p2align	2                               // -- Begin function stbi__get16le
	.type	stbi__get16le,@function
stbi__get16le:                          // @stbi__get16le
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	stbi__get8
	str	w0, [sp, #4]
	ldr	w8, [sp, #4]
	str	w8, [sp]                        // 4-byte Folded Spill
	ldr	x0, [sp, #8]
	bl	stbi__get8
	ldr	w8, [sp]                        // 4-byte Folded Reload
	add	w0, w8, w0, lsl #8
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	stbi__get16le, .Lfunc_end0-stbi__get16le
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__get16le
	.addrsig_sym stbi__get8