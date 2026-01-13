	.text
	.p2align	2                               // -- Begin function read_assignment_expr
	.type	read_assignment_expr,@function
read_assignment_expr:                   // @read_assignment_expr
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	bl	read_logor_expr
	stur	x0, [x29, #-16]
	bl	get
	stur	x0, [x29, #-24]
	ldur	x8, [x29, #-24]
	cbnz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	.LBB0_17
.LBB0_2:
	ldur	x0, [x29, #-24]
	mov	w1, #63
	bl	is_keyword
	cbz	x0, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldur	x0, [x29, #-16]
	bl	do_read_conditional_expr
	stur	x0, [x29, #-8]
	b	.LBB0_17
.LBB0_4:
	ldur	x0, [x29, #-24]
	bl	get_compound_assign_op
	stur	w0, [x29, #-28]
	ldur	x0, [x29, #-24]
	mov	w1, #61
	bl	is_keyword
	cbnz	x0, .LBB0_6
	b	.LBB0_5
.LBB0_5:
	ldur	w8, [x29, #-28]
	cbz	w8, .LBB0_16
	b	.LBB0_6
.LBB0_6:
	bl	read_assignment_expr
	bl	conv
	str	x0, [sp, #24]
	ldur	x0, [x29, #-24]
	mov	w1, #61
	bl	is_keyword
	cbnz	x0, .LBB0_8
	b	.LBB0_7
.LBB0_7:
	ldur	w8, [x29, #-28]
	cbz	w8, .LBB0_9
	b	.LBB0_8
.LBB0_8:
	ldur	x0, [x29, #-16]
	bl	ensure_lvalue
	b	.LBB0_9
.LBB0_9:
	ldur	w8, [x29, #-28]
	cbz	w8, .LBB0_11
	b	.LBB0_10
.LBB0_10:
	ldur	w8, [x29, #-28]
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	ldur	x0, [x29, #-16]
	bl	conv
	mov	x1, x0
	ldr	w0, [sp, #4]                    // 4-byte Folded Reload
	ldr	x2, [sp, #24]
	bl	binop
	str	x0, [sp, #8]                    // 8-byte Folded Spill
	b	.LBB0_12
.LBB0_11:
	ldr	x8, [sp, #24]
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	b	.LBB0_12
.LBB0_12:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	str	x8, [sp, #16]
	ldur	x8, [x29, #-16]
	ldr	x0, [x8]
	bl	is_arithtype
	cbz	x0, .LBB0_15
	b	.LBB0_13
.LBB0_13:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	ldr	x8, [x8]
	ldr	x9, [sp, #16]
	ldr	x9, [x9]
	ldr	x9, [x9]
	subs	x8, x8, x9
	b.eq	.LBB0_15
	b	.LBB0_14
.LBB0_14:
	ldur	x8, [x29, #-16]
	ldr	x0, [x8]
	ldr	x1, [sp, #16]
	bl	ast_conv
	str	x0, [sp, #16]
	b	.LBB0_15
.LBB0_15:
	ldur	x8, [x29, #-16]
	ldr	x0, [x8]
	ldur	x2, [x29, #-16]
	ldr	x3, [sp, #16]
	mov	w1, #61
	bl	ast_binop
	stur	x0, [x29, #-8]
	b	.LBB0_17
.LBB0_16:
	ldur	x0, [x29, #-24]
	bl	unget_token
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	.LBB0_17
.LBB0_17:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	read_assignment_expr, .Lfunc_end0-read_assignment_expr
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_assignment_expr
	.addrsig_sym read_logor_expr
	.addrsig_sym get
	.addrsig_sym is_keyword
	.addrsig_sym do_read_conditional_expr
	.addrsig_sym get_compound_assign_op
	.addrsig_sym conv
	.addrsig_sym ensure_lvalue
	.addrsig_sym binop
	.addrsig_sym is_arithtype
	.addrsig_sym ast_conv
	.addrsig_sym ast_binop
	.addrsig_sym unget_token