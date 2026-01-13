	.text
	.p2align	2                               // -- Begin function read_intexpr
	.type	read_intexpr,@function
read_intexpr:                           // @read_intexpr
// %bb.0:
	stp	x29, x30, [sp, #-16]!           // 16-byte Folded Spill
	mov	x29, sp
	bl	read_conditional_expr
	mov	x1, xzr
	bl	eval_intexpr
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	read_intexpr, .Lfunc_end0-read_intexpr
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_intexpr
	.addrsig_sym eval_intexpr
	.addrsig_sym read_conditional_expr