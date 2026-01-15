	.text
	.p2align	2                               // -- Begin function less
	.type	less,@function
less:                                   // @less
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	ldur	x9, [x29, #-8]
	ldr	x9, [x9, #8]
	ldr	x10, [sp, #16]
	ldr	w0, [x9, x10, lsl #2]
	ldur	x9, [x29, #-8]
	ldr	x9, [x9, #8]
	ldr	x10, [sp, #8]
	ldr	w1, [x9, x10, lsl #2]
	blr	x8
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	less, .Lfunc_end0-less
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym less