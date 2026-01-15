	.text
	.globl	decFloatSameQuantum             // -- Begin function decFloatSameQuantum
	.p2align	2
	.type	decFloatSameQuantum,@function
decFloatSameQuantum:                    // @decFloatSameQuantum
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	str	x0, [sp, #16]
	str	x1, [sp, #8]
	ldr	x0, [sp, #16]
	bl	DFISSPECIAL
	cbnz	x0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x0, [sp, #8]
	bl	DFISSPECIAL
	cbz	x0, .LBB0_9
	b	.LBB0_2
.LBB0_2:
	ldr	x0, [sp, #16]
	bl	DFISNAN
	cbz	x0, .LBB0_5
	b	.LBB0_3
.LBB0_3:
	ldr	x0, [sp, #8]
	bl	DFISNAN
	cbz	x0, .LBB0_5
	b	.LBB0_4
.LBB0_4:
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_12
.LBB0_5:
	ldr	x0, [sp, #16]
	bl	DFISINF
	cbz	x0, .LBB0_8
	b	.LBB0_6
.LBB0_6:
	ldr	x0, [sp, #8]
	bl	DFISINF
	cbz	x0, .LBB0_8
	b	.LBB0_7
.LBB0_7:
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_12
.LBB0_8:
	stur	wzr, [x29, #-4]
	b	.LBB0_12
.LBB0_9:
	ldr	x0, [sp, #16]
	bl	GETEXP
	str	x0, [sp]                        // 8-byte Folded Spill
	ldr	x0, [sp, #8]
	bl	GETEXP
	mov	x8, x0
	ldr	x0, [sp]                        // 8-byte Folded Reload
	subs	x8, x0, x8
	b.ne	.LBB0_11
	b	.LBB0_10
.LBB0_10:
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_12
.LBB0_11:
	stur	wzr, [x29, #-4]
	b	.LBB0_12
.LBB0_12:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	decFloatSameQuantum, .Lfunc_end0-decFloatSameQuantum
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym DFISSPECIAL
	.addrsig_sym DFISNAN
	.addrsig_sym DFISINF
	.addrsig_sym GETEXP