	.text
	.p2align	2                               // -- Begin function cpy4
	.type	cpy4,@function
cpy4:                                   // @cpy4
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	w2, [sp, #12]
	ldur	x8, [x29, #-8]
	ldr	x0, [x8]
	ldr	x8, [sp, #16]
	ldr	x1, [x8]
	ldr	w9, [sp, #12]
	mov	w8, #4
	mul	w2, w8, w9
	bl	memcpy
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	cpy4, .Lfunc_end0-cpy4
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym cpy4
	.addrsig_sym memcpy