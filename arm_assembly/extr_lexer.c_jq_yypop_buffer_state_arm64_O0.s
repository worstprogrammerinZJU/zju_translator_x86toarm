	.text
	.globl	yypop_buffer_state              // -- Begin function yypop_buffer_state
	.p2align	2
	.type	yypop_buffer_state,@function
yypop_buffer_state:                     // @yypop_buffer_state
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	str	x8, [sp]
	adrp	x8, YY_CURRENT_BUFFER
	ldr	x8, [x8, :lo12:YY_CURRENT_BUFFER]
	cbnz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	b	.LBB0_6
.LBB0_2:
	adrp	x8, YY_CURRENT_BUFFER
	ldr	x0, [x8, :lo12:YY_CURRENT_BUFFER]
	ldr	x1, [sp, #8]
	bl	yy_delete_buffer
	adrp	x8, YY_CURRENT_BUFFER_LVALUE
                                        // kill: def $x9 killed $xzr
	str	xzr, [x8, :lo12:YY_CURRENT_BUFFER_LVALUE]
	ldr	x8, [sp]
	ldr	x8, [x8]
	subs	x8, x8, #0
	b.le	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldr	x9, [sp]
	ldr	x8, [x9]
	subs	x8, x8, #1
	str	x8, [x9]
	b	.LBB0_4
.LBB0_4:
	adrp	x8, YY_CURRENT_BUFFER
	ldr	x8, [x8, :lo12:YY_CURRENT_BUFFER]
	cbz	x8, .LBB0_6
	b	.LBB0_5
.LBB0_5:
	ldr	x0, [sp, #8]
	bl	yy_load_buffer_state
	ldr	x9, [sp]
	mov	w8, #1
	str	w8, [x9, #8]
	b	.LBB0_6
.LBB0_6:
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	yypop_buffer_state, .Lfunc_end0-yypop_buffer_state
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
	.addrsig_sym yy_load_buffer_state
	.addrsig_sym YY_CURRENT_BUFFER
	.addrsig_sym YY_CURRENT_BUFFER_LVALUE