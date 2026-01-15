	.text
	.p2align	2                               // -- Begin function decShiftToMost
	.type	decShiftToMost,@function
decShiftToMost:                         // @decShiftToMost
// %bb.0:
	sub	sp, sp, #128
	stp	x29, x30, [sp, #112]            // 16-byte Folded Spill
	add	x29, sp, #112
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	stur	x2, [x29, #-32]
	ldur	x8, [x29, #-32]
	cbnz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	x8, [x29, #-24]
	stur	x8, [x29, #-8]
	b	.LBB0_22
.LBB0_2:
	ldur	x8, [x29, #-24]
	ldur	x9, [x29, #-32]
	add	x8, x8, x9
	adrp	x9, DECDPUN
	ldr	x9, [x9, :lo12:DECDPUN]
	subs	x8, x8, x9
	b.hi	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldur	x8, [x29, #-16]
	ldr	w8, [x8]
	adrp	x9, powers
	ldr	x9, [x9, :lo12:powers]
	ldur	x10, [x29, #-32]
	ldr	w9, [x9, x10, lsl #2]
	mul	w8, w8, w9
	ldur	x9, [x29, #-16]
	str	w8, [x9]
	ldur	x8, [x29, #-24]
	ldur	x9, [x29, #-32]
	add	x8, x8, x9
	stur	x8, [x29, #-8]
	b	.LBB0_22
.LBB0_4:
	str	wzr, [sp, #44]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	ldur	x0, [x29, #-24]
	bl	D2U
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	add	x8, x8, w0, sxtw #2
	subs	x8, x8, #4
	stur	x8, [x29, #-48]
	ldur	x8, [x29, #-48]
	str	x8, [sp, #16]                   // 8-byte Folded Spill
	ldur	x0, [x29, #-32]
	bl	D2U
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	add	x8, x8, w0, sxtw #2
	stur	x8, [x29, #-40]
	adrp	x8, DECDPUN
	ldr	x8, [x8, :lo12:DECDPUN]
	str	x8, [sp, #24]                   // 8-byte Folded Spill
	ldur	x0, [x29, #-32]
	bl	MSUDIGITS
	ldr	x8, [sp, #24]                   // 8-byte Folded Reload
	subs	x8, x8, x0
	str	x8, [sp, #48]
	ldr	x8, [sp, #48]
	cbnz	x8, .LBB0_10
	b	.LBB0_5
.LBB0_5:
	b	.LBB0_6
.LBB0_6:                                // =>This Inner Loop Header: Depth=1
	ldur	x8, [x29, #-48]
	ldur	x9, [x29, #-16]
	subs	x8, x8, x9
	b.lo	.LBB0_9
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_6 Depth=1
	ldur	x8, [x29, #-48]
	ldr	w8, [x8]
	ldur	x9, [x29, #-40]
	str	w8, [x9]
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_6 Depth=1
	ldur	x8, [x29, #-48]
	subs	x8, x8, #4
	stur	x8, [x29, #-48]
	ldur	x8, [x29, #-40]
	subs	x8, x8, #4
	stur	x8, [x29, #-40]
	b	.LBB0_6
.LBB0_9:
	b	.LBB0_17
.LBB0_10:
	ldur	x8, [x29, #-16]
	str	x8, [sp]                        // 8-byte Folded Spill
	ldur	x8, [x29, #-24]
	ldur	x9, [x29, #-32]
	add	x0, x8, x9
	bl	D2U
	ldr	x8, [sp]                        // 8-byte Folded Reload
	add	x8, x8, w0, sxtw #2
	subs	x8, x8, #4
	str	x8, [sp, #56]
	b	.LBB0_11
.LBB0_11:                               // =>This Inner Loop Header: Depth=1
	ldur	x8, [x29, #-48]
	ldur	x9, [x29, #-16]
	subs	x8, x8, x9
	b.lo	.LBB0_16
	b	.LBB0_12
.LBB0_12:                               //   in Loop: Header=BB0_11 Depth=1
	ldur	x8, [x29, #-48]
	ldr	w0, [x8]
	ldr	x1, [sp, #48]
	bl	QUOT10
	str	w0, [sp, #40]
	ldur	x8, [x29, #-48]
	ldr	w8, [x8]
	ldr	w9, [sp, #40]
	adrp	x10, powers
	ldr	x10, [x10, :lo12:powers]
	ldr	x11, [sp, #48]
	ldr	w10, [x10, x11, lsl #2]
	mul	w9, w9, w10
	subs	w8, w8, w9
	str	w8, [sp, #36]
	ldr	w9, [sp, #40]
	ldr	w8, [sp, #44]
	add	w8, w8, w9
	str	w8, [sp, #44]
	ldur	x8, [x29, #-40]
	ldr	x9, [sp, #56]
	subs	x8, x8, x9
	b.hi	.LBB0_14
	b	.LBB0_13
.LBB0_13:                               //   in Loop: Header=BB0_11 Depth=1
	ldr	w8, [sp, #44]
	ldur	x9, [x29, #-40]
	str	w8, [x9]
	b	.LBB0_14
.LBB0_14:                               //   in Loop: Header=BB0_11 Depth=1
	ldr	w8, [sp, #36]
	adrp	x9, powers
	ldr	x9, [x9, :lo12:powers]
	adrp	x10, DECDPUN
	ldr	x10, [x10, :lo12:DECDPUN]
	ldr	x11, [sp, #48]
	subs	x10, x10, x11
	ldr	w9, [x9, x10, lsl #2]
	mul	w8, w8, w9
	str	w8, [sp, #44]
	b	.LBB0_15
.LBB0_15:                               //   in Loop: Header=BB0_11 Depth=1
	ldur	x8, [x29, #-48]
	subs	x8, x8, #4
	stur	x8, [x29, #-48]
	ldur	x8, [x29, #-40]
	subs	x8, x8, #4
	stur	x8, [x29, #-40]
	b	.LBB0_11
.LBB0_16:
	b	.LBB0_17
.LBB0_17:
	b	.LBB0_18
.LBB0_18:                               // =>This Inner Loop Header: Depth=1
	ldur	x8, [x29, #-40]
	ldur	x9, [x29, #-16]
	subs	x8, x8, x9
	b.lo	.LBB0_21
	b	.LBB0_19
.LBB0_19:                               //   in Loop: Header=BB0_18 Depth=1
	ldr	w8, [sp, #44]
	ldur	x9, [x29, #-40]
	str	w8, [x9]
	str	wzr, [sp, #44]
	b	.LBB0_20
.LBB0_20:                               //   in Loop: Header=BB0_18 Depth=1
	ldur	x8, [x29, #-40]
	subs	x8, x8, #4
	stur	x8, [x29, #-40]
	b	.LBB0_18
.LBB0_21:
	ldur	x8, [x29, #-24]
	ldur	x9, [x29, #-32]
	add	x8, x8, x9
	stur	x8, [x29, #-8]
	b	.LBB0_22
.LBB0_22:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #112]            // 16-byte Folded Reload
	add	sp, sp, #128
	ret
.Lfunc_end0:
	.size	decShiftToMost, .Lfunc_end0-decShiftToMost
                                        // -- End function
	.type	DECDPUN,@object                 // @DECDPUN
	.bss
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
	.addrsig_sym decShiftToMost
	.addrsig_sym D2U
	.addrsig_sym MSUDIGITS
	.addrsig_sym QUOT10
	.addrsig_sym DECDPUN
	.addrsig_sym powers