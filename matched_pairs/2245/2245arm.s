	.text
	.p2align	2                               // -- Begin function stbi__malloc
	.type	stbi__malloc,@function
stbi__malloc:                           // @stbi__malloc
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	STBI_MALLOC
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	stbi__malloc, .Lfunc_end0-stbi__malloc
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__malloc
	.addrsig_sym STBI_MALLOC