	.text
	.p2align	2                               // -- Begin function read_define
	.type	read_define,@function
read_define:                            // @read_define
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	bl	read_ident
	str	x0, [sp, #8]
	bl	lex
	str	x0, [sp]
	ldr	x0, [sp]
	mov	w1, #40
	bl	is_keyword
	cbz	x0, .LBB0_3
	b	.LBB0_1
.LBB0_1:
	ldr	x8, [sp]
	ldr	w8, [x8, #4]
	cbnz	w8, .LBB0_3
	b	.LBB0_2
.LBB0_2:
	ldr	x0, [sp, #8]
	bl	read_funclike_macro
	b	.LBB0_4
.LBB0_3:
	ldr	x0, [sp]
	bl	unget_token
	ldr	x8, [sp, #8]
	ldr	w0, [x8]
	bl	read_obj_macro
	b	.LBB0_4
.LBB0_4:
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	read_define, .Lfunc_end0-read_define
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_define
	.addrsig_sym read_ident
	.addrsig_sym lex
	.addrsig_sym is_keyword
	.addrsig_sym read_funclike_macro
	.addrsig_sym unget_token
	.addrsig_sym read_obj_macro