	.text
	.globl	yy_switch_to_buffer             // -- Begin function yy_switch_to_buffer
	.p2align	2
	.type	yy_switch_to_buffer,@function
yy_switch_to_buffer:                    // @yy_switch_to_buffer
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldr	x8, [sp, #16]
	str	x8, [sp, #8]
	ldr	x0, [sp, #16]
	bl	yyensure_buffer_stack
	adrp	x8, YY_CURRENT_BUFFER
	ldr	x8, [x8, :lo12:YY_CURRENT_BUFFER]
	ldur	x9, [x29, #-8]
	subs	x8, x8, x9
	b.ne	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	b	.LBB0_5
.LBB0_2:
	adrp	x8, YY_CURRENT_BUFFER
	ldr	x8, [x8, :lo12:YY_CURRENT_BUFFER]
	cbz	x8, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldr	x8, [sp, #8]
	ldr	w8, [x8, #16]
	ldr	x9, [sp, #8]
	ldr	x9, [x9, #8]
	str	w8, [x9]
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #8]
	adrp	x9, YY_CURRENT_BUFFER_LVALUE
	ldr	x10, [x9, :lo12:YY_CURRENT_BUFFER_LVALUE]
	str	x8, [x10, #8]
	ldr	x8, [sp, #8]
	ldr	w8, [x8, #4]
	ldr	x9, [x9, :lo12:YY_CURRENT_BUFFER_LVALUE]
	str	w8, [x9]
	b	.LBB0_4
.LBB0_4:
	ldur	x8, [x29, #-8]
	adrp	x9, YY_CURRENT_BUFFER_LVALUE
	str	x8, [x9, :lo12:YY_CURRENT_BUFFER_LVALUE]
	ldr	x0, [sp, #16]
	bl	yy_load_buffer_state
	ldr	x9, [sp, #8]
	mov	w8, #1
	str	w8, [x9]
	b	.LBB0_5
.LBB0_5:
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	yy_switch_to_buffer, .Lfunc_end0-yy_switch_to_buffer
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
	.addrsig_sym yyensure_buffer_stack
	.addrsig_sym yy_load_buffer_state
	.addrsig_sym YY_CURRENT_BUFFER
	.addrsig_sym YY_CURRENT_BUFFER_LVALUE