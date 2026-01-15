	.text
	.p2align	2                               // -- Begin function read_unary_minus
	.type	read_unary_minus,@function
read_unary_minus:                       // @read_unary_minus
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	bl	read_cast_expr
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	bl	ensure_arithtype
	ldr	x8, [sp, #16]
	ldr	w0, [x8]
	bl	is_inttype
	cbz	x0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x8, [sp, #16]
	ldr	w0, [x8]
	mov	w1, wzr
	bl	ast_inttype
	bl	conv
	str	x0, [sp, #8]                    // 8-byte Folded Spill
	ldr	x0, [sp, #16]
	bl	conv
	ldr	x1, [sp, #8]                    // 8-byte Folded Reload
	mov	x2, x0
	mov	w0, #45
	bl	binop
	stur	x0, [x29, #-8]
	b	.LBB0_3
.LBB0_2:
	ldr	x8, [sp, #16]
	ldr	w0, [x8]
	mov	w1, wzr
	bl	ast_floattype
	mov	x1, x0
	ldr	x2, [sp, #16]
	mov	w0, #45
	bl	binop
	stur	x0, [x29, #-8]
	b	.LBB0_3
.LBB0_3:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	read_unary_minus, .Lfunc_end0-read_unary_minus
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_unary_minus
	.addrsig_sym read_cast_expr
	.addrsig_sym ensure_arithtype
	.addrsig_sym is_inttype
	.addrsig_sym binop
	.addrsig_sym conv
	.addrsig_sym ast_inttype
	.addrsig_sym ast_floattype