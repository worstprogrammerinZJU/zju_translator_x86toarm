	.text
	.globl	decNumberCompareTotalMag        // -- Begin function decNumberCompareTotalMag
	.p2align	2
	.type	decNumberCompareTotalMag,@function
decNumberCompareTotalMag:               // @decNumberCompareTotalMag
// %bb.0:
	stp	x29, x30, [sp, #-16]!           // 16-byte Folded Spill
	mov	x29, sp
	sub	sp, sp, #144
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	stur	x3, [x29, #-32]
	stur	wzr, [x29, #-36]
	adrp	x8, DECBUFFER
	stur	x8, [x29, #-136]                // 8-byte Folded Spill
	ldr	w8, [x8, :lo12:DECBUFFER]
	add	w0, w8, #1
	bl	D2N
	ldur	x8, [x29, #-136]                // 8-byte Folded Reload
	mov	w9, w0
                                        // kill: def $x9 killed $w9
	stur	x9, [x29, #-128]                // 8-byte Folded Spill
	mov	x10, sp
	stur	x10, [x29, #-48]
	lsl	x10, x9, #3
	add	x10, x10, #15
	and	x11, x10, #0xfffffffffffffff0
	mov	x10, sp
	subs	x0, x10, x11
	stur	x0, [x29, #-120]                // 8-byte Folded Spill
	mov	sp, x0
	stur	x9, [x29, #-56]
                                        // kill: def $x9 killed $xzr
	stur	xzr, [x29, #-64]
	ldr	w8, [x8, :lo12:DECBUFFER]
	add	w0, w8, #1
	bl	D2N
	mov	w8, w0
                                        // kill: def $x8 killed $w8
	stur	x8, [x29, #-112]                // 8-byte Folded Spill
	lsl	x9, x8, #3
	add	x9, x9, #15
	and	x10, x9, #0xfffffffffffffff0
	mov	x9, sp
	subs	x0, x9, x10
	stur	x0, [x29, #-104]                // 8-byte Folded Spill
	mov	sp, x0
	stur	x8, [x29, #-72]
	stur	xzr, [x29, #-80]
	b	.LBB0_1
.LBB0_1:
	ldur	x0, [x29, #-16]
	bl	decNumberIsNegative
	cbz	x0, .LBB0_7
	b	.LBB0_2
.LBB0_2:
	ldur	x8, [x29, #-120]                // 8-byte Folded Reload
	stur	x8, [x29, #-88]
	ldur	x8, [x29, #-16]
	ldr	w0, [x8, #4]
	bl	D2U
	ldur	x10, [x29, #-128]               // 8-byte Folded Reload
	subs	w9, w0, #1
                                        // implicit-def: $x8
	mov	w8, w9
	sxtw	x8, w8
	lsl	x8, x8, #2
	mov	x9, #8
	add	x8, x8, #8
                                        // kill: def $w8 killed $w8 killed $x8
	stur	w8, [x29, #-40]
	ldursw	x8, [x29, #-40]
	mul	x9, x9, x10
	subs	x8, x8, x9
	b.ls	.LBB0_6
	b	.LBB0_3
.LBB0_3:
	ldur	w0, [x29, #-40]
	bl	malloc
	stur	x0, [x29, #-64]
	ldur	x8, [x29, #-64]
	cbnz	x8, .LBB0_5
	b	.LBB0_4
.LBB0_4:
	adrp	x8, DEC_Insufficient_storage
	ldr	w9, [x8, :lo12:DEC_Insufficient_storage]
	ldur	w8, [x29, #-36]
	orr	w8, w8, w9
	stur	w8, [x29, #-36]
	b	.LBB0_15
.LBB0_5:
	ldur	x8, [x29, #-64]
	stur	x8, [x29, #-88]
	b	.LBB0_6
.LBB0_6:
	ldur	x0, [x29, #-88]
	ldur	x1, [x29, #-16]
	bl	decNumberCopy
	adrp	x8, DECNEG
	ldr	w10, [x8, :lo12:DECNEG]
	ldur	x9, [x29, #-88]
	ldr	w8, [x9]
	bic	w8, w8, w10
	str	w8, [x9]
	ldur	x8, [x29, #-88]
	stur	x8, [x29, #-16]
	b	.LBB0_7
.LBB0_7:
	ldur	x0, [x29, #-24]
	bl	decNumberIsNegative
	cbz	x0, .LBB0_13
	b	.LBB0_8
.LBB0_8:
	ldur	x8, [x29, #-104]                // 8-byte Folded Reload
	stur	x8, [x29, #-96]
	ldur	x8, [x29, #-24]
	ldr	w0, [x8, #4]
	bl	D2U
	ldur	x10, [x29, #-112]               // 8-byte Folded Reload
	subs	w9, w0, #1
                                        // implicit-def: $x8
	mov	w8, w9
	sxtw	x8, w8
	lsl	x8, x8, #2
	mov	x9, #8
	add	x8, x8, #8
                                        // kill: def $w8 killed $w8 killed $x8
	stur	w8, [x29, #-40]
	ldursw	x8, [x29, #-40]
	mul	x9, x9, x10
	subs	x8, x8, x9
	b.ls	.LBB0_12
	b	.LBB0_9
.LBB0_9:
	ldur	w0, [x29, #-40]
	bl	malloc
	stur	x0, [x29, #-80]
	ldur	x8, [x29, #-80]
	cbnz	x8, .LBB0_11
	b	.LBB0_10
.LBB0_10:
	adrp	x8, DEC_Insufficient_storage
	ldr	w9, [x8, :lo12:DEC_Insufficient_storage]
	ldur	w8, [x29, #-36]
	orr	w8, w8, w9
	stur	w8, [x29, #-36]
	b	.LBB0_15
.LBB0_11:
	ldur	x8, [x29, #-80]
	stur	x8, [x29, #-96]
	b	.LBB0_12
.LBB0_12:
	ldur	x0, [x29, #-96]
	ldur	x1, [x29, #-24]
	bl	decNumberCopy
	adrp	x8, DECNEG
	ldr	w10, [x8, :lo12:DECNEG]
	ldur	x9, [x29, #-96]
	ldr	w8, [x9]
	bic	w8, w8, w10
	str	w8, [x9]
	ldur	x8, [x29, #-96]
	stur	x8, [x29, #-24]
	b	.LBB0_13
.LBB0_13:
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-16]
	ldur	x2, [x29, #-24]
	ldur	x3, [x29, #-32]
	adrp	x8, COMPTOTAL
	ldr	w4, [x8, :lo12:COMPTOTAL]
	sub	x5, x29, #36
	bl	decCompareOp
	b	.LBB0_14
.LBB0_14:
	b	.LBB0_15
.LBB0_15:
	ldur	x8, [x29, #-64]
	cbz	x8, .LBB0_17
	b	.LBB0_16
.LBB0_16:
	ldur	x0, [x29, #-64]
	bl	free
	b	.LBB0_17
.LBB0_17:
	ldur	x8, [x29, #-80]
	cbz	x8, .LBB0_19
	b	.LBB0_18
.LBB0_18:
	ldur	x0, [x29, #-80]
	bl	free
	b	.LBB0_19
.LBB0_19:
	ldur	w8, [x29, #-36]
	cbz	w8, .LBB0_21
	b	.LBB0_20
.LBB0_20:
	ldur	x0, [x29, #-8]
	ldur	w1, [x29, #-36]
	ldur	x2, [x29, #-32]
	bl	decStatus
	b	.LBB0_21
.LBB0_21:
	ldur	x0, [x29, #-8]
	ldur	x8, [x29, #-48]
	mov	sp, x8
	mov	sp, x29
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	decNumberCompareTotalMag, .Lfunc_end0-decNumberCompareTotalMag
                                        // -- End function
	.type	DECBUFFER,@object               // @DECBUFFER
	.bss
	.globl	DECBUFFER
	.p2align	2
DECBUFFER:
	.word	0                               // 0x0
	.size	DECBUFFER, 4
	.type	DEC_Insufficient_storage,@object // @DEC_Insufficient_storage
	.globl	DEC_Insufficient_storage
	.p2align	2
DEC_Insufficient_storage:
	.word	0                               // 0x0
	.size	DEC_Insufficient_storage, 4
	.type	DECNEG,@object                  // @DECNEG
	.globl	DECNEG
	.p2align	2
DECNEG:
	.word	0                               // 0x0
	.size	DECNEG, 4
	.type	COMPTOTAL,@object               // @COMPTOTAL
	.globl	COMPTOTAL
	.p2align	2
COMPTOTAL:
	.word	0                               // 0x0
	.size	COMPTOTAL, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym D2N
	.addrsig_sym decNumberIsNegative
	.addrsig_sym D2U
	.addrsig_sym malloc
	.addrsig_sym decNumberCopy
	.addrsig_sym decCompareOp
	.addrsig_sym free
	.addrsig_sym decStatus
	.addrsig_sym DECBUFFER
	.addrsig_sym DEC_Insufficient_storage
	.addrsig_sym DECNEG
	.addrsig_sym COMPTOTAL