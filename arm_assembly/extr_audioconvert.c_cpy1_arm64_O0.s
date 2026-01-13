	.text
	.p2align	2                               // -- Begin function cpy1
	.type	cpy1,@function
cpy1:                                   // @cpy1
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
	ldr	w2, [sp, #12]
	bl	memcpy
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	cpy1, .Lfunc_end0-cpy1
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym cpy1
	.addrsig_sym memcpy