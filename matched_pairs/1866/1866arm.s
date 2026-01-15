	.text
	.p2align	2                               // -- Begin function read_compound_stmt
	.type	read_compound_stmt,@function
read_compound_stmt:                     // @read_compound_stmt
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	adrp	x8, localenv
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	ldr	x9, [x8, :lo12:localenv]
	stur	x9, [x29, #-8]
	ldr	x0, [x8, :lo12:localenv]
	bl	make_map_parent
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	str	x0, [x8, :lo12:localenv]
	bl	make_vector
	str	x0, [sp, #16]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	mov	w0, #125
	bl	next_token
	cbz	x0, .LBB0_3
	b	.LBB0_2
.LBB0_2:
	b	.LBB0_4
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x0, [sp, #16]
	bl	read_decl_or_stmt
	b	.LBB0_1
.LBB0_4:
	ldur	x8, [x29, #-8]
	adrp	x9, localenv
	str	x8, [x9, :lo12:localenv]
	ldr	x0, [sp, #16]
	bl	ast_compound_stmt
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	read_compound_stmt, .Lfunc_end0-read_compound_stmt
                                        // -- End function
	.type	localenv,@object                // @localenv
	.bss
	.globl	localenv
	.p2align	3
localenv:
	.xword	0
	.size	localenv, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_compound_stmt
	.addrsig_sym make_map_parent
	.addrsig_sym make_vector
	.addrsig_sym next_token
	.addrsig_sym read_decl_or_stmt
	.addrsig_sym ast_compound_stmt
	.addrsig_sym localenv