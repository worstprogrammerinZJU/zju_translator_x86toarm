	.text
	.p2align	2                               // -- Begin function yy_push_state
	.type	yy_push_state,@function
yy_push_state:                          // @yy_push_state
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	w0, [x29, #-4]
	str	x1, [sp, #16]
	ldr	x8, [sp, #16]
	str	x8, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	ldr	x9, [sp, #8]
	ldr	x9, [x9, #8]
	subs	x8, x8, x9
	b.lt	.LBB0_7
	b	.LBB0_1
.LBB0_1:
	adrp	x8, YY_START_STACK_INCR
	ldr	x10, [x8, :lo12:YY_START_STACK_INCR]
	ldr	x9, [sp, #8]
	ldr	x8, [x9, #8]
	add	x8, x8, x10
	str	x8, [x9, #8]
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #8]
	sxtw	x8, w8
	lsl	x8, x8, #2
                                        // kill: def $w8 killed $w8 killed $x8
	str	w8, [sp, #4]
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #16]
	cbnz	x8, .LBB0_3
	b	.LBB0_2
.LBB0_2:
	ldr	w0, [sp, #4]
	ldr	x1, [sp, #16]
	bl	yyalloc
	ldr	x8, [sp, #8]
	str	x0, [x8, #16]
	b	.LBB0_4
.LBB0_3:
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #16]
	ldr	w1, [sp, #4]
	ldr	x2, [sp, #16]
	bl	yyrealloc
	ldr	x8, [sp, #8]
	str	x0, [x8, #16]
	b	.LBB0_4
.LBB0_4:
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #16]
	cbnz	x8, .LBB0_6
	b	.LBB0_5
.LBB0_5:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	YY_FATAL_ERROR
	b	.LBB0_6
.LBB0_6:
	b	.LBB0_7
.LBB0_7:
	adrp	x8, YY_START
	ldr	w8, [x8, :lo12:YY_START]
	ldr	x9, [sp, #8]
	ldr	x9, [x9, #16]
	ldr	x12, [sp, #8]
	ldr	x10, [x12]
	add	x11, x10, #1
	str	x11, [x12]
	str	w8, [x9, x10, lsl #2]
	ldur	w0, [x29, #-4]
	bl	BEGIN
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	yy_push_state, .Lfunc_end0-yy_push_state
                                        // -- End function
	.type	YY_START_STACK_INCR,@object     // @YY_START_STACK_INCR
	.bss
	.globl	YY_START_STACK_INCR
	.p2align	3
YY_START_STACK_INCR:
	.xword	0                               // 0x0
	.size	YY_START_STACK_INCR, 8
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"out of memory expanding start-condition stack"
	.size	.L.str, 46
	.type	YY_START,@object                // @YY_START
	.bss
	.globl	YY_START
	.p2align	2
YY_START:
	.word	0                               // 0x0
	.size	YY_START, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym yy_push_state
	.addrsig_sym yyalloc
	.addrsig_sym yyrealloc
	.addrsig_sym YY_FATAL_ERROR
	.addrsig_sym BEGIN
	.addrsig_sym YY_START_STACK_INCR
	.addrsig_sym YY_START