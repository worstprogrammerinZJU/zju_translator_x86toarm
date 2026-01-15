	.text
	.globl	decFloatCompareTotalMag         // -- Begin function decFloatCompareTotalMag
	.p2align	2
	.type	decFloatCompareTotalMag,@function
decFloatCompareTotalMag:                // @decFloatCompareTotalMag
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	str	x2, [sp, #24]
	ldur	x0, [x29, #-16]
	bl	DFISSIGNED
	cbz	x0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	x1, [x29, #-16]
	add	x0, sp, #20
	str	x0, [sp, #8]                    // 8-byte Folded Spill
	bl	decFloatCopyAbs
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	stur	x8, [x29, #-16]
	b	.LBB0_2
.LBB0_2:
	ldr	x0, [sp, #24]
	bl	DFISSIGNED
	cbz	x0, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldr	x1, [sp, #24]
	add	x0, sp, #16
	str	x0, [sp]                        // 8-byte Folded Spill
	bl	decFloatCopyAbs
	ldr	x8, [sp]                        // 8-byte Folded Reload
	str	x8, [sp, #24]
	b	.LBB0_4
.LBB0_4:
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-16]
	ldr	x2, [sp, #24]
	bl	decFloatCompareTotal
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	decFloatCompareTotalMag, .Lfunc_end0-decFloatCompareTotalMag
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym DFISSIGNED
	.addrsig_sym decFloatCopyAbs
	.addrsig_sym decFloatCompareTotal