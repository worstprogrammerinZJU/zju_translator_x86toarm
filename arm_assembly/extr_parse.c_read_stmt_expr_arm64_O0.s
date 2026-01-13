	.text
	.p2align	2                               // -- Begin function read_stmt_expr
	.type	read_stmt_expr,@function
read_stmt_expr:                         // @read_stmt_expr
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	bl	read_compound_stmt
	stur	x0, [x29, #-8]
	mov	w0, #41
	bl	expect
	adrp	x8, type_void
	ldr	x8, [x8, :lo12:type_void]
	str	x8, [sp, #16]
	ldur	x8, [x29, #-8]
	ldr	w0, [x8, #8]
	bl	vec_len
	subs	x8, x0, #0
	b.le	.LBB0_4
	b	.LBB0_1
.LBB0_1:
	ldur	x8, [x29, #-8]
	ldr	w0, [x8, #8]
	bl	vec_tail
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	cbz	x8, .LBB0_3
	b	.LBB0_2
.LBB0_2:
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	str	x8, [sp, #16]
	b	.LBB0_3
.LBB0_3:
	b	.LBB0_4
.LBB0_4:
	ldr	x8, [sp, #16]
	ldur	x9, [x29, #-8]
	str	x8, [x9]
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	read_stmt_expr, .Lfunc_end0-read_stmt_expr
                                        // -- End function
	.type	type_void,@object               // @type_void
	.bss
	.globl	type_void
	.p2align	3
type_void:
	.xword	0
	.size	type_void, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_stmt_expr
	.addrsig_sym read_compound_stmt
	.addrsig_sym expect
	.addrsig_sym vec_len
	.addrsig_sym vec_tail
	.addrsig_sym type_void