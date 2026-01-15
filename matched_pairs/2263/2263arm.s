	.text
	.p2align	2                               // -- Begin function stbi__png_load
	.type	stbi__png_load,@function
stbi__png_load:                         // @stbi__png_load
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	str	x3, [sp, #32]
	str	w4, [sp, #28]
	str	x5, [sp, #16]
	ldur	x8, [x29, #-8]
	add	x0, sp, #8
	str	x8, [sp, #8]
	ldur	x1, [x29, #-16]
	ldur	x2, [x29, #-24]
	ldr	x3, [sp, #32]
	ldr	w4, [sp, #28]
	ldr	x5, [sp, #16]
	bl	stbi__do_png
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	stbi__png_load, .Lfunc_end0-stbi__png_load
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__png_load
	.addrsig_sym stbi__do_png