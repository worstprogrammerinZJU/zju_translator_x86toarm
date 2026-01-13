	.text
	.p2align	2                               // -- Begin function decStatus
	.type	decStatus,@function
decStatus:                              // @decStatus
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	str	x2, [sp, #8]
	ldur	w8, [x29, #-12]
	adrp	x9, DEC_NaNs
	ldr	w9, [x9, :lo12:DEC_NaNs]
	and	w8, w8, w9
	cbz	w8, .LBB0_5
	b	.LBB0_1
.LBB0_1:
	ldur	w8, [x29, #-12]
	adrp	x9, DEC_sNaN
	ldr	w9, [x9, :lo12:DEC_sNaN]
	and	w8, w8, w9
	cbz	w8, .LBB0_3
	b	.LBB0_2
.LBB0_2:
	adrp	x8, DEC_sNaN
	ldr	w9, [x8, :lo12:DEC_sNaN]
	ldur	w8, [x29, #-12]
	bic	w8, w8, w9
	stur	w8, [x29, #-12]
	b	.LBB0_4
.LBB0_3:
	ldur	x0, [x29, #-8]
	bl	decNumberZero
	adrp	x8, DECNAN
	ldr	w8, [x8, :lo12:DECNAN]
	ldur	x9, [x29, #-8]
	str	w8, [x9]
	b	.LBB0_4
.LBB0_4:
	b	.LBB0_5
.LBB0_5:
	ldr	x0, [sp, #8]
	ldur	w1, [x29, #-12]
	bl	decContextSetStatus
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	decStatus, .Lfunc_end0-decStatus
                                        // -- End function
	.type	DEC_NaNs,@object                // @DEC_NaNs
	.bss
	.globl	DEC_NaNs
	.p2align	2
DEC_NaNs:
	.word	0                               // 0x0
	.size	DEC_NaNs, 4
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
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym decStatus
	.addrsig_sym decNumberZero
	.addrsig_sym decContextSetStatus
	.addrsig_sym DEC_NaNs
	.addrsig_sym DEC_sNaN
	.addrsig_sym DECNAN