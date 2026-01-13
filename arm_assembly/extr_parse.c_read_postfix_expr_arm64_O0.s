	.text
	.p2align	2                               // -- Begin function read_postfix_expr
	.type	read_postfix_expr,@function
read_postfix_expr:                      // @read_postfix_expr
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	bl	read_primary_expr
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	read_postfix_expr_tail
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	read_postfix_expr, .Lfunc_end0-read_postfix_expr
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_postfix_expr
	.addrsig_sym read_primary_expr
	.addrsig_sym read_postfix_expr_tail