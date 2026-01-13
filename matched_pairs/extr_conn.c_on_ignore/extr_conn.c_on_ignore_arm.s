	.text
	.p2align	2                               // -- Begin function on_ignore
	.type	on_ignore,@function
on_ignore:                              // @on_ignore
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	bl	UNUSED_PARAMETER
	ldr	x0, [sp, #8]
	bl	UNUSED_PARAMETER
	ldr	x9, [sp, #16]
	ldr	w8, [x9]
	subs	w8, w8, #1
	str	w8, [x9]
	ldr	x0, [sp, #16]
	bl	tube_dref
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	on_ignore, .Lfunc_end0-on_ignore
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym on_ignore
	.addrsig_sym UNUSED_PARAMETER
	.addrsig_sym tube_dref