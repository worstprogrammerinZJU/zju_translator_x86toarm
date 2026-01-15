	.text
	.p2align	2                               // -- Begin function decSetMaxValue
	.type	decSetMaxValue,@function
decSetMaxValue:                         // @decSetMaxValue
// %bb.0:
	sub	sp, sp, #32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	str	x8, [sp]
	ldr	x8, [sp]
	ldr	x9, [sp, #24]
	str	x8, [x9]
	ldr	x8, [sp, #24]
	ldr	x8, [x8, #24]
	str	x8, [sp, #8]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp]
	adrp	x9, DECDPUN
	ldr	x9, [x9, :lo12:DECDPUN]
	subs	x8, x8, x9
	b.ls	.LBB0_3
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	adrp	x8, DECDPUNMAX
	ldr	x8, [x8, :lo12:DECDPUNMAX]
	ldr	x9, [sp, #8]
	str	x8, [x9]
	b	.LBB0_4
.LBB0_3:
	adrp	x8, powers
	ldr	x8, [x8, :lo12:powers]
	ldr	x9, [sp]
	ldr	w8, [x8, x9, lsl #2]
	subs	w9, w8, #1
                                        // implicit-def: $x8
	mov	w8, w9
	sxtw	x8, w8
	ldr	x9, [sp, #8]
	str	x8, [x9]
	b	.LBB0_6
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	adrp	x8, DECDPUN
	ldr	x9, [x8, :lo12:DECDPUN]
	ldr	x8, [sp]
	subs	x8, x8, x9
	str	x8, [sp]
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #8]
	add	x8, x8, #8
	str	x8, [sp, #8]
	b	.LBB0_1
.LBB0_6:
	ldr	x8, [sp, #24]
	str	xzr, [x8, #16]
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #8]
	ldr	x9, [sp, #16]
	ldr	x9, [x9]
	subs	x8, x8, x9
	add	x8, x8, #1
	ldr	x9, [sp, #24]
	str	x8, [x9, #8]
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	decSetMaxValue, .Lfunc_end0-decSetMaxValue
                                        // -- End function
	.type	DECDPUN,@object                 // @DECDPUN
	.bss
	.globl	DECDPUN
	.p2align	3
DECDPUN:
	.xword	0                               // 0x0
	.size	DECDPUN, 8
	.type	DECDPUNMAX,@object              // @DECDPUNMAX
	.globl	DECDPUNMAX
	.p2align	3
DECDPUNMAX:
	.xword	0                               // 0x0
	.size	DECDPUNMAX, 8
	.type	powers,@object                  // @powers
	.globl	powers
	.p2align	3
powers:
	.xword	0
	.size	powers, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym decSetMaxValue
	.addrsig_sym DECDPUN
	.addrsig_sym DECDPUNMAX
	.addrsig_sym powers