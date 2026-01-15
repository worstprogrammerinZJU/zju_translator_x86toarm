	.text
	.globl	decNumberFMA                    // -- Begin function decNumberFMA
	.p2align	2
	.type	decNumberFMA,@function
decNumberFMA:                           // @decNumberFMA
// %bb.0:
	stp	x29, x30, [sp, #-16]!           // 16-byte Folded Spill
	mov	x29, sp
	sub	sp, sp, #160
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	stur	x3, [x29, #-32]
	stur	x4, [x29, #-40]
	stur	wzr, [x29, #-44]
	adrp	x8, DECBUFFER
	ldr	w8, [x8, :lo12:DECBUFFER]
	lsl	w8, w8, #1
	add	w0, w8, #1
	bl	D2N
	mov	w8, w0
                                        // kill: def $x8 killed $w8
	stur	x8, [x29, #-152]                // 8-byte Folded Spill
	mov	x9, sp
	stur	x9, [x29, #-96]
	lsl	x9, x8, #4
	add	x9, x9, #15
	and	x10, x9, #0xfffffffffffffff0
	mov	x9, sp
	subs	x0, x9, x10
	stur	x0, [x29, #-144]                // 8-byte Folded Spill
	mov	sp, x0
	stur	x8, [x29, #-104]
                                        // kill: def $x8 killed $xzr
	stur	xzr, [x29, #-112]
	b	.LBB0_1
.LBB0_1:
	ldur	x0, [x29, #-16]
	bl	decNumberIsSpecial
	cbnz	w0, .LBB0_3
	b	.LBB0_2
.LBB0_2:
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-40]
	sub	x2, x29, #44
	bl	decCheckMath
	cbnz	x0, .LBB0_7
	b	.LBB0_3
.LBB0_3:
	ldur	x0, [x29, #-24]
	bl	decNumberIsSpecial
	cbnz	w0, .LBB0_5
	b	.LBB0_4
.LBB0_4:
	ldur	x0, [x29, #-24]
	ldur	x1, [x29, #-40]
	sub	x2, x29, #44
	bl	decCheckMath
	cbnz	x0, .LBB0_7
	b	.LBB0_5
.LBB0_5:
	ldur	x0, [x29, #-32]
	bl	decNumberIsSpecial
	cbnz	w0, .LBB0_8
	b	.LBB0_6
.LBB0_6:
	ldur	x0, [x29, #-32]
	ldur	x1, [x29, #-40]
	sub	x2, x29, #44
	bl	decCheckMath
	cbz	x0, .LBB0_8
	b	.LBB0_7
.LBB0_7:
	b	.LBB0_18
.LBB0_8:
	ldur	x8, [x29, #-144]                // 8-byte Folded Reload
	ldur	x9, [x29, #-40]
	ldr	q0, [x9]
	stur	q0, [x29, #-80]
	ldr	x9, [x9, #16]
	stur	x9, [x29, #-64]
	ldur	x9, [x29, #-16]
	ldr	x9, [x9, #8]
	ldur	x10, [x29, #-24]
	ldr	x10, [x10, #8]
	add	x9, x9, x10
	stur	x9, [x29, #-80]
	adrp	x9, DEC_MAX_EMAX
	ldr	w9, [x9, :lo12:DEC_MAX_EMAX]
	stur	w9, [x29, #-68]
	adrp	x9, DEC_MIN_EMIN
	ldr	w9, [x9, :lo12:DEC_MIN_EMIN]
	stur	w9, [x29, #-72]
	stur	x8, [x29, #-120]
	ldur	x0, [x29, #-80]
	bl	D2U
	ldur	x10, [x29, #-152]               // 8-byte Folded Reload
	subs	w9, w0, #1
                                        // implicit-def: $x8
	mov	w8, w9
	sxtw	x8, w8
	lsl	x8, x8, #2
	mov	x9, #16
	add	x8, x8, #16
                                        // kill: def $w8 killed $w8 killed $x8
	stur	w8, [x29, #-84]
	ldursw	x8, [x29, #-84]
	mul	x9, x9, x10
	subs	x8, x8, x9
	b.ls	.LBB0_12
	b	.LBB0_9
.LBB0_9:
	ldur	w0, [x29, #-84]
	bl	malloc
	stur	x0, [x29, #-112]
	ldur	x8, [x29, #-112]
	cbnz	x8, .LBB0_11
	b	.LBB0_10
.LBB0_10:
	adrp	x8, DEC_Insufficient_storage
	ldr	w9, [x8, :lo12:DEC_Insufficient_storage]
	ldur	w8, [x29, #-44]
	orr	w8, w8, w9
	stur	w8, [x29, #-44]
	b	.LBB0_18
.LBB0_11:
	ldur	x8, [x29, #-112]
	stur	x8, [x29, #-120]
	b	.LBB0_12
.LBB0_12:
	ldur	x0, [x29, #-120]
	ldur	x1, [x29, #-16]
	ldur	x2, [x29, #-24]
	sub	x3, x29, #80
	sub	x4, x29, #44
	bl	decMultiplyOp
	ldur	w8, [x29, #-44]
	adrp	x9, DEC_Invalid_operation
	ldr	w9, [x9, :lo12:DEC_Invalid_operation]
	and	w8, w8, w9
	cbz	w8, .LBB0_16
	b	.LBB0_13
.LBB0_13:
	ldur	w8, [x29, #-44]
	adrp	x9, DEC_sNaN
	ldr	w9, [x9, :lo12:DEC_sNaN]
	and	w8, w8, w9
	cbnz	w8, .LBB0_15
	b	.LBB0_14
.LBB0_14:
	ldur	x0, [x29, #-8]
	bl	decNumberZero
	adrp	x8, DECNAN
	ldr	w8, [x8, :lo12:DECNAN]
	ldur	x9, [x29, #-8]
	str	w8, [x9]
	b	.LBB0_18
.LBB0_15:
	sub	x0, x29, #136
	stur	x0, [x29, #-160]                // 8-byte Folded Spill
	bl	decNumberZero
	ldur	x8, [x29, #-160]                // 8-byte Folded Reload
	stur	x8, [x29, #-32]
	b	.LBB0_16
.LBB0_16:
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-120]
	ldur	x2, [x29, #-32]
	ldur	x3, [x29, #-40]
	mov	w4, wzr
	sub	x5, x29, #44
	bl	decAddOp
	b	.LBB0_17
.LBB0_17:
	b	.LBB0_18
.LBB0_18:
	ldur	x8, [x29, #-112]
	cbz	x8, .LBB0_20
	b	.LBB0_19
.LBB0_19:
	ldur	x0, [x29, #-112]
	bl	free
	b	.LBB0_20
.LBB0_20:
	ldur	w8, [x29, #-44]
	cbz	w8, .LBB0_22
	b	.LBB0_21
.LBB0_21:
	ldur	x0, [x29, #-8]
	ldur	w1, [x29, #-44]
	ldur	x2, [x29, #-40]
	bl	decStatus
	b	.LBB0_22
.LBB0_22:
	ldur	x0, [x29, #-8]
	ldur	x8, [x29, #-96]
	mov	sp, x8
	mov	sp, x29
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	decNumberFMA, .Lfunc_end0-decNumberFMA
                                        // -- End function
	.type	DECBUFFER,@object               // @DECBUFFER
	.bss
	.globl	DECBUFFER
	.p2align	2
DECBUFFER:
	.word	0                               // 0x0
	.size	DECBUFFER, 4
	.type	DEC_MAX_EMAX,@object            // @DEC_MAX_EMAX
	.globl	DEC_MAX_EMAX
	.p2align	2
DEC_MAX_EMAX:
	.word	0                               // 0x0
	.size	DEC_MAX_EMAX, 4
	.type	DEC_MIN_EMIN,@object            // @DEC_MIN_EMIN
	.globl	DEC_MIN_EMIN
	.p2align	2
DEC_MIN_EMIN:
	.word	0                               // 0x0
	.size	DEC_MIN_EMIN, 4
	.type	DEC_Insufficient_storage,@object // @DEC_Insufficient_storage
	.globl	DEC_Insufficient_storage
	.p2align	2
DEC_Insufficient_storage:
	.word	0                               // 0x0
	.size	DEC_Insufficient_storage, 4
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
	.type	DECNAN,@object                  // @DECNAN
	.globl	DECNAN
	.p2align	2
DECNAN:
	.word	0                               // 0x0
	.size	DECNAN, 4
	.type	DECUNUSED,@object               // @DECUNUSED
	.globl	DECUNUSED
	.p2align	3
DECUNUSED:
	.xword	0
	.size	DECUNUSED, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym D2N
	.addrsig_sym decNumberIsSpecial
	.addrsig_sym decCheckMath
	.addrsig_sym D2U
	.addrsig_sym malloc
	.addrsig_sym decMultiplyOp
	.addrsig_sym decNumberZero
	.addrsig_sym decAddOp
	.addrsig_sym free
	.addrsig_sym decStatus
	.addrsig_sym DECBUFFER
	.addrsig_sym DEC_MAX_EMAX
	.addrsig_sym DEC_MIN_EMIN
	.addrsig_sym DEC_Insufficient_storage
	.addrsig_sym DEC_Invalid_operation
	.addrsig_sym DEC_sNaN
	.addrsig_sym DECNAN