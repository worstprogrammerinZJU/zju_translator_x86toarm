	.text
	.p2align	2                               // -- Begin function stbi__cleanup_jpeg
	.type	stbi__cleanup_jpeg,@function
stbi__cleanup_jpeg:                     // @stbi__cleanup_jpeg
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	ldr	w1, [x8]
	mov	w2, wzr
	bl	stbi__free_jpeg_components
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	stbi__cleanup_jpeg, .Lfunc_end0-stbi__cleanup_jpeg
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__cleanup_jpeg
	.addrsig_sym stbi__free_jpeg_components