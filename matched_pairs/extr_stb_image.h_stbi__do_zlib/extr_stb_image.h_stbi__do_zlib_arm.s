	.text
	.p2align	2                               // -- Begin function stbi__do_zlib
	.type	stbi__do_zlib,@function
stbi__do_zlib:                          // @stbi__do_zlib
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	w2, [sp, #12]
	str	w3, [sp, #8]
	str	w4, [sp, #4]
	ldr	x8, [sp, #16]
	ldur	x9, [x29, #-8]
	str	x8, [x9]
	ldr	x8, [sp, #16]
	ldur	x9, [x29, #-8]
	str	x8, [x9, #8]
	ldr	x8, [sp, #16]
	ldrsw	x9, [sp, #12]
	add	x8, x8, x9
	ldur	x9, [x29, #-8]
	str	x8, [x9, #16]
	ldr	w8, [sp, #8]
	ldur	x9, [x29, #-8]
	str	w8, [x9, #24]
	ldur	x0, [x29, #-8]
	ldr	w1, [sp, #4]
	bl	stbi__parse_zlib
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	stbi__do_zlib, .Lfunc_end0-stbi__do_zlib
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__do_zlib
	.addrsig_sym stbi__parse_zlib