	.text
	.globl	decFloatScaleB                  // -- Begin function decFloatScaleB
	.p2align	2
	.type	decFloatScaleB,@function
decFloatScaleB:                         // @decFloatScaleB
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	str	x2, [sp, #32]
	str	x3, [sp, #24]
	ldur	x0, [x29, #-24]
	bl	DFISNAN
	cbnz	x0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x0, [sp, #32]
	bl	DFISNAN
	cbz	x0, .LBB0_3
	b	.LBB0_2
.LBB0_2:
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-24]
	ldr	x2, [sp, #32]
	ldr	x3, [sp, #24]
	bl	decNaNs
	stur	x0, [x29, #-8]
	b	.LBB0_12
.LBB0_3:
	ldr	x0, [sp, #32]
	bl	DFISINT
	cbnz	w0, .LBB0_5
	b	.LBB0_4
.LBB0_4:
	ldur	x0, [x29, #-16]
	ldr	x1, [sp, #24]
	bl	decInvalid
	stur	x0, [x29, #-8]
	b	.LBB0_12
.LBB0_5:
	ldr	x0, [sp, #32]
	bl	decFloatDigits
	str	w0, [sp, #20]
	ldr	w8, [sp, #16]
	adrp	x9, SCALEBMAX
	ldr	w9, [x9, :lo12:SCALEBMAX]
	subs	w8, w8, w9
	b.le	.LBB0_7
	b	.LBB0_6
.LBB0_6:
	ldur	x0, [x29, #-16]
	ldr	x1, [sp, #24]
	bl	decInvalid
	stur	x0, [x29, #-8]
	b	.LBB0_12
.LBB0_7:
	ldur	x0, [x29, #-24]
	bl	DFISINF
	cbz	x0, .LBB0_9
	b	.LBB0_8
.LBB0_8:
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-24]
	bl	decInfinity
	stur	x0, [x29, #-8]
	b	.LBB0_12
.LBB0_9:
	ldr	x0, [sp, #32]
	bl	DFISSIGNED
	cbz	x0, .LBB0_11
	b	.LBB0_10
.LBB0_10:
	ldr	w9, [sp, #16]
	mov	w8, wzr
	subs	w8, w8, w9
	str	w8, [sp, #16]
	b	.LBB0_11
.LBB0_11:
	ldur	x8, [x29, #-24]
	ldr	w8, [x8]
	ldur	x9, [x29, #-16]
	str	w8, [x9]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	ldr	x8, [sp, #24]
	str	x8, [sp]                        // 8-byte Folded Spill
	ldur	x0, [x29, #-16]
	bl	GETEXPUN
	ldr	x1, [sp]                        // 8-byte Folded Reload
	mov	x8, x0
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	ldrsw	x9, [sp, #16]
	add	x2, x8, x9
	bl	decFloatSetExponent
	stur	x0, [x29, #-8]
	b	.LBB0_12
.LBB0_12:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	decFloatScaleB, .Lfunc_end0-decFloatScaleB
                                        // -- End function
	.type	SCALEBMAX,@object               // @SCALEBMAX
	.bss
	.globl	SCALEBMAX
	.p2align	2
SCALEBMAX:
	.word	0                               // 0x0
	.size	SCALEBMAX, 4
	.type	DPD2BIN,@object                 // @DPD2BIN
	.globl	DPD2BIN
	.p2align	3
DPD2BIN:
	.xword	0
	.size	DPD2BIN, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym DFISNAN
	.addrsig_sym decNaNs
	.addrsig_sym DFISINT
	.addrsig_sym decInvalid
	.addrsig_sym decFloatDigits
	.addrsig_sym DFISINF
	.addrsig_sym decInfinity
	.addrsig_sym DFISSIGNED
	.addrsig_sym decFloatSetExponent
	.addrsig_sym GETEXPUN
	.addrsig_sym SCALEBMAX