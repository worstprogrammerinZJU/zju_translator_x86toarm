	.text
	.globl	decimal128ToNumber              // -- Begin function decimal128ToNumber
	.p2align	2
	.type	decimal128ToNumber,@function
decimal128ToNumber:                     // @decimal128ToNumber
// %bb.0:
	sub	sp, sp, #112
	stp	x29, x30, [sp, #96]             // 16-byte Folded Spill
	add	x29, sp, #96
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	adrp	x8, DECLITEND
	ldr	x8, [x8, :lo12:DECLITEND]
	cbz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	x8, [x29, #-16]
	ldr	x0, [x8]
	bl	UBTOUI
	str	x0, [sp]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	add	x0, x8, #4
	bl	UBTOUI
	str	x0, [sp, #8]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	add	x0, x8, #8
	bl	UBTOUI
	str	x0, [sp, #16]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	add	x0, x8, #12
	bl	UBTOUI
	str	x0, [sp, #24]
	b	.LBB0_3
.LBB0_2:
	ldur	x8, [x29, #-16]
	ldr	x0, [x8]
	bl	UBTOUI
	str	x0, [sp, #24]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	add	x0, x8, #4
	bl	UBTOUI
	str	x0, [sp, #16]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	add	x0, x8, #8
	bl	UBTOUI
	str	x0, [sp, #8]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	add	x0, x8, #12
	bl	UBTOUI
	str	x0, [sp]
	b	.LBB0_3
.LBB0_3:
	ldr	x8, [sp, #24]
	lsr	x8, x8, #26
	and	x8, x8, #0x1f
	str	x8, [sp, #48]
	ldur	x0, [x29, #-24]
	bl	decNumberZero
	ldr	x8, [sp, #24]
                                        // kill: def $w8 killed $w8 killed $x8
	tbz	w8, #31, .LBB0_5
	b	.LBB0_4
.LBB0_4:
	adrp	x8, DECNEG
	ldr	w8, [x8, :lo12:DECNEG]
	ldur	x9, [x29, #-24]
	str	w8, [x9, #8]
	b	.LBB0_5
.LBB0_5:
	adrp	x8, COMBMSD
	ldr	x8, [x8, :lo12:COMBMSD]
	ldr	x9, [sp, #48]
	ldr	x8, [x8, x9, lsl #3]
	stur	x8, [x29, #-32]
	adrp	x8, COMBEXP
	ldr	x8, [x8, :lo12:COMBEXP]
	ldr	x9, [sp, #48]
	ldr	x8, [x8, x9, lsl #3]
	stur	x8, [x29, #-40]
	ldur	x8, [x29, #-40]
	subs	x8, x8, #3
	b.ne	.LBB0_13
	b	.LBB0_6
.LBB0_6:
	ldur	x8, [x29, #-32]
	cbnz	x8, .LBB0_8
	b	.LBB0_7
.LBB0_7:
	adrp	x8, DECINF
	ldr	w10, [x8, :lo12:DECINF]
	ldur	x9, [x29, #-24]
	ldr	w8, [x9, #8]
	orr	w8, w8, w10
	str	w8, [x9, #8]
	ldur	x8, [x29, #-24]
	stur	x8, [x29, #-8]
	b	.LBB0_30
.LBB0_8:
	ldr	x8, [sp, #24]
                                        // kill: def $w8 killed $w8 killed $x8
	tbz	w8, #25, .LBB0_10
	b	.LBB0_9
.LBB0_9:
	adrp	x8, DECSNAN
	ldr	w10, [x8, :lo12:DECSNAN]
	ldur	x9, [x29, #-24]
	ldr	w8, [x9, #8]
	orr	w8, w8, w10
	str	w8, [x9, #8]
	b	.LBB0_11
.LBB0_10:
	adrp	x8, DECNAN
	ldr	w10, [x8, :lo12:DECNAN]
	ldur	x9, [x29, #-24]
	ldr	w8, [x9, #8]
	orr	w8, w8, w10
	str	w8, [x9, #8]
	b	.LBB0_11
.LBB0_11:
	b	.LBB0_12
.LBB0_12:
	stur	xzr, [x29, #-32]
	b	.LBB0_14
.LBB0_13:
	ldur	x9, [x29, #-40]
	ldr	x8, [sp, #24]
	lsr	x8, x8, #14
	and	x8, x8, #0xfff
	add	x8, x8, x9, lsl #12
	adrp	x9, DECIMAL128_Bias
	ldr	x9, [x9, :lo12:DECIMAL128_Bias]
	subs	x8, x8, x9
	ldur	x9, [x29, #-24]
	str	x8, [x9]
	b	.LBB0_14
.LBB0_14:
	ldr	x8, [sp, #24]
	and	x8, x8, #0x3fff
	str	x8, [sp, #24]
	ldur	x8, [x29, #-32]
	cbz	x8, .LBB0_16
	b	.LBB0_15
.LBB0_15:
	ldur	x9, [x29, #-32]
	ldr	x8, [sp, #24]
	orr	x8, x8, x9, lsl #14
	str	x8, [sp, #24]
	mov	w8, #12
	str	w8, [sp, #44]
	b	.LBB0_29
.LBB0_16:
	ldr	x8, [sp, #24]
	cbz	x8, .LBB0_18
	b	.LBB0_17
.LBB0_17:
	mov	w8, #11
	str	w8, [sp, #44]
	b	.LBB0_28
.LBB0_18:
	ldr	x8, [sp, #16]
	cbz	x8, .LBB0_20
	b	.LBB0_19
.LBB0_19:
	mov	w8, #10
	str	w8, [sp, #44]
	b	.LBB0_27
.LBB0_20:
	ldr	x8, [sp, #8]
	cbz	x8, .LBB0_22
	b	.LBB0_21
.LBB0_21:
	mov	w8, #7
	str	w8, [sp, #44]
	b	.LBB0_26
.LBB0_22:
	ldr	x8, [sp]
	cbz	x8, .LBB0_24
	b	.LBB0_23
.LBB0_23:
	mov	w8, #4
	str	w8, [sp, #44]
	b	.LBB0_25
.LBB0_24:
	ldur	x8, [x29, #-24]
	stur	x8, [x29, #-8]
	b	.LBB0_30
.LBB0_25:
	b	.LBB0_26
.LBB0_26:
	b	.LBB0_27
.LBB0_27:
	b	.LBB0_28
.LBB0_28:
	b	.LBB0_29
.LBB0_29:
	ldur	x0, [x29, #-24]
	ldr	w2, [sp, #44]
	mov	x1, sp
	bl	decDigitsFromDPD
	ldur	x8, [x29, #-24]
	stur	x8, [x29, #-8]
	b	.LBB0_30
.LBB0_30:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #96]             // 16-byte Folded Reload
	add	sp, sp, #112
	ret
.Lfunc_end0:
	.size	decimal128ToNumber, .Lfunc_end0-decimal128ToNumber
                                        // -- End function
	.type	DECLITEND,@object               // @DECLITEND
	.bss
	.globl	DECLITEND
	.p2align	3
DECLITEND:
	.xword	0                               // 0x0
	.size	DECLITEND, 8
	.type	DECNEG,@object                  // @DECNEG
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
	.type	DECIMAL128_Bias,@object         // @DECIMAL128_Bias
	.globl	DECIMAL128_Bias
	.p2align	3
DECIMAL128_Bias:
	.xword	0                               // 0x0
	.size	DECIMAL128_Bias, 8
	.type	sourhi,@object                  // @sourhi
	.globl	sourhi
	.p2align	2
sourhi:
	.word	0                               // 0x0
	.size	sourhi, 4
	.type	sourlo,@object                  // @sourlo
	.globl	sourlo
	.p2align	3
sourlo:
	.xword	0
	.size	sourlo, 8
	.type	sourmh,@object                  // @sourmh
	.globl	sourmh
	.p2align	3
sourmh:
	.xword	0
	.size	sourmh, 8
	.type	sourml,@object                  // @sourml
	.globl	sourml
	.p2align	3
sourml:
	.xword	0
	.size	sourml, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym UBTOUI
	.addrsig_sym decNumberZero
	.addrsig_sym decDigitsFromDPD
	.addrsig_sym DECLITEND
	.addrsig_sym DECNEG
	.addrsig_sym COMBMSD
	.addrsig_sym COMBEXP
	.addrsig_sym DECINF
	.addrsig_sym DECSNAN
	.addrsig_sym DECNAN
	.addrsig_sym DECIMAL128_Bias