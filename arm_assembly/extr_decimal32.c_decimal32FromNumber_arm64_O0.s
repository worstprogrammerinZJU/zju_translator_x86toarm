	.text
	.globl	decimal32FromNumber             // -- Begin function decimal32FromNumber
	.p2align	2
	.type	decimal32FromNumber,@function
decimal32FromNumber:                    // @decimal32FromNumber
// %bb.0:
	sub	sp, sp, #144
	stp	x29, x30, [sp, #128]            // 16-byte Folded Spill
	add	x29, sp, #128
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	stur	wzr, [x29, #-28]
	str	wzr, [sp, #40]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	ldur	x9, [x29, #-16]
	ldrsw	x9, [x9, #8]
	add	x8, x8, x9
	subs	x8, x8, #1
	stur	x8, [x29, #-40]
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #8]
	adrp	x9, DECIMAL32_Pmax
	ldr	w9, [x9, :lo12:DECIMAL32_Pmax]
	subs	w8, w8, w9
	b.gt	.LBB0_3
	b	.LBB0_1
.LBB0_1:
	ldur	x8, [x29, #-40]
	adrp	x9, DECIMAL32_Emax
	ldr	x9, [x9, :lo12:DECIMAL32_Emax]
	subs	x8, x8, x9
	b.gt	.LBB0_3
	b	.LBB0_2
.LBB0_2:
	ldur	x8, [x29, #-40]
	adrp	x9, DECIMAL32_Emin
	ldr	x9, [x9, :lo12:DECIMAL32_Emin]
	subs	x8, x8, x9
	b.ge	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	adrp	x8, DEC_INIT_DECIMAL32
	ldr	w1, [x8, :lo12:DEC_INIT_DECIMAL32]
	add	x0, sp, #56
	str	x0, [sp, #8]                    // 8-byte Folded Spill
	bl	decContextDefault
	ldr	x2, [sp, #8]                    // 8-byte Folded Reload
	ldur	x8, [x29, #-24]
	ldr	w8, [x8, #4]
	str	w8, [sp, #60]
	ldur	x1, [x29, #-16]
	add	x0, sp, #64
	str	x0, [sp, #16]                   // 8-byte Folded Spill
	bl	decNumberPlus
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	ldur	x9, [x29, #-16]
	ldr	w9, [x9, #12]
	adrp	x10, DECNEG
	ldr	w10, [x10, :lo12:DECNEG]
	and	w10, w9, w10
	ldr	w9, [sp, #76]
	orr	w9, w9, w10
	str	w9, [sp, #76]
	ldr	w9, [sp, #56]
	stur	w9, [x29, #-28]
	stur	x8, [x29, #-16]
	b	.LBB0_4
.LBB0_4:
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #12]
	adrp	x9, DECSPECIAL
	ldr	w9, [x9, :lo12:DECSPECIAL]
	and	w8, w8, w9
	cbz	w8, .LBB0_16
	b	.LBB0_5
.LBB0_5:
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #12]
	adrp	x9, DECINF
	ldr	w9, [x9, :lo12:DECINF]
	and	w8, w8, w9
	cbz	w8, .LBB0_7
	b	.LBB0_6
.LBB0_6:
	adrp	x8, DECIMAL_Inf
	ldr	w8, [x8, :lo12:DECIMAL_Inf]
	lsl	w8, w8, #24
	str	w8, [sp, #40]
	b	.LBB0_15
.LBB0_7:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #16]
	ldr	x8, [x8]
	cbnz	x8, .LBB0_9
	b	.LBB0_8
.LBB0_8:
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #8]
	subs	w8, w8, #1
	b.le	.LBB0_11
	b	.LBB0_9
.LBB0_9:
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #8]
	adrp	x9, DECIMAL32_Pmax
	ldr	w9, [x9, :lo12:DECIMAL32_Pmax]
	subs	w8, w8, w9
	b.ge	.LBB0_11
	b	.LBB0_10
.LBB0_10:
	ldur	x0, [x29, #-16]
	add	x1, sp, #40
	mov	x2, xzr
	bl	decDigitsToDPD
	b	.LBB0_11
.LBB0_11:
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #12]
	adrp	x9, DECNAN
	ldr	w9, [x9, :lo12:DECNAN]
	and	w8, w8, w9
	cbz	w8, .LBB0_13
	b	.LBB0_12
.LBB0_12:
	adrp	x8, DECIMAL_NaN
	ldr	w9, [x8, :lo12:DECIMAL_NaN]
	ldr	w8, [sp, #40]
	orr	w8, w8, w9, lsl #24
	str	w8, [sp, #40]
	b	.LBB0_14
.LBB0_13:
	adrp	x8, DECIMAL_sNaN
	ldr	w9, [x8, :lo12:DECIMAL_sNaN]
	ldr	w8, [sp, #40]
	orr	w8, w8, w9, lsl #24
	str	w8, [sp, #40]
	b	.LBB0_14
.LBB0_14:
	b	.LBB0_15
.LBB0_15:
	b	.LBB0_39
.LBB0_16:
	ldur	x0, [x29, #-16]
	bl	decNumberIsZero
	cbz	x0, .LBB0_23
	b	.LBB0_17
.LBB0_17:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	adrp	x9, DECIMAL32_Bias
	ldr	x10, [x9, :lo12:DECIMAL32_Bias]
	mov	x9, xzr
	subs	x9, x9, x10
	subs	x8, x8, x9
	b.ge	.LBB0_19
	b	.LBB0_18
.LBB0_18:
	str	wzr, [sp, #48]
	adrp	x8, DEC_Clamped
	ldr	w9, [x8, :lo12:DEC_Clamped]
	ldur	w8, [x29, #-28]
	orr	w8, w8, w9
	stur	w8, [x29, #-28]
	b	.LBB0_22
.LBB0_19:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	adrp	x9, DECIMAL32_Bias
	ldr	x9, [x9, :lo12:DECIMAL32_Bias]
	add	x8, x8, x9
                                        // kill: def $w8 killed $w8 killed $x8
	str	w8, [sp, #48]
	ldr	w8, [sp, #48]
	adrp	x9, DECIMAL32_Ehigh
	ldr	w9, [x9, :lo12:DECIMAL32_Ehigh]
	subs	w8, w8, w9
	b.le	.LBB0_21
	b	.LBB0_20
.LBB0_20:
	adrp	x8, DECIMAL32_Ehigh
	ldr	w8, [x8, :lo12:DECIMAL32_Ehigh]
	str	w8, [sp, #48]
	adrp	x8, DEC_Clamped
	ldr	w9, [x8, :lo12:DEC_Clamped]
	ldur	w8, [x29, #-28]
	orr	w8, w8, w9
	stur	w8, [x29, #-28]
	b	.LBB0_21
.LBB0_21:
	b	.LBB0_22
.LBB0_22:
	ldr	w8, [sp, #48]
	asr	w8, w8, #3
	and	w8, w8, #0x18
	str	w8, [sp, #52]
	b	.LBB0_38
.LBB0_23:
	str	xzr, [sp, #24]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	adrp	x9, DECIMAL32_Bias
	ldr	x9, [x9, :lo12:DECIMAL32_Bias]
	add	x8, x8, x9
                                        // kill: def $w8 killed $w8 killed $x8
	str	w8, [sp, #48]
	ldr	w8, [sp, #48]
	adrp	x9, DECIMAL32_Ehigh
	ldr	w9, [x9, :lo12:DECIMAL32_Ehigh]
	subs	w8, w8, w9
	b.le	.LBB0_25
	b	.LBB0_24
.LBB0_24:
	ldr	w9, [sp, #48]
	adrp	x8, DECIMAL32_Ehigh
	ldr	w10, [x8, :lo12:DECIMAL32_Ehigh]
	subs	w10, w9, w10
                                        // implicit-def: $x9
	mov	w9, w10
	sxtw	x9, w9
	str	x9, [sp, #24]
	ldr	w8, [x8, :lo12:DECIMAL32_Ehigh]
	str	w8, [sp, #48]
	adrp	x8, DEC_Clamped
	ldr	w9, [x8, :lo12:DEC_Clamped]
	ldur	w8, [x29, #-28]
	orr	w8, w8, w9
	stur	w8, [x29, #-28]
	b	.LBB0_25
.LBB0_25:
	adrp	x8, DECDPUN
	ldr	w8, [x8, :lo12:DECDPUN]
	subs	w8, w8, #3
	b.ne	.LBB0_33
	b	.LBB0_26
.LBB0_26:
	ldr	x8, [sp, #24]
	cbnz	x8, .LBB0_33
	b	.LBB0_27
.LBB0_27:
	adrp	x8, BIN2DPD
	ldr	x8, [x8, :lo12:BIN2DPD]
	ldur	x9, [x29, #-16]
	ldr	x9, [x9, #16]
	ldr	x9, [x9]
	ldr	w8, [x8, x9, lsl #2]
	str	w8, [sp, #40]
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #8]
	subs	w8, w8, #3
	b.le	.LBB0_29
	b	.LBB0_28
.LBB0_28:
	adrp	x8, BIN2DPD
	ldr	x8, [x8, :lo12:BIN2DPD]
	ldur	x9, [x29, #-16]
	ldr	x9, [x9, #16]
	ldr	x9, [x9, #8]
	ldr	w9, [x8, x9, lsl #2]
	ldr	w8, [sp, #40]
	orr	w8, w8, w9, lsl #10
	str	w8, [sp, #40]
	b	.LBB0_29
.LBB0_29:
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #8]
	subs	w8, w8, #7
	b.ne	.LBB0_31
	b	.LBB0_30
.LBB0_30:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #16]
	ldr	x8, [x8, #16]
	str	x8, [sp]                        // 8-byte Folded Spill
	b	.LBB0_32
.LBB0_31:
	mov	x8, xzr
	str	x8, [sp]                        // 8-byte Folded Spill
	b	.LBB0_32
.LBB0_32:
	ldr	x8, [sp]                        // 8-byte Folded Reload
                                        // kill: def $w8 killed $w8 killed $x8
	str	w8, [sp, #36]
	b	.LBB0_34
.LBB0_33:
	ldur	x0, [x29, #-16]
	ldr	x2, [sp, #24]
	add	x1, sp, #40
	bl	decDigitsToDPD
	ldr	w8, [sp, #40]
	asr	w8, w8, #20
	str	w8, [sp, #36]
	ldr	w8, [sp, #40]
	and	w8, w8, #0xfffff
	str	w8, [sp, #40]
	b	.LBB0_34
.LBB0_34:
	ldr	w8, [sp, #36]
	subs	w8, w8, #8
	b.lt	.LBB0_36
	b	.LBB0_35
.LBB0_35:
	ldr	w8, [sp, #48]
	asr	w8, w8, #5
	and	w9, w8, #0x6
	mov	w8, #24
	orr	w8, w8, w9
	ldr	w9, [sp, #36]
	and	w9, w9, #0x1
	orr	w8, w8, w9
	str	w8, [sp, #52]
	b	.LBB0_37
.LBB0_36:
	ldr	w8, [sp, #48]
	asr	w8, w8, #3
	and	w8, w8, #0x18
	ldr	w9, [sp, #36]
	orr	w8, w8, w9
	str	w8, [sp, #52]
	b	.LBB0_37
.LBB0_37:
	b	.LBB0_38
.LBB0_38:
	ldr	w9, [sp, #52]
	ldr	w8, [sp, #40]
	orr	w8, w8, w9, lsl #26
	str	w8, [sp, #40]
	ldr	w8, [sp, #48]
	and	w9, w8, #0x3f
	ldr	w8, [sp, #40]
	orr	w8, w8, w9, lsl #20
	str	w8, [sp, #40]
	b	.LBB0_39
.LBB0_39:
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #12]
	adrp	x9, DECNEG
	ldr	w9, [x9, :lo12:DECNEG]
	and	w8, w8, w9
	cbz	w8, .LBB0_41
	b	.LBB0_40
.LBB0_40:
	ldr	w8, [sp, #40]
	orr	w8, w8, #0x80000000
	str	w8, [sp, #40]
	b	.LBB0_41
.LBB0_41:
	ldur	x8, [x29, #-8]
	ldr	w0, [x8]
	ldr	w1, [sp, #40]
	bl	UBFROMUI
	ldur	w8, [x29, #-28]
	cbz	w8, .LBB0_43
	b	.LBB0_42
.LBB0_42:
	ldur	x0, [x29, #-24]
	ldur	w1, [x29, #-28]
	bl	decContextSetStatus
	b	.LBB0_43
.LBB0_43:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #128]            // 16-byte Folded Reload
	add	sp, sp, #144
	ret
.Lfunc_end0:
	.size	decimal32FromNumber, .Lfunc_end0-decimal32FromNumber
                                        // -- End function
	.type	DECIMAL32_Pmax,@object          // @DECIMAL32_Pmax
	.bss
	.globl	DECIMAL32_Pmax
	.p2align	2
DECIMAL32_Pmax:
	.word	0                               // 0x0
	.size	DECIMAL32_Pmax, 4
	.type	DECIMAL32_Emax,@object          // @DECIMAL32_Emax
	.globl	DECIMAL32_Emax
	.p2align	3
DECIMAL32_Emax:
	.xword	0                               // 0x0
	.size	DECIMAL32_Emax, 8
	.type	DECIMAL32_Emin,@object          // @DECIMAL32_Emin
	.globl	DECIMAL32_Emin
	.p2align	3
DECIMAL32_Emin:
	.xword	0                               // 0x0
	.size	DECIMAL32_Emin, 8
	.type	DEC_INIT_DECIMAL32,@object      // @DEC_INIT_DECIMAL32
	.globl	DEC_INIT_DECIMAL32
	.p2align	2
DEC_INIT_DECIMAL32:
	.word	0                               // 0x0
	.size	DEC_INIT_DECIMAL32, 4
	.type	DECNEG,@object                  // @DECNEG
	.globl	DECNEG
	.p2align	2
DECNEG:
	.word	0                               // 0x0
	.size	DECNEG, 4
	.type	DECSPECIAL,@object              // @DECSPECIAL
	.globl	DECSPECIAL
	.p2align	2
DECSPECIAL:
	.word	0                               // 0x0
	.size	DECSPECIAL, 4
	.type	DECINF,@object                  // @DECINF
	.globl	DECINF
	.p2align	2
DECINF:
	.word	0                               // 0x0
	.size	DECINF, 4
	.type	DECIMAL_Inf,@object             // @DECIMAL_Inf
	.globl	DECIMAL_Inf
	.p2align	2
DECIMAL_Inf:
	.word	0                               // 0x0
	.size	DECIMAL_Inf, 4
	.type	DECNAN,@object                  // @DECNAN
	.globl	DECNAN
	.p2align	2
DECNAN:
	.word	0                               // 0x0
	.size	DECNAN, 4
	.type	DECIMAL_NaN,@object             // @DECIMAL_NaN
	.globl	DECIMAL_NaN
	.p2align	2
DECIMAL_NaN:
	.word	0                               // 0x0
	.size	DECIMAL_NaN, 4
	.type	DECIMAL_sNaN,@object            // @DECIMAL_sNaN
	.globl	DECIMAL_sNaN
	.p2align	2
DECIMAL_sNaN:
	.word	0                               // 0x0
	.size	DECIMAL_sNaN, 4
	.type	DECIMAL32_Bias,@object          // @DECIMAL32_Bias
	.globl	DECIMAL32_Bias
	.p2align	3
DECIMAL32_Bias:
	.xword	0                               // 0x0
	.size	DECIMAL32_Bias, 8
	.type	DEC_Clamped,@object             // @DEC_Clamped
	.globl	DEC_Clamped
	.p2align	2
DEC_Clamped:
	.word	0                               // 0x0
	.size	DEC_Clamped, 4
	.type	DECIMAL32_Ehigh,@object         // @DECIMAL32_Ehigh
	.globl	DECIMAL32_Ehigh
	.p2align	2
DECIMAL32_Ehigh:
	.word	0                               // 0x0
	.size	DECIMAL32_Ehigh, 4
	.type	DECDPUN,@object                 // @DECDPUN
	.globl	DECDPUN
	.p2align	2
DECDPUN:
	.word	0                               // 0x0
	.size	DECDPUN, 4
	.type	BIN2DPD,@object                 // @BIN2DPD
	.globl	BIN2DPD
	.p2align	3
BIN2DPD:
	.xword	0
	.size	BIN2DPD, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym decContextDefault
	.addrsig_sym decNumberPlus
	.addrsig_sym decDigitsToDPD
	.addrsig_sym decNumberIsZero
	.addrsig_sym UBFROMUI
	.addrsig_sym decContextSetStatus
	.addrsig_sym DECIMAL32_Pmax
	.addrsig_sym DECIMAL32_Emax
	.addrsig_sym DECIMAL32_Emin
	.addrsig_sym DEC_INIT_DECIMAL32
	.addrsig_sym DECNEG
	.addrsig_sym DECSPECIAL
	.addrsig_sym DECINF
	.addrsig_sym DECIMAL_Inf
	.addrsig_sym DECNAN
	.addrsig_sym DECIMAL_NaN
	.addrsig_sym DECIMAL_sNaN
	.addrsig_sym DECIMAL32_Bias
	.addrsig_sym DEC_Clamped
	.addrsig_sym DECIMAL32_Ehigh
	.addrsig_sym DECDPUN
	.addrsig_sym BIN2DPD