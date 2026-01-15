	.text
	.p2align	2                               // -- Begin function decGetDigits
	.type	decGetDigits,@function
decGetDigits:                           // @decGetDigits
// %bb.0:
	sub	sp, sp, #32
	str	x0, [sp, #24]
	str	w1, [sp, #20]
	ldr	x8, [sp, #24]
	ldr	w9, [sp, #20]
	subs	w9, w9, #1
	add	x8, x8, w9, sxtw #2
	str	x8, [sp, #8]
	ldr	w8, [sp, #20]
	subs	w8, w8, #1
	adrp	x9, DECDPUN
	ldr	w9, [x9, :lo12:DECDPUN]
	mul	w8, w8, w9
	add	w8, w8, #1
	str	w8, [sp, #4]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #8]
	ldr	x9, [sp, #24]
	subs	x8, x8, x9
	b.lo	.LBB0_8
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #8]
	ldr	w8, [x8]
	cbnz	w8, .LBB0_6
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #4]
	subs	w8, w8, #1
	b.ne	.LBB0_5
	b	.LBB0_4
.LBB0_4:
	b	.LBB0_8
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	adrp	x8, DECDPUN
	ldr	w9, [x8, :lo12:DECDPUN]
	ldr	w8, [sp, #4]
	subs	w8, w8, w9
	str	w8, [sp, #4]
	b	.LBB0_7
.LBB0_6:
	b	.LBB0_8
.LBB0_7:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #8]
	subs	x8, x8, #4
	str	x8, [sp, #8]
	b	.LBB0_1
.LBB0_8:
	ldr	w0, [sp, #4]
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	decGetDigits, .Lfunc_end0-decGetDigits
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
	.addrsig_sym decGetDigits
	.addrsig_sym DECDPUN