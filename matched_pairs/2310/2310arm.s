	.text
	.p2align	2                               // -- Begin function stbi__stdio_write
	.type	stbi__stdio_write,@function
stbi__stdio_write:                      // @stbi__stdio_write
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	w2, [sp, #12]
	ldr	x0, [sp, #16]
	ldr	w2, [sp, #12]
	ldur	x3, [x29, #-8]
	mov	w1, #1
	bl	fwrite
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	stbi__stdio_write, .Lfunc_end0-stbi__stdio_write
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__stdio_write
	.addrsig_sym fwrite