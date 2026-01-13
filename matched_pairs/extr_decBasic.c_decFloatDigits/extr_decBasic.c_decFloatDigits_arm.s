	.text
	.globl	decFloatDigits                  // -- Begin function decFloatDigits
	.p2align	2
	.type	decFloatDigits,@function
decFloatDigits:                         // @decFloatDigits
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	mov	w1, wzr
	bl	DFWORD
	str	w0, [sp, #8]
	ldr	x0, [sp, #16]
	bl	DFISINF
	cbz	x0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_5
.LBB0_2:
	ldr	x0, [sp, #16]
	bl	DFISNAN
	cbnz	w0, .LBB0_5
	b	.LBB0_3
.LBB0_3:
	adrp	x8, DECCOMBMSD
	ldr	x8, [x8, :lo12:DECCOMBMSD]
	ldr	w9, [sp, #8]
	asr	w9, w9, #26
	ldr	x8, [x8, w9, sxtw #3]
	cbz	x8, .LBB0_5
	b	.LBB0_4
.LBB0_4:
	adrp	x8, DECPMAX
	ldr	w8, [x8, :lo12:DECPMAX]
	stur	w8, [x29, #-4]
	b	.LBB0_5
.LBB0_5:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	decFloatDigits, .Lfunc_end0-decFloatDigits
                                        // -- End function
	.type	DECCOMBMSD,@object              // @DECCOMBMSD
	.bss
	.globl	DECCOMBMSD
	.p2align	3
DECCOMBMSD:
	.xword	0
	.size	DECCOMBMSD, 8
	.type	DECPMAX,@object                 // @DECPMAX
	.globl	DECPMAX
	.p2align	2
DECPMAX:
	.word	0                               // 0x0
	.size	DECPMAX, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym DFWORD
	.addrsig_sym DFISINF
	.addrsig_sym DFISNAN
	.addrsig_sym DECCOMBMSD
	.addrsig_sym DECPMAX