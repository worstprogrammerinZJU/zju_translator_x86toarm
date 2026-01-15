	.text
	.p2align	2                               // -- Begin function defined
	.type	defined,@function
defined:                                // @defined
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	stur	wzr, [x29, #-4]
	ldur	w1, [x29, #-4]
	mov	w0, #1
	bl	expect
	ldur	w1, [x29, #-4]
	mov	w0, #2
	bl	expect
	mov	w0, #4
	stur	w0, [x29, #-4]
	ldur	w1, [x29, #-4]
	bl	expect
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	defined, .Lfunc_end0-defined
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym defined
	.addrsig_sym expect