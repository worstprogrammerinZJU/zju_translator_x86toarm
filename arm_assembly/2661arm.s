	.text
	.globl	shiftOut                        // -- Begin function shiftOut
	.p2align	2
	.type	shiftOut,@function
shiftOut:                               // @shiftOut
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	w0, [x29, #-4]
	stur	w1, [x29, #-8]
	stur	w2, [x29, #-12]
	str	w3, [sp, #16]
	str	wzr, [sp, #12]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #12]
	subs	w8, w8, #8
	b.ge	.LBB0_7
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-12]
	adrp	x9, LSBFIRST
	ldr	w9, [x9, :lo12:LSBFIRST]
	subs	w8, w8, w9
	b.ne	.LBB0_4
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w0, [x29, #-4]
	ldr	w8, [sp, #16]
	ldr	w10, [sp, #12]
	mov	w9, #1
	lsl	w9, w9, w10
	ands	w8, w8, w9
	cset	w8, ne
	and	w1, w8, #0x1
	bl	digitalWrite
	b	.LBB0_5
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w0, [x29, #-4]
	ldr	w8, [sp, #16]
	ldr	w10, [sp, #12]
	mov	w9, #7
	subs	w10, w9, w10
	mov	w9, #1
	lsl	w9, w9, w10
	ands	w8, w8, w9
	cset	w8, ne
	and	w1, w8, #0x1
	bl	digitalWrite
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w0, [x29, #-8]
	adrp	x8, HIGH
	ldr	w1, [x8, :lo12:HIGH]
	bl	digitalWrite
	ldur	w0, [x29, #-8]
	adrp	x8, LOW
	ldr	w1, [x8, :lo12:LOW]
	bl	digitalWrite
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #12]
	add	w8, w8, #1
	str	w8, [sp, #12]
	b	.LBB0_1
.LBB0_7:
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	shiftOut, .Lfunc_end0-shiftOut
                                        // -- End function
	.type	LSBFIRST,@object                // @LSBFIRST
	.bss
	.globl	LSBFIRST
	.p2align	2
LSBFIRST:
	.word	0                               // 0x0
	.size	LSBFIRST, 4
	.type	HIGH,@object                    // @HIGH
	.globl	HIGH
	.p2align	2
HIGH:
	.word	0                               // 0x0
	.size	HIGH, 4
	.type	LOW,@object                     // @LOW
	.globl	LOW
	.p2align	2
LOW:
	.word	0                               // 0x0
	.size	LOW, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym digitalWrite
	.addrsig_sym LSBFIRST
	.addrsig_sym HIGH
	.addrsig_sym LOW