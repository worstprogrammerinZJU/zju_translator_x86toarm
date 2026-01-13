	.text
	.p2align	2                               // -- Begin function read_switch_stmt
	.type	read_switch_stmt,@function
read_switch_stmt:                       // @read_switch_stmt
// %bb.0:
	sub	sp, sp, #128
	stp	x29, x30, [sp, #112]            // 16-byte Folded Spill
	add	x29, sp, #112
	mov	w0, #40
	bl	expect
	bl	read_expr
	bl	conv
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	bl	ensure_inttype
	mov	w0, #41
	bl	expect
	bl	make_label
	stur	x0, [x29, #-16]
	ldur	x0, [x29, #-16]
	bl	SET_SWITCH_CONTEXT
	bl	read_stmt
	stur	x0, [x29, #-24]
	bl	make_vector
	stur	x0, [x29, #-32]
	ldur	x8, [x29, #-8]
	ldr	w8, [x8]
	str	w8, [sp, #52]                   // 4-byte Folded Spill
	bl	make_tempname
	mov	w1, w0
	ldr	w0, [sp, #52]                   // 4-byte Folded Reload
	bl	ast_lvar
	stur	x0, [x29, #-40]
	ldur	x8, [x29, #-32]
	str	x8, [sp, #56]                   // 8-byte Folded Spill
	ldur	x8, [x29, #-8]
	ldr	w0, [x8]
	ldur	x2, [x29, #-40]
	ldur	x3, [x29, #-8]
	mov	w1, #61
	bl	ast_binop
	mov	x1, x0
	ldr	x0, [sp, #56]                   // 8-byte Folded Reload
	bl	vec_push
	stur	wzr, [x29, #-44]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-44]
	str	w8, [sp, #48]                   // 4-byte Folded Spill
	adrp	x8, cases
	ldr	w0, [x8, :lo12:cases]
	bl	vec_len
	ldr	w8, [sp, #48]                   // 4-byte Folded Reload
	subs	w8, w8, w0
	b.ge	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-32]
	str	x8, [sp, #40]                   // 8-byte Folded Spill
	ldur	x8, [x29, #-40]
	str	x8, [sp, #32]                   // 8-byte Folded Spill
	adrp	x8, cases
	ldr	w0, [x8, :lo12:cases]
	ldur	w1, [x29, #-44]
	bl	vec_get
	mov	w1, w0
	ldr	x0, [sp, #32]                   // 8-byte Folded Reload
	bl	make_switch_jump
	mov	x1, x0
	ldr	x0, [sp, #40]                   // 8-byte Folded Reload
	bl	vec_push
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-44]
	add	w8, w8, #1
	stur	w8, [x29, #-44]
	b	.LBB0_1
.LBB0_4:
	ldur	x8, [x29, #-32]
	str	x8, [sp, #24]                   // 8-byte Folded Spill
	adrp	x8, defaultcase
	ldr	x8, [x8, :lo12:defaultcase]
	cbz	x8, .LBB0_6
	b	.LBB0_5
.LBB0_5:
	adrp	x8, defaultcase
	ldr	x8, [x8, :lo12:defaultcase]
	str	x8, [sp, #16]                   // 8-byte Folded Spill
	b	.LBB0_7
.LBB0_6:
	ldur	x8, [x29, #-16]
	str	x8, [sp, #16]                   // 8-byte Folded Spill
	b	.LBB0_7
.LBB0_7:
	ldr	x0, [sp, #16]                   // 8-byte Folded Reload
	bl	ast_jump
	mov	x1, x0
	ldr	x0, [sp, #24]                   // 8-byte Folded Reload
	bl	vec_push
	ldur	x8, [x29, #-24]
	cbz	x8, .LBB0_9
	b	.LBB0_8
.LBB0_8:
	ldur	x0, [x29, #-32]
	ldur	x1, [x29, #-24]
	bl	vec_push
	b	.LBB0_9
.LBB0_9:
	ldur	x8, [x29, #-32]
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	ldur	x0, [x29, #-16]
	bl	ast_dest
	mov	x1, x0
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	bl	vec_push
	bl	RESTORE_SWITCH_CONTEXT
	ldur	x0, [x29, #-32]
	bl	ast_compound_stmt
	ldp	x29, x30, [sp, #112]            // 16-byte Folded Reload
	add	sp, sp, #128
	ret
.Lfunc_end0:
	.size	read_switch_stmt, .Lfunc_end0-read_switch_stmt
                                        // -- End function
	.type	cases,@object                   // @cases
	.bss
	.globl	cases
	.p2align	2
cases:
	.word	0                               // 0x0
	.size	cases, 4
	.type	defaultcase,@object             // @defaultcase
	.globl	defaultcase
	.p2align	3
defaultcase:
	.xword	0
	.size	defaultcase, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_switch_stmt
	.addrsig_sym expect
	.addrsig_sym conv
	.addrsig_sym read_expr
	.addrsig_sym ensure_inttype
	.addrsig_sym make_label
	.addrsig_sym SET_SWITCH_CONTEXT
	.addrsig_sym read_stmt
	.addrsig_sym make_vector
	.addrsig_sym ast_lvar
	.addrsig_sym make_tempname
	.addrsig_sym vec_push
	.addrsig_sym ast_binop
	.addrsig_sym vec_len
	.addrsig_sym make_switch_jump
	.addrsig_sym vec_get
	.addrsig_sym ast_jump
	.addrsig_sym ast_dest
	.addrsig_sym RESTORE_SWITCH_CONTEXT
	.addrsig_sym ast_compound_stmt
	.addrsig_sym cases
	.addrsig_sym defaultcase