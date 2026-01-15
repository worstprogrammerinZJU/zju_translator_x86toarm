	.text
	.p2align	2                               // -- Begin function decFinalize
	.type	decFinalize,@function
decFinalize:                            // @decFinalize
// %bb.0:
	sub	sp, sp, #112
	stp	x29, x30, [sp, #96]             // 16-byte Folded Spill
	add	x29, sp, #96
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	stur	x3, [x29, #-32]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	ldur	x9, [x29, #-8]
	ldr	x9, [x9]
	subs	x8, x8, x9
	add	x8, x8, #1
	str	x8, [sp, #48]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #8]
	ldr	x9, [sp, #48]
	subs	x8, x8, x9
	b.gt	.LBB0_9
	b	.LBB0_1
.LBB0_1:
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #8]
	ldr	x9, [sp, #48]
	subs	x8, x8, x9
	b.ge	.LBB0_3
	b	.LBB0_2
.LBB0_2:
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-16]
	ldur	x2, [x29, #-24]
	ldur	x3, [x29, #-32]
	bl	decSetSubnormal
	b	.LBB0_20
.LBB0_3:
	add	x0, sp, #16
	str	x0, [sp, #8]                    // 8-byte Folded Spill
	bl	decNumberZero
	ldr	x1, [sp, #8]                    // 8-byte Folded Reload
	ldr	x8, [sp, #32]
	mov	w2, #1
	str	w2, [x8]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	str	x8, [sp, #24]
	ldur	x0, [x29, #-8]
	bl	decCompare
	str	x0, [sp, #40]
	ldr	x8, [sp, #40]
	adrp	x9, BADINT
	ldr	x9, [x9, :lo12:BADINT]
	subs	x8, x8, x9
	b.ne	.LBB0_5
	b	.LBB0_4
.LBB0_4:
	adrp	x8, DEC_Insufficient_storage
	ldr	w10, [x8, :lo12:DEC_Insufficient_storage]
	ldur	x9, [x29, #-32]
	ldr	w8, [x9]
	orr	w8, w8, w10
	str	w8, [x9]
	b	.LBB0_20
.LBB0_5:
	ldur	x8, [x29, #-24]
	ldr	x8, [x8]
	subs	x8, x8, #0
	b.ge	.LBB0_8
	b	.LBB0_6
.LBB0_6:
	ldr	x8, [sp, #40]
	cbnz	x8, .LBB0_8
	b	.LBB0_7
.LBB0_7:
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-16]
	ldur	x8, [x29, #-24]
	ldr	x2, [x8]
	ldur	x3, [x29, #-32]
	bl	decApplyRound
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-16]
	ldur	x2, [x29, #-24]
	ldur	x3, [x29, #-32]
	bl	decSetSubnormal
	b	.LBB0_20
.LBB0_8:
	b	.LBB0_9
.LBB0_9:
	ldur	x8, [x29, #-24]
	ldr	x8, [x8]
	cbz	x8, .LBB0_11
	b	.LBB0_10
.LBB0_10:
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-16]
	ldur	x8, [x29, #-24]
	ldr	x2, [x8]
	ldur	x3, [x29, #-32]
	bl	decApplyRound
	b	.LBB0_11
.LBB0_11:
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #8]
	ldur	x9, [x29, #-16]
	ldr	x9, [x9, #8]
	ldur	x10, [x29, #-16]
	ldr	x10, [x10, #16]
	subs	x9, x9, x10
	add	x9, x9, #1
	subs	x8, x8, x9
	b.gt	.LBB0_13
	b	.LBB0_12
.LBB0_12:
	b	.LBB0_20
.LBB0_13:
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #8]
	ldur	x9, [x29, #-16]
	ldr	x9, [x9, #8]
	ldur	x10, [x29, #-8]
	ldr	x10, [x10]
	subs	x9, x9, x10
	add	x9, x9, #1
	subs	x8, x8, x9
	b.le	.LBB0_15
	b	.LBB0_14
.LBB0_14:
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-16]
	ldur	x2, [x29, #-32]
	bl	decSetOverflow
	b	.LBB0_20
.LBB0_15:
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #24]
	cbnz	w8, .LBB0_17
	b	.LBB0_16
.LBB0_16:
	b	.LBB0_20
.LBB0_17:
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #8]
	ldur	x9, [x29, #-16]
	ldr	x9, [x9, #8]
	ldur	x10, [x29, #-16]
	ldr	x10, [x10, #16]
	subs	x9, x9, x10
	add	x9, x9, #1
	subs	x8, x8, x9
	stur	x8, [x29, #-40]
	ldur	x0, [x29, #-8]
	bl	ISZERO
	cbnz	w0, .LBB0_19
	b	.LBB0_18
.LBB0_18:
	ldur	x8, [x29, #-8]
	ldr	x0, [x8, #16]
	ldur	x8, [x29, #-8]
	ldr	x1, [x8]
	ldur	x2, [x29, #-40]
	bl	decShiftToMost
	ldur	x8, [x29, #-8]
	str	x0, [x8]
	b	.LBB0_19
.LBB0_19:
	ldur	x10, [x29, #-40]
	ldur	x9, [x29, #-8]
	ldr	x8, [x9, #8]
	subs	x8, x8, x10
	str	x8, [x9, #8]
	adrp	x8, DEC_Clamped
	ldr	w10, [x8, :lo12:DEC_Clamped]
	ldur	x9, [x29, #-32]
	ldr	w8, [x9]
	orr	w8, w8, w10
	str	w8, [x9]
	b	.LBB0_20
.LBB0_20:
	ldp	x29, x30, [sp, #96]             // 16-byte Folded Reload
	add	sp, sp, #112
	ret
.Lfunc_end0:
	.size	decFinalize, .Lfunc_end0-decFinalize
                                        // -- End function
	.type	BADINT,@object                  // @BADINT
	.bss
	.globl	BADINT
	.p2align	3
BADINT:
	.xword	0                               // 0x0
	.size	BADINT, 8
	.type	DEC_Insufficient_storage,@object // @DEC_Insufficient_storage
	.globl	DEC_Insufficient_storage
	.p2align	2
DEC_Insufficient_storage:
	.word	0                               // 0x0
	.size	DEC_Insufficient_storage, 4
	.type	DEC_Clamped,@object             // @DEC_Clamped
	.globl	DEC_Clamped
	.p2align	2
DEC_Clamped:
	.word	0                               // 0x0
	.size	DEC_Clamped, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym decFinalize
	.addrsig_sym decSetSubnormal
	.addrsig_sym decNumberZero
	.addrsig_sym decCompare
	.addrsig_sym decApplyRound
	.addrsig_sym decSetOverflow
	.addrsig_sym ISZERO
	.addrsig_sym decShiftToMost
	.addrsig_sym BADINT
	.addrsig_sym DEC_Insufficient_storage
	.addrsig_sym DEC_Clamped