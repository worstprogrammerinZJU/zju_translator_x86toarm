	.text
	.globl	yy_scan_buffer                  // -- Begin function yy_scan_buffer
	.p2align	2
	.type	yy_scan_buffer,@function
yy_scan_buffer:                         // @yy_scan_buffer
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	str	x0, [sp, #16]
	str	w1, [sp, #12]
	str	w2, [sp, #8]
	ldr	w8, [sp, #12]
	subs	w8, w8, #2
	b.lt	.LBB0_3
	b	.LBB0_1
.LBB0_1:
	ldr	x8, [sp, #16]
	ldr	w9, [sp, #12]
	subs	w9, w9, #2
	ldrb	w8, [x8, w9, sxtw]
	adrp	x9, YY_END_OF_BUFFER_CHAR
	ldrb	w9, [x9, :lo12:YY_END_OF_BUFFER_CHAR]
	subs	w8, w8, w9
	b.ne	.LBB0_3
	b	.LBB0_2
.LBB0_2:
	ldr	x8, [sp, #16]
	ldr	w9, [sp, #12]
	subs	w9, w9, #1
	ldrb	w8, [x8, w9, sxtw]
	adrp	x9, YY_END_OF_BUFFER_CHAR
	ldrb	w9, [x9, :lo12:YY_END_OF_BUFFER_CHAR]
	subs	w8, w8, w9
	b.eq	.LBB0_4
	b	.LBB0_3
.LBB0_3:
                                        // kill: def $x8 killed $xzr
	stur	xzr, [x29, #-8]
	b	.LBB0_7
.LBB0_4:
	ldr	w1, [sp, #8]
	mov	w0, #4
	bl	yyalloc
	str	x0, [sp]
	ldr	x8, [sp]
	cbnz	x8, .LBB0_6
	b	.LBB0_5
.LBB0_5:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	YY_FATAL_ERROR
	b	.LBB0_6
.LBB0_6:
	ldr	w8, [sp, #12]
	subs	w8, w8, #2
	ldr	x9, [sp]
	str	w8, [x9]
	ldr	x8, [sp, #16]
	ldr	x9, [sp]
	str	x8, [x9, #16]
	ldr	x9, [sp]
	str	x8, [x9, #8]
	ldr	x8, [sp]
	str	xzr, [x8, #64]
	ldr	x8, [sp]
                                        // kill: def $x9 killed $xzr
	str	xzr, [x8, #56]
	ldr	x8, [sp]
	ldr	w8, [x8]
	ldr	x9, [sp]
	str	w8, [x9, #24]
	ldr	x8, [sp]
	str	xzr, [x8, #48]
	ldr	x9, [sp]
	mov	w8, #1
	str	w8, [x9, #28]
	ldr	x8, [sp]
	str	xzr, [x8, #40]
	adrp	x8, YY_BUFFER_NEW
	ldr	w8, [x8, :lo12:YY_BUFFER_NEW]
	ldr	x9, [sp]
	str	w8, [x9, #32]
	ldr	x0, [sp]
	ldr	w1, [sp, #8]
	bl	yy_switch_to_buffer
	ldr	x8, [sp]
	stur	x8, [x29, #-8]
	b	.LBB0_7
.LBB0_7:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	yy_scan_buffer, .Lfunc_end0-yy_scan_buffer
                                        // -- End function
	.type	YY_END_OF_BUFFER_CHAR,@object   // @YY_END_OF_BUFFER_CHAR
	.bss
	.globl	YY_END_OF_BUFFER_CHAR
YY_END_OF_BUFFER_CHAR:
	.byte	0                               // 0x0
	.size	YY_END_OF_BUFFER_CHAR, 1
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"out of dynamic memory in yy_scan_buffer()"
	.size	.L.str, 42
	.type	YY_BUFFER_NEW,@object           // @YY_BUFFER_NEW
	.bss
	.globl	YY_BUFFER_NEW
	.p2align	2
YY_BUFFER_NEW:
	.word	0                               // 0x0
	.size	YY_BUFFER_NEW, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym yyalloc
	.addrsig_sym YY_FATAL_ERROR
	.addrsig_sym yy_switch_to_buffer
	.addrsig_sym YY_END_OF_BUFFER_CHAR
	.addrsig_sym YY_BUFFER_NEW