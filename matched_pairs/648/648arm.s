	.text
	.globl	decNumberClass                  // -- Begin function decNumberClass
	.p2align	2
	.type	decNumberClass,@function
decNumberClass:                         // @decNumberClass
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	str	x0, [sp, #16]
	str	x1, [sp, #8]
	ldr	x0, [sp, #16]
	bl	decNumberIsSpecial
	cbz	x0, .LBB0_8
	b	.LBB0_1
.LBB0_1:
	ldr	x0, [sp, #16]
	bl	decNumberIsQNaN
	cbz	x0, .LBB0_3
	b	.LBB0_2
.LBB0_2:
	adrp	x8, DEC_CLASS_QNAN
	ldr	w8, [x8, :lo12:DEC_CLASS_QNAN]
	stur	w8, [x29, #-4]
	b	.LBB0_19
.LBB0_3:
	ldr	x0, [sp, #16]
	bl	decNumberIsSNaN
	cbz	x0, .LBB0_5
	b	.LBB0_4
.LBB0_4:
	adrp	x8, DEC_CLASS_SNAN
	ldr	w8, [x8, :lo12:DEC_CLASS_SNAN]
	stur	w8, [x29, #-4]
	b	.LBB0_19
.LBB0_5:
	ldr	x0, [sp, #16]
	bl	decNumberIsNegative
	cbz	x0, .LBB0_7
	b	.LBB0_6
.LBB0_6:
	adrp	x8, DEC_CLASS_NEG_INF
	ldr	w8, [x8, :lo12:DEC_CLASS_NEG_INF]
	stur	w8, [x29, #-4]
	b	.LBB0_19
.LBB0_7:
	adrp	x8, DEC_CLASS_POS_INF
	ldr	w8, [x8, :lo12:DEC_CLASS_POS_INF]
	stur	w8, [x29, #-4]
	b	.LBB0_19
.LBB0_8:
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #8]
	bl	decNumberIsNormal
	cbz	x0, .LBB0_12
	b	.LBB0_9
.LBB0_9:
	ldr	x0, [sp, #16]
	bl	decNumberIsNegative
	cbz	x0, .LBB0_11
	b	.LBB0_10
.LBB0_10:
	adrp	x8, DEC_CLASS_NEG_NORMAL
	ldr	w8, [x8, :lo12:DEC_CLASS_NEG_NORMAL]
	stur	w8, [x29, #-4]
	b	.LBB0_19
.LBB0_11:
	adrp	x8, DEC_CLASS_POS_NORMAL
	ldr	w8, [x8, :lo12:DEC_CLASS_POS_NORMAL]
	stur	w8, [x29, #-4]
	b	.LBB0_19
.LBB0_12:
	ldr	x0, [sp, #16]
	bl	decNumberIsZero
	cbz	x0, .LBB0_16
	b	.LBB0_13
.LBB0_13:
	ldr	x0, [sp, #16]
	bl	decNumberIsNegative
	cbz	x0, .LBB0_15
	b	.LBB0_14
.LBB0_14:
	adrp	x8, DEC_CLASS_NEG_ZERO
	ldr	w8, [x8, :lo12:DEC_CLASS_NEG_ZERO]
	stur	w8, [x29, #-4]
	b	.LBB0_19
.LBB0_15:
	adrp	x8, DEC_CLASS_POS_ZERO
	ldr	w8, [x8, :lo12:DEC_CLASS_POS_ZERO]
	stur	w8, [x29, #-4]
	b	.LBB0_19
.LBB0_16:
	ldr	x0, [sp, #16]
	bl	decNumberIsNegative
	cbz	x0, .LBB0_18
	b	.LBB0_17
.LBB0_17:
	adrp	x8, DEC_CLASS_NEG_SUBNORMAL
	ldr	w8, [x8, :lo12:DEC_CLASS_NEG_SUBNORMAL]
	stur	w8, [x29, #-4]
	b	.LBB0_19
.LBB0_18:
	adrp	x8, DEC_CLASS_POS_SUBNORMAL
	ldr	w8, [x8, :lo12:DEC_CLASS_POS_SUBNORMAL]
	stur	w8, [x29, #-4]
	b	.LBB0_19
.LBB0_19:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	decNumberClass, .Lfunc_end0-decNumberClass
                                        // -- End function
	.type	DEC_CLASS_QNAN,@object          // @DEC_CLASS_QNAN
	.bss
	.globl	DEC_CLASS_QNAN
	.p2align	2
DEC_CLASS_QNAN:
	.word	0                               // 0x0
	.size	DEC_CLASS_QNAN, 4
	.type	DEC_CLASS_SNAN,@object          // @DEC_CLASS_SNAN
	.globl	DEC_CLASS_SNAN
	.p2align	2
DEC_CLASS_SNAN:
	.word	0                               // 0x0
	.size	DEC_CLASS_SNAN, 4
	.type	DEC_CLASS_NEG_INF,@object       // @DEC_CLASS_NEG_INF
	.globl	DEC_CLASS_NEG_INF
	.p2align	2
DEC_CLASS_NEG_INF:
	.word	0                               // 0x0
	.size	DEC_CLASS_NEG_INF, 4
	.type	DEC_CLASS_POS_INF,@object       // @DEC_CLASS_POS_INF
	.globl	DEC_CLASS_POS_INF
	.p2align	2
DEC_CLASS_POS_INF:
	.word	0                               // 0x0
	.size	DEC_CLASS_POS_INF, 4
	.type	DEC_CLASS_NEG_NORMAL,@object    // @DEC_CLASS_NEG_NORMAL
	.globl	DEC_CLASS_NEG_NORMAL
	.p2align	2
DEC_CLASS_NEG_NORMAL:
	.word	0                               // 0x0
	.size	DEC_CLASS_NEG_NORMAL, 4
	.type	DEC_CLASS_POS_NORMAL,@object    // @DEC_CLASS_POS_NORMAL
	.globl	DEC_CLASS_POS_NORMAL
	.p2align	2
DEC_CLASS_POS_NORMAL:
	.word	0                               // 0x0
	.size	DEC_CLASS_POS_NORMAL, 4
	.type	DEC_CLASS_NEG_ZERO,@object      // @DEC_CLASS_NEG_ZERO
	.globl	DEC_CLASS_NEG_ZERO
	.p2align	2
DEC_CLASS_NEG_ZERO:
	.word	0                               // 0x0
	.size	DEC_CLASS_NEG_ZERO, 4
	.type	DEC_CLASS_POS_ZERO,@object      // @DEC_CLASS_POS_ZERO
	.globl	DEC_CLASS_POS_ZERO
	.p2align	2
DEC_CLASS_POS_ZERO:
	.word	0                               // 0x0
	.size	DEC_CLASS_POS_ZERO, 4
	.type	DEC_CLASS_NEG_SUBNORMAL,@object // @DEC_CLASS_NEG_SUBNORMAL
	.globl	DEC_CLASS_NEG_SUBNORMAL
	.p2align	2
DEC_CLASS_NEG_SUBNORMAL:
	.word	0                               // 0x0
	.size	DEC_CLASS_NEG_SUBNORMAL, 4
	.type	DEC_CLASS_POS_SUBNORMAL,@object // @DEC_CLASS_POS_SUBNORMAL
	.globl	DEC_CLASS_POS_SUBNORMAL
	.p2align	2
DEC_CLASS_POS_SUBNORMAL:
	.word	0                               // 0x0
	.size	DEC_CLASS_POS_SUBNORMAL, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym decNumberIsSpecial
	.addrsig_sym decNumberIsQNaN
	.addrsig_sym decNumberIsSNaN
	.addrsig_sym decNumberIsNegative
	.addrsig_sym decNumberIsNormal
	.addrsig_sym decNumberIsZero
	.addrsig_sym DEC_CLASS_QNAN
	.addrsig_sym DEC_CLASS_SNAN
	.addrsig_sym DEC_CLASS_NEG_INF
	.addrsig_sym DEC_CLASS_POS_INF
	.addrsig_sym DEC_CLASS_NEG_NORMAL
	.addrsig_sym DEC_CLASS_POS_NORMAL
	.addrsig_sym DEC_CLASS_NEG_ZERO
	.addrsig_sym DEC_CLASS_POS_ZERO
	.addrsig_sym DEC_CLASS_NEG_SUBNORMAL
	.addrsig_sym DEC_CLASS_POS_SUBNORMAL