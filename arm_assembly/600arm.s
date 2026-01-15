	.text
	.globl	decFloatMinMag                  // -- Begin function decFloatMinMag
	.p2align	2
	.type	decFloatMinMag,@function
decFloatMinMag:                         // @decFloatMinMag
// %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             // 16-byte Folded Spill
	add	x29, sp, #80
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	stur	x2, [x29, #-32]
	str	x3, [sp, #40]
	ldur	x0, [x29, #-24]
	bl	DFISNAN
	cbnz	x0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	x0, [x29, #-32]
	bl	DFISNAN
	cbz	x0, .LBB0_3
	b	.LBB0_2
.LBB0_2:
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-24]
	ldur	x2, [x29, #-32]
	ldr	x3, [sp, #40]
	bl	decFloatMin
	stur	x0, [x29, #-8]
	b	.LBB0_8
.LBB0_3:
	ldur	x1, [x29, #-24]
	add	x0, sp, #28
	str	x0, [sp, #16]                   // 8-byte Folded Spill
	bl	decFloatCopyAbs
	ldur	x1, [x29, #-32]
	add	x0, sp, #24
	str	x0, [sp, #8]                    // 8-byte Folded Spill
	bl	decFloatCopyAbs
	ldr	x1, [sp, #8]                    // 8-byte Folded Reload
	ldr	x0, [sp, #16]                   // 8-byte Folded Reload
	mov	w2, wzr
	bl	decNumCompare
	str	x0, [sp, #32]
	ldr	x8, [sp, #32]
	subs	x8, x8, #0
	b.ge	.LBB0_5
	b	.LBB0_4
.LBB0_4:
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-24]
	bl	decCanonical
	stur	x0, [x29, #-8]
	b	.LBB0_8
.LBB0_5:
	ldr	x8, [sp, #32]
	subs	x8, x8, #0
	b.le	.LBB0_7
	b	.LBB0_6
.LBB0_6:
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-32]
	bl	decCanonical
	stur	x0, [x29, #-8]
	b	.LBB0_8
.LBB0_7:
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-24]
	ldur	x2, [x29, #-32]
	ldr	x3, [sp, #40]
	bl	decFloatMin
	stur	x0, [x29, #-8]
	b	.LBB0_8
.LBB0_8:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #80]             // 16-byte Folded Reload
	add	sp, sp, #96
	ret
.Lfunc_end0:
	.size	decFloatMinMag, .Lfunc_end0-decFloatMinMag
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym DFISNAN
	.addrsig_sym decFloatMin
	.addrsig_sym decFloatCopyAbs
	.addrsig_sym decNumCompare
	.addrsig_sym decCanonical