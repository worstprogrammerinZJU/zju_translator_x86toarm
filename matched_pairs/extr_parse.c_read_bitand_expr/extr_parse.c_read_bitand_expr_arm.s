	.text
	.p2align	2                               // -- Begin function read_bitand_expr
	.type	read_bitand_expr,@function
read_bitand_expr:                       // @read_bitand_expr
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	bl	read_equality_expr
	str	x0, [sp, #8]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	mov	w0, #38
	bl	next_token
	cbz	x0, .LBB0_3
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x0, [sp, #8]
	bl	conv
	str	w0, [sp, #4]                    // 4-byte Folded Spill
	bl	read_equality_expr
	bl	conv
	ldr	w1, [sp, #4]                    // 4-byte Folded Reload
	mov	w2, w0
	mov	w0, #38
	bl	binop
	str	x0, [sp, #8]
	b	.LBB0_1
.LBB0_3:
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	read_bitand_expr, .Lfunc_end0-read_bitand_expr
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_bitand_expr
	.addrsig_sym read_equality_expr
	.addrsig_sym next_token
	.addrsig_sym binop
	.addrsig_sym conv