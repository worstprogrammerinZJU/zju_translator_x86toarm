	.text
	.p2align	2                               // -- Begin function read_conditional_expr
	.type	read_conditional_expr,@function
read_conditional_expr:                  // @read_conditional_expr
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	bl	read_logor_expr
	str	x0, [sp]
	mov	w0, #63
	bl	next_token
	cbnz	w0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x8, [sp]
	str	x8, [sp, #8]
	b	.LBB0_3
.LBB0_2:
	ldr	x0, [sp]
	bl	do_read_conditional_expr
	str	x0, [sp, #8]
	b	.LBB0_3
.LBB0_3:
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	read_conditional_expr, .Lfunc_end0-read_conditional_expr
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_conditional_expr
	.addrsig_sym read_logor_expr
	.addrsig_sym next_token
	.addrsig_sym do_read_conditional_expr