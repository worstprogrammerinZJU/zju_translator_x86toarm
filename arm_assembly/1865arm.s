	.text
	.p2align	2                               // -- Begin function read_compound_literal
	.type	read_compound_literal,@function
read_compound_literal:                  // @read_compound_literal
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	bl	make_label
	str	x0, [sp, #16]
	ldur	x0, [x29, #-8]
	bl	read_decl_init
	str	x0, [sp, #8]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	bl	ast_lvar
	str	x0, [sp]
	ldr	x8, [sp, #8]
	ldr	x9, [sp]
	str	x8, [x9]
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	read_compound_literal, .Lfunc_end0-read_compound_literal
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_compound_literal
	.addrsig_sym make_label
	.addrsig_sym read_decl_init
	.addrsig_sym ast_lvar