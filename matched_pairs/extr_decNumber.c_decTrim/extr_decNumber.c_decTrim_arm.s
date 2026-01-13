	.text
	.p2align	2                               // -- Begin function decTrim
	.type	decTrim,@function
decTrim:                                // @decTrim
// %bb.0:
	sub	sp, sp, #112
	stp	x29, x30, [sp, #96]             // 16-byte Folded Spill
	add	x29, sp, #96
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	stur	w2, [x29, #-28]
	stur	w3, [x29, #-32]
	stur	x4, [x29, #-40]
	ldur	x8, [x29, #-40]
	str	wzr, [x8]
	ldur	x8, [x29, #-16]
	ldr	w8, [x8]
	adrp	x9, DECSPECIAL
	ldr	w9, [x9, :lo12:DECSPECIAL]
	and	w8, w8, w9
	cbnz	w8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #8]
	ldr	w8, [x8]
	tbz	w8, #0, .LBB0_3
	b	.LBB0_2
.LBB0_2:
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	.LBB0_29
.LBB0_3:
	ldur	x0, [x29, #-16]
	bl	ISZERO
	cbz	x0, .LBB0_5
	b	.LBB0_4
.LBB0_4:
	ldur	x8, [x29, #-16]
	str	wzr, [x8, #16]
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	.LBB0_29
.LBB0_5:
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #16]
	str	w8, [sp, #48]
	mov	x8, #1
	str	x8, [sp, #40]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #8]
	str	x8, [sp, #32]
	stur	wzr, [x29, #-44]
	b	.LBB0_6
.LBB0_6:                                // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-44]
	ldur	x9, [x29, #-16]
	ldr	w9, [x9, #20]
	subs	w9, w9, #1
	subs	w8, w8, w9
	b.ge	.LBB0_19
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_6 Depth=1
	ldr	x8, [sp, #32]
	ldr	x0, [x8]
	ldr	x1, [sp, #40]
	bl	QUOT10
	str	x0, [sp, #24]
	ldr	x8, [sp, #32]
	ldr	x8, [x8]
	ldr	x9, [sp, #24]
	adrp	x10, powers
	ldr	x10, [x10, :lo12:powers]
	ldr	x11, [sp, #40]
	ldr	x10, [x10, x11, lsl #3]
	mul	x9, x9, x10
	subs	x8, x8, x9
	cbz	x8, .LBB0_9
	b	.LBB0_8
.LBB0_8:
	b	.LBB0_19
.LBB0_9:                                //   in Loop: Header=BB0_6 Depth=1
	ldur	w8, [x29, #-28]
	cbnz	w8, .LBB0_15
	b	.LBB0_10
.LBB0_10:                               //   in Loop: Header=BB0_6 Depth=1
	ldr	w8, [sp, #48]
	subs	w8, w8, #0
	b.gt	.LBB0_14
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_6 Depth=1
	ldr	w8, [sp, #48]
	cbnz	w8, .LBB0_13
	b	.LBB0_12
.LBB0_12:
	b	.LBB0_19
.LBB0_13:                               //   in Loop: Header=BB0_6 Depth=1
	ldr	w8, [sp, #48]
	add	w8, w8, #1
	str	w8, [sp, #48]
	b	.LBB0_14
.LBB0_14:                               //   in Loop: Header=BB0_6 Depth=1
	b	.LBB0_15
.LBB0_15:                               //   in Loop: Header=BB0_6 Depth=1
	ldr	x8, [sp, #40]
	add	x8, x8, #1
	str	x8, [sp, #40]
	ldr	x8, [sp, #40]
	adrp	x9, DECDPUN
	ldr	x9, [x9, :lo12:DECDPUN]
	subs	x8, x8, x9
	b.ls	.LBB0_17
	b	.LBB0_16
.LBB0_16:                               //   in Loop: Header=BB0_6 Depth=1
	ldr	x8, [sp, #32]
	add	x8, x8, #8
	str	x8, [sp, #32]
	mov	x8, #1
	str	x8, [sp, #40]
	b	.LBB0_17
.LBB0_17:                               //   in Loop: Header=BB0_6 Depth=1
	b	.LBB0_18
.LBB0_18:                               //   in Loop: Header=BB0_6 Depth=1
	ldur	w8, [x29, #-44]
	add	w8, w8, #1
	stur	w8, [x29, #-44]
	b	.LBB0_6
.LBB0_19:
	ldur	w8, [x29, #-44]
	cbnz	w8, .LBB0_21
	b	.LBB0_20
.LBB0_20:
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	.LBB0_29
.LBB0_21:
	ldur	x8, [x29, #-24]
	ldr	x8, [x8, #8]
	cbz	x8, .LBB0_28
	b	.LBB0_22
.LBB0_22:
	ldur	w8, [x29, #-32]
	cbnz	w8, .LBB0_28
	b	.LBB0_23
.LBB0_23:
	ldur	x8, [x29, #-24]
	ldr	w8, [x8]
	ldur	x9, [x29, #-24]
	ldr	w9, [x9, #4]
	subs	w8, w8, w9
	add	w8, w8, #1
	ldur	x9, [x29, #-16]
	ldr	w9, [x9, #16]
	subs	w8, w8, w9
	str	w8, [sp, #20]
	ldr	w8, [sp, #20]
	subs	w8, w8, #0
	b.gt	.LBB0_25
	b	.LBB0_24
.LBB0_24:
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	.LBB0_29
.LBB0_25:
	ldur	w8, [x29, #-44]
	ldr	w9, [sp, #20]
	subs	w8, w8, w9
	b.le	.LBB0_27
	b	.LBB0_26
.LBB0_26:
	ldr	w8, [sp, #20]
	stur	w8, [x29, #-44]
	b	.LBB0_27
.LBB0_27:
	b	.LBB0_28
.LBB0_28:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #8]
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	ldur	x8, [x29, #-16]
	ldr	w0, [x8, #20]
	bl	D2U
	mov	w1, w0
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	ldur	w2, [x29, #-44]
	bl	decShiftToLeast
	ldur	w10, [x29, #-44]
	ldur	x9, [x29, #-16]
	ldr	w8, [x9, #16]
	add	w8, w8, w10
	str	w8, [x9, #16]
	ldur	w10, [x29, #-44]
	ldur	x9, [x29, #-16]
	ldr	w8, [x9, #20]
	subs	w8, w8, w10
	str	w8, [x9, #20]
	ldur	w8, [x29, #-44]
	ldur	x9, [x29, #-40]
	str	w8, [x9]
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	.LBB0_29
.LBB0_29:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #96]             // 16-byte Folded Reload
	add	sp, sp, #112
	ret
.Lfunc_end0:
	.size	decTrim, .Lfunc_end0-decTrim
                                        // -- End function
	.type	DECSPECIAL,@object              // @DECSPECIAL
	.bss
	.globl	DECSPECIAL
	.p2align	2
DECSPECIAL:
	.word	0                               // 0x0
	.size	DECSPECIAL, 4
	.type	powers,@object                  // @powers
	.globl	powers
	.p2align	3
powers:
	.xword	0
	.size	powers, 8
	.type	DECDPUN,@object                 // @DECDPUN
	.globl	DECDPUN
	.p2align	3
DECDPUN:
	.xword	0                               // 0x0
	.size	DECDPUN, 8
	.type	DECUNCONT,@object               // @DECUNCONT
	.globl	DECUNCONT
	.p2align	2
DECUNCONT:
	.word	0                               // 0x0
	.size	DECUNCONT, 4
	.type	DECUNUSED,@object               // @DECUNUSED
	.globl	DECUNUSED
	.p2align	2
DECUNUSED:
	.word	0                               // 0x0
	.size	DECUNUSED, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym decTrim
	.addrsig_sym ISZERO
	.addrsig_sym QUOT10
	.addrsig_sym decShiftToLeast
	.addrsig_sym D2U
	.addrsig_sym DECSPECIAL
	.addrsig_sym powers
	.addrsig_sym DECDPUN