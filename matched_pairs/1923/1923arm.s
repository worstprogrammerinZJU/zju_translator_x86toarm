	.text
	.p2align	2                               // -- Begin function read_sizeof_operand_sub
	.type	read_sizeof_operand_sub,@function
read_sizeof_operand_sub:                // @read_sizeof_operand_sub
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	bl	get
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	mov	w1, #40
	bl	is_keyword
	cbz	x0, .LBB0_3
	b	.LBB0_1
.LBB0_1:
	bl	peek
	bl	is_type
	cbz	x0, .LBB0_3
	b	.LBB0_2
.LBB0_2:
	bl	read_cast_type
	str	x0, [sp, #8]
	mov	w0, #41
	bl	expect
	ldr	x8, [sp, #8]
	stur	x8, [x29, #-8]
	b	.LBB0_4
.LBB0_3:
	ldr	x0, [sp, #16]
	bl	unget_token
	bl	read_unary_expr
	ldr	x8, [x0]
	stur	x8, [x29, #-8]
	b	.LBB0_4
.LBB0_4:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	read_sizeof_operand_sub, .Lfunc_end0-read_sizeof_operand_sub
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_sizeof_operand_sub
	.addrsig_sym get
	.addrsig_sym is_keyword
	.addrsig_sym is_type
	.addrsig_sym peek
	.addrsig_sym read_cast_type
	.addrsig_sym expect
	.addrsig_sym unget_token
	.addrsig_sym read_unary_expr