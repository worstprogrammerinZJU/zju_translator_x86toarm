	.text
	.p2align	2                               // -- Begin function decToIntegral
	.type	decToIntegral,@function
decToIntegral:                          // @decToIntegral
// %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             // 16-byte Folded Spill
	add	x29, sp, #80
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	stur	x2, [x29, #-32]
	stur	w3, [x29, #-36]
	str	w4, [sp, #40]
	ldur	x0, [x29, #-24]
	mov	w1, wzr
	bl	DFWORD
	str	w0, [sp, #28]
	adrp	x8, DECCOMBEXP
	ldr	x8, [x8, :lo12:DECCOMBEXP]
	ldr	w9, [sp, #28]
	asr	w9, w9, #26
	ldr	x8, [x8, w9, sxtw #3]
	str	x8, [sp, #32]
	ldr	x0, [sp, #32]
	bl	EXPISSPECIAL
	cbz	x0, .LBB0_4
	b	.LBB0_1
.LBB0_1:
	ldur	x0, [x29, #-24]
	bl	DFISNAN
	cbz	x0, .LBB0_3
	b	.LBB0_2
.LBB0_2:
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-24]
	ldur	x3, [x29, #-32]
	mov	x2, xzr
	bl	decNaNs
	stur	x0, [x29, #-8]
	b	.LBB0_9
.LBB0_3:
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-24]
	bl	decInfinity
	stur	x0, [x29, #-8]
	b	.LBB0_9
.LBB0_4:
	ldur	x0, [x29, #-24]
	bl	GETECON
	adrp	x8, DECBIAS
	ldr	x8, [x8, :lo12:DECBIAS]
	subs	x9, x0, x8
	ldr	x8, [sp, #32]
	add	x8, x8, x9
	str	x8, [sp, #32]
	ldr	x8, [sp, #32]
	tbnz	x8, #63, .LBB0_6
	b	.LBB0_5
.LBB0_5:
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-24]
	bl	decCanonical
	stur	x0, [x29, #-8]
	b	.LBB0_9
.LBB0_6:
	ldur	x8, [x29, #-32]
	ldr	w8, [x8]
	str	w8, [sp, #24]
	ldur	x8, [x29, #-32]
	ldr	w8, [x8, #4]
	str	w8, [sp, #20]
	ldur	w8, [x29, #-36]
	ldur	x9, [x29, #-32]
	str	w8, [x9]
	add	x0, sp, #16
	str	x0, [sp, #8]                    // 8-byte Folded Spill
	bl	decFloatZero
	ldr	x2, [sp, #8]                    // 8-byte Folded Reload
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-24]
	ldur	x3, [x29, #-32]
	bl	decFloatQuantize
	ldr	w8, [sp, #24]
	ldur	x9, [x29, #-32]
	str	w8, [x9]
	ldr	w8, [sp, #40]
	cbnz	w8, .LBB0_8
	b	.LBB0_7
.LBB0_7:
	ldr	w8, [sp, #20]
	ldur	x9, [x29, #-32]
	str	w8, [x9, #4]
	b	.LBB0_8
.LBB0_8:
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	.LBB0_9
.LBB0_9:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #80]             // 16-byte Folded Reload
	add	sp, sp, #96
	ret
.Lfunc_end0:
	.size	decToIntegral, .Lfunc_end0-decToIntegral
                                        // -- End function
	.type	DECCOMBEXP,@object              // @DECCOMBEXP
	.bss
	.globl	DECCOMBEXP
	.p2align	3
DECCOMBEXP:
	.xword	0
	.size	DECCOMBEXP, 8
	.type	DECBIAS,@object                 // @DECBIAS
	.globl	DECBIAS
	.p2align	3
DECBIAS:
	.xword	0                               // 0x0
	.size	DECBIAS, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym decToIntegral
	.addrsig_sym DFWORD
	.addrsig_sym EXPISSPECIAL
	.addrsig_sym DFISNAN
	.addrsig_sym decNaNs
	.addrsig_sym decInfinity
	.addrsig_sym GETECON
	.addrsig_sym decCanonical
	.addrsig_sym decFloatZero
	.addrsig_sym decFloatQuantize
	.addrsig_sym DECCOMBEXP
	.addrsig_sym DECBIAS