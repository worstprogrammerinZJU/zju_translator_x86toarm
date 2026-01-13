	.text
	.p2align	2                               // -- Begin function stbi__stdio_eof
	.type	stbi__stdio_eof,@function
stbi__stdio_eof:                        // @stbi__stdio_eof
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	feof
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	stbi__stdio_eof, .Lfunc_end0-stbi__stdio_eof
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__stdio_eof
	.addrsig_sym feof