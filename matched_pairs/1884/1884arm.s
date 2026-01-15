	.text
	.p2align	2                               // -- Begin function read_expr_opt
	.type	read_expr_opt,@function
read_expr_opt:                          // @read_expr_opt
// %bb.0:
	stp	x29, x30, [sp, #-16]!           // 16-byte Folded Spill
	mov	x29, sp
	bl	read_comma_expr
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	read_expr_opt, .Lfunc_end0-read_expr_opt
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_expr_opt
	.addrsig_sym read_comma_expr