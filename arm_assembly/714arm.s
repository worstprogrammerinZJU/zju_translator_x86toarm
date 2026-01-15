	.text
	.globl	decimal64ToNumber               // -- Begin function decimal64ToNumber
	.p2align	2
	.type	decimal64ToNumber,@function
decimal64ToNumber:                      // @decimal64ToNumber
// %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             // 16-byte Folded Spill
	add	x29, sp, #80
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
                                        // implicit-def: $x8
	mov	w8, w0
	sxtw	x8, w8
	str	x8, [sp]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	add	x0, x8, #4
	bl	UBTOUI
                                        // implicit-def: $x8
	mov	w8, w0
	sxtw	x8, w8
	str	x8, [sp, #8]
	b	.LBB0_3
.LBB0_2:
	ldur	x8, [x29, #-16]
	ldr	x0, [x8]
	bl	UBTOUI
                                        // implicit-def: $x8
	mov	w8, w0
	sxtw	x8, w8
	str	x8, [sp, #8]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	add	x0, x8, #4
	bl	UBTOUI
                                        // implicit-def: $x8
	mov	w8, w0
	sxtw	x8, w8
	str	x8, [sp]
	b	.LBB0_3
.LBB0_3:
	ldr	x8, [sp, #8]
	lsr	x8, x8, #26
	and	x8, x8, #0x1f
	str	x8, [sp, #32]
	ldur	x0, [x29, #-24]
	bl	decNumberZero
	ldr	x8, [sp, #8]
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
	ldr	x9, [sp, #32]
	ldr	x8, [x8, x9, lsl #3]
	stur	x8, [x29, #-32]
	adrp	x8, COMBEXP
	ldr	x8, [x8, :lo12:COMBEXP]
	ldr	x9, [sp, #32]
	ldr	x8, [x8, x9, lsl #3]
	str	x8, [sp, #40]
	ldr	x8, [sp, #40]
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
	b	.LBB0_27
.LBB0_8:
	ldr	x8, [sp, #8]
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
	ldr	x8, [sp, #40]
	lsl	x8, x8, #8
	ldr	x9, [sp, #8]
	lsr	x9, x9, #18
                                        // kill: def $w9 killed $w9 killed $x9
	add	x8, x8, w9, uxtb
	adrp	x9, DECIMAL64_Bias
	ldr	x9, [x9, :lo12:DECIMAL64_Bias]
	subs	x8, x8, x9
	ldur	x9, [x29, #-24]
	str	x8, [x9]
	b	.LBB0_14
.LBB0_14:
	ldr	x8, [sp, #8]
	and	x8, x8, #0x3ffff
	str	x8, [sp, #8]
	ldur	x8, [x29, #-32]
	cbz	x8, .LBB0_16
	b	.LBB0_15
.LBB0_15:
	ldur	x9, [x29, #-32]
	ldr	x8, [sp, #8]
	orr	x8, x8, x9, lsl #18
	str	x8, [sp, #8]
	mov	w8, #6
	str	w8, [sp, #28]
	b	.LBB0_26
.LBB0_16:
	ldr	x8, [sp, #8]
	cbnz	x8, .LBB0_22
	b	.LBB0_17
.LBB0_17:
	ldr	x8, [sp]
	cbnz	x8, .LBB0_19
	b	.LBB0_18
.LBB0_18:
	ldur	x8, [x29, #-24]
	stur	x8, [x29, #-8]
	b	.LBB0_27
.LBB0_19:
	mov	w8, #3
	str	w8, [sp, #28]
	ldr	x8, [sp]
	and	x8, x8, #0xc0000000
	cbz	x8, .LBB0_21
	b	.LBB0_20
.LBB0_20:
	ldr	w8, [sp, #28]
	add	w8, w8, #1
	str	w8, [sp, #28]
	b	.LBB0_21
.LBB0_21:
	b	.LBB0_25
.LBB0_22:
	mov	w8, #4
	str	w8, [sp, #28]
	ldr	x8, [sp, #8]
	and	x8, x8, #0x3ff00
	cbz	x8, .LBB0_24
	b	.LBB0_23
.LBB0_23:
	ldr	w8, [sp, #28]
	add	w8, w8, #1
	str	w8, [sp, #28]
	b	.LBB0_24
.LBB0_24:
	b	.LBB0_25
.LBB0_25:
	b	.LBB0_26
.LBB0_26:
	ldur	x0, [x29, #-24]
	ldr	w2, [sp, #28]
	mov	x1, sp
	bl	decDigitsFromDPD
	ldur	x8, [x29, #-24]
	stur	x8, [x29, #-8]
	b	.LBB0_27
.LBB0_27:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #80]             // 16-byte Folded Reload
	add	sp, sp, #96
	ret
.Lfunc_end0:
	.size	decimal64ToNumber, .Lfunc_end0-decimal64ToNumber
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
	.type	DECIMAL64_Bias,@object          // @DECIMAL64_Bias
	.globl	DECIMAL64_Bias
	.p2align	3
DECIMAL64_Bias:
	.xword	0                               // 0x0
	.size	DECIMAL64_Bias, 8
	.type	sourhi,@object                  // @sourhi
	.globl	sourhi
	.p2align	2
sourhi:
	.word	0                               // 0x0
	.size	sourhi, 4
	.type	sourlo,@object                  // @sourlo
	.globl	sourlo
	.p2align	2
sourlo:
	.word	0                               // 0x0
	.size	sourlo, 4
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
	.addrsig_sym DECIMAL64_Bias