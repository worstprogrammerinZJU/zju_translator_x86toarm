	.text
	.globl	yy_flush_buffer                 // -- Begin function yy_flush_buffer
	.p2align	2
	.type	yy_flush_buffer,@function
yy_flush_buffer:                        // @yy_flush_buffer
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
	b	.LBB0_4
.LBB0_2:
	ldur	x8, [x29, #-8]
	str	xzr, [x8, #24]
	adrp	x8, YY_END_OF_BUFFER_CHAR
	ldr	x9, [x8, :lo12:YY_END_OF_BUFFER_CHAR]
	ldur	x10, [x29, #-8]
	ldr	x10, [x10, #8]
	str	x9, [x10]
	ldr	x8, [x8, :lo12:YY_END_OF_BUFFER_CHAR]
	ldur	x9, [x29, #-8]
	ldr	x9, [x9, #8]
	str	x8, [x9, #8]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #8]
	ldur	x9, [x29, #-8]
	str	x8, [x9, #16]
	ldur	x9, [x29, #-8]
	mov	w8, #1
	str	w8, [x9]
	adrp	x8, YY_BUFFER_NEW
	ldr	w8, [x8, :lo12:YY_BUFFER_NEW]
	ldur	x9, [x29, #-8]
	str	w8, [x9, #4]
	ldur	x8, [x29, #-8]
	adrp	x9, YY_CURRENT_BUFFER
	ldr	x9, [x9, :lo12:YY_CURRENT_BUFFER]
	subs	x8, x8, x9
	b.ne	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldr	x0, [sp, #16]
	bl	yy_load_buffer_state
	b	.LBB0_4
.LBB0_4:
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	yy_flush_buffer, .Lfunc_end0-yy_flush_buffer
                                        // -- End function
	.type	YY_END_OF_BUFFER_CHAR,@object   // @YY_END_OF_BUFFER_CHAR
	.bss
	.globl	YY_END_OF_BUFFER_CHAR
	.p2align	3
YY_END_OF_BUFFER_CHAR:
	.xword	0
	.size	YY_END_OF_BUFFER_CHAR, 8
	.type	YY_BUFFER_NEW,@object           // @YY_BUFFER_NEW
	.globl	YY_BUFFER_NEW
	.p2align	2
YY_BUFFER_NEW:
	.word	0                               // 0x0
	.size	YY_BUFFER_NEW, 4
	.type	YY_CURRENT_BUFFER,@object       // @YY_CURRENT_BUFFER
	.globl	YY_CURRENT_BUFFER
	.p2align	3
YY_CURRENT_BUFFER:
	.xword	0
	.size	YY_CURRENT_BUFFER, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym yy_load_buffer_state
	.addrsig_sym YY_END_OF_BUFFER_CHAR
	.addrsig_sym YY_BUFFER_NEW
	.addrsig_sym YY_CURRENT_BUFFER