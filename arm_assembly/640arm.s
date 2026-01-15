	.text
	.p2align	2                               // -- Begin function decDecap
	.type	decDecap,@function
decDecap:                               // @decDecap
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-16]
	str	x1, [sp, #24]
	ldr	x8, [sp, #24]
	ldur	x9, [x29, #-16]
	ldr	x9, [x9]
	subs	x8, x8, x9
	b.lo	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #8]
	str	xzr, [x8]
	ldur	x9, [x29, #-16]
	mov	x8, #1
	str	x8, [x9]
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	.LBB0_5
.LBB0_2:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #8]
	str	x8, [sp]                        // 8-byte Folded Spill
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	ldr	x9, [sp, #24]
	subs	x0, x8, x9
	bl	D2U
	ldr	x8, [sp]                        // 8-byte Folded Reload
	add	x8, x8, w0, sxtw #3
	subs	x8, x8, #8
	str	x8, [sp, #16]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	ldr	x9, [sp, #24]
	subs	x0, x8, x9
	bl	MSUDIGITS
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	adrp	x9, DECDPUN
	ldr	x9, [x9, :lo12:DECDPUN]
	subs	x8, x8, x9
	b.eq	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	adrp	x8, powers
	ldr	x8, [x8, :lo12:powers]
	ldr	x9, [sp, #8]
	ldr	x11, [x8, x9, lsl #3]
	ldr	x9, [sp, #16]
	ldr	x8, [x9]
	sdiv	x10, x8, x11
	mul	x10, x10, x11
	subs	x8, x8, x10
	str	x8, [x9]
	b	.LBB0_4
.LBB0_4:
	ldur	x8, [x29, #-16]
	ldr	x0, [x8, #8]
	ldr	x8, [sp, #16]
	ldur	x9, [x29, #-16]
	ldr	x9, [x9, #8]
	subs	x8, x8, x9
	mov	x9, #8
	sdiv	x8, x8, x9
	add	x8, x8, #1
	mov	w1, w8
	bl	decGetDigits
	ldur	x8, [x29, #-16]
	str	x0, [x8]
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	.LBB0_5
.LBB0_5:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	decDecap, .Lfunc_end0-decDecap
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
	.addrsig_sym decDecap
	.addrsig_sym D2U
	.addrsig_sym MSUDIGITS
	.addrsig_sym decGetDigits
	.addrsig_sym DECDPUN
	.addrsig_sym powers