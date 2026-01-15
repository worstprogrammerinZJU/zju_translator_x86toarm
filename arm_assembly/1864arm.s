	.text
	.p2align	2                               // -- Begin function read_comma_expr
	.type	read_comma_expr,@function
read_comma_expr:                        // @read_comma_expr
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	bl	read_assignment_expr
	str	x0, [sp, #8]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	mov	w0, #44
	bl	next_token
	cbz	x0, .LBB0_3
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	bl	read_assignment_expr
	str	x0, [sp]
	ldr	x8, [sp]
	ldr	w0, [x8]
	ldr	x2, [sp, #8]
	ldr	x3, [sp]
	mov	w1, #44
	bl	ast_binop
	str	x0, [sp, #8]
	b	.LBB0_1
.LBB0_3:
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	read_comma_expr, .Lfunc_end0-read_comma_expr
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_comma_expr
	.addrsig_sym read_assignment_expr
	.addrsig_sym next_token
	.addrsig_sym ast_binop