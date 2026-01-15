	.text
	.p2align	2                               // -- Begin function decGetInt
	.type	decGetInt,@function
decGetInt:                              // @decGetInt
// %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             // 16-byte Folded Spill
	add	x29, sp, #80
	stur	x0, [x29, #-16]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	ldur	x9, [x29, #-16]
	ldr	x9, [x9, #8]
	add	x8, x8, x9
	str	x8, [sp, #32]
	ldur	x0, [x29, #-16]
	bl	decNumberIsNegative
	str	x0, [sp, #24]
	ldur	x0, [x29, #-16]
	bl	ISZERO
	cbz	x0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	stur	xzr, [x29, #-8]
	b	.LBB0_45
.LBB0_2:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #16]
	stur	x8, [x29, #-32]
	stur	xzr, [x29, #-24]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #8]
	subs	x8, x8, #0
	b.lo	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #8]
	str	x8, [sp, #40]
	b	.LBB0_16
.LBB0_4:
	ldur	x8, [x29, #-16]
	ldr	x9, [x8, #8]
	mov	x8, xzr
	subs	x8, x8, x9
	str	x8, [sp, #16]
	b	.LBB0_5
.LBB0_5:                                // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #16]
	adrp	x9, DECDPUN
	ldr	x9, [x9, :lo12:DECDPUN]
	subs	x8, x8, x9
	b.lo	.LBB0_10
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_5 Depth=1
	ldur	x8, [x29, #-32]
	ldr	x8, [x8]
	cbz	x8, .LBB0_8
	b	.LBB0_7
.LBB0_7:
	adrp	x8, BADINT
	ldr	x8, [x8, :lo12:BADINT]
	stur	x8, [x29, #-8]
	b	.LBB0_45
.LBB0_8:                                //   in Loop: Header=BB0_5 Depth=1
	adrp	x8, DECDPUN
	ldr	x9, [x8, :lo12:DECDPUN]
	ldr	x8, [sp, #16]
	subs	x8, x8, x9
	str	x8, [sp, #16]
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_5 Depth=1
	ldur	x8, [x29, #-32]
	add	x8, x8, #8
	stur	x8, [x29, #-32]
	b	.LBB0_5
.LBB0_10:
	ldr	x8, [sp, #16]
	cbnz	x8, .LBB0_12
	b	.LBB0_11
.LBB0_11:
	str	xzr, [sp, #40]
	b	.LBB0_15
.LBB0_12:
	ldur	x8, [x29, #-32]
	ldr	x0, [x8]
	ldr	x1, [sp, #16]
	bl	QUOT10
	stur	x0, [x29, #-24]
	ldur	x8, [x29, #-32]
	ldr	x8, [x8]
	ldur	x9, [x29, #-24]
	adrp	x10, powers
	ldr	x10, [x10, :lo12:powers]
	ldr	x11, [sp, #16]
	ldr	x10, [x10, x11, lsl #3]
	mul	x9, x9, x10
	subs	x8, x8, x9
	str	x8, [sp, #8]
	ldr	x8, [sp, #8]
	cbz	x8, .LBB0_14
	b	.LBB0_13
.LBB0_13:
	adrp	x8, BADINT
	ldr	x8, [x8, :lo12:BADINT]
	stur	x8, [x29, #-8]
	b	.LBB0_45
.LBB0_14:
	adrp	x8, DECDPUN
	ldr	x8, [x8, :lo12:DECDPUN]
	ldr	x9, [sp, #16]
	subs	x8, x8, x9
	str	x8, [sp, #40]
	ldur	x8, [x29, #-32]
	add	x8, x8, #8
	stur	x8, [x29, #-32]
	b	.LBB0_15
.LBB0_15:
	b	.LBB0_16
.LBB0_16:
	ldr	x8, [sp, #40]
	cbnz	x8, .LBB0_18
	b	.LBB0_17
.LBB0_17:
	ldur	x8, [x29, #-32]
	ldr	x8, [x8]
	stur	x8, [x29, #-24]
	adrp	x8, DECDPUN
	ldr	x9, [x8, :lo12:DECDPUN]
	ldr	x8, [sp, #40]
	add	x8, x8, x9
	str	x8, [sp, #40]
	ldur	x8, [x29, #-32]
	add	x8, x8, #8
	stur	x8, [x29, #-32]
	b	.LBB0_18
.LBB0_18:
	ldr	x8, [sp, #32]
	subs	x8, x8, #11
	b.hs	.LBB0_38
	b	.LBB0_19
.LBB0_19:
	ldur	x8, [x29, #-24]
	str	x8, [sp]
	b	.LBB0_20
.LBB0_20:                               // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #40]
	ldr	x9, [sp, #32]
	subs	x8, x8, x9
	b.hs	.LBB0_23
	b	.LBB0_21
.LBB0_21:                               //   in Loop: Header=BB0_20 Depth=1
	ldur	x8, [x29, #-32]
	ldr	x8, [x8]
	adrp	x9, powers
	ldr	x9, [x9, :lo12:powers]
	ldr	x10, [sp, #40]
	ldr	x9, [x9, x10, lsl #3]
	mul	x9, x8, x9
	ldur	x8, [x29, #-24]
	add	x8, x8, x9
	stur	x8, [x29, #-24]
	adrp	x8, DECDPUN
	ldr	x9, [x8, :lo12:DECDPUN]
	ldr	x8, [sp, #40]
	add	x8, x8, x9
	str	x8, [sp, #40]
	b	.LBB0_22
.LBB0_22:                               //   in Loop: Header=BB0_20 Depth=1
	ldur	x8, [x29, #-32]
	add	x8, x8, #8
	stur	x8, [x29, #-32]
	b	.LBB0_20
.LBB0_23:
	ldr	x8, [sp, #32]
	subs	x8, x8, #10
	b.ne	.LBB0_37
	b	.LBB0_24
.LBB0_24:
	ldur	x8, [x29, #-24]
	adrp	x9, powers
	ldr	x9, [x9, :lo12:powers]
	ldr	x10, [sp, #40]
	adrp	x11, DECDPUN
	ldr	x11, [x11, :lo12:DECDPUN]
	subs	x10, x10, x11
	ldr	x9, [x9, x10, lsl #3]
	udiv	x8, x8, x9
	ldur	x9, [x29, #-32]
	ldur	x9, [x9, #-8]
	subs	x8, x8, x9
	b.eq	.LBB0_26
	b	.LBB0_25
.LBB0_25:
	mov	x8, #11
	str	x8, [sp, #32]
	b	.LBB0_34
.LBB0_26:
	ldr	x8, [sp, #24]
	cbz	x8, .LBB0_29
	b	.LBB0_27
.LBB0_27:
	ldur	x8, [x29, #-24]
	mov	x9, #37885
	movk	x9, #30517, lsl #16
	subs	x8, x8, x9
	b.ls	.LBB0_29
	b	.LBB0_28
.LBB0_28:
	mov	x8, #11
	str	x8, [sp, #32]
	b	.LBB0_33
.LBB0_29:
	ldr	x8, [sp, #24]
	cbnz	x8, .LBB0_32
	b	.LBB0_30
.LBB0_30:
	ldur	x8, [x29, #-24]
	mov	x9, #51711
	movk	x9, #15258, lsl #16
	subs	x8, x8, x9
	b.ls	.LBB0_32
	b	.LBB0_31
.LBB0_31:
	mov	x8, #11
	str	x8, [sp, #32]
	b	.LBB0_32
.LBB0_32:
	b	.LBB0_33
.LBB0_33:
	b	.LBB0_34
.LBB0_34:
	ldr	x8, [sp, #32]
	subs	x8, x8, #11
	b.ne	.LBB0_36
	b	.LBB0_35
.LBB0_35:
	ldr	x8, [sp]
	stur	x8, [x29, #-24]
	b	.LBB0_36
.LBB0_36:
	b	.LBB0_37
.LBB0_37:
	b	.LBB0_38
.LBB0_38:
	ldr	x8, [sp, #32]
	subs	x8, x8, #10
	b.ls	.LBB0_42
	b	.LBB0_39
.LBB0_39:
	ldur	x8, [x29, #-24]
                                        // kill: def $w8 killed $w8 killed $x8
	tbz	w8, #0, .LBB0_41
	b	.LBB0_40
.LBB0_40:
	adrp	x8, BIGODD
	ldr	x8, [x8, :lo12:BIGODD]
	stur	x8, [x29, #-8]
	b	.LBB0_45
.LBB0_41:
	adrp	x8, BIGEVEN
	ldr	x8, [x8, :lo12:BIGEVEN]
	stur	x8, [x29, #-8]
	b	.LBB0_45
.LBB0_42:
	ldr	x8, [sp, #24]
	cbz	x8, .LBB0_44
	b	.LBB0_43
.LBB0_43:
	ldur	x9, [x29, #-24]
	mov	x8, xzr
	subs	x8, x8, x9
	stur	x8, [x29, #-24]
	b	.LBB0_44
.LBB0_44:
	ldur	x8, [x29, #-24]
	stur	x8, [x29, #-8]
	b	.LBB0_45
.LBB0_45:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #80]             // 16-byte Folded Reload
	add	sp, sp, #96
	ret
.Lfunc_end0:
	.size	decGetInt, .Lfunc_end0-decGetInt
                                        // -- End function
	.type	DECDPUN,@object                 // @DECDPUN
	.bss
	.globl	DECDPUN
	.p2align	3
DECDPUN:
	.xword	0                               // 0x0
	.size	DECDPUN, 8
	.type	BADINT,@object                  // @BADINT
	.globl	BADINT
	.p2align	3
BADINT:
	.xword	0                               // 0x0
	.size	BADINT, 8
	.type	powers,@object                  // @powers
	.globl	powers
	.p2align	3
powers:
	.xword	0
	.size	powers, 8
	.type	BIGODD,@object                  // @BIGODD
	.globl	BIGODD
	.p2align	3
BIGODD:
	.xword	0                               // 0x0
	.size	BIGODD, 8
	.type	BIGEVEN,@object                 // @BIGEVEN
	.globl	BIGEVEN
	.p2align	3
BIGEVEN:
	.xword	0                               // 0x0
	.size	BIGEVEN, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym decGetInt
	.addrsig_sym decNumberIsNegative
	.addrsig_sym ISZERO
	.addrsig_sym QUOT10
	.addrsig_sym DECDPUN
	.addrsig_sym BADINT
	.addrsig_sym powers
	.addrsig_sym BIGODD
	.addrsig_sym BIGEVEN