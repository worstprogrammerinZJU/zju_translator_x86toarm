	.text
	.p2align	2                               // -- Begin function read_while_stmt
	.type	read_while_stmt,@function
read_while_stmt:                        // @read_while_stmt
// %bb.0:
	sub	sp, sp, #112
	stp	x29, x30, [sp, #96]             // 16-byte Folded Spill
	add	x29, sp, #96
	mov	w0, #40
	bl	expect
	bl	read_boolean_expr
	stur	x0, [x29, #-8]
	mov	w0, #41
	bl	expect
	bl	make_label
	stur	x0, [x29, #-16]
	bl	make_label
	stur	x0, [x29, #-24]
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-24]
	bl	SET_JUMP_LABELS
	bl	read_stmt
	stur	x0, [x29, #-32]
	bl	RESTORE_JUMP_LABELS
	bl	make_vector
	stur	x0, [x29, #-40]
	ldur	x8, [x29, #-40]
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	ldur	x0, [x29, #-16]
	bl	ast_dest
	mov	w1, w0
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	bl	vec_push
	ldur	x8, [x29, #-40]
	str	x8, [sp, #32]                   // 8-byte Folded Spill
	ldur	x8, [x29, #-8]
	str	x8, [sp, #24]                   // 8-byte Folded Spill
	ldur	x8, [x29, #-32]
	str	x8, [sp, #16]                   // 8-byte Folded Spill
	ldur	x0, [x29, #-24]
	bl	ast_jump
	ldr	x1, [sp, #16]                   // 8-byte Folded Reload
	mov	w2, w0
	ldr	x0, [sp, #24]                   // 8-byte Folded Reload
	bl	ast_if
	mov	w1, w0
	ldr	x0, [sp, #32]                   // 8-byte Folded Reload
	bl	vec_push
	ldur	x8, [x29, #-40]
	str	x8, [sp, #40]                   // 8-byte Folded Spill
	ldur	x0, [x29, #-16]
	bl	ast_jump
	mov	w1, w0
	ldr	x0, [sp, #40]                   // 8-byte Folded Reload
	bl	vec_push
	ldur	x8, [x29, #-40]
	str	x8, [sp, #48]                   // 8-byte Folded Spill
	ldur	x0, [x29, #-24]
	bl	ast_dest
	mov	w1, w0
	ldr	x0, [sp, #48]                   // 8-byte Folded Reload
	bl	vec_push
	ldur	x0, [x29, #-40]
	bl	ast_compound_stmt
	ldp	x29, x30, [sp, #96]             // 16-byte Folded Reload
	add	sp, sp, #112
	ret
.Lfunc_end0:
	.size	read_while_stmt, .Lfunc_end0-read_while_stmt
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_while_stmt
	.addrsig_sym expect
	.addrsig_sym read_boolean_expr
	.addrsig_sym make_label
	.addrsig_sym SET_JUMP_LABELS
	.addrsig_sym read_stmt
	.addrsig_sym RESTORE_JUMP_LABELS
	.addrsig_sym make_vector
	.addrsig_sym vec_push
	.addrsig_sym ast_dest
	.addrsig_sym ast_if
	.addrsig_sym ast_jump
	.addrsig_sym ast_compound_stmt