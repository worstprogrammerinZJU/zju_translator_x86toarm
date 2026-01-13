	.text
	.p2align	2                               // -- Begin function read_opt_decl_or_stmt
	.type	read_opt_decl_or_stmt,@function
read_opt_decl_or_stmt:                  // @read_opt_decl_or_stmt
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	mov	w0, #59
	bl	next_token
	cbz	x0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
                                        // kill: def $x8 killed $xzr
	str	xzr, [sp, #8]
	b	.LBB0_3
.LBB0_2:
	bl	make_vector
	str	x0, [sp]
	ldr	x0, [sp]
	bl	read_decl_or_stmt
	ldr	x0, [sp]
	bl	ast_compound_stmt
	str	x0, [sp, #8]
	b	.LBB0_3
.LBB0_3:
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	read_opt_decl_or_stmt, .Lfunc_end0-read_opt_decl_or_stmt
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_opt_decl_or_stmt
	.addrsig_sym next_token
	.addrsig_sym make_vector
	.addrsig_sym read_decl_or_stmt
	.addrsig_sym ast_compound_stmt