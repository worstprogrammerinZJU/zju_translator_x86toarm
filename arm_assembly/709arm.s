	.text
	.globl	decimal32ToNumber               // -- Begin function decimal32ToNumber
	.p2align	2
	.type	decimal32ToNumber,@function
decimal32ToNumber:                      // @decimal32ToNumber
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-16]
	str	x1, [sp, #24]
	ldur	x8, [x29, #-16]
	ldr	w0, [x8]
	bl	UBTOUI
	str	w0, [sp, #8]
	ldr	w8, [sp, #8]
	asr	w8, w8, #26
	and	w8, w8, #0x1f
	str	w8, [sp, #12]
	ldr	x0, [sp, #24]
	bl	decNumberZero
	ldr	w8, [sp, #8]
	tbz	w8, #31, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	adrp	x8, DECNEG
	ldr	w8, [x8, :lo12:DECNEG]
	ldr	x9, [sp, #24]
	str	w8, [x9, #8]
	b	.LBB0_2
.LBB0_2:
	adrp	x8, COMBMSD
	ldr	x8, [x8, :lo12:COMBMSD]
	ldrsw	x9, [sp, #12]
	ldr	w8, [x8, x9, lsl #2]
	str	w8, [sp, #20]
	adrp	x8, COMBEXP
	ldr	x8, [x8, :lo12:COMBEXP]
	ldrsw	x9, [sp, #12]
	ldr	w8, [x8, x9, lsl #2]
	str	w8, [sp, #16]
	ldr	w8, [sp, #16]
	subs	w8, w8, #3
	b.ne	.LBB0_10
	b	.LBB0_3
.LBB0_3:
	ldr	w8, [sp, #20]
	cbnz	w8, .LBB0_5
	b	.LBB0_4
.LBB0_4:
	adrp	x8, DECINF
	ldr	w10, [x8, :lo12:DECINF]
	ldr	x9, [sp, #24]
	ldr	w8, [x9, #8]
	orr	w8, w8, w10
	str	w8, [x9, #8]
	ldr	x8, [sp, #24]
	stur	x8, [x29, #-8]
	b	.LBB0_19
.LBB0_5:
	ldr	w8, [sp, #8]
	tbz	w8, #25, .LBB0_7
	b	.LBB0_6
.LBB0_6:
	adrp	x8, DECSNAN
	ldr	w10, [x8, :lo12:DECSNAN]
	ldr	x9, [sp, #24]
	ldr	w8, [x9, #8]
	orr	w8, w8, w10
	str	w8, [x9, #8]
	b	.LBB0_8
.LBB0_7:
	adrp	x8, DECNAN
	ldr	w10, [x8, :lo12:DECNAN]
	ldr	x9, [sp, #24]
	ldr	w8, [x9, #8]
	orr	w8, w8, w10
	str	w8, [x9, #8]
	b	.LBB0_8
.LBB0_8:
	b	.LBB0_9
.LBB0_9:
	str	wzr, [sp, #20]
	b	.LBB0_11
.LBB0_10:
	ldr	w9, [sp, #16]
	ldr	w8, [sp, #8]
	asr	w8, w8, #20
	and	w8, w8, #0x3f
	add	w9, w8, w9, lsl #6
                                        // implicit-def: $x8
	mov	w8, w9
	sxtw	x8, w8
	adrp	x9, DECIMAL32_Bias
	ldr	x9, [x9, :lo12:DECIMAL32_Bias]
	subs	x8, x8, x9
	ldr	x9, [sp, #24]
	str	x8, [x9]
	b	.LBB0_11
.LBB0_11:
	ldr	w8, [sp, #8]
	and	w8, w8, #0xfffff
	str	w8, [sp, #8]
	ldr	w8, [sp, #20]
	cbz	w8, .LBB0_13
	b	.LBB0_12
.LBB0_12:
	ldr	w9, [sp, #20]
	add	x1, sp, #8
	ldr	w8, [sp, #8]
	orr	w8, w8, w9, lsl #20
	str	w8, [sp, #8]
	ldr	x0, [sp, #24]
	mov	w2, #3
	bl	decDigitsFromDPD
	ldr	x8, [sp, #24]
	stur	x8, [x29, #-8]
	b	.LBB0_19
.LBB0_13:
	ldr	w8, [sp, #8]
	cbnz	w8, .LBB0_15
	b	.LBB0_14
.LBB0_14:
	ldr	x8, [sp, #24]
	stur	x8, [x29, #-8]
	b	.LBB0_19
.LBB0_15:
	ldr	w8, [sp, #8]
	and	w8, w8, #0xffc00
	cbz	w8, .LBB0_17
	b	.LBB0_16
.LBB0_16:
	ldr	x0, [sp, #24]
	add	x1, sp, #8
	mov	w2, #2
	bl	decDigitsFromDPD
	b	.LBB0_18
.LBB0_17:
	ldr	x0, [sp, #24]
	add	x1, sp, #8
	mov	w2, #1
	bl	decDigitsFromDPD
	b	.LBB0_18
.LBB0_18:
	ldr	x8, [sp, #24]
	stur	x8, [x29, #-8]
	b	.LBB0_19
.LBB0_19:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	decimal32ToNumber, .Lfunc_end0-decimal32ToNumber
                                        // -- End function
	.type	DECNEG,@object                  // @DECNEG
	.bss
	.globl	DECNEG
	.p2align	2
DECNEG:
	.word	0                               // 0x0
	.size	DECNEG, 4
	.type	COMBMSD,@object                 // @COMBMSD
	.globl	COMBMSD
	.p2align	3
COMBMSD:
	.xword	0
	.size	COMBMSD, 8
	.type	COMBEXP,@object                 // @COMBEXP
	.globl	COMBEXP
	.p2align	3
COMBEXP:
	.xword	0
	.size	COMBEXP, 8
	.type	DECINF,@object                  // @DECINF
	.globl	DECINF
	.p2align	2
DECINF:
	.word	0                               // 0x0
	.size	DECINF, 4
	.type	DECSNAN,@object                 // @DECSNAN
	.globl	DECSNAN
	.p2align	2
DECSNAN:
	.word	0                               // 0x0
	.size	DECSNAN, 4
	.type	DECNAN,@object                  // @DECNAN
	.globl	DECNAN
	.p2align	2
DECNAN:
	.word	0                               // 0x0
	.size	DECNAN, 4
	.type	DECIMAL32_Bias,@object          // @DECIMAL32_Bias
	.globl	DECIMAL32_Bias
	.p2align	3
DECIMAL32_Bias:
	.xword	0                               // 0x0
	.size	DECIMAL32_Bias, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym UBTOUI
	.addrsig_sym decNumberZero
	.addrsig_sym decDigitsFromDPD
	.addrsig_sym DECNEG
	.addrsig_sym COMBMSD
	.addrsig_sym COMBEXP
	.addrsig_sym DECINF
	.addrsig_sym DECSNAN
	.addrsig_sym DECNAN
	.addrsig_sym DECIMAL32_Bias