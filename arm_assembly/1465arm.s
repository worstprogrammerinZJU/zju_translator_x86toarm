	.text
	.globl	yylex_destroy                   // -- Begin function yylex_destroy
	.p2align	2
	.type	yylex_destroy,@function
yylex_destroy:                          // @yylex_destroy
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	str	x8, [sp]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	adrp	x8, YY_CURRENT_BUFFER
	ldr	x8, [x8, :lo12:YY_CURRENT_BUFFER]
	cbz	x8, .LBB0_3
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	adrp	x8, YY_CURRENT_BUFFER
	ldr	x0, [x8, :lo12:YY_CURRENT_BUFFER]
	ldr	x1, [sp, #8]
	bl	yy_delete_buffer
	adrp	x8, YY_CURRENT_BUFFER_LVALUE
                                        // kill: def $x9 killed $xzr
	str	xzr, [x8, :lo12:YY_CURRENT_BUFFER_LVALUE]
	ldr	x0, [sp, #8]
	bl	yypop_buffer_state
	b	.LBB0_1
.LBB0_3:
	ldr	x8, [sp]
	ldr	x0, [x8, #8]
	ldr	x1, [sp, #8]
	bl	yyfree
	ldr	x8, [sp]
                                        // kill: def $x9 killed $xzr
	str	xzr, [x8, #8]
	ldr	x8, [sp]
	ldr	x0, [x8]
	ldr	x1, [sp, #8]
	bl	yyfree
	ldr	x8, [sp]
	str	xzr, [x8]
	ldr	x0, [sp, #8]
	bl	yy_init_globals
	ldr	x0, [sp, #8]
	ldr	x1, [sp, #8]
	bl	yyfree
	str	xzr, [sp, #8]
	mov	w0, wzr
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	yylex_destroy, .Lfunc_end0-yylex_destroy
                                        // -- End function
	.type	YY_CURRENT_BUFFER,@object       // @YY_CURRENT_BUFFER
	.bss
	.globl	YY_CURRENT_BUFFER
	.p2align	3
YY_CURRENT_BUFFER:
	.xword	0                               // 0x0
	.size	YY_CURRENT_BUFFER, 8
	.type	YY_CURRENT_BUFFER_LVALUE,@object // @YY_CURRENT_BUFFER_LVALUE
	.globl	YY_CURRENT_BUFFER_LVALUE
	.p2align	3
YY_CURRENT_BUFFER_LVALUE:
	.xword	0
	.size	YY_CURRENT_BUFFER_LVALUE, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym yy_delete_buffer
	.addrsig_sym yypop_buffer_state
	.addrsig_sym yyfree
	.addrsig_sym yy_init_globals
	.addrsig_sym YY_CURRENT_BUFFER
	.addrsig_sym YY_CURRENT_BUFFER_LVALUE