	.text
	.p2align	2                               // -- Begin function decUnitCompare
	.type	decUnitCompare,@function
decUnitCompare:                         // @decUnitCompare
// %bb.0:
	stp	x29, x30, [sp, #-16]!           // 16-byte Folded Spill
	mov	x29, sp
	sub	sp, sp, #224
	sub	x8, x29, #16
	stur	x8, [x29, #-176]                // 8-byte Folded Spill
	str	x0, [x8]
	stur	x1, [x29, #-24]
	stur	x2, [x29, #-32]
	stur	x3, [x29, #-40]
	stur	x4, [x29, #-48]
	adrp	x8, DECBUFFER
	ldr	w8, [x8, :lo12:DECBUFFER]
	lsl	w8, w8, #1
	add	w0, w8, #1
	bl	SD2U
	mov	w8, w0
                                        // kill: def $x8 killed $w8
	stur	x8, [x29, #-168]                // 8-byte Folded Spill
	mov	x9, sp
	stur	x9, [x29, #-64]
	lsl	x9, x8, #3
	add	x9, x9, #15
	and	x10, x9, #0xfffffffffffffff0
	mov	x9, sp
	subs	x0, x9, x10
	stur	x0, [x29, #-160]                // 8-byte Folded Spill
	mov	sp, x0
	stur	x8, [x29, #-72]
                                        // kill: def $x8 killed $xzr
	stur	xzr, [x29, #-80]
	ldur	x8, [x29, #-48]
	cbnz	x8, .LBB0_14
	b	.LBB0_1
.LBB0_1:
	ldur	x8, [x29, #-24]
	ldur	x9, [x29, #-40]
	subs	x8, x8, x9
	b.le	.LBB0_3
	b	.LBB0_2
.LBB0_2:
	ldur	x9, [x29, #-176]                // 8-byte Folded Reload
	mov	x8, #1
	str	x8, [x9, #8]
	mov	w8, #1
	stur	w8, [x29, #-148]
	b	.LBB0_35
.LBB0_3:
	ldur	x8, [x29, #-24]
	ldur	x9, [x29, #-40]
	subs	x8, x8, x9
	b.ge	.LBB0_5
	b	.LBB0_4
.LBB0_4:
	ldur	x9, [x29, #-176]                // 8-byte Folded Reload
	mov	x8, #-1
	str	x8, [x9, #8]
	mov	w8, #1
	stur	w8, [x29, #-148]
	b	.LBB0_35
.LBB0_5:
	ldur	x8, [x29, #-176]                // 8-byte Folded Reload
	ldr	x8, [x8]
	ldur	x9, [x29, #-24]
	add	x8, x8, x9, lsl #3
	subs	x8, x8, #8
	stur	x8, [x29, #-104]
	ldur	x8, [x29, #-32]
	ldur	x9, [x29, #-24]
	add	x8, x8, x9, lsl #3
	subs	x8, x8, #8
	stur	x8, [x29, #-112]
	b	.LBB0_6
.LBB0_6:                                // =>This Inner Loop Header: Depth=1
	ldur	x9, [x29, #-176]                // 8-byte Folded Reload
	ldur	x8, [x29, #-104]
	ldr	x9, [x9]
	subs	x8, x8, x9
	b.lo	.LBB0_13
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_6 Depth=1
	ldur	x8, [x29, #-104]
	ldr	x8, [x8]
	ldur	x9, [x29, #-112]
	ldr	x9, [x9]
	subs	x8, x8, x9
	b.le	.LBB0_9
	b	.LBB0_8
.LBB0_8:
	ldur	x9, [x29, #-176]                // 8-byte Folded Reload
	mov	x8, #1
	str	x8, [x9, #8]
	mov	w8, #1
	stur	w8, [x29, #-148]
	b	.LBB0_35
.LBB0_9:                                //   in Loop: Header=BB0_6 Depth=1
	ldur	x8, [x29, #-104]
	ldr	x8, [x8]
	ldur	x9, [x29, #-112]
	ldr	x9, [x9]
	subs	x8, x8, x9
	b.ge	.LBB0_11
	b	.LBB0_10
.LBB0_10:
	ldur	x9, [x29, #-176]                // 8-byte Folded Reload
	mov	x8, #-1
	str	x8, [x9, #8]
	mov	w8, #1
	stur	w8, [x29, #-148]
	b	.LBB0_35
.LBB0_11:                               //   in Loop: Header=BB0_6 Depth=1
	b	.LBB0_12
.LBB0_12:                               //   in Loop: Header=BB0_6 Depth=1
	ldur	x8, [x29, #-104]
	subs	x8, x8, #8
	stur	x8, [x29, #-104]
	ldur	x8, [x29, #-112]
	subs	x8, x8, #8
	stur	x8, [x29, #-112]
	b	.LBB0_6
.LBB0_13:
	ldur	x8, [x29, #-176]                // 8-byte Folded Reload
	str	xzr, [x8, #8]
	mov	w8, #1
	stur	w8, [x29, #-148]
	b	.LBB0_35
.LBB0_14:
	ldur	x8, [x29, #-24]
	stur	x8, [x29, #-184]                // 8-byte Folded Spill
	ldur	x8, [x29, #-40]
	stur	x8, [x29, #-192]                // 8-byte Folded Spill
	ldur	x0, [x29, #-48]
	bl	D2U
	ldur	x9, [x29, #-192]                // 8-byte Folded Reload
	ldur	x8, [x29, #-184]                // 8-byte Folded Reload
	add	x9, x9, x0
	subs	x8, x8, x9
	b.le	.LBB0_16
	b	.LBB0_15
.LBB0_15:
	ldur	x9, [x29, #-176]                // 8-byte Folded Reload
	mov	x8, #1
	str	x8, [x9, #8]
	mov	w8, #1
	stur	w8, [x29, #-148]
	b	.LBB0_35
.LBB0_16:
	ldur	x8, [x29, #-24]
	add	x8, x8, #1
	stur	x8, [x29, #-200]                // 8-byte Folded Spill
	ldur	x8, [x29, #-40]
	stur	x8, [x29, #-208]                // 8-byte Folded Spill
	ldur	x0, [x29, #-48]
	bl	D2U
	ldur	x9, [x29, #-208]                // 8-byte Folded Reload
	ldur	x8, [x29, #-200]                // 8-byte Folded Reload
	add	x9, x9, x0
	subs	x8, x8, x9
	b.ge	.LBB0_18
	b	.LBB0_17
.LBB0_17:
	ldur	x9, [x29, #-176]                // 8-byte Folded Reload
	mov	x8, #-1
	str	x8, [x9, #8]
	mov	w8, #1
	stur	w8, [x29, #-148]
	b	.LBB0_35
.LBB0_18:
	ldur	x8, [x29, #-40]
	stur	x8, [x29, #-216]                // 8-byte Folded Spill
	ldur	x0, [x29, #-48]
	bl	D2U
	ldur	x8, [x29, #-216]                // 8-byte Folded Reload
	add	x8, x8, x0
	stur	x8, [x29, #-96]
	ldur	x8, [x29, #-96]
	ldur	x9, [x29, #-24]
	subs	x8, x8, x9
	b.ge	.LBB0_20
	b	.LBB0_19
.LBB0_19:
	ldur	x8, [x29, #-24]
	stur	x8, [x29, #-96]
	b	.LBB0_20
.LBB0_20:
	ldur	x10, [x29, #-168]               // 8-byte Folded Reload
	ldur	x8, [x29, #-160]                // 8-byte Folded Reload
	ldur	x9, [x29, #-96]
	add	x9, x9, #2
	stur	x9, [x29, #-96]
	stur	x8, [x29, #-56]
	ldur	x9, [x29, #-96]
	mov	x8, #8
	mul	x8, x8, x10
	subs	x8, x8, x9, lsl #3
	b.hs	.LBB0_24
	b	.LBB0_21
.LBB0_21:
	ldur	x8, [x29, #-96]
	lsl	x0, x8, #3
	bl	malloc
	stur	x0, [x29, #-80]
	ldur	x8, [x29, #-80]
	cbnz	x8, .LBB0_23
	b	.LBB0_22
.LBB0_22:
	ldur	x9, [x29, #-176]                // 8-byte Folded Reload
	adrp	x8, BADINT
	ldr	x8, [x8, :lo12:BADINT]
	str	x8, [x9, #8]
	mov	w8, #1
	stur	w8, [x29, #-148]
	b	.LBB0_35
.LBB0_23:
	ldur	x8, [x29, #-80]
	stur	x8, [x29, #-56]
	b	.LBB0_24
.LBB0_24:
	ldur	x8, [x29, #-176]                // 8-byte Folded Reload
	ldur	x9, [x29, #-48]
	adrp	x10, DECDPUN
	ldr	x11, [x10, :lo12:DECDPUN]
	sdiv	x9, x9, x11
	stur	x9, [x29, #-128]
	ldur	x9, [x29, #-48]
	ldr	x11, [x10, :lo12:DECDPUN]
	sdiv	x10, x9, x11
	mul	x10, x10, x11
	subs	x9, x9, x10
	stur	x9, [x29, #-136]
	ldr	x0, [x8]
	ldur	x1, [x29, #-24]
	ldur	x2, [x29, #-32]
	ldur	x3, [x29, #-40]
	ldur	x4, [x29, #-128]
	ldur	x5, [x29, #-56]
	adrp	x8, powers
	ldr	x8, [x8, :lo12:powers]
	ldur	x9, [x29, #-136]
	ldr	x9, [x8, x9, lsl #3]
	mov	x8, xzr
	subs	x6, x8, x9
	bl	decUnitAddSub
	stur	x0, [x29, #-88]
	ldur	x8, [x29, #-88]
	subs	x8, x8, #0
	b.ge	.LBB0_26
	b	.LBB0_25
.LBB0_25:
	mov	x8, #-1
	stur	x8, [x29, #-144]
	b	.LBB0_32
.LBB0_26:
	ldur	x8, [x29, #-56]
	stur	x8, [x29, #-120]
	b	.LBB0_27
.LBB0_27:                               // =>This Inner Loop Header: Depth=1
	ldur	x9, [x29, #-120]
	ldur	x8, [x29, #-56]
	ldur	x10, [x29, #-88]
	add	x8, x8, x10, lsl #3
	subs	x10, x8, #8
	mov	w8, #0
	subs	x9, x9, x10
	stur	w8, [x29, #-220]                // 4-byte Folded Spill
	b.hs	.LBB0_29
	b	.LBB0_28
.LBB0_28:                               //   in Loop: Header=BB0_27 Depth=1
	ldur	x8, [x29, #-120]
	ldr	x8, [x8]
	subs	x8, x8, #0
	cset	w8, eq
	stur	w8, [x29, #-220]                // 4-byte Folded Spill
	b	.LBB0_29
.LBB0_29:                               //   in Loop: Header=BB0_27 Depth=1
	ldur	w8, [x29, #-220]                // 4-byte Folded Reload
	tbz	w8, #0, .LBB0_31
	b	.LBB0_30
.LBB0_30:                               //   in Loop: Header=BB0_27 Depth=1
	ldur	x8, [x29, #-120]
	add	x8, x8, #8
	stur	x8, [x29, #-120]
	b	.LBB0_27
.LBB0_31:
	ldur	x8, [x29, #-120]
	ldr	x8, [x8]
	subs	x8, x8, #0
	cset	w9, ne
                                        // implicit-def: $x8
	mov	w8, w9
	sxtw	x8, w8
	stur	x8, [x29, #-144]
	b	.LBB0_32
.LBB0_32:
	ldur	x8, [x29, #-80]
	cbz	x8, .LBB0_34
	b	.LBB0_33
.LBB0_33:
	ldur	x0, [x29, #-80]
	bl	free
	b	.LBB0_34
.LBB0_34:
	ldur	x9, [x29, #-176]                // 8-byte Folded Reload
	ldur	x8, [x29, #-144]
	str	x8, [x9, #8]
	mov	w8, #1
	stur	w8, [x29, #-148]
	b	.LBB0_35
.LBB0_35:
	ldur	x8, [x29, #-176]                // 8-byte Folded Reload
	ldur	x9, [x29, #-64]
	mov	sp, x9
	ldr	x0, [x8, #8]
	mov	sp, x29
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	decUnitCompare, .Lfunc_end0-decUnitCompare
                                        // -- End function
	.type	DECBUFFER,@object               // @DECBUFFER
	.bss
	.globl	DECBUFFER
	.p2align	2
DECBUFFER:
	.word	0                               // 0x0
	.size	DECBUFFER, 4
	.type	BADINT,@object                  // @BADINT
	.globl	BADINT
	.p2align	3
BADINT:
	.xword	0                               // 0x0
	.size	BADINT, 8
	.type	DECDPUN,@object                 // @DECDPUN
	.globl	DECDPUN
	.p2align	3
DECDPUN:
	.xword	0                               // 0x0
	.size	DECDPUN, 8
	.type	powers,@object                  // @powers
	.globl	powers
	.p2align	3
powers:
	.xword	0
	.size	powers, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym decUnitCompare
	.addrsig_sym SD2U
	.addrsig_sym D2U
	.addrsig_sym malloc
	.addrsig_sym decUnitAddSub
	.addrsig_sym free
	.addrsig_sym DECBUFFER
	.addrsig_sym BADINT
	.addrsig_sym DECDPUN
	.addrsig_sym powers