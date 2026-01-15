	.text
	.p2align	2                               // -- Begin function emit_compound_stmt
	.type	emit_compound_stmt,@function
emit_compound_stmt:                     // @emit_compound_stmt
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	str	wzr, [sp, #4]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #4]
	str	w8, [sp]                        // 4-byte Folded Spill
	ldr	x8, [sp, #8]
	ldr	w0, [x8]
	bl	vec_len
	ldr	w8, [sp]                        // 4-byte Folded Reload
	subs	w8, w8, w0
	b.ge	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #8]
	ldr	w0, [x8]
	ldr	w1, [sp, #4]
	bl	vec_get
	bl	emit_expr
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #4]
	add	w8, w8, #1
	str	w8, [sp, #4]
	b	.LBB0_1
.LBB0_4:
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	emit_compound_stmt, .Lfunc_end0-emit_compound_stmt
                                        // -- End function
	.type	SAVE,@object                    // @SAVE
	.bss
	.globl	SAVE
	.p2align	2
SAVE:
	.word	0                               // 0x0
	.size	SAVE, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym emit_compound_stmt
	.addrsig_sym vec_len
	.addrsig_sym emit_expr
	.addrsig_sym vec_get
	.addrsig_sym SAVE