	.text
	.p2align	2                               // -- Begin function read_multiplicative_expr
	.type	read_multiplicative_expr,@function
read_multiplicative_expr:               // @read_multiplicative_expr
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	bl	read_cast_expr
	stur	x0, [x29, #-8]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	mov	w0, #42
	bl	next_token
	cbz	x0, .LBB0_3
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x0, [x29, #-8]
	bl	conv
	stur	w0, [x29, #-12]                 // 4-byte Folded Spill
	bl	read_cast_expr
	bl	conv
	ldur	w1, [x29, #-12]                 // 4-byte Folded Reload
	mov	w2, w0
	mov	w0, #42
	bl	binop
	stur	x0, [x29, #-8]
	b	.LBB0_10
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	mov	w0, #47
	bl	next_token
	cbz	x0, .LBB0_5
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x0, [x29, #-8]
	bl	conv
	str	w0, [sp, #16]                   // 4-byte Folded Spill
	bl	read_cast_expr
	bl	conv
	ldr	w1, [sp, #16]                   // 4-byte Folded Reload
	mov	w2, w0
	mov	w0, #47
	bl	binop
	stur	x0, [x29, #-8]
	b	.LBB0_9
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	mov	w0, #37
	bl	next_token
	cbz	x0, .LBB0_7
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x0, [x29, #-8]
	bl	conv
	str	w0, [sp, #12]                   // 4-byte Folded Spill
	bl	read_cast_expr
	bl	conv
	ldr	w1, [sp, #12]                   // 4-byte Folded Reload
	mov	w2, w0
	mov	w0, #37
	bl	binop
	stur	x0, [x29, #-8]
	b	.LBB0_8
.LBB0_7:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.LBB0_8:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_10
.LBB0_10:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_1
.Lfunc_end0:
	.size	read_multiplicative_expr, .Lfunc_end0-read_multiplicative_expr
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_multiplicative_expr
	.addrsig_sym read_cast_expr
	.addrsig_sym next_token
	.addrsig_sym binop
	.addrsig_sym conv