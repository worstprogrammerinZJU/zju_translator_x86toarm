	.text
	.p2align	2                               // -- Begin function decCompare
	.type	decCompare,@function
decCompare:                             // @decCompare
// %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             // 16-byte Folded Spill
	add	x29, sp, #80
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	stur	x2, [x29, #-32]
	mov	w8, #1
	stur	w8, [x29, #-36]
	ldur	x0, [x29, #-16]
	bl	ISZERO
	cbz	x0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	stur	wzr, [x29, #-36]
	b	.LBB0_2
.LBB0_2:
	ldur	x8, [x29, #-32]
	cbz	x8, .LBB0_8
	b	.LBB0_3
.LBB0_3:
	ldur	x0, [x29, #-24]
	bl	ISZERO
	cbz	x0, .LBB0_5
	b	.LBB0_4
.LBB0_4:
	ldur	w8, [x29, #-36]
	stur	w8, [x29, #-4]
	b	.LBB0_35
.LBB0_5:
	ldur	w8, [x29, #-36]
	cbnz	w8, .LBB0_7
	b	.LBB0_6
.LBB0_6:
	mov	w8, #-1
	stur	w8, [x29, #-4]
	b	.LBB0_35
.LBB0_7:
	b	.LBB0_23
.LBB0_8:
	ldur	w8, [x29, #-36]
	cbz	w8, .LBB0_11
	b	.LBB0_9
.LBB0_9:
	ldur	x0, [x29, #-16]
	bl	decNumberIsNegative
	cbz	x0, .LBB0_11
	b	.LBB0_10
.LBB0_10:
	mov	w8, #-1
	stur	w8, [x29, #-36]
	b	.LBB0_11
.LBB0_11:
	mov	w8, #1
	str	w8, [sp, #40]
	ldur	x0, [x29, #-24]
	bl	ISZERO
	cbz	x0, .LBB0_13
	b	.LBB0_12
.LBB0_12:
	str	wzr, [sp, #40]
	b	.LBB0_16
.LBB0_13:
	ldur	x0, [x29, #-24]
	bl	decNumberIsNegative
	cbz	x0, .LBB0_15
	b	.LBB0_14
.LBB0_14:
	mov	w8, #-1
	str	w8, [sp, #40]
	b	.LBB0_15
.LBB0_15:
	b	.LBB0_16
.LBB0_16:
	ldur	w8, [x29, #-36]
	ldr	w9, [sp, #40]
	subs	w8, w8, w9
	b.le	.LBB0_18
	b	.LBB0_17
.LBB0_17:
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_35
.LBB0_18:
	ldur	w8, [x29, #-36]
	ldr	w9, [sp, #40]
	subs	w8, w8, w9
	b.ge	.LBB0_20
	b	.LBB0_19
.LBB0_19:
	mov	w8, #-1
	stur	w8, [x29, #-4]
	b	.LBB0_35
.LBB0_20:
	ldur	w8, [x29, #-36]
	cbnz	w8, .LBB0_22
	b	.LBB0_21
.LBB0_21:
	stur	wzr, [x29, #-4]
	b	.LBB0_35
.LBB0_22:
	b	.LBB0_23
.LBB0_23:
	ldur	x8, [x29, #-16]
	ldr	w8, [x8]
	ldur	x9, [x29, #-24]
	ldr	w9, [x9]
	orr	w8, w8, w9
	adrp	x9, DECINF
	ldr	w9, [x9, :lo12:DECINF]
	and	w8, w8, w9
	cbz	w8, .LBB0_30
	b	.LBB0_24
.LBB0_24:
	ldur	x0, [x29, #-24]
	bl	decNumberIsInfinite
	cbz	x0, .LBB0_29
	b	.LBB0_25
.LBB0_25:
	ldur	x0, [x29, #-16]
	bl	decNumberIsInfinite
	cbz	x0, .LBB0_27
	b	.LBB0_26
.LBB0_26:
	stur	wzr, [x29, #-36]
	b	.LBB0_28
.LBB0_27:
	ldur	w9, [x29, #-36]
	mov	w8, wzr
	subs	w8, w8, w9
	stur	w8, [x29, #-36]
	b	.LBB0_28
.LBB0_28:
	b	.LBB0_29
.LBB0_29:
	ldur	w8, [x29, #-36]
	stur	w8, [x29, #-4]
	b	.LBB0_35
.LBB0_30:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #8]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9, #8]
	subs	x8, x8, x9
	b.le	.LBB0_32
	b	.LBB0_31
.LBB0_31:
	ldur	x8, [x29, #-16]
	str	x8, [sp, #24]
	ldur	x8, [x29, #-24]
	stur	x8, [x29, #-16]
	ldr	x8, [sp, #24]
	stur	x8, [x29, #-24]
	ldur	w9, [x29, #-36]
	mov	w8, wzr
	subs	w8, w8, w9
	stur	w8, [x29, #-36]
	b	.LBB0_32
.LBB0_32:
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #20]
	str	w8, [sp, #20]                   // 4-byte Folded Spill
	ldur	x8, [x29, #-16]
	ldr	w0, [x8, #16]
	bl	D2U
	str	w0, [sp, #12]                   // 4-byte Folded Spill
	ldur	x8, [x29, #-24]
	ldr	w8, [x8, #20]
	str	w8, [sp, #16]                   // 4-byte Folded Spill
	ldur	x8, [x29, #-24]
	ldr	w0, [x8, #16]
	bl	D2U
	ldr	w1, [sp, #12]                   // 4-byte Folded Reload
	ldr	w2, [sp, #16]                   // 4-byte Folded Reload
	mov	w3, w0
	ldr	w0, [sp, #20]                   // 4-byte Folded Reload
	ldur	x8, [x29, #-24]
	ldr	x8, [x8, #8]
	ldur	x9, [x29, #-16]
	ldr	x9, [x9, #8]
	subs	x4, x8, x9
	bl	decUnitCompare
	str	w0, [sp, #36]
	ldr	w8, [sp, #36]
	adrp	x9, BADINT
	ldr	w9, [x9, :lo12:BADINT]
	subs	w8, w8, w9
	b.eq	.LBB0_34
	b	.LBB0_33
.LBB0_33:
	ldur	w9, [x29, #-36]
	ldr	w8, [sp, #36]
	mul	w8, w8, w9
	str	w8, [sp, #36]
	b	.LBB0_34
.LBB0_34:
	ldr	w8, [sp, #36]
	stur	w8, [x29, #-4]
	b	.LBB0_35
.LBB0_35:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #80]             // 16-byte Folded Reload
	add	sp, sp, #96
	ret
.Lfunc_end0:
	.size	decCompare, .Lfunc_end0-decCompare
                                        // -- End function
	.type	DECINF,@object                  // @DECINF
	.bss
	.globl	DECINF
	.p2align	2
DECINF:
	.word	0                               // 0x0
	.size	DECINF, 4
	.type	BADINT,@object                  // @BADINT
	.globl	BADINT
	.p2align	2
BADINT:
	.word	0                               // 0x0
	.size	BADINT, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym decCompare
	.addrsig_sym ISZERO
	.addrsig_sym decNumberIsNegative
	.addrsig_sym decNumberIsInfinite
	.addrsig_sym decUnitCompare
	.addrsig_sym D2U
	.addrsig_sym DECINF
	.addrsig_sym BADINT