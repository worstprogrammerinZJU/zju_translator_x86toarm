	.text
	.globl	decNumberNextMinus              // -- Begin function decNumberNextMinus
	.p2align	2
	.type	decNumberNextMinus,@function
decNumberNextMinus:                     // @decNumberNextMinus
// %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             // 16-byte Folded Spill
	add	x29, sp, #80
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	stur	x2, [x29, #-32]
	ldur	x8, [x29, #-32]
	ldr	w8, [x8]
	str	w8, [sp, #20]
	str	wzr, [sp, #16]
	ldur	x8, [x29, #-24]
	ldr	w8, [x8]
	adrp	x9, DECINF
	ldr	w10, [x9, :lo12:DECINF]
	adrp	x11, DECNEG
	ldr	w11, [x11, :lo12:DECNEG]
	orr	w10, w10, w11
	and	w8, w8, w10
	ldr	w9, [x9, :lo12:DECINF]
	subs	w8, w8, w9
	b.ne	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-32]
	bl	decSetMaxValue
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	.LBB0_5
.LBB0_2:
	add	x0, sp, #24
	str	x0, [sp, #8]                    // 8-byte Folded Spill
	bl	decNumberZero
	ldr	x2, [sp, #8]                    // 8-byte Folded Reload
	ldr	x9, [sp, #32]
	mov	w8, #1
	str	w8, [x9]
	adrp	x8, DEC_MIN_EMIN
	ldr	x8, [x8, :lo12:DEC_MIN_EMIN]
	subs	x8, x8, #1
	str	x8, [sp, #40]
	adrp	x8, DEC_ROUND_FLOOR
	ldr	w8, [x8, :lo12:DEC_ROUND_FLOOR]
	add	x3, sp, #20
	str	w8, [sp, #20]
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-24]
	adrp	x8, DECNEG
	ldr	w4, [x8, :lo12:DECNEG]
	add	x5, sp, #16
	bl	decAddOp
	adrp	x8, DEC_Invalid_operation
	ldr	w8, [x8, :lo12:DEC_Invalid_operation]
	adrp	x9, DEC_sNaN
	ldr	w9, [x9, :lo12:DEC_sNaN]
	orr	w9, w8, w9
	ldr	w8, [sp, #16]
	and	w8, w8, w9
	str	w8, [sp, #16]
	ldr	w8, [sp, #16]
	cbz	w8, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldur	x0, [x29, #-16]
	ldr	w1, [sp, #16]
	ldur	x2, [x29, #-32]
	bl	decStatus
	b	.LBB0_4
.LBB0_4:
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	.LBB0_5
.LBB0_5:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #80]             // 16-byte Folded Reload
	add	sp, sp, #96
	ret
.Lfunc_end0:
	.size	decNumberNextMinus, .Lfunc_end0-decNumberNextMinus
                                        // -- End function
	.type	DECINF,@object                  // @DECINF
	.bss
	.globl	DECINF
	.p2align	2
DECINF:
	.word	0                               // 0x0
	.size	DECINF, 4
	.type	DECNEG,@object                  // @DECNEG
	.globl	DECNEG
	.p2align	2
DECNEG:
	.word	0                               // 0x0
	.size	DECNEG, 4
	.type	DEC_MIN_EMIN,@object            // @DEC_MIN_EMIN
	.globl	DEC_MIN_EMIN
	.p2align	3
DEC_MIN_EMIN:
	.xword	0                               // 0x0
	.size	DEC_MIN_EMIN, 8
	.type	DEC_ROUND_FLOOR,@object         // @DEC_ROUND_FLOOR
	.globl	DEC_ROUND_FLOOR
	.p2align	2
DEC_ROUND_FLOOR:
	.word	0                               // 0x0
	.size	DEC_ROUND_FLOOR, 4
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
	.type	DECUNUSED,@object               // @DECUNUSED
	.globl	DECUNUSED
	.p2align	2
DECUNUSED:
	.word	0                               // 0x0
	.size	DECUNUSED, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym decSetMaxValue
	.addrsig_sym decNumberZero
	.addrsig_sym decAddOp
	.addrsig_sym decStatus
	.addrsig_sym DECINF
	.addrsig_sym DECNEG
	.addrsig_sym DEC_MIN_EMIN
	.addrsig_sym DEC_ROUND_FLOOR
	.addrsig_sym DEC_Invalid_operation
	.addrsig_sym DEC_sNaN