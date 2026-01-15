	.text
	.p2align	2                               // -- Begin function stbi__gif_info
	.type	stbi__gif_info,@function
stbi__gif_info:                         // @stbi__gif_info
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	str	x3, [sp]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	ldr	x3, [sp]
	bl	stbi__gif_info_raw
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	stbi__gif_info, .Lfunc_end0-stbi__gif_info
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__gif_info
	.addrsig_sym stbi__gif_info_raw