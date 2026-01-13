	.text
	.globl	decFloatRotate                  // -- Begin function decFloatRotate
	.p2align	2
	.type	decFloatRotate,@function
decFloatRotate:                         // @decFloatRotate
// %bb.0:
	stp	x29, x30, [sp, #-16]!           // 16-byte Folded Spill
	mov	x29, sp
	sub	sp, sp, #144
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	stur	x2, [x29, #-32]
	stur	x3, [x29, #-40]
	adrp	x8, DECPMAX
	ldr	w8, [x8, :lo12:DECPMAX]
	adrp	x9, PHALF
	ldr	w9, [x9, :lo12:PHALF]
	add	w8, w8, w9
                                        // kill: def $x8 killed $w8
	mov	x9, sp
	stur	x9, [x29, #-56]
	lsl	x9, x8, #2
	add	x9, x9, #15
	and	x10, x9, #0xfffffffffffffff0
	mov	x9, sp
	subs	x9, x9, x10
	mov	sp, x9
	stur	x9, [x29, #-120]                // 8-byte Folded Spill
	stur	x8, [x29, #-64]
	ldur	x0, [x29, #-24]
	bl	DFISNAN
	cbnz	x0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	x0, [x29, #-32]
	bl	DFISNAN
	cbz	x0, .LBB0_3
	b	.LBB0_2
.LBB0_2:
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-24]
	ldur	x2, [x29, #-32]
	ldur	x3, [x29, #-40]
	bl	decNaNs
	stur	x0, [x29, #-8]
	mov	w8, #1
	stur	w8, [x29, #-108]
	b	.LBB0_27
.LBB0_3:
	ldur	x0, [x29, #-32]
	bl	DFISINT
	cbnz	w0, .LBB0_5
	b	.LBB0_4
.LBB0_4:
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-40]
	bl	decInvalid
	stur	x0, [x29, #-8]
	mov	w8, #1
	stur	w8, [x29, #-108]
	b	.LBB0_27
.LBB0_5:
	ldur	x0, [x29, #-32]
	bl	decFloatDigits
	stur	w0, [x29, #-68]
	ldur	w8, [x29, #-68]
	subs	w8, w8, #2
	b.le	.LBB0_7
	b	.LBB0_6
.LBB0_6:
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-40]
	bl	decInvalid
	stur	x0, [x29, #-8]
	mov	w8, #1
	stur	w8, [x29, #-108]
	b	.LBB0_27
.LBB0_7:
	adrp	x8, DPD2BIN
	ldr	x8, [x8, :lo12:DPD2BIN]
	stur	x8, [x29, #-128]                // 8-byte Folded Spill
	ldur	x0, [x29, #-32]
	adrp	x8, DECWORDS
	ldr	x8, [x8, :lo12:DECWORDS]
	subs	x1, x8, #1
	bl	DFWORD
	ldur	x8, [x29, #-128]                // 8-byte Folded Reload
	and	w9, w0, #0x3ff
	ldr	w8, [x8, w9, sxtw #2]
	stur	w8, [x29, #-44]
	ldur	w8, [x29, #-44]
	adrp	x9, DECPMAX
	ldr	w9, [x9, :lo12:DECPMAX]
	subs	w8, w8, w9
	b.le	.LBB0_9
	b	.LBB0_8
.LBB0_8:
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-40]
	bl	decInvalid
	stur	x0, [x29, #-8]
	mov	w8, #1
	stur	w8, [x29, #-108]
	b	.LBB0_27
.LBB0_9:
	ldur	x0, [x29, #-24]
	bl	DFISINF
	cbz	x0, .LBB0_11
	b	.LBB0_10
.LBB0_10:
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-24]
	bl	decInfinity
	stur	x0, [x29, #-8]
	mov	w8, #1
	stur	w8, [x29, #-108]
	b	.LBB0_27
.LBB0_11:
	ldur	w8, [x29, #-44]
	cbz	w8, .LBB0_13
	b	.LBB0_12
.LBB0_12:
	ldur	w8, [x29, #-44]
	adrp	x9, DECPMAX
	ldr	w9, [x9, :lo12:DECPMAX]
	subs	w8, w8, w9
	b.ne	.LBB0_14
	b	.LBB0_13
.LBB0_13:
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-24]
	bl	decCanonical
	stur	x0, [x29, #-8]
	mov	w8, #1
	stur	w8, [x29, #-108]
	b	.LBB0_27
.LBB0_14:
	ldur	x0, [x29, #-32]
	bl	DFISSIGNED
	cbz	x0, .LBB0_16
	b	.LBB0_15
.LBB0_15:
	ldur	w9, [x29, #-44]
	mov	w8, wzr
	subs	w8, w8, w9
	stur	w8, [x29, #-44]
	b	.LBB0_16
.LBB0_16:
	ldur	w0, [x29, #-44]
	bl	abs
	adrp	x8, PHALF
	ldr	w8, [x8, :lo12:PHALF]
	subs	w8, w0, w8
	b.le	.LBB0_21
	b	.LBB0_17
.LBB0_17:
	ldur	w8, [x29, #-44]
	subs	w8, w8, #0
	b.ge	.LBB0_19
	b	.LBB0_18
.LBB0_18:
	adrp	x8, DECPMAX
	ldr	w8, [x8, :lo12:DECPMAX]
	ldur	w9, [x29, #-44]
	add	w8, w8, w9
	stur	w8, [x29, #-44]
	b	.LBB0_20
.LBB0_19:
	ldur	w8, [x29, #-44]
	adrp	x9, DECPMAX
	ldr	w9, [x9, :lo12:DECPMAX]
	subs	w8, w8, w9
	stur	w8, [x29, #-44]
	b	.LBB0_20
.LBB0_20:
	b	.LBB0_21
.LBB0_21:
	ldur	x8, [x29, #-120]                // 8-byte Folded Reload
	stur	x8, [x29, #-104]
	ldur	w8, [x29, #-44]
	subs	w8, w8, #0
	b.ge	.LBB0_23
	b	.LBB0_22
.LBB0_22:
	adrp	x8, PHALF
	ldrsw	x9, [x8, :lo12:PHALF]
	ldur	x8, [x29, #-104]
	add	x8, x8, x9, lsl #2
	stur	x8, [x29, #-104]
	b	.LBB0_23
.LBB0_23:
	ldur	x0, [x29, #-24]
	ldur	x1, [x29, #-104]
	bl	GETCOEFF
	ldur	w8, [x29, #-44]
	subs	w8, w8, #0
	b.ge	.LBB0_25
	b	.LBB0_24
.LBB0_24:
	ldur	x0, [x29, #-120]                // 8-byte Folded Reload
	adrp	x8, DECPMAX
	ldrsw	x8, [x8, :lo12:DECPMAX]
	add	x1, x0, x8, lsl #2
	adrp	x8, PHALF
	stur	x8, [x29, #-136]                // 8-byte Folded Spill
	ldr	w2, [x8, :lo12:PHALF]
	bl	memcpy
	ldur	x9, [x29, #-136]                // 8-byte Folded Reload
	ldur	x8, [x29, #-120]                // 8-byte Folded Reload
	ldrsw	x9, [x9, :lo12:PHALF]
	add	x8, x8, x9, lsl #2
	ldursw	x9, [x29, #-44]
	add	x8, x8, x9, lsl #2
	stur	x8, [x29, #-88]
	b	.LBB0_26
.LBB0_25:
	ldur	x1, [x29, #-120]                // 8-byte Folded Reload
	adrp	x8, DECPMAX
	ldrsw	x8, [x8, :lo12:DECPMAX]
	add	x0, x1, x8, lsl #2
	adrp	x8, PHALF
	ldr	w2, [x8, :lo12:PHALF]
	bl	memcpy
	ldur	x8, [x29, #-120]                // 8-byte Folded Reload
	ldursw	x9, [x29, #-44]
	add	x8, x8, x9, lsl #2
	stur	x8, [x29, #-88]
	b	.LBB0_26
.LBB0_26:
	sub	x8, x29, #96
	stur	x8, [x29, #-144]                // 8-byte Folded Spill
	ldur	x8, [x29, #-88]
	adrp	x9, DECPMAX
	ldrsw	x9, [x9, :lo12:DECPMAX]
	add	x8, x8, x9, lsl #2
	subs	x8, x8, #4
	stur	x8, [x29, #-80]
	ldur	x0, [x29, #-24]
	mov	x1, xzr
	bl	DFWORD
	adrp	x8, DECFLOAT_Sign
	ldr	w8, [x8, :lo12:DECFLOAT_Sign]
	and	w8, w0, w8
	stur	w8, [x29, #-96]
	ldur	x0, [x29, #-24]
	bl	GETEXPUN
	ldur	x1, [x29, #-144]                // 8-byte Folded Reload
	stur	w0, [x29, #-92]
	ldur	x8, [x29, #-40]
	ldr	w8, [x8]
	stur	w8, [x29, #-72]
	ldur	x0, [x29, #-16]
	ldur	x2, [x29, #-40]
	bl	decFinalize
	ldur	w8, [x29, #-72]
	ldur	x9, [x29, #-40]
	str	w8, [x9]
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	mov	w8, #1
	stur	w8, [x29, #-108]
	b	.LBB0_27
.LBB0_27:
	ldur	x8, [x29, #-56]
	mov	sp, x8
	ldur	x0, [x29, #-8]
	mov	sp, x29
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	decFloatRotate, .Lfunc_end0-decFloatRotate
                                        // -- End function
	.type	DECPMAX,@object                 // @DECPMAX
	.bss
	.globl	DECPMAX
	.p2align	2
DECPMAX:
	.word	0                               // 0x0
	.size	DECPMAX, 4
	.type	PHALF,@object                   // @PHALF
	.globl	PHALF
	.p2align	2
PHALF:
	.word	0                               // 0x0
	.size	PHALF, 4
	.type	DPD2BIN,@object                 // @DPD2BIN
	.globl	DPD2BIN
	.p2align	3
DPD2BIN:
	.xword	0
	.size	DPD2BIN, 8
	.type	DECWORDS,@object                // @DECWORDS
	.globl	DECWORDS
	.p2align	3
DECWORDS:
	.xword	0                               // 0x0
	.size	DECWORDS, 8
	.type	DECFLOAT_Sign,@object           // @DECFLOAT_Sign
	.globl	DECFLOAT_Sign
	.p2align	2
DECFLOAT_Sign:
	.word	0                               // 0x0
	.size	DECFLOAT_Sign, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym DFISNAN
	.addrsig_sym decNaNs
	.addrsig_sym DFISINT
	.addrsig_sym decInvalid
	.addrsig_sym decFloatDigits
	.addrsig_sym DFWORD
	.addrsig_sym DFISINF
	.addrsig_sym decInfinity
	.addrsig_sym decCanonical
	.addrsig_sym DFISSIGNED
	.addrsig_sym abs
	.addrsig_sym GETCOEFF
	.addrsig_sym memcpy
	.addrsig_sym GETEXPUN
	.addrsig_sym decFinalize
	.addrsig_sym DECPMAX
	.addrsig_sym PHALF
	.addrsig_sym DPD2BIN
	.addrsig_sym DECWORDS
	.addrsig_sym DECFLOAT_Sign