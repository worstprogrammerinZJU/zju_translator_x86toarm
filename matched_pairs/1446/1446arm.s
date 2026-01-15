	.text
	.globl	yy_delete_buffer                // -- Begin function yy_delete_buffer
	.p2align	2
	.type	yy_delete_buffer,@function
yy_delete_buffer:                       // @yy_delete_buffer
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldr	x8, [sp, #16]
	str	x8, [sp, #8]
	ldur	x8, [x29, #-8]
	cbnz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	b	.LBB0_7
.LBB0_2:
	ldur	x8, [x29, #-8]
	adrp	x9, YY_CURRENT_BUFFER
	ldr	x9, [x9, :lo12:YY_CURRENT_BUFFER]
	subs	x8, x8, x9
	b.ne	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	adrp	x8, YY_CURRENT_BUFFER_LVALUE
                                        // kill: def $x9 killed $xzr
	str	xzr, [x8, :lo12:YY_CURRENT_BUFFER_LVALUE]
	b	.LBB0_4
.LBB0_4:
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #8]
	cbz	x8, .LBB0_6
	b	.LBB0_5
.LBB0_5:
	ldur	x8, [x29, #-8]
	ldr	x0, [x8]
	ldr	x1, [sp, #16]
	bl	yyfree
	b	.LBB0_6
.LBB0_6:
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	bl	yyfree
	b	.LBB0_7
.LBB0_7:
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	yy_delete_buffer, .Lfunc_end0-yy_delete_buffer
                                        // -- End function
	.type	YY_CURRENT_BUFFER,@object       // @YY_CURRENT_BUFFER
	.bss
	.globl	YY_CURRENT_BUFFER
	.p2align	3
YY_CURRENT_BUFFER:
	.xword	0
	.size	YY_CURRENT_BUFFER, 8
	.type	YY_CURRENT_BUFFER_LVALUE,@object // @YY_CURRENT_BUFFER_LVALUE
	.globl	YY_CURRENT_BUFFER_LVALUE
	.p2align	3
YY_CURRENT_BUFFER_LVALUE:
	.xword	0
	.size	YY_CURRENT_BUFFER_LVALUE, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym yyfree
	.addrsig_sym YY_CURRENT_BUFFER
	.addrsig_sym YY_CURRENT_BUFFER_LVALUE