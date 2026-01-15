	.text
	.p2align	2                               // -- Begin function read_decl_init
	.type	read_decl_init,@function
read_decl_init:                         // @read_decl_init
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	bl	make_vector
	str	x0, [sp, #16]
	bl	peek
	mov	w1, #123
	bl	is_keyword
	cbnz	x0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	x0, [x29, #-8]
	bl	is_string
	cbz	x0, .LBB0_3
	b	.LBB0_2
.LBB0_2:
	ldr	x0, [sp, #16]
	ldur	x1, [x29, #-8]
	mov	w3, wzr
	mov	w2, w3
	bl	read_initializer_list
	b	.LBB0_7
.LBB0_3:
	bl	read_assignment_expr
	bl	conv
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x0, [x8]
	bl	is_arithtype
	cbz	x0, .LBB0_6
	b	.LBB0_4
.LBB0_4:
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	ldr	x8, [x8]
	ldur	x9, [x29, #-8]
	ldr	x9, [x9]
	subs	x8, x8, x9
	b.eq	.LBB0_6
	b	.LBB0_5
.LBB0_5:
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #8]
	bl	ast_conv
	str	x0, [sp, #8]
	b	.LBB0_6
.LBB0_6:
	ldr	x8, [sp, #16]
	str	x8, [sp]                        // 8-byte Folded Spill
	ldr	x0, [sp, #8]
	ldur	x1, [x29, #-8]
	mov	w2, wzr
	bl	ast_init
	mov	w1, w0
	ldr	x0, [sp]                        // 8-byte Folded Reload
	bl	vec_push
	b	.LBB0_7
.LBB0_7:
	ldr	x0, [sp, #16]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	read_decl_init, .Lfunc_end0-read_decl_init
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_decl_init
	.addrsig_sym make_vector
	.addrsig_sym is_keyword
	.addrsig_sym peek
	.addrsig_sym is_string
	.addrsig_sym read_initializer_list
	.addrsig_sym conv
	.addrsig_sym read_assignment_expr
	.addrsig_sym is_arithtype
	.addrsig_sym ast_conv
	.addrsig_sym vec_push
	.addrsig_sym ast_init