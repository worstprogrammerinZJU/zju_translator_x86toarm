	.text
	.p2align	2                               // -- Begin function read_for_stmt
	.type	read_for_stmt,@function
read_for_stmt:                          // @read_for_stmt
// %bb.0:
	sub	sp, sp, #144
	stp	x29, x30, [sp, #128]            // 16-byte Folded Spill
	add	x29, sp, #128
	mov	w0, #40
	bl	expect
	bl	make_label
	stur	x0, [x29, #-8]
	bl	make_label
	stur	x0, [x29, #-16]
	bl	make_label
	stur	x0, [x29, #-24]
	adrp	x8, localenv
	str	x8, [sp, #48]                   // 8-byte Folded Spill
	ldr	x9, [x8, :lo12:localenv]
	stur	x9, [x29, #-32]
	ldr	x0, [x8, :lo12:localenv]
	bl	make_map_parent
	ldr	x8, [sp, #48]                   // 8-byte Folded Reload
	str	x0, [x8, :lo12:localenv]
	bl	read_opt_decl_or_stmt
	stur	x0, [x29, #-40]
	bl	read_expr_opt
	stur	x0, [x29, #-48]
	ldur	x8, [x29, #-48]
	cbz	x8, .LBB0_3
	b	.LBB0_1
.LBB0_1:
	ldur	x8, [x29, #-48]
	ldr	w0, [x8]
	bl	is_flotype
	cbz	x0, .LBB0_3
	b	.LBB0_2
.LBB0_2:
	adrp	x8, type_bool
	ldr	w0, [x8, :lo12:type_bool]
	ldur	x1, [x29, #-48]
	bl	ast_conv
	stur	x0, [x29, #-48]
	b	.LBB0_3
.LBB0_3:
	mov	w0, #59
	bl	expect
	bl	read_expr_opt
	stur	x0, [x29, #-56]
	mov	w0, #41
	bl	expect
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-24]
	bl	SET_JUMP_LABELS
	bl	read_stmt
	str	x0, [sp, #64]
	bl	RESTORE_JUMP_LABELS
	ldur	x8, [x29, #-32]
	adrp	x9, localenv
	str	x8, [x9, :lo12:localenv]
	bl	make_vector
	str	x0, [sp, #56]
	ldur	x8, [x29, #-40]
	cbz	x8, .LBB0_5
	b	.LBB0_4
.LBB0_4:
	ldr	x0, [sp, #56]
	ldur	x1, [x29, #-40]
	bl	vec_push
	b	.LBB0_5
.LBB0_5:
	ldr	x8, [sp, #56]
	str	x8, [sp, #40]                   // 8-byte Folded Spill
	ldur	x0, [x29, #-8]
	bl	ast_dest
	mov	x1, x0
	ldr	x0, [sp, #40]                   // 8-byte Folded Reload
	bl	vec_push
	ldur	x8, [x29, #-48]
	cbz	x8, .LBB0_7
	b	.LBB0_6
.LBB0_6:
	ldr	x8, [sp, #56]
	str	x8, [sp, #32]                   // 8-byte Folded Spill
	ldur	x8, [x29, #-48]
	str	x8, [sp, #24]                   // 8-byte Folded Spill
	ldur	x0, [x29, #-24]
	bl	ast_jump
	mov	x2, x0
	ldr	x0, [sp, #24]                   // 8-byte Folded Reload
	mov	x1, xzr
	bl	ast_if
	mov	x1, x0
	ldr	x0, [sp, #32]                   // 8-byte Folded Reload
	bl	vec_push
	b	.LBB0_7
.LBB0_7:
	ldr	x8, [sp, #64]
	cbz	x8, .LBB0_9
	b	.LBB0_8
.LBB0_8:
	ldr	x0, [sp, #56]
	ldr	x1, [sp, #64]
	bl	vec_push
	b	.LBB0_9
.LBB0_9:
	ldr	x8, [sp, #56]
	str	x8, [sp, #16]                   // 8-byte Folded Spill
	ldur	x0, [x29, #-16]
	bl	ast_dest
	mov	x1, x0
	ldr	x0, [sp, #16]                   // 8-byte Folded Reload
	bl	vec_push
	ldur	x8, [x29, #-56]
	cbz	x8, .LBB0_11
	b	.LBB0_10
.LBB0_10:
	ldr	x0, [sp, #56]
	ldur	x1, [x29, #-56]
	bl	vec_push
	b	.LBB0_11
.LBB0_11:
	ldr	x8, [sp, #56]
	str	x8, [sp]                        // 8-byte Folded Spill
	ldur	x0, [x29, #-8]
	bl	ast_jump
	mov	x1, x0
	ldr	x0, [sp]                        // 8-byte Folded Reload
	bl	vec_push
	ldr	x8, [sp, #56]
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	ldur	x0, [x29, #-24]
	bl	ast_dest
	mov	x1, x0
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	bl	vec_push
	ldr	x0, [sp, #56]
	bl	ast_compound_stmt
	ldp	x29, x30, [sp, #128]            // 16-byte Folded Reload
	add	sp, sp, #144
	ret
.Lfunc_end0:
	.size	read_for_stmt, .Lfunc_end0-read_for_stmt
                                        // -- End function
	.type	localenv,@object                // @localenv
	.bss
	.globl	localenv
	.p2align	3
localenv:
	.xword	0
	.size	localenv, 8
	.type	type_bool,@object               // @type_bool
	.globl	type_bool
	.p2align	2
type_bool:
	.word	0                               // 0x0
	.size	type_bool, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_for_stmt
	.addrsig_sym expect
	.addrsig_sym make_label
	.addrsig_sym make_map_parent
	.addrsig_sym read_opt_decl_or_stmt
	.addrsig_sym read_expr_opt
	.addrsig_sym is_flotype
	.addrsig_sym ast_conv
	.addrsig_sym SET_JUMP_LABELS
	.addrsig_sym read_stmt
	.addrsig_sym RESTORE_JUMP_LABELS
	.addrsig_sym make_vector
	.addrsig_sym vec_push
	.addrsig_sym ast_dest
	.addrsig_sym ast_if
	.addrsig_sym ast_jump
	.addrsig_sym ast_compound_stmt
	.addrsig_sym localenv
	.addrsig_sym type_bool