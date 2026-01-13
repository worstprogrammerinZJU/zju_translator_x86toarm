	.text
	.p2align	2                               // -- Begin function decNaNs
	.type	decNaNs,@function
decNaNs:                                // @decNaNs
// %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             // 16-byte Folded Spill
	add	x29, sp, #80
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	stur	x3, [x29, #-32]
	str	x4, [sp, #40]
	ldur	x8, [x29, #-16]
	ldr	w8, [x8]
	adrp	x9, DECSNAN
	ldr	w9, [x9, :lo12:DECSNAN]
	and	w8, w8, w9
	cbz	w8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	adrp	x8, DEC_Invalid_operation
	ldr	w8, [x8, :lo12:DEC_Invalid_operation]
	adrp	x9, DEC_sNaN
	ldr	w9, [x9, :lo12:DEC_sNaN]
	orr	w10, w8, w9
	ldr	x9, [sp, #40]
	ldr	w8, [x9]
	orr	w8, w8, w10
	str	w8, [x9]
	b	.LBB0_12
.LBB0_2:
	ldur	x8, [x29, #-24]
	cbnz	x8, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	b	.LBB0_11
.LBB0_4:
	ldur	x8, [x29, #-24]
	ldr	w8, [x8]
	adrp	x9, DECSNAN
	ldr	w9, [x9, :lo12:DECSNAN]
	and	w8, w8, w9
	cbz	w8, .LBB0_6
	b	.LBB0_5
.LBB0_5:
	ldur	x8, [x29, #-24]
	stur	x8, [x29, #-16]
	adrp	x8, DEC_Invalid_operation
	ldr	w8, [x8, :lo12:DEC_Invalid_operation]
	adrp	x9, DEC_sNaN
	ldr	w9, [x9, :lo12:DEC_sNaN]
	orr	w10, w8, w9
	ldr	x9, [sp, #40]
	ldr	w8, [x9]
	orr	w8, w8, w10
	str	w8, [x9]
	b	.LBB0_10
.LBB0_6:
	ldur	x8, [x29, #-16]
	ldr	w8, [x8]
	adrp	x9, DECNAN
	ldr	w9, [x9, :lo12:DECNAN]
	and	w8, w8, w9
	cbz	w8, .LBB0_8
	b	.LBB0_7
.LBB0_7:
	b	.LBB0_9
.LBB0_8:
	ldur	x8, [x29, #-24]
	stur	x8, [x29, #-16]
	b	.LBB0_9
.LBB0_9:
	b	.LBB0_10
.LBB0_10:
	b	.LBB0_11
.LBB0_11:
	b	.LBB0_12
.LBB0_12:
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #4]
	ldur	x9, [x29, #-32]
	ldr	w9, [x9]
	subs	w8, w8, w9
	b.gt	.LBB0_14
	b	.LBB0_13
.LBB0_13:
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-16]
	bl	decNumberCopy
	b	.LBB0_21
.LBB0_14:
	ldur	x8, [x29, #-16]
	ldr	w8, [x8]
	ldur	x9, [x29, #-8]
	str	w8, [x9]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #16]
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	ldur	x8, [x29, #-32]
	ldr	w0, [x8]
	bl	D2U
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	add	x8, x8, w0, sxtw #2
	str	x8, [sp, #16]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #16]
	str	x8, [sp, #24]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #16]
	str	x8, [sp, #32]
	b	.LBB0_15
.LBB0_15:                               // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #24]
	ldr	x9, [sp, #16]
	subs	x8, x8, x9
	b.hs	.LBB0_18
	b	.LBB0_16
.LBB0_16:                               //   in Loop: Header=BB0_15 Depth=1
	ldr	x8, [sp, #32]
	ldr	w8, [x8]
	ldr	x9, [sp, #24]
	str	w8, [x9]
	b	.LBB0_17
.LBB0_17:                               //   in Loop: Header=BB0_15 Depth=1
	ldr	x8, [sp, #24]
	add	x8, x8, #4
	str	x8, [sp, #24]
	ldr	x8, [sp, #32]
	add	x8, x8, #4
	str	x8, [sp, #32]
	b	.LBB0_15
.LBB0_18:
	ldur	x8, [x29, #-32]
	ldr	w0, [x8]
	bl	D2U
	adrp	x8, DECDPUN
	ldr	w8, [x8, :lo12:DECDPUN]
	mul	w8, w0, w8
	ldur	x9, [x29, #-8]
	str	w8, [x9, #4]
	ldur	x8, [x29, #-8]
	ldr	w8, [x8, #4]
	ldur	x9, [x29, #-32]
	ldr	w9, [x9]
	subs	w8, w8, w9
	b.le	.LBB0_20
	b	.LBB0_19
.LBB0_19:
	ldur	x0, [x29, #-8]
	ldur	x8, [x29, #-8]
	ldr	w8, [x8, #4]
	ldur	x9, [x29, #-32]
	ldr	w9, [x9]
	subs	w1, w8, w9
	bl	decDecap
	b	.LBB0_20
.LBB0_20:
	b	.LBB0_21
.LBB0_21:
	adrp	x8, DECSNAN
	ldr	w10, [x8, :lo12:DECSNAN]
	ldur	x9, [x29, #-8]
	ldr	w8, [x9]
	bic	w8, w8, w10
	str	w8, [x9]
	adrp	x8, DECNAN
	ldr	w10, [x8, :lo12:DECNAN]
	ldur	x9, [x29, #-8]
	ldr	w8, [x9]
	orr	w8, w8, w10
	str	w8, [x9]
	ldur	x8, [x29, #-8]
	str	xzr, [x8, #8]
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #80]             // 16-byte Folded Reload
	add	sp, sp, #96
	ret
.Lfunc_end0:
	.size	decNaNs, .Lfunc_end0-decNaNs
                                        // -- End function
	.type	DECSNAN,@object                 // @DECSNAN
	.bss
	.globl	DECSNAN
	.p2align	2
DECSNAN:
	.word	0                               // 0x0
	.size	DECSNAN, 4
	.type	DEC_Invalid_operation,@object   // @DEC_Invalid_operation
	.globl	DEC_Invalid_operation
	.p2align	2
DEC_Invalid_operation:
	.word	0                               // 0x0
	.size	DEC_Invalid_operation, 4
	.type	DEC_sNaN,@object                // @DEC_sNaN
	.globl	DEC_sNaN
	.p2align	2
DEC_sNaN:
	.word	0                               // 0x0
	.size	DEC_sNaN, 4
	.type	DECNAN,@object                  // @DECNAN
	.globl	DECNAN
	.p2align	2
DECNAN:
	.word	0                               // 0x0
	.size	DECNAN, 4
	.type	DECDPUN,@object                 // @DECDPUN
	.globl	DECDPUN
	.p2align	2
DECDPUN:
	.word	0                               // 0x0
	.size	DECDPUN, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym decNaNs
	.addrsig_sym decNumberCopy
	.addrsig_sym D2U
	.addrsig_sym decDecap
	.addrsig_sym DECSNAN
	.addrsig_sym DEC_Invalid_operation
	.addrsig_sym DEC_sNaN
	.addrsig_sym DECNAN
	.addrsig_sym DECDPUN