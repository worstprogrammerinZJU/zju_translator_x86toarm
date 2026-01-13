	.text
	.globl	decNumberFromUInt32             // -- Begin function decNumberFromUInt32
	.p2align	2
	.type	decNumberFromUInt32,@function
decNumberFromUInt32:                    // @decNumberFromUInt32
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	str	x0, [sp, #16]
	str	x1, [sp, #8]
	ldr	x0, [sp, #16]
	bl	decNumberZero
	ldr	x8, [sp, #8]
	cbnz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x8, [sp, #16]
	stur	x8, [x29, #-8]
	b	.LBB0_7
.LBB0_2:
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	str	x8, [sp]
	b	.LBB0_3
.LBB0_3:                                // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #8]
	subs	x8, x8, #0
	b.le	.LBB0_6
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_3 Depth=1
	ldr	x8, [sp, #8]
	adrp	x9, DECDPUNMAX
	ldr	w10, [x9, :lo12:DECDPUNMAX]
	add	w11, w10, #1
                                        // implicit-def: $x10
	mov	w10, w11
	sxtw	x11, w10
	sdiv	x10, x8, x11
	mul	x10, x10, x11
	subs	x8, x8, x10
	ldr	x10, [sp]
	str	x8, [x10]
	ldr	x8, [sp, #8]
	ldr	w9, [x9, :lo12:DECDPUNMAX]
	add	w10, w9, #1
                                        // implicit-def: $x9
	mov	w9, w10
	sxtw	x9, w9
	sdiv	x8, x8, x9
	str	x8, [sp, #8]
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_3 Depth=1
	ldr	x8, [sp]
	add	x8, x8, #8
	str	x8, [sp]
	b	.LBB0_3
.LBB0_6:
	ldr	x8, [sp, #16]
	ldr	x0, [x8]
	ldr	x8, [sp]
	ldr	x9, [sp, #16]
	ldr	x9, [x9]
	subs	x8, x8, x9
	mov	x9, #8
	sdiv	x8, x8, x9
	mov	w1, w8
	bl	decGetDigits
	ldr	x8, [sp, #16]
	str	w0, [x8, #8]
	ldr	x8, [sp, #16]
	stur	x8, [x29, #-8]
	b	.LBB0_7
.LBB0_7:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	decNumberFromUInt32, .Lfunc_end0-decNumberFromUInt32
                                        // -- End function
	.type	DECDPUNMAX,@object              // @DECDPUNMAX
	.bss
	.globl	DECDPUNMAX
	.p2align	2
DECDPUNMAX:
	.word	0                               // 0x0
	.size	DECDPUNMAX, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym decNumberZero
	.addrsig_sym decGetDigits
	.addrsig_sym DECDPUNMAX