	.text
	.p2align	2                               // -- Begin function stbi__get32be
	.type	stbi__get32be,@function
stbi__get32be:                          // @stbi__get32be
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	stbi__get16be
	str	w0, [sp, #4]
	ldr	w8, [sp, #4]
	str	w8, [sp]                        // 4-byte Folded Spill
	ldr	x0, [sp, #8]
	bl	stbi__get16be
	ldr	w8, [sp]                        // 4-byte Folded Reload
	add	w0, w0, w8, lsl #16
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	stbi__get32be, .Lfunc_end0-stbi__get32be
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__get32be
	.addrsig_sym stbi__get16be