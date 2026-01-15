	.text
	.p2align	2                               // -- Begin function decShiftToLeast
	.type	decShiftToLeast,@function
decShiftToLeast:                        // @decShiftToLeast
// %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             // 16-byte Folded Spill
	add	x29, sp, #80
	stur	x0, [x29, #-16]
	stur	w1, [x29, #-20]
	stur	w2, [x29, #-24]
	ldur	w8, [x29, #-24]
	cbnz	w8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	w8, [x29, #-20]
	stur	w8, [x29, #-4]
	b	.LBB0_18
.LBB0_2:
	ldur	w8, [x29, #-24]
	ldur	w9, [x29, #-20]
	adrp	x10, DECDPUN
	ldr	w10, [x10, :lo12:DECDPUN]
	mul	w9, w9, w10
	subs	w8, w8, w9
	b.ne	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldur	x8, [x29, #-16]
	str	wzr, [x8]
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_18
.LBB0_4:
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-32]
	ldur	w0, [x29, #-24]
	bl	MSUDIGITS
	str	w0, [sp, #36]
	ldr	w8, [sp, #36]
	adrp	x9, DECDPUN
	ldr	w9, [x9, :lo12:DECDPUN]
	subs	w8, w8, w9
	b.ne	.LBB0_10
	b	.LBB0_5
.LBB0_5:
	ldur	x8, [x29, #-16]
	str	x8, [sp, #16]                   // 8-byte Folded Spill
	ldur	w0, [x29, #-24]
	bl	D2U
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	add	x8, x8, w0, sxtw #2
	str	x8, [sp, #40]
	b	.LBB0_6
.LBB0_6:                                // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #40]
	ldur	x9, [x29, #-16]
	ldursw	x10, [x29, #-20]
	add	x9, x9, x10, lsl #2
	subs	x8, x8, x9
	b.hs	.LBB0_9
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_6 Depth=1
	ldr	x8, [sp, #40]
	ldr	w8, [x8]
	ldur	x9, [x29, #-32]
	str	w8, [x9]
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_6 Depth=1
	ldur	x8, [x29, #-32]
	add	x8, x8, #4
	stur	x8, [x29, #-32]
	ldr	x8, [sp, #40]
	add	x8, x8, #4
	str	x8, [sp, #40]
	b	.LBB0_6
.LBB0_9:
	ldur	x8, [x29, #-32]
	ldur	x9, [x29, #-16]
	subs	x8, x8, x9
	mov	x9, #4
	sdiv	x8, x8, x9
                                        // kill: def $w8 killed $w8 killed $x8
	stur	w8, [x29, #-4]
	b	.LBB0_18
.LBB0_10:
	ldur	x8, [x29, #-16]
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	ldur	w8, [x29, #-24]
	ldr	w9, [sp, #36]
	subs	w0, w8, w9
	bl	D2U
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	add	x8, x8, w0, sxtw #2
	str	x8, [sp, #40]
	ldur	w8, [x29, #-20]
	adrp	x9, DECDPUN
	ldr	w9, [x9, :lo12:DECDPUN]
	mul	w8, w8, w9
	ldur	w9, [x29, #-24]
	subs	w8, w8, w9
	str	w8, [sp, #32]
	ldr	x8, [sp, #40]
	ldr	w0, [x8]
	ldr	w1, [sp, #36]
	bl	QUOT10
	str	w0, [sp, #28]
	b	.LBB0_11
.LBB0_11:                               // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #28]
	ldur	x9, [x29, #-32]
	str	w8, [x9]
	adrp	x8, DECDPUN
	ldr	w8, [x8, :lo12:DECDPUN]
	ldr	w9, [sp, #36]
	subs	w9, w8, w9
	ldr	w8, [sp, #32]
	subs	w8, w8, w9
	str	w8, [sp, #32]
	ldr	w8, [sp, #32]
	subs	w8, w8, #0
	b.gt	.LBB0_13
	b	.LBB0_12
.LBB0_12:
	b	.LBB0_17
.LBB0_13:                               //   in Loop: Header=BB0_11 Depth=1
	ldr	x8, [sp, #40]
	add	x8, x8, #4
	str	x8, [sp, #40]
	ldr	x8, [sp, #40]
	ldr	w8, [x8]
	str	w8, [sp, #28]
	ldr	w0, [sp, #28]
	ldr	w1, [sp, #36]
	bl	QUOT10
	str	w0, [sp, #28]
	ldr	x8, [sp, #40]
	ldr	w8, [x8]
	ldr	w9, [sp, #28]
	adrp	x10, powers
	ldr	x11, [x10, :lo12:powers]
	ldrsw	x12, [sp, #36]
	ldr	w11, [x11, x12, lsl #2]
	mul	w9, w9, w11
	subs	w8, w8, w9
	str	w8, [sp, #24]
	ldur	x8, [x29, #-32]
	ldr	w8, [x8]
	ldr	w9, [sp, #24]
	ldr	x10, [x10, :lo12:powers]
	adrp	x11, DECDPUN
	ldr	w11, [x11, :lo12:DECDPUN]
	ldr	w12, [sp, #36]
	subs	w11, w11, w12
	ldr	w10, [x10, w11, sxtw #2]
	mul	w9, w9, w10
	add	w8, w8, w9
	ldur	x9, [x29, #-32]
	str	w8, [x9]
	ldr	w9, [sp, #36]
	ldr	w8, [sp, #32]
	subs	w8, w8, w9
	str	w8, [sp, #32]
	ldr	w8, [sp, #32]
	subs	w8, w8, #0
	b.gt	.LBB0_15
	b	.LBB0_14
.LBB0_14:
	b	.LBB0_17
.LBB0_15:                               //   in Loop: Header=BB0_11 Depth=1
	b	.LBB0_16
.LBB0_16:                               //   in Loop: Header=BB0_11 Depth=1
	ldur	x8, [x29, #-32]
	add	x8, x8, #4
	stur	x8, [x29, #-32]
	b	.LBB0_11
.LBB0_17:
	ldur	x8, [x29, #-32]
	ldur	x9, [x29, #-16]
	subs	x8, x8, x9
	mov	x9, #4
	sdiv	x8, x8, x9
	add	x8, x8, #1
                                        // kill: def $w8 killed $w8 killed $x8
	stur	w8, [x29, #-4]
	b	.LBB0_18
.LBB0_18:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #80]             // 16-byte Folded Reload
	add	sp, sp, #96
	ret
.Lfunc_end0:
	.size	decShiftToLeast, .Lfunc_end0-decShiftToLeast
                                        // -- End function
	.type	DECDPUN,@object                 // @DECDPUN
	.bss
	.globl	DECDPUN
	.p2align	2
DECDPUN:
	.word	0                               // 0x0
	.size	DECDPUN, 4
	.type	powers,@object                  // @powers
	.globl	powers
	.p2align	3
powers:
	.xword	0
	.size	powers, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym decShiftToLeast
	.addrsig_sym MSUDIGITS
	.addrsig_sym D2U
	.addrsig_sym QUOT10
	.addrsig_sym DECDPUN
	.addrsig_sym powers