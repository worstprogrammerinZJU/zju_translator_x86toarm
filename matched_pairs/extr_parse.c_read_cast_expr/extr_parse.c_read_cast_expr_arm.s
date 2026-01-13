	.text
	.p2align	2                               // -- Begin function read_cast_expr
	.type	read_cast_expr,@function
read_cast_expr:                         // @read_cast_expr
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	bl	get
	stur	x0, [x29, #-16]
	ldur	x0, [x29, #-16]
	mov	w1, #40
	bl	is_keyword
	cbz	x0, .LBB0_5
	b	.LBB0_1
.LBB0_1:
	bl	peek
	bl	is_type
	cbz	x0, .LBB0_5
	b	.LBB0_2
.LBB0_2:
	bl	read_cast_type
	str	x0, [sp, #24]
	mov	w0, #41
	bl	expect
	bl	peek
	mov	w1, #123
	bl	is_keyword
	cbz	x0, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldr	x0, [sp, #24]
	bl	read_compound_literal
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	bl	read_postfix_expr_tail
	stur	x0, [x29, #-8]
	b	.LBB0_6
.LBB0_4:
	adrp	x8, OP_CAST
	ldr	w8, [x8, :lo12:OP_CAST]
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	ldr	x8, [sp, #24]
	str	x8, [sp]                        // 8-byte Folded Spill
	bl	read_cast_expr
	ldr	x1, [sp]                        // 8-byte Folded Reload
	mov	x2, x0
	ldr	w0, [sp, #12]                   // 4-byte Folded Reload
	bl	ast_uop
	stur	x0, [x29, #-8]
	b	.LBB0_6
.LBB0_5:
	ldur	x0, [x29, #-16]
	bl	unget_token
	bl	read_unary_expr
	stur	x0, [x29, #-8]
	b	.LBB0_6
.LBB0_6:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	read_cast_expr, .Lfunc_end0-read_cast_expr
                                        // -- End function
	.type	OP_CAST,@object                 // @OP_CAST
	.bss
	.globl	OP_CAST
	.p2align	2
OP_CAST:
	.word	0                               // 0x0
	.size	OP_CAST, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_cast_expr
	.addrsig_sym get
	.addrsig_sym is_keyword
	.addrsig_sym is_type
	.addrsig_sym peek
	.addrsig_sym read_cast_type
	.addrsig_sym expect
	.addrsig_sym read_compound_literal
	.addrsig_sym read_postfix_expr_tail
	.addrsig_sym ast_uop
	.addrsig_sym unget_token
	.addrsig_sym read_unary_expr
	.addrsig_sym OP_CAST