	.text
	.p2align	2                               // -- Begin function ifdef
	.type	ifdef,@function
ifdef:                                  // @ifdef
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	stur	wzr, [x29, #-4]
	mov	w8, #2
	stur	w8, [x29, #-4]
	ldur	w0, [x29, #-4]
	mov	w1, #1
	bl	expect
	mov	w1, #4
	stur	w1, [x29, #-4]
	ldur	w0, [x29, #-4]
	bl	expect
	mov	w8, #5
	stur	w8, [x29, #-4]
	ldur	w0, [x29, #-4]
	mov	w1, #6
	bl	expect
	mov	w1, #7
	stur	w1, [x29, #-4]
	ldur	w0, [x29, #-4]
	bl	expect
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	ifdef, .Lfunc_end0-ifdef
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym ifdef
	.addrsig_sym expect