	.text
	.globl	decFloatMin                     // -- Begin function decFloatMin
	.p2align	2
	.type	decFloatMin,@function
decFloatMin:                            // @decFloatMin
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-16]
	str	x1, [sp, #24]
	str	x2, [sp, #16]
	str	x3, [sp, #8]
	ldr	x0, [sp, #24]
	bl	DFISNAN
	cbz	x0, .LBB0_5
	b	.LBB0_1
.LBB0_1:
	ldr	x0, [sp, #16]
	bl	DFISNAN
	cbnz	x0, .LBB0_3
	b	.LBB0_2
.LBB0_2:
	ldr	x0, [sp, #24]
	bl	DFISSNAN
	cbz	x0, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldur	x0, [x29, #-16]
	ldr	x1, [sp, #24]
	ldr	x2, [sp, #16]
	ldr	x3, [sp, #8]
	bl	decNaNs
	stur	x0, [x29, #-8]
	b	.LBB0_12
.LBB0_4:
	ldur	x0, [x29, #-16]
	ldr	x1, [sp, #16]
	bl	decCanonical
	stur	x0, [x29, #-8]
	b	.LBB0_12
.LBB0_5:
	ldr	x0, [sp, #16]
	bl	DFISNAN
	cbz	x0, .LBB0_9
	b	.LBB0_6
.LBB0_6:
	ldr	x0, [sp, #16]
	bl	DFISSNAN
	cbz	x0, .LBB0_8
	b	.LBB0_7
.LBB0_7:
	ldur	x0, [x29, #-16]
	ldr	x1, [sp, #24]
	ldr	x2, [sp, #16]
	ldr	x3, [sp, #8]
	bl	decNaNs
	stur	x0, [x29, #-8]
	b	.LBB0_12
.LBB0_8:
	ldur	x0, [x29, #-16]
	ldr	x1, [sp, #24]
	bl	decCanonical
	stur	x0, [x29, #-8]
	b	.LBB0_12
.LBB0_9:
	ldr	x0, [sp, #24]
	ldr	x1, [sp, #16]
	mov	w2, #1
	bl	decNumCompare
	str	x0, [sp]
	ldr	x8, [sp]
	subs	x8, x8, #0
	b.gt	.LBB0_11
	b	.LBB0_10
.LBB0_10:
	ldur	x0, [x29, #-16]
	ldr	x1, [sp, #24]
	bl	decCanonical
	stur	x0, [x29, #-8]
	b	.LBB0_12
.LBB0_11:
	ldur	x0, [x29, #-16]
	ldr	x1, [sp, #16]
	bl	decCanonical
	stur	x0, [x29, #-8]
	b	.LBB0_12
.LBB0_12:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	decFloatMin, .Lfunc_end0-decFloatMin
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym DFISNAN
	.addrsig_sym DFISSNAN
	.addrsig_sym decNaNs
	.addrsig_sym decCanonical
	.addrsig_sym decNumCompare