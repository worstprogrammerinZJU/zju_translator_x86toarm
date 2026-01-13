	.text
	.p2align	2                               // -- Begin function emit_decl_init
	.type	emit_decl_init,@function
emit_decl_init:                         // @emit_decl_init
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	stur	w2, [x29, #-16]
	ldur	x0, [x29, #-8]
	ldur	w1, [x29, #-12]
	ldur	w2, [x29, #-16]
	bl	emit_fill_holes
	stur	wzr, [x29, #-20]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-20]
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	ldur	x0, [x29, #-8]
	bl	vec_len
	ldr	w8, [sp, #8]                    // 4-byte Folded Reload
	subs	w8, w8, w0
	b.ge	.LBB0_8
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x0, [x29, #-8]
	ldur	w1, [x29, #-20]
	bl	vec_get
	str	x0, [sp, #16]
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	adrp	x9, AST_INIT
	ldr	x9, [x9, :lo12:AST_INIT]
	subs	x8, x8, x9
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #16]
	ldr	x8, [x8]
	subs	x8, x8, #0
	cset	w8, gt
	and	w8, w8, #0x1
	str	w8, [sp, #12]
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #24]
	ldr	x8, [x8]
	adrp	x9, AST_LITERAL
	ldr	x9, [x9, :lo12:AST_LITERAL]
	subs	x8, x8, x9
	b.ne	.LBB0_5
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #12]
	cbnz	w8, .LBB0_5
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #16]
	ldr	x0, [x8, #24]
	ldr	x8, [sp, #16]
	ldr	x1, [x8, #16]
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #8]
	ldursw	x9, [x29, #-12]
	add	x2, x8, x9
	bl	emit_save_literal
	b	.LBB0_6
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #16]
	ldr	x0, [x8, #24]
	bl	emit_expr
	ldr	x8, [sp, #16]
	ldr	x0, [x8, #16]
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #8]
	ldursw	x9, [x29, #-12]
	add	x1, x8, x9
	bl	emit_lsave
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-20]
	add	w8, w8, #1
	stur	w8, [x29, #-20]
	b	.LBB0_1
.LBB0_8:
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	emit_decl_init, .Lfunc_end0-emit_decl_init
                                        // -- End function
	.type	AST_INIT,@object                // @AST_INIT
	.bss
	.globl	AST_INIT
	.p2align	3
AST_INIT:
	.xword	0                               // 0x0
	.size	AST_INIT, 8
	.type	AST_LITERAL,@object             // @AST_LITERAL
	.globl	AST_LITERAL
	.p2align	3
AST_LITERAL:
	.xword	0                               // 0x0
	.size	AST_LITERAL, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym emit_decl_init
	.addrsig_sym emit_fill_holes
	.addrsig_sym vec_len
	.addrsig_sym vec_get
	.addrsig_sym assert
	.addrsig_sym emit_save_literal
	.addrsig_sym emit_expr
	.addrsig_sym emit_lsave
	.addrsig_sym AST_INIT
	.addrsig_sym AST_LITERAL