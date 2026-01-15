	.text
	.p2align	2                               // -- Begin function read_return_stmt
	.type	read_return_stmt,@function
read_return_stmt:                       // @read_return_stmt
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	bl	read_expr_opt
	str	x0, [sp]
	mov	w0, #59
	bl	expect
	ldr	x8, [sp]
	cbz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	adrp	x8, current_func_type
	ldr	x8, [x8, :lo12:current_func_type]
	ldr	w0, [x8]
	ldr	x1, [sp]
	bl	ast_conv
	bl	ast_return
	str	x0, [sp, #8]
	b	.LBB0_3
.LBB0_2:
	mov	x0, xzr
	bl	ast_return
	str	x0, [sp, #8]
	b	.LBB0_3
.LBB0_3:
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	read_return_stmt, .Lfunc_end0-read_return_stmt
                                        // -- End function
	.type	current_func_type,@object       // @current_func_type
	.bss
	.globl	current_func_type
	.p2align	3
current_func_type:
	.xword	0
	.size	current_func_type, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_return_stmt
	.addrsig_sym read_expr_opt
	.addrsig_sym expect
	.addrsig_sym ast_return
	.addrsig_sym ast_conv
	.addrsig_sym current_func_type