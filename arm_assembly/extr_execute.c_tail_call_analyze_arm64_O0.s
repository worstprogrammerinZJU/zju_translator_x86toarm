	.text
	.p2align	2                               // -- Begin function tail_call_analyze
	.type	tail_call_analyze,@function
tail_call_analyze:                      // @tail_call_analyze
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	str	x0, [sp, #16]
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	adrp	x9, CALL_JQ
	ldr	x9, [x9, :lo12:CALL_JQ]
	subs	x8, x8, x9
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	ldr	x8, [sp, #16]
	add	x8, x8, #8
	str	x8, [sp, #16]
	ldr	x8, [sp, #16]
	add	x9, x8, #8
	str	x9, [sp, #16]
	ldr	x8, [x8]
	add	x8, x8, #1
	str	x8, [sp, #8]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #8]
	subs	x8, x8, #0
	b.le	.LBB0_6
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #16]
	add	x9, x8, #8
	str	x9, [sp, #16]
	ldr	x8, [x8]
	cbnz	x8, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	adrp	x8, CALL_JQ
	ldr	x8, [x8, :lo12:CALL_JQ]
	stur	x8, [x29, #-8]
	b	.LBB0_9
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #16]
	add	x8, x8, #8
	str	x8, [sp, #16]
	ldr	x8, [sp, #8]
	subs	x8, x8, #1
	str	x8, [sp, #8]
	b	.LBB0_1
.LBB0_6:
	ldr	x0, [sp, #16]
	bl	ret_follows
	cbz	x0, .LBB0_8
	b	.LBB0_7
.LBB0_7:
	adrp	x8, TAIL_CALL_JQ
	ldr	x8, [x8, :lo12:TAIL_CALL_JQ]
	stur	x8, [x29, #-8]
	b	.LBB0_9
.LBB0_8:
	adrp	x8, CALL_JQ
	ldr	x8, [x8, :lo12:CALL_JQ]
	stur	x8, [x29, #-8]
	b	.LBB0_9
.LBB0_9:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	tail_call_analyze, .Lfunc_end0-tail_call_analyze
                                        // -- End function
	.type	CALL_JQ,@object                 // @CALL_JQ
	.bss
	.globl	CALL_JQ
	.p2align	3
CALL_JQ:
	.xword	0                               // 0x0
	.size	CALL_JQ, 8
	.type	TAIL_CALL_JQ,@object            // @TAIL_CALL_JQ
	.globl	TAIL_CALL_JQ
	.p2align	3
TAIL_CALL_JQ:
	.xword	0                               // 0x0
	.size	TAIL_CALL_JQ, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym tail_call_analyze
	.addrsig_sym assert
	.addrsig_sym ret_follows
	.addrsig_sym CALL_JQ
	.addrsig_sym TAIL_CALL_JQ