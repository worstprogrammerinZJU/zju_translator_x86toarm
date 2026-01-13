	.text
	.globl	decNumberSameQuantum            // -- Begin function decNumberSameQuantum
	.p2align	2
	.type	decNumberSameQuantum,@function
decNumberSameQuantum:                   // @decNumberSameQuantum
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	str	wzr, [sp, #4]
	adrp	x8, SPECIALARGS
	ldr	x8, [x8, :lo12:SPECIALARGS]
	cbz	x8, .LBB0_9
	b	.LBB0_1
.LBB0_1:
	ldr	x0, [sp, #16]
	bl	decNumberIsNaN
	cbz	x0, .LBB0_4
	b	.LBB0_2
.LBB0_2:
	ldr	x0, [sp, #8]
	bl	decNumberIsNaN
	cbz	x0, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	mov	w8, #1
	str	w8, [sp, #4]
	b	.LBB0_8
.LBB0_4:
	ldr	x0, [sp, #16]
	bl	decNumberIsInfinite
	cbz	x0, .LBB0_7
	b	.LBB0_5
.LBB0_5:
	ldr	x0, [sp, #8]
	bl	decNumberIsInfinite
	cbz	x0, .LBB0_7
	b	.LBB0_6
.LBB0_6:
	mov	w8, #1
	str	w8, [sp, #4]
	b	.LBB0_7
.LBB0_7:
	b	.LBB0_8
.LBB0_8:
	b	.LBB0_12
.LBB0_9:
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	ldr	x9, [sp, #8]
	ldr	x9, [x9]
	subs	x8, x8, x9
	b.ne	.LBB0_11
	b	.LBB0_10
.LBB0_10:
	mov	w8, #1
	str	w8, [sp, #4]
	b	.LBB0_11
.LBB0_11:
	b	.LBB0_12
.LBB0_12:
	ldur	x0, [x29, #-8]
	bl	decNumberZero
	ldr	w8, [sp, #4]
	ldur	x9, [x29, #-8]
	ldr	x9, [x9, #8]
	str	w8, [x9]
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	decNumberSameQuantum, .Lfunc_end0-decNumberSameQuantum
                                        // -- End function
	.type	SPECIALARGS,@object             // @SPECIALARGS
	.bss
	.globl	SPECIALARGS
	.p2align	3
SPECIALARGS:
	.xword	0                               // 0x0
	.size	SPECIALARGS, 8
	.type	DECUNCONT,@object               // @DECUNCONT
	.globl	DECUNCONT
	.p2align	2
DECUNCONT:
	.word	0                               // 0x0
	.size	DECUNCONT, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym decNumberIsNaN
	.addrsig_sym decNumberIsInfinite
	.addrsig_sym decNumberZero
	.addrsig_sym SPECIALARGS