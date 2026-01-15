	.text
	.globl	decNumberLogB                   // -- Begin function decNumberLogB
	.p2align	2
	.type	decNumberLogB,@function
decNumberLogB:                          // @decNumberLogB
// %bb.0:
	stp	x29, x30, [sp, #-16]!           // 16-byte Folded Spill
	mov	x29, sp
	sub	sp, sp, #64
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	stur	wzr, [x29, #-28]
	ldur	x0, [x29, #-16]
	bl	decNumberIsNaN
	cbz	x0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-16]
	ldur	x3, [x29, #-24]
	mov	x2, xzr
	sub	x4, x29, #28
	bl	decNaNs
	b	.LBB0_12
.LBB0_2:
	ldur	x0, [x29, #-16]
	bl	decNumberIsInfinite
	cbz	x0, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-16]
	bl	decNumberCopyAbs
	b	.LBB0_11
.LBB0_4:
	ldur	x0, [x29, #-16]
	bl	decNumberIsZero
	cbz	x0, .LBB0_6
	b	.LBB0_5
.LBB0_5:
	ldur	x0, [x29, #-8]
	bl	decNumberZero
	adrp	x8, DECNEG
	ldr	w8, [x8, :lo12:DECNEG]
	adrp	x9, DECINF
	ldr	w9, [x9, :lo12:DECINF]
	orr	w8, w8, w9
	ldur	x9, [x29, #-8]
	str	w8, [x9]
	adrp	x8, DEC_Division_by_zero
	ldr	w9, [x8, :lo12:DEC_Division_by_zero]
	ldur	w8, [x29, #-28]
	orr	w8, w8, w9
	stur	w8, [x29, #-28]
	b	.LBB0_10
.LBB0_6:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #16]
	ldur	x9, [x29, #-16]
	ldr	x9, [x9, #8]
	add	x8, x8, x9
	subs	x8, x8, #1
	stur	x8, [x29, #-40]
	ldur	x8, [x29, #-24]
	ldr	w8, [x8]
	subs	w8, w8, #10
	b.lt	.LBB0_8
	b	.LBB0_7
.LBB0_7:
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-40]
	bl	decNumberFromInt32
	b	.LBB0_9
.LBB0_8:
	mov	w0, #10
	bl	D2N
	mov	w8, w0
	mov	w9, w8
	mov	x8, sp
	stur	x8, [x29, #-48]
	mov	x10, #15
	mov	w8, #24
	umaddl	x8, w0, w8, x10
	and	x10, x8, #0xfffffffffffffff0
	mov	x8, sp
	subs	x8, x8, x10
	mov	sp, x8
	stur	x9, [x29, #-56]
	stur	x8, [x29, #-64]
	ldur	x0, [x29, #-64]
	ldur	x1, [x29, #-40]
	bl	decNumberFromInt32
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-64]
	ldur	x2, [x29, #-24]
	bl	decNumberPlus
	ldur	x8, [x29, #-48]
	mov	sp, x8
	b	.LBB0_9
.LBB0_9:
	b	.LBB0_10
.LBB0_10:
	b	.LBB0_11
.LBB0_11:
	b	.LBB0_12
.LBB0_12:
	ldur	w8, [x29, #-28]
	cbz	w8, .LBB0_14
	b	.LBB0_13
.LBB0_13:
	ldur	x0, [x29, #-8]
	ldur	w1, [x29, #-28]
	ldur	x2, [x29, #-24]
	bl	decStatus
	b	.LBB0_14
.LBB0_14:
	ldur	x0, [x29, #-8]
	mov	sp, x29
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	decNumberLogB, .Lfunc_end0-decNumberLogB
                                        // -- End function
	.type	DECNEG,@object                  // @DECNEG
	.bss
	.globl	DECNEG
	.p2align	2
DECNEG:
	.word	0                               // 0x0
	.size	DECNEG, 4
	.type	DECINF,@object                  // @DECINF
	.globl	DECINF
	.p2align	2
DECINF:
	.word	0                               // 0x0
	.size	DECINF, 4
	.type	DEC_Division_by_zero,@object    // @DEC_Division_by_zero
	.globl	DEC_Division_by_zero
	.p2align	2
DEC_Division_by_zero:
	.word	0                               // 0x0
	.size	DEC_Division_by_zero, 4
	.type	DECUNUSED,@object               // @DECUNUSED
	.globl	DECUNUSED
	.p2align	2
DECUNUSED:
	.word	0                               // 0x0
	.size	DECUNUSED, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym decNumberIsNaN
	.addrsig_sym decNaNs
	.addrsig_sym decNumberIsInfinite
	.addrsig_sym decNumberCopyAbs
	.addrsig_sym decNumberIsZero
	.addrsig_sym decNumberZero
	.addrsig_sym decNumberFromInt32
	.addrsig_sym D2N
	.addrsig_sym decNumberPlus
	.addrsig_sym decStatus
	.addrsig_sym DECNEG
	.addrsig_sym DECINF
	.addrsig_sym DEC_Division_by_zero