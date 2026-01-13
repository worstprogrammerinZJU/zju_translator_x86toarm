	.text
	.p2align	2                               // -- Begin function stbi__malloc_mad2
	.type	stbi__malloc_mad2,@function
stbi__malloc_mad2:                      // @stbi__malloc_mad2
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	w0, [x29, #-12]
	str	w1, [sp, #16]
	str	w2, [sp, #12]
	ldur	w0, [x29, #-12]
	ldr	w1, [sp, #16]
	ldr	w2, [sp, #12]
	bl	stbi__mad2sizes_valid
	cbnz	w0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
                                        // kill: def $x8 killed $xzr
	stur	xzr, [x29, #-8]
	b	.LBB0_3
.LBB0_2:
	ldur	w8, [x29, #-12]
	ldr	w9, [sp, #16]
	mul	w8, w8, w9
	ldr	w9, [sp, #12]
	add	w0, w8, w9
	bl	stbi__malloc
	stur	x0, [x29, #-8]
	b	.LBB0_3
.LBB0_3:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	stbi__malloc_mad2, .Lfunc_end0-stbi__malloc_mad2
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__malloc_mad2
	.addrsig_sym stbi__mad2sizes_valid
	.addrsig_sym stbi__malloc