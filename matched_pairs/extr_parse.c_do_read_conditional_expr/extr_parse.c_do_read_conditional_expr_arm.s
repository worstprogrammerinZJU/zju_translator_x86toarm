	.text
	.p2align	2                               // -- Begin function do_read_conditional_expr
	.type	do_read_conditional_expr,@function
do_read_conditional_expr:               // @do_read_conditional_expr
// %bb.0:
	sub	sp, sp, #112
	stp	x29, x30, [sp, #96]             // 16-byte Folded Spill
	add	x29, sp, #96
	stur	x0, [x29, #-16]
	bl	read_comma_expr
	bl	conv
	stur	x0, [x29, #-24]
	mov	w0, #58
	bl	expect
	bl	read_conditional_expr
	bl	conv
	stur	x0, [x29, #-32]
	ldur	x8, [x29, #-24]
	cbz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	x8, [x29, #-24]
	ldr	x8, [x8]
	str	x8, [sp, #32]                   // 8-byte Folded Spill
	b	.LBB0_3
.LBB0_2:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	str	x8, [sp, #32]                   // 8-byte Folded Spill
	b	.LBB0_3
.LBB0_3:
	ldr	x8, [sp, #32]                   // 8-byte Folded Reload
	stur	x8, [x29, #-40]
	ldur	x8, [x29, #-32]
	ldr	x8, [x8]
	str	x8, [sp, #48]
	ldur	x0, [x29, #-40]
	bl	is_arithtype
	cbz	x0, .LBB0_9
	b	.LBB0_4
.LBB0_4:
	ldr	x0, [sp, #48]
	bl	is_arithtype
	cbz	x0, .LBB0_9
	b	.LBB0_5
.LBB0_5:
	ldur	x0, [x29, #-40]
	ldr	x1, [sp, #48]
	bl	usual_arith_conv
	str	x0, [sp, #40]
	ldr	x8, [sp, #40]
	str	x8, [sp, #16]                   // 8-byte Folded Spill
	ldur	x8, [x29, #-16]
	str	x8, [sp, #24]                   // 8-byte Folded Spill
	ldur	x8, [x29, #-24]
	cbz	x8, .LBB0_7
	b	.LBB0_6
.LBB0_6:
	ldr	x0, [sp, #40]
	ldur	x1, [x29, #-24]
	bl	wrap
	str	x0, [sp, #8]                    // 8-byte Folded Spill
	b	.LBB0_8
.LBB0_7:
	mov	x8, xzr
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	b	.LBB0_8
.LBB0_8:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	str	x8, [sp]                        // 8-byte Folded Spill
	ldr	x0, [sp, #40]
	ldur	x1, [x29, #-32]
	bl	wrap
	ldr	x1, [sp, #24]                   // 8-byte Folded Reload
	ldr	x2, [sp]                        // 8-byte Folded Reload
	mov	x3, x0
	ldr	x0, [sp, #16]                   // 8-byte Folded Reload
	bl	ast_ternary
	stur	x0, [x29, #-8]
	b	.LBB0_10
.LBB0_9:
	ldr	x0, [sp, #48]
	ldur	x1, [x29, #-16]
	ldur	x2, [x29, #-24]
	ldur	x3, [x29, #-32]
	bl	ast_ternary
	stur	x0, [x29, #-8]
	b	.LBB0_10
.LBB0_10:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #96]             // 16-byte Folded Reload
	add	sp, sp, #112
	ret
.Lfunc_end0:
	.size	do_read_conditional_expr, .Lfunc_end0-do_read_conditional_expr
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym do_read_conditional_expr
	.addrsig_sym conv
	.addrsig_sym read_comma_expr
	.addrsig_sym expect
	.addrsig_sym read_conditional_expr
	.addrsig_sym is_arithtype
	.addrsig_sym usual_arith_conv
	.addrsig_sym ast_ternary
	.addrsig_sym wrap