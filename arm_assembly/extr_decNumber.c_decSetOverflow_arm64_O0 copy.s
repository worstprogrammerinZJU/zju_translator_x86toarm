	.text
	.p2align	2                               // -- Begin function decSetOverflow
	.type	decSetOverflow,@function
decSetOverflow:                         // @decSetOverflow
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	str	x2, [sp, #24]
	str	wzr, [sp, #20]
	ldur	x8, [x29, #-8]
	ldr	w8, [x8]
	adrp	x9, DECNEG
	ldr	w9, [x9, :lo12:DECNEG]
	and	w8, w8, w9
	str	w8, [sp, #16]
	ldur	x0, [x29, #-8]
	bl	ISZERO
	cbz	x0, .LBB0_6
	b	.LBB0_1
.LBB0_1:
	ldur	x8, [x29, #-16]
	ldr	w8, [x8]
	str	w8, [sp, #12]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #16]
	cbz	x8, .LBB0_3
	b	.LBB0_2
.LBB0_2:
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #4]
	subs	w9, w8, #1
	ldr	w8, [sp, #12]
	subs	w8, w8, w9
	str	w8, [sp, #12]
	b	.LBB0_3
.LBB0_3:
	ldur	x8, [x29, #-8]
	ldr	w8, [x8, #4]
	ldr	w9, [sp, #12]
	subs	w8, w8, w9
	b.le	.LBB0_5
	b	.LBB0_4
.LBB0_4:
	ldr	w8, [sp, #12]
	ldur	x9, [x29, #-8]
	str	w8, [x9, #4]
	adrp	x8, DEC_Clamped
	ldr	w10, [x8, :lo12:DEC_Clamped]
	ldr	x9, [sp, #24]
	ldr	w8, [x9]
	orr	w8, w8, w10
	str	w8, [x9]
	b	.LBB0_5
.LBB0_5:
	b	.LBB0_21
.LBB0_6:
	ldur	x0, [x29, #-8]
	bl	decNumberZero
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #8]
	subs	w8, w8, #128
                                        // kill: def $x8 killed $w8
	str	x8, [sp]                        // 8-byte Folded Spill
	subs	x8, x8, #3
	b.hi	.LBB0_16
// %bb.7:
	ldr	x11, [sp]                       // 8-byte Folded Reload
	adrp	x10, .LJTI0_0
	add	x10, x10, :lo12:.LJTI0_0
.Ltmp0:
	adr	x8, .Ltmp0
	ldrsw	x9, [x10, x11, lsl #2]
	add	x8, x8, x9
	br	x8
.LBB0_8:
	mov	w8, #1
	str	w8, [sp, #20]
	b	.LBB0_17
.LBB0_9:
	mov	w8, #1
	str	w8, [sp, #20]
	b	.LBB0_17
.LBB0_10:
	ldr	w8, [sp, #16]
	cbz	w8, .LBB0_12
	b	.LBB0_11
.LBB0_11:
	mov	w8, #1
	str	w8, [sp, #20]
	b	.LBB0_12
.LBB0_12:
	b	.LBB0_17
.LBB0_13:
	ldr	w8, [sp, #16]
	cbnz	w8, .LBB0_15
	b	.LBB0_14
.LBB0_14:
	mov	w8, #1
	str	w8, [sp, #20]
	b	.LBB0_15
.LBB0_15:
	b	.LBB0_17
.LBB0_16:
	b	.LBB0_17
.LBB0_17:
	ldr	w8, [sp, #20]
	cbz	w8, .LBB0_19
	b	.LBB0_18
.LBB0_18:
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-16]
	bl	decSetMaxValue
	ldr	w8, [sp, #16]
	ldur	x9, [x29, #-8]
	str	w8, [x9]
	b	.LBB0_20
.LBB0_19:
	ldr	w8, [sp, #16]
	adrp	x9, DECINF
	ldr	w9, [x9, :lo12:DECINF]
	orr	w8, w8, w9
	ldur	x9, [x29, #-8]
	str	w8, [x9]
	b	.LBB0_20
.LBB0_20:
	adrp	x8, DEC_Overflow
	ldr	w8, [x8, :lo12:DEC_Overflow]
	adrp	x9, DEC_Inexact
	ldr	w9, [x9, :lo12:DEC_Inexact]
	orr	w8, w8, w9
	adrp	x9, DEC_Rounded
	ldr	w9, [x9, :lo12:DEC_Rounded]
	orr	w10, w8, w9
	ldr	x9, [sp, #24]
	ldr	w8, [x9]
	orr	w8, w8, w10
	str	w8, [x9]
	b	.LBB0_21
.LBB0_21:
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	decSetOverflow, .Lfunc_end0-decSetOverflow
	.section	.rodata,"a",@progbits
	.p2align	2
.LJTI0_0:
	.word	.LBB0_13-.Ltmp0
	.word	.LBB0_8-.Ltmp0
	.word	.LBB0_10-.Ltmp0
	.word	.LBB0_9-.Ltmp0
                                        // -- End function
	.type	DECNEG,@object                  // @DECNEG
	.bss
	.globl	DECNEG
	.p2align	2
DECNEG:
	.word	0                               // 0x0
	.size	DECNEG, 4
	.type	DEC_Clamped,@object             // @DEC_Clamped
	.globl	DEC_Clamped
	.p2align	2
DEC_Clamped:
	.word	0                               // 0x0
	.size	DEC_Clamped, 4
	.type	DECINF,@object                  // @DECINF
	.globl	DECINF
	.p2align	2
DECINF:
	.word	0                               // 0x0
	.size	DECINF, 4
	.type	DEC_Overflow,@object            // @DEC_Overflow
	.globl	DEC_Overflow
	.p2align	2
DEC_Overflow:
	.word	0                               // 0x0
	.size	DEC_Overflow, 4
	.type	DEC_Inexact,@object             // @DEC_Inexact
	.globl	DEC_Inexact
	.p2align	2
DEC_Inexact:
	.word	0                               // 0x0
	.size	DEC_Inexact, 4
	.type	DEC_Rounded,@object             // @DEC_Rounded
	.globl	DEC_Rounded
	.p2align	2
DEC_Rounded:
	.word	0                               // 0x0
	.size	DEC_Rounded, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym decSetOverflow
	.addrsig_sym ISZERO
	.addrsig_sym decNumberZero
	.addrsig_sym decSetMaxValue
	.addrsig_sym DECNEG
	.addrsig_sym DEC_Clamped
	.addrsig_sym DECINF
	.addrsig_sym DEC_Overflow
	.addrsig_sym DEC_Inexact
	.addrsig_sym DEC_Rounded