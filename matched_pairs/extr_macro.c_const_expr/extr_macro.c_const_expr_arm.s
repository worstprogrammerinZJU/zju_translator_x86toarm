	.text
	.p2align	2                               // -- Begin function const_expr
	.type	const_expr,@function
const_expr:                             // @const_expr
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	mov	w8, #1
	stur	w8, [x29, #-4]
	mov	w0, #2
	stur	w0, [x29, #-4]
	ldur	w1, [x29, #-4]
	bl	expect
	mov	w0, #4
	stur	w0, [x29, #-4]
	ldur	w1, [x29, #-4]
	bl	expect
	mov	w0, #100
	stur	w0, [x29, #-4]
	ldur	w1, [x29, #-4]
	bl	expect
	mov	w0, #101
	stur	w0, [x29, #-4]
	ldur	w1, [x29, #-4]
	bl	expect
	mov	w0, #102
	stur	w0, [x29, #-4]
	ldur	w1, [x29, #-4]
	bl	expect
	mov	w0, #103
	stur	w0, [x29, #-4]
	ldur	w1, [x29, #-4]
	bl	expect
	mov	w0, #104
	stur	w0, [x29, #-4]
	ldur	w1, [x29, #-4]
	bl	expect
	mov	w0, #7
	stur	w0, [x29, #-4]
	ldur	w1, [x29, #-4]
	bl	expect
	mov	w0, #9
	stur	w0, [x29, #-4]
	ldur	w1, [x29, #-4]
	bl	expect
	mov	w0, #15
	stur	w0, [x29, #-4]
	ldur	w1, [x29, #-4]
	bl	expect
	mov	w0, #11
	stur	w0, [x29, #-4]
	ldur	w1, [x29, #-4]
	bl	expect
	mov	w0, #12
	stur	w0, [x29, #-4]
	ldur	w1, [x29, #-4]
	bl	expect
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	const_expr, .Lfunc_end0-const_expr
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym const_expr
	.addrsig_sym expect