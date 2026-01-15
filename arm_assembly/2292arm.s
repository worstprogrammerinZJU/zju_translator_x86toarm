	.text
	.p2align	2                               // -- Begin function stbi__start_mem
	.type	stbi__start_mem,@function
stbi__start_mem:                        // @stbi__start_mem
// %bb.0:
	sub	sp, sp, #32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	w2, [sp, #12]
	ldr	x8, [sp, #24]
                                        // kill: def $x9 killed $xzr
	str	xzr, [x8, #40]
	ldr	x8, [sp, #24]
	str	xzr, [x8, #32]
	ldr	x8, [sp, #16]
	ldr	x9, [sp, #24]
	str	x8, [x9, #16]
	ldr	x9, [sp, #24]
	str	x8, [x9, #24]
	ldr	x8, [sp, #16]
	ldrsw	x9, [sp, #12]
	add	x8, x8, x9, lsl #2
	ldr	x9, [sp, #24]
	str	x8, [x9]
	ldr	x9, [sp, #24]
	str	x8, [x9, #8]
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	stbi__start_mem, .Lfunc_end0-stbi__start_mem
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__start_mem