	.text
	.p2align	2                               // -- Begin function read_additive_expr
	.type	read_additive_expr,@function
read_additive_expr:                     // @read_additive_expr
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	bl	read_multiplicative_expr
	str	x0, [sp, #8]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	mov	w0, #43
	bl	next_token
	cbz	x0, .LBB0_3
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x0, [sp, #8]
	bl	conv
	str	w0, [sp, #4]                    // 4-byte Folded Spill
	bl	read_multiplicative_expr
	bl	conv
	ldr	w1, [sp, #4]                    // 4-byte Folded Reload
	mov	w2, w0
	mov	w0, #43
	bl	binop
	str	x0, [sp, #8]
	b	.LBB0_7
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	mov	w0, #45
	bl	next_token
	cbz	x0, .LBB0_5
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x0, [sp, #8]
	bl	conv
	str	w0, [sp]                        // 4-byte Folded Spill
	bl	read_multiplicative_expr
	bl	conv
	ldr	w1, [sp]                        // 4-byte Folded Reload
	mov	w2, w0
	mov	w0, #45
	bl	binop
	str	x0, [sp, #8]
	b	.LBB0_6
.LBB0_5:
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_1
.Lfunc_end0:
	.size	read_additive_expr, .Lfunc_end0-read_additive_expr
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_additive_expr
	.addrsig_sym read_multiplicative_expr
	.addrsig_sym next_token
	.addrsig_sym binop
	.addrsig_sym conv