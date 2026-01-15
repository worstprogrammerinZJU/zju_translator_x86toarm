	.text
	.p2align	2                               // -- Begin function read_unary_incdec
	.type	read_unary_incdec,@function
read_unary_incdec:                      // @read_unary_incdec
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	stur	w0, [x29, #-4]
	bl	read_unary_expr
	str	x0, [sp]
	ldr	x0, [sp]
	bl	conv
	str	x0, [sp]
	ldr	x0, [sp]
	bl	ensure_lvalue
	ldur	w0, [x29, #-4]
	ldr	x8, [sp]
	ldr	w1, [x8]
	ldr	x2, [sp]
	bl	ast_uop
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	read_unary_incdec, .Lfunc_end0-read_unary_incdec
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_unary_incdec
	.addrsig_sym read_unary_expr
	.addrsig_sym conv
	.addrsig_sym ensure_lvalue
	.addrsig_sym ast_uop