	.text
	.p2align	2                               // -- Begin function stbi__gif_test
	.type	stbi__gif_test,@function
stbi__gif_test:                         // @stbi__gif_test
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	stbi__gif_test_raw
	str	w0, [sp, #4]
	ldr	x0, [sp, #8]
	bl	stbi__rewind
	ldr	w0, [sp, #4]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	stbi__gif_test, .Lfunc_end0-stbi__gif_test
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__gif_test
	.addrsig_sym stbi__gif_test_raw
	.addrsig_sym stbi__rewind